//! Native inputs to the original layer consumers, using named original offsets
//! for cross-checking. Projection data is supplied by the private local fixture loader.
use crate::{pc_map::PcMap, scene_layers::ViewState, scene_projection_200::fallback_200, Error};

pub struct SceneContext {
    pub words: Vec<u8>,
}
impl SceneContext {
    /// Fixed original200x200 projection only. Background size/availability,
    /// persistent occlusion bits and transition mode remain explicit state.
    pub fn new_200(
        map: &PcMap<'_>,
        view: ViewState,
        horizon_height: u16,
        horizon_available: bool,
        occlusion: u16,
    ) -> Result<Self, Error> {
        if view.facing >= 4 {
            return Err(Error("scene facing must be0..3".into()));
        }
        let mut context = Self {
            words: vec![0; 65536],
        };
        for (i, record) in fallback_200()?.iter().enumerate() {
            for (j, &value) in record.0.iter().enumerate() {
                context.set(0xb72a + i * 18 + j * 2, value);
            }
        }
        for at in [0x3afb, 0x3afd, 0x3aff, 0x3b01] {
            context.set(at, 200);
        }
        context.set(0x3af9, occlusion);
        context.set(0xe515, horizon_height);
        context.set(0xe517, u16::from(horizon_available));
        for (i, value) in map.graphic_selectors().into_iter().enumerate() {
            context.set(0x9f10 + i * 2, u16::from(value));
            // Original loader33c32 and33d4a: wall0; door235.
            context.set(0xb3ec + i * 14, 0);
            context.set(0xb3ec + (i + 4) * 14, 235);
        }
        context.words[0xb9eb] = map.width();
        context.words[0xb9ea] = map.height();
        context.set_view(view);
        Ok(context)
    }
    pub fn set_view(&mut self, view: ViewState) {
        self.words[0xb9f0] = view.facing;
        self.set(0xb9f3, view.x as u16);
        self.set(0xb9f1, view.y as u16);
        let (dx, dy) = crate::pc_map::direction_vector(view.facing);
        self.set(0xb9c6, dx as u16);
        self.set(0xb9c4, dy as u16);
    }
    pub fn set(&mut self, at: usize, value: u16) {
        self.words[at..at + 2].copy_from_slice(&value.to_le_bytes());
    }
    pub fn get(&self, at: usize) -> u16 {
        u16::from_le_bytes([self.words[at], self.words[at + 1]])
    }
}
