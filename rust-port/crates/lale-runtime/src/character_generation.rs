//! Original167c:0437 numeric generation, isolated from UI and file writes.
//! Inputs are caller-owned initialized traits and shared RNG; no seed is invented.
//! Evidence: analysis/phase-five/findings-1509-20261014/generation/.
#![allow(dead_code)]
use crate::character_data::{apply_generation_minimums, LaleRng};

pub const DRAW_RANGES: [u16; 26] = [
    25, 25, 5, 5, 150, 150, 50, 50, 100, 100, 6, 70, 80, 100, 200, 200, 150, 150, 150, 150, 151,
    201, 201, 251, 151, 6,
];
fn word(record: &[u8; 92], offset: usize) -> u16 {
    u16::from_le_bytes([record[offset], record[offset + 1]])
}
fn put(record: &mut [u8; 92], offset: usize, value: u16) {
    record[offset..offset + 2].copy_from_slice(&value.to_le_bytes())
}
/// CWD/IDIV of a wrapped16-bit numerator; every recovered divisor is positive.
fn sdiv(n: u16, d: u16) -> u16 {
    ((i32::from(n as i16)) / i32::from(d)) as u16
}
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct GenerationTrace {
    pub state_before: u32,
    pub state_after: u32,
    pub scaled_draws: [u16; 26],
}

