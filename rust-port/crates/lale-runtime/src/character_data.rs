//! Verified character-record and input subset. See character-spec-20261014 reports.
//! Generation remains incomplete; loaded party statistics are never new-game rolls.
#![allow(dead_code)]

pub const PARTY_BYTES: usize = 664;
pub const STAT_OFFSETS: [usize; 14] = [
    0x24, 0x26, 0x0e, 0x10, 0x0a, 0x0c, 0x14, 0x12, 0x1a, 0x16, 0x18, 0x1c, 0x1e, 0x20,
];
pub const STAT_NAMES: [&str; 14] = [
    "Boy",
    "Kilo",
    "Zeka",
    "Vuruş Gücü",
    "Kelime Dağarcığı",
    "Güç",
    "Çeviklik",
    "Dayanıklılık",
    "Batıl İnanç",
    "Yüzsüzlük",
    "İstanbulluluk",
    "Cesaret",
    "Etkileyicilik",
    "İnanç",
];

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct Character {
    pub name_raw: [u8; 37],
    pub auxiliary_raw: [u8; 37],
    pub numeric_raw: [u8; 92],
}
impl Character {
    pub fn name(&self) -> &[u8] {
        let n = self.name_raw.iter().position(|&b| b == 0).unwrap_or(37);
        &self.name_raw[..n]
    }
    pub fn word(&self, offset: usize) -> u16 {
        u16::from_le_bytes([self.numeric_raw[offset], self.numeric_raw[offset + 1]])
    }
    pub fn race(&self) -> u16 {
        self.word(2)
    }
    pub fn sex(&self) -> u16 {
        self.word(4)
    }
    pub fn appearance(&self) -> u16 {
        self.word(0x42)
    }
    pub fn stats(&self) -> [i16; 14] {
        STAT_OFFSETS.map(|o| self.word(o) as i16)
    }
}
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct Party {
    pub characters: [Character; 4],
}
impl Party {
    pub fn parse(bytes: &[u8]) -> Result<Self, String> {
        if bytes.len() != PARTY_BYTES {
            return Err("party data must be exactly664 bytes".into());
        }
        let mut records = Vec::with_capacity(4);
        for i in 0..4 {
            let name_raw: [u8; 37] = bytes[i * 74..i * 74 + 37].try_into().unwrap();
            let auxiliary_raw = bytes[i * 74 + 37..i * 74 + 74].try_into().unwrap();
            let numeric_raw = bytes[296 + i * 92..296 + (i + 1) * 92].try_into().unwrap();
            if !name_raw.contains(&0) {
                return Err(format!("party name{} is not terminated", i + 1));
            }
            records.push(Character {
                name_raw,
                auxiliary_raw,
                numeric_raw,
            });
        }
        Ok(Self {
            characters: records.try_into().unwrap(),
        })
    }
    /// In-memory verification only. This module never writes a game file.
    pub fn original_bytes(&self) -> [u8; PARTY_BYTES] {
        let mut out = [0; PARTY_BYTES];
        for (i, c) in self.characters.iter().enumerate() {
            out[i * 74..i * 74 + 37].copy_from_slice(&c.name_raw);
            out[i * 74 + 37..i * 74 + 74].copy_from_slice(&c.auxiliary_raw);
            out[296 + i * 92..296 + (i + 1) * 92].copy_from_slice(&c.numeric_raw)
        }
        out
    }
}

/// Original167c:182e pre-write preparation, without file IO or confirmation.
/// This does not validate generation completeness and is not connected to UI.
/// Exact source: physical3e465..3e4f5 and DS499a's37-byte literal.
pub fn prepare_original_creation_records(party: &Party) -> Party {
    let mut prepared = party.clone();
    for character in &mut prepared.characters {
        let a = [character.numeric_raw[0x0a], character.numeric_raw[0x0b]];
        let b = [character.numeric_raw[0x0c], character.numeric_raw[0x0d]];
        character.numeric_raw[0x38..0x3a].copy_from_slice(&a);
        character.numeric_raw[0x3a..0x3c].copy_from_slice(&b);
        character.auxiliary_raw = *b"100000000000000000000000000000000000\0";
    }
    prepared
}

