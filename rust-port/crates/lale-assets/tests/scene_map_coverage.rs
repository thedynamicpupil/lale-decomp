//! Source coverage audit only. Successful rendering is not DOS visual acceptance
//! or permission to enter a cell. See retained DOS pixel differential tests.
use lale_assets::{
    decode_cmp,
    pc_map::PcMap,
    scene_commands::commands_200,
    scene_context::SceneContext,
    scene_layers::ViewState,
    scene_render::{render, source_slot},
    scene_resources::image_bindings,
    Flib,
};
use std::{
    collections::{BTreeMap, BTreeSet},
    fs,
    path::Path,
};
#[test]
fn original_pc1_pc2_rendering_source_coverage() {
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
    let exe = fs::read(root.join("lale/IST.EXE")).unwrap();
    let maps = fs::read(root.join("lale/FRPOS.CKD")).unwrap();
    let maps = Flib::parse(&maps).unwrap();
    let raw = fs::read(root.join("lale/3D.CKD")).unwrap();
    let bank = Flib::parse(&raw).unwrap();
    let horizon = decode_cmp(bank.member("UFUK1.CMP").unwrap().payload).unwrap();
    let mut failures = BTreeMap::<String, (usize, String)>::new();
    let mut passed = 0;
    for name in ["PC1", "PC2"] {
        let map = PcMap::parse(maps.member(name).unwrap().payload).unwrap();
        let bindings = image_bindings(&exe, &map, "UFUK1.CMP").unwrap();
        let mut images = BTreeMap::new();
        for y in 0..map.height() {
            for x in 0..map.width() {
                for facing in 0..4 {
                    let state = ViewState {
                        x: i16::from(x),
                        y: i16::from(y),
                        facing,
                    };
                    let result = (|| {
                        let mut context =
                            SceneContext::new_200(&map, state, horizon.dimensions.height, true, 0)?;
                        let commands = commands_200(&map, state, &mut context, 66)?;
                        let needed: BTreeSet<_> = commands.iter().map(source_slot).collect();
                        for slot in needed {
                            if !images.contains_key(&slot) {
                                let filename = bindings.get(&slot).ok_or_else(|| {
                                    lale_assets::Error(format!("unbound slot{slot}"))
                                })?;
                                let member = bank.member(filename).ok_or_else(|| {
                                    lale_assets::Error(format!("missing member{filename}"))
                                })?;
                                images.insert(slot, decode_cmp(member.payload)?);
                            }
                        }
                        render(
                            &images,
                            &commands,
                            &mut vec![254; 40000],
                            &mut vec![false; 40000],
                        )
                    })();
                    match result {
                        Ok(()) => passed += 1,
                        Err(e) => {
                            let entry = failures
                                .entry(e.to_string())
                                .or_insert((0, format!("{name}({x},{y})f{facing}")));
                            entry.0 += 1;
                        }
                    }
                }
            }
        }
    }
    eprintln!("source-renderable views:{passed}; failures:{failures:#?}");
    assert_eq!(passed, 4000);
    assert!(
        failures.is_empty(),
        "whole-map rendering source coverage remains incomplete"
    );
}
