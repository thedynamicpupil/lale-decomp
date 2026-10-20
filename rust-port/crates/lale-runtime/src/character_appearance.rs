//! Original character-screen appearance layers; no guessed stats, text or timing.
//! Evidence: analysis/phase-five/priority-appearance-20261014/APPEARANCE_RENDERING.md.
use lale_assets::{decode_cmp, Flib, IndexedImage, Palette6};
use std::path::Path;

const WIDTH: usize = 320;
const HEIGHT: usize = 200;
const PIXELS: usize = WIDTH * HEIGHT;

#[derive(Clone, Copy, Debug)]
struct Kor {
    x0: i32,
    y0: i32,
    x1: i32,
    y1: i32,
    anchor_x: i32,
    anchor_y: i32,
}
struct Appearance {
    face: IndexedImage,
    body: Result<IndexedImage, String>,
    kor: Vec<Kor>,
}
/// Owns original indexed resources. IDs are original one-based appearance/race/sex.
/// `render` returns a complete 320x200 indexed PALBAT framebuffer.
/// IROSP1 (appearance13) remains an explicit unsupported strict-CMP discrepancy.
pub struct CharacterAppearance {
    background: IndexedImage,
    symbols: IndexedImage,
    appearances: Vec<Appearance>,
    pub palette: Palette6,
}
fn member<'a>(archive: &'a Flib<'_>, name: &str) -> Result<&'a [u8], String> {
    archive
        .member(name)
        .map(|m| m.payload)
        .ok_or_else(|| format!("missing original member {name}"))
}
fn decode(archive: &Flib<'_>, name: &str) -> Result<IndexedImage, String> {
    decode_cmp(member(archive, name)?).map_err(|e| format!("{name}: {e}"))
}
fn parse_kor(bytes: &[u8]) -> Result<Vec<Kor>, String> {
    if bytes.len() != 6 * 12 {
        return Err(format!(
            "expected six 12-byte KOR records, got {} bytes",
            bytes.len()
        ));
    }
    bytes
        .chunks_exact(12)
        .map(|r| {
            let word = |i| i32::from(i16::from_le_bytes([r[i], r[i + 1]]));
            let k = Kor {
                x0: word(0),
                y0: word(2),
                x1: word(4),
                y1: word(6),
                anchor_x: word(8),
                anchor_y: word(10),
            };
            if k.x0 < 0 || k.y0 < 0 || k.x1 < k.x0 || k.y1 < k.y0 {
                return Err("invalid original KOR inclusive rectangle".into());
            }
            Ok(k)
        })
        .collect()
}
impl CharacterAppearance {
    pub fn load(root: &Path) -> Result<Self, String> {
        let read =
            |name: &str| std::fs::read(root.join("lale").join(name)).map_err(|e| e.to_string());
        let ivir_bytes = read("IVIR.CKD")?;
        let savas_bytes = read("SAVAS.CKD")?;
        let exe = read("IST.EXE")?;
        let ivir = Flib::parse(&ivir_bytes).map_err(|e| e.to_string())?;
        let savas = Flib::parse(&savas_bytes).map_err(|e| e.to_string())?;
        let background = decode(&ivir, "KARAKTER.CMP")?;
        let symbols = decode(&ivir, "SEMATIK.CMP")?;
        if background.dimensions.width != 320
            || background.dimensions.height != 200
            || symbols.dimensions.width != 200
            || symbols.dimensions.height != 20
        {
            return Err("unsupported original character/symbol dimensions".into());
        }
        let palette = Palette6::parse(member(&savas, "PALBAT.PAL")?).map_err(|e| e.to_string())?;
        let mut appearances = Vec::new();
        for id in 1..=16 {
            // Original DS:269b + 13*appearance, original DS file base 0x19200.
            let at = 0x19200 + 0x269b + id * 13;
            let cell = exe.get(at..at + 13).ok_or("truncated appearance table")?;
            let end = cell
                .iter()
                .position(|&v| v == 0)
                .ok_or("unterminated appearance name")?;
            let name = std::str::from_utf8(&cell[..end]).map_err(|_| "invalid appearance name")?;
            if !name.ends_with(".cmp")
                || !name.bytes().all(|v| v.is_ascii_alphanumeric() || v == b'.')
            {
                return Err("unsupported appearance-table spelling".into());
            }
            let face = decode(&ivir, &format!("s{name}"))?;
            if face.dimensions.width != 160 || face.dimensions.height != 32 {
                return Err(format!("unsupported portrait dimensions for {name}"));
            }
            let body = decode(&savas, name);
            // Preserve strict failure as data, never crop or substitute appearance13.
            if id != 13 && body.is_err() {
                return Err(body.err().unwrap());
            }
            let kor_name = format!("{}.kor", name.trim_end_matches(".cmp"));
            let kor = parse_kor(member(&savas, &kor_name)?)?;
            if let Ok(image) = &body {
                for k in &kor {
                    if k.x1 >= i32::from(image.dimensions.width)
                        || k.y1 >= i32::from(image.dimensions.height)
                    {
                        return Err(format!("KOR source outside original {name}"));
                    }
                }
            }
            appearances.push(Appearance { face, body, kor });
        }
        Ok(Self {
            background,
            symbols,
            appearances,
            palette,
        })
    }

