use lale_core::combat_writeback::CombatWriteback;
use std::{fs, path::Path};

fn numeric(ds: &[u8]) -> [[u8; 92]; 4] {
    std::array::from_fn(|p| {
        let start = 0x99a6 + 92 * (p + 1);
        ds[start..start + 92].try_into().unwrap()
    })
}

#[test]
fn original_defeat_writeback_matches_all_368_numeric_bytes() {
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
    let captures = root.join("analysis/phase-five/combat-defeat-20261020/run6/capture");
    let before = fs::read(captures.join("G-S014-8111-DS.BIN")).unwrap();
    let after = fs::read(captures.join("G-S015-8268-DS.BIN")).unwrap();
    assert_eq!(before.len(), 65536);
    assert_eq!(after.len(), 65536);
    let transfer = CombatWriteback {
        derived: std::array::from_fn(|p| {
            let start = 0x9f1a + 46 * (p + 1);
            before[start..start + 46].try_into().unwrap()
        }),
        actors: std::array::from_fn(|p| {
            let start = 0xa44a + 40 * (p + 1);
            before[start..start + 40].try_into().unwrap()
        }),
    };
    let mut actual = numeric(&before);
    let hp = |party: &[[u8; 92]; 4]| {
        party.map(|r| i16::from_le_bytes(r[0x3a..0x3c].try_into().unwrap()))
    };
    assert_eq!(hp(&actual), [6, 6, 5, 3]);
    transfer.apply(&mut actual);
    assert_eq!(hp(&actual), [-4, 0, 0, 0]);
    assert_eq!(actual, numeric(&after));
}
