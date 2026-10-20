use lale_assets::{
    pc_map::PcMap,
    pcs::PcsBank,
    world_events::{dispatch, CellDispatch},
    Flib,
};
use lale_core::{
    door,
    events::{EventError, EventState, EventYield},
    movement::{MovementBranch, MovementCall, MovementRequest, MovementState, StepOutcome},
};

fn data() -> Vec<u8> {
    std::fs::read(std::path::Path::new(env!("CARGO_MANIFEST_DIR")).join("../../../lale/FRPOS.CKD"))
        .unwrap()
}
fn start() -> MovementState {
    MovementState {
        x: 2,
        y: 1,
        width: 10,
        event_veto: 19,
        failed_step_word: 7,
    }
}

#[test]
fn real_north_door_suspends_at_acquisition_then_commits_only_in_helper() {
    let data = data();
    let archive = Flib::parse(&data).unwrap();
    let map = PcMap::parse(archive.member("PC1").unwrap().payload).unwrap();
    let scripts = PcsBank::parse(archive.member("PCS1").unwrap().payload).unwrap();
    for accept in [false, true] {
        let mut state = start();
        let mut events = EventState::default();
        let mut call = MovementCall::begin(MovementBranch::Door, &mut state, 0, -1, (0, -1), 3);
        for mode in [3, 1] {
            let MovementRequest::Event(request) = call.request() else {
                panic!("expected mode{mode}")
            };
            assert_eq!(request.mode, mode);
            let CellDispatch::Script {
                group_index,
                mut machine,
            } = dispatch(&map, &scripts, request).unwrap()
            else {
                panic!("expected script")
            };
            assert_eq!(group_index, if mode == 3 { 5 } else { 0 });
            loop {
                match machine.advance(&mut events).unwrap() {
                    EventYield::Finished => break,
                    EventYield::External { opcode, .. } => {
                        assert_eq!((state.x, state.y), (2, 1));
                        assert_eq!(call.request(), MovementRequest::Event(request));
                        if opcode == 5 {
                            events.choice = u16::from(!accept);
                        }
                        if opcode == 9 {
                            assert!(accept);
                            // No UI/effect is implemented by this test. Its
                            // explicit simulated return is the only continuation.
                            assert_eq!(
                                machine.advance(&mut events),
                                Err(EventError::ExternalPending)
                            );
                            assert!(call.door_returned().is_err());
                            assert!(!events.flag(1));
                        }
                        machine.acknowledge_external(&mut events).unwrap();
                    }
                }
            }
            state.event_veto = events.movement_veto;
            call.event_returned(&mut state, (0, -1)).unwrap();
        }
        assert_eq!((state.x, state.y), (2, 1));
        if accept {
            assert_eq!(
                call.request(),
                MovementRequest::Door {
                    original_cell_offset: 180
                }
            );
            // Represents the original helper's return AFTER all four frames.
            door::commit(&mut state, 0, -1, 0);
            call.door_returned().unwrap();
            assert_eq!((state.x, state.y), (2, 0));
            assert_eq!(
                call.request(),
                MovementRequest::Finished(StepOutcome::Moved)
            );
            assert!(call.door_returned().is_err());
            // Arrival cannot set the dog flag until encounter8 actually returns.
            let request = lale_core::movement::CellEvent {
                cell_offset: state.cell_offset(0, 0),
                mode: 2,
            };
            let CellDispatch::Script { mut machine, .. } =
                dispatch(&map, &scripts, request).unwrap()
            else {
                panic!()
            };
            loop {
                match machine.advance(&mut events).unwrap() {
                    EventYield::External { opcode: 8, .. } => break,
                    EventYield::External { .. } => {
                        machine.acknowledge_external(&mut events).unwrap()
                    }
                    EventYield::Finished => panic!("encounter was skipped"),
                }
            }
            assert!(!events.flag(1));
            assert_eq!(
                machine.advance(&mut events),
                Err(EventError::ExternalPending)
            );
        } else {
            assert_eq!(state.failed_step_word, 0);
            assert_eq!(
                call.request(),
                MovementRequest::Finished(StepOutcome::Vetoed { mode: 1 })
            );
        }
    }
}

