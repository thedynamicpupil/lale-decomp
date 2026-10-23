//! Original 1694:8111, copying combat state back to four numeric records.
//!
//! Instruction evidence and original defeat differential:
//! analysis/phase-five/combat-defeat-20261020/run6/.
//! Caller cleanup, outcome routing and save/load are separate responsibilities.

/// Raw original records, in party order. Derived records are 46 bytes and
/// party actor records (slots 25..28) are 40 bytes. Words retain their bit pattern.
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct CombatWriteback {
    pub derived: [[u8; 46]; 4],
    pub actors: [[u8; 40]; 4],
}

impl CombatWriteback {
    /// Copy exactly the eleven original words per person. In particular,
    /// nonpositive HP is retained; inventory and equipment remain in place.
    /// This helper is intentionally not scheduled by the native runtime yet.
    pub fn apply(&self, numeric: &mut [[u8; 92]; 4]) {
        for (p, record) in numeric.iter_mut().enumerate() {
            for (destination, source) in [(0x0c, 0x00), (0x0a, 0x10), (0x16, 0x12)] {
                record[destination..destination + 2]
                    .copy_from_slice(&self.derived[p][source..source + 2]);
            }
            for (destination, source) in [
                (0x2e, 0x16),
                (0x30, 0x18),
                (0x32, 0x1a),
                (0x34, 0x1c),
                (0x36, 0x1e),
                (0x38, 0x02),
                (0x3a, 0x00),
                (0x44, 0x20),
            ] {
                record[destination..destination + 2]
                    .copy_from_slice(&self.actors[p][source..source + 2]);
            }
        }
    }
}
