//! Deterministic dimensions for the recovered indexed-image subsystem.
//! Recovered deterministic arithmetic and explicit simulation boundaries.

pub mod acquisition;
pub mod clock;
pub mod door;
pub mod events;
pub mod modal_wait;
pub mod movement;
pub mod rng;
pub mod special_transition;
pub mod world_tick;

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Dimensions {
    pub width: u16,
    pub height: u16,
}

impl Dimensions {
    pub fn pixel_count(self, budget: usize) -> Result<usize, &'static str> {
        let count = usize::from(self.width)
            .checked_mul(usize::from(self.height))
            .ok_or("pixel count overflow")?;
        if count == 0 || count > budget {
            return Err("empty image or pixel budget exceeded");
        }
        Ok(count)
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn dimensions_are_bounded_without_u16_multiplication() {
        assert_eq!(
            Dimensions {
                width: 320,
                height: 200
            }
            .pixel_count(64_000),
            Ok(64_000)
        );
        assert!(Dimensions {
            width: u16::MAX,
            height: u16::MAX
        }
        .pixel_count(8_388_608)
        .is_err());
        assert!(Dimensions {
            width: 0,
            height: 200
        }
        .pixel_count(64_000)
        .is_err());
    }
}
