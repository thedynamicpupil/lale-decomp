//! Native creation-party checkpoints. Exact664-byte original party layout;
//! these are not general gameplay saves and never replace DOS runtime files.
use crate::{
    character_data::Party,
    party_workspace::{original_race_labels, PartyWorkspace},
};
use std::{
    error::Error,
    fs::OpenOptions,
    io::Write,
    path::{Path, PathBuf},
};
pub fn validate(party: &Party, exe: &[u8]) -> Result<(), Box<dyn Error>> {
    for c in &party.characters {
        if c.name().is_empty()
            || !(1..=8).contains(&c.race())
            || !(1..=2).contains(&c.sex())
            || !(1..=16).contains(&c.appearance())
        {
            return Err("party contains an incomplete character".into());
        }
        if c.word(0x38) != c.word(0x0a)
            || c.word(0x3a) != c.word(0x0c)
            || c.auxiliary_raw != *b"100000000000000000000000000000000000\0"
        {
            return Err(
                "party is not creation-prepared; cannot treat as a new-party checkpoint".into(),
            );
        }
    }
    let mut workspace = PartyWorkspace {
        text: [[0; 148]; 4],
        numeric: [[0; 92]; 4],
    };
    workspace.read_party(party, &original_race_labels(exe)?)?;
    if workspace.serialized_snapshot() != *party {
        return Err("original party reader roundtrip mismatch".into());
    }
    Ok(())
}
pub fn save(root: &Path, party: &Party) -> Result<PathBuf, Box<dyn Error>> {
    validate(party, &std::fs::read(root.join("lale/IST.EXE"))?)?;
    let mut directory = root.canonicalize()?;
    for component in ["runtime", "native", "parties"] {
        directory.push(component);
        if directory.exists() {
            if std::fs::symlink_metadata(&directory)?
                .file_type()
                .is_symlink()
                || !directory.is_dir()
            {
                return Err("native party store path is not an owned directory".into());
            }
        } else {
            std::fs::create_dir(&directory)?;
        }
    }
    let stamp = std::time::SystemTime::now()
        .duration_since(std::time::UNIX_EPOCH)?
        .as_nanos();
    let path = directory.join(format!("party-{stamp}-{}.dat", std::process::id()));
    let mut file = OpenOptions::new()
        .write(true)
        .create_new(true)
        .open(&path)?;
    file.write_all(&party.original_bytes())?;
    file.sync_all()?;
    drop(file);
    if Party::parse(&std::fs::read(&path)?)? != *party {
        return Err("native checkpoint reread mismatch".into());
    }
    Ok(path)
}
pub fn load(root: &Path, path: &Path) -> Result<Party, Box<dyn Error>> {
    let party = Party::parse(&std::fs::read(path)?)?;
    validate(&party, &std::fs::read(root.join("lale/IST.EXE"))?)?;
    Ok(party)
}
#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn prepared_original_layout_roundtrips_and_rejects_unnamed_slots() {
        let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
        let exe = std::fs::read(root.join("lale/IST.EXE")).unwrap();
        let party = crate::character_data::prepare_original_creation_records(
            &Party::parse(&std::fs::read(root.join("lale/GRPHAZIR.DAT")).unwrap()).unwrap(),
        );
        validate(&party, &exe).unwrap();
        let mut invalid = party;
        invalid.characters[3].name_raw[0] = 0;
        assert!(validate(&invalid, &exe).is_err());
    }
}
