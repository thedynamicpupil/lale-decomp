//! Original menu choice3 loads GRPHAZIR.DAT through the shared party reader.
//! No generation, preparation rewrite, implicit equipment or save-file writes.
use crate::{character_data::Party, otopark_room, sdl_window::Window};
use std::{error::Error, path::Path};

pub struct QuickStart {
    pub party: Party,
    pub rng_state: u32,
    /// Startup clears this workspace; the ready-party file does not contain it.
    pub traits: [[u16; 16]; 4],
}
impl QuickStart {
    pub fn load(root: &Path, seed: u16) -> Result<Self, Box<dyn Error>> {
        let party = Party::parse(&std::fs::read(root.join("lale/GRPHAZIR.DAT"))?)?;
        for c in &party.characters {
            if c.name().is_empty()
                || !(1..=8).contains(&c.race())
                || !(1..=2).contains(&c.sex())
                || !(1..=16).contains(&c.appearance())
            {
                return Err("original quick-start party contains an invalid identity".into());
            }
        }
        Ok(Self {
            party,
            rng_state: u32::from(seed),
            traits: [[0; 16]; 4],
        })
    }
    pub fn run(&self, root: &Path, window: &mut Window) -> Result<bool, Box<dyn Error>> {
        otopark_room::run_with_party(
            root,
            window,
            self.party.characters.each_ref().map(|c| c.numeric_raw),
            self.rng_state,
            self.traits,
            std::array::from_fn(|i| {
                self.party.original_bytes()[i * 74..(i + 1) * 74]
                    .try_into()
                    .unwrap()
            }),
        )
    }
}
#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn ready_party_preserves_every_original_byte_without_generation_or_preparation() {
        let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
        let original = std::fs::read(root.join("lale/GRPHAZIR.DAT")).unwrap();
        let quick = QuickStart::load(&root, 12345).unwrap();
        assert_eq!(quick.party.original_bytes().as_slice(), original);
        assert_eq!(quick.rng_state, 12345);
        assert_eq!(quick.traits, [[0; 16]; 4]);
        assert_eq!(quick.party.characters[1].name(), b"alper");
    }
}
