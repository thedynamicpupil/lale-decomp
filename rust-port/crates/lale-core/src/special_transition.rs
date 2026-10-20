//! Bounded original graphics9 transition controls,1662:80d0/73d8/6f18.
//! Event authorization, audio, rendering and source configuration are external.
//! This does not turn graphics9 into an ordinary move or load an area itself.
use crate::movement::MovementState;

/// Original file32096..320b3 maps the current cell's paired state after events.
pub fn guard_for_paired_state(paired_state: u8) -> Option<u8> {
    match paired_state {
        1 => Some(2),
        2 => Some(1),
        _ => None,
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum TransitionPhase {
    BeforeFirstCommit,
    FirstCommitted,
    Second,
    Finished,
}

pub struct TransitionControl {
    guard: u8,
    phase: TransitionPhase,
}
impl TransitionControl {
    /// Call only after original forward-vector/current-mode3/candidate-mode1
    /// checks and the final event veto. Opcode11 can load an area and veto here.
    pub fn new(guard: u8) -> Result<Self, &'static str> {
        if !matches!(guard, 1 | 2) {
            return Err("graphics9 transition requires guard1/2");
        }
        Ok(Self {
            guard,
            phase: TransitionPhase::BeforeFirstCommit,
        })
    }
    pub fn guard(&self) -> u8 {
        self.guard
    }
    pub fn phase(&self) -> TransitionPhase {
        self.phase
    }
    /// Both73d8 branches commit once: immediate if6d74==0, otherwise after
    /// buffer preparation and BEFORE destination composition/animated frames.
    pub fn commit_first(
        &mut self,
        state: &mut MovementState,
        live_dx: i16,
        live_dy: i16,
    ) -> Result<(), &'static str> {
        if self.phase != TransitionPhase::BeforeFirstCommit {
            return Err("graphics9 commit already passed");
        }
        state.x = state.x.wrapping_add(live_dx as u16);
        state.y = state.y.wrapping_add(live_dy as u16);
        self.phase = TransitionPhase::FirstCommitted;
        Ok(())
    }
    pub fn finish_first(&mut self) -> Result<(), &'static str> {
        if self.phase != TransitionPhase::FirstCommitted {
            return Err("graphics9 first phase not committed");
        }
        self.phase = TransitionPhase::Second;
        Ok(())
    }
    /// Original wrapper clears3b06 immediately AFTER both helper returns.
    /// It clears again before RETF; no persistent door-open flag is produced.
    pub fn finish_second(&mut self) -> Result<(), &'static str> {
        if self.phase != TransitionPhase::Second {
            return Err("graphics9 second phase not entered");
        }
        self.guard = 0;
        self.phase = TransitionPhase::Finished;
        Ok(())
    }
}

/// Source elapsed-counter scheduling. Unlike DoorClock, the original may repeat
/// or skip frame indices: each completed draw recomputes1+30*elapsed/1000.
pub struct TransitionClock {
    stamp: u16,
    index: u16,
    limit: i16,
    inclusive: bool,
}
impl TransitionClock {
    /// None means the original immediate first-phase branch. A nonzero setting
    /// with signed(setting/2)<=1 constructs a clock with no drawable frames.
    pub fn first(setting: i16, stamp: u16) -> Option<Self> {
        (setting != 0).then_some(Self {
            stamp,
            index: 1,
            limit: setting / 2,
            inclusive: false,
        })
    }
    /// None means original6f18 calls the external redraw helper with argument1.
    pub fn second(animation_enabled: bool, stamp: u16) -> Option<Self> {
        animation_enabled.then_some(Self {
            stamp,
            index: 1,
            limit: 18,
            inclusive: true,
        })
    }
    pub fn frame(&self) -> Option<u16> {
        let n = self.index as i16;
        (if self.inclusive {
            n <= self.limit
        } else {
            n < self.limit
        })
        .then_some(self.index)
    }
    /// Call AFTER callback/draw/present; elapsed uses unsigned16 wrap, and the
    /// stamp is unchanged throughout this phase. Rendering cost advances it.
    pub fn after_present(&mut self, now: u16) {
        self.index = (u32::from(now.wrapping_sub(self.stamp)) * 30 / 1000 + 1) as u16;
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn guard_lifetime_and_single_live_coordinate_commit() {
        assert_eq!(guard_for_paired_state(1), Some(2));
        assert_eq!(guard_for_paired_state(2), Some(1));
        let mut c = TransitionControl::new(1).unwrap();
        let mut s = MovementState {
            x: 65535,
            y: 0,
            width: 10,
            event_veto: 0,
            failed_step_word: 7,
        };
        c.commit_first(&mut s, 1, -1).unwrap();
        assert_eq!((s.x, s.y), (0, 65535));
        assert!(c.commit_first(&mut s, 1, -1).is_err());
        assert_eq!(c.guard(), 1);
        c.finish_first().unwrap();
        assert_eq!(c.guard(), 1);
        c.finish_second().unwrap();
        assert_eq!(c.guard(), 0);
        assert_eq!(s.failed_step_word, 7);
    }
    #[test]
    fn source_clock_repeats_skips_and_wraps() {
        let mut c = TransitionClock::second(true, 65500).unwrap();
        assert_eq!(c.frame(), Some(1));
        c.after_present(65501);
        assert_eq!(c.frame(), Some(1));
        c.after_present(164);
        assert_eq!(c.frame(), Some(7)); // unsigned elapsed200
        c.after_present(563);
        assert_eq!(c.frame(), Some(18)); // elapsed599
        c.after_present(564);
        assert_eq!(c.frame(), None); // elapsed600 ->19
        assert!(TransitionClock::first(0, 0).is_none());
        assert!(TransitionClock::second(false, 0).is_none());
        let mut first = TransitionClock::first(20, 0).unwrap();
        first.after_present(299);
        assert_eq!(first.frame(), Some(9));
        first.after_present(300);
        assert_eq!(first.frame(), None); // exclusive10
    }
    #[test]
    fn actual_first_phase_commit_bytes_precede_composition() {
        let b=std::fs::read(concat!(env!("CARGO_MANIFEST_DIR"), "/src/", "../../../../analysis/phase-five/navigation-renderer-20261016/stairs/first-phase73d8.bin")).expect("private research fixture required; see docs/DEVELOPMENT.md");
        assert_eq!(
            &b[0x13..0x27],
            &[
                0xa1, 0xf3, 0xb9, 0x03, 0x06, 0xc6, 0xb9, 0xa3, 0xf3, 0xb9, 0xa1, 0xf1, 0xb9, 0x03,
                0x06, 0xc4, 0xb9, 0xa3, 0xf1, 0xb9
            ]
        );
        assert_eq!(&b[0x93..0xa7], &b[0x13..0x27]);
        assert_eq!(&b[0xa7..0xad], &[0x6a, 0x43, 0x0e, 0xe8, 0xad, 0xc4]);
    }
}
