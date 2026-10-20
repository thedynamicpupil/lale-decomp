//! Differential commands from controlled original DOS captures; no fixture is a runtime asset.
use lale_assets::pc_map;
use lale_assets::scene_layers;
use lale_assets::scene_layers::{
    far_layer_3cdd, neighborhood, sampled_cell, LayerCommand, ViewState,
};
use std::path::PathBuf;
fn root() -> PathBuf {
    PathBuf::from(env!("CARGO_MANIFEST_DIR")).join("../../..")
}
#[test]
fn original_far_layer_rectangles_all_four_facings() {
    let root = root();
    let archive = std::fs::read(root.join("lale/FRPOS.CKD")).unwrap();
    let bank = lale_assets::Flib::parse(&archive).unwrap();
    let map = pc_map::PcMap::parse(bank.member("PC1").unwrap().payload).unwrap();
    let expected: [&[(u16, [u16; 10])]; 4] = [
        &[(16766, [0, 0, 200, 200, 0, 0, 79, 66, 833, 480])],
        &[
            (16150, [0, 1, 2, 14, 198, 99, 37, 66, 833, 480]),
            (16245, [0, 73, 2, 14, 198, 87, 57, 66, 833, 480]),
            (16766, [0, 99, 200, 101, 0, 99, 79, 66, 833, 480]),
            (17027, [0, 1, 29, 15, 57, 99, 38, 66, 833, 480]),
            (17169, [0, 73, 29, 14, 57, 87, 57, 66, 833, 480]),
            (17027, [0, 1, 29, 15, 86, 99, 38, 66, 833, 480]),
            (17169, [0, 73, 29, 14, 86, 87, 57, 66, 833, 480]),
            (17027, [0, 1, 29, 15, 170, 99, 37, 66, 833, 480]),
            (17169, [0, 73, 29, 14, 170, 87, 57, 66, 833, 480]),
            (17027, [0, 1, 29, 15, 143, 99, 37, 66, 833, 480]),
            (17169, [0, 73, 29, 14, 143, 87, 57, 66, 833, 480]),
            (17027, [0, 1, 29, 15, 114, 99, 38, 66, 833, 480]),
            (17169, [0, 73, 29, 14, 114, 87, 57, 66, 833, 480]),
        ],
        &[
            (15848, [0, 1, 2, 14, 0, 99, 39, 66, 833, 480]),
            (15938, [0, 73, 2, 14, 0, 87, 57, 66, 833, 480]),
            (16150, [0, 1, 2, 14, 198, 99, 39, 66, 833, 480]),
            (16245, [0, 73, 2, 14, 198, 87, 57, 66, 833, 480]),
            (16766, [0, 99, 200, 101, 0, 99, 79, 66, 833, 480]),
            (17027, [0, 1, 29, 15, 0, 99, 37, 66, 833, 480]),
            (17169, [0, 73, 29, 14, 0, 87, 57, 66, 833, 480]),
            (17027, [0, 1, 29, 15, 29, 99, 39, 66, 833, 480]),
            (17169, [0, 73, 29, 14, 29, 87, 57, 66, 833, 480]),
            (17027, [0, 1, 29, 15, 57, 99, 39, 66, 833, 480]),
            (17169, [0, 73, 29, 14, 57, 87, 57, 66, 833, 480]),
            (17027, [0, 1, 29, 15, 86, 99, 39, 66, 833, 480]),
            (17169, [0, 73, 29, 14, 86, 87, 57, 66, 833, 480]),
            (17027, [0, 1, 29, 15, 143, 99, 39, 66, 833, 480]),
            (17169, [0, 73, 29, 14, 143, 87, 57, 66, 833, 480]),
            (17027, [0, 1, 29, 15, 114, 99, 39, 66, 833, 480]),
            (17169, [0, 73, 29, 14, 114, 87, 57, 66, 833, 480]),
        ],
        &[(16766, [0, 99, 200, 101, 0, 99, 79, 66, 833, 480])],
    ];
    for facing in 0..4 {
        let ds = std::fs::read(root.join(format!(
            "analysis/phase-five/turning-20261015/capture/ENTRY{facing}.BIN"
        )))
        .unwrap();
        let commands = far_layer_3cdd(
            &map,
            ViewState {
                x: 2,
                y: 1,
                facing: facing as u8,
            },
            &ds,
            66,
        )
        .unwrap();
        let actual: Vec<_> = commands
            .iter()
            .filter_map(|c| match c {
                LayerCommand::Rect {
                    callee_order,
                    return_offset,
                } => Some((*return_offset, *callee_order)),
                _ => None,
            })
            .collect();
        assert_eq!(actual, expected[facing], "facing {facing}");
    }
}
#[test]
fn neighborhood_signed_bounds_and_wrap() {
    let root = root();
    let archive = std::fs::read(root.join("lale/FRPOS.CKD")).unwrap();
    let bank = lale_assets::Flib::parse(&archive).unwrap();
    let map = pc_map::PcMap::parse(bank.member("PC1").unwrap().payload).unwrap();
    let view = ViewState {
        x: 2,
        y: 1,
        facing: 0,
    };
    assert_eq!(neighborhood(view, 1, 0), (2, 0));
    assert_eq!(neighborhood(view, 1, -1), (1, 0));
    assert!(sampled_cell(&map, view, 2, 0).is_none());
    assert_eq!(sampled_cell(&map, view, 1, 0).unwrap().0, 30);
    assert_eq!(
        neighborhood(
            ViewState {
                x: i16::MAX,
                y: 0,
                facing: 1
            },
            1,
            0
        ),
        (i16::MIN, 0)
    );
    assert_eq!(
        neighborhood(
            ViewState {
                x: 2,
                y: 1,
                facing: 2
            },
            3,
            -2
        ),
        (4, 4)
    );
}

