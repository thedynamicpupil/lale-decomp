//! Original1670:4f3a world inventory, physical38c9a..391d6.
//! World changes references/raw ownership only;64f5 belongs to combat entry.
use crate::{
    combat_equipment::{self, EquipmentError, Position},
    combat_party::{Numeric, PartyTables},
};

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Error {
    Equipment(EquipmentError),
    InvalidPerson,
    Equipped,
    Full,
}

pub fn equip(
    n: &mut Numeric,
    tables: &PartyTables<'_>,
    slot: usize,
    position: Position,
) -> Result<(), Error> {
    // Same verified primary/clothing restrictions; do not commit the combat
    // refresh's numeric45 or create temporary actors/classes in the world.
    let mut scratch = *n;
    combat_equipment::equip(&mut scratch, &[0; 20], &mut [0; 23], tables, slot, position)
        .map_err(Error::Equipment)?;
    n[position.word()] = scratch[position.word()];
    Ok(())
}
pub fn release(n: &mut Numeric, position: Position) {
    n[position.word()] = 0;
}

///39109 scans ten destination slots in order. It does not swap occupied slots,
///clear equipped references, enforce a guessed capacity or consume clock/RNG.
pub fn transfer(
    party: &mut [Numeric; 4],
    from: usize,
    to: usize,
    slot: usize,
) -> Result<usize, Error> {
    if from >= 4 || to >= 4 || from == to {
        return Err(Error::InvalidPerson);
    }
    if !(1..=10).contains(&slot) {
        return Err(Error::Equipment(EquipmentError::InvalidSlot));
    }
    let reference = 34 + slot;
    if party[from][reference] == 0 {
        return Err(Error::Equipment(EquipmentError::Empty));
    }
    if party[from][30..33].contains(&(reference as i16)) {
        return Err(Error::Equipped);
    }
    let dest = (35..45).find(|&k| party[to][k] == 0).ok_or(Error::Full)?;
    party[to][dest] = party[from][reference];
    party[from][reference] = 0;
    Ok(dest - 34)
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn transfer_keeps_raw_bits_and_rejects_equipped_or_full_without_changes() {
        let mut p = [[0; 46]; 4];
        p[0][41] = 202;
        p[1][35] = 3;
        p[0][30] = 41;
        let before = p;
        assert_eq!(transfer(&mut p, 0, 1, 7), Err(Error::Equipped));
        assert_eq!(p, before);
        release(&mut p[0], Position::Primary);
        assert_eq!(transfer(&mut p, 0, 1, 7), Ok(2));
        assert_eq!(p[1][36], 202);
        assert_eq!(p[0][41], 0);
        p[2][35..45].fill(1);
        let before = p;
        assert_eq!(transfer(&mut p, 1, 2, 2), Err(Error::Full));
        assert_eq!(p, before);
    }
}
