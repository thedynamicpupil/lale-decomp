//! Original1689:4b57 verified200x200 branch, image85→viewport65/key254.
use crate::{Error, IndexedImage, Palette6};

/// Original PAL loader arguments start0,count128 preserve the upper128 colors.
pub fn apply_palette(current: &mut Palette6, illustration: &Palette6) -> Result<(), Error> {
    if current.triplets.len() != 256 || illustration.triplets.len() != 256 {
        return Err(Error(
            "illustration requires original256-color palettes".into(),
        ));
    }
    current.triplets[..128].copy_from_slice(&illustration.triplets[..128]);
    Ok(())
}
/// The source first renders the current room, then keyed-copies the illustration.
/// Smaller-image resampling and other viewport sizes need separate verification.
pub fn compose_200(view: &mut [u8], image: &IndexedImage) -> Result<(), Error> {
    if view.len() != 40000
        || image.dimensions.width != 200
        || image.dimensions.height != 200
        || image.indices.len() != 40000
    {
        return Err(Error("unsupported illustration geometry".into()));
    }
    for (to, &from) in view.iter_mut().zip(&image.indices) {
        if from != 254 {
            *to = from;
        }
    }
    Ok(())
}
