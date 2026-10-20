//! Original Otopark UFUK1 resource inspection, not the room compositor/gameplay.
//! PAL3D load: physical34452..34460. UFUK1 slot79:34273..34292.
//! Original conditional horizon draw:1662 physical2c571..2c5ae.
use crate::sdl_window::{Input, Window};
use lale_assets::{decode_cmp, pc_map::PcMap, Flib, IndexedImage, Palette6};
use std::{error::Error, path::Path, time::Duration};

#[cfg(test)]
pub struct Background {
    pub pixels: Vec<u32>,
    pub source_indices: Vec<u8>,
}
#[cfg(test)]
impl Background {
    pub fn load(root: &Path) -> Result<Self, Box<dyn Error>> {
        let world_data = std::fs::read(root.join("lale/FRPOS.CKD"))?;
        let world = Flib::parse(&world_data)?;
        let map = PcMap::parse(world.member("PC1").ok_or("missing PC1")?.payload)?;
        if (map.width(), map.height(), map.initial_cell()?) != (10, 10, (2, 1)) {
            return Err("unexpected original PC1 identity".into());
        }
        let data = std::fs::read(root.join("lale/3D.CKD"))?;
        let archive = Flib::parse(&data)?;
        let image = decode_cmp(archive.member("UFUK1.CMP").ok_or("missing UFUK1")?.payload)?;
        if (image.dimensions.width, image.dimensions.height) != (200, 200) {
            return Err("unexpected original UFUK1 dimensions".into());
        }
        let palette = Palette6::parse(archive.member("PAL3D.PAL").ok_or("missing PAL3D")?.payload)?;
        let mut colors = [0xff00_0000; 256];
        for (index, color) in colors.iter_mut().enumerate() {
            let [r, g, b] = palette.preview_rgb(index as u8)?;
            *color |= u32::from(r) << 16 | u32::from(g) << 8 | u32::from(b);
        }
        let mut pixels = vec![colors[0]; 320 * 200];
        for (y, row) in image.indices.chunks_exact(200).enumerate() {
            for (x, &index) in row.iter().enumerate() {
                // Centering and showing every source index are debug inspection
                // choices. The game's conditional crop/composition is not used.
                pixels[y * 320 + x + 60] = colors[usize::from(index)];
            }
        }
        Ok(Self {
            pixels,
            source_indices: image.indices,
        })
    }
}

