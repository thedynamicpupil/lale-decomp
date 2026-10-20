use lale_assets::combat_data::{creature_name, creature_template, weapon};
use std::{fs, path::Path};

#[test]
fn original_first_creature_and_stone_retain_raw_words_and_offsets() {
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
    let executable = fs::read(root.join("lale/IST.EXE")).unwrap();
    let name = creature_name(&executable, 13, 13..=13).unwrap();
    assert_eq!(name.id, 13);
    assert_eq!(name.ds_offset, 0x21fa);
    assert_eq!(name.file_offset, 0x1b3fa);
    assert_eq!(name.bytes, b"kopek\0\0\0\0");

    let template = creature_template(&executable, 13, 13..=13).unwrap();
    assert_eq!(template.source.ds_offset, 0x14dd);
    assert_eq!(template.source.file_offset, 0x1a6dd);
    assert_eq!(
        template.words,
        [2, 3, 401, 1, 0, 1, 6, 3, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0]
    );
    assert_eq!(&template.source.bytes[20..22], &[0xff, 0xff]);

    let stone = weapon(&executable, 2, 2..=2).unwrap();
    assert_eq!(stone.source.id, 2);
    assert_eq!(stone.source.ds_offset, 0x0e95);
    assert_eq!(stone.source.file_offset, 0x1a095);
    assert_eq!(stone.words, [201, 2, 1, 3, 1, 2, 0]);
    assert_eq!(
        stone.source.bytes,
        &[0xc9, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 0, 0]
    );
}

#[test]
fn malformed_extents_and_unvalidated_ids_fail_without_panicking() {
    let executable = vec![0u8; 0x29200];
    assert!(creature_name(&executable, 12, 13..=13).is_err());
    assert!(creature_template(&executable, 14, 13..=13).is_err());
    assert!(weapon(&executable, 3, 2..=2).is_err());
    let empty = std::ops::RangeInclusive::new(14, 13);
    assert!(creature_name(&executable, 13, empty).is_err());
    assert!(weapon(&executable, usize::MAX, usize::MAX..=usize::MAX).is_err());
    assert!(creature_template(&executable, 0x10000, 0x10000..=0x10000).is_err());
    assert!(creature_name(&[], 13, 13..=13).is_err());
    assert!(creature_name(&executable[..0x1b402], 13, 13..=13).is_err());
    assert!(creature_template(&executable[..0x1a70a], 13, 13..=13).is_err());
    assert!(weapon(&executable[..0x1a0a2], 2, 2..=2).is_err());
}
