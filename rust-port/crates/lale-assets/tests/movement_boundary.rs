use lale_assets::{pc_map::PcMap, Flib};
use lale_core::movement::{classify_branch, MovementBranch};
use std::path::Path;

#[test]
fn starting_cell_requires_the_original_north_door_transition() {
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
    let bytes = std::fs::read(root.join("lale/FRPOS.CKD")).unwrap();
    let archive = Flib::parse(&bytes).unwrap();
    let map = PcMap::parse(archive.member("PC1").unwrap().payload).unwrap();
    assert_eq!(
        map.movement_branch(2, 1, 0, None),
        Some(MovementBranch::Door)
    );
    for direction in 1..4 {
        assert_eq!(
            map.movement_branch(2, 1, direction, None),
            Some(MovementBranch::Blocked)
        );
    }
    assert_eq!(
        map.movement_branch(1, 0, 1, None),
        Some(MovementBranch::Open)
    );
    assert_eq!(
        map.movement_branch(1, 0, 1, Some(0)),
        Some(MovementBranch::Open)
    );
    assert_eq!(map.movement_branch(2, 1, 4, Some(0)), None);
    assert_eq!(map.movement_branch(10, 1, 0, Some(0)), None);
    // PC1(4,0) east selects metadata value9 with state1: special, not wall.
    assert_eq!(
        map.movement_branch(4, 0, 1, None),
        Some(MovementBranch::SpecialForward)
    );
}

#[test]
fn unknown_selector_table_entries_are_never_guessed() {
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
    let bytes = std::fs::read(root.join("lale/FRPOS.CKD")).unwrap();
    let archive = Flib::parse(&bytes).unwrap();
    let mut raw = archive.member("PC1").unwrap().payload.to_vec();
    raw[43] = 5; // Outside the four loader-populated selector words.
    let map = PcMap::parse(&raw).unwrap();
    assert_eq!(map.movement_branch(0, 0, 0, Some(0)), None);
    assert_eq!(classify_branch(9, 0), MovementBranch::Open);
    assert_eq!(classify_branch(9, 255), MovementBranch::SpecialForward);
    assert_eq!(classify_branch(8, 2), MovementBranch::Door);
    assert_eq!(classify_branch(2, 3), MovementBranch::Animated);
}

#[test]
fn source_slices_and_critical_branches_match_original_executable() {
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
    let exe = std::fs::read(root.join("lale/IST.EXE")).unwrap();
    let ordinary = std::fs::read(
        root.join("analysis/phase-five/area-fields-20261015/area/movement-pairs.bin"),
    )
    .unwrap();
    assert_eq!(&exe[0x31f10..0x31f10 + ordinary.len()], ordinary);
    // mode3 then mode1, followed by AL=1 success; failure clears b9c8.
    assert_eq!(
        &exe[0x32123..0x3212d],
        &[0x6a, 3, 0xff, 0x76, 0xfe, 0x9a, 0x20, 0, 0x30, 1]
    );
    assert_eq!(&exe[0x32140..0x32142], &[0x6a, 1]);
    assert_eq!(&exe[0x321b2..0x321b4], &[0xb0, 1]);
    assert_eq!(
        &exe[0x3261a..0x32623],
        &[0x26, 0xc7, 6, 0xc8, 0xb9, 0, 0, 0xb0, 0]
    );
    let door = std::fs::read(root.join("analysis/phase-five/navigation-20261015/door-helper.bin"))
        .unwrap();
    assert_eq!(&exe[0x2fdbc..0x30500], door);
    // Door helper conditionally commits using live facing vectors, not requested
    // deltas; no ordinary-step implementation may substitute for this consumer.
    assert_eq!(
        &exe[0x304e1..0x304ea],
        &[0xa0, 6, 0x3b, 0xb4, 0, 0x0b, 0xc0, 0x75, 0x14]
    );
}