#[test]
fn original_middle_layer_direct_rectangles_and_flag_effects() {
    let root = root();
    let archive = std::fs::read(root.join("lale/FRPOS.CKD")).unwrap();
    let bank = lale_assets::Flib::parse(&archive).unwrap();
    let map = pc_map::PcMap::parse(bank.member("PC1").unwrap().payload).unwrap();
    let expected: [&[(u16, [u16; 10])]; 4] = [
        &[],
        &[
            (19938, [58, 1, 84, 10, 58, 113, 54, 66, 833, 480]),
            (20078, [61, 76, 78, 11, 61, 76, 63, 66, 833, 480]),
        ],
        &[
            (19938, [58, 1, 84, 10, 58, 113, 49, 66, 833, 480]),
            (20078, [61, 76, 78, 11, 61, 76, 61, 66, 833, 480]),
        ],
        &[
            (19938, [58, 1, 84, 10, 58, 113, 52, 66, 833, 480]),
            (20078, [61, 76, 78, 11, 61, 76, 63, 66, 833, 480]),
        ],
    ];
    for facing in 0..4 {
        let ds = std::fs::read(root.join(format!(
            "analysis/phase-five/turning-20261015/capture/ENTRY{facing}.BIN"
        )))
        .unwrap();
        let end = std::fs::read(root.join(format!(
            "analysis/phase-five/turning-20261015/capture/END{facing}.BIN"
        )))
        .unwrap();
        let commands = scene_layers::middle_layer_43c9(
            &map,
            ViewState {
                x: 2,
                y: 1,
                facing: facing as u8,
            },
            &ds,
            66,
        )
        .unwrap();
        let actual: Vec<_> = commands
            .iter()
            .filter_map(|c| match c {
                LayerCommand::Rect {
                    callee_order,
                    return_offset,
                } => Some((*return_offset, *callee_order)),
                _ => None,
            })
            .collect();
        assert_eq!(actual, expected[facing], "facing {facing}");
        let mut flags = u16::from_le_bytes([ds[0x3af9], ds[0x3afa]]);
        for c in commands {
            if let LayerCommand::MaskWord {
                offset,
                and_mask,
                or_mask,
            } = c
            {
                assert_eq!(offset, 0x3af9);
                flags = flags & and_mask | or_mask;
            }
        }
        assert_eq!(
            flags & 3,
            u16::from_le_bytes([end[0x3af9], end[0x3afa]]) & 3,
            "facing {facing} lowbits"
        );
    }
}

