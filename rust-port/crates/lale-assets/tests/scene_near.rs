use lale_assets::{
    pc_map::PcMap,
    scene_layers::LayerCommand,
    scene_layers::ViewState,
    scene_near::{near_layer_4f55, near_sides_56e0},
    Flib,
};
use std::{fs, path::Path};
fn word(b: &[u8], a: usize) -> u16 {
    u16::from_le_bytes([b[a], b[a + 1]])
}
#[test]
fn original_depth1_direct_calls_and_neighbor_walls() {
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
    let archive = fs::read(root.join("lale/FRPOS.CKD")).unwrap();
    let bank = Flib::parse(&archive).unwrap();
    let map = PcMap::parse(bank.member("PC1").unwrap().payload).unwrap();
    let exe = fs::read(root.join("lale/IST.EXE")).unwrap();
    let folder = root.join("analysis/phase-five/turning-20261015/capture");
    let mut checked = 0;
    for facing in 0..4 {
        let ds = fs::read(folder.join(format!("ENTRY{facing}.BIN"))).unwrap();
        let state = ViewState { x: 2, y: 1, facing };
        let calls = near_layer_4f55(&map, state, &ds, 66).unwrap();
        let mut expected = Vec::new();
        for n in 0..[14, 37, 42, 24][facing as usize] {
            let raw = fs::read(folder.join(format!("F{facing}-{n:02}.BIN"))).unwrap();
            let ret = word(&raw, 0);
            if !(0x4f55..0x56e0).contains(&ret) {
                continue;
            }
            let mut a = std::array::from_fn(|i| word(&raw, 4 + i * 2));
            a[6] &= 255;
            a[7] &= 255;
            a[9] = 0x1e0;
            expected.push((ret, a));
        }
        let mut actual = Vec::new();
        for call in calls {
            match call {
                LayerCommand::Rect {
                    callee_order,
                    return_offset,
                } => actual.push((return_offset, callee_order)),
                LayerCommand::Cropped { return_offset, .. } => {
                    let at = 0x28430 + usize::from(return_offset);
                    assert_eq!(&exe[at - 5..at], &[0x9a, 0x21, 0x0f, 0x28, 0]);
                }
                _ => {}
            }
        }
        checked += actual.len();
        assert_eq!(actual, expected, "facing{facing}");
        let sides = near_sides_56e0(&map, state, 66).unwrap();
        for side in sides {
            if let LayerCommand::Wall {
                geometry,
                cell_offset,
                direction,
                destination,
            } = side
            {
                assert!([18, 19, 20, 21].contains(&geometry));
                assert_eq!(cell_offset % 15, 0);
                assert!(direction < 4);
                assert_eq!(destination, 66);
            }
        }
    }
    assert_eq!(checked, 8);
}
