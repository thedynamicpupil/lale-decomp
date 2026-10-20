//! Ordered native original1662:3932 five-layer compositor. Only the established
//!200x200 fallback projection is selected here; resource KOR tables require a
//! separate caller to supply their actual parsed records.
use crate::{
    pc_map::PcMap,
    scene_context::SceneContext,
    scene_geometry::{ProjectedDraw, ProjectionRecord},
    scene_layers::{
        current_layer_58e2, far_layer_3cdd, middle_layer_43c9, LayerCommand, ViewState,
    },
    scene_near::{near_layer_4f55, near_sides_56e0},
    scene_projection_200::FALLBACK_200,
    scene_walls::expand_wall,
    Error,
};

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum SceneDraw {
    Rect([u16; 9]),
    Cropped([u16; 12]),
    Scaled([u16; 11]),
}

fn expand_layer(
    map: &PcMap<'_>,
    context: &mut SceneContext,
    layer: Vec<LayerCommand>,
    tables: &[&[ProjectionRecord]],
    output: &mut Vec<SceneDraw>,
) -> Result<(), Error> {
    for command in layer {
        match command {
            LayerCommand::Rect { callee_order, .. } => {
                output.push(SceneDraw::Rect(callee_order[..9].try_into().unwrap()))
            }
            LayerCommand::Cropped { callee_order, .. } => {
                output.push(SceneDraw::Cropped(callee_order))
            }
            LayerCommand::SetByte { offset, value } => {
                *context
                    .words
                    .get_mut(usize::from(offset))
                    .ok_or_else(|| Error("scene byte effect outside DS".into()))? = value;
            }
            LayerCommand::MaskWord {
                offset,
                and_mask,
                or_mask,
            } => {
                let bytes = context
                    .words
                    .get_mut(usize::from(offset)..usize::from(offset) + 2)
                    .ok_or_else(|| Error("scene word effect outside DS".into()))?;
                let value = u16::from_le_bytes([bytes[0], bytes[1]]) & and_mask | or_mask;
                bytes.copy_from_slice(&value.to_le_bytes());
            }
            LayerCommand::Wall {
                geometry,
                cell_offset,
                direction,
                destination,
            } => {
                if let Some(command) = expand_wall(
                    &context.words,
                    map,
                    geometry,
                    cell_offset,
                    direction,
                    destination,
                    tables,
                )? {
                    output.push(match command {
                        ProjectedDraw::Rect(a) => SceneDraw::Rect(a),
                        ProjectedDraw::Scaled(a) => SceneDraw::Scaled(a),
                    });
                }
            }
        }
    }
    Ok(())
}

/// Original source order3cdd→43c9→4f55→56e0→58e2, including live DS effects
/// before later layer generation. Context remains available for transition/HUD
/// consumers after rendering. No captured per-cell command stream is loaded.
pub fn commands_with_tables(
    map: &PcMap<'_>,
    view: ViewState,
    context: &mut SceneContext,
    destination: u8,
    tables: &[&[ProjectionRecord]],
) -> Result<Vec<SceneDraw>, Error> {
    context.set_view(view);
    let mut output = Vec::new();
    let layer = far_layer_3cdd(map, view, &context.words, destination)?;
    expand_layer(map, context, layer, tables, &mut output)?;
    let layer = middle_layer_43c9(map, view, &context.words, destination)?;
    expand_layer(map, context, layer, tables, &mut output)?;
    let layer = near_layer_4f55(map, view, &context.words, destination)?;
    expand_layer(map, context, layer, tables, &mut output)?;
    let layer = near_sides_56e0(map, view, destination)?;
    expand_layer(map, context, layer, tables, &mut output)?;
    let layer = current_layer_58e2(map, view, &context.words, destination)?;
    expand_layer(map, context, layer, tables, &mut output)?;
    Ok(output)
}

/// Select the source-verified200x200 fallback only after establishing that the
/// active wall/door resources have no KOR sidecar. PC1/PC2 loader resources were
/// checked separately; this function does not infer absence for other banks.
pub fn commands_200(
    map: &PcMap<'_>,
    view: ViewState,
    context: &mut SceneContext,
    destination: u8,
) -> Result<Vec<SceneDraw>, Error> {
    let tables = [FALLBACK_200.as_slice(); 8];
    commands_with_tables(map, view, context, destination, &tables)
}

/// Select a contiguous subset of3932's five passes, preserving effects. This
/// supports original798c's separate first-four/current-layer buffers. Passes
/// are numbered0..5 in the same order as`commands_with_tables`.
pub fn commands_layers_200(
    map: &PcMap<'_>,
    view: ViewState,
    context: &mut SceneContext,
    destination: u8,
    passes: std::ops::Range<usize>,
) -> Result<Vec<SceneDraw>, Error> {
    if passes.start > passes.end || passes.end > 5 {
        return Err(Error("scene pass range outside0..5".into()));
    }
    context.set_view(view);
    let tables = [FALLBACK_200.as_slice(); 8];
    let mut output = Vec::new();
    for pass in passes {
        let layer = match pass {
            0 => far_layer_3cdd(map, view, &context.words, destination)?,
            1 => middle_layer_43c9(map, view, &context.words, destination)?,
            2 => near_layer_4f55(map, view, &context.words, destination)?,
            3 => near_sides_56e0(map, view, destination)?,
            4 => current_layer_58e2(map, view, &context.words, destination)?,
            _ => unreachable!(),
        };
        expand_layer(map, context, layer, &tables, &mut output)?;
    }
    Ok(output)
}
