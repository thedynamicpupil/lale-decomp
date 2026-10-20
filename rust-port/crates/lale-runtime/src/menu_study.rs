//! Instruction-backed menu imagery. Manual stages deliberately avoid guessed timing.
use lale_assets::{decode_cmp, decode_cmp_stream, Flib, Palette6};
use std::path::Path;

pub const PIXELS: usize = 320 * 200;
pub const MENU: usize = 30;
pub const CHARACTER: usize = 31;
pub struct MenuStudy {
    // Complete streams retained, including the terminal extra index in A/B.
    pub a: Vec<u8>,
    pub b: Vec<u8>,
    font: Vec<u8>,
    palette: Palette6,
    character: Vec<u8>,
    character_palette: Palette6,
    labels: Vec<Vec<u8>>,
    top: Vec<Vec<u8>>,
    title: Vec<Vec<u8>>,
    pub selected: usize,
    last_mouse_region: Option<usize>,
}
fn member<'a>(archive: &'a Flib<'_>, name: &str) -> Result<&'a [u8], String> {
    archive
        .member(name)
        .map(|m| m.payload)
        .ok_or_else(|| format!("missing {name}"))
}
// Original 3599:04ad, physical 0x2823d. Equal indices bypass the table.
fn blend(a: &[u8], b: &[u8], table: &[u8]) -> Vec<u8> {
    a.iter()
        .zip(b)
        .map(|(&a, &b)| {
            if a == b {
                a
            } else {
                let lo = usize::from(a.min(b));
                let hi = usize::from(a.max(b));
                table[lo * (509 - lo) / 2 + hi - 1]
            }
        })
        .collect()
}
// Original 1682:0086 builds eleven intermediate images, not linear RGB alpha.
fn transitions(a: &[u8], b: &[u8], table: &[u8]) -> Vec<Vec<u8>> {
    let mut frames = vec![Vec::new(); 11];
    let middle = blend(a, b, table);
    frames[5] = middle.clone();
    let mut tmp = middle.clone();
    for frame in &mut frames[7..11] {
        tmp = blend(b, &tmp, table);
        *frame = tmp.clone();
    }
    frames[6] = blend(&frames[7], &middle, table);
    tmp = middle.clone();
    for i in (0..4).rev() {
        tmp = blend(a, &tmp, table);
        frames[i] = tmp.clone();
    }
    frames[4] = blend(&frames[3], &middle, table);
    frames.insert(0, a.to_vec());
    frames.push(b.to_vec());
    frames
}
impl MenuStudy {
    pub fn load(root: &Path) -> Result<Self, Box<dyn std::error::Error>> {
        let ivir_bytes = std::fs::read(root.join("lale/IVIR.CKD"))?;
        let savas_bytes = std::fs::read(root.join("lale/SAVAS.CKD"))?;
        let ivir = Flib::parse(&ivir_bytes)?;
        let savas = Flib::parse(&savas_bytes)?;
        let a = decode_cmp_stream(member(&ivir, "ACILISA.CMP")?)?;
        let b = decode_cmp_stream(member(&ivir, "ACILISB.CMP")?)?;
        // Only the observed originals are supported by this research renderer.
        for image in [&a, &b] {
            if image.dimensions.width != 320
                || image.dimensions.height != 200
                || image.indices.len() != PIXELS + 1
                || image.indices[PIXELS] != 0
            {
                return Err(
                    "unsupported menu stream; expected recorded 64001-index originals".into(),
                );
            }
        }
        eprintln!("ACILISA/B: all 64001 indices retained per stream; framebuffer reads 64000, extra index=0; original allocation issue remains open.");
        let font = decode_cmp(member(&ivir, "DENEYX.CMP")?)?;
        if font.dimensions.width != 13 || font.dimensions.height != 1000 {
            return Err("unsupported font dimensions".into());
        }
        let table = member(&ivir, "XDINTRO.RIX")?;
        if table.len() != 32640 {
            return Err("unsupported pair-blend table".into());
        }
        let top = transitions(&a.indices[..16000], &b.indices[..16000], table);
        let title = transitions(&a.indices[16000..32000], &b.indices[16000..32000], table);
        let exe = std::fs::read(root.join("lale/IST.EXE"))?;
        let mut labels = Vec::new();
        for offset in [0x4d01, 0x4d16, 0x4d2a, 0x4d3d] {
            let at = 0x19200 + offset;
            let bytes = exe.get(at..at + 64).ok_or("truncated original label")?;
            let end = bytes
                .iter()
                .position(|&v| v == 0)
                .ok_or("unterminated label")?;
            labels.push(bytes[..end].to_vec());
        }
        let character = decode_cmp(member(&ivir, "KARAKTER.CMP")?)?;
        if character.indices.len() != PIXELS {
            return Err("unsupported character background".into());
        }
        Ok(Self {
            a: a.indices,
            b: b.indices,
            font: font.indices,
            palette: Palette6::parse(member(&ivir, "ACILISA.PAL")?)?,
            character: character.indices,
            character_palette: Palette6::parse(member(&savas, "PALBAT.PAL")?)?,
            labels,
            top,
            title,
            selected: 0,
            last_mouse_region: None,
        })
    }
    pub fn stage_name(stage: usize) -> &'static str {
        match stage {
            0..=4 => "background palette level",
            5..=16 => "upper logo lookup blend",
            17..=28 => "episode title lookup blend",
            29 => "title complete, no options",
            MENU => "interactive menu",
            _ => "character appearance/input subset (generation incomplete)",
        }
    }
    pub fn indices(&self, stage: usize) -> Vec<u8> {
        if stage == CHARACTER {
            return self.character.clone();
        }
        let mut pixels = self.a[..PIXELS].to_vec();
        if stage >= 5 {
            pixels[..16000].copy_from_slice(&self.top[(stage - 4).min(12)]);
        }
        if stage >= 17 {
            pixels[16000..32000].copy_from_slice(&self.title[(stage - 16).min(12)]);
        }
        if stage == MENU {
            // Original menu callback 15dc:0004: one-pixel shadow, then foreground.
            for (i, label) in self.labels.iter().enumerate() {
                self.text(&mut pixels, label, 89, 136 + i as i32 * 11, 0xf4);
                self.text(
                    &mut pixels,
                    label,
                    88,
                    135 + i as i32 * 11,
                    if i == self.selected { 0xff } else { 0xf8 },
                );
            }
        }
        pixels
    }
    pub fn frame(&self, stage: usize) -> Result<Vec<u32>, String> {
        let level = if stage <= 4 { (stage * 16) as u8 } else { 64 };
        self.colorize(&self.indices(stage), stage == CHARACTER, level)
    }
    pub fn font_indices(&self) -> &[u8] {
        &self.font
    }
    pub fn colorize(&self, indices: &[u8], character: bool, level: u8) -> Result<Vec<u32>, String> {
        if level > 64 || indices.len() != PIXELS {
            return Err("invalid framebuffer/palette level".into());
        }
        let palette = if character {
            &self.character_palette
        } else {
            &self.palette
        };
        // Denominator64 from original DS:731e. Sampling levels is a study control,
        // not an assertion that the game performs only five palette updates.
        indices
            .iter()
            .map(|&index| {
                let rgb = palette
                    .triplets
                    .get(index as usize)
                    .ok_or("palette index out of bounds")?;
                let [r, g, b] = rgb.map(|v| {
                    let v = (u16::from(v) * u16::from(level) / 64) as u8;
                    (v << 2) | (v >> 4)
                });
                Ok(0xff00_0000 | u32::from(r) << 16 | u32::from(g) << 8 | u32::from(b))
            })
            .collect()
    }
    pub fn text(&self, pixels: &mut [u8], label: &[u8], mut x: i32, y: i32, color: u8) {
        for &byte in label {
            let glyph = match byte {
                0x21..=0x40 => Some(usize::from(byte - 0x21)),
                0x61..=0x7a => Some(usize::from(byte - 0x41)),
                0x5b..=0x60 => Some(usize::from(byte - 0x21)),
                0x7b..=0x7f => Some(usize::from(byte - 0x3b)),
                0x81 => Some(75),
                0x87 => Some(70),
                0x8d => Some(72),
                0x94 => Some(73),
                0x9f => Some(74),
                0xa6 => Some(69),
                0xa7 => Some(71),
                _ => None,
            };
            let Some(glyph) = glyph else {
                x += 3;
                continue;
            };
            let at = glyph * 143;
            let width = usize::from(self.font[at]) + 1;
            for row in 0..11 {
                for col in 0..width {
                    // Original 19d4:0022 writes color only when source == 0xff.
                    if self.font[at + row * 13 + col] == 0xff {
                        let dx = x + col as i32;
                        let dy = y + row as i32;
                        if (0..320).contains(&dx) && (0..200).contains(&dy) {
                            pixels[dy as usize * 320 + dx as usize] = color;
                        }
                    }
                }
            }
            x += width as i32 + 1;
        }
    }
    pub fn hover(&mut self, x: i32, y: i32) -> bool {
        // Original callback05e4 creates inclusive hitboxes;0515 chooses first.
        // Cursor50 has no +7 hotspot adjustment in the original poll routine.
        for i in 0..4 {
            let top = 127 + i as i32 * 11;
            if (88..=226).contains(&x) && (top..=top + 20).contains(&y) {
                // Selector15dc:1133 caches the last region that changed selection.
                // Mouse movement within that same region does not undo keyboard
                // selection, even after the pointer briefly leaves all regions.
                if self.selected != i && self.last_mouse_region != Some(i) {
                    self.selected = i;
                    self.last_mouse_region = Some(i);
                    return true;
                }
                return false;
            }
        }
        false // Pointer leaving a row retains the shared selected state.
    }
    pub fn reset_selection(&mut self) {
        self.selected = 0;
        self.last_mouse_region = None;
    }
}
