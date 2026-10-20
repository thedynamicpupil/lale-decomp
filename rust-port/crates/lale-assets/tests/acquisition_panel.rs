use lale_assets::{
    acquisition_panel::{render, PanelImages, PanelState},
    decode_cmp,
    world_ui::{portrait_name, Font},
    Flib,
};
use std::{collections::BTreeMap, fs, path::Path};
#[test]
fn original_initial_acquisition_panel_pixels_and_hitboxes() {
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
    let exe = fs::read(root.join("lale/IST.EXE")).unwrap();
    let ivir = fs::read(root.join("lale/IVIR.CKD")).unwrap();
    let ivir = Flib::parse(&ivir).unwrap();
    let three = fs::read(root.join("lale/3D.CKD")).unwrap();
    let three = Flib::parse(&three).unwrap();
    let font = decode_cmp(ivir.member("DENEYX.CMP").unwrap().payload).unwrap();
    let upper = decode_cmp(ivir.member("IREM6.CMP").unwrap().payload).unwrap();
    let icons = decode_cmp(ivir.member("ITEMBANK.CMP").unwrap().payload).unwrap();
    let background = decode_cmp(three.member("TRADE.CMP").unwrap().payload).unwrap();
    let mut portraits = BTreeMap::new();
    for id in 1..=16 {
        portraits.insert(
            id,
            decode_cmp(
                ivir.member(&portrait_name(&exe, id).unwrap())
                    .unwrap()
                    .payload,
            )
            .unwrap(),
        );
    }
    let path = root.join("analysis/phase-five/acquisition-20261016/capture");
    for (ds_name, panel_name) in [
        ("ACQ-INITIAL-POLL-DS.BIN", "ACQ-INITIAL-PANEL83.BIN"),
        (
            "ACQ-VALID-TO-PARTY-DS.BIN",
            "ACQ-VALID-TO-PARTY-PANEL83.BIN",
        ),
        ("ACQ-VALID-BACK-DS.BIN", "ACQ-VALID-BACK-PANEL83.BIN"),
    ] {
        let ds = fs::read(path.join(ds_name)).unwrap();
        let word = |a| u16::from_le_bytes([ds[a], ds[a + 1]]);
        let party: [[u8; 92]; 4] = std::array::from_fn(|i| {
            ds[0x99a6 + (i + 1) * 92..0x99a6 + (i + 2) * 92]
                .try_into()
                .unwrap()
        });
        let items = std::array::from_fn(|i| word(0xbb57 + i * 2));
        let panel = render(
            &PanelImages {
                background: &background,
                icons: &icons,
                font: Font {
                    proportional: &font,
                    uppercase: &upper,
                },
                portraits: &portraits,
            },
            &exe,
            &PanelState {
                pending_items: &items,
                pending_resources: [word(0xbba2), word(0xbba4), word(0xbba6)],
                party: &party,
                selected_party: 1,
                origin: [word(0x5bc0) as i16, word(0x5bbe) as i16],
            },
        )
        .unwrap();
        let original = fs::read(path.join(panel_name)).unwrap();
        let differences: Vec<_> = panel
            .pixels
            .iter()
            .zip(&original)
            .enumerate()
            .filter(|(_, (a, b))| a != b)
            .map(|(i, (&a, &b))| (i % 320, i / 320, a, b))
            .collect();
        assert!(
            differences.is_empty(),
            "{} pixel mismatches; first{:?}",
            differences.len(),
            &differences[..differences.len().min(24)]
        );
        for i in 0..10 {
            for j in 0..4 {
                assert_eq!(
                    panel.pending_boxes[i][j],
                    word(0xe645 + (i + 1) * 8 + j * 2) as i16
                );
                assert_eq!(
                    panel.inventory_boxes[i][j],
                    word(0xe5f5 + (i + 1) * 8 + j * 2) as i16
                );
            }
        }
        for i in 0..4 {
            for j in 0..4 {
                assert_eq!(
                    panel.party_boxes[i][j],
                    word(0xe69d + (i + 1) * 8 + j * 2) as i16
                );
            }
        }
    }
}

#[test]
fn mode_zero_exchange_matches_original_complete_numeric_records() {
    let root = Path::new(env!("CARGO_MANIFEST_DIR"))
        .join("../../../analysis/phase-five/acquisition-20261016/capture");
    let before = fs::read(root.join("ACQ-INITIAL-POLL-DS.BIN")).unwrap();
    let mut party: [[u8; 92]; 4] = std::array::from_fn(|i| {
        before[0x99a6 + (i + 1) * 92..0x99a6 + (i + 2) * 92]
            .try_into()
            .unwrap()
    });
    let mut pool = lale_core::acquisition::Pool::default();
    pool.prepare(&[0, 0, 0, 0, 2, 0, 0, 0, 0]).unwrap();
    let mut resources = [10; 3];
    pool.enter(&mut resources);
    for name in ["ACQ-VALID-TO-PARTY-DS.BIN", "ACQ-VALID-BACK-DS.BIN"] {
        pool.exchange(&mut party, 1, 1, 1).unwrap();
        let ds = fs::read(root.join(name)).unwrap();
        for (i, r) in party.iter().enumerate() {
            assert_eq!(
                r.as_slice(),
                &ds[0x99a6 + (i + 1) * 92..0x99a6 + (i + 2) * 92]
            );
        }
        for i in 0..10 {
            assert_eq!(
                pool.items[i],
                u16::from_le_bytes([ds[0xbb57 + i * 2], ds[0xbb58 + i * 2]])
            );
        }
        for i in 0..3 {
            assert_eq!(
                resources[i],
                u16::from_le_bytes([ds[0xbb6f + i * 2], ds[0xbb70 + i * 2]])
            );
        }
        assert_eq!(&ds[0x94c4..0x94c8], &before[0x94c4..0x94c8]);
    }
    pool.finish();
    assert_eq!(pool, lale_core::acquisition::Pool::default());
    assert_eq!(resources, [10; 3]);
}
