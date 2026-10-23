//! Original1694:7574/b04d/b22f status panel, using original indexed assets.
//! Small text is16da:0dea (file5ddaa), GOCUK glyphs3x5, advance4.
//! Pure drawing: class refresh belongs to the host, never a redraw callback.
use crate::{acquisition_panel::icon_source_x, decode_cmp, Error, Flib, IndexedImage};
use lale_core::{
    combat::{Actor, Class},
    combat_party::Numeric,
};
use std::path::Path;

pub struct CombatUi {
    small: IndexedImage,
    icons: IndexedImage,
    portraits: [IndexedImage; 4],
    exe: Vec<u8>,
}
pub struct PanelState<'a> {
    pub party: &'a [Numeric; 4],
    pub actors: &'a [Actor; 29],
    pub classes: &'a [Class; 9],
    pub actor: usize,
    pub remaining: i16,
    pub names: Option<&'a [[u8; 74]; 4]>,
    /// Native modal selection.1..10 inventory;11..13 equipment destinations.
    pub selected: Option<usize>,
}
fn literal(exe: &[u8], at: usize) -> &[u8] {
    let b = &exe[0x19200 + at..];
    &b[..b.iter().position(|&b| b == 0).unwrap_or(0)]
}
fn copy(
    image: &IndexedImage,
    dst: &mut [u8],
    sx: usize,
    sy: usize,
    w: usize,
    h: usize,
    x: usize,
    y: usize,
    keyed: bool,
) {
    let stride = image.dimensions.width as usize;
    for row in 0..h {
        for col in 0..w {
            let v = image.indices[(sy + row) * stride + sx + col];
            if !keyed || v != 254 {
                dst[(y + row) * 320 + x + col] = v;
            }
        }
    }
}
pub fn outline(dst: &mut [u8], x: usize, y: usize, w: usize, h: usize, color: u8) {
    for a in x..x + w {
        dst[y * 320 + a] = color;
        dst[(y + h - 1) * 320 + a] = color;
    }
    for b in y..y + h {
        dst[b * 320 + x] = color;
        dst[b * 320 + x + w - 1] = color;
    }
}
impl CombatUi {
    pub fn load(root: &Path, appearances: [usize; 4]) -> Result<Self, Error> {
        let bytes = std::fs::read(root.join("lale/IVIR.CKD")).map_err(|e| Error(e.to_string()))?;
        let bank = Flib::parse(&bytes)?;
        let exe = std::fs::read(root.join("lale/IST.EXE")).map_err(|e| Error(e.to_string()))?;
        let image = |name: &str| {
            decode_cmp(
                bank.member(name)
                    .ok_or_else(|| Error(format!("missing UI {name}")))?
                    .payload,
            )
        };
        let small = image("GOCUK.CMP")?;
        let icons = image("ITEMBANK.CMP")?;
        let mut portraits = Vec::new();
        for id in appearances {
            if !(1..=16).contains(&id) {
                return Err(Error("invalid portrait ID".into()));
            }
            let name = std::str::from_utf8(literal(&exe, 0x269b + 13 * id))
                .map_err(|e| Error(e.to_string()))?;
            portraits.push(image(&format!("s{name}"))?);
        }
        if small.dimensions.width != 3
            || small.dimensions.height != 320
            || icons.dimensions.width != 780
            || icons.dimensions.height != 15
            || portraits
                .iter()
                .any(|p| p.dimensions.width != 160 || p.dimensions.height != 32)
        {
            return Err(Error("unsupported original combat UI dimensions".into()));
        }
        Ok(Self {
            small,
            icons,
            portraits: portraits.try_into().ok().unwrap(),
            exe,
        })
    }
    /// Exact small-font dispatch; spaces/unknown bytes advance without a glyph.
    pub fn text(&self, pixels: &mut [u8], text: &[u8], x: usize, y: usize, color: u8) {
        let mut dx = x;
        let mut dy = y;
        for &c in text.iter().take_while(|&&c| c != 0) {
            let glyph = match c {
                b'a'..=b'z' if c != b'i' => Some(c - b'a'),
                b'A'..=b'Z' => Some(c - b'A'),
                b'!'..=b'@' => Some(c - 1),
                0x80 | 0x87 => Some(26),
                0xa6 | 0xa7 => Some(27),
                0x98 | b'i' => Some(28),
                0x81 | 0x9a => Some(31),
                0x8d => Some(8),
                0x94 | 0x99 => Some(29),
                0x9e | 0x9f => Some(30),
                _ => None,
            };
            if c == 10 || dx + 4 >= 320 {
                dy += 7;
                dx = x;
            }
            if c == 10 {
                continue;
            }
            if let Some(g) = glyph {
                for row in 0..5 {
                    for col in 0..3 {
                        if dx + col < 320
                            && dy + row < 200
                            && self.small.indices[(g as usize * 5 + row) * 3 + col] == 255
                        {
                            pixels[(dy + row) * 320 + dx + col] = color;
                        }
                    }
                }
            }
            dx += 4;
        }
    }
    fn icon(&self, pixels: &mut [u8], raw: i16, x: usize, y: usize) -> Result<(), Error> {
        let sx = icon_source_x(raw as u16)? as usize;
        if sx + 15 > self.icons.dimensions.width as usize {
            return Err(Error("item icon out of range".into()));
        }
        if raw != 0 {
            for row in y - 1..y + 15 {
                pixels[row * 320 + x - 1..row * 320 + x + 15].fill(0);
            }
        }
        copy(&self.icons, pixels, sx, 0, 15, 15, x, y, true);
        Ok(())
    }
    pub fn enemy_name(&self, species: usize) -> &[u8] {
        if species > 0 && species <= 48 {
            literal(&self.exe, 0x1eb3 + 19 * species)
        } else {
            b"enemy"
        }
    }
    pub fn item_name(&self, raw: i16) -> &[u8] {
        let id = raw % 100;
        if id < 0 {
            return b"?";
        }
        if id < 26 || id == 43 {
            literal(
                &self.exe,
                0xce2 + 15 * if id == 43 { 26 } else { id as usize },
            )
        } else if id < 33 {
            literal(&self.exe, 0xece + 16 * id as usize)
        } else if id < 52 {
            literal(&self.exe, 0xf0c + 15 * id as usize)
        } else {
            b"?"
        }
    }
    /// Original7f80 suffixes: quality only when nonzero, then carried weight.
    pub fn item_description(&self, raw: i16) -> Vec<u8> {
        if raw == 0 {
            return b"bos".to_vec();
        }
        let mut name = self.item_name(raw).to_vec();
        if raw / 100 != 0 {
            name.extend_from_slice(format!("+{} ", raw / 100).as_bytes());
        }
        let id = raw % 100;
        let weight = if (1..26).contains(&id) || id == 43 {
            let row = if id == 43 { 26 } else { id as usize };
            i16::from_le_bytes(
                self.exe[0x19200 + 0xe7d + 14 * row..0x19200 + 0xe7f + 14 * row]
                    .try_into()
                    .unwrap(),
            )
        } else if (26..33).contains(&id) {
            i16::from_le_bytes(
                self.exe[0x19200 + 0x10aa + 2 * id as usize..0x19200 + 0x10ac + 2 * id as usize]
                    .try_into()
                    .unwrap(),
            )
        } else {
            1
        };
        name.extend_from_slice(format!(" ({weight})").as_bytes());
        name
    }
    pub fn render(&self, pixels: &mut [u8], s: &PanelState<'_>) -> Result<(), Error> {
        if pixels.len() != 64000 || !(25..=28).contains(&s.actor) {
            return Ok(());
        }
        let p = s.actor - 25;
        let n = &s.party[p];
        let a = s.actors[s.actor];
        let c = s.classes[a[3] as usize];
        copy(&self.portraits[p], pixels, 0, 0, 32, 32, 25, 165, false);
        for slot in 0..10 {
            self.icon(
                pixels,
                n[35 + slot],
                236 + 17 * (slot % 5),
                165 + 17 * (slot / 5),
            )?;
        }
        for eq in 0..3 {
            let r = n[30 + eq] as usize;
            let raw = *n
                .get(r)
                .ok_or_else(|| Error("invalid equipment ref".into()))?;
            if raw != 0 {
                self.icon(pixels, raw, 59 + 17 * eq, 165)?;
            }
        }
        for y in 164..198 {
            pixels[y * 320 + 174..y * 320 + 217].fill(0);
        }
        for (text, y) in [
            (format!("{}/{}", a[0], c[0]), 165),
            (format!("{}/{}", a[1], c[8]), 172),
            (c[3].to_string(), 179),
            (c[4].to_string(), 186),
            (a[9].to_string(), 193),
        ] {
            self.text(pixels, text.as_bytes(), 174, y, 220);
        }
        for (v, y) in [(s.remaining, 171), (c[6] % 100, 189)] {
            for row in y..y + 6 {
                pixels[row * 320 + 222..row * 320 + 231].fill(0);
            }
            self.text(pixels, v.to_string().as_bytes(), 222, y, 220);
        }
        let name = s.names.map(|t| &t[p][..37]).unwrap_or(b"");
        self.text(pixels, name, 61, 192, 0);
        self.text(pixels, name, 60, 191, 255);
        let mut identity = literal(&self.exe, if n[2] == 1 { 0x6773 } else { 0x6779 }).to_vec();
        identity.push(b' ');
        if (1..=8).contains(&n[1]) {
            identity.extend_from_slice(literal(&self.exe, 0x2638 + 11 * n[1] as usize));
        }
        self.text(pixels, &identity, 61, 184, 0);
        self.text(pixels, &identity, 60, 183, 255);
        if let Some(slot) = s.selected {
            let (x, y) = if slot <= 10 {
                (235 + 17 * ((slot - 1) % 5), 164 + 17 * ((slot - 1) / 5))
            } else {
                (58 + 17 * (slot - 11), 164)
            };
            outline(pixels, x, y, 17, 17, 245);
        }
        Ok(())
    }
}
