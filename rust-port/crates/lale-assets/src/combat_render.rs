//! Pure original-resource tactical compositor; original overlay1694:2721.
//!
//! See RENDERER_EXECUTION_MODEL.md and TERRAIN_RENDER_ARCHITECTURE.md. This
//! implements the idle battlefield, wall occlusion, pedestal and minimap only.
//! Action animation, numeric/status text, speech and action-button highlighting
//! remain separate, unimplemented original consumers. Redraw never advances RNG.
use crate::{decode_cmp, Error, Flib, IndexedImage, Palette6};
use lale_core::Dimensions;
use std::path::Path;

pub const GRID_WORDS: usize = 28 * 28;
const WIDTH: usize = 320;
const HEIGHT: usize = 200;

#[derive(Clone, Copy, Debug)]
struct Kor([i16; 6]);
struct Sprite {
    image: IndexedImage,
    kor: [Kor; 6],
}

/// Raw actors use DS:a08a+40*entity; element0 is the original dummy actor.
/// Terrain/occupancy use B*28+A. Camera and target use original [A,B] order.
/// `selected_entity` is DS:d5de (panel/minimap selection); `active_entity` is
/// DS:d576 (wall replacement). They need not be the same actor.
pub struct CombatScene<'a> {
    pub terrain: &'a [i16; GRID_WORDS],
    pub occupancy: &'a [i16; GRID_WORDS],
    pub actors: &'a [[i16; 20]],
    pub camera: [i16; 2],
    pub active_entity: i16,
    pub selected_entity: i16,
    pub target: Option<[i16; 2]>,
}

pub struct CombatResources {
    background: IndexedImage,
    tiles: IndexedImage,
    walls: IndexedImage,
    sprites: [Option<Sprite>; 7],
    wall_ground: [i16; 4],
    wall_colors: [u8; 4],
    pub palette: Palette6,
}

fn member<'a>(archive: &'a Flib<'_>, name: &str) -> Result<&'a [u8], Error> {
    archive
        .member(name)
        .map(|m| m.payload)
        .ok_or_else(|| Error(format!("missing original combat member {name}")))
}
fn image(archive: &Flib<'_>, name: &str) -> Result<IndexedImage, Error> {
    decode_cmp(member(archive, name)?).map_err(|e| Error(format!("{name}: {e}")))
}
fn literal(exe: &[u8], at: usize, size: usize) -> Result<String, Error> {
    let row = exe
        .get(at..at + size)
        .ok_or_else(|| Error("truncated combat name table".into()))?;
    let end = row
        .iter()
        .position(|&v| v == 0)
        .ok_or_else(|| Error("unterminated combat name".into()))?;
    if end == 0
        || !row[..end]
            .iter()
            .all(|v| v.is_ascii_alphanumeric() || *v == b'.')
    {
        return Err(Error("unsupported combat member spelling".into()));
    }
    Ok(String::from_utf8(row[..end].to_vec()).map_err(|e| Error(e.to_string()))?)
}
fn sprite(archive: &Flib<'_>, name: &str) -> Result<Sprite, Error> {
    let image = image(archive, name)?;
    let kor_name = format!(
        "{}.kor",
        name.trim_end_matches(".cmp").trim_end_matches(".CMP")
    );
    let bytes = member(archive, &kor_name)?;
    if bytes.len() != 72 {
        return Err(Error(
            "combat KOR must contain six twelve-byte records".into(),
        ));
    }
    let kor = std::array::from_fn(|i| {
        Kor(std::array::from_fn(|j| {
            i16::from_le_bytes([bytes[i * 12 + j * 2], bytes[i * 12 + j * 2 + 1]])
        }))
    });
    for Kor(k) in kor {
        if k[0] < 0
            || k[1] < 0
            || k[2] < k[0]
            || k[3] < k[1]
            || k[2] >= image.dimensions.width as i16
            || k[3] >= image.dimensions.height as i16
        {
            return Err(Error(format!("KOR outside original combat sprite {name}")));
        }
    }
    Ok(Sprite { image, kor })
}

