//! Original05dc:2dca/sourceaf8a: twenty-counter cycles and delayed skip keys.
pub struct ModalWait {
    initial: u16,
    remaining: u16,
    stamp: u16,
}
impl ModalWait {
    pub fn new(cycles: i16, now: u16) -> Self {
        let cycles = cycles.max(0) as u16;
        Self {
            initial: cycles,
            remaining: cycles,
            stamp: now,
        }
    }
    pub fn due(&self, now: u16) -> bool {
        self.remaining == 0 || now.wrapping_sub(self.stamp) >= 20
    }
    /// One original iteration; a late host poll never skips input boundaries.
    pub fn check(&mut self, now: u16, key: Option<u8>) -> bool {
        if self.remaining == 0 {
            return true;
        }
        if !self.due(now) {
            return false;
        }
        if self.initial - self.remaining > 20 && matches!(key, Some(27 | 32 | 13)) {
            self.remaining = 0;
            return true;
        }
        self.remaining -= 1;
        self.stamp = now;
        self.remaining == 0
    }
}
#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn original_fifty_twenty_unit_cycles_and_twenty_one_completed_key_guard() {
        let mut wait = ModalWait::new(50, 65530);
        for i in 1..=50u16 {
            let now = 65530u16.wrapping_add(i * 20);
            assert!(!wait.check(now.wrapping_sub(1), None));
            assert_eq!(wait.check(now, None), i == 50);
        }
        let mut skip = ModalWait::new(50, 0);
        for i in 1..=21 {
            assert!(!skip.check(i * 20, Some(32)));
        }
        assert!(skip.check(440, Some(32)));
        let mut late = ModalWait::new(50, 0);
        assert!(!late.check(5000, None));
        assert!(!late.due(5019));
        assert!(late.due(5020));
    }
}
