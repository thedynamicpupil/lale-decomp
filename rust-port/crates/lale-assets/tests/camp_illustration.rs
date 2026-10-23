use lale_assets::{world_illustration::Illustration, Palette6};
use std::path::Path;
#[test]
fn camp79_matches_independently_decoded_indices_and_only_changes_low_palette() {
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
    let image = Illustration::load(&root, 79).unwrap();
    assert_eq!(
        (image.image.dimensions.width, image.image.dimensions.height),
        (200, 200)
    );
    let evidence = root.join("analysis/phase-five/camp-presentation-20261023/ikon79");
    assert_eq!(
        image.image.indices,
        std::fs::read(evidence.join("indices.bin")).unwrap()
    );
    assert!(image.image.indices.contains(&254));
    let mut original =
        Palette6::parse(&std::fs::read(root.join("lale/SONPAL.PAL")).unwrap()).unwrap();
    let upper = original.triplets[128..].to_vec();
    lale_assets::world_illustration::apply_palette(&mut original, &image.palette).unwrap();
    assert_eq!(original.triplets[..128], image.palette.triplets[..128]);
    assert_eq!(original.triplets[128..], upper);
}