#[test]
fn original_current_layer_four_facings_and_native_effects() {
    let root = root();
    let archive = std::fs::read(root.join("lale/FRPOS.CKD")).unwrap();
    let bank = lale_assets::Flib::parse(&archive).unwrap();
    let map = pc_map::PcMap::parse(bank.member("PC1").unwrap().payload).unwrap();
    let expected: [&[(u16, [u16; 10])]; 4] = [
        &[
            (23753, [0, 59, 200, 28, 0, 171, 47, 66, 833, 480]),
            (23892, [0, 0, 200, 29, 0, 0, 61, 66, 833, 480]),
        ],
        &[
            (23753, [0, 59, 200, 28, 0, 171, 52, 66, 833, 480]),
            (23892, [0, 0, 200, 29, 0, 0, 63, 66, 833, 480]),
        ],
        &[
            (23753, [0, 59, 200, 28, 0, 171, 47, 66, 833, 480]),
            (23892, [0, 0, 200, 29, 0, 0, 61, 66, 833, 480]),
        ],
        &[
            (23753, [0, 59, 200, 28, 0, 171, 52, 66, 833, 480]),
            (23892, [0, 0, 200, 29, 0, 0, 63, 66, 833, 480]),
        ],
    ];
    for facing in 0..4 {
        let ds = std::fs::read(root.join(format!(
            "analysis/phase-five/turning-20261015/capture/ENTRY{facing}.BIN"
        )))
        .unwrap();
        let end = std::fs::read(root.join(format!(
            "analysis/phase-five/turning-20261015/capture/END{facing}.BIN"
        )))
        .unwrap();
        let commands = scene_layers::current_layer_58e2(
            &map,
            ViewState {
                x: 2,
                y: 1,
                facing: facing as u8,
            },
            &ds,
            66,
        )
        .unwrap();
        let actual: Vec<_> = commands
            .iter()
            .filter_map(|c| match c {
                LayerCommand::Rect {
                    callee_order,
                    return_offset,
                } => Some((*return_offset, *callee_order)),
                _ => None,
            })
            .collect();
        assert_eq!(actual, expected[facing], "facing {facing}");
        let mut flags = u16::from_le_bytes([ds[0x3af9], ds[0x3afa]]);
        for c in commands {
            match c {
                LayerCommand::MaskWord {
                    offset,
                    and_mask,
                    or_mask,
                } => {
                    assert_eq!(offset, 0x3af9);
                    flags = flags & and_mask | or_mask;
                }
                LayerCommand::SetByte { offset, value } => {
                    assert_eq!(end[usize::from(offset)], value)
                }
                _ => {}
            }
        }
        assert_eq!(
            flags & 0x70,
            u16::from_le_bytes([end[0x3af9], end[0x3afa]]) & 0x70
        );
    }
}
#[test]
fn original_destination_current_rectangles_and_four_crops() {
    let root = root();
    let folder = root.join("analysis/phase-five/navigation-renderer-20261016/capture");
    let archive = std::fs::read(root.join("lale/FRPOS.CKD")).unwrap();
    let bank = lale_assets::Flib::parse(&archive).unwrap();
    let map = pc_map::PcMap::parse(bank.member("PC1").unwrap().payload).unwrap();
    let ds = std::fs::read(folder.join("NV5-DEST-DS.BIN")).unwrap();
    let actual: Vec<_> = scene_layers::current_layer_58e2(
        &map,
        ViewState {
            x: 2,
            y: 0,
            facing: 0,
        },
        &ds,
        66,
    )
    .unwrap()
    .into_iter()
    .filter_map(|c| match c {
        LayerCommand::Rect {
            callee_order,
            return_offset,
        } => Some((return_offset, callee_order.to_vec())),
        LayerCommand::Cropped {
            callee_order,
            return_offset,
        } => Some((return_offset, callee_order.to_vec())),
        _ => None,
    })
    .collect();
    let mut expected = Vec::new();
    for i in 0..11 {
        let raw = std::fs::read(folder.join(format!("NV5-DRAW{i:02}.BIN"))).unwrap();
        let words: Vec<_> = raw
            .chunks_exact(2)
            .map(|b| u16::from_le_bytes([b[0], b[1]]))
            .collect();
        let ret = words[0];
        if !(0x58e2..0x5e7f).contains(&ret) {
            continue;
        }
        let crop = matches!(i, 1 | 2 | 4 | 5);
        let mut args = words[2..if crop { 14 } else { 12 }].to_vec();
        let (src, dst, seg) = if crop { (8, 9, 11) } else { (6, 7, 9) };
        args[src] &= 255;
        args[dst] &= 255;
        args[seg] = if crop { 0x28 } else { 0x1e0 };
        expected.push((ret, args));
    }
    assert_eq!(actual, expected);
}