/// A complete original sprite sheet, inspected without projection or scaling.
struct Resource {
    name: String,
    offset: usize,
    relation: String,
    image: IndexedImage,
}
struct Inspector {
    resources: Vec<Resource>,
    colors: [u32; 256],
}
impl Inspector {
    fn load(root: &Path) -> Result<Self, Box<dyn Error>> {
        let world_bytes = std::fs::read(root.join("lale/FRPOS.CKD"))?;
        let world = Flib::parse(&world_bytes)?;
        let map = PcMap::parse(world.member("PC1").ok_or("missing PC1")?.payload)?;
        let selectors = map.graphic_selectors();
        if selectors != [0, 2, 3, 9] {
            return Err("unexpected original PC1 graphics selectors".into());
        }
        let bytes = std::fs::read(root.join("lale/3D.CKD"))?;
        let archive = Flib::parse(&bytes)?;
        let palette = Palette6::parse(archive.member("PAL3D.PAL").ok_or("missing PAL3D")?.payload)?;
        let mut colors = [0xff00_0000; 256];
        for (i, color) in colors.iter_mut().enumerate() {
            let [r, g, b] = palette.preview_rgb(i as u8)?;
            *color |= u32::from(r) << 16 | u32::from(g) << 8 | u32::from(b);
        }
        let mut resources = Vec::new();
        let mut add = |name: &str, mut relation: String| -> Result<(), Box<dyn Error>> {
            let member = archive
                .member(name)
                .ok_or_else(|| format!("missing {name}"))?;
            if name.eq_ignore_ascii_case("MERDUST.CMP") {
                relation.push_str(" | upward-stair visuals (user-confirmed)");
            } else if name.eq_ignore_ascii_case("MERDALT.CMP") {
                relation.push_str(" | downward-stair visuals (user-confirmed)");
            }
            resources.push(Resource {
                name: member.name.to_string(),
                offset: member.offset,
                relation,
                image: decode_cmp(member.payload)?,
            });
            Ok(())
        };
        add("UFUK1.CMP", "area0 horizon slot79".into())?;
        // Source 33bcd..33eac: four PC metadata selectors index 13-byte
        // literal tables2978/29fa; nonzero entries load slots24+i and28+i.
        // Read those literal bytes rather than constructing names from semantics.
        let exe = std::fs::read(root.join("lale/IST.EXE"))?;
        let ds_file = 0x2400 + 0x16e0 * 16;
        for (table, slot) in [(0x2978, 24), (0x29fa, 28)] {
            for (i, selector) in selectors.iter().enumerate() {
                let at = ds_file + table + usize::from(*selector) * 13;
                let literal = exe
                    .get(at..at + 13)
                    .ok_or("truncated source resource table")?;
                let end = literal
                    .iter()
                    .position(|&b| b == 0)
                    .ok_or("unterminated literal")?;
                if end != 0 {
                    add(
                        std::str::from_utf8(&literal[..end])?,
                        format!("PC1 selector{i}={selector} slot{}", slot + i),
                    )?;
                }
            }
        }
        let (x, y) = map.initial_cell()?;
        let cell = map.cell(x, y).ok_or("missing initial cell")?;
        // Source2c1d1..2c248 and33ef4..34056: initial fields9/8 select
        // slots35+field9 and55+field8, literal indicesfield-1.
        for (field, table, slot_base) in [(9, 0x2b18, 35), (8, 0x2c1c, 55)] {
            let value = usize::from(cell[field]);
            let entry = value.checked_sub(1).ok_or("zero surface selector")?;
            let at = ds_file + table + entry * 13;
            let literal = exe
                .get(at..at + 13)
                .ok_or("truncated source surface table")?;
            let end = literal
                .iter()
                .position(|&b| b == 0)
                .ok_or("unterminated literal")?;
            add(
                std::str::from_utf8(&literal[..end])?,
                format!("PC1(2,1) field{field}={value} slot{}", slot_base + value),
            )?;
        }
        Ok(Self { resources, colors })
    }
    fn frame(&self, selected: usize, pan_x: usize, pan_y: usize) -> Vec<u32> {
        let image = &self.resources[selected].image;
        let width = usize::from(image.dimensions.width);
        let height = usize::from(image.dimensions.height);
        let shown_w = width.min(320);
        let shown_h = height.min(200);
        let x0 = pan_x.min(width.saturating_sub(320));
        let y0 = pan_y.min(height.saturating_sub(200));
        let mut out = vec![self.colors[0]; 320 * 200];
        for y in 0..shown_h {
            for x in 0..shown_w {
                out[(y + (200 - shown_h) / 2) * 320 + x + (320 - shown_w) / 2] =
                    self.colors[usize::from(image.indices[(y + y0) * width + x + x0])];
            }
        }
        out
    }
}