/// The numeric part only: original initializer0000 and display0f4e are excluded.
/// Every arithmetic node wraps to16 bits before its parent operation. Unknown
/// record words are preserved except original final minimum pass words3..16.
pub fn generate_numeric_from_traits(
    record: &mut [u8; 92],
    traits: &[u16; 16],
    rng: &mut LaleRng,
) -> GenerationTrace {
    let state_before = rng.state;
    // No callbacks/random consumers occur between these26 draws in original0437.
    let d = std::array::from_fn(|i| rng.scaled(DRAW_RANGES[i]));
    let sex = word(record, 4);
    // Original physical0x3d0b7, logical167c:04b7.
    let v24 = (((d[0]).wrapping_add(d[1])).wrapping_add((traits[1]).wrapping_mul(10u16)))
        .wrapping_add(150u16);
    put(record, 0x24, v24);
    // Original physical0x3d165, logical167c:0565.
    let v26 = (((((d[2]).wrapping_add(d[3])).wrapping_add(v24))
        .wrapping_add((traits[2]).wrapping_mul(10u16)))
    .wrapping_add(65426u16))
    .wrapping_sub(((sex).wrapping_sub(1u16)).wrapping_mul(10u16));
    put(record, 0x26, v26);
    // Original physical0x3d231, logical167c:0631.
    let v0e = ((((d[4]).wrapping_add(d[5]))
        .wrapping_add(((sex).wrapping_sub(1u16)).wrapping_mul(25u16)))
    .wrapping_sub(sdiv((v24).wrapping_add(v26), 5u16)))
    .wrapping_add((traits[3]).wrapping_mul(10u16));
    put(record, 0x0e, v0e);
    // Original physical0x3d2fc, logical167c:06fc.
    let v10 = ((((d[6]).wrapping_add(d[7])).wrapping_sub((sex).wrapping_mul(25u16)))
        .wrapping_add(sdiv((v24).wrapping_add(v26), 3u16)))
    .wrapping_add((traits[4]).wrapping_mul(10u16));
    put(record, 0x10, v10);
    // Original physical0x3d3b5, logical167c:07b5.
    let v0a = ((((d[8]).wrapping_add(d[9])).wrapping_add(sdiv(v0e, 4u16)))
        .wrapping_sub(sdiv(v10, 4u16)))
    .wrapping_add((traits[5]).wrapping_mul(10u16));
    put(record, 0x0a, v0a);
    // Original physical0x3d46a, logical167c:086a.
    let v0c = ((((d[10]).wrapping_add(sdiv(v10, 40u16))).wrapping_sub(sdiv(v0a, 30u16)))
        .wrapping_add(sdiv(v26, 20u16)))
    .wrapping_add((traits[6]).wrapping_mul(2u16));
    put(record, 0x0c, v0c);
    // Original physical0x3d539, logical167c:0939.
    let v14 = (((((d[11]).wrapping_add(d[12])).wrapping_add(d[13])).wrapping_add(150u16))
        .wrapping_sub((v24).wrapping_add(v26)))
    .wrapping_add((traits[7]).wrapping_mul(10u16));
    put(record, 0x14, v14);
    // Original physical0x3d622, logical167c:0a22.
    let v12 = (((((d[14]).wrapping_add(d[15])).wrapping_sub((v26).wrapping_add(v24)))
        .wrapping_sub(sdiv(v0a, 4u16)))
    .wrapping_add(sdiv(v10, 4u16)))
    .wrapping_add((traits[8]).wrapping_mul(10u16));
    put(record, 0x12, v12);
    // Original physical0x3d6ba, logical167c:0aba.
    let v1a = (((d[16]).wrapping_add(d[17])).wrapping_sub(sdiv(v0e, 2u16)))
        .wrapping_add((traits[9]).wrapping_mul(10u16));
    put(record, 0x1a, v1a);
    // Original physical0x3d76e, logical167c:0b6e.
    let v16 = ((((d[18]).wrapping_add(d[19])).wrapping_sub((sex).wrapping_mul(50u16)))
        .wrapping_sub(sdiv(v1a, 4u16)))
    .wrapping_add((traits[10]).wrapping_mul(10u16));
    put(record, 0x16, v16);
    // Original physical0x3d7e2, logical167c:0be2.
    let v18 =
        ((d[20]).wrapping_add(sdiv(v0e, 4u16))).wrapping_add((traits[11]).wrapping_mul(10u16));
    put(record, 0x18, v18);
    // Original physical0x3d8b9, logical167c:0cb9.
    let v1c = (((((d[21]).wrapping_add(sdiv(v10, 4u16))).wrapping_add(sdiv(v12, 4u16)))
        .wrapping_sub(sdiv(v1a, 4u16)))
    .wrapping_sub(sdiv(v0e, 4u16)))
    .wrapping_add((traits[12]).wrapping_mul(10u16));
    put(record, 0x1c, v1c);
    // Original physical0x3d965, logical167c:0d65.
    let v1e = ((((d[22]).wrapping_add(((sex).wrapping_sub(1u16)).wrapping_mul(50u16)))
        .wrapping_sub((v26).wrapping_mul(2u16)))
    .wrapping_add(sdiv(v24, 4u16)))
    .wrapping_add((traits[13]).wrapping_mul(20u16));
    put(record, 0x1e, v1e);
    // Original physical0x3d9fa, logical167c:0dfa.
    let v20 = (((d[23]).wrapping_sub(sdiv(v1a, 4u16))).wrapping_sub(sdiv(v0e, 4u16)))
        .wrapping_add((traits[14]).wrapping_mul(10u16));
    put(record, 0x20, v20);
    // Original physical0x3da34, logical167c:0e34.
    let v22 = (d[24]).wrapping_add(50u16);
    put(record, 0x22, v22);
    // Original physical0x3da6e, logical167c:0e6e.
    let v28 = (d[25]).wrapping_add(15u16);
    put(record, 0x28, v28);
    // Original physical0x3da9c, logical167c:0e9c.
    let v2c = traits[15];
    put(record, 0x2c, v2c);
    apply_generation_minimums(record);
    GenerationTrace {
        state_before,
        state_after: rng.state,
        scaled_draws: d,
    }
}

#[derive(Clone, Debug)]
pub struct GenerationTables {
    pub race_rows: [[u16; 16]; 8],
    pub race_choices: [[u16; 5]; 8],
}
impl GenerationTables {
    /// Fixed original distribution addresses, not a generic MZ parser. Caller must
    /// use the preserved original IST.EXE. No executable code is run or modified.
    pub fn from_original_ist(bytes: &[u8]) -> Result<Self, String> {
        if bytes.len() != 385328
            || bytes.get(..2) != Some(b"MZ")
            || bytes.get(0x3ccc3..0x3ccc8) != Some(&[0x9a, 0x79, 0x17, 0, 0])
        {
            return Err("unsupported original IST image for generation tables".into());
        }
        let read = |a: usize| u16::from_le_bytes([bytes[a], bytes[a + 1]]);
        Ok(Self {
            race_rows: std::array::from_fn(|r| {
                std::array::from_fn(|i| read(0x19200 + 0x2778 + 32 * (r + 1) + 2 * i))
            }),
            race_choices: std::array::from_fn(|r| {
                std::array::from_fn(|i| read(0x19200 + 0x0fe7 + 10 * (r + 1) + 2 * i))
            }),
        })
    }
}
/// Original167c:0000 numeric working-trait subset. Copies words1..15; word0
/// remains caller-owned, then word15 is replaced by one race-specific draw(5).
/// Text label copies/diagnostics in0000 are outside this pure data boundary.
pub fn initialize_traits(
    previous: &[u16; 16],
    race: u16,
    tables: &GenerationTables,
    rng: &mut LaleRng,
) -> Result<[u16; 16], String> {
    if !(1..=8).contains(&race) {
        return Err("original generation race must be1..8".into());
    }
    let r = usize::from(race - 1);
    let mut traits = *previous;
    traits[1..16].copy_from_slice(&tables.race_rows[r][1..16]);
    traits[15] = tables.race_choices[r][usize::from(rng.scaled(5))];
    Ok(traits)
}

