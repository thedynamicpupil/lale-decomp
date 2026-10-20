use lale_assets::{amf::Amf14, Flib};
use std::path::Path;

fn original() -> Vec<u8> {
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
    std::fs::read(root.join("lale/MUZIK.CKD")).expect("original MUZIK.CKD required")
}

#[test]
fn all_original_music_members_match_independent_structure_boundaries() {
    // Independent Python structural evidence, not expectations calculated by
    // the Rust parser: name, full bytes, sample-data offset, sample bytes,
    // order count, logical tracks, physical tracks, channels.
    let expected = [
        ("3.AMF", 50897, 4401, 46496, 5, 24, 24, 6),
        ("3D.AMF", 58146, 5362, 52784, 13, 48, 48, 6),
        ("4.AMF", 87579, 3751, 83828, 4, 24, 19, 6),
        ("5.AMF", 60701, 3903, 56798, 2, 12, 12, 6),
        ("6.AMF", 57409, 2857, 54552, 1, 6, 6, 6),
        ("7.AMF", 41243, 3133, 38110, 4, 12, 12, 6),
        ("8.AMF", 50408, 3120, 47288, 5, 12, 12, 6),
        ("9.AMF", 69081, 2467, 66614, 1, 6, 6, 6),
        ("DEMO.AMF", 61369, 9151, 52218, 13, 72, 72, 6),
        ("ISTANBUL.AMF", 85640, 10388, 75252, 12, 72, 71, 8),
        ("NIGHTMAR.AMF", 65788, 4438, 61350, 7, 42, 33, 6),
        ("PAIN.AMF", 52122, 3176, 48946, 3, 18, 18, 6),
        ("SAVAS.AMF", 87793, 10651, 77142, 16, 72, 72, 6),
        ("THEEND.AMF", 147525, 2371, 145154, 1, 6, 6, 6),
        ("UNI.AMF", 246534, 9914, 236620, 18, 108, 89, 6),
    ];
    let bytes = original();
    let archive = Flib::parse(&bytes).unwrap();
    for (name, size, sample_start, sample_bytes, orders, logical, physical, channels) in expected {
        let member = archive.member(name).unwrap();
        let music = Amf14::parse(member.payload).unwrap();
        assert_eq!(music.consumed, size, "{}", name);
        assert_eq!(music.sample_data_offset, sample_start, "{}", name);
        assert_eq!(
            music.samples.iter().map(|s| s.bytes.len()).sum::<usize>(),
            sample_bytes,
            "{}",
            name
        );
        assert_eq!(music.orders.len(), orders, "{}", name);
        assert_eq!(music.track_remap.len(), logical, "{}", name);
        assert_eq!(music.tracks.len(), physical, "{}", name);
        assert_eq!(music.channels, channels, "{}", name);
        assert_eq!(music.descriptors.len(), 31, "{}", name);
        assert_eq!((music.byte73, music.byte74), (125, 6), "{}", name);
        assert_eq!(music.title.as_slice(), &member.payload[4..36]);
        for sample in &music.samples {
            assert_eq!(
                sample.bytes,
                &member.payload[sample.offset..sample.offset + sample.bytes.len()]
            );
        }
    }
}

#[test]
fn rejects_truncation_unsupported_headers_ids_and_trailing_data() {
    let bytes = original();
    let archive = Flib::parse(&bytes).unwrap();
    let member = archive.member("3.AMF").unwrap();
    let music = Amf14::parse(member.payload).unwrap();
    for end in [
        0,
        3,
        74,
        75,
        music.remap_offset,
        music.tracks[0].offset + 2,
        music.sample_data_offset,
        member.payload.len() - 1,
    ] {
        assert!(Amf14::parse(&member.payload[..end]).is_err());
    }
    for (at, value) in [
        (3, 13),
        (40, 0),
        (40, 33),
        (77, 255),
        (music.tracks[0].offset + 2, 1),
    ] {
        let mut changed = member.payload.to_vec();
        changed[at] = value;
        assert!(Amf14::parse(&changed).is_err());
    }
    let mut trailing = member.payload.to_vec();
    trailing.push(0);
    assert!(Amf14::parse(&trailing).is_err());
}
