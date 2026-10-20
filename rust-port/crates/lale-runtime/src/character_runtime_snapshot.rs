//! Read-only creation entry import from an explicitly staged original DS dump.
//! No seed, animation frame, caller stack stamp or native polling is fabricated.
//! Evidence: analysis/phase-five/character-ui-20261015/character/SNAPSHOT_IMPORT.md.
#![allow(dead_code)]
use crate::character_data::{Character, LaleRng, Party};

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum SnapshotStage {
    /// Before first slot setup (physical3e753), after selected-slot installation.
    /// The caller must establish this stage with its original runtime trace.
    BeforeFirstSlotSetup,
    /// Immediately after setup, before the first idle gate.
    AfterSlotSetup,
    /// Boundary of167c:0437, before its initializer or after numeric generation.
    GeneratorBoundary,
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct CreationRuntimeSnapshot {
    pub stage: SnapshotStage,
    pub party: Party,
    pub traits: [[u16; 16]; 4],
    /// Four bytes after each working trait row, preserved without interpretation.
    pub trait_row_tails: [[u8; 4]; 4],
    /// Complete148-byte text rows, preserving the two37-byte nonserialized gaps.
    pub text_workspace: [[u8; 148]; 4],
    pub selected_original: u16,
    pub selected: usize,
    pub raw_body_remainder: u16,
    pub raw_face_phase: u16,
    pub rng: LaleRng,
    /// Current DS:e74a, not the caller's saved BP-0c animation stamp.
    pub current_counter_low16: u16,
}

fn word(bytes: &[u8], at: usize) -> u16 {
    u16::from_le_bytes([bytes[at], bytes[at + 1]])
}
impl CreationRuntimeSnapshot {
    /// Both debugger full-segment65536 and lengthffff65535 captures contain all
    /// required fields. Other extents are rejected rather than treated as DS.
    pub fn parse(ds: &[u8], stage: SnapshotStage) -> Result<Self, String> {
        if !matches!(ds.len(), 65535 | 65536) {
            return Err("creation DS snapshot must contain65535 or65536 bytes".into());
        }
        let selected_original = word(ds, 0x2898);
        if !(1..=4).contains(&selected_original) {
            return Err("creation DS selected slot must be1..4 before slot setup".into());
        }
        let text_workspace: [[u8; 148]; 4] = std::array::from_fn(|i| {
            let at = 0x9c26 + 148 * (i + 1);
            ds[at..at + 148].try_into().unwrap()
        });
        let party = Party {
            characters: std::array::from_fn(|i| {
                let at = 0x99a6 + 92 * (i + 1);
                Character {
                    name_raw: text_workspace[i][..37].try_into().unwrap(),
                    auxiliary_raw: text_workspace[i][111..148].try_into().unwrap(),
                    numeric_raw: ds[at..at + 92].try_into().unwrap(),
                }
            }),
        };
        if party.characters.iter().any(|c| !c.name_raw.contains(&0)) {
            return Err("unterminated name in creation DS snapshot".into());
        }
        let traits = std::array::from_fn(|i| {
            let at = 0x9b72 + 36 * (i + 1);
            std::array::from_fn(|j| word(ds, at + 2 * j))
        });
        let trait_row_tails = std::array::from_fn(|i| {
            let at = 0x9b72 + 36 * (i + 1) + 32;
            ds[at..at + 4].try_into().unwrap()
        });
        Ok(Self {
            stage,
            party,
            traits,
            trait_row_tails,
            text_workspace,
            selected_original,
            selected: usize::from(selected_original - 1),
            raw_body_remainder: word(ds, 0x48e8),
            raw_face_phase: word(ds, 0x48ea),
            rng: LaleRng {
                state: u32::from_le_bytes(ds[0x94c4..0x94c8].try_into().unwrap()),
            },
            current_counter_low16: word(ds, 0xe74a),
        })
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn original_dos_generator_call_matches_all_27_draws_and_record_bytes() {
        use crate::character_generation::{
            generate_numeric_from_traits, initialize_traits, GenerationTables,
        };
        let root = std::path::Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
        let folder = root.join("analysis/phase-five/character-ui-20261015/character/dos-run7");
        let before = CreationRuntimeSnapshot::parse(
            &std::fs::read(folder.join("SETUP-GENERATOR-BEFORE-DS.BIN")).unwrap(),
            SnapshotStage::GeneratorBoundary,
        )
        .unwrap();
        let after = CreationRuntimeSnapshot::parse(
            &std::fs::read(folder.join("SETUP-GENERATOR-AFTER-DS.BIN")).unwrap(),
            SnapshotStage::GeneratorBoundary,
        )
        .unwrap();
        let tables =
            GenerationTables::from_original_ist(&std::fs::read(root.join("lale/IST.EXE")).unwrap())
                .unwrap();
        let mut rng = before.rng;
        let traits = initialize_traits(
            &before.traits[0],
            before.party.characters[0].race(),
            &tables,
            &mut rng,
        )
        .unwrap();
        let mut numeric = before.party.characters[0].numeric_raw;
        generate_numeric_from_traits(&mut numeric, &traits, &mut rng);
        assert_eq!(numeric, after.party.characters[0].numeric_raw);
        assert_eq!(rng, after.rng);
        assert_eq!(traits, after.traits[0]);
    }

    #[test]
    fn natural_dos_first_setup_matches_full_numeric_traits_rng_and_phase() {
        use crate::character_creation::{Action, AnimationState, CreationCaller};
        use crate::character_generation::GenerationTables;
        let root = std::path::Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
        let folder = root.join("analysis/phase-five/character-ui-20261015/character/dos-run6");
        let before = CreationRuntimeSnapshot::parse(
            &std::fs::read(folder.join("FIRST-SETUP-BEFORE-DS.BIN")).unwrap(),
            SnapshotStage::BeforeFirstSlotSetup,
        )
        .unwrap();
        let after = CreationRuntimeSnapshot::parse(
            &std::fs::read(folder.join("FIRST-SETUP-AFTER-DS.BIN")).unwrap(),
            SnapshotStage::AfterSlotSetup,
        )
        .unwrap();
        assert_eq!((before.raw_body_remainder, before.raw_face_phase), (0, 0));
        let mut rng = before.rng;
        let mut caller = CreationCaller::from_snapshot(
            before.party,
            before.traits,
            before.selected,
            AnimationState {
                body_remainder: before.raw_body_remainder,
                face_phase: before.raw_face_phase,
                drawn_pose: 0,
                face_cell: 0,
            },
            0,
        )
        .unwrap();
        // Placeholder drawn_pose/face_cell/stamp are overwritten by setup; this
        // does not claim those missing stack/pixel fields were observed in DS.
        let tables =
            GenerationTables::from_original_ist(&std::fs::read(root.join("lale/IST.EXE")).unwrap())
                .unwrap();
        caller
            .dispatch(
                Action::SetupSlot,
                after.current_counter_low16,
                &tables,
                &mut rng,
            )
            .unwrap();
        assert_eq!(rng, after.rng);
        assert_eq!(caller.party, after.party);
        assert_eq!(caller.traits, after.traits);
        assert_eq!(caller.animation.body_remainder, after.raw_body_remainder);
        assert_eq!(caller.animation.face_phase, after.raw_face_phase);
    }

    #[test]
    fn original_one_based_strides_preserve_raw_state_and_gaps() {
        let mut ds = vec![0u8; 65536];
        ds[0x2898..0x289a].copy_from_slice(&4u16.to_le_bytes());
        ds[0x94c4..0x94c8].copy_from_slice(&0xfedcba98u32.to_le_bytes());
        ds[0x48e8..0x48ea].copy_from_slice(&0xffffu16.to_le_bytes());
        ds[0x48ea..0x48ec].copy_from_slice(&3u16.to_le_bytes());
        ds[0xe74a..0xe74c].copy_from_slice(&0x1234u16.to_le_bytes());
        for slot in 1..=4 {
            let n = 0x99a6 + 92 * slot;
            ds[n..n + 92].fill(slot as u8);
            let text = 0x9c26 + 148 * slot;
            ds[text..text + 148].fill((slot + 10) as u8);
            ds[text + 36] = 0;
            let traits = 0x9b72 + 36 * slot;
            for j in 0..16 {
                ds[traits + 2 * j..traits + 2 * j + 2]
                    .copy_from_slice(&(slot as u16 * 100 + j as u16).to_le_bytes());
            }
            ds[traits + 32..traits + 36].fill((slot + 20) as u8);
        }
        let s = CreationRuntimeSnapshot::parse(&ds, SnapshotStage::BeforeFirstSlotSetup).unwrap();
        assert_eq!(s.selected, 3);
        assert_eq!(s.rng.state, 0xfedcba98);
        assert_eq!(s.raw_body_remainder, 0xffff);
        assert_eq!(s.raw_face_phase, 3);
        assert_eq!(s.current_counter_low16, 0x1234);
        for i in 0..4 {
            assert_eq!(s.party.characters[i].numeric_raw, [i as u8 + 1; 92]);
            assert_eq!(s.party.characters[i].auxiliary_raw, [i as u8 + 11; 37]);
            assert_eq!(s.traits[i][15], (i as u16 + 1) * 100 + 15);
            assert_eq!(s.trait_row_tails[i], [i as u8 + 21; 4]);
            assert_eq!(s.text_workspace[i][37..111], [i as u8 + 11; 74]);
        }
        assert_eq!(
            CreationRuntimeSnapshot::parse(&ds[..65535], s.stage).unwrap(),
            s
        );
        assert!(CreationRuntimeSnapshot::parse(&ds[..65534], s.stage).is_err());
        ds[0x2898..0x289a].copy_from_slice(&5u16.to_le_bytes());
        assert!(CreationRuntimeSnapshot::parse(&ds, s.stage).is_err());
    }
}
