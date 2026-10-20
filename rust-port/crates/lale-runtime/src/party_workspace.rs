//! Pure original167c:1932 party re-read boundary, without filesystem IO.
//! Working text stride148 differs from serialized name/auxiliary pairs74.
#![allow(dead_code)]
use crate::character_data::Party;

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct PartyWorkspace {
    pub text: [[u8; 148]; 4],
    pub numeric: [[u8; 92]; 4],
}

/// Original DS2638+11*race cells, including the first terminating NUL.
pub fn original_race_labels(exe: &[u8]) -> Result<[Vec<u8>; 8], String> {
    let mut labels = Vec::with_capacity(8);
    for race in 1..=8 {
        let at = 0x19200 + 0x2638 + 11 * race;
        let cell = exe
            .get(at..at + 11)
            .ok_or("truncated original race table")?;
        let end = cell
            .iter()
            .position(|&b| b == 0)
            .ok_or("unterminated original race label")?;
        labels.push(cell[..=end].to_vec());
    }
    Ok(labels.try_into().unwrap())
}

impl PartyWorkspace {
    /// Caller supplies the existing workspace: the DOS reader does not clear it.
    /// Safe host validation precedes writes; invalid indices are not emulated as
    /// original unchecked memory access. Labels include their original NUL.
    pub fn read_party(&mut self, party: &Party, labels: &[Vec<u8>; 8]) -> Result<(), String> {
        let mut selected = Vec::with_capacity(4);
        for c in &party.characters {
            let race = c.race();
            if !(1..=8).contains(&race) {
                return Err("unsupported race in original party reader".into());
            }
            let label = &labels[usize::from(race - 1)];
            if label.is_empty()
                || label.len() > 37
                || label.last() != Some(&0)
                || label[..label.len() - 1].contains(&0)
            {
                return Err("invalid terminated race label".into());
            }
            selected.push(label);
        }
        // Original copies four name/auxiliary pairs, then four numeric blocks,
        // then strcpy-derived race labels. Gaps and string tails survive.
        for (i, c) in party.characters.iter().enumerate() {
            self.text[i][..37].copy_from_slice(&c.name_raw);
            self.text[i][111..148].copy_from_slice(&c.auxiliary_raw);
        }
        for (i, c) in party.characters.iter().enumerate() {
            self.numeric[i] = c.numeric_raw;
        }
        for (i, label) in selected.into_iter().enumerate() {
            self.text[i][74..74 + label.len()].copy_from_slice(label);
        }
        Ok(())
    }

    /// Original writer's byte layout only; no pre-write mutation or file write.
    pub fn serialized_snapshot(&self) -> Party {
        Party {
            characters: std::array::from_fn(|i| crate::character_data::Character {
                name_raw: self.text[i][..37].try_into().unwrap(),
                auxiliary_raw: self.text[i][111..148].try_into().unwrap(),
                numeric_raw: self.numeric[i],
            }),
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::character_data::prepare_original_creation_records;
    fn root() -> std::path::PathBuf {
        std::path::Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..")
    }
    #[test]
    fn supplied_and_prepared_parties_reread_exactly_without_clearing_workspace() {
        let labels =
            original_race_labels(&std::fs::read(root().join("lale/IST.EXE")).unwrap()).unwrap();
        for filename in ["GRP.DAT", "GRPHAZIR.DAT"] {
            let bytes = std::fs::read(root().join("lale").join(filename)).unwrap();
            let source = Party::parse(&bytes).unwrap();
            for party in [source.clone(), prepare_original_creation_records(&source)] {
                let mut workspace = PartyWorkspace {
                    text: [[0xa5; 148]; 4],
                    numeric: [[0xcc; 92]; 4],
                };
                workspace.read_party(&party, &labels).unwrap();
                assert_eq!(
                    workspace.serialized_snapshot().original_bytes(),
                    party.original_bytes()
                );
                for (i, c) in party.characters.iter().enumerate() {
                    let label = &labels[usize::from(c.race() - 1)];
                    assert_eq!(&workspace.text[i][37..74], &[0xa5; 37]);
                    assert_eq!(&workspace.text[i][74..74 + label.len()], label);
                    assert!(workspace.text[i][74 + label.len()..111]
                        .iter()
                        .all(|&b| b == 0xa5));
                    assert_eq!(workspace.numeric[i], c.numeric_raw);
                }
            }
        }
    }
    #[test]
    fn invalid_race_cannot_partially_modify_host_workspace() {
        let mut party = Party::parse(&std::fs::read(root().join("lale/GRP.DAT")).unwrap()).unwrap();
        party.characters[3].numeric_raw[2..4].copy_from_slice(&9u16.to_le_bytes());
        let mut workspace = PartyWorkspace {
            text: [[0x5a; 148]; 4],
            numeric: [[0xc3; 92]; 4],
        };
        let before = workspace.clone();
        let labels = std::array::from_fn(|_| b"x\0".to_vec());
        assert!(workspace.read_party(&party, &labels).is_err());
        assert_eq!(workspace, before);
    }
}
