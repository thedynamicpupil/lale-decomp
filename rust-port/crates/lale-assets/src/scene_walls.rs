//! Original1662:3969 (IST file2bd99..2c0f4) wall/door record dispatch.
//! Live descriptor words and resource-specific generated/sidecar tables are
//! explicit inputs. This does not assign guessed resource or geometry values.
use crate::{
    pc_map::PcMap,
    scene_geometry::{project, ProjectedDraw, ProjectionRecord},
    Error,
};

fn word(ds: &[u8], at: usize) -> Result<u16, Error> {
    let b = ds
        .get(at..at + 2)
        .ok_or_else(|| Error(format!("missing wall DS word {at:04x}")))?;
    Ok(u16::from_le_bytes([b[0], b[1]]))
}

/// Resolve an exact original Wall command's cell byte offset. `tables[r]` is
/// the live table referenced by descriptor DS:b3ec+14*r,+6/+8, not necessarily
/// a shared fallback. The caller resolves those actual far-pointer aliases.
pub fn expand_wall(
    ds: &[u8],
    map: &PcMap<'_>,
    geometry: u16,
    cell_offset: u16,
    direction: u8,
    destination: u8,
    tables: &[&[ProjectionRecord]],
) -> Result<Option<ProjectedDraw>, Error> {
    if cell_offset % 15 != 0 {
        return Err(Error("unaligned original wall cell offset".into()));
    }
    let index = usize::from(cell_offset / 15);
    let width = usize::from(map.width());
    let cell = map
        .cell(index % width, index / width)
        .ok_or_else(|| Error("original wall cell outside map".into()))?;
    expand_cell(ds, cell, geometry, direction, destination, tables)
}

pub fn expand_cell(
    ds: &[u8],
    cell: &[u8; 15],
    geometry: u16,
    direction: u8,
    destination: u8,
    tables: &[&[ProjectionRecord]],
) -> Result<Option<ProjectedDraw>, Error> {
    if direction > 3 {
        return Err(Error("original wall direction outside0..3".into()));
    }
    let state = cell[usize::from(direction) * 2 + 1];
    if state == 0 {
        return Ok(None);
    }
    let selector = cell[usize::from(direction) * 2];
    if !(1..=4).contains(&selector) {
        return Err(Error(
            "original wall selector outside established loader slots".into(),
        ));
    }
    let mut resource = usize::from(selector - 1);
    if word(ds, 0x9f10 + resource * 2)? == 0 {
        return Ok(None);
    }
    match state {
        1 | 3 => {}
        2 => resource += 4,
        _ => return Ok(None),
    }
    let table = tables
        .get(resource)
        .ok_or_else(|| Error("missing original resource geometry table".into()))?;
    let mut record = *table
        .get(usize::from(geometry))
        .ok_or_else(|| Error("wall geometry index outside original table".into()))?;
    let directional = state != 3 && word(ds, 0xb3ec + resource * 14)? != 0;
    let facing = *ds
        .get(0xb9f0)
        .ok_or_else(|| Error("missing original wall facing".into()))?;
    let temporary_flip = directional && direction > 1 && direction == facing;
    if temporary_flip {
        let other = match geometry {
            13 => 17,
            17 => 13,
            22 => 24,
            24 => 22,
            _ => geometry,
        };
        let source = table
            .get(usize::from(other))
            .ok_or_else(|| Error("wall remap index outside original table".into()))?;
        record.0[4] = source.0[4];
        record.0[5] = source.0[5];
    }
    if temporary_flip || state == 3 {
        // Original saves byte+16, ORs word+16 with1, then restores the byte as
        // a zero-extended word. Reject an unmodeled lasting high-byte mutation.
        if record.0[8] > 255 {
            return Err(Error(
                "wall temporary flags would alter persistent high byte".into(),
            ));
        }
        if temporary_flip || geometry == 23 {
            record.0[8] |= 1;
        }
    }
    Ok(project(
        record,
        geometry,
        (resource as u8).wrapping_add(24),
        destination,
        [word(ds, 0x3b09)?, word(ds, 0x3b0b)?],
        facing,
        directional,
    ))
}

