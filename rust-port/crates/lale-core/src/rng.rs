//! Original resident random sequence, shared by creation and world effects.
//! Caller owns the incoming32-bit state and call order; no implicit seeding.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct LaleRng {
    pub state: u32,
}
impl LaleRng {
    pub fn seeded(seed: u16) -> Self {
        Self {
            state: u32::from(seed),
        }
    }
    pub fn next_dos(&mut self) -> u16 {
        self.state = self.state.wrapping_mul(0x015a4e35).wrapping_add(1);
        ((self.state >> 16) & 0x7fff) as u16
    }
    pub fn scaled(&mut self, range: u16) -> u16 {
        ((u32::from(range) * u32::from(self.next_dos())) / 32768) as u16
    }
}
