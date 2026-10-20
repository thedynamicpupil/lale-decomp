//! Original SEQ counter arithmetic only, not a host scheduler/audio backend.
//! IST.EXE physical 0x58e1e..0x58e55 and 0x595bf..0x595e4.
use crate::{error, Error};

/// Original playback's low-word frame index. Counter units come from the game's
/// PIT callback, not guaranteed exact host milliseconds. Integer multiplication
/// and subtraction retain the original 32-bit wrapping behavior.
pub fn frame_index(start: u32, now: u32, fps: u8) -> u16 {
    now.wrapping_sub(start)
        .wrapping_mul(u32::from(fps))
        .wrapping_div(1000) as u16
}

/// One tail decision in the original background-refill routine. This does not
/// model ring capacity, resource I/O, seek recovery, or the outer playback loop.
/// The original subtracts low counter words and tests signed AX strictly >10.
pub fn refill_has_time(frame_entry: u16, now: u16, fps: u8) -> Result<bool, Error> {
    if fps == 0 {
        return Err(error("SEQ refill requires a nonzero frame-rate byte"));
    }
    let period = 1000u16 / u16::from(fps);
    let elapsed = now.wrapping_sub(frame_entry);
    let remaining = period.wrapping_sub(elapsed) as i16;
    Ok(remaining > 10)
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn original_counter_frames_and_wrap() {
        assert_eq!(frame_index(1000, 1000, 10), 0);
        assert_eq!(frame_index(1000, 1099, 10), 0);
        assert_eq!(frame_index(1000, 1100, 10), 1);
        assert_eq!(frame_index(0xfffffff0, 84, 10), 1);
        assert_eq!(frame_index(0, 63600, 10), 636);
    }
    #[test]
    fn refill_strict_budget_and_low_word_wrap() {
        assert!(refill_has_time(1000, 1089, 10).unwrap());
        assert!(!refill_has_time(1000, 1090, 10).unwrap());
        assert!(!refill_has_time(1000, 1110, 10).unwrap());
        assert!(refill_has_time(65530, 73, 10).unwrap());
        assert!(refill_has_time(0, 0, 0).is_err());
    }
}
