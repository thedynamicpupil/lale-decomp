//! Indexed rectangle callbacks2599:0341/03c4, normalized to owned image slices.
//! Transparent bytes preserve prior destination pixels. This bounded interface
//! requires an in-bounds source and nonnegative destination coordinates; original
//! slot/bank resolution and wrapper clipping are separate responsibilities.
use crate::{Error, IndexedImage};

/// Original3599:0440 pair lookup used by1c7f:0a51. The table contains
/// unordered unequal palette pairs; equal inputs bypass it.
pub fn shade_rectangle(
    destination: &mut [u8],
    dimensions: [usize; 2],
    rect: [usize; 4],
    table: &[u8],
    color: u8,
) -> Result<(), Error> {
    let [stride, height] = dimensions;
    let [x, y, w, h] = rect;
    if stride.checked_mul(height) != Some(destination.len())
        || x.checked_add(w).is_none_or(|v| v > stride)
        || y.checked_add(h).is_none_or(|v| v > height)
        || table.len() != 32640
    {
        return Err(Error("invalid indexed shade rectangle/table".into()));
    }
    for row in y..y + h {
        for pixel in &mut destination[row * stride + x..row * stride + x + w] {
            if *pixel != color {
                let lo = usize::from((*pixel).min(color));
                let hi = usize::from((*pixel).max(color));
                *pixel = table[lo * (509 - lo) / 2 + hi - 1];
            }
        }
    }
    Ok(())
}

pub fn rectangle(
    source: &IndexedImage,
    args: &[u16; 9],
    destination_size: [usize; 2],
    destination: &mut [u8],
    written: &mut [bool],
) -> Result<(), Error> {
    let [dw, dh] = destination_size;
    if dw.checked_mul(dh) != Some(destination.len()) || written.len() != destination.len() {
        return Err(Error("destination rectangle layout mismatch".into()));
    }
    let [sx, sy, w, h, dx, dy, _, _, callback] = args.map(usize::from);
    let stride = usize::from(source.dimensions.width);
    let rows = usize::from(source.dimensions.height);
    if stride.checked_mul(rows) != Some(source.indices.len()) || sx + w > stride || sy + h > rows {
        return Err(Error("source rectangle outside indexed image".into()));
    }
    let reflected = match callback {
        0x341 => false,
        0x3c4 => true,
        _ => return Err(Error("unsupported original rectangle callback".into())),
    };
    for y in 0..h {
        for x in 0..w {
            let tx = dx + if reflected { w - 1 - x } else { x };
            let ty = dy + y;
            if tx < dw && ty < dh {
                let value = source.indices[(sy + y) * stride + sx + x];
                if value != 254 {
                    destination[ty * dw + tx] = value;
                    written[ty * dw + tx] = true;
                }
            }
        }
    }
    Ok(())
}
