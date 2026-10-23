//! Combat inventory references, original1694:d1f4..d5db/file56e44..57255.
//! Narrow physical-combat subset: primary weapons1..25 and clothing27..32.
//! Secondary weapon attacks and the43/34 alias remain explicitly unsupported.
use crate::combat::{Actor, Class};
use crate::combat_party::{self, ConversionError, Numeric, PartyTables};

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Position {
    Primary,
    Secondary,
    Clothing,
}
impl Position {
    pub fn word(self) -> usize {
        match self {
            Self::Primary => 30,
            Self::Secondary => 31,
            Self::Clothing => 32,
        }
    }
}
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum EquipmentError {
    InvalidSlot,
    Empty,
    AlreadyEquipped,
    WrongKind,
    HandsOccupied,
    Unsupported,
    Conversion(ConversionError),
}

/// An equipment reference is a numeric-record WORD index, never an item ID.
/// Refresh changes classes and carried weight, preserving actor caches, allowance
/// and RNG. Commit only after every validation/conversion has succeeded.
pub fn equip(
    n: &mut Numeric,
    actor: &Actor,
    class: &mut Class,
    tables: &PartyTables<'_>,
    slot: usize,
    position: Position,
) -> Result<(), EquipmentError> {
    if !(1..=10).contains(&slot) {
        return Err(EquipmentError::InvalidSlot);
    }
    let reference = 34 + slot;
    let raw = n[reference];
    if raw == 0 {
        return Err(EquipmentError::Empty);
    }
    let id = raw % 100;
    match position {
        Position::Primary => {
            if id == 43 {
                return Err(EquipmentError::Unsupported);
            }
            if !(1..26).contains(&id) {
                return Err(EquipmentError::WrongKind);
            }
            if n[30] == reference as i16 || n[31] == reference as i16 {
                return Err(EquipmentError::AlreadyEquipped);
            }
            let weapon = tables
                .weapons
                .get(id as usize)
                .ok_or(EquipmentError::Unsupported)?;
            if weapon[4] == 2 && n[31] != 0 {
                return Err(EquipmentError::HandsOccupied);
            }
        }
        Position::Secondary => return Err(EquipmentError::Unsupported),
        Position::Clothing => {
            if !(27..33).contains(&id) {
                return Err(EquipmentError::WrongKind);
            }
        }
    }
    let mut next = *n;
    let mut derived = *class;
    next[position.word()] = reference as i16;
    combat_party::refresh(&mut next, actor, &mut derived, tables, 1)
        .map_err(EquipmentError::Conversion)?;
    *n = next;
    *class = derived;
    Ok(())
}
/// Original Q/W/E clears the reference; ownership and raw item bits survive.
pub fn unequip(
    n: &mut Numeric,
    actor: &Actor,
    class: &mut Class,
    tables: &PartyTables<'_>,
    position: Position,
) -> Result<(), EquipmentError> {
    let mut next = *n;
    let mut derived = *class;
    next[position.word()] = 0;
    combat_party::refresh(&mut next, actor, &mut derived, tables, 1)
        .map_err(EquipmentError::Conversion)?;
    *n = next;
    *class = derived;
    Ok(())
}
