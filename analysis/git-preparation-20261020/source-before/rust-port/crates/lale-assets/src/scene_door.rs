//! Native original1662:798c door frame composition. The original first four
//! layers and current-cell layer use separate buffers at the SAME position.
//! Numeric movement/events/timing are caller-owned, never bypassed here.
use crate::{
    pc_map::PcMap,
    scene_commands::{commands_layers_200, SceneDraw},
    scene_context::SceneContext,
    scene_layers::ViewState,
    scene_projection_200::FALLBACK_200,
    scene_render::render,
    Error, IndexedImage,
};
use std::collections::BTreeMap;

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct DoorGeometry {
    pub source_width: u16,
    pub source_height: u16,
    pub destination_width: u16,
    pub destination_height: u16,
    pub x: u16,
    pub y: u16,
}

impl DoorGeometry {
    /// Original37ee/file2bc1e..2bd61: width/4,source height,low-word signed
    /// products/divisions and centering relative to generated record23.
    pub fn from_sheet_200(sheet: &IndexedImage) -> Result<Self, Error> {
        let source_width = (sheet.dimensions.width as i16) / 4;
        let source_height = sheet.dimensions.height as i16;
        let destination_width = 200i16.wrapping_mul(source_width) / 200;
        let destination_height = 200i16.wrapping_mul(source_height) / 200;
        if source_width <= 0
            || source_height <= 0
            || destination_width <= 0
            || destination_height <= 0
        {
            return Err(Error(
                "door geometry outside established positive200 projection".into(),
            ));
        }
        let [x, y, w, h, ..] = FALLBACK_200[23].0;
        let x = (x as i16).wrapping_add((w as i16).wrapping_sub(destination_width) / 2);
        let y = (y as i16)
            .wrapping_add(h as i16)
            .wrapping_sub(destination_height);
        Ok(Self {
            source_width: source_width as u16,
            source_height: source_height as u16,
            destination_width: destination_width as u16,
            destination_height: destination_height as u16,
            x: x as u16,
            y: y as u16,
        })
    }
}

pub struct DoorFrames {
    pub geometry: DoorGeometry,
    pub animated_slot: u8,
    pub frames: [Vec<u8>; 4],
}

fn frame_draw(
    geometry: DoorGeometry,
    stage: u16,
    source: u8,
    mirror: bool,
    destination: u8,
) -> SceneDraw {
    SceneDraw::Rect([
        stage.wrapping_mul(geometry.source_width),
        0,
        geometry.source_width,
        geometry.source_height,
        if mirror {
            200u16
                .wrapping_sub(geometry.x)
                .wrapping_sub(geometry.source_width)
        } else {
            geometry.x
        },
        geometry.y,
        u16::from(source),
        u16::from(destination),
        if mirror { 0x3c4 } else { 0x341 },
    ])
}

/// Original798c full four-stage path,unscaled sheet branch (DS:b8d8 bit1 clear).
/// `pre_stage3` is explicitly DS:6d74!=0,not an invented persistent door state.
/// Original captured starting-door run has that word0 and DS:3b08=1.
pub fn compose_200(
    map: &PcMap<'_>,
    view: ViewState,
    context: &mut SceneContext,
    images: &BTreeMap<u8, IndexedImage>,
    pre_stage3: bool,
) -> Result<DoorFrames, Error> {
    let pair = map
        .directional_pair(view.x as usize, view.y as usize, view.facing)
        .ok_or_else(|| Error("door position/facing outside map".into()))?;
    if pair.movement_state != 2 || !(1..=4).contains(&pair.selector) {
        return Err(Error(
            "current forward pair is not an established state2 door".into(),
        ));
    }
    if context.get(0xb8d8) & 2 != 0 {
        return Err(Error(
            "scaled door-sheet path requires separately verified bank scaling".into(),
        ));
    }
    let index = usize::from(pair.selector - 1);
    let animated_slot = 32 + index as u8;
    let sheet = images.get(&animated_slot).ok_or_else(|| {
        Error(format!(
            "missing original animated door slot{animated_slot}"
        ))
    })?;
    let geometry = DoorGeometry::from_sheet_200(sheet)?;
    if usize::from(geometry.x) + usize::from(geometry.destination_width) > 200
        || usize::from(geometry.y) + usize::from(geometry.destination_height) > 200
    {
        return Err(Error(
            "door aperture outside established200 viewport".into(),
        ));
    }
    if geometry.destination_width != geometry.source_width
        || geometry.destination_height != geometry.source_height
    {
        return Err(Error(
            "door size does not match verified unscaled branch".into(),
        ));
    }
    let mut base = vec![254; 40000];
    let mut base_written = vec![false; 40000];
    let first = commands_layers_200(map, view, context, 66, 0..4)?;
    render(images, &first, &mut base, &mut base_written)?;
    context.words[0x3b07] = 1;
    let fifth = commands_layers_200(map, view, context, 65, 4..5)?;
    let mut current = vec![254; 40000];
    let mut current_written = vec![false; 40000];
    render(images, &fifth, &mut current, &mut current_written)?;
    // Original0908 clear65 aperture,key254. Original0615 then merges65→66.
    for y in usize::from(geometry.y)..usize::from(geometry.y + geometry.destination_height) {
        let start = y * 200 + usize::from(geometry.x);
        current[start..start + usize::from(geometry.destination_width)].fill(254);
    }
    for (to, &from) in base.iter_mut().zip(&current) {
        if from != 254 {
            *to = from;
        }
    }
    let mirror = matches!(view.facing, 2 | 3) && context.get(0xb424 + index * 14) != 0;
    if pre_stage3 {
        render(
            images,
            &[frame_draw(geometry, 3, animated_slot, mirror, 66)],
            &mut base,
            &mut base_written,
        )?;
    }
    let mut frames = std::array::from_fn(|_| base.clone());
    for (stage, frame) in frames.iter_mut().enumerate() {
        render(
            images,
            &[frame_draw(
                geometry,
                stage as u16,
                animated_slot,
                mirror,
                65,
            )],
            frame,
            &mut vec![false; 40000],
        )?;
    }
    Ok(DoorFrames {
        geometry,
        animated_slot,
        frames,
    })
}
