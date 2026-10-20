//! Original1662:798c stage scheduling and guard-dependent position commit.
//! Authorization by movement/events and frame presentation are caller-owned.
use crate::movement::MovementState;

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum DoorPhase {
    Present(u8),
    Waiting(u8),
    Finished,
}

pub struct DoorClock {
    stage: u8,
    stamp: u16,
    enabled: bool,
    started: bool,
    finished: bool,
}
impl DoorClock {
    pub fn new(animation_enabled: bool) -> Self {
        Self {
            stage: if animation_enabled { 0 } else { 3 },
            stamp: 0,
            enabled: animation_enabled,
            started: false,
            finished: false,
        }
    }
    /// Call before callback/draw/present. The150-counter minimum includes their
    /// processing cost. A late host poll never skips an original stage.
    pub fn poll(&mut self, now: u16) -> DoorPhase {
        if self.finished {
            return DoorPhase::Finished;
        }
        if !self.started {
            self.started = true;
            self.stamp = now;
            return DoorPhase::Present(self.stage);
        }
        if self.enabled && now.wrapping_sub(self.stamp) < 150 {
            return DoorPhase::Waiting(self.stage);
        }
        if self.stage == 3 {
            self.finished = true;
            return DoorPhase::Finished;
        }
        self.stage += 1;
        self.stamp = now;
        DoorPhase::Present(self.stage)
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum DoorCommit {
    Committed,
    Guarded,
}

/// Original file304e1..304ff: the helper reads live vectors after animation.
/// DS3b06 is a temporary transition guard, not a persistent open-door flag.
/// No second movement command is required in the observed guard0 path.
pub fn commit(state: &mut MovementState, live_dx: i16, live_dy: i16, guard: u8) -> DoorCommit {
    if guard != 0 {
        return DoorCommit::Guarded;
    }
    state.x = state.x.wrapping_add(live_dx as u16);
    state.y = state.y.wrapping_add(live_dy as u16);
    DoorCommit::Committed
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn source_stage_minimum_wrap_and_processing_time() {
        let mut c = DoorClock::new(true);
        assert_eq!(c.poll(65500), DoorPhase::Present(0));
        assert_eq!(c.poll(113), DoorPhase::Waiting(0));
        assert_eq!(c.poll(114), DoorPhase::Present(1));
        assert_eq!(c.poll(1000), DoorPhase::Present(2)); // latepoll still presents2
        assert_eq!(c.poll(1149), DoorPhase::Waiting(2));
        assert_eq!(c.poll(1150), DoorPhase::Present(3));
        assert_eq!(c.poll(1299), DoorPhase::Waiting(3));
        assert_eq!(c.poll(1300), DoorPhase::Finished);
        assert_eq!(c.poll(0), DoorPhase::Finished);
        let mut instant = DoorClock::new(false);
        assert_eq!(instant.poll(42), DoorPhase::Present(3));
        assert_eq!(instant.poll(42), DoorPhase::Finished);
    }
    #[test]
    fn observed_north_commit_and_nonzero_guard() {
        let mut s = MovementState {
            x: 2,
            y: 1,
            width: 10,
            event_veto: 0,
            failed_step_word: 0,
        };
        assert_eq!(commit(&mut s, 0, -1, 1), DoorCommit::Guarded);
        assert_eq!((s.x, s.y), (2, 1));
        assert_eq!(commit(&mut s, 0, -1, 0), DoorCommit::Committed);
        assert_eq!((s.x, s.y), (2, 0));
        assert_eq!(s.failed_step_word, 0); // caller's ALsuccess handling is separate
    }
}