#[test]
fn original_door_prechecks_and_live_candidate_reads() {
    for (delta, graphics) in [((1, 0), 3), ((0, -1), 8)] {
        let mut state = start();
        let call = MovementCall::begin(
            MovementBranch::Door,
            &mut state,
            delta.0,
            delta.1,
            (0, -1),
            graphics,
        );
        assert_eq!(
            call.request(),
            MovementRequest::Finished(StepOutcome::Blocked)
        );
        assert_eq!(state.event_veto, 19); // precheck precedes veto reset
        assert_eq!(state.failed_step_word, 0);
    }
    let mut state = start();
    let mut call = MovementCall::begin(MovementBranch::Door, &mut state, 0, -1, (0, -1), 3);
    state.x = 5;
    state.y = 7;
    state.width = 30;
    call.event_returned(&mut state, (1, 0)).unwrap();
    assert_eq!(
        call.request(),
        MovementRequest::Event(lale_core::movement::CellEvent {
            cell_offset: 3240,
            mode: 1
        })
    );
    call.event_returned(&mut state, (1, 0)).unwrap();
    assert_eq!(
        call.request(),
        MovementRequest::Door {
            original_cell_offset: 180
        }
    );
    assert_eq!((state.x, state.y), (5, 7));
}

#[test]
fn dos_confirmed_stair_transition_veto_preserves_loaded_destination() {
    use lale_core::events::{transition_target, TransitionTarget};
    let data = data();
    let archive = Flib::parse(&data).unwrap();
    let map = PcMap::parse(archive.member("PC1").unwrap().payload).unwrap();
    let destination = PcMap::parse(archive.member("PC2").unwrap().payload).unwrap();
    let scripts = PcsBank::parse(archive.member("PCS1").unwrap().payload).unwrap();
    let branch = map.movement_branch(1, 5, 3, None).unwrap();
    assert_eq!(branch, MovementBranch::SpecialForward);
    for accepted in [false, true] {
        let mut state = MovementState {
            x: 1,
            y: 5,
            ..start()
        };
        let mut events = EventState::default();
        // Explicit conditioned test, matching the original DOS stair trial.
        // This does not implement acquiring the key or winning the encounter.
        events.set_flag(1);
        events.set_flag(2);
        let mut call = MovementCall::begin(branch, &mut state, -1, 0, (-1, 0), 9);
        let mut transitioned = false;
        for (mode, offset) in [(3, 765), (1, 750)] {
            let MovementRequest::Event(request) = call.request() else {
                panic!()
            };
            assert_eq!((request.mode, request.cell_offset), (mode, offset));
            match dispatch(&map, &scripts, request).unwrap() {
                CellDispatch::NoEvent => {}
                CellDispatch::Script { mut machine, .. } => loop {
                    match machine.advance(&mut events).unwrap() {
                        EventYield::Finished => break,
                        EventYield::External {
                            opcode, arguments, ..
                        } => {
                            if opcode == 5 {
                                events.choice = u16::from(!accepted);
                            }
                            if opcode == 11 {
                                assert!(accepted);
                                let TransitionTarget::Area {
                                    area_index,
                                    x,
                                    y,
                                    facing,
                                } = transition_target(arguments, destination.width()).unwrap()
                                else {
                                    panic!()
                                };
                                assert_eq!((area_index, x, y, facing), (1, 3, 22, 3));
                                state.x = x;
                                state.y = y;
                                state.width = destination.width();
                                state.failed_step_word = 1; // original44908 tail
                                transitioned = true;
                            }
                            machine.acknowledge_external(&mut events).unwrap();
                        }
                    }
                },
                other => panic!("unexpected {other:?}"),
            }
            state.event_veto = events.movement_veto;
            call.event_returned(&mut state, (-1, 0)).unwrap();
        }
        assert_eq!(transitioned, accepted);
        assert_eq!(
            call.request(),
            MovementRequest::Finished(StepOutcome::Vetoed { mode: 1 })
        );
        assert_eq!(state.failed_step_word, 0);
        assert_eq!((state.x, state.y), if accepted { (3, 22) } else { (1, 5) });
    }
}
