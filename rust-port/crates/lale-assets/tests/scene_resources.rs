use lale_assets::{decode_cmp, pc_map::PcMap, scene_resources::image_bindings, Flib};
use std::{fs, path::Path};
#[test]
fn original_area_tables_and_surface_aliases_resolve_pc1_and_pc2() {
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
    let exe = fs::read(root.join("lale/IST.EXE")).unwrap();
    let maps = fs::read(root.join("lale/FRPOS.CKD")).unwrap();
    let maps = Flib::parse(&maps).unwrap();
    let graphics = fs::read(root.join("lale/3D.CKD")).unwrap();
    let graphics = Flib::parse(&graphics).unwrap();
    for name in ["PC1", "PC2"] {
        let map = PcMap::parse(maps.member(name).unwrap().payload).unwrap();
        let bindings = image_bindings(&exe, &map, "ufuk1.cmp").unwrap();
        assert_eq!(bindings[&25], "DUVAR2.CMP");
        assert_eq!(bindings[&27], "MERDUST.CMP");
        assert_eq!(bindings[&31], "MERDALT.CMP");
        assert_eq!(bindings[&47], bindings[&37]);
        assert_eq!(bindings[&52], "YER1.CMP");
        assert_eq!(bindings[&54], bindings[&39]);
        assert_eq!(bindings[&61], bindings[&57]);
        let mut missing = Vec::new();
        for (slot, name) in &bindings {
            if graphics.member(name).is_none() {
                missing.push((*slot, name.as_str()));
                continue;
            }
            let image = decode_cmp(
                graphics
                    .member(name)
                    .unwrap_or_else(|| panic!("missing slot{slot} {name}"))
                    .payload,
            )
            .unwrap();
            assert!(!image.indices.is_empty(), "slot{slot}");
            if (24..32).contains(slot) {
                assert!(
                    graphics.member(&name.replace(".CMP", ".KOR")).is_none(),
                    "PC1/2 wall expected original fallback table, found sidecar{name}"
                );
            }
        }
        // The original literal table names this absent resource. Do not invent
        // a replacement; loading a view that actually needs it must fail.
        assert_eq!(missing, [(35, "BOSCH.CMP")]);
        if name == "PC1" {
            assert!(!bindings.contains_key(&24));
            assert_eq!(bindings[&30], "KAPI3.CMP");
        } else {
            assert_eq!(bindings[&24], "DUVAR1.CMP");
            assert_eq!(bindings[&26], "DUVAR7.CMP");
        }
    }
}
