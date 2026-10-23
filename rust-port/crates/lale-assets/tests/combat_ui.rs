use lale_assets::{
    combat_render::{CombatResources, CombatScene},
    combat_ui::{CombatUi, PanelState},
};
use lale_core::{
    combat::CombatState,
    combat_equipment::{self, Position},
    combat_party,
    rng::LaleRng,
};
use std::{fs, path::PathBuf};
fn root() -> PathBuf {
    PathBuf::from(env!("CARGO_MANIFEST_DIR")).join("../../..")
}
fn capture(name: &str) -> Vec<u8> {
    fs::read(
        root()
            .join("analysis/phase-five/combat-runtime-20261020/capture")
            .join(format!("{name}-DS.BIN")),
    )
    .unwrap()
}
fn state(ds: &[u8]) -> CombatState {
    let w = |at| i16::from_le_bytes([ds[at], ds[at + 1]]);
    let mut s = CombatState::new(LaleRng {
        state: u32::from_le_bytes(ds[0x94c4..0x94c8].try_into().unwrap()),
    });
    s.actors = std::array::from_fn(|i| std::array::from_fn(|k| w(0xa08a + 40 * i + 2 * k)));
    s.classes = std::array::from_fn(|i| std::array::from_fn(|k| w(0x9f1a + 46 * i + 2 * k)));
    s.terrain = std::array::from_fn(|i| w(0xc8ee + 2 * i));
    s.occupancy = std::array::from_fn(|i| w(0xc2ce + 2 * i));
    s.current = w(0xd5de) as usize;
    s.remaining = w(0xd54c);
    s
}
fn records(ds: &[u8]) -> [[i16; 46]; 4] {
    combat_party::decode_numeric(&std::array::from_fn(|i| {
        ds[0x9a02 + 92 * i..0x9a02 + 92 * (i + 1)]
            .try_into()
            .unwrap()
    }))
}
#[test]
fn equipment_operation_matches_dos_and_drives_actual_attack() {
    let base = capture("EQUIP-BASE");
    let after = capture("EQUIP-AFTER");
    let mut s = state(&base);
    let before = s.clone();
    let mut n = records(&base);
    n[0][35] = 2; // retained DOS conditioning
    let tables = lale_assets::combat_party_tables::CombatPartyTables::read(
        &fs::read(root().join("lale/IST.EXE")).unwrap(),
    )
    .unwrap();
    combat_equipment::equip(
        &mut n[0],
        &s.actors[25],
        &mut s.classes[1],
        &tables.borrowed(),
        1,
        Position::Primary,
    )
    .unwrap();
    assert_eq!(n, records(&after));
    assert_eq!(s.classes, state(&after).classes);
    assert_eq!(s.actors, before.actors);
    assert_eq!(s.rng, before.rng);
    assert_eq!(s.remaining, before.remaining);
    let b = capture("P02-BEFORE");
    let mut attack = state(&b);
    attack.classes[1] = s.classes[1];
    let out = attack.attack(25, 1, Default::default()).unwrap().unwrap();
    let expected = state(&capture("P02-AFTER"));
    assert_eq!(attack.actors, expected.actors);
    assert_eq!(attack.remaining, expected.remaining);
    assert_eq!(out.damage, 0);
    combat_equipment::unequip(
        &mut n[0],
        &s.actors[25],
        &mut s.classes[1],
        &tables.borrowed(),
        Position::Primary,
    )
    .unwrap();
    assert_eq!(n[0][35], 2);
    assert_eq!(n[0][30], 0);
    assert_eq!(s.classes[1][6], 0);
}
#[test]
fn original_panel_pixel_comparison() {
    let root = root();
    let ds = capture("EQUIP-AFTER");
    let s = state(&ds);
    let n = records(&ds);
    let w = |at| i16::from_le_bytes([ds[at], ds[at + 1]]);
    let apps = std::array::from_fn(|i| n[i][33] as usize);
    let resources = CombatResources::load(
        &root,
        apps,
        [Some(13), None, None],
        std::array::from_fn(|i| w(0x9f10 + 2 * i) as u8),
    )
    .unwrap();
    let mut frame = resources
        .render(&CombatScene {
            terrain: &s.terrain,
            occupancy: &s.occupancy,
            actors: &s.actors,
            camera: [w(0xd57e), w(0xd580)],
            active_entity: w(0xd576),
            selected_entity: s.current as i16,
            target: None,
        })
        .unwrap()
        .indices;
    let names = std::array::from_fn(|i| {
        let mut t = [0; 74];
        t[..37].copy_from_slice(&ds[0x9cba + 148 * i..0x9cba + 148 * i + 37]);
        t
    });
    CombatUi::load(&root, apps)
        .unwrap()
        .render(
            &mut frame,
            &PanelState {
                party: &n,
                actors: &s.actors,
                classes: &s.classes,
                actor: s.current,
                remaining: s.remaining,
                names: Some(&names),
                selected: None,
            },
        )
        .unwrap();
    let dos = fs::read(
        root.join("analysis/phase-five/combat-runtime-20261020/capture/EQUIP-AFTER-IMAGE6.BIN"),
    )
    .unwrap();
    let mismatches: Vec<_> = (0..64000).filter(|&i| frame[i] != dos[i]).collect();
    fs::write("/tmp/lale-panel-native.bin", &frame).unwrap();
    let mut counts = std::collections::BTreeMap::new();
    for i in &mismatches {
        *counts.entry(i / 320).or_insert(0) += 1;
    }
    assert!(
        mismatches.is_empty(),
        "{} panel differences, rows {:?}; first {:?}",
        mismatches.len(),
        counts,
        &mismatches[..mismatches.len().min(25)]
    );
}

