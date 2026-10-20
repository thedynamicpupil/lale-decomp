use lale_assets::{pcs::PcsBank, Flib};
use lale_core::events::{EventError, EventMachine, EventState, EventYield};
use std::path::Path;

fn archive() -> Vec<u8> {
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
    std::fs::read(root.join("lale/FRPOS.CKD")).unwrap()
}
fn finish(machine: &mut EventMachine<'_>, state: &mut EventState, choice: u16) -> Vec<u8> {
    let mut operations = Vec::new();
    for _ in 0..100 {
        match machine.advance(state).unwrap() {
            EventYield::Finished => return operations,
            EventYield::External { opcode, .. } => {
                operations.push(opcode);
                if opcode == 5 {
                    state.choice = choice;
                }
                machine.acknowledge_external(state).unwrap();
            }
        }
    }
    panic!("event failed to terminate");
}

#[test]
fn original_north_door_choice_veto_and_external_effect_boundaries() {
    let bytes = archive();
    let flib = Flib::parse(&bytes).unwrap();
    let bank = PcsBank::parse(flib.member("PCS1").unwrap().payload).unwrap();
    let group = bank.groups[0].bytes;
    let mut state = EventState::default();
    let mut machine = EventMachine::new(group, 1).unwrap();
    assert_eq!(finish(&mut machine, &mut state, 1), [2, 5]);
    assert_eq!(state.movement_veto, 1);
    state.movement_veto = 0;
    let mut machine = EventMachine::new(group, 1).unwrap();
    // This is a control-flow test: external effects are explicitly acknowledged,
    // not an implementation of the item's ownership or the opcode23 handler.
    assert_eq!(finish(&mut machine, &mut state, 0), [2, 5, 23, 17, 9]);
    assert_eq!(state.movement_veto, 0);
    let mut machine = EventMachine::new(group, 1).unwrap();
    machine.advance(&mut state).unwrap();
    assert_eq!(
        machine.advance(&mut state),
        Err(EventError::ExternalPending)
    );
}

#[test]
fn original_stair_gate_requires_key_flag_and_first_reconnaissance_veto() {
    let bytes = archive();
    let flib = Flib::parse(&bytes).unwrap();
    let bank = PcsBank::parse(flib.member("PCS1").unwrap().payload).unwrap();
    let group = bank.groups[2].bytes;
    let mut state = EventState::default();
    let mut first = EventMachine::new(group, 1).unwrap();
    assert_eq!(finish(&mut first, &mut state, 0), [17, 17, 17, 2, 17]);
    assert!(state.flag(240));
    assert!(!state.flag(2));
    assert_eq!(state.movement_veto, 1);
    state.movement_veto = 0;
    let mut second = EventMachine::new(group, 1).unwrap();
    assert_eq!(finish(&mut second, &mut state, 0), [17]);
    assert_eq!(state.movement_veto, 1);
    state.set_flag(2);
    state.movement_veto = 0;
    let mut accepted = EventMachine::new(group, 1).unwrap();
    assert_eq!(finish(&mut accepted, &mut state, 0), [2, 5, 11]);
    // Original opcode11 vetoes the old movement and terminates the script.
    assert_eq!(state.movement_veto, 1);
    state.movement_veto = 0;
    let mut declined = EventMachine::new(group, 1).unwrap();
    assert_eq!(finish(&mut declined, &mut state, 1), [2, 5]);
    assert_eq!(state.movement_veto, 1);
}

#[test]
fn opening_dialogue_and_mecidiyekoy_return_restriction() {
    let bytes = archive();
    let flib = Flib::parse(&bytes).unwrap();
    let bank = PcsBank::parse(flib.member("PCS1").unwrap().payload).unwrap();
    let mut state = EventState::default();
    let mut opening = EventMachine::new(bank.groups[5].bytes, 2).unwrap();
    assert_eq!(finish(&mut opening, &mut state, 0), [17; 10]);
    assert!(state.flag(249));
    let mut repeated = EventMachine::new(bank.groups[5].bytes, 2).unwrap();
    assert!(finish(&mut repeated, &mut state, 0).is_empty());
    let bank = PcsBank::parse(flib.member("PCS2").unwrap().payload).unwrap();
    let mut return_attempt = EventMachine::new(bank.groups[0].bytes, 1).unwrap();
    assert_eq!(finish(&mut return_attempt, &mut state, 0), [17]);
    assert_eq!(state.movement_veto, 1);
}

#[test]
fn transition_preserves_original_remainder_minus_one_arithmetic() {
    use lale_core::events::{transition_target, TransitionTarget};
    assert_eq!(
        transition_target(&[2, 2, 0x98, 3], 30).unwrap(),
        TransitionTarget::Area {
            area_index: 1,
            x: 3,
            y: 22,
            facing: 3
        }
    );
    assert_eq!(
        transition_target(&[0, 0, 30, 5], 30).unwrap(),
        TransitionTarget::Area {
            area_index: -1,
            x: 65535,
            y: 1,
            facing: 1
        }
    );
    assert_eq!(
        transition_target(&[100, 0, 0, 0], 0).unwrap(),
        TransitionTarget::ExitHandler
    );
}
