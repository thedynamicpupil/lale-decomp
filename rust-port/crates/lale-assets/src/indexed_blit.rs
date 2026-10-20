//! Indexed rectangle callbacks2599:0341/03c4, normalized to owned image slices.
//! Transparent bytes preserve prior destination pixels. This bounded interface
//! requires an in-bounds source and nonnegative destination coordinates; original
//! slot/bank resolution and wrapper clipping are separate responsibilities.
use crate::{Error, IndexedImage};

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
