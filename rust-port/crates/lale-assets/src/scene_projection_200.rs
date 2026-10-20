//! Loader for the privately retained 200x200 projection records.
//! The original floating-point generator is not reconstructed yet. Its captured
//! output is deliberately external data, never source or a compiled-in asset.
use crate::{scene_geometry::ProjectionRecord, Error};
use std::{path::PathBuf, sync::OnceLock};

pub fn parse_200(bytes: &[u8]) -> Result<[ProjectionRecord; 37], Error> {
    if bytes.len() != 37 * 18 {
        return Err(Error(
            "200x200 projection requires exactly 37 records of 18 bytes".into(),
        ));
    }
    let records: Vec<_> = bytes
        .chunks_exact(18)
        .map(ProjectionRecord::parse)
        .collect::<Result<_, _>>()?;
    Ok(records.try_into().expect("validated record count"))
}

/// LALE_PROJECTION_200 overrides the private local fixture path. Missing data
/// is an explicit error; no approximate projection is substituted.
pub fn fallback_200() -> Result<&'static [ProjectionRecord; 37], Error> {
    static RECORDS: OnceLock<Result<[ProjectionRecord; 37], String>> = OnceLock::new();
    RECORDS
        .get_or_init(|| {
            let path = std::env::var_os("LALE_PROJECTION_200")
                .map(PathBuf::from)
                .unwrap_or_else(|| {
                    PathBuf::from(env!("CARGO_MANIFEST_DIR"))
                        .join("../../../runtime/native-data/projection-200.bin")
                });
            let bytes = std::fs::read(&path).map_err(|e| {
                format!(
                    "private projection data {}: {e}; see docs/DEVELOPMENT.md",
                    path.display()
                )
            })?;
            parse_200(&bytes).map_err(|e| e.to_string())
        })
        .as_ref()
        .map_err(|e| Error(e.clone()))
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn projection_parser_requires_exact_extent_and_preserves_little_endian_words() {
        assert!(parse_200(&[]).is_err());
        assert!(parse_200(&vec![0; 667]).is_err());
        let bytes: Vec<u8> = (0..333u16).flat_map(u16::to_le_bytes).collect();
        let records = parse_200(&bytes).unwrap();
        assert_eq!(records[0].0, [0, 1, 2, 3, 4, 5, 6, 7, 8]);
        assert_eq!(records[36].0[8], 332);
    }
}
