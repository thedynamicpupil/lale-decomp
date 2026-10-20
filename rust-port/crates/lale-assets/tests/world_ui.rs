use lale_assets::{decode_cmp, world_ui, Flib};
use std::{fs, path::Path};

#[test]
fn fresh_dos_dialogue_portrait_rng_and_draw_arguments() {
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
    let path = root.join("analysis/phase-five/world-dialogue-runtime-20261016/capture");
    let before = fs::read(path.join("ROOT-DIALOGUE-DS.BIN")).unwrap();
    let word = |b: &[u8], a: usize| u16::from_le_bytes([b[a], b[a + 1]]);
    let mut rng = lale_core::rng::LaleRng {
        state: u32::from_le_bytes(before[0x94c4..0x94c8].try_into().unwrap()),
    };
    let values = [0x9a20, 0x9a7c, 0x9ad8, 0x9b34].map(|a| word(&before, a) as i16);
    assert_eq!(values, [50, 131, 50, 50]);
    assert_eq!(
        u16::from(world_ui::maximum_party_field(values)),
        word(&before, 0xbb9c)
    );
    assert_eq!(word(&before, 0xbb9e), 0);
    for i in 0..4 {
        let ds = fs::read(path.join(format!("ROOT-PORTRAIT{i}-DS.BIN"))).unwrap();
        let stack = fs::read(path.join(format!("ROOT-PORTRAIT{i}-ST.BIN"))).unwrap();
        let ss = fs::read(path.join(format!("ROOT-PORTRAIT{i}-SS.BIN"))).unwrap();
        let sx = world_ui::dialogue_portrait_frame(|| rng.scaled(2));
        let args: [u16; 10] = std::array::from_fn(|n| word(&stack, n * 2));
        assert_eq!(args, [sx, 1, 30, 30, 9, 111, 72, 0, 0x2d0, 0x2dbd]);
        assert_eq!(
            rng.state,
            u32::from_le_bytes(ds[0x94c4..0x94c8].try_into().unwrap())
        );
        assert_eq!(word(&ss, 0xb94 - 12), 38); //20+6*3 explicit lines
        assert_eq!(word(&ss, 0xb94 - 6), 38 - i);
    }
    let restore = fs::read(path.join("ROOT-SPACE-RESTORE-DS.BIN")).unwrap();
    let stack = fs::read(path.join("ROOT-SPACE-RESTORE-ST.BIN")).unwrap();
    assert_eq!(
        rng.state,
        u32::from_le_bytes(restore[0x94c4..0x94c8].try_into().unwrap())
    );
    assert_eq!(
        std::array::from_fn::<_, 10, _>(|i| word(&stack, i * 2)),
        [0, 0, 32, 32, 8, 110, 88, 0, 0x2d0, 0x2dbd]
    );
    let acquired = fs::read(path.join("ROOT-ACQUISITION-ENTRY-DS.BIN")).unwrap();
    assert_eq!((word(&acquired, 0xb9f3), word(&acquired, 0xb9f1)), (2, 1));
    assert_eq!(acquired[0xb9ca] & 6, 0); //dog/key still clear
    assert_eq!(word(&acquired, 0xbb57), 2); //original pending Sivri Daş
}

#[test]
fn dialogue_prefix_retains_complete_discrepant_stream_and_original_geometry() {
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
    let bytes = fs::read(root.join("lale/IVIR.CKD")).unwrap();
    let bank = Flib::parse(&bytes).unwrap();
    let member = bank.member("IREM62.CMP").unwrap();
    assert!(decode_cmp(member.payload).is_err()); //generic strict policy retained
    let atlas = lale_assets::decode_cmp_stream(member.payload).unwrap();
    assert_eq!(atlas.indices.len(), 12401); //extra emitted byte is preserved
    let ds =
        fs::read(root.join(
            "analysis/phase-five/world-dialogue-runtime-20261016/capture/ROOT-DIALOGUE-DS.BIN",
        ))
        .unwrap();
    assert_eq!(
        atlas.dimensions.width,
        u16::from_le_bytes(ds[0xe53b..0xe53d].try_into().unwrap())
    );
    assert_eq!(
        atlas.dimensions.height,
        u16::from_le_bytes(ds[0xe53d..0xe53f].try_into().unwrap())
    );
    assert_eq!(
        atlas.dimensions,
        lale_core::Dimensions {
            width: 20,
            height: 620
        }
    );
}

