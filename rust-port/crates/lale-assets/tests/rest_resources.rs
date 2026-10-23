//! Resource inspection only; this does not initialize or implement Afakan combat.
use lale_assets::{combat_data, decode_cmp, Flib};
use std::path::Path;
#[test]
fn original_afakan_identity_cmp_and_six_kor_rectangles_are_consistent() {
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
    let bytes = std::fs::read(root.join("lale/SAVAS.CKD")).unwrap();
    let archive = Flib::parse(&bytes).unwrap();
    let image = decode_cmp(archive.member("AFAKAN.CMP").unwrap().payload).unwrap();
    assert_eq!((image.dimensions.width, image.dimensions.height), (86, 19));
    assert_eq!(image.indices.len(), 1634);
    let kor = archive.member("AFAKAN.KOR").unwrap().payload;
    assert_eq!(kor.len(), 72);
    for row in kor.chunks_exact(12) {
        let k: [i16; 6] = std::array::from_fn(|i| i16::from_le_bytes([row[2 * i], row[2 * i + 1]]));
        assert!(k[0] >= 0 && k[1] >= 0 && k[2] >= k[0] && k[3] >= k[1]);
        assert!(k[2] < 86 && k[3] < 19);
    }
    let exe = std::fs::read(root.join("lale/IST.EXE")).unwrap();
    let name = combat_data::creature_name(&exe, 31, 31..=31).unwrap();
    assert_eq!(&name.bytes[..7], b"afakan\0");
}
