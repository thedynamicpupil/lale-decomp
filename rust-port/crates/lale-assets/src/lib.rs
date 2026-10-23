//! Instruction-backed FLiB parsing and CMP decoding.
//! See analysis/ASSET_LOADING_MAP.md and GRAPHICS_SYSTEM.md for DOS provenance.
use lale_core::Dimensions;
use std::fmt;

pub mod acquisition_panel;
pub mod amf;
pub mod combat_data;
pub mod combat_initialization;
pub mod combat_party_tables;
pub mod combat_prepare;
pub mod combat_render;
pub mod combat_terrain;
pub mod combat_ui;
pub mod indexed_blit;
pub mod original_scale;
pub mod pc_map;
pub mod scene_commands;
pub mod scene_context;
pub mod scene_crop;
pub mod scene_door;
pub mod scene_geometry;
pub mod scene_layers;
pub mod scene_near;
pub mod scene_projection_200;
pub mod scene_render;
pub mod scene_resources;
pub mod scene_walls;
pub mod seq;
pub mod seq_pcm;
pub mod seq_timing;
pub mod sound;
pub mod world_events;
pub mod world_illustration;
pub mod world_inventory;
pub mod world_panel;
pub mod world_ui;

pub const MAX_PIXELS: usize = 8 * 1024 * 1024;

#[derive(Debug)]
pub struct Error(pub String);
impl fmt::Display for Error {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        f.write_str(&self.0)
    }
}
impl std::error::Error for Error {}
fn error(message: &str) -> Error {
    Error(message.into())
}
fn u32_at(data: &[u8], offset: usize) -> Result<usize, Error> {
    let end = offset
        .checked_add(4)
        .ok_or_else(|| error("offset overflow"))?;
    let bytes: [u8; 4] = data
        .get(offset..end)
        .ok_or_else(|| error("truncated u32"))?
        .try_into()
        .map_err(|_| error("invalid u32"))?;
    usize::try_from(u32::from_le_bytes(bytes)).map_err(|_| error("u32 exceeds host address range"))
}
fn name(data: &[u8]) -> Result<&str, Error> {
    let end = data
        .iter()
        .position(|&b| b == 0)
        .ok_or_else(|| error("unterminated name"))?;
    let bytes = &data[..end];
    if bytes.is_empty() || !bytes.is_ascii() {
        return Err(error("unsupported member name"));
    }
    std::str::from_utf8(bytes).map_err(|_| error("invalid name encoding"))
}

#[derive(Debug)]
pub struct Member<'a> {
    pub name: &'a str,
    pub offset: usize,
    pub payload: &'a [u8],
}
#[derive(Debug)]
pub struct Flib<'a> {
    pub members: Vec<Member<'a>>,
}
impl<'a> Flib<'a> {
    pub fn parse(data: &'a [u8]) -> Result<Self, Error> {
        if data.get(..4) != Some(b"FLiB") {
            return Err(error("invalid FLiB magic"));
        }
        let count = u32_at(data, 4)?;
        let table = u32_at(data, 8)?;
        let directory_bytes = count
            .checked_mul(65)
            .ok_or_else(|| error("directory size overflow"))?;
        if table < 12 || table.checked_add(directory_bytes) != Some(data.len()) {
            return Err(error("directory extent mismatch"));
        }
        let mut members: Vec<Member<'a>> = Vec::new();
        let mut cursor = 12usize;
        for ordinal in 0..count {
            let start = table + ordinal * 65;
            let row = &data[start..start + 65];
            if &row[..4] != b"FiLE" {
                return Err(error("invalid FiLE magic"));
            }
            let member_name = name(&row[4..36])?;
            if member_name != name(&row[36..53])? {
                return Err(error("name regions differ"));
            }
            let offset = u32_at(row, 53)?;
            let length = u32_at(row, 57)?;
            if length != u32_at(row, 61)? || cursor.checked_add(65) != Some(offset) {
                return Err(error("member record mismatch"));
            }
            let end = offset
                .checked_add(length)
                .ok_or_else(|| error("member size overflow"))?;
            if end > table || data.get(cursor..offset) != Some(row) {
                return Err(error("member bounds or duplicate header mismatch"));
            }
            if members
                .iter()
                .any(|m| m.name.eq_ignore_ascii_case(member_name))
            {
                return Err(error("ambiguous duplicate name"));
            }
            members.push(Member {
                name: member_name,
                offset,
                payload: &data[offset..end],
            });
            cursor = end;
        }
        if cursor != table {
            return Err(error("unexplained bytes before directory"));
        }
        Ok(Self { members })
    }
    pub fn member(&self, query: &str) -> Option<&Member<'a>> {
        self.members
            .iter()
            .find(|m| m.name.eq_ignore_ascii_case(query))
    }
}