#[cfg(test)]
mod tests {
    use super::*;
    fn ds() -> Vec<u8> {
        let mut ds = vec![0; 65536];
        ds[0x9f10] = 3;
        ds[0xb9f0] = 2;
        ds
    }
    fn table() -> Vec<ProjectionRecord> {
        (0..37)
            .map(|i| ProjectionRecord([10, 20, 30, 40, 100 + i, 200 + i, 50, 60, 0]))
            .collect()
    }
    #[test]
    fn state2_selects_door_resource_four_slots_after_wall() {
        let ds = ds();
        let t = table();
        let tables = vec![t.as_slice(); 8];
        let mut cell = [0; 15];
        cell[0] = 1;
        cell[1] = 2;
        assert_eq!(
            expand_cell(&ds, &cell, 0, 0, 66, &tables).unwrap(),
            Some(ProjectedDraw::Rect([
                100, 200, 30, 40, 10, 20, 28, 66, 0x341
            ]))
        );
    }
    #[test]
    fn matching_back_direction_remaps_source_and_reflects() {
        let mut ds = ds();
        ds[0xb3ec] = 1;
        let t = table();
        let tables = vec![t.as_slice(); 8];
        let mut cell = [0; 15];
        cell[4] = 1;
        cell[5] = 1;
        assert_eq!(
            expand_cell(&ds, &cell, 13, 2, 66, &tables).unwrap(),
            Some(ProjectedDraw::Rect([
                117, 217, 30, 40, 10, 20, 24, 66, 0x3c4
            ]))
        );
        assert_eq!(t[13].0[4], 113); // input table restored/unmodified
    }
    #[test]
    fn state3_uses_nondirectional_geometry23_temporary_mirror() {
        let mut ds = ds();
        ds[0xb3ec] = 1;
        let t = table();
        let tables = vec![t.as_slice(); 8];
        let mut cell = [0; 15];
        cell[4] = 1;
        cell[5] = 3;
        assert_eq!(
            expand_cell(&ds, &cell, 23, 2, 66, &tables).unwrap(),
            Some(ProjectedDraw::Rect([
                123, 223, 30, 40, 10, 20, 24, 66, 0x3c4
            ]))
        );
    }
    #[test]
    fn ordinary_directional_path_adds_original235_only_at_selected_indices() {
        let mut ds = ds();
        ds[0xb3ec] = 1;
        ds[0xb9f0] = 0;
        let t = table();
        let tables = vec![t.as_slice(); 8];
        let mut cell = [0; 15];
        cell[0] = 1;
        cell[1] = 1;
        assert_eq!(
            expand_cell(&ds, &cell, 9, 0, 66, &tables).unwrap(),
            Some(ProjectedDraw::Rect([
                344, 209, 30, 40, 10, 20, 24, 66, 0x341
            ]))
        );
    }

    #[test]
    fn original_remap_jump_table_selects_only_four_geometry_indices() {
        let bytes = std::fs::read(concat!(
            env!("CARGO_MANIFEST_DIR"),
            "/src/",
            "../../../../analysis/phase-five/door-20261016/walls/wall-remap-original.bin"
        ))
        .expect("private research fixture required; see docs/DEVELOPMENT.md");
        let offsets: Vec<u16> = bytes
            .chunks_exact(2)
            .map(|b| u16::from_le_bytes([b[0], b[1]]))
            .collect();
        assert_eq!(
            offsets,
            [
                0x3ac4, 0x3ae0, 0x3ae0, 0x3ae0, 0x3acb, 0x3ae0, 0x3ae0, 0x3ae0, 0x3ae0, 0x3ad2,
                0x3ae0, 0x3ad9
            ]
        );
    }
}
