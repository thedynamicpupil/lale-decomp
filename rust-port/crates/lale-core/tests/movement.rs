use lale_core::movement::*;

fn initial() -> MovementState {
    MovementState {
        x: 1,
        y: 0,
        width: 10,
        event_veto: 0xffff,
        failed_step_word: 0x1234,
    }
}

struct Trace {
    calls: Vec<CellEvent>,
    veto_mode: Option<u16>,
}
impl MovementEvents for Trace {
    type Error = &'static str;
    fn dispatch(&mut self, state: &mut MovementState, event: CellEvent) -> Result<(), Self::Error> {
        self.calls.push(event);
        assert_eq!(state.event_veto, 0);
        if self.veto_mode == Some(event.mode) {
            state.event_veto = 0x8000;
        }
        Ok(())
    }
}
fn trace(veto_mode: Option<u16>) -> Trace {
    Trace {
        calls: Vec::new(),
        veto_mode,
    }
}

#[test]
fn ordinary_original_argument_order_and_both_veto_boundaries() {
    // PC1(1,0) east: current byte offset15, candidate offset30. Independent
    // original instruction addresses32123/32140 and writes32199/321ae.
    for veto in [None, Some(3), Some(1)] {
        let mut state = initial();
        let mut events = trace(veto);
        let result = step(MovementBranch::Open, &mut state, 1, 0, &mut events).unwrap();
        assert_eq!(
            events.calls[0],
            CellEvent {
                cell_offset: 15,
                mode: 3
            }
        );
        if veto == Some(3) {
            assert_eq!(events.calls.len(), 1);
        } else {
            assert_eq!(
                events.calls,
                [
                    CellEvent {
                        cell_offset: 15,
                        mode: 3
                    },
                    CellEvent {
                        cell_offset: 30,
                        mode: 1
                    }
                ]
            );
        }
        assert_eq!(
            (state.x, state.y),
            if veto.is_none() { (2, 0) } else { (1, 0) }
        );
        assert_eq!(
            state.failed_step_word,
            if veto.is_none() { 0x1234 } else { 0 }
        );
        assert_eq!(
            result,
            veto.map_or(StepOutcome::Moved, |mode| StepOutcome::Vetoed { mode })
        );
    }
}

#[test]
fn live_state_changes_survive_each_event_in_source_read_order() {
    struct Mutating;
    impl MovementEvents for Mutating {
        type Error = ();
        fn dispatch(&mut self, state: &mut MovementState, event: CellEvent) -> Result<(), ()> {
            match event.mode {
                3 => {
                    assert_eq!(event.cell_offset, 15);
                    state.x = 4;
                    state.y = 2;
                    state.width = 7;
                }
                1 => {
                    assert_eq!(event.cell_offset, 285); // (2*7+4+1)*15
                    state.x = 8;
                    state.y = 6;
                }
                _ => panic!("unexpected mode"),
            }
            Ok(())
        }
    }
    let mut state = initial();
    assert_eq!(
        step(MovementBranch::Open, &mut state, 1, 0, &mut Mutating),
        Ok(StepOutcome::Moved)
    );
    assert_eq!((state.x, state.y, state.width), (9, 6, 7));
}

#[test]
fn unimplemented_event_is_an_error_and_cannot_commit_movement() {
    struct Unknown;
    impl MovementEvents for Unknown {
        type Error = &'static str;
        fn dispatch(&mut self, _: &mut MovementState, _: CellEvent) -> Result<(), Self::Error> {
            Err("unknown event")
        }
    }
    let mut state = initial();
    assert_eq!(
        step(MovementBranch::Open, &mut state, 1, 0, &mut Unknown),
        Err("unknown event")
    );
    assert_eq!((state.x, state.y), (1, 0));
}

#[test]
fn unsupported_transitions_are_distinct_from_original_blocked_result() {
    for branch in [
        MovementBranch::Door,
        MovementBranch::Animated,
        MovementBranch::SpecialForward,
        MovementBranch::Blocked,
    ] {
        let mut state = initial();
        let mut events = trace(None);
        let result = step(branch, &mut state, 0, -1, &mut events).unwrap();
        assert!(events.calls.is_empty());
        if branch == MovementBranch::Blocked {
            assert_eq!(result, StepOutcome::Blocked);
            assert_eq!(state.failed_step_word, 0);
        } else {
            assert_eq!(result, StepOutcome::RequiresOriginalTransition(branch));
            assert_eq!(state, initial());
        }
    }
}

#[test]
fn arithmetic_retains_original_low_words_and_signed_delta_bits() {
    let mut state = MovementState {
        x: 0,
        y: 0,
        width: 255,
        ..initial()
    };
    assert_eq!(state.cell_offset(-1, 0), 0xfff1);
    assert_eq!(state.cell_offset(0, -1), 0xf10f);
    assert_eq!(
        step(MovementBranch::Open, &mut state, -1, 0, &mut trace(None)),
        Ok(StepOutcome::Moved)
    );
    assert_eq!(state.x, 65535);
    // Raw arithmetic is not permission to index host buffers beyond a PC grid.
}

#[test]
fn resumable_graphics9_dispatches_candidate_even_after_current_event_veto() {
    let mut state = initial();
    let mut call = MovementCall::begin(MovementBranch::SpecialForward, &mut state, 1, 0, (1, 0), 9);
    state.event_veto = 1;
    call.event_returned(&mut state, (1, 0)).unwrap();
    assert_eq!(
        call.request(),
        MovementRequest::Event(CellEvent {
            cell_offset: 30,
            mode: 1
        })
    );
    // A candidate event can change the live veto; original has no earlier test.
    state.event_veto = 0;
    call.event_returned(&mut state, (1, 0)).unwrap();
    assert_eq!(
        call.request(),
        MovementRequest::SpecialForward {
            original_cell_offset: 15
        }
    );
    assert_eq!(
        state,
        MovementState {
            event_veto: 0,
            ..initial()
        }
    );
    assert!(call.door_returned().is_err());
}
