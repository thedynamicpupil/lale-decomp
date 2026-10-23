use lale_assets::{
    combat_prepare::{place_actors, EncounterRequest},
    combat_terrain::Terrain,
    pc_map::PcMap,
    Flib,
};
use lale_core::{
    combat::CombatState,
    combat_entry::{channel_balances, choose_music, MusicGates},
    rng::LaleRng,
};
use std::{fs, path::Path};
fn word(ds: &[u8], at: usize) -> i16 {
    i16::from_le_bytes(ds[at..at + 2].try_into().unwrap())
}
#[test]
fn original_encounter_terrain_matches_all_active_and_padding_words() {
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
    let cap = root.join("analysis/phase-five/combat-runtime-20261020/capture");
    let before = fs::read(cap.join("COMBAT-PRE-DS.BIN")).unwrap();
    let after = fs::read(cap.join("INITIATIVE-BEFORE-DS.BIN")).unwrap();
    let bank = fs::read(root.join("lale/FRPOS.CKD")).unwrap();
    let bank = Flib::parse(&bank).unwrap();
    let map = PcMap::parse(bank.member("PC1").unwrap().payload).unwrap();
    let mut rng = LaleRng {
        state: u32::from_le_bytes(before[0x94c4..0x94c8].try_into().unwrap()),
    };
    let id = choose_music(
        MusicGates {
            audio_enabled: before[0x73d0] != 0,
            combat_music: before[0xbb37] != 0,
        },
        &mut rng,
    )
    .unwrap();
    let exe = fs::read(root.join("lale/IST.EXE")).unwrap();
    let at = 0x19200 + 0x2c91 + 13 * usize::from(id);
    let name = std::str::from_utf8(exe[at..at + 13].split(|&b| b == 0).next().unwrap()).unwrap();
    let music = fs::read(root.join("lale/MUZIK.CKD")).unwrap();
    let music = Flib::parse(&music).unwrap();
    let amf = lale_assets::amf::Amf14::parse(music.member(name).unwrap().payload).unwrap();
    let commands = channel_balances(amf.channels, &mut rng);
    assert_eq!(commands.len(), 6);
    // Source music choice plus per-channel commands own the former ten-draw gap.
    let terrain = Terrain::build(
        &map,
        [2, 0],
        std::array::from_fn(|i| word(&before, 0x9f10 + 2 * i)),
        std::array::from_fn(|i| word(&before, 0xc8ee + 2 * i)),
        std::array::from_fn(|i| word(&before, 0xc8b4 + 2 * i)),
        &mut rng,
    )
    .unwrap();
    let expected: [i16; 784] = std::array::from_fn(|i| word(&after, 0xc8ee + 2 * i));
    let differences: Vec<_> = terrain
        .words
        .iter()
        .zip(expected)
        .enumerate()
        .filter(|(_, (a, b))| **a != *b)
        .map(|(i, (a, b))| (i / 28, i % 28, *a, b))
        .collect();
    assert!(
        differences.is_empty(),
        "{} differing words: {:?}",
        differences.len(),
        &differences[..differences.len().min(40)]
    );
    assert_eq!(
        terrain.party_region,
        [word(&after, 0xd554), word(&after, 0xd552)]
    );
    // Party derivation is an explicit earlier boundary: replay placement from
    // captured raw records, not fixed native character defaults.
    let mut state = CombatState::new(rng);
    state.actors =
        std::array::from_fn(|i| std::array::from_fn(|k| word(&after, 0xa08a + 40 * i + 2 * k)));
    state.terrain = terrain.words;
    place_actors(&map, [2, 0], 0, terrain.party_region, &mut state).unwrap();
    assert_eq!(
        state.actors,
        std::array::from_fn(|i| std::array::from_fn(|k| word(&after, 0xa08a + 40 * i + 2 * k)))
    );
    assert_eq!(
        state.occupancy,
        std::array::from_fn(|i| word(&after, 0xc2ce + 2 * i))
    );
    assert_eq!(
        state.rng.state,
        u32::from_le_bytes(after[0x94c4..0x94c8].try_into().unwrap())
    );
}

#[test]
fn original_creature_template_constructor_and_request_match_retained_dos_words() {
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
    let cap = root.join("analysis/phase-five/combat-runtime-20261020/capture");
    let before = fs::read(cap.join("COMBAT-PRE-DS.BIN")).unwrap();
    let after = fs::read(cap.join("INITIATIVE-BEFORE-DS.BIN")).unwrap();
    let request = EncounterRequest::parse(&[0, 13, 1, 0, 0, 0, 0]).unwrap();
    let mut state = CombatState::new(LaleRng::seeded(0));
    state.classes =
        std::array::from_fn(|i| std::array::from_fn(|k| word(&before, 0x9f1a + 46 * i + 2 * k)));
    request
        .initialize_creatures(
            &fs::read(root.join("lale/IST.EXE")).unwrap(),
            before[0xbb39],
            &mut state,
        )
        .unwrap();
    assert_eq!(
        state.classes[5],
        std::array::from_fn(|k| word(&after, 0x9f1a + 46 * 5 + 2 * k))
    );
    for k in [0, 1, 3, 7, 9, 10, 11, 12, 13, 14, 15, 16] {
        assert_eq!(
            state.actors[1][k],
            word(&after, 0xa08a + 40 + 2 * k),
            "actor word{k}"
        );
    }
    assert!(EncounterRequest::parse(&[0, 13, 9, 0, 0, 0, 0]).is_err());
    assert!(EncounterRequest::parse(&[0, 13, 1]).is_err());
}
