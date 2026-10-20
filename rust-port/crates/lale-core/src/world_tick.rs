//! Original 1670:39fd (resident stub 0048), shared by world steps and rounds.
//!
//! Evidence: analysis/phase-five/reusable-loops-20261020/. These are raw clock
//! and timer words, not a claim about every effect's meaning. Call scheduling
//! and numeric/actor synchronization belong to the still-incomplete hosts.

#[derive(Clone, Debug, Default, PartialEq, Eq)]
pub struct WorldTickState {
    /// Original DS:3d64/3d66/3d68; signed remainders with radices 60/24/360.
    pub clock: [i16; 3],
    /// Four numeric records, byte offsets 2e..36, five words each.
    pub numeric_timers: [[i16; 5]; 4],
    /// Actors 25..28, byte offsets 16..1e, five words each.
    pub actor_timers: [[i16; 5]; 4],
}

impl WorldTickState {
    pub fn advance(&mut self, amount: i16) {
        self.clock[0] = self.clock[0].wrapping_add(amount);
        self.clock[1] = self.clock[1].wrapping_add(self.clock[0] / 60);
        self.clock[2] = self.clock[2].wrapping_add(self.clock[1] / 24);
        self.clock[0] %= 60;
        self.clock[1] %= 24;
        self.clock[2] %= 360;
        let decrement = amount.wrapping_mul(100);
        for p in 0..4 {
            for q in 0..5 {
                advance_slot(&mut self.numeric_timers[p], q, decrement);
                advance_slot(&mut self.actor_timers[p], q, decrement);
            }
        }
    }
}

fn advance_slot(slots: &mut [i16; 5], q: usize, decrement: i16) {
    // SUB followed by OR/JGE tests the wrapped result's sign (OF is cleared).
    let remaining = slots[q].wrapping_sub(decrement).max(0);
    if remaining == 0 {
        slots.copy_within(q + 1..5, q);
        slots[4] = 0;
        // Original q advances after compression; do not process this slot again.
    } else {
        slots[q] = remaining;
    }
}
