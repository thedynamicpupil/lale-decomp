//! Original1662:4f55 and56e0: the depth1 floor/ceiling/front-wall pass and
//! subsequent side-wall pass. Coordinates are original live generated words.
use crate::{
    pc_map::PcMap,
    scene_layers::{sampled_cell, LayerCommand, ViewState},
    Error,
};

fn word(ds: &[u8], at: usize) -> Result<i16, Error> {
    let b = ds
        .get(at..at + 2)
        .ok_or_else(|| Error(format!("missing scene DS word{at:04x}")))?;
    Ok(i16::from_le_bytes([b[0], b[1]]))
}
fn wall(
    out: &mut Vec<LayerCommand>,
    geometry: u16,
    cell_offset: u16,
    direction: u8,
    destination: u8,
) {
    out.push(LayerCommand::Wall {
        geometry,
        cell_offset,
        direction: direction % 4,
        destination,
    });
}

pub fn near_layer_4f55(
    map: &PcMap<'_>,
    state: ViewState,
    ds: &[u8],
    destination: u8,
) -> Result<Vec<LayerCommand>, Error> {
    if state.facing >= 4 {
        return Err(Error("scene facing must be0..3".into()));
    }
    let pattern = (state.facing & 1) | (((state.x as u8).wrapping_add(state.y as u8) & 1) << 1);
    let mut out = Vec::new();
    for (lateral, floor_ret, ceil_ret) in [
        (-2, 0x5096, 0x5134),
        (-1, 0x51af, 0x524d),
        (2, 0x5389, 0x542e),
        (1, 0x54ad, 0x554f),
    ] {
        let Some((offset, cell)) = sampled_cell(map, state, 1, lateral) else {
            continue;
        };
        for ceiling in [false, true] {
            if ceiling && cell[8] == 0 {
                continue;
            }
            let (sx, sy, w, h, dx, dy, source, callback, ret) = if ceiling {
                let w = word(ds, 0xb964)?;
                let h = word(ds, 0xb966)?;
                (
                    word(ds, 0xb960)?,
                    word(ds, 0xb962)?.wrapping_sub(h),
                    w,
                    h,
                    word(ds, 0xb958)?.wrapping_add(lateral.wrapping_mul(w)),
                    word(ds, 0xb95a)?.wrapping_sub(h),
                    cell[8]
                        .wrapping_add(pattern.wrapping_mul(2))
                        .wrapping_add(55),
                    if lateral < 0 { 0x1307 } else { 0x1261 },
                    ceil_ret,
                )
            } else {
                let w = word(ds, 0xb92e)?;
                (
                    word(ds, 0xb92a)?,
                    word(ds, 0xb92c)?,
                    w,
                    word(ds, 0xb930)?,
                    word(ds, 0xb922)?.wrapping_add(lateral.wrapping_mul(w)),
                    word(ds, 0xb924)?,
                    cell[9]
                        .wrapping_add(pattern.wrapping_mul(5))
                        .wrapping_add(35),
                    if lateral < 0 { 0x1185 } else { 0x10f1 },
                    floor_ret,
                )
            };
            let boundary =
                word(ds, 0x3b09)?.wrapping_add(if lateral > 0 { word(ds, 0x3aff)? } else { 0 });
            out.push(LayerCommand::Cropped {
                callee_order: [
                    sx as u16,
                    sy as u16,
                    w as u16,
                    h as u16,
                    dx as u16,
                    dy as u16,
                    boundary as u16,
                    (lateral.abs() * 2 - 1) as u16,
                    u16::from(source),
                    u16::from(destination),
                    callback,
                    0x28,
                ],
                return_offset: ret,
            });
        }
        wall(
            &mut out,
            (lateral + 15) as u16,
            offset,
            state.facing,
            destination,
        );
    }
    if let Some((offset, cell)) = sampled_cell(map, state, 1, 0) {
        let w = word(ds, 0xb92e)?;
        out.push(LayerCommand::Rect {
            callee_order: [
                word(ds, 0xb92a)?.wrapping_sub(w) as u16,
                word(ds, 0xb92c)? as u16,
                w.wrapping_mul(3) as u16,
                word(ds, 0xb930)? as u16,
                word(ds, 0xb922)?.wrapping_sub(w) as u16,
                word(ds, 0xb924)? as u16,
                u16::from(
                    cell[9]
                        .wrapping_add(pattern.wrapping_mul(5))
                        .wrapping_add(35),
                ),
                u16::from(destination),
                0x341,
                0x1e0,
            ],
            return_offset: 0x562d,
        });
        if cell[8] != 0 {
            let w = word(ds, 0xb964)?;
            let h = word(ds, 0xb966)?;
            out.push(LayerCommand::Rect {
                callee_order: [
                    word(ds, 0xb960)?.wrapping_sub(w) as u16,
                    word(ds, 0xb962)?.wrapping_sub(h).wrapping_add(1) as u16,
                    w.wrapping_mul(3) as u16,
                    h as u16,
                    word(ds, 0xb958)?.wrapping_sub(w) as u16,
                    word(ds, 0xb95a)?.wrapping_sub(h).wrapping_add(1) as u16,
                    u16::from(
                        cell[8]
                            .wrapping_add(pattern.wrapping_mul(2))
                            .wrapping_add(55),
                    ),
                    u16::from(destination),
                    0x341,
                    0x1e0,
                ],
                return_offset: 0x56bb,
            });
        }
        wall(&mut out, 15, offset, state.facing, destination);
    }
    Ok(out)
}

pub fn near_sides_56e0(
    map: &PcMap<'_>,
    state: ViewState,
    destination: u8,
) -> Result<Vec<LayerCommand>, Error> {
    if state.facing >= 4 {
        return Err(Error("scene facing must be0..3".into()));
    }
    let mut out = Vec::new();
    for (lateral, geometry, turn) in [(-1, 18, 3), (1, 21, 1)] {
        if let Some((offset, _)) = sampled_cell(map, state, 1, lateral) {
            wall(&mut out, geometry, offset, state.facing + turn, destination);
        }
    }
    if let Some((offset, cell)) = sampled_cell(map, state, 1, 0) {
        wall(&mut out, 20, offset, state.facing + 1, destination);
        wall(&mut out, 19, offset, state.facing + 3, destination);
        for (turn, mask) in [(3, 4), (1, 8)] {
            let occupied = cell[usize::from((state.facing + turn) % 4) * 2 + 1] != 0;
            out.push(LayerCommand::MaskWord {
                offset: 0x3af9,
                and_mask: if occupied { 0xffff } else { !mask },
                or_mask: if occupied { mask } else { 0 },
            });
        }
    }
    Ok(out)
}
