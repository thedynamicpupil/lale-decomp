//! Flat-image boundary for original0ac6:0f21 cropped floor/ceiling calls.
//! Uses the recovered row callback; no rational scaling or triangle rasterizer.
use crate::{scene_layers::crop_callback_spans, Error, IndexedImage};

pub fn draw_crop(
    source: &IndexedImage,
    args: &[u16; 12],
    destination_size: [u16; 2],
    destination: &mut [u8],
    written: &mut [bool],
) -> Result<(), Error> {
    let [dw, dh] = destination_size;
    if usize::from(dw) * usize::from(dh) != destination.len() || written.len() != destination.len()
    {
        return Err(Error("crop destination layout mismatch".into()));
    }
    let [sx, sy, w, h, dx, dy, boundary, mode, _, _, callback, _] = *args;
    let rows = crop_callback_spans(
        callback,
        &[
            0,
            0,
            sx,
            sy,
            w,
            0,
            h,
            source.dimensions.width,
            0,
            0,
            dx,
            dy,
            boundary,
            dw,
            mode,
            254,
        ],
    )?;
    for row in rows {
        let s = usize::from(row.source[0]);
        let d = usize::from(row.destination[0]);
        let count = usize::from(row.length);
        let pixels = source
            .indices
            .get(s..s + count)
            .ok_or_else(|| Error("crop source span outside image".into()))?;
        let target = destination
            .get_mut(d..d + count)
            .ok_or_else(|| Error("crop destination span outside image".into()))?;
        for (i, (&value, target)) in pixels.iter().zip(target).enumerate() {
            if value != row.key {
                *target = value;
                written[d + i] = true;
            }
        }
    }
    Ok(())
}
