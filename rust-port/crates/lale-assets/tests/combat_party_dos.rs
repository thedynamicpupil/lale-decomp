use lale_assets::combat_party_tables::CombatPartyTables;
use lale_core::{
    combat::CombatState,
    combat_party::{self, ConversionError, Numeric},
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
fn word(ds: &[u8], at: usize) -> i16 {
    i16::from_le_bytes(ds[at..at + 2].try_into().unwrap())
}
fn records(ds: &[u8]) -> [Numeric; 4] {
    combat_party::decode_numeric(&std::array::from_fn(|p| {
        ds[0x9a02 + 92 * p..0x9a02 + 92 * (p + 1)]
            .try_into()
            .unwrap()
    }))
}
fn state(ds: &[u8]) -> CombatState {
    let mut s = CombatState::new(LaleRng {
        state: u32::from_le_bytes(ds[0x94c4..0x94c8].try_into().unwrap()),
    });
    s.actors = std::array::from_fn(|i| std::array::from_fn(|k| word(ds, 0xa08a + 40 * i + 2 * k)));
    s.classes = std::array::from_fn(|i| std::array::from_fn(|k| word(ds, 0x9f1a + 46 * i + 2 * k)));
    s
}
fn tables() -> CombatPartyTables {
    CombatPartyTables::read(&fs::read(root().join("lale/IST.EXE")).unwrap()).unwrap()
}
#[test]
fn live_party_conversion_matches_all_class_and_actor_words_at_original_entry() {
    let before = capture("COMBAT-PRE");
    let after = capture("INITIATIVE-BEFORE");
    let mut s = state(&before);
    let mut numeric = records(&before);
    let original = s.clone();
    combat_party::initialize(
        &mut numeric,
        &mut s,
        &tables().borrowed(),
        word(&before, 0xd5b6),
    )
    .unwrap();
    assert_eq!(
        s.classes[1..5],
        state(&after).classes[1..5],
        "all92 class words including unassigned ones"
    );
    assert_eq!(
        numeric,
        records(&after),
        "all184 numeric words; only carried accumulator may be assigned"
    );
    let mut expected = state(&after).actors;
    for p in 25..=28 {
        // Captured after placement;6345 has no coordinate writes. Preserve the
        // incoming values rather than copying captured positions as defaults.
        expected[p][4] = original.actors[p][4];
        expected[p][5] = original.actors[p][5];
    }
    assert_eq!(
        s.actors[25..],
        expected[25..],
        "all80 actor words, with placement-owned coordinates separated"
    );
    assert_eq!(s.actors[..25], original.actors[..25]);
    assert_eq!(s.rng, original.rng, "conversion owns no RNG draws");
}
#[test]
fn original_equipment_store_then_refresh_preserves_actor_caches_and_record_ownership() {
    let base = capture("EQUIP-BASE");
    let written = capture("EQUIP-REF-WRITTEN");
    let after = capture("EQUIP-AFTER");
    let mut n = records(&base);
    let mut expected_n = records(&written);
    // RUN3 explicitly conditioned ownership AFTER EQUIP-BASE; it was not earned
    // in this trial. Then original UI made the one equipment-reference store.
    n[0][35] = 2;
    n[0][30] = 35;
    assert_eq!(n, expected_n, "reference write boundary before refresh");
    let mut s = state(&written);
    let before = s.clone();
    combat_party::refresh(
        &mut n[0],
        &s.actors[25],
        &mut s.classes[1],
        &tables().borrowed(),
        word(&written, 0xd5b6),
    )
    .unwrap();
    assert_eq!(
        s.classes,
        state(&after).classes,
        "all nine raw class records"
    );
    expected_n = records(&after);
    assert_eq!(
        n, expected_n,
        "all numeric words match refresh differential"
    );
    assert_eq!(s.actors, before.actors);
    assert_eq!(
        s.actors,
        state(&after).actors,
        "cached H/evasion remain unchanged"
    );
    assert_eq!((s.classes[1][2], s.actors[25][9]), (2, 1));
    assert_eq!((s.classes[1][3], s.actors[25][10]), (8, 9));
    assert_eq!(s.rng, before.rng);
}
#[test]
fn unsupported_original_stack_lookup_is_explicit_and_transactional() {
    let ds = capture("EQUIP-AFTER");
    let mut n = records(&ds);
    let mut s = state(&ds);
    n[0][35] = 43;
    let before = n;
    let original = s.clone();
    assert_eq!(
        combat_party::initialize(&mut n, &mut s, &tables().borrowed(), 0),
        Err(ConversionError::UnsupportedPrimaryStackLookup)
    );
    assert_eq!(n, before);
    assert_eq!(s, original);
}
#[test]
fn source_only_primary_dispatch_uses_initialized_stack_words_without_replacing_unassigned_fields() {
    let ds = capture("EQUIP-AFTER");
    let tables = tables();
    for id in 21..=26 {
        let mut n = records(&ds)[0];
        let s = state(&ds);
        let mut class = s.classes[1];
        n[35] = id;
        class[17..].fill(-1234);
        combat_party::refresh(&mut n, &s.actors[25], &mut class, &tables.borrowed(), 0).unwrap();
        assert_eq!(
            class[16],
            if id == 26 {
                6
            } else {
                tables.primary_dispatch[(id - 21) as usize]
            }
        );
        assert!(class[17..].iter().all(|&w| w == -1234));
    }
}