impl CombatResources {
    /// Load only original archive members and original executable name tables.
    /// Appearance IDs are original1..16; unknown/strict-CMP discrepancies fail.
    /// Enemy groups are original creature table IDs; None leaves a slot unloaded.
    /// Wall selectors are DS:9f10..9f16 (area graphics selectors), not terrain IDs.
    pub fn load(
        root: &Path,
        appearance_ids: [usize; 4],
        enemy_groups: [Option<usize>; 3],
        wall_selectors: [u8; 4],
    ) -> Result<Self, Error> {
        let read = |name: &str| {
            std::fs::read(root.join("lale").join(name)).map_err(|e| Error(e.to_string()))
        };
        let archive_bytes = read("SAVAS.CKD")?;
        let exe = read("IST.EXE")?;
        let archive = Flib::parse(&archive_bytes)?;
        let background = image(&archive, "anakes.cmp")?;
        if background.dimensions
            != (Dimensions {
                width: 320,
                height: 200,
            })
        {
            return Err(Error("unsupported ANAKES dimensions".into()));
        }
        let tiles = image(&archive, "yericon.cmp")?;
        let palette = Palette6::parse(member(&archive, "palbat.pal")?)?;
        let mut sprites: [Option<Sprite>; 7] = std::array::from_fn(|_| None);
        for (slot, id) in appearance_ids.into_iter().enumerate() {
            if !(1..=16).contains(&id) {
                return Err(Error("combat appearance outside original1..16".into()));
            }
            let name = literal(&exe, 0x19200 + 0x269b + 13 * id, 13)?;
            sprites[slot] = Some(sprite(&archive, &name)?);
        }
        for (i, id) in enemy_groups.into_iter().enumerate() {
            if let Some(id) = id {
                let record = crate::combat_data::creature_name(&exe, id, id..=id)?;
                let end = record
                    .bytes
                    .iter()
                    .position(|&v| v == 0)
                    .ok_or_else(|| Error("unterminated creature name".into()))?;
                let name =
                    std::str::from_utf8(&record.bytes[..end]).map_err(|e| Error(e.to_string()))?;
                sprites[i + 4] = Some(sprite(&archive, &format!("{name}.cmp"))?);
            }
        }
        let fallback = *wall_selectors.iter().find(|&&v| v != 0).ok_or_else(|| {
            Error("original combat wall fallback undefined for empty selectors".into())
        })?;
        let mut walls = IndexedImage {
            dimensions: Dimensions {
                width: 300,
                height: 60,
            },
            indices: vec![0; 300 * 60],
        };
        let mut wall_ground = [2, 3, 3, 3]; // original initialized DS:262a..2630
        let mut wall_colors = [204, 241, 241, 241]; // original initialized DS:2626..2629
        for i in 0..6 {
            let name = match i {
                0 => "duvarica.cmp".into(),
                1 => "duvaricb.cmp".into(),
                _ => format!(
                    "duvaric{}.cmp",
                    if wall_selectors[i - 2] == 0 {
                        fallback
                    } else {
                        wall_selectors[i - 2]
                    }
                ),
            };
            let part = image(&archive, &name)?;
            if part.dimensions
                != (Dimensions {
                    width: 50,
                    height: 60,
                })
            {
                return Err(Error("unsupported original wall strip dimensions".into()));
            }
            for y in 0..60 {
                walls.indices[y * 300 + i * 50..y * 300 + (i + 1) * 50]
                    .copy_from_slice(&part.indices[y * 50..(y + 1) * 50]);
            }
            if i >= 2 {
                // 0570 jump table uses the raw selector, not its fallback.
                if let Some(&(ground, color)) = wall_selectors[i - 2].checked_sub(1).and_then(|v| {
                    [
                        (2, 183),
                        (3, 248),
                        (3, 243),
                        (1, 147),
                        (5, 238),
                        (9, 148),
                        (4, 175),
                        (6, 136),
                    ]
                    .get(v as usize)
                }) {
                    wall_ground[i - 2] = ground;
                    wall_colors[i - 2] = color;
                }
            }
        }
        Ok(Self {
            background,
            tiles,
            walls,
            sprites,
            wall_ground,
            wall_colors,
            palette,
        })
    }

