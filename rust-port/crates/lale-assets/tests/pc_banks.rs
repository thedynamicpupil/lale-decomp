use lale_assets::{pc_map::PcMap, Flib};
use std::path::Path;

#[test]
fn all_original_pc_banks_have_exact_grid_boundaries() {
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
    let source = std::fs::read(root.join("lale/FRPOS.CKD")).unwrap();
    let package = Flib::parse(&source).unwrap();
    for number in 1..=18 {
        let member = package.member(&format!("PC{number}")).unwrap();
        let map = PcMap::parse(member.payload).unwrap();
        assert!(map
            .cell(usize::from(map.width()) - 1, usize::from(map.height()) - 1)
            .is_some());
        assert!(map.cell(usize::from(map.width()), 0).is_none());
        assert!(map.cell(0, usize::from(map.height())).is_none());
        assert!(PcMap::parse(&member.payload[..member.payload.len() - 1]).is_err());
    }
    let map = PcMap::parse(package.member("PC1").unwrap().payload).unwrap();
    assert_eq!((map.width(), map.height()), (10, 10));
    assert_eq!(map.initial_cell().unwrap(), (2, 1));
    assert_eq!(map.initial_direction().unwrap(), 2);
    assert_eq!(map.graphic_selectors(), [0, 2, 3, 9]);
    assert_eq!(
        map.cell(2, 1).unwrap(),
        &[3, 2, 2, 1, 2, 1, 2, 1, 2, 2, 0, 1, 1, 1, 6]
    );
    let mut bad = package.member("PC1").unwrap().payload.to_vec();
    bad.push(0);
    assert!(PcMap::parse(&bad).is_err());
    bad.pop();
    bad[27] = 0;
    assert!(PcMap::parse(&bad).unwrap().initial_cell().is_err());
}
