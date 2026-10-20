//! Original PC bank boundaries, without guessed collision or surface meanings.
//! Original 1670:1927 maps metadata at member+20 and cells at member+43.
//! Physical 31f10 computes `(y * metadata[0] + x) * 15`.
use crate::Error;

pub const CELL_BYTES: usize = 15;
pub const GRID_OFFSET: usize = 43;

#[derive(Debug)]
pub struct PcMap<'a> {
    pub bank_header: &'a [u8; 20],
    pub metadata: &'a [u8; 23],
    cells: &'a [u8],
}

impl<'a> PcMap<'a> {
    pub fn parse(member: &'a [u8]) -> Result<Self, Error> {
        if member.len() < GRID_OFFSET || member.get(..4) != Some(b"AmBk") {
            return Err(Error("truncated or unsupported PC bank header".into()));
        }
        let bank_header = member[..20].try_into().unwrap();
        let metadata: &[u8; 23] = member[20..GRID_OFFSET].try_into().unwrap();
        let size = usize::from(metadata[0]) * usize::from(metadata[1]) * CELL_BYTES;
        if size == 0 || member.len() != GRID_OFFSET + size {
            return Err(Error("PC dimensions/grid extent mismatch".into()));
        }
        Ok(Self {
            bank_header,
            metadata,
            cells: &member[GRID_OFFSET..],
        })
    }
    pub fn width(&self) -> u8 {
        self.metadata[0]
    }
    pub fn height(&self) -> u8 {
        self.metadata[1]
    }
    pub fn cell(&self, x: usize, y: usize) -> Option<&'a [u8; CELL_BYTES]> {
        if x >= usize::from(self.width()) || y >= usize::from(self.height()) {
            return None;
        }
        let at = (y * usize::from(self.width()) + x) * CELL_BYTES;
        self.cells.get(at..at + CELL_BYTES)?.try_into().ok()
    }
    /// Original loader's second-argument-nonzero entry position. This method
    /// validates the result; it does not mutate a world or execute its events.
    pub fn initial_cell(&self) -> Result<(usize, usize), Error> {
        let x = usize::from(self.metadata[7])
            .checked_sub(1)
            .ok_or_else(|| Error("PC entry x is zero".into()))?;
        let y = usize::from(self.metadata[8])
            .checked_sub(1)
            .ok_or_else(|| Error("PC entry y is zero".into()))?;
        self.cell(x, y)
            .ok_or_else(|| Error("PC entry outside grid".into()))?;
        Ok((x, y))
    }
    pub fn graphic_selectors(&self) -> [u8; 4] {
        self.metadata[3..7].try_into().unwrap()
    }
    /// Original loader at physical33a88..33ae8, after entry coordinates have
    /// been selected. This determines facing only, not movement permissions.
    pub fn initial_direction(&self) -> Result<u8, Error> {
        let (x, y) = self.initial_cell()?;
        Ok(if y < 3 {
            2
        } else if x < 3 {
            1
        } else if i16::from(self.height()) - 3 < y as i16 {
            0
        } else {
            3
        })
    }
}

/// Original 1662:0235, physical28665..286d7. Coordinates follow PC row-major
/// storage; these vectors do not establish input, movement or collision rules.
pub fn direction_vector(direction: u8) -> (i16, i16) {
    match direction % 4 {
        0 => (0, -1),
        1 => (1, 0),
        2 => (0, 1),
        _ => (-1, 0),
    }
}

/// Raw pair index is the original direction0..3, from1662:0235.
/// The even byte selects DS:9f0e[selector]; the odd byte is a movement branch
/// state, not a generic wall/collision boolean. Original1670:0000.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct DirectionalPair {
    pub selector: u8,
    pub movement_state: u8,
}
impl PcMap<'_> {
    pub fn directional_pair(&self, x: usize, y: usize, direction: u8) -> Option<DirectionalPair> {
        if direction >= 4 {
            return None;
        }
        let cell = self.cell(x, y)?;
        let at = usize::from(direction) * 2;
        Some(DirectionalPair {
            selector: cell[at],
            movement_state: cell[at + 1],
        })
    }
    /// Selectors1..4 address metadata[3..7] through DS9f0e+2*selector.
    /// Selector0's resident word is outside that loader copy and stays unknown.
    pub fn graphics_value_for_pair(&self, pair: DirectionalPair) -> Option<u8> {
        (1..=4)
            .contains(&pair.selector)
            .then(|| self.metadata[usize::from(pair.selector) + 2])
    }
    /// Read-only movement dispatch classification. Selector0 requires an explicit
    /// live DS:9f0e observation; its value is not part of the PC loader metadata.
    /// This does not execute door/stair helpers or resolve event vetoes.
    pub fn movement_branch(
        &self,
        x: usize,
        y: usize,
        direction: u8,
        resident_selector_zero: Option<u16>,
    ) -> Option<lale_core::movement::MovementBranch> {
        let pair = self.directional_pair(x, y, direction)?;
        // Graphics9 overrides the ordinary branch only when paired state is
        // nonzero (31f7c..32100). With state0, selector0's unknown resident
        // word cannot change the result. Do not invent a value for that word.
        if pair.movement_state == 0 && pair.selector <= 4 {
            return Some(lale_core::movement::MovementBranch::Open);
        }
        let value = if pair.selector == 0 {
            resident_selector_zero?
        } else {
            u16::from(self.graphics_value_for_pair(pair)?)
        };
        Some(lale_core::movement::classify_branch(
            value,
            pair.movement_state,
        ))
    }
    /// Original43851..43886 AL arithmetic. Special service keys and all-zero
    /// keys must be classified first. This is a structural candidate only.
    pub fn event_group_candidate(&self, cell: &[u8; CELL_BYTES]) -> u8 {
        let a = cell[13];
        let base = self.metadata[19];
        let sign = match a.cmp(&base) {
            std::cmp::Ordering::Less => 255,
            std::cmp::Ordering::Equal => 0,
            std::cmp::Ordering::Greater => 1,
        };
        a.wrapping_sub(base)
            .wrapping_shl(5)
            .wrapping_sub(sign)
            .wrapping_add(cell[14])
            .wrapping_sub(self.metadata[20])
    }
}
/// Original event special-key dispatch43889..43d61. Service names preserve
/// source terminology. These cases bypass generic PCS group selection.
pub fn special_event_key(key: &[u8]) -> Option<&'static str> {
    match key {
        [0, 0, 0, 0] => Some("NO_EVENT"),
        [31, 31, 31, 29] => Some("WEAPON_SELLER"),
        [31, 31, 31, 30] => Some("NECESSARY_THINGS_SERVICE"),
        [31, 31, 31, 28] => Some("FOOD_SERVICE"),
        [31, 31, 31, 27] => Some("HAVALI_MEHTAP_SERVICE"),
        [31, 31, 31, 31] => Some("SPECIAL_MODE2_DS3D5E_BIT4; gameplay meaning UNKNOWN"),
        _ => None,
    }
}
