//! Whole native compositor differential against retained original DOS draws.
use lale_assets::{
    pc_map,
    scene_commands::{commands_200, SceneDraw},
    scene_context::SceneContext,
    scene_layers::ViewState,
};
use std::{fs, path::Path};
#[test]
fn all_117_original_rectangular_and_scaled_calls_in_order() {
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
    let raw = fs::read(root.join("lale/FRPOS.CKD")).unwrap();
    let bank = lale_assets::Flib::parse(&raw).unwrap();
    let map = pc_map::PcMap::parse(bank.member("PC1").unwrap().payload).unwrap();
    let expected: [&[SceneDraw]; 4] = [
        &[
            SceneDraw::Rect([0, 0, 200, 200, 0, 0, 79, 66, 833]),
            SceneDraw::Scaled([146, 0, 86, 144, 0, 76, 29, 47, 25, 66, 0]),
            SceneDraw::Scaled([90, 0, 144, 144, 29, 76, 47, 47, 25, 66, 0]),
            SceneDraw::Scaled([90, 0, 86, 144, 170, 76, 30, 47, 25, 66, 0]),
            SceneDraw::Scaled([90, 0, 144, 144, 124, 76, 47, 47, 25, 66, 0]),
            SceneDraw::Rect([28, 11, 144, 48, 28, 123, 49, 66, 833]),
            SceneDraw::Rect([28, 29, 144, 48, 28, 29, 61, 66, 833]),
            SceneDraw::Scaled([90, 0, 144, 144, 76, 76, 48, 47, 25, 66, 0]),
            SceneDraw::Rect([28, 30, 48, 144, 124, 30, 25, 66, 964]),
            SceneDraw::Rect([0, 59, 200, 28, 0, 171, 47, 66, 833]),
            SceneDraw::Rect([0, 0, 200, 29, 0, 0, 61, 66, 833]),
            SceneDraw::Rect([90, 0, 144, 144, 29, 29, 30, 66, 833]),
            SceneDraw::Rect([0, 0, 29, 200, 171, 0, 25, 66, 964]),
            SceneDraw::Rect([0, 0, 29, 200, 0, 0, 25, 66, 833]),
        ],
        &[
            SceneDraw::Rect([0, 1, 2, 14, 198, 99, 37, 66, 833]),
            SceneDraw::Rect([0, 73, 2, 14, 198, 87, 57, 66, 833]),
            SceneDraw::Rect([0, 99, 200, 101, 0, 99, 79, 66, 833]),
            SceneDraw::Rect([0, 1, 29, 15, 57, 99, 38, 66, 833]),
            SceneDraw::Rect([0, 73, 29, 14, 57, 87, 57, 66, 833]),
            SceneDraw::Rect([147, 161, 14, 31, 57, 82, 25, 66, 833]),
            SceneDraw::Rect([0, 1, 29, 15, 86, 99, 38, 66, 833]),
            SceneDraw::Rect([0, 73, 29, 14, 86, 87, 57, 66, 833]),
            SceneDraw::Rect([0, 1, 29, 15, 170, 99, 37, 66, 833]),
            SceneDraw::Rect([0, 73, 29, 14, 170, 87, 57, 66, 833]),
            SceneDraw::Rect([0, 1, 29, 15, 143, 99, 37, 66, 833]),
            SceneDraw::Rect([0, 73, 29, 14, 143, 87, 57, 66, 833]),
            SceneDraw::Rect([0, 1, 29, 15, 114, 99, 38, 66, 833]),
            SceneDraw::Rect([0, 73, 29, 14, 114, 87, 57, 66, 833]),
            SceneDraw::Rect([147, 161, 14, 31, 129, 82, 30, 66, 964]),
            SceneDraw::Rect([120, 154, 28, 48, 29, 75, 25, 66, 833]),
            SceneDraw::Scaled([90, 0, 144, 144, 57, 86, 29, 29, 27, 66, 0]),
            SceneDraw::Scaled([90, 0, 144, 144, 170, 86, 29, 29, 25, 66, 0]),
            SceneDraw::Scaled([90, 0, 144, 144, 143, 86, 29, 29, 25, 66, 0]),
            SceneDraw::Scaled([90, 0, 144, 144, 114, 86, 30, 29, 25, 66, 0]),
            SceneDraw::Rect([58, 1, 84, 10, 58, 113, 54, 66, 833]),
            SceneDraw::Rect([61, 76, 78, 11, 61, 76, 63, 66, 833]),
            SceneDraw::Scaled([90, 0, 144, 144, 86, 86, 29, 29, 25, 66, 0]),
            SceneDraw::Rect([76, 76, 11, 47, 114, 76, 30, 66, 964]),
            SceneDraw::Scaled([90, 0, 86, 144, 170, 76, 30, 47, 25, 66, 0]),
            SceneDraw::Scaled([90, 0, 144, 144, 124, 76, 47, 47, 25, 66, 0]),
            SceneDraw::Rect([28, 11, 144, 48, 28, 123, 54, 66, 833]),
            SceneDraw::Rect([28, 29, 144, 48, 28, 29, 63, 66, 833]),
            SceneDraw::Rect([90, 144, 29, 70, 0, 65, 25, 66, 833]),
            SceneDraw::Rect([28, 30, 48, 144, 124, 30, 25, 66, 964]),
            SceneDraw::Rect([204, 0, 29, 144, 0, 29, 25, 66, 833]),
            SceneDraw::Rect([90, 0, 29, 144, 171, 29, 25, 66, 833]),
            SceneDraw::Rect([0, 59, 200, 28, 0, 171, 52, 66, 833]),
            SceneDraw::Rect([0, 0, 200, 29, 0, 0, 63, 66, 833]),
            SceneDraw::Rect([90, 0, 144, 144, 29, 29, 25, 66, 833]),
            SceneDraw::Rect([0, 0, 29, 200, 171, 0, 25, 66, 964]),
            SceneDraw::Rect([0, 0, 29, 200, 0, 0, 30, 66, 833]),
        ],
        &[
            SceneDraw::Rect([0, 1, 2, 14, 0, 99, 39, 66, 833]),
            SceneDraw::Rect([0, 73, 2, 14, 0, 87, 57, 66, 833]),
            SceneDraw::Rect([0, 1, 2, 14, 198, 99, 39, 66, 833]),
            SceneDraw::Rect([0, 73, 2, 14, 198, 87, 57, 66, 833]),
            SceneDraw::Rect([0, 99, 200, 101, 0, 99, 79, 66, 833]),
            SceneDraw::Rect([0, 1, 29, 15, 0, 99, 37, 66, 833]),
            SceneDraw::Rect([0, 73, 29, 14, 0, 87, 57, 66, 833]),
            SceneDraw::Rect([0, 1, 29, 15, 29, 99, 39, 66, 833]),
            SceneDraw::Rect([0, 73, 29, 14, 29, 87, 57, 66, 833]),
            SceneDraw::Rect([205, 152, 14, 29, 29, 86, 25, 66, 833]),
            SceneDraw::Rect([0, 1, 29, 15, 57, 99, 39, 66, 833]),
            SceneDraw::Rect([0, 73, 29, 14, 57, 87, 57, 66, 833]),
            SceneDraw::Rect([0, 1, 29, 15, 86, 99, 39, 66, 833]),
            SceneDraw::Rect([0, 73, 29, 14, 86, 87, 57, 66, 833]),
            SceneDraw::Rect([0, 1, 29, 15, 143, 99, 39, 66, 833]),
            SceneDraw::Rect([0, 73, 29, 14, 143, 87, 57, 66, 833]),
            SceneDraw::Rect([205, 152, 14, 29, 158, 86, 25, 66, 964]),
            SceneDraw::Rect([0, 1, 29, 15, 114, 99, 39, 66, 833]),
            SceneDraw::Rect([0, 73, 29, 14, 114, 87, 57, 66, 833]),
            SceneDraw::Rect([174, 146, 30, 39, 0, 79, 25, 66, 833]),
            SceneDraw::Rect([120, 154, 28, 48, 29, 75, 25, 66, 833]),
            SceneDraw::Scaled([90, 0, 144, 144, 57, 86, 29, 29, 30, 66, 1]),
            SceneDraw::Rect([174, 146, 30, 39, 170, 79, 25, 66, 964]),
            SceneDraw::Scaled([90, 0, 144, 144, 143, 86, 29, 29, 25, 66, 0]),
            SceneDraw::Rect([120, 154, 28, 48, 142, 75, 30, 66, 964]),
            SceneDraw::Scaled([90, 0, 144, 144, 114, 86, 30, 29, 30, 66, 1]),
            SceneDraw::Rect([58, 1, 84, 10, 58, 113, 49, 66, 833]),
            SceneDraw::Rect([61, 76, 78, 11, 61, 76, 61, 66, 833]),
            SceneDraw::Rect([76, 76, 11, 47, 76, 76, 25, 66, 833]),
            SceneDraw::Rect([76, 76, 11, 47, 114, 76, 25, 66, 964]),
            SceneDraw::Rect([28, 11, 144, 48, 28, 123, 49, 66, 833]),
            SceneDraw::Rect([28, 29, 144, 48, 28, 29, 61, 66, 833]),
            SceneDraw::Rect([90, 144, 29, 70, 0, 65, 25, 66, 833]),
            SceneDraw::Rect([90, 144, 30, 69, 170, 65, 25, 66, 964]),
            SceneDraw::Rect([28, 30, 48, 144, 124, 30, 30, 66, 964]),
            SceneDraw::Rect([28, 30, 48, 144, 29, 30, 25, 66, 833]),
            SceneDraw::Rect([204, 0, 29, 144, 0, 29, 25, 66, 833]),
            SceneDraw::Rect([0, 59, 200, 28, 0, 171, 47, 66, 833]),
            SceneDraw::Rect([0, 0, 200, 29, 0, 0, 61, 66, 833]),
            SceneDraw::Rect([90, 0, 144, 144, 29, 29, 25, 66, 833]),
            SceneDraw::Rect([0, 0, 29, 200, 171, 0, 25, 66, 964]),
            SceneDraw::Rect([0, 0, 29, 200, 0, 0, 25, 66, 833]),
        ],
        &[
            SceneDraw::Rect([0, 99, 200, 101, 0, 99, 79, 66, 833]),
            SceneDraw::Scaled([90, 0, 144, 144, 0, 86, 29, 29, 25, 66, 0]),
            SceneDraw::Rect([174, 146, 30, 39, 0, 79, 25, 66, 833]),
            SceneDraw::Scaled([90, 0, 144, 144, 29, 86, 28, 29, 25, 66, 0]),
            SceneDraw::Scaled([90, 0, 144, 144, 57, 86, 29, 29, 25, 66, 0]),
            SceneDraw::Rect([120, 154, 28, 48, 142, 75, 25, 66, 964]),
            SceneDraw::Scaled([90, 0, 144, 144, 114, 86, 30, 29, 25, 66, 0]),
            SceneDraw::Rect([58, 1, 84, 10, 58, 113, 52, 66, 833]),
            SceneDraw::Rect([61, 76, 78, 11, 61, 76, 63, 66, 833]),
            SceneDraw::Scaled([90, 0, 144, 144, 86, 86, 29, 29, 25, 66, 0]),
            SceneDraw::Rect([76, 76, 11, 47, 76, 76, 25, 66, 833]),
            SceneDraw::Rect([311, 76, 11, 47, 114, 76, 30, 66, 964]),
            SceneDraw::Scaled([90, 0, 86, 144, 0, 76, 29, 47, 30, 66, 1]),
            SceneDraw::Scaled([90, 0, 144, 144, 29, 76, 47, 47, 25, 66, 0]),
            SceneDraw::Rect([28, 11, 144, 48, 28, 123, 54, 66, 833]),
            SceneDraw::Rect([28, 29, 144, 48, 28, 29, 63, 66, 833]),
            SceneDraw::Scaled([90, 0, 144, 144, 76, 76, 48, 47, 25, 66, 0]),
            SceneDraw::Rect([90, 144, 30, 69, 170, 65, 25, 66, 964]),
            SceneDraw::Rect([90, 0, 29, 144, 0, 29, 30, 66, 964]),
            SceneDraw::Rect([0, 59, 200, 28, 0, 171, 52, 66, 833]),
            SceneDraw::Rect([0, 0, 200, 29, 0, 0, 63, 66, 833]),
            SceneDraw::Rect([90, 0, 144, 144, 29, 29, 25, 66, 833]),
            SceneDraw::Rect([235, 0, 29, 200, 171, 0, 30, 66, 964]),
            SceneDraw::Rect([0, 0, 29, 200, 0, 0, 25, 66, 833]),
        ],
    ];
    let mut count = 0;
    for facing in 0..4 {
        let view = ViewState {
            x: 2,
            y: 1,
            facing: facing as u8,
        };
        let mut ctx = SceneContext::new_200(&map, view, 200, true, 0).unwrap();
        let draws = commands_200(&map, view, &mut ctx, 66).unwrap();
        let actual: Vec<_> = draws
            .into_iter()
            .filter(|d| !matches!(d, SceneDraw::Cropped(_)))
            .collect();
        assert_eq!(actual, expected[facing], "facing {facing}");
        count += actual.len();
    }
    assert_eq!(count, 117);
}
#[test]
fn destination_all_eleven_original_calls_including_crops() {
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
    let raw = fs::read(root.join("lale/FRPOS.CKD")).unwrap();
    let bank = lale_assets::Flib::parse(&raw).unwrap();
    let map = pc_map::PcMap::parse(bank.member("PC1").unwrap().payload).unwrap();
    let path = root.join("analysis/phase-five/navigation-renderer-20261016/capture");
    let view = ViewState {
        x: 2,
        y: 0,
        facing: 0,
    };
    let mut ctx = SceneContext::new_200(&map, view, 200, true, 0).unwrap();
    let actual = commands_200(&map, view, &mut ctx, 66).unwrap();
    let mut expected = Vec::new();
    for i in 0..11 {
        let stack = fs::read(path.join(format!("NV5-DRAW{i:02}.BIN"))).unwrap();
        let code = fs::read(path.join(format!("NV5-CODE{i:02}.BIN"))).unwrap();
        let words: Vec<_> = stack
            .chunks_exact(2)
            .map(|b| u16::from_le_bytes([b[0], b[1]]))
            .collect();
        if code[1] == 0x1e {
            let mut a: [u16; 12] = words[2..14].try_into().unwrap();
            a[8] &= 255;
            a[9] &= 255;
            a[11] = 0x28;
            expected.push(SceneDraw::Cropped(a));
        } else {
            let mut a: [u16; 9] = words[2..11].try_into().unwrap();
            a[6] &= 255;
            a[7] &= 255;
            expected.push(SceneDraw::Rect(a));
        }
    }
    assert_eq!(actual, expected);
}
