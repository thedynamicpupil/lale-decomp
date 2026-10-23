//! Original 1694:568c. Tactical column is world Y; tactical row is world X.
//! Source: original IST 4f2dc..4ff94, new terrain-rea.json. The words preceding
//! terrain are caller-owned occupancy tail, deliberately retained for edge writes.
use crate::{pc_map::PcMap, Error};
use lale_core::rng::LaleRng;

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct Terrain {
    pub words: [i16; 784],
    /// DS:c8b4..c8ec, including original negative-index edge/corner accesses.
    pub preceding: [i16; 29],
    pub origin: [usize; 2],
    /// DS:d554 (world X region), d552 (world Y region).
    pub party_region: [i16; 2],
}
impl Terrain {
    fn get(&self, row: i16, col: i16) -> i16 {
        let i = isize::from(row) * 28 + isize::from(col);
        if i < 0 {
            self.preceding[(i + 29) as usize]
        } else {
            self.words[i as usize]
        }
    }
    fn put(&mut self, row: i16, col: i16, value: i16) {
        let i = isize::from(row) * 28 + isize::from(col);
        if i < 0 {
            self.preceding[(i + 29) as usize] = value;
        } else {
            self.words[i as usize] = value;
        }
    }
    fn block(&mut self, row: i16, col: i16, value: i16) {
        for r in row..row + 9 {
            for c in col..col + 9 {
                self.put(r, c, value);
            }
        }
    }
    /// Transcribe into existing storage: original clears only active 27x27,
    /// preserving padding and the adjacent occupancy words. RNG is explicit.
    pub fn build(
        map: &PcMap<'_>,
        position: [u16; 2],
        graphics: [i16; 4],
        prior: [i16; 784],
        preceding: [i16; 29],
        rng: &mut LaleRng,
    ) -> Result<Self, Error> {
        if map.width() < 3
            || map.height() < 3
            || map
                .cell(position[0] as usize, position[1] as usize)
                .is_none()
        {
            return Err(Error("combat window outside original map".into()));
        }
        let ox = (i16::from(map.width()) - 3)
            .min(position[0] as i16 - 1)
            .max(0) as usize;
        let oy = (i16::from(map.height()) - 3)
            .min(position[1] as i16 - 1)
            .max(0) as usize;
        let mut t = Self {
            words: prior,
            preceding,
            origin: [ox, oy],
            party_region: [
                position[0] as i16 - ox as i16,
                position[1] as i16 - oy as i16,
            ],
        };
        for r in 0..27 {
            for c in 0..27 {
                t.put(r, c, 0);
            }
        }
        let mut fallback = 5;
        for (i, &g) in graphics.iter().enumerate() {
            if g == 3 {
                fallback = i as i16 + 1;
                break;
            }
            if g == 2 {
                fallback = i as i16 + 1;
            }
        }
        // Outer world Y, inner world X. Do not reorder: edge writes and RNG
        // depend on this original order.
        for cy in 0..3i16 {
            for cx in 0..3i16 {
                let cell = map.cell(ox + cx as usize, oy + cy as usize).unwrap();
                let mut selector = [0i16; 4];
                let mut state = [0u8; 4];
                let mut g = [0i16; 4];
                for d in 0..4 {
                    selector[d] = i16::from(cell[d * 2]) - 1;
                    state[d] = cell[d * 2 + 1];
                    // Zero selector can address DS9f0e, outside the copied graphics
                    // table. It is irrelevant only for open state0.
                    g[d] = if (0..4).contains(&selector[d]) {
                        graphics[selector[d] as usize]
                    } else if state[d] == 0 {
                        9
                    } else {
                        return Err(Error(
                            "combat nonzero-state selector outside recovered graphics table".into(),
                        ));
                    };
                }
                let (r, c) = (cx * 9, cy * 9);
                let base = i16::from(cell[9]);
                if t.get(r, c) != 6 {
                    t.block(r, c, base);
                }
                let mut open = [1i16; 4];
                // Direction0 writes the column immediately BEFORE the region;
                // direction1 writes its final row, direction2 its final column,
                // direction3 the row immediately BEFORE it.
                for d in 0..4 {
                    let closed = (state[d] == 1 || state[d] == 3) && g[d] < 9;
                    let special = state[d] == 2 && g[d] == 8;
                    if !closed && !special {
                        continue;
                    }
                    open[d] = 0;
                    if closed && g[d] == 8 {
                        match d {
                            0 if cy == 0 => {
                                for i in 0..9 {
                                    t.put(r + i, -1, 6);
                                }
                            }
                            0 if cy == 1 => t.block(r, 0, 6),
                            1 if cx == 2 => {
                                for i in 0..9 {
                                    t.put(26, c + i, 6);
                                }
                            }
                            1 if cx == 1 => t.block(18, c, 6),
                            2 if cy == 2 => {
                                for i in 0..9 {
                                    t.put(r + i, 26, 6);
                                }
                            }
                            2 if cy == 1 => t.block(r, 18, 6),
                            3 if cx == 0 => {
                                for i in 0..9 {
                                    t.put(-1, c + i, 6);
                                }
                            }
                            3 if cx == 1 => t.block(0, c, 6),
                            _ => {}
                        }
                    } else {
                        let value = if special {
                            fallback + 9
                        } else {
                            selector[d] + 10
                        };
                        for i in 0..9 {
                            match d {
                                0 => t.put(r + i, c - 1, value),
                                1 => t.put(r + 8, c + i, value),
                                2 => t.put(r + i, c + 8, value),
                                _ => t.put(r - 1, c + i, value),
                            }
                        }
                    }
                    if d == 3
                        && (state[0] == 1 || state[0] == 3)
                        && g[0] < 9
                        && t.get(r - 1, c - 1) < 10
                    {
                        t.put(r - 1, c - 1, selector[0] + 10);
                    }
                }
                let mut col = c + 1 - open[0];
                while col <= c + open[2] + 8 {
                    let mut row = r + 1 - open[3];
                    while row <= r + open[1] + 8 {
                        // Draw is unconditional, including cells already set to6.
                        let roll = rng.scaled(101);
                        let mut v = t.get(row, col);
                        if v != 6 {
                            match base {
                                1 | 4 => {
                                    let obstacle = if base == 1 { 6 } else { 8 };
                                    if roll < 70 {
                                        v = base;
                                    } else if roll < 90 {
                                        v = if base == 1 { 7 } else { 9 };
                                    } else {
                                        let coin = rng.scaled(2);
                                        let left = t.get(row, col - 1);
                                        let above = t.get(row - 1, col);
                                        if coin == 0
                                            && left != 0
                                            && above != 0
                                            && left != obstacle
                                            && above != obstacle
                                        {
                                            v = 0;
                                        } else if left != 0 && above != 0 {
                                            v = obstacle;
                                        }
                                    }
                                }
                                2 | 3
                                    if roll < 2
                                        && t.get(row, col - 1) != 0
                                        && t.get(row - 1, col) != 0 =>
                                {
                                    v = 0
                                }
                                _ => {}
                            }
                            t.put(row, col, v);
                        }
                        row += 5;
                    }
                    col += 5;
                }
            }
        }
        Ok(t)
    }
}
