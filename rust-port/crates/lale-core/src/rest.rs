//! Original1670:4353 camping and8524's changed-coordinate metabolism.
//! See analysis/phase-five/rest-foundation-20261022/. No implicit idle/combat calls.
use crate::{combat_party::Numeric, rng::LaleRng, world_tick::WorldTickState};
pub const HUNGER: usize = 17;
pub const FATIGUE: usize = 21;
fn hunger_rate(n: &Numeric) -> i16 {
    5i16.wrapping_sub(n[9] / 100).max(1)
}
fn fatigue_rate(n: &Numeric) -> i16 {
    (n[45] / 2).wrapping_sub(n[9] / 100).max(1)
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum CampError {
    Forbidden,
    NotTired,
    UnsupportedDuration,
}
/// Cached portrait status is authoritative for this original duration calculation.
pub fn duration(party: &[Numeric; 4], dead: [bool; 4], flags: u16) -> Result<i16, CampError> {
    if flags & 8 != 0 {
        return Err(CampError::Forbidden);
    }
    let mut units = 0;
    for (n, dead) in party.iter().zip(dead) {
        if dead {
            continue;
        }
        units = units.max(n[6].wrapping_sub(n[29]));
        let damak = n[5].wrapping_sub(n[28]) / 30;
        // Strictly greater quotient; the original adds one only on assignment.
        if units < damak {
            units = damak.wrapping_add(1);
        }
    }
    if units == 0 {
        return Err(CampError::NotTired);
    }
    let minutes = units.wrapping_mul(15);
    if minutes <= 0 {
        return Err(CampError::UnsupportedDuration);
    }
    Ok(minutes)
}
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum CampStep {
    Resting,
    Complete,
    Cancelled,
    Encounter,
}
#[derive(Clone, Debug)]
pub struct Camp {
    pub duration: i16,
    pub completed: i16,
    pub interrupt_at: i16,
    finished: Option<CampStep>,
}
impl Camp {
    /// The caller presents original illustration79; this is NOT event flag79.
    /// Area suppression is the actual tested area event flag.
    pub fn begin(
        duration: i16,
        rate: u8,
        protected: bool,
        area_suppressed: bool,
        rng: &mut LaleRng,
    ) -> Self {
        let roll = rng.scaled(u16::from(rate) + 7);
        let interrupt_at = if roll < u16::from(rate) && !protected && !area_suppressed {
            (rng.scaled(duration as u16) as i16).wrapping_add(1)
        } else {
            duration.wrapping_add(1)
        };
        Self {
            duration,
            completed: 0,
            interrupt_at,
            finished: None,
        }
    }
    fn finish(
        &mut self,
        result: CampStep,
        protected: bool,
        suppressed: bool,
        rng: &mut LaleRng,
    ) -> CampStep {
        let encounter = self.duration / 4 > 30 && rng.scaled(6) < 2;
        let result = if encounter && result != CampStep::Encounter && !protected && !suppressed {
            CampStep::Encounter
        } else {
            result
        };
        self.finished = Some(result);
        result
    }
    /// Original ordering: tick, input/interrupt, pulse at c%15==0, wait50, c++.
    /// Caller owns the50-counter presentation wait. No catch-up or wall-time RNG.
    pub fn step(
        &mut self,
        party: &mut [Numeric; 4],
        tick: &mut WorldTickState,
        cancel: bool,
        protected: bool,
        suppressed: bool,
        rng: &mut LaleRng,
    ) -> CampStep {
        if let Some(result) = self.finished {
            return result;
        }
        if self.completed >= self.duration {
            return self.finish(CampStep::Complete, protected, suppressed, rng);
        }
        tick.advance(1);
        if cancel {
            return self.finish(CampStep::Cancelled, protected, suppressed, rng);
        }
        if self.completed >= self.interrupt_at {
            return self.finish(CampStep::Encounter, protected, suppressed, rng);
        }
        if self.completed % 15 == 0 {
            for n in party {
                recover(n);
            }
        }
        self.completed = self.completed.wrapping_add(1);
        CampStep::Resting
    }
}
/// Recovery processes all four records, including the original dead-record Damak
/// and gauge writes. HP alone is guarded at >-6; zero hunger/fatigue is special.
pub fn recover(n: &mut Numeric) {
    if n[28] < n[5] {
        n[28] = n[28].wrapping_add(n[5].wrapping_sub(n[28]).min(30));
    }
    if n[29] < n[6] && n[29] > -6 {
        n[29] = n[29].wrapping_add(1);
    }
    if n[HUNGER] != 0 {
        n[HUNGER] = n[HUNGER].wrapping_add(hunger_rate(n)).max(1);
    }
    if n[FATIGUE] != 0 {
        n[FATIGUE] = n[FATIGUE].wrapping_sub(fatigue_rate(n)).max(1);
    }
}
#[derive(Clone, Copy, Debug, Default, PartialEq, Eq)]
pub struct Metabolism {
    pub warned: u8,
}
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum HungerEvent {
    Warning(usize),
    Death(usize),
}
impl Metabolism {
    /// Called ONLY after an actual changed-coordinate shared tick whose minute
    /// is divisible by10. Effect20 uses actors25..28, as in original8524.
    pub fn world_step(
        &mut self,
        party: &mut [Numeric; 4],
        clock: [i16; 3],
        effect20: [bool; 4],
    ) -> Vec<HungerEvent> {
        let mut events = Vec::new();
        if clock[0] % 10 != 0 {
            return events;
        }
        for (p, n) in party.iter_mut().enumerate() {
            if n[29] <= 0 {
                continue;
            }
            let rate = hunger_rate(n);
            n[HUNGER] = n[HUNGER].wrapping_add(rate).min(1000);
            let fatigue = fatigue_rate(n);
            if effect20[p] {
                n[FATIGUE] = n[FATIGUE].wrapping_add(fatigue.wrapping_mul(3)).min(1000);
            }
            if n[HUNGER] > 500 {
                n[FATIGUE] = n[FATIGUE].wrapping_add(fatigue).min(1000);
            }
            if n[HUNGER] >= 1000 {
                if n[16] > 0 {
                    n[16] = n[16].wrapping_sub(rate).max(0);
                }
                if n[16] <= 0 {
                    n[29] = -6;
                    events.push(HungerEvent::Death(p));
                } else if self.warned & (1 << p) == 0 {
                    self.warned |= 1 << p;
                    events.push(HungerEvent::Warning(p));
                }
            }
        }
        events
    }
}
