use lale_assets::world_panel::WorldPanel;
use lale_core::combat_party::decode_numeric;
use std::{fs, path::PathBuf};
fn root() -> PathBuf {
    PathBuf::from(env!("CARGO_MANIFEST_DIR")).join("../../..")
}
#[test]
fn idle_world_party_matches_retained_dos_without_changing_state() {
    let root = root();
    let dir = root.join("analysis/phase-five/combat-runtime-20261020/capture");
    let ds = fs::read(dir.join("VICTORY-WORLD-POLL-DS.BIN")).unwrap();
    let raw = std::array::from_fn(|p| {
        ds[0x9a02 + 92 * p..0x9a02 + 92 * (p + 1)]
            .try_into()
            .unwrap()
    });
    let party = decode_numeric(&raw);
    let names = std::array::from_fn(|p| {
        ds[0x9cba + 148 * p..0x9cba + 148 * p + 74]
            .try_into()
            .unwrap()
    });
    let ui = WorldPanel::load(&root, std::array::from_fn(|p| party[p][33] as usize)).unwrap();
    let mut frame = ui.background.indices.clone();
    ui.draw_party(&mut frame, &party, &names).unwrap();
    let expected = fs::read(dir.join("VICTORY-WORLD-VGA.BIN")).unwrap();
    let mut errors = Vec::new();
    // Rows1..3 retain a movement-jolted portrait in this DOS capture. Compare
    // the idle row0 portrait and every nonportrait panel pixel independently.
    for y in 0..152 {
        for x in 197..320 {
            if x < 229 && y >= 38 && y % 38 >= 3 && y % 38 < 34 {
                continue;
            }
            let at = y * 320 + x;
            if frame[at] != expected[at] {
                errors.push((x, y, frame[at], expected[at]));
            }
        }
    }
    assert!(
        errors.is_empty(),
        "{} mismatches: {:?}",
        errors.len(),
        &errors[..errors.len().min(25)]
    );
    assert_eq!(party, decode_numeric(&raw));
    let clock = std::array::from_fn(|i| {
        i16::from_le_bytes(ds[0x3d64 + 2 * i..0x3d66 + 2 * i].try_into().unwrap())
    });
    assert_eq!(ui.clock_text(clock).unwrap(), b"20 aral\x8dk pazar, 07:34");
    ui.draw_clock(&mut frame, clock, ds[0x9665]).unwrap();
    let errors: Vec<_> = (178..184)
        .flat_map(|y| (198..308).map(move |x| (x, y)))
        .filter(|(x, y)| frame[y * 320 + x] != expected[y * 320 + x])
        .collect();
    assert!(
        errors.is_empty(),
        "clock: {} mismatches {:?}",
        errors.len(),
        &errors[..errors.len().min(20)]
    );
}

#[test]
fn unconscious_or_dead_members_keep_all_rows_and_use_original_blend_shading() {
    use lale_assets::Flib;
    let root = root();
    let original = fs::read(root.join("lale/GRPHAZIR.DAT")).unwrap();
    let raw = std::array::from_fn(|p| {
        original[296 + 92 * p..296 + 92 * (p + 1)]
            .try_into()
            .unwrap()
    });
    let mut party = decode_numeric(&raw);
    let names = std::array::from_fn(|p| original[74 * p..74 * (p + 1)].try_into().unwrap());
    let ui = WorldPanel::load(&root, party.map(|n| n[33] as usize)).unwrap();
    let mut alive = ui.background.indices.clone();
    ui.draw_party(&mut alive, &party, &names).unwrap();
    party[0][29] = -1;
    party[1][29] = 0;
    party[2][29] = -6;
    let before = party;
    let mut frame = ui.background.indices.clone();
    ui.draw_party(&mut frame, &party, &names).unwrap();
    assert_eq!(party, before);
    let data = fs::read(root.join("lale/IVIR.CKD")).unwrap();
    let bank = Flib::parse(&data).unwrap();
    let table = bank.member("XD.RIX").unwrap().payload;
    let blend = |a: u8, b: u8| {
        if a == b {
            a
        } else {
            let lo = a.min(b) as usize;
            let hi = a.max(b) as usize;
            table[lo * (509 - lo) / 2 + hi - 1]
        }
    };
    for p in 0..4 {
        for y in p * 38 + 2..p * 38 + 35 {
            for x in 197..316 {
                let at = y * 320 + x;
                if p < 3 && x < 229 && (p * 38 + 3..p * 38 + 34).contains(&y) {
                    let mut expected = alive[at];
                    if p == 2 {
                        expected = blend(expected, 253);
                    }
                    expected = blend(expected, 217);
                    assert_eq!(frame[at], expected);
                } else if !(p < 3 && (242..256).contains(&x) && y >= p * 38 + 28) {
                    assert_eq!(
                        frame[at], alive[at],
                        "unrelated row content changed {p}/{x}/{y}"
                    );
                }
            }
        }
    }
    assert_ne!(
        &frame[3 * 320 + 197..3 * 320 + 229],
        &alive[3 * 320 + 197..3 * 320 + 229]
    );
    // Out-of-range gauges never erase the party panel or overrun its artwork.
    party[0][17] = i16::MAX;
    party[1][21] = i16::MIN;
    ui.draw_party(&mut frame, &party, &names).unwrap();
}
