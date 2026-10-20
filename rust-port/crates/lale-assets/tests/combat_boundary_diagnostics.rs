use lale_assets::{pcs::PcsBank, Flib};
use lale_core::events::{EventError, EventMachine, EventState, EventYield};
use std::{fs, path::Path};

#[test]
fn pending_dog_operands_can_be_inspected_without_completing_combat() {
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
    let bytes = fs::read(root.join("lale/FRPOS.CKD")).unwrap();
    let archive = Flib::parse(&bytes).unwrap();
    let scripts = PcsBank::parse(archive.member("PCS1").unwrap().payload).unwrap();
    let mut machine = EventMachine::new(scripts.groups[0].bytes, 2).unwrap();
    let mut state = EventState::default();
    loop {
        match machine.advance(&mut state).unwrap() {
            EventYield::External {
                offset,
                opcode: 8,
                arguments,
            } => {
                let before = state.clone();
                let cursor = machine.cursor();
                assert_eq!(arguments, [0, 13, 1, 0, 0, 0, 0]);
                for _ in 0..3 {
                    assert_eq!(machine.pending_external(), Some((offset, 8, arguments)));
                    assert_eq!(machine.pending_opcode(), Some(8));
                }
                assert_eq!(machine.cursor(), cursor);
                assert_eq!(
                    machine.advance(&mut state),
                    Err(EventError::ExternalPending)
                );
                assert_eq!(state, before);
                assert!(!state.flag(1) && !state.flag(2));
                break;
            }
            EventYield::External { opcode: 2 | 3, .. } => {
                // Explicit simulated presentation returns in this control-flow
                // fixture, not an implementation of battle or a game bypass.
                machine.acknowledge_external(&mut state).unwrap();
                assert_eq!(machine.pending_external(), None);
            }
            other => panic!("unexpected original pre-combat operation {other:?}"),
        }
    }
}