    pub fn render(&self, scene: &CombatScene<'_>) -> Result<IndexedImage, Error> {
        if scene.camera.iter().any(|&v| !(0..=20).contains(&v)) || scene.actors.len() < 29 {
            return Err(Error(
                "combat render requires camera0..20 and original29 actor slots".into(),
            ));
        }
        let mut frame = IndexedImage {
            dimensions: self.background.dimensions,
            indices: self.background.indices.clone(),
        };
        for a in scene.camera[0]..=scene.camera[0] + 6 {
            for b in (scene.camera[1]..=scene.camera[1] + 6).rev() {
                let at = b as usize * 28 + a as usize;
                let terrain = scene.terrain[at];
                let la = i32::from(a - scene.camera[0]);
                let lb = i32::from(b - scene.camera[1]);
                let x = 30 * lb + 14 * la + 10;
                let y = 14 * la + 24;
                if (1..=9).contains(&terrain) {
                    self.tile(&mut frame, x, y, terrain)?;
                } else if (10..=13).contains(&terrain) {
                    self.tile(&mut frame, x, y, self.wall_ground[(terrain - 10) as usize])?;
                } else if terrain != 0 {
                    return Err(Error(format!(
                        "unsupported original terrain render class {terrain}"
                    )));
                }
                if scene.target == Some([a, b]) {
                    self.tile(&mut frame, x, y - 1, 10)?;
                }
                if terrain > 9 {
                    let near = [
                        at as isize + 28,
                        at as isize + 27,
                        at as isize - 1,
                        at as isize + 26,
                        at as isize + 25,
                    ]
                    .into_iter()
                    .any(|i| {
                        i >= 0 && scene.occupancy.get(i as usize) == Some(&scene.active_entity)
                    }) && scene.active_entity > 0;
                    let near_target = scene.target.is_some_and(|[ta, tb]| {
                        [
                            (a, b + 1),
                            (a - 1, b + 1),
                            (a - 1, b),
                            (a - 2, b + 1),
                            (a - 3, b + 1),
                            (a, b),
                        ]
                        .contains(&(ta, tb))
                    });
                    self.tile(
                        &mut frame,
                        x - 3,
                        y - 36,
                        if near || near_target { 15 } else { terrain + 6 },
                    )?;
                }
                let entity = scene.occupancy[at];
                if entity > 0 {
                    let actor = scene
                        .actors
                        .get(entity as usize)
                        .ok_or_else(|| Error("occupant outside actor table".into()))?;
                    self.actor(
                        &mut frame,
                        actor,
                        x + 24,
                        y + 16 + if terrain == 0 { 20 } else { 0 },
                        actor[2],
                    )?;
                }
            }
        }
        let pedestal = if let Some([a, b]) = scene.target {
            grid_at(scene.occupancy, a, b)
        } else {
            scene.selected_entity
        };
        if pedestal > 0 {
            self.actor(
                &mut frame,
                scene
                    .actors
                    .get(pedestal as usize)
                    .ok_or_else(|| Error("pedestal actor outside table".into()))?,
                75,
                142,
                3,
            )?;
        }
        self.minimap(&mut frame, scene);
        Ok(frame)
    }
    fn tile(&self, frame: &mut IndexedImage, x: i32, y: i32, kind: i16) -> Result<(), Error> {
        if (1..14).contains(&kind) {
            blit(
                &self.tiles,
                frame,
                [50 * i32::from(kind - 1), 0, 43, 35],
                [x, y],
                false,
            )
        } else if (14..20).contains(&kind) {
            blit(
                &self.walls,
                frame,
                [50 * i32::from(kind - 14), 0, 50, 60],
                [x, y],
                false,
            )
        } else {
            Err(Error("unsupported original tile callback class".into()))
        }
    }
    fn actor(
        &self,
        frame: &mut IndexedImage,
        actor: &[i16; 20],
        x: i32,
        y: i32,
        pose: i16,
    ) -> Result<(), Error> {
        let group = usize::try_from(
            actor[3]
                .checked_sub(1)
                .ok_or_else(|| Error("invalid combat sprite group".into()))?,
        )
        .map_err(|_| Error("invalid combat sprite group".into()))?;
        let sprite = self
            .sprites
            .get(group)
            .and_then(Option::as_ref)
            .ok_or_else(|| Error("combat sprite group not loaded".into()))?;
        // Original >=100 computes effect anchors without copying pixels.
        // This pure frame API has no effect-anchor outputs to return.
        if pose >= 100 {
            return Ok(());
        }
        let (index, mirror) = match pose {
            1..=3 => ((pose - 1) as usize, false),
            4 => (1, true),
            5..=7 => ((pose - 2) as usize, false),
            8 => (4, true),
            _ => return Err(Error("combat pose outside original1..8".into())),
        };
        let Kor(k) = sprite.kor[index];
        let [sx, sy, ex, ey, ax, ay] = k.map(i32::from);
        let dx = x - if mirror { ex + 4 - ax } else { ax + 4 - sx };
        let dy = y - (ay + 8 - sy);
        blit(
            &sprite.image,
            frame,
            [sx, sy, ex - sx + 1, ey - sy + 1],
            [dx, dy],
            mirror,
        )
    }
    fn minimap(&self, frame: &mut IndexedImage, scene: &CombatScene<'_>) {
        let mut map = [0u8; 27 * 27];
        for b in 0..27 {
            for a in 0..27 {
                let t = scene.terrain[b * 28 + a];
                map[b * 27 + a] = if (10..=13).contains(&t) {
                    self.wall_colors[(t - 10) as usize]
                } else if t == 6 {
                    42
                } else {
                    0
                };
            }
        }
        // PALBAT runtime remap DS9664=220,9665=255,9669=42,966a=136,966b=170.
        // Retained RUN3 INPUT/EQUIP captures independently retain these indices.
        for (id, actor) in scene.actors.iter().enumerate().take(29).skip(1) {
            if actor[0] > 0 && (0..27).contains(&actor[4]) && (0..27).contains(&actor[5]) {
                map[actor[4] as usize * 27 + actor[5] as usize] =
                    if id as i16 == scene.selected_entity {
                        255
                    } else if actor[7] == 2 {
                        220
                    } else {
                        136
                    };
            }
        }
        if let Some([a, b]) = scene.target {
            if (0..27).contains(&a) && (0..27).contains(&b) {
                map[b as usize * 27 + a as usize] = 170;
            }
        }
        for a in 0..27 {
            for b in 0..27 {
                frame.indices[(a + 126) * WIDTH + b + a + 5] = map[b * 27 + a];
            }
        }
    }
}
fn grid_at(grid: &[i16; GRID_WORDS], a: i16, b: i16) -> i16 {
    if (0..28).contains(&a) && (0..28).contains(&b) {
        grid[b as usize * 28 + a as usize]
    } else {
        0
    }
}
/// Keyed callback0341/03c4, with source-preserving clipping. The original
/// negative-top path is explicit in0387; framebuffer edges bound host writes.
fn blit(
    source: &IndexedImage,
    dest: &mut IndexedImage,
    rect: [i32; 4],
    at: [i32; 2],
    mirror: bool,
) -> Result<(), Error> {
    let [sx, sy, w, h] = rect;
    let [dx, dy] = at;
    let sw = i32::from(source.dimensions.width);
    let sh = i32::from(source.dimensions.height);
    if sx < 0 || sy < 0 || w < 0 || h < 0 || sx + w > sw || sy + h > sh {
        return Err(Error(
            "combat source rectangle outside original resource".into(),
        ));
    }
    for y in 0..h {
        for x in 0..w {
            let tx = dx + if mirror { w - 1 - x } else { x };
            let ty = dy + y;
            if (0..WIDTH as i32).contains(&tx) && (0..HEIGHT as i32).contains(&ty) {
                let v = source.indices[((sy + y) * sw + sx + x) as usize];
                if v != 254 {
                    dest.indices[ty as usize * WIDTH + tx as usize] = v;
                }
            }
        }
    }
    Ok(())
}
