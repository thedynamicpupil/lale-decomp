//! Original opcode9 temporary pool and1689:2b1a mode0 item exchange.
//! Shop prices, selling, equipment changes and combat are separate handlers.
#[derive(Clone, Debug, Default, PartialEq, Eq)]
pub struct Pool {
    pub items: [u16; 10],
    pub resources: [u16; 3],
}
impl Pool {
    /// Opcode9 writes three byte resources and three big-endian item words.
    pub fn prepare(&mut self, arguments: &[u8]) -> Result<(), &'static str> {
        if arguments.len() != 9 {
            return Err("opcode9 requires nine bytes");
        }
        for i in 0..3 {
            self.resources[i] = u16::from(arguments[i]);
            self.items[i] = u16::from_be_bytes([arguments[3 + i * 2], arguments[4 + i * 2]]);
        }
        Ok(())
    }
    /// Mode0 credits resources before its input loop, once per entry.
    pub fn enter(&self, owned: &mut [u16; 3]) {
        for (a, b) in owned.iter_mut().zip(self.resources) {
            *a = a.wrapping_add(b);
        }
    }
    /// One-based slots. Mode0 swaps raw words without RNG or equipment writes.
    pub fn exchange(
        &mut self,
        party: &mut [[u8; 92]; 4],
        person: u8,
        pending: u8,
        inventory: u8,
    ) -> Result<(), &'static str> {
        if !(1..=4).contains(&person)
            || !(1..=10).contains(&pending)
            || !(1..=10).contains(&inventory)
        {
            return Err("invalid original acquisition slot");
        }
        let record = &mut party[usize::from(person - 1)];
        let offset = 0x44 + usize::from(inventory) * 2;
        let old = u16::from_le_bytes([record[offset], record[offset + 1]]);
        record[offset..offset + 2]
            .copy_from_slice(&self.items[usize::from(pending - 1)].to_le_bytes());
        self.items[usize::from(pending - 1)] = old;
        Ok(())
    }
    /// Original return discards everything left in the temporary pool.
    pub fn finish(&mut self) {
        self.items.fill(0);
        self.resources.fill(0);
    }
}
