//! Original resident 1000:4a88 calendar conversion and startup 1000:1768 seed.
//!
//! The caller supplies DOS local civil time, as INT 21h/2ah and 2ch did.
//! This implements the **absent/invalid DOS TZ** branch (+18000 seconds and
//! the original compiler's April/October DST rules), not the host timezone
//! database. A native creation-entry seed does not reproduce earlier DOS
//! startup/menu RNG draws. Hundredths never enter the original conversion.

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct DosDateTime {
    pub year: u16,
    pub month: u8,
    pub day: u8,
    pub hour: u8,
    pub minute: u8,
    pub second: u8,
    pub hundredth: u8,
}

// Original DS:95a0 and DS:95ac; IST.EXE physical 0x227a0 and 0x227ac.
const MONTH_DAYS: [u16; 12] = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
const MONTH_END: [u16; 13] = [0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334, 365];

/// Native compatibility boundary: host local calendar fields replace DOS
/// INT 21h date/time. The original fallback timezone arithmetic is then applied
/// explicitly, irrespective of host UTC offset/DST. No fixed/error seed fallback.
#[cfg(all(target_os = "linux", target_pointer_width = "64"))]
pub fn host_local_seed() -> Result<u16, String> {
    use std::os::raw::{c_char, c_int, c_long};
    #[repr(C)]
    struct LocalTime {
        second: c_int,
        minute: c_int,
        hour: c_int,
        day: c_int,
        month: c_int,
        year: c_int,
        weekday: c_int,
        year_day: c_int,
        daylight: c_int,
        utc_offset: c_long,
        zone: *const c_char,
    }
    extern "C" {
        fn localtime_r(timestamp: *const c_long, result: *mut LocalTime) -> *mut LocalTime;
    }
    let epoch_seconds = std::time::SystemTime::now()
        .duration_since(std::time::UNIX_EPOCH)
        .map_err(|error| format!("Host clock precedes UNIX epoch: {error}"))?
        .as_secs();
    let epoch_seconds = c_long::try_from(epoch_seconds)
        .map_err(|_| "Host clock exceeds native time_t domain".to_string())?;
    let mut local = std::mem::MaybeUninit::<LocalTime>::uninit();
    // Linux 64-bit time_t is long; LocalTime follows libc's struct tm ABI.
    // localtime_r writes a full object on success and retains no caller pointers.
    let local = unsafe {
        if localtime_r(&epoch_seconds, local.as_mut_ptr()).is_null() {
            return Err("Host local civil-time conversion failed".into());
        }
        local.assume_init()
    };
    let byte =
        |value: c_int| u8::try_from(value).map_err(|_| "Invalid host civil time".to_string());
    DosDateTime {
        year: u16::try_from(local.year + 1900).map_err(|_| "Invalid host year".to_string())?,
        month: byte(local.month + 1)?,
        day: byte(local.day)?,
        hour: byte(local.hour)?,
        minute: byte(local.minute)?,
        second: byte(local.second)?,
        hundredth: 0,
    }
    .original_fallback_seed()
}

#[cfg(not(all(target_os = "linux", target_pointer_width = "64")))]
pub fn host_local_seed() -> Result<u16, String> {
    Err("Native DOS civil-time adapter is currently implemented for 64-bit Linux only".into())
}

impl DosDateTime {
    /// Return the original converted DX:AX under the absent/invalid TZ branch.
    /// Validated civil dates are limited to 1980..=2099, where the original
    /// four-year leap convention agrees with the Gregorian calendar.
    pub fn original_fallback_timestamp(self) -> Result<u32, String> {
        if !(1980..=2099).contains(&self.year) || !(1..=12).contains(&self.month) {
            return Err("DOS seed date requires year 1980..2099 and month 1..12".into());
        }
        let leap = self.year & 3 == 0;
        let days_in_month =
            MONTH_DAYS[usize::from(self.month - 1)] + u16::from(self.month == 2 && leap);
        if self.day == 0 || u16::from(self.day) > days_in_month {
            return Err("DOS seed date has an invalid day".into());
        }
        if self.hour > 23 || self.minute > 59 || self.second > 59 || self.hundredth > 99 {
            return Err("DOS seed time is outside INT 21h civil-time domains".into());
        }
        let year = u32::from(self.year - 1980);
        let day_of_year = MONTH_END[usize::from(self.month - 1)]
            + u16::from(self.day - 1)
            + u16::from(self.month > 2 && leap);
        let dst = original_dst(self.year - 1970, day_of_year, self.hour);
        let hours = i32::from(day_of_year) * 24 + i32::from(self.hour) - i32::from(dst);
        Ok(0x12ce_a600u32
            .wrapping_add(18_000)
            .wrapping_add((year >> 2).wrapping_mul(0x0786_1f80))
            .wrapping_add((year & 3).wrapping_mul(0x01e1_3380))
            .wrapping_add(if year & 3 != 0 { 86_400 } else { 0 })
            .wrapping_add((hours as u32).wrapping_mul(3600))
            .wrapping_add(u32::from(self.minute) * 60 + u32::from(self.second)))
    }