/// True means application quit, false means Escape/back or bounded smoke end.
pub fn run(
    root: &Path,
    window: &mut Window,
    smoke_frames: Option<usize>,
) -> Result<bool, Box<dyn Error>> {
    let inspector = Inspector::load(root)?;
    let (mut selected, mut pan_x, mut pan_y) = (0usize, 0usize, 0usize);
    window.text_input(false);
    eprintln!("Otopark DEBUG SOURCE SHEETS, no room/gameplay: Left/Right resources, WASD pan at 1:1, Home reset, Esc return. PAL3D original palette; every sheet index is displayed opaquely.");
    let mut frames = 0usize;
    loop {
        for event in window.poll() {
            match event {
                Input::Quit | Input::Key(113) => return Ok(true),
                Input::Key(27) => return Ok(false),
                Input::Key(1073741903) => {
                    selected = (selected + 1) % inspector.resources.len();
                    pan_x = 0;
                    pan_y = 0;
                }
                Input::Key(1073741904) => {
                    selected =
                        (selected + inspector.resources.len() - 1) % inspector.resources.len();
                    pan_x = 0;
                    pan_y = 0;
                }
                Input::Key(97) => pan_x = pan_x.saturating_sub(16),
                Input::Key(100) => {
                    pan_x = (pan_x + 16).min(
                        usize::from(inspector.resources[selected].image.dimensions.width)
                            .saturating_sub(320),
                    )
                }
                Input::Key(119) => pan_y = pan_y.saturating_sub(16),
                Input::Key(115) => {
                    pan_y = (pan_y + 16).min(
                        usize::from(inspector.resources[selected].image.dimensions.height)
                            .saturating_sub(200),
                    )
                }
                Input::Key(1073741898) => {
                    pan_x = 0;
                    pan_y = 0;
                }
                _ => {}
            }
        }
        let resource = &inspector.resources[selected];
        window.title(&format!("DEBUG SOURCE {}/{} 3D.CKD:{} @{:x} {}x{} | {} | crop {},{} | arrows sheets WASD pan Esc back", selected+1, inspector.resources.len(), resource.name, resource.offset, resource.image.dimensions.width, resource.image.dimensions.height, resource.relation, pan_x, pan_y))?;
        window.present(&inspector.frame(selected, pan_x, pan_y))?;
        frames += 1;
        if smoke_frames.is_some_and(|limit| frames >= limit) {
            println!("Otopark source-sheet SDL smoke: {frames} presentations, {} verified loader-linked resources; no room gameplay", inspector.resources.len());
            return Ok(false);
        }
        std::thread::sleep(Duration::from_millis(16));
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn loader_linked_sheets_keep_original_indices_at_every_pan_boundary() {
        let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
        let inspector = Inspector::load(&root).unwrap();
        assert_eq!(
            inspector
                .resources
                .iter()
                .map(|r| r.name.to_ascii_lowercase())
                .collect::<Vec<_>>(),
            [
                "ufuk1.cmp",
                "duvar2.cmp",
                "duvar3.cmp",
                "merdust.cmp",
                "kapi2.cmp",
                "kapi3.cmp",
                "merdalt.cmp",
                "yer2.cmp",
                "tav2a.cmp"
            ]
        );
        for (selected, resource) in inspector.resources.iter().enumerate() {
            let w = usize::from(resource.image.dimensions.width);
            let h = usize::from(resource.image.dimensions.height);
            for (pan_x, pan_y) in [(0, 0), (usize::MAX, usize::MAX)] {
                let frame = inspector.frame(selected, pan_x, pan_y);
                let x0 = pan_x.min(w.saturating_sub(320));
                let y0 = pan_y.min(h.saturating_sub(200));
                for y in 0..h.min(200) {
                    for x in 0..w.min(320) {
                        let index = resource.image.indices[(y + y0) * w + x + x0];
                        assert_eq!(
                            frame[(y + (200 - h.min(200)) / 2) * 320 + x + (320 - w.min(320)) / 2],
                            inspector.colors[usize::from(index)]
                        );
                    }
                }
            }
        }
        // Retain accepted UFUK centering/palette behavior on the first page.
        assert_eq!(
            inspector.frame(0, 0, 0),
            Background::load(&root).unwrap().pixels
        );
    }
    #[test]
    fn preview_preserves_all_source_rows_and_palette_indices() {
        let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
        let background = Background::load(&root).unwrap();
        let data = std::fs::read(root.join("lale/3D.CKD")).unwrap();
        let archive = Flib::parse(&data).unwrap();
        let image = decode_cmp(archive.member("UFUK1.CMP").unwrap().payload).unwrap();
        let palette = Palette6::parse(archive.member("PAL3D.PAL").unwrap().payload).unwrap();
        assert_eq!(image.indices, background.source_indices);
        for (i, &index) in image.indices.iter().enumerate() {
            let [r, g, b] = palette.preview_rgb(index).unwrap();
            assert_eq!(
                background.pixels[(i / 200) * 320 + i % 200 + 60],
                0xff00_0000 | u32::from(r) << 16 | u32::from(g) << 8 | u32::from(b)
            );
        }
    }
}
