//! Shared indexed scene execution. Original bounded bank scales run directly;
//! omission requires proof that subsequent original opaque pixels cover them.
use crate::{
    indexed_blit::rectangle, scene_commands::SceneDraw, scene_crop::draw_crop, Error, IndexedImage,
};
use std::collections::BTreeMap;

pub fn source_slot(draw: &SceneDraw) -> u8 {
    match draw {
        SceneDraw::Rect(a) => a[6] as u8,
        SceneDraw::Cropped(a) => a[8] as u8,
        SceneDraw::Scaled(a) => a[8] as u8,
    }
}

fn exact(
    images: &BTreeMap<u8, IndexedImage>,
    draw: &SceneDraw,
    view: &mut [u8],
    written: &mut [bool],
) -> Result<(), Error> {
    let image = images
        .get(&source_slot(draw))
        .ok_or_else(|| Error(format!("missing original scene slot{}", source_slot(draw))))?;
    match draw {
        SceneDraw::Rect(a) => rectangle(image, a, [200, 200], view, written),
        SceneDraw::Cropped(a) => draw_crop(image, a, [200, 200], view, written),
        SceneDraw::Scaled(a) => {
            let call = crate::original_scale::ScaleCall {
                source_offset: usize::from(a[1]) * usize::from(image.dimensions.width)
                    + usize::from(a[0]),
                source_stride: image.dimensions.width,
                source_width: a[2],
                source_height: a[3],
                destination_offset: usize::from(a[5]) * 200 + usize::from(a[4]),
                destination_stride: 200,
                destination_width: a[6],
                destination_height: a[7],
                transparent_key: 254,
                flags: a[10] as u8,
                // Explicit native world-entry policy, matching all ten observed
                // core invocations; not an assertion about every DOS caller.
                initial_x_fraction: 0,
            };
            crate::original_scale::draw_fallback200(&image.indices, view, written, call)
                .map(|_| ())
                .map_err(|e| Error(e.into()))
        }
    }
}

pub fn render(
    images: &BTreeMap<u8, IndexedImage>,
    commands: &[SceneDraw],
    view: &mut [u8],
    written: &mut [bool],
) -> Result<(), Error> {
    for (i, draw) in commands.iter().enumerate() {
        if let SceneDraw::Scaled(a) = draw {
            if exact(images, draw, view, written).is_ok() {
                continue;
            }
            let mut mask = vec![false; 40000];
            let mut scratch = vec![254; 40000];
            for later in &commands[i + 1..] {
                if !matches!(later, SceneDraw::Scaled(_)) {
                    exact(images, later, &mut scratch, &mut mask)?;
                }
            }
            let [dx, dy, w, h] = [a[4], a[5], a[6], a[7]].map(usize::from);
            for y in dy..dy + h {
                for x in dx..dx + w {
                    if x < 200 && y < 200 && !mask[y * 200 + x] {
                        return Err(Error("scaled scene draw is not fully occluded".into()));
                    }
                }
            }
        } else {
            exact(images, draw, view, written)?;
        }
    }
    Ok(())
}