    /// Original startup passes AX only; setter clears the high RNG word.
    pub fn original_fallback_seed(self) -> Result<u16, String> {
        self.original_fallback_timestamp()
            .map(|timestamp| timestamp as u16)
    }
}

// Exact month-zero calling path of 1000:4fa2, called from 4a88.
fn original_dst(year_since_1970: u16, day_of_year: u16, hour: u8) -> bool {
    let mut adjusted_day = day_of_year;
    if day_of_year >= 59 && year_since_1970.wrapping_add(70) & 3 == 0 {
        adjusted_day -= 1;
    }
    let mut month = 0;
    while MONTH_END[month] <= adjusted_day {
        month += 1;
    }
    if !(4..=10).contains(&month) {
        return false;
    }
    if month != 4 && month != 10 {
        return true;
    }
    let mut boundary = if year_since_1970 > 16 && month == 4 {
        MONTH_END[month - 1] + 7
    } else {
        MONTH_END[month]
    };
    if year_since_1970.wrapping_add(1970) & 3 != 0 {
        boundary -= 1;
    }
    let weekday = year_since_1970
        .wrapping_mul(365)
        .wrapping_add(year_since_1970.wrapping_add(1) >> 2)
        .wrapping_add(boundary)
        .wrapping_add(4)
        % 7;
    boundary -= weekday;
    if month == 4 {
        day_of_year > boundary || (day_of_year == boundary && hour >= 2)
    } else {
        day_of_year < boundary || (day_of_year == boundary && hour <= 1)
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    fn date(year: u16, month: u8, day: u8, hour: u8) -> DosDateTime {
        DosDateTime {
            year,
            month,
            day,
            hour,
            minute: 0,
            second: 0,
            hundredth: 0,
        }
    }

    #[test]
    fn epoch_and_hundredths_follow_original_words() {
        let start = date(1980, 1, 1, 0);
        assert_eq!(start.original_fallback_timestamp().unwrap(), 315_550_800);
        assert_eq!(start.original_fallback_seed().unwrap(), 60_496);
        assert_eq!(
            DosDateTime {
                hundredth: 99,
                ..start
            }
            .original_fallback_timestamp(),
            start.original_fallback_timestamp()
        );
        assert_eq!(
            date(1981, 1, 1, 0).original_fallback_timestamp().unwrap()
                - start.original_fallback_timestamp().unwrap(),
            366 * 86_400
        );
        assert_eq!(
            date(1984, 1, 1, 0).original_fallback_timestamp().unwrap()
                - start.original_fallback_timestamp().unwrap(),
            1461 * 86_400
        );
    }

    #[test]
    fn original_april_october_rules_are_not_modern_host_rules() {
        // 2026 first Sunday April 5, last Sunday October 25.
        assert!(!original_dst(56, 94, 1));
        assert!(original_dst(56, 94, 2));
        assert!(original_dst(56, 297, 1));
        assert!(!original_dst(56, 297, 2));
        assert!(!original_dst(56, 73, 12)); // Modern US March DST is irrelevant.
        assert_eq!(
            date(2026, 4, 5, 1).original_fallback_timestamp(),
            date(2026, 4, 5, 2).original_fallback_timestamp()
        );
    }

    #[test]
    fn rejects_invalid_dates_without_silent_calendar_normalization() {
        assert!(date(2025, 2, 29, 0).original_fallback_seed().is_err());
        assert!(date(2024, 2, 29, 0).original_fallback_seed().is_ok());
        assert!(date(2100, 1, 1, 0).original_fallback_seed().is_err());
        assert!(date(2026, 1, 1, 24).original_fallback_seed().is_err());
    }

    #[test]
    fn independent_calendar_fixtures_include_old_dst_and_late_unsigned_dates() {
        // Python datetime UTC epoch values, then source fallback +5h/-DST.
        // These validate transcription; they are not new DOS runtime captures.
        for (civil, expected) in [
            (
                DosDateTime {
                    minute: 34,
                    second: 56,
                    ..date(2026, 10, 15, 12)
                },
                1_792_082_096,
            ),
            (
                DosDateTime {
                    minute: 59,
                    second: 59,
                    ..date(2024, 2, 29, 23)
                },
                1_709_269_199,
            ),
            (date(1986, 4, 20, 12), 514_400_400),
            (date(1986, 4, 27, 2), 514_965_600),
            (date(1987, 4, 5, 2), 544_600_800),
            (
                DosDateTime {
                    minute: 59,
                    second: 59,
                    ..date(2099, 12, 31, 23)
                },
                4_102_462_799,
            ),
        ] {
            assert_eq!(civil.original_fallback_timestamp().unwrap(), expected);
        }
    }
}