    pub fn render(
        &self,
        appearance: u16,
        race: u16,
        sex: u16,
        pose: u16,
        face: usize,
    ) -> Result<Vec<u8>, String> {
        if !(1..=16).contains(&appearance)
            || !(1..=8).contains(&race)
            || !(1..=2).contains(&sex)
            || face >= 5
        {
            return Err("appearance/race/sex/face outside verified resource bounds".into());
        }
        let a = &self.appearances[usize::from(appearance - 1)];
        let body = a.body.as_ref().map_err(|e| {
            format!(
                "appearance {appearance} unsupported: {e}; full excess output must not be cropped"
            )
        })?;
        let mut frame = self.background.indices.clone();
        // 167c:011f initial face, 167c:035d restores body panel then draws body.
        copy_opaque(&mut frame, &a.face, face * 32, 0, 32, 32, 68, 53)?;
        draw_body(&mut frame, body, &a.kor, pose, 42, 120)?;
        // 167c:1753 copies symbol cells opaquely, including index0/254.
        copy_opaque(
            &mut frame,
            &self.symbols,
            usize::from(race - 1) * 20,
            0,
            20,
            20,
            68,
            88,
        )?;
        copy_opaque(
            &mut frame,
            &self.symbols,
            usize::from(sex + 7) * 20,
            0,
            20,
            20,
            68,
            111,
        )?;
        Ok(frame)
    }

    /// Same preserved PALBAT RGB expansion used by the existing menu inspector.
    pub fn rgba(&self, indices: &[u8]) -> Result<Vec<u32>, String> {
        if indices.len() != PIXELS {
            return Err("expected complete indexed framebuffer".into());
        }
        indices
            .iter()
            .map(|&i| {
                let [r, g, b] = self.palette.preview_rgb(i).map_err(|e| e.to_string())?;
                Ok(0xff00_0000 | u32::from(r) << 16 | u32::from(g) << 8 | u32::from(b))
            })
            .collect()
    }
}

#[allow(clippy::too_many_arguments)]
fn copy_opaque(
    dst: &mut [u8],
    image: &IndexedImage,
    sx: usize,
    sy: usize,
    width: usize,
    height: usize,
    dx: usize,
    dy: usize,
) -> Result<(), String> {
    let sw = usize::from(image.dimensions.width);
    let sh = usize::from(image.dimensions.height);
    if dst.len() != PIXELS
        || sx + width > sw
        || sy + height > sh
        || dx + width > WIDTH
        || dy + height > HEIGHT
    {
        return Err("opaque rectangle outside source/destination".into());
    }
    for row in 0..height {
        dst[(dy + row) * WIDTH + dx..(dy + row) * WIDTH + dx + width]
            .copy_from_slice(&image.indices[(sy + row) * sw + sx..(sy + row) * sw + sx + width]);
    }
    Ok(())
}