/// Original signed16-bit endpoint wrapping,1694:0202; not a general modulo.
pub fn cyclic_identity(value: u16, delta: i16, min: i16, max: i16) -> u16 {
    let mut n = (value as i16).wrapping_add(delta);
    if n < min {
        n = max
    }
    if n > max {
        n = min
    }
    n as u16
}
pub use lale_core::rng::LaleRng;
/// Original generator's final signed minimum pass, logical167c:0ea1.
/// Physical IST.EXE3daa1..3db46: words3..=16, except word6 uses3.
/// This is only one generation stage. Do not apply to loaded party records or
/// use it to turn blank drafts into generated characters.
pub fn apply_generation_minimums(record: &mut [u8; 92]) {
    for word in 3..=16 {
        let at = word * 2;
        let value = i16::from_le_bytes([record[at], record[at + 1]]);
        let minimum = if word == 6 { 3 } else { 50 };
        record[at..at + 2].copy_from_slice(&value.max(minimum).to_le_bytes());
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum StatsOrigin {
    LoadedOriginalParty,
    GeneratedOriginal,
}
#[derive(Clone, Debug)]
pub struct CharacterDraft {
    pub name: Vec<u8>,
    pub race: u16,
    pub sex: u16,
    pub appearance: u16,
    pub values: Option<[i16; 14]>,
    pub values_origin: Option<StatsOrigin>,
}
impl CharacterDraft {
    /// Blank identity fields are lower-bounded to1 by167c:1aa2.
    /// No RNG formula is guessed; generated numeric values remain absent.
    pub fn new_incomplete() -> Self {
        Self {
            name: Vec::new(),
            race: 1,
            sex: 1,
            appearance: 1,
            values: None,
            values_origin: None,
        }
    }
    pub fn loaded(c: &Character) -> Self {
        Self {
            name: c.name().to_vec(),
            race: c.race(),
            sex: c.sex(),
            appearance: c.appearance(),
            values: Some(c.stats()),
            values_origin: Some(StatsOrigin::LoadedOriginalParty),
        }
    }
    pub fn invalidate_generation(&mut self) {
        self.values = None;
        self.values_origin = None;
    }
    pub fn change_race(&mut self, delta: i16) {
        self.race = cyclic_identity(self.race, delta, 1, 8);
        self.appearance = 2 * (self.race - 1) + 1;
        self.sex = sex_for_appearance(self.appearance);
        self.invalidate_generation();
    }
    pub fn change_sex(&mut self) {
        self.sex = cyclic_identity(self.sex, 1, 1, 2);
        self.invalidate_generation();
    }
    pub fn change_appearance(&mut self, delta: i16) {
        self.appearance = cyclic_identity(self.appearance, delta, 1, 16);
        self.sex = sex_for_appearance(self.appearance);
    }
}
pub fn sex_for_appearance(appearance: u16) -> u16 {
    if matches!(appearance, 6 | 13 | 14 | 16) {
        2
    } else {
        1
    }
}
#[derive(Clone, Debug)]
pub struct FourCharacters {
    pub characters: [CharacterDraft; 4],
    pub selected: usize,
}
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Navigation {
    Stayed,
    Changed,
    Cancelled,
    GenerationIncomplete,
}
impl FourCharacters {
    pub fn new_incomplete() -> Self {
        Self {
            characters: std::array::from_fn(|_| CharacterDraft::new_incomplete()),
            selected: 0,
        }
    }
    pub fn loaded(party: &Party) -> Self {
        Self {
            characters: std::array::from_fn(|i| CharacterDraft::loaded(&party.characters[i])),
            selected: 0,
        }
    }
    pub fn previous(&mut self) -> Navigation {
        if self.selected == 0 {
            Navigation::Cancelled
        } else {
            self.selected -= 1;
            Navigation::Changed
        }
    }
    pub fn advance(&mut self) -> Navigation {
        if self.characters[self.selected].name.is_empty() {
            return Navigation::Stayed;
        }
        if self.selected < 3 {
            self.selected += 1;
            Navigation::Changed
        } else {
            Navigation::GenerationIncomplete
        }
    }
}

/// Mode1 measured advance from original DENEYX.CMP;115-unit limit includes '-'.
#[derive(Clone, Debug)]
pub struct FontMetrics {
    advances: [u16; 256],
}
impl FontMetrics {
    pub fn from_deneyx(indices: &[u8], width: usize, height: usize) -> Result<Self, String> {
        if width != 13 || height != 1000 || indices.len() != 13000 {
            return Err("expected original13x1000 DENEYX index sheet".into());
        }
        let mut advances = [3; 256];
        for (byte, a) in advances.iter_mut().enumerate() {
            let glyph = match byte {
                0x21..=0x40 => Some(byte - 0x21),
                0x61..=0x7a => Some(byte - 0x41),
                0x5b..=0x60 => Some(byte - 0x21),
                0x7b..=0x7f => Some(byte - 0x3b),
                0x81 => Some(75),
                0x87 => Some(70),
                0x8d => Some(72),
                0x94 => Some(73),
                0x9f => Some(74),
                0xa6 => Some(69),
                0xa7 => Some(71),
                _ => None,
            };
            if let Some(i) = glyph {
                *a = u16::from(indices[i * 143]) + 2
            } else if matches!(byte, 0x41..=0x5a | 0x80 | 0x98 | 0x99 | 0x9a | 0x9e) {
                *a = 20
            }
        }
        // This recovered capacity relies on the original font's minimum spacing.
        if advances.iter().any(|&n| n < 3) || advances[b'-' as usize] != 8 {
            return Err("font metrics do not match verified name-width capacity".into());
        }
        Ok(Self { advances })
    }
    pub fn advance(&self, byte: u8) -> u16 {
        self.advances[usize::from(byte)]
    }
    pub fn measured(&self, text: &[u8]) -> i32 {
        text.iter()
            .map(|&b| i32::from(self.advance(b)))
            .sum::<i32>()
            - 1
    }
    pub fn editable_width(&self, text: &[u8]) -> i32 {
        self.measured(text) + i32::from(self.advance(b'-'))
    }
}
/// Original DOS encoded conversion16da:0f84 followed by09d1. Not Unicode casing.
pub fn encode_name_key(byte: u8) -> u8 {
    let b = match byte {
        b'C' => 0x87,
        b'G' => 0xa7,
        b'I' => 0x8d,
        b'O' => 0x94,
        b'S' => 0x9f,
        b'U' => 0x81,
        _ => byte,
    };
    match b {
        b'A'..=b'[' if b != b'I' => b.wrapping_add(32),
        0x49 => 0x8d,
        0x80 => 0x87,
        0x98 => 0x69,
        0x99 => 0x94,
        0x9a => 0x81,
        0x9e => 0x9f,
        0xa6 => 0xa7,
        _ => b,
    }
}
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum DosInput {
    Byte(u8),
    Backspace,
    Enter,
    Escape,
}
#[derive(Clone, Debug, PartialEq, Eq)]
pub enum EditResult {
    Continue,
    Rejected,
    Accepted(Vec<u8>),
    Cancelled(Vec<u8>),
}
#[derive(Clone, Debug)]
pub struct NameEditor {
    original: Vec<u8>,
    text: Vec<u8>,
    metrics: FontMetrics,
    extended: bool,
    finished: bool,
}
impl NameEditor {
    pub fn new(initial: &[u8], metrics: &FontMetrics) -> Result<Self, String> {
        if initial.len() > 36 || initial.contains(&0) {
            return Err("invalid editable original name bytes".into());
        }
        Ok(Self {
            original: initial.to_vec(),
            text: initial.to_vec(),
            metrics: metrics.clone(),
            extended: false,
            finished: false,
        })
    }
    pub fn text(&self) -> &[u8] {
        &self.text
    }
    pub fn input(&mut self, input: DosInput) -> EditResult {
        if self.finished {
            return EditResult::Rejected;
        }
        if self.extended {
            self.extended = false;
            return EditResult::Continue;
        }
        let input = match input {
            DosInput::Byte(0) => {
                self.extended = true;
                return EditResult::Continue;
            }
            DosInput::Byte(8) => DosInput::Backspace,
            DosInput::Byte(13) => DosInput::Enter,
            DosInput::Byte(27) => DosInput::Escape,
            x => x,
        };
        match input {
            DosInput::Backspace => {
                self.text.pop();
                EditResult::Continue
            }
            DosInput::Enter => {
                self.finished = true;
                EditResult::Accepted(self.text.clone())
            }
            DosInput::Escape => {
                self.text = self.original.clone();
                self.finished = true;
                EditResult::Cancelled(self.text.clone())
            }
            DosInput::Byte(b) => {
                if self.metrics.measured(&self.text) >= 115 {
                    return EditResult::Rejected;
                }
                let b = encode_name_key(b);
                self.text.push(b);
                if self.metrics.editable_width(&self.text) > 115 || self.text.len() > 36 {
                    self.text.pop();
                    EditResult::Rejected
                } else {
                    EditResult::Continue
                }
            }
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    fn root() -> std::path::PathBuf {
        std::path::Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..")
    }
    fn metrics() -> FontMetrics {
        let bytes = std::fs::read(root().join("lale/IVIR.CKD")).unwrap();
        let archive = lale_assets::Flib::parse(&bytes).unwrap();
        let member = archive
            .members
            .iter()
            .find(|m| m.name.eq_ignore_ascii_case("DENEYX.CMP"))
            .unwrap();
        let image = lale_assets::decode_cmp(member.payload).unwrap();
        FontMetrics::from_deneyx(&image.indices, 13, 1000).unwrap()
    }
    #[test]
    fn party_originals_roundtrip_and_field_mapping() {
        for f in ["GRP.DAT", "GRPHAZIR.DAT"] {
            let raw = std::fs::read(root().join("lale").join(f)).unwrap();
            let party = Party::parse(&raw).unwrap();
            assert_eq!(party.original_bytes().as_slice(), raw);
            for c in &party.characters {
                assert!((1..=8).contains(&c.race()));
                assert!((1..=2).contains(&c.sex()));
                assert!((1..=16).contains(&c.appearance()));
            }
        }
        let raw = std::fs::read(root().join("lale/GRP.DAT")).unwrap();
        let party = Party::parse(&raw).unwrap();
        let c = &party.characters[0];
        assert_eq!(c.name(), b"cayhan");
        assert_eq!(
            c.stats(),
            [207, 91, 162, 141, 139, 8, 50, 50, 50, 133, 177, 50, 50, 103]
        );
        assert!(Party::parse(&raw[..663]).is_err());
    }
    #[test]
    fn rng_matches_original_transcription() {
        let mut r = LaleRng::seeded(1);
        assert_eq!(
            (0..12).map(|_| r.next_dos()).collect::<Vec<_>>(),
            vec![346, 130, 10982, 1090, 11656, 7117, 17595, 6415, 22948, 31126, 9004, 14558]
        );
        assert_eq!(r.state, 0xb8deb185);
        let mut r = LaleRng::seeded(1);
        assert_eq!(r.scaled(25), 0);
    }
    #[test]
    fn cyclic_limits_and_incomplete_generation() {
        assert_eq!(cyclic_identity(16, 1, 1, 16), 1);
        assert_eq!(cyclic_identity(1, -1, 1, 8), 8);
        let mut p = FourCharacters::new_incomplete();
        assert_eq!(p.advance(), Navigation::Stayed);
        assert_eq!(p.previous(), Navigation::Cancelled);
        for i in 0..4 {
            p.characters[i].name = b"a".to_vec();
            assert!(p.characters[i].values.is_none());
            if i < 3 {
                assert_eq!(p.advance(), Navigation::Changed)
            }
        }
        assert_eq!(p.advance(), Navigation::GenerationIncomplete);
        p.characters[3].change_race(1);
        assert_eq!((p.characters[3].race, p.characters[3].appearance), (2, 3));
    }
    #[test]
    fn name_original_metrics_capacity_conversion_cancel() {
        let m = metrics();
        assert_eq!(
            (m.advance(b'i'), m.advance(b'm'), m.advance(b'-')),
            (5, 14, 8)
        );
        let mut e = NameEditor::new(b"", &m).unwrap();
        for _ in 0..36 {
            assert_eq!(e.input(DosInput::Byte(b' ')), EditResult::Continue)
        }
        assert_eq!(e.input(DosInput::Byte(b' ')), EditResult::Rejected);
        assert_eq!(e.text().len(), 36);
        e.input(DosInput::Escape);
        assert_eq!(e.text(), b"");
        let mut e = NameEditor::new(b"x", &m).unwrap();
        e.input(DosInput::Byte(b'C'));
        assert_eq!(e.text(), [b'x', 0x87]);
        e.input(DosInput::Byte(0));
        e.input(DosInput::Byte(0x4d));
        assert_eq!(e.text(), [b'x', 0x87]);
        assert_eq!(
            e.input(DosInput::Escape),
            EditResult::Cancelled(b"x".to_vec())
        );
        let mut e = NameEditor::new(b"", &m).unwrap();
        for _ in 0..21 {
            e.input(DosInput::Byte(b'i'));
        }
        assert_eq!(e.input(DosInput::Byte(b'i')), EditResult::Rejected);
        assert_eq!(
            e.input(DosInput::Enter),
            EditResult::Accepted(vec![b'i'; 21])
        );
    }
}

#[cfg(test)]
mod generation_minimum_tests {
    use super::apply_generation_minimums;

    #[test]
    fn original_signed_minimum_boundaries_preserve_other_record_fields() {
        for input in [i16::MIN, -1, 0, 2, 3, 49, 50, 51, i16::MAX] {
            let mut record = [0xa5; 92];
            for word in 3..=16 {
                record[word * 2..word * 2 + 2].copy_from_slice(&input.to_le_bytes());
            }
            let before = record;
            apply_generation_minimums(&mut record);
            // Identity/header words, Boy/Kilo, appearance and unknown trailing
            // fields lie outside this exact original loop and must stay intact.
            assert_eq!(&record[..6], &before[..6]);
            assert_eq!(&record[34..], &before[34..]);
            for word in 3..=16 {
                let actual = i16::from_le_bytes([record[word * 2], record[word * 2 + 1]]);
                let expected = match (word, input) {
                    (6, i16::MIN..=2) => 3,
                    (6, value) => value,
                    (_, i16::MIN..=49) => 50,
                    (_, value) => value,
                };
                assert_eq!(actual, expected, "word {word}, input {input}");
            }
        }
    }
}

#[cfg(test)]
mod creation_preparation_tests {
    use super::{prepare_original_creation_records, Character, Party};

    #[test]
    fn preparation_matches_original_copies_and_preserves_other_bytes() {
        let party = Party {
            characters: std::array::from_fn(|slot| {
                let mut numeric_raw = std::array::from_fn(|i| (i + slot * 47) as u8);
                numeric_raw[0x0a..0x0e].copy_from_slice(&[0x00, 0x80, 0xff, 0xff]);
                Character {
                    name_raw: [slot as u8; 37],
                    auxiliary_raw: [0xa5; 37],
                    numeric_raw,
                }
            }),
        };
        let before = party.original_bytes();
        let prepared = prepare_original_creation_records(&party);
        assert_eq!(party.original_bytes(), before);
        for (source, result) in party.characters.iter().zip(&prepared.characters) {
            assert_eq!(result.name_raw, source.name_raw);
            assert_eq!(result.auxiliary_raw[0], b'1');
            assert_eq!(&result.auxiliary_raw[1..36], &[b'0'; 35]);
            assert_eq!(result.auxiliary_raw[36], 0);
            assert_eq!(&result.numeric_raw[0x38..0x3c], &[0x00, 0x80, 0xff, 0xff]);
            assert_eq!(&result.numeric_raw[..0x38], &source.numeric_raw[..0x38]);
            assert_eq!(&result.numeric_raw[0x3c..], &source.numeric_raw[0x3c..]);
        }
        assert_eq!(prepare_original_creation_records(&prepared), prepared);
        assert_eq!(prepared.original_bytes().len(), 664);
    }
}
