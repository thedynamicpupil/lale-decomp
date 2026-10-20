//! Original 1662:3471/35ff geometry-record consumers (IST file2b8a1..2bc1d).
//! This translates already-generated records; it does not invent projection
//! coordinates or certify the floating-point table generator.
use crate::Error;

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct ProjectionRecord(pub [u16; 9]);

impl ProjectionRecord {
    pub fn parse(bytes: &[u8]) -> Result<Self, Error> {
        let bytes: &[u8; 18] = bytes
            .try_into()
            .map_err(|_| Error("projection record must contain18 bytes".into()))?;
        Ok(Self(std::array::from_fn(|i| {
            u16::from_le_bytes([bytes[2 * i], bytes[2 * i + 1]])
        })))
    }
}

/// Slot words in DOS have unspecified high bytes. Native commands retain only
/// the actual byte selectors; callback segments are resolved by the host.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum ProjectedDraw {
    Rect([u16; 9]),
    Scaled([u16; 11]),
}

/// `directional_source` selects35ff;3471 uses identical flag/extent handling
/// without the235-column adjustment. All coordinate additions wrap as16-bit.
pub fn project(
    record: ProjectionRecord,
    index: u16,
    source: u8,
    destination: u8,
    origin: [u16; 2],
    facing: u8,
    directional_source: bool,
) -> Option<ProjectedDraw> {
    if source == 0 {
        return None;
    }
    let [x, y, w, h, sx, sy, sw, sh, flags] = record.0;
    let sx = sx.wrapping_add(
        if directional_source
            && matches!(index, 9 | 10 | 19 | 20 | 25 | 26)
            && matches!(facing % 4, 0 | 3)
        {
            235
        } else {
            0
        },
    );
    let dx = x.wrapping_add(origin[0]);
    let dy = y.wrapping_add(origin[1]);
    // Preserve branch precedence: flags=0 -> normal rect; bits0+1 ->
    // reflected scale; bit0 alone -> reflected rect; bit1 -> normal scale.
    // A nonzero flags word with neither low bit produces no call.
    if flags == 0 || flags & 3 == 1 {
        Some(ProjectedDraw::Rect([
            sx,
            sy,
            w,
            h,
            dx,
            dy,
            u16::from(source),
            u16::from(destination),
            if flags == 0 { 0x341 } else { 0x3c4 },
        ]))
    } else if flags & 2 != 0 {
        Some(ProjectedDraw::Scaled([
            sx,
            sy,
            sw,
            sh,
            dx,
            dy,
            w,
            h,
            u16::from(source),
            u16::from(destination),
            flags & 1,
        ]))
    } else {
        None
    }
}
