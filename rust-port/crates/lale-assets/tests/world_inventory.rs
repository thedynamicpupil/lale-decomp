use lale_assets::{decode_cmp, decode_cmp_stream, Flib};
use std::{fs, path::Path};
#[test]
fn named_viewpc_consumer_preserves_the_extra_index_and_keeps_generic_cmp_strict() {
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
    let raw = fs::read(root.join("lale/3D.CKD")).unwrap();
    let bank = Flib::parse(&raw).unwrap();
    let bytes = bank.member("VIEWPC.CMP").unwrap().payload;
    assert!(decode_cmp(bytes).is_err());
    let stream = decode_cmp_stream(bytes).unwrap();
    assert_eq!(
        (stream.dimensions.width, stream.dimensions.height),
        (320, 200)
    );
    assert_eq!(stream.indices.len(), 64001);
    assert_eq!(stream.indices[64000], 0);
}