#[test]
fn generic_slot_refs_raw_quality_clothing_and_rejections_are_transactional() {
    use combat_equipment::EquipmentError;
    let tables = lale_assets::combat_party_tables::CombatPartyTables::read(
        &fs::read(root().join("lale/IST.EXE")).unwrap(),
    )
    .unwrap();
    let ds = capture("EQUIP-BASE");
    let mut s = state(&ds);
    let mut n = records(&ds)[0];
    n[41] = 202; // Slot7: original raw quality2 + identity2, neither flattened.
    combat_equipment::equip(
        &mut n,
        &s.actors[25],
        &mut s.classes[1],
        &tables.borrowed(),
        7,
        Position::Primary,
    )
    .unwrap();
    assert_eq!(n[30], 41);
    assert_eq!(n[41], 202);
    assert_eq!(s.classes[1][6], 2);
    let (before, derived) = (n, s.classes[1]);
    assert_eq!(
        combat_equipment::equip(
            &mut n,
            &s.actors[25],
            &mut s.classes[1],
            &tables.borrowed(),
            7,
            Position::Primary
        ),
        Err(EquipmentError::AlreadyEquipped)
    );
    assert_eq!((n, s.classes[1]), (before, derived));
    n[35] = 1;
    n[31] = 41; // Original table row1 is a two-handed weapon.
    let before = n;
    assert_eq!(
        combat_equipment::equip(
            &mut n,
            &s.actors[25],
            &mut s.classes[1],
            &tables.borrowed(),
            1,
            Position::Primary
        ),
        Err(EquipmentError::HandsOccupied)
    );
    assert_eq!(n, before);
    n[31] = 0;
    n[42] = 27;
    combat_equipment::equip(
        &mut n,
        &s.actors[25],
        &mut s.classes[1],
        &tables.borrowed(),
        8,
        Position::Clothing,
    )
    .unwrap();
    assert_eq!(n[32], 42);
    assert_eq!(n[42], 27);
    combat_equipment::unequip(
        &mut n,
        &s.actors[25],
        &mut s.classes[1],
        &tables.borrowed(),
        Position::Clothing,
    )
    .unwrap();
    assert_eq!(n[32], 0);
    assert_eq!(n[42], 27);
}