#[cfg(test)]
mod tests {
    use super::*;
    fn unhex(s: &str) -> Vec<u8> {
        assert_eq!(s.len() % 2, 0);
        (0..s.len())
            .step_by(2)
            .map(|i| u8::from_str_radix(&s[i..i + 2], 16).unwrap())
            .collect()
    }
    #[test]
    fn original_instruction_fixtures_match_wrapped_formulas() {
        // Generated by independent concrete register/stack instruction transcription,
        // NOT the formula AST. Includes realistic tables and signed/wrapping extremes.
        let fixtures=std::fs::read_to_string(concat!(env!("CARGO_MANIFEST_DIR"),"/../../../analysis/phase-five/findings-1509-20261014/generation/instruction-fixtures.tsv")).expect("private research fixture required; see docs/DEVELOPMENT.md");
        let mut count = 0;
        for line in fixtures.lines() {
            let f: Vec<_> = line.split('|').collect();
            let mut rng = LaleRng {
                state: f[0].parse().unwrap(),
            };
            let expected_state: u32 = f[1].parse().unwrap();
            let mut record: [u8; 92] = unhex(f[2]).try_into().unwrap();
            let expected = unhex(f[3]);
            let traits_bytes = unhex(f[4]);
            let traits = std::array::from_fn(|i| {
                u16::from_le_bytes([traits_bytes[2 * i], traits_bytes[2 * i + 1]])
            });
            let before = record;
            let trace = generate_numeric_from_traits(&mut record, &traits, &mut rng);
            assert_eq!(record.as_slice(), expected, "fixture{count}");
            assert_eq!(rng.state, expected_state);
            assert_eq!(trace.state_after, expected_state);
            assert_eq!(trace.state_before, f[0].parse::<u32>().unwrap());
            for i in [
                0, 1, 2, 3, 4, 5, 0x2a, 0x2b, 0x2e, 0x2f, 0x42, 0x43, 0x5a, 0x5b,
            ] {
                assert_eq!(record[i], before[i]);
            }
            count += 1;
        }
        assert_eq!(count, 32);
    }
    #[test]
    fn trait_initialization_uses_original_tables_one_draw_and_preserves_word_zero() {
        let root = std::path::Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
        let exe = std::fs::read(root.join("lale/IST.EXE")).unwrap();
        let tables = GenerationTables::from_original_ist(&exe).unwrap();
        for race in 1..=8 {
            let mut rng = LaleRng::seeded(1);
            let t = initialize_traits(&[0xdead; 16], race, &tables, &mut rng).unwrap();
            assert_eq!(t[0], 0xdead);
            for (i, &value) in t.iter().enumerate().take(15).skip(1) {
                let at = 0x19200 + 0x2778 + 32 * usize::from(race) + 2 * i;
                assert_eq!(value, u16::from_le_bytes([exe[at], exe[at + 1]]));
            }
            let at = 0x19200 + 0x0fe7 + 10 * usize::from(race);
            assert_eq!(t[15], u16::from_le_bytes([exe[at], exe[at + 1]]));
            assert_eq!(rng.state, 0x015a4e36);
        }
        let mut rng = LaleRng::seeded(1);
        assert!(initialize_traits(&[0; 16], 0, &tables, &mut rng).is_err());
        assert_eq!(rng.state, 1);
    }
    #[test]
    fn signed_division_wrap_boundary() {
        assert_eq!(sdiv(0xffff, 4), 0);
        assert_eq!(sdiv(0x8000, 4), 0xe000);
        assert_eq!(sdiv(0xfffb, 2), 0xfffe);
        assert_eq!(sdiv(0x7fff, 5), 6553);
    }
}