fn pose_record(pose: u16) -> Result<(usize, bool), String> {
    // Original 1694:0387 normalizes eight directions to six stored KOR cells.
    match pose {
        1..=3 => Ok((usize::from(pose - 1), false)),
        4 => Ok((1, true)),
        5..=7 => Ok((usize::from(pose - 2), false)),
        8 => Ok((4, true)),
        _ => Err("pose must be original direction 1..8".into()),
    }
}
fn draw_body(
    dst: &mut [u8],
    image: &IndexedImage,
    records: &[Kor],
    pose: u16,
    anchor_x: i32,
    anchor_y: i32,
) -> Result<(), String> {
    let (index, mirror) = pose_record(pose)?;
    let k = records.get(index).ok_or("KOR pose record absent")?;
    let width = k.x1 - k.x0 + 1;
    let mut height = k.y1 - k.y0 + 1;
    let dx = anchor_x
        - if mirror {
            k.x1 + 4 - k.anchor_x
        } else {
            k.anchor_x + 4 - k.x0
        };
    let mut dy = anchor_y - (k.anchor_y + 8 - k.y0);
    let mut sy = k.y0;
    // Original 0x4a167 clips negative top destination and advances source y.
    if dy < 0 {
        sy -= dy;
        height += dy;
        dy = 0;
    }
    if height <= 0 {
        return Ok(());
    }
    let sw = i32::from(image.dimensions.width);
    let sh = i32::from(image.dimensions.height);
    // Full verified appearance corpus fits; reject unsupported geometry rather
    // than invent other original clipping behavior outside the recovered path.
    if dst.len() != PIXELS
        || dx < 0
        || dx + width > WIDTH as i32
        || dy + height > HEIGHT as i32
        || k.x0 < 0
        || k.x0 + width > sw
        || sy < 0
        || sy + height > sh
    {
        return Err("sprite rectangle outside verified source/framebuffer extent".into());
    }
    for row in 0..height {
        for col in 0..width {
            let pixel = image.indices[((sy + row) * sw + k.x0 + col) as usize];
            if pixel != 254 {
                let x = dx + if mirror { width - 1 - col } else { col };
                dst[((dy + row) * WIDTH as i32 + x) as usize] = pixel;
            }
        }
    }
    Ok(())
}

#[cfg(test)]
mod tests {
    use super::*;
    fn root() -> std::path::PathBuf {
        Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..")
    }
    #[test]
    fn original_kor_mirror_anchor_and_mask() {
        let a = CharacterAppearance::load(&root()).unwrap();
        let actor = &a.appearances[0];
        let body = actor.body.as_ref().unwrap();
        for (pose, index, dx, dy, mirrored) in [
            (1, 0, 27, 78, false),
            (4, 1, 30, 78, true),
            (8, 4, 29, 77, true),
        ] {
            let mut frame = vec![253; PIXELS];
            draw_body(&mut frame, body, &actor.kor, pose, 42, 120).unwrap();
            let k = actor.kor[index];
            for y in k.y0..=k.y1 {
                for x in k.x0..=k.x1 {
                    let pixel = body.indices[(y * i32::from(body.dimensions.width) + x) as usize];
                    let target_x = dx + if mirrored { k.x1 - x } else { x - k.x0 };
                    assert_eq!(
                        frame[((dy + y - k.y0) * 320 + target_x) as usize],
                        if pixel == 254 { 253 } else { pixel }
                    );
                }
            }
            assert_eq!(frame[0], 253);
        }
    }
    #[test]
    fn corpus_layers_and_explicit_discrepancy() {
        let a = CharacterAppearance::load(&root()).unwrap();
        for id in 1..=16 {
            for pose in 1..=8 {
                let result = a.render(id, 1, 1, pose, 0);
                if id == 13 {
                    assert!(result.unwrap_err().contains("dimension discrepancy"));
                } else {
                    assert_eq!(result.unwrap().len(), PIXELS);
                }
            }
        }
        let frame = a.render(1, 1, 1, 1, 2).unwrap();
        assert_eq!(
            &frame[53 * 320 + 68..53 * 320 + 100],
            &a.appearances[0].face.indices[64..96]
        );
        assert_eq!(
            &frame[88 * 320 + 68..88 * 320 + 88],
            &a.symbols.indices[..20]
        );
        assert_eq!(
            &frame[111 * 320 + 68..111 * 320 + 88],
            &a.symbols.indices[160..180]
        );
        assert!(a.render(0, 1, 1, 1, 0).is_err());
        assert!(a.render(1, 9, 1, 1, 0).is_err());
        assert!(a.render(1, 1, 1, 0, 0).is_err());
        assert!(a.render(1, 1, 1, 1, 5).is_err());
        assert!(parse_kor(&[0; 71]).is_err());
    }
}
