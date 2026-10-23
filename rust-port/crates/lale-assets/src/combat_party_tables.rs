//! Raw original table inputs used by the recovered64f5 party conversion.
use crate::{combat_data, Error};
pub struct CombatPartyTables {
    pub weapons: [[i16; 7]; 27],
    pub clothing: [i16; 33],
    pub primary_dispatch: [i16; 5],
}
impl CombatPartyTables {
    pub fn read(exe: &[u8]) -> Result<Self, Error> {
        let mut weapons = [[0; 7]; 27];
        for (id, row) in weapons.iter_mut().enumerate() {
            *row = combat_data::weapon(exe, id, 0..=26)?.words;
        }
        let mut clothing = [0; 33];
        for (id, value) in clothing.iter_mut().enumerate() {
            let at = combat_data::ORIGINAL_DS_FILE_BASE + 0x10aa + 2 * id;
            *value = i16::from_le_bytes(
                exe.get(at..at + 2)
                    .ok_or_else(|| Error("truncated original clothing words".into()))?
                    .try_into()
                    .unwrap(),
            );
        }
        let mut primary_dispatch = [0; 5];
        for (i, value) in primary_dispatch.iter_mut().enumerate() {
            let at = combat_data::ORIGINAL_DS_FILE_BASE + 0x6417 + 2 * i;
            *value = i16::from_le_bytes(
                exe.get(at..at + 2)
                    .ok_or_else(|| Error("truncated original primary dispatch words".into()))?
                    .try_into()
                    .unwrap(),
            );
        }
        Ok(Self {
            weapons,
            clothing,
            primary_dispatch,
        })
    }
    pub fn borrowed(&self) -> lale_core::combat_party::PartyTables<'_> {
        lale_core::combat_party::PartyTables {
            weapons: &self.weapons,
            clothing: &self.clothing,
            primary_dispatch: &self.primary_dispatch,
        }
    }
}
