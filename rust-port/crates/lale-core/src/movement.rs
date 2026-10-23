//! Original 1670:0000 ordinary movement boundary (IST physical 31f10..32624).
//! Events must execute synchronously against live state; no default event policy.
//! Door rendering and external event effects remain caller-owned.

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum MovementBranch {
    Open,
    Blocked,
    Door,
    Animated,
    SpecialForward,
}

/// Original 31f7c/31fb6/32100. Graphics value 9 takes priority only when
/// the paired state is nonzero. The caller must resolve the live selector table.
pub fn classify_branch(graphics_value: u16, paired_state: u8) -> MovementBranch {
    if graphics_value == 9 && paired_state != 0 {
        return MovementBranch::SpecialForward;
    }
    match paired_state {
        0 => MovementBranch::Open,
        2 => MovementBranch::Door,
        3 => MovementBranch::Animated,
        _ => MovementBranch::Blocked,
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct MovementState {
    pub x: u16,                // DS:b9f3
    pub y: u16,                // DS:b9f1
    pub width: u8,             // DS:b9eb
    pub event_veto: u16,       // DS:bba8; any nonzero value vetoes
    pub failed_step_word: u16, // DS:b9c8; meaning beyond failure clear unresolved
}

impl MovementState {
    /// Original low-word multiply/add; deliberately not a bounds-checked index.
    /// The resource adapter must validate before using this as a host offset.
    pub fn cell_offset(self, dx: i16, dy: i16) -> u16 {
        self.y
            .wrapping_add(dy as u16)
            .wrapping_mul(u16::from(self.width))
            .wrapping_add(self.x.wrapping_add(dx as u16))
            .wrapping_mul(15)
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct CellEvent {
    pub cell_offset: u16,
    pub mode: u16,
}

pub trait MovementEvents {
    /// Execute original event behavior, including any state/area changes.
    /// Returning without executing an unknown event is not an allow decision.
    type Error;
    fn dispatch(&mut self, state: &mut MovementState, event: CellEvent) -> Result<(), Self::Error>;
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum StepOutcome {
    Moved,
    /// Graphics9 returns AL0, but its helper has changed the live coordinates.
    /// The outer world loop detects that change independently of AL.
    Transitioned,
    Vetoed {
        mode: u16,
    },
    Blocked,
    RequiresOriginalTransition(MovementBranch),
}

/// A suspended original movement call. A request stays pending until its host
/// returns; polling does not acknowledge a choice, acquisition or encounter.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum MovementRequest {
    Event(CellEvent),
    /// Original322cd..32308 rereads the selector at the ORIGINAL cell offset
    /// using the LIVE facing, then calls1662:00bb with selector-1. The host must
    /// run that helper (including its guard-dependent live-vector commit).
    Door {
        original_cell_offset: u16,
    },
    /// The graphics9 event gates returned without veto. The original rereads
    /// paired state at this saved offset/argument direction before80d0. Its
    /// visual helper and AL0 return are deliberately not an ordinary commit.
    SpecialForward {
        original_cell_offset: u16,
    },
    Finished(StepOutcome),
}

pub struct MovementCall {
    branch: MovementBranch,
    dx: i16,
    dy: i16,
    original_cell_offset: u16,
    request: MovementRequest,
}
impl MovementCall {
    /// Bounded resumable counterpart of `step`, extended through the verified
    /// door branch321ba..32310. `forward` is live DSc6/c4, `door_graphics` is the
    /// current-facing resolved9f0e word (which can differ from argument facing).
    /// Graphics8 doors and non-forward door attempts fail BEFORE clearing veto.
    /// Graphics9 runs both event gates (without an intermediate veto check),
    /// then yields its distinct helper boundary. State3 remains unsupported.
    pub fn begin(
        branch: MovementBranch,
        state: &mut MovementState,
        dx: i16,
        dy: i16,
        forward: (i16, i16),
        door_graphics: u16,
    ) -> Self {
        let original_cell_offset = state.cell_offset(0, 0);
        let request = match branch {
            MovementBranch::Open => {
                state.event_veto = 0;
                MovementRequest::Event(CellEvent {
                    cell_offset: original_cell_offset,
                    mode: 3,
                })
            }
            MovementBranch::Door if door_graphics != 8 && (dx, dy) == forward => {
                state.event_veto = 0;
                MovementRequest::Event(CellEvent {
                    cell_offset: original_cell_offset,
                    mode: 3,
                })
            }
            MovementBranch::SpecialForward if (dx, dy) == forward => {
                state.event_veto = 0;
                MovementRequest::Event(CellEvent {
                    cell_offset: original_cell_offset,
                    mode: 3,
                })
            }
            MovementBranch::Blocked | MovementBranch::Door | MovementBranch::SpecialForward => {
                state.failed_step_word = 0;
                MovementRequest::Finished(StepOutcome::Blocked)
            }
            other => MovementRequest::Finished(StepOutcome::RequiresOriginalTransition(other)),
        };
        Self {
            branch,
            dx,
            dy,
            original_cell_offset,
            request,
        }
    }
    pub fn request(&self) -> MovementRequest {
        self.request
    }

    /// Only call once the requested cell dispatcher has actually returned.
    /// The door candidate uses LIVE forward vectors; ordinary steps retain the
    /// original argument delta. Both use live coordinates and map width.
    pub fn event_returned(
        &mut self,
        state: &mut MovementState,
        forward: (i16, i16),
    ) -> Result<(), &'static str> {
        let MovementRequest::Event(event) = self.request else {
            return Err("movement is not waiting for an event return");
        };
        // Graphics9's3201c falls directly into the candidate dispatch; its only
        // veto read is3205c, AFTER both. Ordinary/door check after each event.
        if state.event_veto != 0
            && !(self.branch == MovementBranch::SpecialForward && event.mode == 3)
        {
            state.failed_step_word = 0;
            self.request = MovementRequest::Finished(StepOutcome::Vetoed { mode: event.mode });
        } else if event.mode == 3 {
            let (dx, dy) = if self.branch == MovementBranch::Door {
                forward
            } else {
                (self.dx, self.dy)
            };
            self.request = MovementRequest::Event(CellEvent {
                cell_offset: state.cell_offset(dx, dy),
                mode: 1,
            });
        } else if self.branch == MovementBranch::Door {
            self.request = MovementRequest::Door {
                original_cell_offset: self.original_cell_offset,
            };
        } else if self.branch == MovementBranch::SpecialForward {
            self.request = MovementRequest::SpecialForward {
                original_cell_offset: self.original_cell_offset,
            };
        } else {
            state.x = state.x.wrapping_add(self.dx as u16);
            state.y = state.y.wrapping_add(self.dy as u16);
            self.request = MovementRequest::Finished(StepOutcome::Moved);
        }
        Ok(())
    }

    /// The helper already performed its conditional commit; never add a second
    /// delta here. Original3230d/32611 returns AL1 even if3b06 guarded that commit.
    /// Arrival/world mode2 dispatch belongs to the original outer world loop.
    pub fn door_returned(&mut self) -> Result<(), &'static str> {
        if !matches!(self.request, MovementRequest::Door { .. }) {
            return Err("movement is not waiting for the door helper");
        }
        self.request = MovementRequest::Finished(StepOutcome::Moved);
        Ok(())
    }

    /// Original320c9 ->32615 clears b9c8 and returns AL0 after80d0.
    /// The host has already committed once through73d8; never add a delta here.
    pub fn special_returned(&mut self, state: &mut MovementState) -> Result<(), &'static str> {
        if !matches!(self.request, MovementRequest::SpecialForward { .. }) {
            return Err("movement is not waiting for the graphics9 helper");
        }
        state.failed_step_word = 0;
        self.request = MovementRequest::Finished(StepOutcome::Transitioned);
        Ok(())
    }
}

/// Ordinary branch 32117..321b4 only. DX/DY are the original signed argument
/// words, not inferred from host key bindings. Unsupported transitions leave
/// state untouched. A dispatcher error propagates without committing a step;
/// event mutations already performed are retained, as they are not transactional.
pub fn step<E: MovementEvents>(
    branch: MovementBranch,
    state: &mut MovementState,
    dx: i16,
    dy: i16,
    events: &mut E,
) -> Result<StepOutcome, E::Error> {
    match branch {
        MovementBranch::Blocked => {
            state.failed_step_word = 0; // original 32615..32621
            return Ok(StepOutcome::Blocked);
        }
        MovementBranch::Open => {}
        other => return Ok(StepOutcome::RequiresOriginalTransition(other)),
    }
    state.event_veto = 0;
    let current = CellEvent {
        cell_offset: state.cell_offset(0, 0),
        mode: 3,
    };
    events.dispatch(state, current)?;
    if state.event_veto != 0 {
        state.failed_step_word = 0;
        return Ok(StepOutcome::Vetoed { mode: 3 });
    }
    // Read live width/coordinates AFTER the first event. Original 32147..32170.
    // In particular, do not precompute a destination and overwrite event changes.
    let candidate = CellEvent {
        cell_offset: state.cell_offset(dx, dy),
        mode: 1,
    };
    events.dispatch(state, candidate)?;
    if state.event_veto != 0 {
        state.failed_step_word = 0;
        return Ok(StepOutcome::Vetoed { mode: 1 });
    }
    // Original rereads coordinates after the second event (3218d..321ae).
    state.x = state.x.wrapping_add(dx as u16);
    state.y = state.y.wrapping_add(dy as u16);
    Ok(StepOutcome::Moved)
}
