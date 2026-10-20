//! Corpus expectations come from the independent Python packet audit.
use lale_assets::{decode_cmp, Flib};
use std::path::Path;

#[test]
fn original_cmp_corpus_preserves_all_known_size_discrepancies() {
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
    let mut exact = 0;
    let mut failed = Vec::new();
    for (archive, expected_count) in [
        ("3D.CKD", 54),
        ("IKON.CKD", 94),
        ("IVIR.CKD", 48),
        ("SAVAS.CKD", 66),
    ] {
        let bytes = std::fs::read(root.join("lale").join(archive)).unwrap();
        let package = Flib::parse(&bytes).unwrap();
        let images: Vec<_> = package
            .members
            .iter()
            .filter(|m| m.name.to_ascii_uppercase().ends_with(".CMP"))
            .collect();
        assert_eq!(images.len(), expected_count);
        for member in images {
            match decode_cmp(member.payload) {
                Ok(_) => exact += 1,
                Err(failure) => {
                    assert!(failure.0.starts_with("dimension discrepancy:"));
                    failed.push(format!("{archive}/{}", member.name));
                }
            }
        }
    }
    failed.sort();
    assert_eq!(exact, 251);
    assert_eq!(
        failed,
        [
            "3D.CKD/GOTY0.CMP",
            "3D.CKD/GOTY1.CMP",
            "3D.CKD/VIEWPC.CMP",
            "IVIR.CKD/ACILISA.CMP",
            "IVIR.CKD/ACILISB.CMP",
            "IVIR.CKD/IREM62.CMP",
            "IVIR.CKD/ISTB.CMP",
            "IVIR.CKD/RAKS.CMP",
            "IVIR.CKD/RPZ.CMP",
            "IVIR.CKD/SCW.CMP",
            "SAVAS.CKD/IROSP1.CMP",
        ]
    );
}