#[test]
fn dialogue_wait_excludes_presentation_cost_and_never_skips_draws() {
    let mut playback = world_ui::DialoguePlayback::new(3);
    assert!(!playback.poll(65500));
    assert!(!playback.poll(113));
    assert!(playback.poll(114));
    assert!(!playback.poll(900)); //present still outstanding
    assert_eq!(playback.presented(900, Some(32), false), Some(false));
    assert!(!playback.poll(1049));
    assert!(playback.poll(1050));
    assert_eq!(playback.presented(1050, Some(32), false), Some(false));
    assert!(playback.poll(1200));
    assert_eq!(playback.presented(1200, Some(32), false), Some(false));
    assert!(playback.poll(1350));
    assert_eq!(playback.presented(1350, Some(32), false), Some(true));
    let mut timed = world_ui::DialoguePlayback::new(3);
    assert!(!timed.poll(0));
    for frame in 1..=40 {
        assert!(timed.poll(frame * 150));
        assert_eq!(timed.presented(frame * 150, None, false), Some(frame == 40));
    }
}
#[test]
fn choices_match_original_warning_ds() {
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
    let raw = fs::read(root.join("lale/IVIR.CKD")).unwrap();
    let bank = Flib::parse(&raw).unwrap();
    let prop = decode_cmp(bank.member("DENEYX.CMP").unwrap().payload).unwrap();
    let upper = decode_cmp(bank.member("IREM6.CMP").unwrap().payload).unwrap();
    let font = world_ui::Font {
        proportional: &prop,
        uppercase: &upper,
    };
    let choice = world_ui::Choice::new([b"evet", b"hayIr"], 2, &font, 245, 255).unwrap();
    let ds =
        fs::read(root.join("analysis/phase-five/door-20261015/capture/R3-WARN-DS.BIN")).unwrap();
    for i in 0..2 {
        for j in 0..4 {
            let o = 0xe625 + i * 8 + j * 2;
            assert_eq!(
                choice.hitboxes[i][j],
                i16::from_le_bytes([ds[o], ds[o + 1]])
            );
        }
    }
    assert_eq!(choice.key(b'E'), Some(0));
    assert_eq!(choice.key(b'h'), Some(1));
    for k in [0, 13, 27, 32, 80] {
        assert_eq!(choice.key(k), None);
    }
    assert_eq!(choice.click(57, 169), Some(0));
    assert_eq!(choice.click(257, 185), Some(1));
    let mut pixels = vec![254; 64000];
    for run in &choice.runs {
        font.draw(&mut pixels, run).unwrap();
    }
    for color in [0, 245, 255] {
        assert!(pixels.contains(&color));
    }
}
#[test]
fn original_encoding_and_warning_layout() {
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
    let exe = fs::read(root.join("lale/IST.EXE")).unwrap();
    assert_eq!(&exe[0x47d30..0x47d32], &[0x04, 0x0a]);
    assert_eq!(&exe[0x48799..0x4879d], &[0x0e, 0xe8, 0x7d, 0xf5]);
    assert_eq!(world_ui::decode_event_text(&[91, 108, 91, 106]), b"evet");
    assert_eq!(
        world_ui::decode_event_text(&[94, 87, 111, 63, 104]),
        b"hayIr"
    );
    assert_eq!(world_ui::decode_event_text(&[91, 246, 108]), b"e");
    assert_eq!(
        world_ui::normalize(b"C G I O S U ABC[]"),
        vec![
            0x87, 32, 0xa7, 32, 0x8d, 32, 0x94, 32, 0x9f, 32, 0x81, 32, b'a', b'b', 0x87, b'{',
            b']'
        ]
    );
    let w = world_ui::warning(b"qone\xb6two\x0athree", 148, 0, 255, None);
    assert_eq!(w.runs[0].text, b"Q");
    assert_eq!(w.runs[2].x, 23);
    assert_eq!(w.runs[4].y, 156);
    assert_eq!(w.runs[6].x, 4);
    assert_eq!(w.line_counter, 2);
    assert_eq!(
        world_ui::acquisition_entry_resources([65535, 2, 3], [1, 4, 5]),
        [0, 6, 8]
    );
    assert!(world_ui::acquisition_escape(27));
    assert!(!world_ui::acquisition_escape(13));
}
#[test]
fn source_party_selection_and_dialogue_rng_order() {
    assert_eq!(world_ui::maximum_party_field([9, 9, 2, -1]), 1);
    assert_eq!(world_ui::maximum_party_field([-1, -2, -3, 0]), 4);
    let mut calls = 0;
    assert_eq!(
        world_ui::dialogue_portrait_frame(|| {
            calls += 1;
            1
        }),
        1
    );
    assert_eq!(calls, 1);
    let mut calls = 0;
    assert_eq!(
        world_ui::dialogue_portrait_frame(|| {
            calls += 1;
            0
        }),
        97
    );
    assert_eq!(calls, 2);
    let mut d = world_ui::DialogueAnimation::new(1);
    for _ in 0..3 {
        assert!(!d.frame_drawn());
    }
    assert!(d.mouse_finishes());
    assert!(!d.key_finishes(32));
    assert!(!d.frame_drawn());
    assert!(d.key_finishes(32));
    for _ in 4..27 {
        assert!(!d.frame_drawn());
    }
    assert!(d.frame_drawn());
}
