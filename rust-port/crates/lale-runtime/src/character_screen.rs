//! Verified character appearance/input subset, with incomplete generation explicit.
use crate::character_appearance::CharacterAppearance;
use crate::character_creation::{Action, Outcome};
use crate::character_data::{
    DosInput, EditResult, FontMetrics, FourCharacters, NameEditor, Navigation, Party,
};
use crate::creation_session::CreationSession;
use crate::menu_study::{MenuStudy, CHARACTER};
use std::path::Path;

pub struct CharacterScreen {
    pub party: FourCharacters,
    appearance: CharacterAppearance,
    metrics: FontMetrics,
    editor: Option<NameEditor>,
    races: Vec<Vec<u8>>,
    thresholds: [(i16, i16); 12],
    pose: u16,
    pose_at: u32,
    reset_pose: bool,
    last_error: Option<String>,
    pub reference: bool,
    session: Option<CreationSession>,
}
fn text_at(exe: &[u8], offset: usize) -> Result<Vec<u8>, String> {
    let bytes = exe
        .get(0x19200 + offset..0x19200 + offset + 64)
        .ok_or("truncated original data")?;
    let end = bytes
        .iter()
        .position(|&v| v == 0)
        .ok_or("unterminated original string")?;
    Ok(bytes[..end].to_vec())
}
impl CharacterScreen {
    pub fn load(
        root: &Path,
        study: &MenuStudy,
        reference: Option<&Path>,
    ) -> Result<Self, Box<dyn std::error::Error>> {
        let exe = std::fs::read(root.join("lale/IST.EXE"))?;
        let metrics = FontMetrics::from_deneyx(study.font_indices(), 13, 1000)?;
        let party = if let Some(path) = reference {
            FourCharacters::loaded(&Party::parse(&std::fs::read(path)?)?)
        } else {
            FourCharacters::new_incomplete()
        };
        let races = (1..=8)
            .map(|i| text_at(&exe, 0x2638 + i * 11))
            .collect::<Result<Vec<_>, _>>()?;
        let order = [
            0x48bc, 0x48be, 0x48b8, 0x48ba, 0x48c0, 0x48c2, 0x48c4, 0x48c6, 0x48c8, 0x48ca, 0x48cc,
            0x48ce,
        ];
        let word = |at: usize| -> Result<i16, String> {
            let b = exe
                .get(0x19200 + at..0x19200 + at + 2)
                .ok_or("truncated threshold")?;
            Ok(i16::from_le_bytes([b[0], b[1]]))
        };
        let mut thresholds = [(0, 0); 12];
        for (i, at) in order.into_iter().enumerate() {
            thresholds[i] = (word(at)?, word(at + 0x18)?);
        }
        Ok(Self {
            party,
            appearance: CharacterAppearance::load(root)?,
            metrics,
            editor: None,
            races,
            thresholds,
            pose: 1,
            pose_at: 0,
            reset_pose: false,
            last_error: None,
            reference: reference.is_some(),
            session: None,
        })
    }
    pub fn editing(&self) -> bool {
        self.editor.is_some()
    }
    pub fn enable_creation_snapshot(
        &mut self,
        root: &Path,
        path: &Path,
    ) -> Result<(), Box<dyn std::error::Error>> {
        let session = CreationSession::load(path, &std::fs::read(root.join("lale/IST.EXE"))?)?;
        self.party = session.view();
        self.pose = session.caller.animation.drawn_pose;
        self.session = Some(session);
        eprintln!("DEBUG CREATION SNAPSHOT: original state and shared generator; idle RNG/time frozen unless F8 explicitly advances one150-unit poll. Enter rerolls; identities/names/four slots work. Completion prepares664 bytes in memory only; no saves or gameplay enabled.");
        Ok(())
    }
    /// Start a new native party, preserving the supplied shared RNG boundary.
    pub fn enable_normal_creation(
        &mut self,
        root: &Path,
        rng_state: u32,
        now: u16,
    ) -> Result<(), Box<dyn std::error::Error>> {
        let session =
            CreationSession::fresh(&std::fs::read(root.join("lale/IST.EXE"))?, rng_state, now)?;
        self.party = session.view();
        self.pose = session.caller.animation.drawn_pose;
        self.editor = None;
        self.reference = false;
        self.session = Some(session);
        eprintln!("NATIVE CREATION: original generator and source150-unit body animation; native entry seed boundary. Automatic random face scheduling remains unresolved; CPU idle RNG gates are not fabricated.");
        Ok(())
    }
    pub fn normal_creation(&self) -> bool {
        self.session.as_ref().is_some_and(|s| s.native)
    }
    pub fn debug_creation(&self) -> bool {
        self.session.as_ref().is_some_and(|s| !s.native)
    }
    pub fn prepared_party(&self) -> Option<&Party> {
        self.session.as_ref().and_then(|s| s.completed.as_ref())
    }
    pub fn rng_state(&self) -> Option<u32> {
        self.session.as_ref().map(CreationSession::rng_state)
    }
    pub fn window_title(&self) -> &'static str {
        if self.normal_creation() {
            "Lale native creation — Enter reroll | Tab name | Space next | F9 film | F11 room"
        } else if self.prepared_party().is_some() {
            "DEBUG PARTY PREPARED — 664 bytes in memory only | F9 film | F10 source sheets"
        } else if self.debug_creation() {
            "DEBUG CREATION SNAPSHOT — F8 explicit poll | idle RNG frozen | F9 SEQ | F10 source sheets"
        } else {
            "Lale native prototype — partial character generation | F9 SEQ | F10 source sheets"
        }
    }
    pub fn reset_animation(&mut self, now: u32) {
        if self.session.is_some() {
            return;
        }
        self.pose = 1;
        self.pose_at = now;
        self.reset_pose = false;
    }
    pub fn observe_counter(&mut self, now: u16) {
        if let Some(session) = &mut self.session {
            if session.native {
                session.observe_counter(now);
            }
        }
    }
    pub fn tick(&mut self, now: u32) {
        if let Some(session) = &mut self.session {
            if session.native && self.editor.is_none() {
                session.advance_native_body(now as u16);
                self.pose = session.caller.animation.drawn_pose;
            }
            return;
        }
        if self.reset_pose {
            self.reset_animation(now);
        }
        if self.editor.is_none() && (now as u16).wrapping_sub(self.pose_at as u16) >= 150 {
            self.pose = self.pose % 4 + 1;
            self.pose_at = now;
        }
    }
    fn begin_name(&mut self) {
        match NameEditor::new(
            &self.party.characters[self.party.selected].name,
            &self.metrics,
        ) {
            Ok(e) => self.editor = Some(e),
            Err(e) => eprintln!("Name editing unavailable: {e}"),
        }
    }
    fn edit(&mut self, input: DosInput) {
        let Some(editor) = self.editor.as_mut() else {
            return;
        };
        match editor.input(input) {
            EditResult::Accepted(bytes) | EditResult::Cancelled(bytes) => {
                self.party.characters[self.party.selected].name = bytes;
                self.editor = None;
                if let Some(session) = &mut self.session {
                    session.set_name(&self.party.characters[self.party.selected].name);
                }
            }
            _ => {}
        }
    }
    pub fn text_input(&mut self, text: &str) {
        if !self.editing() {
            return;
        }
        for c in text.chars() {
            // Explicit native UTF8 to original DOS-byte boundary. Original casing
            // transformations are applied by NameEditor, never Unicode lowercase.
            let byte = match c {
                ' '..='~' => Some(c as u8),
                'ç' => Some(0x87),
                'Ç' => Some(0x80),
                'ğ' => Some(0xa7),
                'Ğ' => Some(0xa6),
                'ı' => Some(0x8d),
                'İ' => Some(0x98),
                'ö' => Some(0x94),
                'Ö' => Some(0x99),
                'ş' => Some(0x9f),
                'Ş' => Some(0x9e),
                'ü' => Some(0x81),
                'Ü' => Some(0x9a),
                _ => None,
            };
            if let Some(byte) = byte {
                self.edit(DosInput::Byte(byte));
            }
        }
    }
    /// True only when the original previous/cancel branch leaves slot1.
    pub fn key(&mut self, key: i32) -> bool {
        if self.editing() {
            match key {
                8 => self.edit(DosInput::Backspace),
                13 => self.edit(DosInput::Enter),
                27 => self.edit(DosInput::Escape),
                _ => {}
            }
            return false;
        }
        if let Some(session) = &mut self.session {
            if key == 9 {
                self.begin_name();
                return false;
            }
            if key == 1073741889 && !session.native {
                // F8: explicit diagnostic poll.
                session.step_poll();
                self.pose = session.caller.animation.drawn_pose;
                return false;
            }
            let action = match key {
                27 => Action::Previous,
                32 => Action::Next,
                13 => Action::Reroll,
                1073741903 | 1073741918 => Action::Appearance(1),
                1073741904 | 1073741916 => Action::Appearance(-1),
                1073741906 | 1073741920 => Action::Race(1),
                1073741905 | 1073741914 => Action::Race(-1),
                99 => Action::Sex,
                _ => return false,
            };
            match session.action(action) {
                Ok(outcome) => {
                    self.party = session.view();
                    self.pose = session.caller.animation.drawn_pose;
                    if outcome == Outcome::FinalizationRequired && !session.native {
                        eprintln!("DEBUG PARTY PREPARED: four named characters and664 original-layout bytes in memory. Serialization IO and continuous gameplay remain gated.");
                    }
                    return outcome == Outcome::Cancelled;
                }
                Err(e) => eprintln!("Debug creation action rejected: {e}"),
            }
            return false;
        }
        let old = (
            self.party.selected,
            self.party.characters[self.party.selected].appearance,
        );
        match key {
            27 => {
                let result = self.party.previous();
                self.reset_pose = true;
                return result == Navigation::Cancelled;
            }
            32 => {
                if self.party.advance() == Navigation::GenerationIncomplete {
                    eprintln!("Party/game initialization is not implemented: full fresh attribute generation remains unverified. No game file was written.");
                }
            }
            9 => self.begin_name(), // Verified BIOS0f=Tab; manual's numpad0 is unresolved.
            13 => {
                self.party.characters[self.party.selected].invalidate_generation();
                eprintln!("Fresh attribute reroll remains incomplete; values are not fabricated.");
            }
            1073741903 | 1073741918 => {
                self.party.characters[self.party.selected].change_appearance(1)
            }
            1073741904 | 1073741916 => {
                self.party.characters[self.party.selected].change_appearance(-1)
            }
            1073741906 | 1073741920 => self.party.characters[self.party.selected].change_race(1),
            1073741905 | 1073741914 => self.party.characters[self.party.selected].change_race(-1),
            99 => self.party.characters[self.party.selected].change_sex(), // BIOS2e=C.
            _ => {}
        }
        if old
            != (
                self.party.selected,
                self.party.characters[self.party.selected].appearance,
            )
        {
            self.reset_pose = true;
        }
        false
    }
    pub fn click(&mut self, x: i32, y: i32, right: bool) -> bool {
        if self.editing() {
            return false;
        }
        let rects = [
            (17, 53, 65, 131),
            (68, 53, 100, 85),
            (90, 87, 99, 106),
            (90, 110, 99, 129),
            (69, 136, 107, 156),
            (15, 136, 53, 156),
            (0, 0, 20, 20),
            (154, 165, 310, 188),
        ];
        let old = (
            self.party.selected,
            self.party.characters[self.party.selected].appearance,
        );
        if let Some(i) = rects
            .iter()
            .position(|&(l, t, r, b)| x >= l && x <= r && y >= t && y <= b)
        {
            if self.session.is_some() {
                let key = match i {
                    0 | 1 => {
                        if right {
                            1073741904
                        } else {
                            1073741903
                        }
                    }
                    2 => {
                        if right {
                            1073741905
                        } else {
                            1073741906
                        }
                    }
                    3 => 99,
                    4 if !right => 9,
                    5 if !right => 13,
                    6 if !right => 27,
                    7 if !right => 32,
                    _ => return false,
                };
                return self.key(key);
            }
            match i {
                0 | 1 => self.party.characters[self.party.selected].change_appearance(if right {
                    -1
                } else {
                    1
                }),
                2 => self.party.characters[self.party.selected].change_race(if right {
                    -1
                } else {
                    1
                }),
                3 => self.party.characters[self.party.selected].change_sex(),
                4 if !right => self.begin_name(),
                5 if !right => {
                    self.key(13);
                }
                6 if !right => return self.key(27),
                7 if !right => {
                    self.key(32);
                }
                _ => {}
            }
        }
        if old
            != (
                self.party.selected,
                self.party.characters[self.party.selected].appearance,
            )
        {
            self.reset_pose = true;
        }
        false
    }
    pub fn indices(&mut self, study: &MenuStudy) -> Vec<u8> {
        let c = &self.party.characters[self.party.selected];
        // Random blink scheduling is not reconstructed: render original cell0.
        let mut pixels = match self.appearance.render(
            c.appearance,
            c.race,
            c.sex,
            self.pose,
            self.session
                .as_ref()
                .map_or(0, |s| usize::from(s.caller.animation.face_cell)),
        ) {
            Ok(frame) => {
                self.last_error = None;
                frame
            }
            Err(e) => {
                if self.last_error.as_ref() != Some(&e) {
                    eprintln!("{e}; showing original base interface without a substituted body.");
                    self.last_error = Some(e);
                }
                study.indices(CHARACTER)
            }
        };
        let draw = |pixels: &mut [u8], text: &[u8], x: i32, y: i32, color: u8| {
            study.text(pixels, text, x, y + 1, 0);
            study.text(pixels, text, x, y, color);
        };
        let heading = format!("karakter  #{}", self.party.selected + 1);
        draw(&mut pixels, heading.as_bytes(), 8, 18, 31);
        draw(
            &mut pixels,
            if c.sex == 1 { b"erkek" } else { b"di\x9fi" },
            8,
            28,
            31,
        );
        if let Some(race) = self.races.get(c.race.saturating_sub(1) as usize) {
            draw(&mut pixels, race, 8, 38, 31);
        }
        let mut name = if let Some(editor) = &self.editor {
            editor.text().to_vec()
        } else {
            c.name.clone()
        };
        if self.editor.is_some() {
            name.push(b'-');
        }
        draw(&mut pixels, &name, 16, 168, 31);
        if let Some(values) = c.values {
            for (i, value) in values.into_iter().enumerate() {
                let color = if i < 2 {
                    31
                } else {
                    let (max, min) = self.thresholds[i - 2];
                    if value > max {
                        72
                    } else if value < min {
                        222
                    } else {
                        31
                    }
                };
                draw(
                    &mut pixels,
                    value.to_string().as_bytes(),
                    280,
                    18 + i as i32 * 10,
                    color,
                );
            }
        }
        pixels
    }
    pub fn rgba(&self, indices: &[u8]) -> Result<Vec<u32>, String> {
        self.appearance.rgba(indices)
    }
}
