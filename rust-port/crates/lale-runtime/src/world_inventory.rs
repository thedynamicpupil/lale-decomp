//! Original world information/inventory modal; no world tick/event acknowledgement.
use super::super::sdl_window::Input;
use lale_assets::world_inventory::WorldInventory;
use lale_core::{combat_equipment::Position, combat_party::Numeric, world_inventory};
use std::{error::Error, path::Path};

pub struct Inventory {
    pub assets: WorldInventory,
    pub person: usize,
    pub selected: Option<usize>,
    pub destination: Option<usize>,
    pub hover: Option<usize>,
    pub message: Vec<u8>,
}
impl Inventory {
    pub fn load(root: &Path, party: &[Numeric; 4], person: usize) -> Result<Self, Box<dyn Error>> {
        Ok(Self {
            assets: WorldInventory::load(root, std::array::from_fn(|p| party[p][33] as usize))?,
            person,
            selected: None,
            destination: None,
            hover: None,
            message: Vec::new(),
        })
    }
    pub fn state(&self) -> [usize; 3] {
        [
            self.person,
            self.selected.unwrap_or(0),
            self.destination.map(|v| v + 1).unwrap_or(0),
        ]
    }
    fn region(x: i32, y: i32) -> Option<usize> {
        if (1..=15).contains(&y) && (1..160).contains(&x) && (x - 1) % 16 < 15 {
            return Some(((x - 1) / 16) as usize + 1);
        }
        if (38..=53).contains(&y) {
            for e in 0..3 {
                if (41 + 17 * e..=56 + 17 * e).contains(&x) {
                    return Some(11 + e as usize);
                }
            }
        }
        None
    }
    fn equip(&mut self, party: &mut [Numeric; 4], dest: usize) {
        if let Some(slot) = self.selected {
            let pos = [Position::Primary, Position::Secondary, Position::Clothing][dest];
            let result = world_inventory::equip(
                &mut party[self.person],
                &self.assets.tables.borrowed(),
                slot,
                pos,
            );
            self.message = if result.is_ok() {
                Vec::new()
            } else {
                b"bu islem desteklenmiyor".to_vec()
            };
            self.selected = None;
            self.destination = None;
            self.hover = None;
        }
    }
    fn person(&mut self, party: &mut [Numeric; 4], target: usize) {
        if let Some(slot) = self.selected {
            let result = world_inventory::transfer(party, self.person, target, slot);
            self.message = match result {
                Ok(_) => Vec::new(),
                Err(world_inventory::Error::Equipped) => b"e\x9fya kullan\x8dmda!".to_vec(),
                Err(world_inventory::Error::Full) => b"bo\x9f yer yok!".to_vec(),
                Err(_) => Vec::new(),
            };
            self.selected = None;
            self.destination = None;
        } else {
            self.person = target;
            self.message.clear();
        }
        self.hover = None;
    }
    /// True means the overview closes. Item/destination Esc returns to overview.
    pub fn input(&mut self, event: &Input, party: &mut [Numeric; 4]) -> bool {
        match *event {
            Input::Key(27) | Input::RightClick(_, _) => {
                if self.selected.is_some() {
                    self.selected = None;
                    self.destination = None;
                    self.message.clear();
                } else {
                    return true;
                }
            }
            Input::Key(key @ 1073741882..=1073741885) => {
                self.person(party, (key - 1073741882) as usize)
            }
            Input::Key(105) => {
                self.selected = (1..=10).rev().find(|&s| party[self.person][34 + s] != 0);
                self.destination = None;
                self.hover = None;
                self.message.clear();
            }
            Input::Key(k @ (1073741904 | 1073741903)) => {
                let delta = if k == 1073741903 { 1 } else { -1 };
                if let Some(d) = self.destination {
                    self.destination = Some((d as i32 + delta).rem_euclid(3) as usize);
                } else if let Some(s) = self.selected {
                    self.selected = Some((s as i32 - 1 + delta).rem_euclid(10) as usize + 1);
                    self.hover = None;
                }
            }
            Input::Key(13) => {
                if let Some(d) = self.destination {
                    self.equip(party, d);
                } else if self.selected.is_some() {
                    self.destination = Some(0);
                }
            }
            Input::Key(k @ (113 | 119 | 101)) if self.selected.is_none() => {
                world_inventory::release(
                    &mut party[self.person],
                    match k {
                        113 => Position::Primary,
                        119 => Position::Secondary,
                        _ => Position::Clothing,
                    },
                );
                self.message.clear();
            }
            Input::Motion(x, y) => {
                self.hover = Self::region(x, y);
            }
            Input::Click(x, y) => {
                if (138..=152).contains(&x) && (87..=102).contains(&y) {
                    return true;
                }
                for p in 0..4 {
                    if (156 + 35 * p..=188 + 35 * p).contains(&x) && (20..=52).contains(&y) {
                        self.person(party, p as usize);
                        return false;
                    }
                }
                match Self::region(x, y) {
                    Some(s @ 1..=10) => {
                        if party[self.person][34 + s] != 0 {
                            self.selected = Some(s);
                            self.destination = None;
                            self.hover = Some(s);
                            self.message.clear();
                        }
                    }
                    Some(e @ 11..=13) => {
                        if self.selected.is_some() {
                            self.equip(party, e - 11);
                        } else {
                            world_inventory::release(
                                &mut party[self.person],
                                [Position::Primary, Position::Secondary, Position::Clothing]
                                    [e - 11],
                            );
                            self.hover = None;
                        }
                    }
                    _ => {}
                }
            }
            _ => {} // Unsupported drop/use/vecize never changes records/time/RNG.
        }
        false
    }
}
