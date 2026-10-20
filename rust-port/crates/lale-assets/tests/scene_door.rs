//! Full indexed door comparison against clean original bank readbacks.
use lale_assets::{
    decode_cmp, pc_map, scene_commands, scene_context, scene_layers, scene_projection_200,
    scene_render, scene_resources::image_bindings, Error, Flib, IndexedImage,
};
#[path = "../src/scene_door.rs"]
mod scene_door;
use std::{collections::BTreeMap, fs, path::Path};
#[test]
fn original_starting_north_door_all_four_stages() {
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
    let raw = fs::read(root.join("lale/FRPOS.CKD")).unwrap();
    let bank = Flib::parse(&raw).unwrap();
    let map = pc_map::PcMap::parse(bank.member("PC1").unwrap().payload).unwrap();
    let exe = fs::read(root.join("lale/IST.EXE")).unwrap();
    let raw = fs::read(root.join("lale/3D.CKD")).unwrap();
    let bank = Flib::parse(&raw).unwrap();
    let bindings = image_bindings(&exe, &map, "UFUK1.CMP").unwrap();
    let mut images = BTreeMap::new();
    let view = scene_layers::ViewState {
        x: 2,
        y: 1,
        facing: 0,
    };
    let mut plan_context = scene_context::SceneContext::new_200(&map, view, 200, true, 0).unwrap();
    let mut needed: std::collections::BTreeSet<_> =
        scene_commands::commands_200(&map, view, &mut plan_context, 66)
            .unwrap()
            .iter()
            .map(scene_render::source_slot)
            .collect();
    needed.insert(34);
    for (slot, name) in bindings
        .into_iter()
        .filter(|(slot, _)| needed.contains(slot))
    {
        images.insert(
            slot,
            decode_cmp(bank.member(&name).unwrap().payload).unwrap(),
        );
    }
    let view = scene_layers::ViewState {
        x: 2,
        y: 1,
        facing: 0,
    };
    let mut context = scene_context::SceneContext::new_200(&map, view, 200, true, 0).unwrap();
    let folder = root.join("analysis/phase-five/navigation-renderer-20261016/capture");
    let ds = fs::read(folder.join("NV4-READ1-DS.BIN")).unwrap();
    let before = u16::from_le_bytes([ds[0x6d74], ds[0x6d75]]);
    assert_eq!(before, 0);
    assert_eq!(ds[0x3b08], 1);
    let result = scene_door::compose_200(&map, view, &mut context, &images, before != 0).unwrap();
    assert_eq!(result.animated_slot, 34);
    assert_eq!(
        result.geometry,
        scene_door::DoorGeometry {
            source_width: 86,
            source_height: 119,
            destination_width: 86,
            destination_height: 119,
            x: 58,
            y: 54
        }
    );
    for stage in 0..4 {
        let original = fs::read(folder.join(format!("DOOR-FRAME{stage}.indices"))).unwrap();
        let differences = result.frames[stage]
            .iter()
            .zip(&original)
            .filter(|(a, b)| a != b)
            .count();
        assert_eq!(differences, 0, "door stage{stage}");
        assert_eq!(result.frames[stage].len(), 40000);
    }
    assert_eq!(context.words[0x3b07], 1);
}
