//! Native original1662 layer command generation. This first increment implements
//! body3cdd/file2c10d..2c7ee, not the entire3932 compositor. Projection words and
//! background availability are explicit live DS inputs, never invented assets.
use crate::{
    pc_map::{direction_vector, PcMap},
    Error,
};

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct ViewState {
    pub x: i16,
    pub y: i16,
    pub facing: u8,
}

/// The original lateral basis is (-forward_y, forward_x). Arithmetic wraps at
///16 bits before signed coordinate bounds are checked by the layer consumer.
pub fn neighborhood(state: ViewState, depth: i16, lateral: i16) -> (i16, i16) {
    let (fx, fy) = direction_vector(state.facing);
    (
        state
            .x
            .wrapping_add(depth.wrapping_mul(fx))
            .wrapping_sub(lateral.wrapping_mul(fy)),
        state
            .y
            .wrapping_add(depth.wrapping_mul(fy))
            .wrapping_add(lateral.wrapping_mul(fx)),
    )
}

pub fn sampled_cell<'a>(
    map: &PcMap<'a>,
    state: ViewState,
    depth: i16,
    lateral: i16,
) -> Option<(u16, &'a [u8; 15])> {
    let (x, y) = neighborhood(state, depth, lateral);
    if x < 0 || y < 0 {
        return None;
    }
    let cell = map.cell(x as usize, y as usize)?;
    Some((
        (y as u16)
            .wrapping_mul(u16::from(map.width()))
            .wrapping_add(x as u16)
            .wrapping_mul(15),
        cell,
    ))
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum LayerCommand {
    SetByte {
        offset: u16,
        value: u8,
    },
    /// Original0ac6:0f21 input: sx,sy,w,h,dx,dy,boundary,mode,source,
    /// destination,callback offset,callback descriptor. This is not0c5a scaling.
    Cropped {
        callee_order: [u16; 12],
        return_offset: u16,
    },
    /// Ordered live DS effect. Apply before producing the following layer.
    MaskWord {
        offset: u16,
        and_mask: u16,
        or_mask: u16,
    },
    /// Callee order: sx,sy,w,h,dx,dy,source,destination,callback offset,segment.
    /// Source/destination are byte selectors; incidental AH is normalized away.
    /// Callback segment is the original descriptor index0x1e0, not a runtime CS.
    Rect {
        callee_order: [u16; 10],
        return_offset: u16,
    },
    /// Original3969 call, in exact order: geometry,cell byte offset,direction,dst.
    /// Resolve this through that shared helper; never silently omit this draw.
    Wall {
        geometry: u16,
        cell_offset: u16,
        direction: u8,
        destination: u8,
    },
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

/// One call to original09d4:004c from an0f21 callback, before key254 copying.
/// Far addresses remain exact16-bit offset:segment words for DOS differential.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct CropCallbackSpan {
    pub source: [u16; 2],
    pub destination: [u16; 2],
    pub length: u16,
    pub key: u8,
}

/// Transcription of original0ac6:10f1/1185/1261/1307 (physicale151..e454).
/// The16 callback words are sourcefar,sx,source_y,width,start_row,row_count,
/// source_stride,destinationfar,dx,destination_y,boundary,destination_stride,
/// slope,key. This lower boundary supports the wrapper's original bank chunks;
/// it does not assume that a bank maps contiguously or silently flatten pointers.
pub fn crop_callback_spans(callback: u16, a: &[u16; 16]) -> Result<Vec<CropCallbackSpan>, Error> {
    let left = match callback {
        0x10f1 | 0x1261 => false,
        0x1185 | 0x1307 => true,
        _ => return Err(Error("unsupported original crop callback".into())),
    };
    let ceiling = matches!(callback, 0x1261 | 0x1307);
    let end = a[5].wrapping_add(a[6]);
    let source_y = a[3].wrapping_add(if ceiling { end } else { 0 });
    let destination_y = a[11].wrapping_add(if ceiling { end } else { 0 });
    let slope = u16::from(a[14] as u8);
    let mut out = Vec::new();
    let mut row = a[5];
    while row < end {
        let mut sx = a[2].wrapping_sub(row);
        let mut length = a[4].wrapping_add(row.wrapping_mul(2));
        let mut dx = if left {
            a[10].wrapping_sub(slope.wrapping_add(2).wrapping_mul(row))
        } else {
            a[10].wrapping_add(slope.wrapping_mul(row))
        };
        if left {
            // Original JL/JG use signed16 comparisons on the left edge.
            if (dx as i16) < (a[12] as i16) {
                if (dx.wrapping_add(length) as i16) <= (a[12] as i16) {
                    break;
                }
                let clipped = a[12].wrapping_sub(dx);
                sx = sx.wrapping_add(clipped);
                length = length.wrapping_sub(clipped);
                dx = a[12];
            }
        } else if dx.wrapping_add(length) > a[12] {
            // Original JA/JAE are unsigned on the right edge.
            if dx >= a[12] {
                break;
            }
            length = a[12].wrapping_sub(dx);
        }
        let sy = if ceiling {
            source_y.wrapping_sub(row)
        } else {
            source_y.wrapping_add(row)
        };
        let dy = if ceiling {
            destination_y.wrapping_sub(row)
        } else {
            destination_y.wrapping_add(row)
        };
        out.push(CropCallbackSpan {
            source: [
                a[0].wrapping_add(sy.wrapping_mul(a[7])).wrapping_add(sx),
                a[1],
            ],
            destination: [
                a[8].wrapping_add(dy.wrapping_mul(a[13])).wrapping_add(dx),
                a[9],
            ],
            length,
            key: a[15] as u8,
        });
        row = row.wrapping_add(1);
    }
    Ok(out)
}

/// Original1662:58e2/file2dd12..2e2ae, current-cell layer. Side cells precede
/// center, and byte/word effects retain original instruction order.
pub fn current_layer_58e2(
    map: &PcMap<'_>,
    state: ViewState,
    ds: &[u8],
    destination: u8,
) -> Result<Vec<LayerCommand>, Error> {
    if state.facing >= 4 {
        return Err(Error("scene facing must be0..3".into()));
    }
    let remainder = state.x.wrapping_add(state.y) % 2;
    let pattern = (state.facing % 2) | ((remainder as u8) << 1);
    let mut out = Vec::new();
    for (lateral, floor_ret, ceiling_ret, geometry) in
        [(-1, 0x2de4d, 0x2deeb, 22), (1, 0x2df80, 0x2e022, 24)]
    {
        let Some((cell_offset, cell)) = sampled_cell(map, state, 0, lateral) else {
            continue;
        };
        let boundary =
            word(ds, 0x3b09)?.wrapping_add(if lateral > 0 { word(ds, 0x3aff)? } else { 0 });
        for ceiling in [false, true] {
            if ceiling && cell[8] == 0 {
                continue;
            }
            let (sx, sy, w, h, dx, dy, source, callback, ret) = if ceiling {
                let w = word(ds, 0xb976)?;
                let h = word(ds, 0xb978)?;
                (
                    word(ds, 0xb972)?,
                    word(ds, 0xb974)?.wrapping_sub(h),
                    w,
                    h,
                    word(ds, 0xb96a)?.wrapping_add((lateral as i16).wrapping_mul(w)),
                    word(ds, 0xb96c)?.wrapping_sub(h),
                    cell[8]
                        .wrapping_add(pattern.wrapping_mul(2))
                        .wrapping_add(55),
                    if lateral < 0 { 0x1307 } else { 0x1261 },
                    ceiling_ret,
                )
            } else {
                let w = word(ds, 0xb940)?;
                (
                    word(ds, 0xb93c)?,
                    word(ds, 0xb93e)?,
                    w,
                    word(ds, 0xb942)?,
                    word(ds, 0xb934)?.wrapping_add((lateral as i16).wrapping_mul(w)),
                    word(ds, 0xb936)?,
                    cell[9]
                        .wrapping_add(pattern.wrapping_mul(5))
                        .wrapping_add(35),
                    if lateral < 0 { 0x1185 } else { 0x10f1 },
                    floor_ret,
                )
            };
            out.push(LayerCommand::Cropped {
                callee_order: [
                    sx as u16,
                    sy as u16,
                    w as u16,
                    h as u16,
                    dx as u16,
                    dy as u16,
                    boundary as u16,
                    1,
                    u16::from(source),
                    u16::from(destination),
                    callback,
                    0x28,
                ],
                return_offset: (ret - 0x28430) as u16,
            });
        }
        wall(&mut out, geometry, cell_offset, state.facing, destination);
    }
    if let Some((cell_offset, cell)) = sampled_cell(map, state, 0, 0) {
        let fh = word(ds, 0xb942)?;
        rect(
            &mut out,
            [
                word(ds, 0xb93c)?.wrapping_sub(fh),
                word(ds, 0xb93e)?,
                word(ds, 0xb940)?.wrapping_add(fh.wrapping_mul(2)),
                fh,
                word(ds, 0xb934)?.wrapping_sub(fh),
                word(ds, 0xb936)?,
            ],
            cell[9]
                .wrapping_add(pattern.wrapping_mul(5))
                .wrapping_add(35),
            destination,
            0x5cc9,
        );
        out.push(LayerCommand::SetByte {
            offset: 0x3af8,
            value: u8::from(cell[8] != 0),
        });
        if cell[8] != 0 {
            let ch = word(ds, 0xb978)?;
            rect(
                &mut out,
                [
                    word(ds, 0xb972)?.wrapping_sub(ch),
                    word(ds, 0xb974)?.wrapping_sub(ch),
                    word(ds, 0xb976)?.wrapping_add(ch.wrapping_mul(2)),
                    ch.wrapping_add(1),
                    0,
                    0,
                ],
                cell[8]
                    .wrapping_add(pattern.wrapping_mul(2))
                    .wrapping_add(55),
                destination,
                0x5d54,
            );
        }
        wall(&mut out, 23, cell_offset, state.facing, destination);
        wall(&mut out, 26, cell_offset, state.facing + 1, destination);
        wall(&mut out, 25, cell_offset, state.facing + 3, destination);
        for (turn, mask) in [(3, 16), (1, 32), (0, 64)] {
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

/// Original1662:43c9/file2c7f9..2d384, depth2 row. Original clipped primitives
/// remain explicit commands until their consumer has been verified.
pub fn middle_layer_43c9(
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
    // Each lateral repeats identical coordinate and argument arithmetic. These
    // return addresses preserve the separate source call sites.
    let calls = [
        (-3, 0x2c954, 0x2c9f2),
        (-2, 0x2ca83, 0x2cb21),
        (-1, 0x2cbd5, 0x2cc73),
        (3, 0x2cddf, 0x2ce81),
        (2, 0x2cf16, 0x2cfb8),
        (1, 0x2d06e, 0x2d110),
    ];
    for (lateral, floor_ret, ceiling_ret) in calls {
        let Some((cell_offset, cell)) = sampled_cell(map, state, 2, lateral) else {
            continue;
        };
        let boundary =
            word(ds, 0x3b09)?.wrapping_add(if lateral > 0 { word(ds, 0x3aff)? } else { 0 });
        let mode = (lateral as i16).abs() as u16 * 2 - 1;
        for ceiling in [false, true] {
            if ceiling && cell[8] == 0 {
                continue;
            }
            let (sx, sy, w, h, dx, dy, source, callback, ret) = if ceiling {
                let w = word(ds, 0xb952)?;
                let h = word(ds, 0xb954)?;
                (
                    word(ds, 0xb94e)?,
                    word(ds, 0xb950)?.wrapping_sub(h),
                    w,
                    h,
                    word(ds, 0xb946)?.wrapping_add((lateral as i16).wrapping_mul(w)),
                    word(ds, 0xb948)?.wrapping_sub(h),
                    cell[8]
                        .wrapping_add(pattern.wrapping_mul(2))
                        .wrapping_add(55),
                    if lateral < 0 { 0x1307 } else { 0x1261 },
                    ceiling_ret,
                )
            } else {
                let w = word(ds, 0xb91c)?;
                (
                    word(ds, 0xb918)?,
                    word(ds, 0xb91a)?,
                    w,
                    word(ds, 0xb91e)?,
                    word(ds, 0xb910)?.wrapping_add((lateral as i16).wrapping_mul(w)),
                    word(ds, 0xb912)?,
                    cell[9]
                        .wrapping_add(pattern.wrapping_mul(5))
                        .wrapping_add(35),
                    if lateral < 0 { 0x1185 } else { 0x10f1 },
                    floor_ret,
                )
            };
            out.push(LayerCommand::Cropped {
                callee_order: [
                    sx as u16,
                    sy as u16,
                    w as u16,
                    h as u16,
                    dx as u16,
                    dy as u16,
                    boundary as u16,
                    mode,
                    u16::from(source),
                    u16::from(destination),
                    callback,
                    0x28,
                ],
                return_offset: (ret - 0x28430) as u16,
            });
        }
        match lateral {
            -3 => wall(&mut out, 0, cell_offset, state.facing, destination),
            -2 => {
                wall(&mut out, 7, cell_offset, state.facing + 3, destination);
                wall(&mut out, 1, cell_offset, state.facing, destination);
            }
            -1 => {
                wall(&mut out, 8, cell_offset, state.facing + 3, destination);
                wall(&mut out, 2, cell_offset, state.facing, destination);
            }
            3 => wall(&mut out, 6, cell_offset, state.facing, destination),
            2 => {
                wall(&mut out, 12, cell_offset, state.facing + 1, destination);
                wall(&mut out, 5, cell_offset, state.facing, destination);
            }
            1 => {
                wall(&mut out, 11, cell_offset, state.facing + 1, destination);
                wall(&mut out, 4, cell_offset, state.facing, destination);
            }
            _ => unreachable!(),
        }
    }
    if let Some((cell_offset, cell)) = sampled_cell(map, state, 2, 0) {
        let fw = word(ds, 0xb91c)?;
        rect(
            &mut out,
            [
                word(ds, 0xb918)?.wrapping_sub(fw),
                word(ds, 0xb91a)?,
                fw.wrapping_mul(3),
                word(ds, 0xb91e)?,
                word(ds, 0xb910)?.wrapping_sub(fw),
                word(ds, 0xb912)?,
            ],
            cell[9]
                .wrapping_add(pattern.wrapping_mul(5))
                .wrapping_add(35),
            destination,
            0x4de2,
        );
        if cell[8] != 0 {
            let cw = word(ds, 0xb952)?;
            let ch = word(ds, 0xb954)?;
            rect(
                &mut out,
                [
                    word(ds, 0xb94e)?.wrapping_sub(cw),
                    word(ds, 0xb950)?.wrapping_sub(ch),
                    cw.wrapping_mul(3),
                    ch,
                    word(ds, 0xb946)?.wrapping_sub(cw),
                    word(ds, 0xb948)?.wrapping_sub(ch),
                ],
                cell[8]
                    .wrapping_add(pattern.wrapping_mul(2))
                    .wrapping_add(55),
                destination,
                0x4e6e,
            );
        }
        wall(&mut out, 3, cell_offset, state.facing, destination);
        wall(&mut out, 9, cell_offset, state.facing + 3, destination);
        wall(&mut out, 10, cell_offset, state.facing + 1, destination);
        for (turn, mask) in [(3, 1), (1, 2)] {
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

fn word(ds: &[u8], offset: usize) -> Result<i16, Error> {
    let b = ds
        .get(offset..offset + 2)
        .ok_or_else(|| Error(format!("missing live DS word {offset:04x}")))?;
    Ok(i16::from_le_bytes([b[0], b[1]]))
}

fn rect(out: &mut Vec<LayerCommand>, fields: [i16; 6], source: u8, destination: u8, ret: u16) {
    let [sx, sy, w, h, dx, dy] = fields;
    out.push(LayerCommand::Rect {
        callee_order: [
            sx as u16,
            sy as u16,
            w as u16,
            h as u16,
            dx as u16,
            dy as u16,
            u16::from(source),
            u16::from(destination),
            0x341,
            0x1e0,
        ],
        return_offset: ret,
    });
}

/// General far row from the original PC cells. Outputs include helper3969 wall
/// calls interleaved with rectangular floor/ceiling/background operations.
pub fn far_layer_3cdd(
    map: &PcMap<'_>,
    state: ViewState,
    ds: &[u8],
    destination: u8,
) -> Result<Vec<LayerCommand>, Error> {
    if state.facing >= 4 {
        return Err(Error("scene facing must be0..3".into()));
    }
    let width = word(ds, 0x3aff)?;
    let height = word(ds, 0x3b01)?;
    let half = word(ds, 0xb730)? / 2; // signed IDIV, toward zero.
    let floor_source_y = word(ds, 0xb91a)?;
    let floor_destination_y = word(ds, 0xb912)?.wrapping_sub(half);
    let ceiling_destination_y = word(ds, 0xb948)?;
    let ceiling_source_y = word(ds, 0xb950)?.wrapping_sub(half);
    let mut out = Vec::new();
    // Original2c14c..2c3a5: two2-pixel strips at depth3, lateral-2/+2.
    for (lateral, dx, floor_ret, ceiling_ret) in [
        (-2, 0, 0x3de8, 0x3e42),
        (2, width.wrapping_sub(2), 0x3f16, 0x3f75),
    ] {
        if let Some((_, cell)) = sampled_cell(map, state, 3, lateral) {
            rect(
                &mut out,
                [0, floor_source_y, 2, half, dx, floor_destination_y],
                cell[9].wrapping_add(35),
                destination,
                floor_ret,
            );
            // Unlike the main row loop, these strips do not suppress field8=0.
            rect(
                &mut out,
                [0, ceiling_source_y, 2, half, dx, ceiling_destination_y],
                cell[8].wrapping_add(55),
                destination,
                ceiling_ret,
            );
        }
    }
    //2c3a8..2c5ae: optional background lower band if either depth3 edge is
    // outside the PC grid. e515 is a word for comparisons/source y, but only
    // AL is retained as the final band height.
    if word(ds, 0xe517)? != 0 || word(ds, 0xe519)? != 0 {
        let background_height = word(ds, 0xe515)?;
        let limit = height / 2 + 1;
        let band = if sampled_cell(map, state, 2, 0).is_some() && limit <= background_height {
            limit as u8
        } else {
            background_height as u8
        };
        if sampled_cell(map, state, 3, -3).is_none() || sampled_cell(map, state, 3, 3).is_none() {
            rect(
                &mut out,
                [
                    0,
                    background_height.wrapping_sub(i16::from(band)),
                    width,
                    i16::from(band),
                    0,
                    height.wrapping_sub(i16::from(band)),
                ],
                79,
                destination,
                0x417e,
            );
        }
    }
    //2c5b1..2c7e8: the in-place loop permutation is -3,-2,-1,0,3,2,1.
    for lateral in [-3, -2, -1, 0, 3, 2, 1] {
        if let Some((cell_offset, cell)) = sampled_cell(map, state, 3, lateral) {
            let dx = word(ds, (0xb760i32 + i32::from(lateral) * 18) as usize)?;
            rect(
                &mut out,
                [
                    0,
                    floor_source_y,
                    word(ds, 0xb72e)?,
                    half.wrapping_add(1),
                    dx,
                    floor_destination_y,
                ],
                cell[9].wrapping_add(35),
                destination,
                0x4283,
            );
            if cell[8] != 0 {
                rect(
                    &mut out,
                    [
                        0,
                        ceiling_source_y,
                        word(ds, 0xb72e)?,
                        half,
                        dx,
                        ceiling_destination_y,
                    ],
                    cell[8].wrapping_add(55),
                    destination,
                    0x4311,
                );
            }
            let side = match lateral {
                -2 => Some((33, 3)),
                -1 => Some((34, 3)),
                1 => Some((35, 1)),
                2 => Some((36, 1)),
                _ => None,
            };
            if let Some((geometry, turn)) = side {
                out.push(LayerCommand::Wall {
                    geometry,
                    cell_offset,
                    direction: (state.facing + turn) % 4,
                    destination,
                });
            }
        }
    }
    Ok(out)
}
