use lale_assets::{
    decode_cmp, indexed_blit::rectangle, pc_map::PcMap, scene_context::SceneContext,
    scene_crop::draw_crop, scene_layers::ViewState, scene_resources::image_bindings, Flib,
};
use std::{collections::BTreeMap, fs, path::Path};
fn word(b: &[u8], a: usize) -> u16 {
    u16::from_le_bytes([b[a], b[a + 1]])
}
#[test]
fn original_destination_including_four_previously_missing_cropped_strips() {
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
    let path = root.join("analysis/phase-five/navigation-renderer-20261016/capture");
    let original = fs::read(root.join("lale/IST.EXE")).unwrap();
    let maps = fs::read(root.join("lale/FRPOS.CKD")).unwrap();
    let maps = Flib::parse(&maps).unwrap();
    let map = PcMap::parse(maps.member("PC1").unwrap().payload).unwrap();
    let bytes = fs::read(root.join("lale/3D.CKD")).unwrap();
    let bank = Flib::parse(&bytes).unwrap();
    let bindings = image_bindings(&original, &map, "UFUK1.CMP").unwrap();
    let mut images = BTreeMap::new();
    let mut view = vec![254; 40000];
    let mut written = vec![false; 40000];
    let mut crops = 0;
    for i in 0..11 {
        let stack = fs::read(path.join(format!("NV5-DRAW{i:02}.BIN"))).unwrap();
        let code = fs::read(path.join(format!("NV5-CODE{i:02}.BIN"))).unwrap();
        let args: [u16; 12] = std::array::from_fn(|n| word(&stack, 4 + n * 2));
        let crop = code[1] == 0x1e;
        let ret = usize::from(word(&stack, 0)) + 0x28430;
        assert_eq!(
            &original[ret - 5..ret],
            if crop {
                &[0x9a, 0x21, 0x0f, 0x28, 0]
            } else {
                &[0x9a, 0x30, 0x04, 0x28, 0]
            }
        );
        let slot = args[if crop { 8 } else { 6 }] as u8;
        let image = images
            .entry(slot)
            .or_insert_with(|| decode_cmp(bank.member(&bindings[&slot]).unwrap().payload).unwrap());
        if crop {
            draw_crop(image, &args, [200, 200], &mut view, &mut written).unwrap();
            crops += 1;
        } else {
            rectangle(
                image,
                args[..9].try_into().unwrap(),
                [200, 200],
                &mut view,
                &mut written,
            )
            .unwrap();
        }
    }
    assert_eq!(crops, 4);
    let read = fs::read(path.join("NV5-DEST-READ-ST.BIN")).unwrap();
    assert_eq!((word(&read, 4), word(&read, 6)), (0x2750, 0xe000));
    assert_eq!(&read[12..18], &[200, 0, 200, 0, 200, 0]);
    let ems = fs::read(path.join("NV5-DEST-READ-EMS.BIN")).unwrap();
    assert_eq!(view, &ems[0x2750..0x2750 + 40000]);
    assert_eq!(view, fs::read(path.join("DESTINATION.indices")).unwrap());
}

#[test]
fn native_fixed_projection_context_matches_original_generated_words() {
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
    let maps = fs::read(root.join("lale/FRPOS.CKD")).unwrap();
    let maps = Flib::parse(&maps).unwrap();
    let map = PcMap::parse(maps.member("PC1").unwrap().payload).unwrap();
    for facing in 0..4 {
        let original = fs::read(root.join(format!(
            "analysis/phase-five/turning-20261015/capture/ENTRY{facing}.BIN"
        )))
        .unwrap();
        let context =
            SceneContext::new_200(&map, ViewState { x: 2, y: 1, facing }, 200, true, 0).unwrap();
        assert_eq!(&context.words[0xb72a..0xb9c4], &original[0xb72a..0xb9c4]);
        for at in [
            0x3b09, 0x3b0b, 0x3afb, 0x3afd, 0x3aff, 0x3b01, 0x9f10, 0x9f12, 0x9f14, 0x9f16, 0xb9f0,
            0xb9f1, 0xb9f3, 0xb9c4, 0xb9c6, 0xe515,
        ] {
            assert_eq!(
                context.get(at),
                word(&original, at),
                "facing{facing} DS{at:04x}"
            );
        }
    }
}
