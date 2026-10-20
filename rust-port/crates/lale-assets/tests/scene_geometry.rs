use lale_assets::scene_geometry::{project, ProjectedDraw, ProjectionRecord};
use std::{fs, path::Path};

#[test]
fn projected_calls_match_original_dos_arguments() {
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
    let folder = root.join("analysis/phase-five/turning-20261015/capture");
    let exe = fs::read(root.join("lale/IST.EXE")).unwrap();
    let mut checked = 0;
    for facing in 0..4 {
        let ds = fs::read(folder.join(format!("ENTRY{facing}.BIN"))).unwrap();
        let origin = [word(&ds, 0x3b09), word(&ds, 0x3b0b)];
        for i in 0..[14, 37, 42, 24][facing as usize] {
            let raw = fs::read(folder.join(format!("F{facing}-{i:02}.BIN"))).unwrap();
            let ret = word(&raw, 0);
            let (variant, scaled) = match ret {
                0x3508 => (false, false),
                0x35fa => (false, true),
                0x36f3 => (true, false),
                0x37e9 => (true, true),
                _ => continue,
            };
            assert_eq!(
                &exe[0x28430 + usize::from(ret) - 5..0x28430 + usize::from(ret) - 2],
                if scaled {
                    &[0x9a, 0x5a, 0x0c]
                } else {
                    &[0x9a, 0x30, 0x04]
                }
            );
            let count = if scaled { 11 } else { 9 };
            let mut actual: Vec<_> = (0..count).map(|n| word(&raw, 4 + n * 2)).collect();
            let source_index = if scaled { 8 } else { 6 };
            actual[source_index] &= 255;
            actual[source_index + 1] &= 255;
            // Reflected calls can borrow source coordinates from another
            // record in helper3969. Test that context with scene_walls rather
            // than pretending an entry-table snapshot contains its mutations.
            if (scaled && actual[10] == 1) || (!scaled && actual[8] == 0x3c4) {
                continue;
            }
            // Per-resource tables may alias fallback b72a or resident b490.
            // Resolve the actual pointer from every live14-byte descriptor.
            let mut matches = Vec::new();
            for resource in 0..8 {
                let at = 0xb3ec + resource * 14;
                let ptr = word(&ds, at + 6) as usize;
                let seg = word(&ds, at + 8);
                if seg != 0x1f04 {
                    continue;
                }
                for index in 0..37 {
                    let start = ptr + index * 18;
                    let Some(bytes) = ds.get(start..start + 18) else {
                        continue;
                    };
                    let mut record = ProjectionRecord::parse(bytes).unwrap();
                    // Helper3969 temporarily ORs bit0 for a reflected resource
                    // (2bf9e /2c0a2), restoring it after the primitive returns.
                    if scaled && actual[10] == 1 {
                        record.0[8] |= 1;
                    }
                    let draw = project(
                        record,
                        index as u16,
                        actual[source_index] as u8,
                        actual[source_index + 1] as u8,
                        origin,
                        facing,
                        variant,
                    );
                    let got = match draw {
                        Some(ProjectedDraw::Rect(a)) if !scaled => a.to_vec(),
                        Some(ProjectedDraw::Scaled(a)) if scaled => a.to_vec(),
                        _ => continue,
                    };
                    if got == actual {
                        matches.push((resource, index));
                    }
                }
            }
            assert!(
                !matches.is_empty(),
                "facing{facing} call{i} return{ret:04x} {actual:?}"
            );
            checked += 1;
        }
    }
    assert!(checked >= 20, "covered only{checked} generated calls");
}

fn word(bytes: &[u8], at: usize) -> u16 {
    u16::from_le_bytes(bytes[at..at + 2].try_into().unwrap())
}

#[test]
fn original_branch_precedence_and_word_wrap() {
    let record = |flags| ProjectionRecord([65535, 2, 5, 6, 7, 8, 9, 10, flags]);
    assert_eq!(
        project(record(0), 9, 25, 66, [2, 65535], 0, true),
        Some(ProjectedDraw::Rect([242, 8, 5, 6, 1, 1, 25, 66, 0x341]))
    );
    assert_eq!(
        project(record(0), 9, 25, 66, [0, 0], 0, false),
        Some(ProjectedDraw::Rect([7, 8, 5, 6, 65535, 2, 25, 66, 0x341]))
    );
    assert!(
        matches!(project(record(5),0,25,66,[0,0],0,false), Some(ProjectedDraw::Rect(a)) if a[8]==0x3c4)
    );
    assert!(
        matches!(project(record(7),0,25,66,[0,0],0,false), Some(ProjectedDraw::Scaled(a)) if a[10]==1)
    );
    assert_eq!(project(record(4), 0, 25, 66, [0, 0], 0, false), None);
    assert_eq!(project(record(0), 0, 0, 66, [0, 0], 0, false), None);
    assert!(ProjectionRecord::parse(&[0; 17]).is_err());
}
