//! Native presentation pacing only. Original simulation remains in lale-core::rest.
use lale_assets::world_illustration::Illustration;
use lale_core::rest::Camp;
use std::time::{Duration, Instant};

/// User preference, NOT original DOS timing. Edit only this value to change the
/// visible camp duration; recovery/game-time/RNG remain the same ordered steps.
pub const CAMP_PRESENTATION_DURATION_MS: u64 = 3000;

pub struct Rest {
    pub simulation: Option<Camp>,
    pub artwork: Option<Illustration>,
    pub text: Vec<u8>,
    pub visible_since: Option<Instant>,
    pub presentation_duration: Duration,
    pub cancel: bool,
}
impl Rest {
    pub fn message(text: Vec<u8>) -> Self {
        Self {
            simulation: None,
            artwork: None,
            text,
            visible_since: None,
            presentation_duration: Duration::from_millis(CAMP_PRESENTATION_DURATION_MS),
            cancel: false,
        }
    }
    /// Called only after the first successful native frame presentation.
    pub fn presented(&mut self) {
        self.visible_since.get_or_insert_with(Instant::now);
    }
    /// Distribute the unchanged original steps across the requested real-time
    /// presentation. Include c=0's first step and the final no-tick finish call.
    pub fn due_steps(&self, elapsed: Duration) -> i16 {
        let Some(camp) = &self.simulation else {
            return 0;
        };
        if elapsed >= self.presentation_duration {
            return camp.duration + 1;
        }
        (elapsed.as_nanos() * camp.duration as u128 / self.presentation_duration.as_nanos()) as i16
            + 1
    }
}
