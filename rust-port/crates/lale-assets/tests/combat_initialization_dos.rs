use lale_assets::{
    combat_initialization::{initialize, EntryContext},
    combat_prepare::EncounterRequest,
    pc_map::PcMap,
    Flib,
};
use lale_core::{combat::CombatState, combat_entry::MusicGates, rng::LaleRng};
use std::{fs, path::Path};
fn word(ds: &[u8], at: usize) -> i16 {
    i16::from_le_bytes(ds[at..at + 2].try_into().unwrap())
}
#[test]
fn source_owned_music_terrain_party_creatures_placement_and_initiative_match_dos() {
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
    let dir = root.join("analysis/phase-five/combat-runtime-20261020/capture");
    let before = fs::read(dir.join("COMBAT-PRE-DS.BIN")).unwrap();
    let after = fs::read(dir.join("INITIATIVE-BEFORE-DS.BIN")).unwrap();
    let initiative = fs::read(dir.join("INITIATIVE-AFTER-DS.BIN")).unwrap();
    let exe = fs::read(root.join("lale/IST.EXE")).unwrap();
    let music_bytes = fs::read(root.join("lale/MUZIK.CKD")).unwrap();
    let music_bank = Flib::parse(&music_bytes).unwrap();
    let map_bytes = fs::read(root.join("lale/FRPOS.CKD")).unwrap();
    let map_bank = Flib::parse(&map_bytes).unwrap();
    let map = PcMap::parse(map_bank.member("PC1").unwrap().payload).unwrap();
    let mut s = CombatState::new(LaleRng {
        state: u32::from_le_bytes(before[0x94c4..0x94c8].try_into().unwrap()),
    });
    s.actors =
        std::array::from_fn(|i| std::array::from_fn(|k| word(&before, 0xa08a + 40 * i + 2 * k)));
    s.classes =
        std::array::from_fn(|i| std::array::from_fn(|k| word(&before, 0x9f1a + 46 * i + 2 * k)));
    s.terrain = std::array::from_fn(|i| word(&before, 0xc8ee + 2 * i));
    s.occupancy = std::array::from_fn(|i| word(&before, 0xc2ce + 2 * i));
    let mut numeric = std::array::from_fn(|p| {
        std::array::from_fn(|k| word(&before, 0x99a6 + 92 * (p + 1) + 2 * k))
    });
    let context = EntryContext {
        position: [word(&before, 0xb9f3) as u16, word(&before, 0xb9f1) as u16],
        facing: 0,
        difficulty: before[0xbb39],
        hand: word(&before, 0xd5b6),
        music: MusicGates {
            audio_enabled: before[0x73d0] != 0,
            combat_music: before[0xbb37] != 0,
        },
        preceding_terrain: std::array::from_fn(|i| word(&before, 0xc8b4 + 2 * i)),
    };
    let request = EncounterRequest {
        prefix: 0,
        groups: std::array::from_fn(|i| {
            [
                word(&before, 0x5be0 + 6 * i) as u8,
                word(&before, 0x5be2 + 6 * i) as u8,
            ]
        }),
    };
    let music = initialize(
        &exe,
        &music_bank,
        &map,
        request,
        &context,
        &mut numeric,
        &mut s,
    )
    .unwrap()
    .unwrap();
    assert_eq!(music.module_id, word(&after, 0xbb4d) as u16);
    assert_eq!((music.member_name.as_str(), music.channels), ("uni.amf", 6));
    assert_eq!(music.balances.len(), 6);
    assert_eq!(
        s.actors,
        std::array::from_fn(|i| std::array::from_fn(|k| word(&after, 0xa08a + 40 * i + 2 * k))),
        "all580 actor words"
    );
    // Actual class records are0..7. The legacy array's ninth row starts at
    // a08a and aliases actor0 plus the start of actor1; it is not another class.
    let expected_classes: [[i16; 23]; 8] =
        std::array::from_fn(|i| std::array::from_fn(|k| word(&after, 0x9f1a + 46 * i + 2 * k)));
    assert_eq!(
        s.classes[..8],
        expected_classes,
        "all184 actual class words"
    );
    assert_eq!(
        s.terrain,
        std::array::from_fn(|i| word(&after, 0xc8ee + 2 * i))
    );
    assert_eq!(
        s.occupancy,
        std::array::from_fn(|i| word(&after, 0xc2ce + 2 * i))
    );
    assert_eq!(
        numeric,
        std::array::from_fn(|p| std::array::from_fn(|k| word(
            &after,
            0x99a6 + 92 * (p + 1) + 2 * k
        )))
    );
    assert_eq!(s.rng.state, 0x20dbb23e);
    s.generate_initiative().unwrap();
    assert_eq!(
        s.rng.state,
        u32::from_le_bytes(initiative[0x94c4..0x94c8].try_into().unwrap())
    );
    for i in 0..28 {
        assert_eq!(s.order[i], word(&initiative, 0xd4c2 + 2 * i) as usize);
        assert_eq!(s.initiative_keys[i], word(&initiative, 0xd4fc + 2 * i));
    }
}
