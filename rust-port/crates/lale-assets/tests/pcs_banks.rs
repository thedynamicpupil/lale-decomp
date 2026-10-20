use lale_assets::{pcs::PcsBank, Flib};
#[test]
fn original_pcs_boundaries_and_opening_section_identity() {
    let root = std::path::Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
    let raw = std::fs::read(root.join("lale/FRPOS.CKD")).unwrap();
    let flib = Flib::parse(&raw).unwrap();
    let mut count = 0;
    for member in &flib.members {
        if member.name.to_ascii_uppercase().starts_with("PCS") {
            let bank = PcsBank::parse(member.payload).unwrap();
            assert!(!bank.groups.is_empty());
            for group in &bank.groups {
                let frame = group.frame_commands();
                assert!(
                    frame.issue.is_none(),
                    "{} group{} {:?}",
                    member.name,
                    group.index,
                    frame.issue
                );
                assert!(group.bytes[frame.stop_offset - group.payload_offset..]
                    .iter()
                    .all(|&b| b == 0));
                for mode in 5..=255 {
                    assert!(!group.marker_matches(mode));
                }
            }
            if member.name.eq_ignore_ascii_case("PCS1") {
                assert_eq!(bank.groups.len(), 6);
                assert_eq!(bank.groups[5].payload_offset, 1259);
                assert_eq!(bank.groups[5].mode_target(2), Some(1270));
                assert!(bank.groups[5].marker_matches(2));
                assert_eq!(bank.groups[0].bytes.len(), 310);
            }
            count += 1;
        }
    }
    assert_eq!(count, 18);
}
#[test]
fn malformed_lengths_and_trailing_data_are_rejected() {
    let mut bytes = vec![0; 22];
    bytes[..4].copy_from_slice(b"AmBk");
    assert!(PcsBank::parse(&bytes).is_ok());
    bytes[21] = 1;
    assert!(PcsBank::parse(&bytes).is_err());
    bytes.extend_from_slice(&[0, 8, 0, 0]);
    assert!(PcsBank::parse(&bytes).is_err());
    bytes.resize(32, 0);
    assert!(PcsBank::parse(&bytes).is_ok());
    bytes.push(0);
    assert!(PcsBank::parse(&bytes).is_err());
}

#[test]
fn source_cells_bind_selectors_events_and_transition_without_guessing_collision() {
    use lale_assets::pc_map::{special_event_key, PcMap};
    let root = std::path::Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
    let raw = std::fs::read(root.join("lale/FRPOS.CKD")).unwrap();
    let flib = Flib::parse(&raw).unwrap();
    let pc = PcMap::parse(flib.member("PC1").unwrap().payload).unwrap();
    let start = pc.cell(2, 1).unwrap();
    let pair = pc.directional_pair(2, 1, 0).unwrap();
    assert_eq!((pair.selector, pair.movement_state), (3, 2));
    assert_eq!(pc.graphics_value_for_pair(pair), Some(3));
    assert_eq!(pc.event_group_candidate(start), 5);
    assert_eq!(pc.event_group_candidate(pc.cell(2, 0).unwrap()), 0);
    assert_eq!(special_event_key(&[31, 31, 31, 29]), Some("WEAPON_SELLER"));
    assert_eq!(special_event_key(&[0, 0, 0, 0]), Some("NO_EVENT"));
    assert!(special_event_key(&[31, 31, 31, 31])
        .unwrap()
        .starts_with("SPECIAL_MODE2"));
    assert!(pc.directional_pair(2, 1, 4).is_none());
    let pcs = PcsBank::parse(flib.member("PCS1").unwrap().payload).unwrap();
    let frame = pcs.groups[2].frame_commands();
    let transition = frame.commands.iter().find(|c| c.opcode == 11).unwrap();
    assert_eq!(transition.payload_offset, 0x254);
    assert_eq!(transition.arguments, [2, 2, 152, 3]);
    let commands = pcs.groups[0].frame_commands();
    let encounter = commands.commands.iter().find(|c| c.opcode == 8).unwrap();
    assert_eq!(encounter.payload_offset, 0x11c);
    assert_eq!(encounter.arguments, [0, 13, 1, 0, 0, 0, 0]);
}
#[test]
fn variable_command_truncation_stops_without_scanning_for_false_opcodes() {
    use lale_assets::pcs::PcsGroup;
    for opcode in [2, 5, 10, 17, 21, 27, 30] {
        let mut bytes = vec![0; 8];
        bytes.extend_from_slice(&[opcode, 255, 11]);
        let group = PcsGroup {
            index: 0,
            length_word_offset: 0,
            payload_offset: 24,
            bytes: &bytes,
        };
        let frame = group.frame_commands();
        assert!(frame.commands.is_empty());
        assert!(frame.issue.is_some());
        assert_eq!(frame.stop_offset, 32);
    }
}
