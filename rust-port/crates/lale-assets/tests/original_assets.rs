//! Differential checks against instruction-backed, independently decoded Python bytes.
//! Original proprietary files are read in place; none are embedded or redistributed.
use lale_assets::{decode_cmp, Flib};
use std::path::Path;

#[test]
fn authentic_assets_match_independent_reference_indices() {
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
    for (container, member, reference, dimensions) in [
        ("IKON.CKD", "IKON1.CMP", "IKON1.indices", (200, 200)),
        ("SAVAS.CKD", "AFAKAN.CMP", "AFAKAN.indices", (86, 19)),
    ] {
        let source = std::fs::read(root.join("lale").join(container)).unwrap();
        let package = Flib::parse(&source).unwrap();
        let image = decode_cmp(package.member(member).unwrap().payload).unwrap();
        assert_eq!(
            (image.dimensions.width, image.dimensions.height),
            dimensions
        );
        assert_eq!(
            image.indices,
            std::fs::read(root.join("extracted/phase-five").join(reference)).unwrap()
        );
    }
}

#[test]
fn known_dimension_discrepancy_is_explicitly_unsupported() {
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
    let source = std::fs::read(root.join("lale/IVIR.CKD")).unwrap();
    let package = Flib::parse(&source).unwrap();
    let failure = decode_cmp(package.member("ACILISA.CMP").unwrap().payload).unwrap_err();
    assert_eq!(
        failure.0,
        "dimension discrepancy: 64001 decoded indices, 64000 expected"
    );
}