#[derive(Debug)]
pub struct IndexedImage {
    pub dimensions: Dimensions,
    pub indices: Vec<u8>,
}
pub fn decode_cmp(payload: &[u8]) -> Result<IndexedImage, Error> {
    let image = decode_cmp_stream(payload)?;
    let expected = image.dimensions.pixel_count(MAX_PIXELS).map_err(error)?;
    if image.indices.len() != expected {
        return Err(Error(format!(
            "dimension discrepancy: {} decoded indices, {expected} expected",
            image.indices.len()
        )));
    }
    Ok(image)
}

/// Decode every packet without discarding excess output. Dimensions remain the
/// original header; this does not certify that the stream is a valid rectangle.
/// The strict inspector continues to use `decode_cmp`.
pub fn decode_cmp_stream(payload: &[u8]) -> Result<IndexedImage, Error> {
    let header = payload
        .get(..4)
        .ok_or_else(|| error("truncated CMP header"))?;
    let dimensions = Dimensions {
        width: u16::from_le_bytes([header[0], header[1]]),
        height: u16::from_le_bytes([header[2], header[3]]),
    };
    let expected = dimensions.pixel_count(MAX_PIXELS).map_err(error)?;
    let mut indices = Vec::with_capacity(expected);
    let mut cursor = 4usize;
    while cursor < payload.len() {
        let control = payload[cursor];
        cursor += 1;
        if control <= 128 {
            let end = cursor
                .checked_add(usize::from(control))
                .ok_or_else(|| error("packet overflow"))?;
            let literal = payload
                .get(cursor..end)
                .ok_or_else(|| error("truncated literal packet"))?;
            if indices.len() + literal.len() > MAX_PIXELS {
                return Err(error("decode budget exceeded"));
            }
            indices.extend_from_slice(literal);
            cursor = end;
        } else {
            let value = *payload
                .get(cursor)
                .ok_or_else(|| error("truncated repeat packet"))?;
            cursor += 1;
            let end = indices.len() + usize::from(control - 128);
            if end > MAX_PIXELS {
                return Err(error("decode budget exceeded"));
            }
            indices.resize(end, value);
        }
    }
    Ok(IndexedImage {
        dimensions,
        indices,
    })
}

pub struct Palette6 {
    pub triplets: Vec<[u8; 3]>,
}
impl Palette6 {
    pub fn parse(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.is_empty()
            || bytes.len() % 3 != 0
            || bytes.len() > 768
            || bytes.iter().any(|&b| b > 63)
        {
            return Err(error("unsupported six-bit palette"));
        }
        Ok(Self {
            triplets: bytes.chunks_exact(3).map(|c| [c[0], c[1], c[2]]).collect(),
        })
    }
    /// Inspection convention; display scaling has not been calibrated against DOSBox.
    pub fn preview_rgb(&self, index: u8) -> Result<[u8; 3], Error> {
        let channels = self
            .triplets
            .get(usize::from(index))
            .ok_or_else(|| error("index outside palette"))?;
        Ok(channels.map(|v| (v << 2) | (v >> 4)))
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn packet_limits_and_malformed_inputs() {
        let mut literal = vec![128, 0, 1, 0, 128];
        literal.extend(0u8..128);
        assert_eq!(
            decode_cmp(&literal).unwrap().indices,
            (0u8..128).collect::<Vec<_>>()
        );
        assert_eq!(
            decode_cmp(&[127, 0, 1, 0, 255, 42]).unwrap().indices,
            vec![42; 127]
        );
        assert!(decode_cmp(&[1, 0, 1, 0, 129]).is_err());
        assert!(decode_cmp(&[2, 0, 1, 0, 2, 1]).is_err());
        assert!(decode_cmp(&[1, 0, 1, 0, 130, 7])
            .unwrap_err()
            .0
            .contains("discrepancy"));
        assert_eq!(
            decode_cmp(&[1, 0, 1, 0, 0, 129, 3]).unwrap().indices,
            vec![3]
        );
    }
    #[test]
    fn malformed_directories_fail_without_panicking() {
        for bytes in [
            b"FLiB".as_slice(),
            b"\0\0\0\0",
            b"FLiB\xff\xff\xff\xff\x0c\0\0\0",
        ] {
            assert!(Flib::parse(bytes).is_err());
        }
        assert!(Palette6::parse(&[64, 0, 0]).is_err());
        assert!(Palette6::parse(&[0, 0]).is_err());
        assert!(Palette6::parse(&[0, 0, 0]).unwrap().preview_rgb(1).is_err());
    }
}

pub mod pcs;
