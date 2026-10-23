use lale_assets::combat_render::{CombatResources, CombatScene, GRID_WORDS};
use std::{fs, path::PathBuf};

fn root() -> PathBuf {
    PathBuf::from(env!("CARGO_MANIFEST_DIR")).join("../../..")
}
fn word(ds: &[u8], at: usize) -> i16 {
    i16::from_le_bytes([ds[at], ds[at + 1]])
}
fn scene_data(ds: &[u8]) -> ([i16; GRID_WORDS], [i16; GRID_WORDS], [[i16; 20]; 29]) {
    (
        std::array::from_fn(|i| word(ds, 0xc8ee + i * 2)),
        std::array::from_fn(|i| word(ds, 0xc2ce + i * 2)),
        std::array::from_fn(|i| std::array::from_fn(|j| word(ds, 0xa08a + i * 40 + j * 2))),
    )
}
#[test]
fn run3_equipped_idle_original_resources_match_dos_field_and_minimap() {
    let root = root();
    let capture = root.join("analysis/phase-five/combat-runtime-20261020/capture");
    let ds = fs::read(capture.join("EQUIP-AFTER-DS.BIN")).unwrap();
    let appearances = std::array::from_fn(|i| word(&ds, 0x9a44 + i * 92) as usize);
    let selectors = std::array::from_fn(|i| word(&ds, 0x9f10 + i * 2) as u8);
    let resources =
        CombatResources::load(&root, appearances, [Some(13), None, None], selectors).unwrap();
    let (terrain, occupancy, actors) = scene_data(&ds);
    let target = if word(&ds, 0xd57c) == 1 {
        Some([word(&ds, 0xd578), word(&ds, 0xd57a)])
    } else {
        None
    };
    let scene = CombatScene {
        terrain: &terrain,
        occupancy: &occupancy,
        actors: &actors,
        camera: [word(&ds, 0xd57e), word(&ds, 0xd580)],
        active_entity: word(&ds, 0xd576),
        selected_entity: word(&ds, 0xd5de),
        target,
    };
    let before = ds.clone();
    let frame = resources.render(&scene).unwrap();
    assert_eq!(
        resources.render(&scene).unwrap().indices,
        frame.indices,
        "repeated redraw is pure"
    );
    assert_eq!(ds, before);
    let dos = fs::read(capture.join("EQUIP-AFTER-IMAGE6.BIN")).unwrap();
    assert_eq!(dos.len(), 64000);
    // Original indexed pixels are only the oracle, never native assets.
    assert_eq!(
        &frame.indices[..164 * 320],
        &dos[..164 * 320],
        "all 52,480 field/pedestal/minimap pixels must match original DOS"
    );
    let map_mismatch = (0..27)
        .flat_map(|a| (0..27).map(move |b| (a + 126) * 320 + b + a + 5))
        .filter(|&i| frame.indices[i] != dos[i])
        .count();
    assert_eq!(
        map_mismatch, 0,
        "source minimap must match all729 original pixels"
    );
}

#[test]
fn invalid_camera_and_unresolved_appearance_fail_explicitly() {
    let resources =
        CombatResources::load(&root(), [1, 2, 3, 4], [Some(13), None, None], [0, 2, 3, 9]).unwrap();
    let grid = [0; GRID_WORDS];
    let actors = [[0; 20]; 29];
    assert!(resources
        .render(&CombatScene {
            terrain: &grid,
            occupancy: &grid,
            actors: &actors,
            camera: [21, 0],
            active_entity: 0,
            selected_entity: 0,
            target: None
        })
        .is_err());
    assert!(
        CombatResources::load(&root(), [13, 2, 3, 4], [None, None, None], [0, 2, 3, 9]).is_err()
    );
}
