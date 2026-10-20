//! Recovered counter-unit scheduling. No timestamps are taken from the video.
//! See priority-timing-20261014/TIMER_AND_PRESENTATION_SPEC.md.
use crate::menu_study::{CHARACTER, MENU};
#[cfg(test)]
use std::time::Duration;

pub use lale_core::clock::dos_counter;
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Phase {
    BackgroundFade,
    BackgroundWait,
    LogoPrewait,
    Logo,
    TitlePrewait,
    Title,
    FinalWait,
    Menu,
    MenuOut,
    CharacterIn,
    Character,
    CharacterOut,
    MenuIn,
}
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Visual {
    pub stage: usize,
    pub brightness: u8,
    pub interactive: bool,
}
pub struct Presentation {
    pub phase: Phase,
    start: u32,
    deadline: u32,
    blend_deadline: u16,
    blend_frame: u16,
}
/// Original signed quotient truncation, including the asymmetric darkening case.
pub fn fade(initial: i32, delta: i32, elapsed: u16, duration: u16) -> u8 {
    let delta = delta.clamp(-initial, 64 - initial);
    if duration == 0 || elapsed >= duration {
        return (initial + delta) as u8;
    }
    (initial + delta * i32::from(elapsed) / i32::from(duration)) as u8
}
impl Presentation {
    pub fn startup(now: u32) -> Self {
        Self {
            phase: Phase::BackgroundFade,
            start: now,
            deadline: 0,
            blend_deadline: 0,
            blend_frame: 0,
        }
    }
    pub fn immediate_menu(now: u32) -> Self {
        let mut s = Self::startup(now);
        s.phase = Phase::Menu;
        s
    }
    pub fn immediate_character(now: u32) -> Self {
        let mut s = Self::startup(now);
        s.phase = Phase::Character;
        s
    }
    fn enter(&mut self, phase: Phase, now: u32, duration: u32) {
        self.phase = phase;
        self.start = now;
        self.deadline = now.wrapping_add(duration);
        if matches!(phase, Phase::Logo | Phase::Title) {
            self.blend_frame = 0;
            self.blend_deadline = (now as u16).wrapping_add(1000 / 11);
        }
    }
    pub fn to_character(&mut self, now: u32) {
        self.enter(Phase::MenuOut, now, 1500);
    }
    pub fn to_menu(&mut self, now: u32) {
        self.enter(Phase::CharacterOut, now, 800);
    }
    pub fn update(&mut self, now: u32) -> Visual {
        let elapsed = (now as u16).wrapping_sub(self.start as u16);
        match self.phase {
            Phase::BackgroundFade if elapsed >= 1600 => {
                self.enter(Phase::BackgroundWait, now, 1000)
            }
            Phase::BackgroundWait if now >= self.deadline => {
                self.enter(Phase::LogoPrewait, now, 1000)
            }
            Phase::LogoPrewait if now >= self.deadline => self.enter(Phase::Logo, now, 0),
            Phase::Logo | Phase::Title if now as u16 >= self.blend_deadline => {
                if self.blend_frame == 12 {
                    if self.phase == Phase::Logo {
                        self.enter(Phase::TitlePrewait, now, 1000)
                    } else {
                        self.enter(Phase::FinalWait, now, 500)
                    }
                } else {
                    self.blend_frame += 1;
                    // Preserve original absolute16-bit compare, including rollover.
                    self.blend_deadline = (now as u16).wrapping_add(90);
                }
            }
            Phase::TitlePrewait if now >= self.deadline => self.enter(Phase::Title, now, 0),
            Phase::FinalWait if now >= self.deadline => self.enter(Phase::Menu, now, 0),
            Phase::MenuOut if elapsed >= 1500 => self.enter(Phase::CharacterIn, now, 800),
            Phase::CharacterIn if elapsed >= 800 => self.enter(Phase::Character, now, 0),
            Phase::CharacterOut if elapsed >= 800 => self.enter(Phase::MenuIn, now, 1600),
            Phase::MenuIn if elapsed >= 1600 => self.enter(Phase::Menu, now, 0),
            _ => {}
        }
        let elapsed = (now as u16).wrapping_sub(self.start as u16);
        let (stage, brightness) = match self.phase {
            Phase::BackgroundFade => (4, fade(0, 64, elapsed, 1600)),
            Phase::BackgroundWait | Phase::LogoPrewait => (4, 64),
            Phase::Logo => (4 + usize::from(self.blend_frame), 64),
            Phase::TitlePrewait => (16, 64),
            Phase::Title => (16 + usize::from(self.blend_frame), 64),
            Phase::FinalWait => (29, 64),
            Phase::Menu => (MENU, 64),
            Phase::MenuOut => (29, fade(64, -64, elapsed, 1500)),
            Phase::CharacterIn => (CHARACTER, fade(0, 64, elapsed, 800)),
            Phase::Character => (CHARACTER, 64),
            Phase::CharacterOut => (CHARACTER, fade(64, -64, elapsed, 800)),
            Phase::MenuIn => (29, fade(0, 64, elapsed, 1600)),
        };
        Visual {
            stage,
            brightness,
            interactive: matches!(self.phase, Phase::Menu | Phase::Character),
        }
    }
}
#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn exact_endpoints_integer_darkening_and_counter_quantization() {
        assert_eq!(dos_counter(Duration::ZERO), 0);
        assert_eq!(dos_counter(Duration::from_secs(1)), 1000);
        assert_eq!(fade(64, -64, 10, 1500), 64);
        assert_eq!(fade(64, -64, 1500, 1500), 0);
        assert_eq!(fade(0, 64, 1600, 1600), 64);
        assert_eq!(fade(7, -64, 0, 0), 0);
    }
    #[test]
    fn original_thirteen_holds_and_separate_options() {
        let mut s = Presentation::startup(0);
        assert_eq!(
            s.update(0),
            Visual {
                stage: 4,
                brightness: 0,
                interactive: false
            }
        );
        s.update(1600);
        s.update(2600);
        s.update(3600);
        assert_eq!(s.phase, Phase::Logo);
        for i in 0..13 {
            let v = s.update(3600 + i * 90);
            assert_eq!(v.stage, 4 + i as usize);
            assert!(!v.interactive);
        }
        s.update(4770);
        assert_eq!(s.phase, Phase::TitlePrewait);
        s.update(5770);
        for i in 0..13 {
            assert_eq!(s.update(5770 + i * 90).stage, 16 + i as usize);
        }
        assert_eq!(s.update(6940).stage, 29);
        assert!(!s.update(7430).interactive);
        assert_eq!(s.update(7440).stage, MENU);
        s.to_character(7440);
        assert_eq!(s.update(7440).stage, 29); // Options removed before fade.
        assert_eq!(s.update(8940).brightness, 0);
        assert_eq!(
            s.update(9740),
            Visual {
                stage: CHARACTER,
                brightness: 64,
                interactive: true
            }
        );
    }
    #[test]
    fn fade_wraps_but_original_blend_deadline_can_collapse() {
        let mut s = Presentation::startup(65000);
        assert_eq!(s.update(65000 + 1600).brightness, 64);
        s.enter(Phase::Logo, 65500, 0);
        assert_eq!(s.update(65500).stage, 5); // 65500 >= wrapped deadline54.
    }
}
