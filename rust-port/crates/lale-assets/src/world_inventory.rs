//! Original1670:4f3a character/inventory screen and1694:019f grid text.
use crate::{
    acquisition_panel::icon_source_x,
    combat_party_tables::CombatPartyTables,
    combat_ui::{outline, CombatUi},
    decode_cmp, decode_cmp_stream,
    world_ui::{normalize, Font, TextRun},
    Error, Flib, IndexedImage,
};
use lale_core::combat_party::Numeric;
use std::path::Path;

pub struct WorldInventory {
    pub tables: CombatPartyTables,
    background: IndexedImage,
    icons: IndexedImage,
    portraits: [IndexedImage; 4],
    font: IndexedImage,
    upper: IndexedImage,
    small: CombatUi,
    exe: Vec<u8>,
}
fn literal(exe: &[u8], at: usize) -> &[u8] {
    let b = &exe[0x19200 + at..];
    &b[..b.iter().position(|&v| v == 0).unwrap()]
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
    key: bool,
) {
    for r in 0..h {
        for c in 0..w {
            let v = image.indices[(sy + r) * image.dimensions.width as usize + sx + c];
            if !key || v != 254 {
                dst[(y + r) * 320 + x + c] = v;
            }
        }
    }
}
impl WorldInventory {
    pub fn load(root: &Path, appearances: [usize; 4]) -> Result<Self, Error> {
        let read = |name: &str| {
            std::fs::read(root.join("lale").join(name)).map_err(|e| Error(e.to_string()))
        };
        let exe = read("IST.EXE")?;
        let raw = read("3D.CKD")?;
        let bank = Flib::parse(&raw)?;
        // The original named VIEWPC stream emits64001 bytes. Preserve all bytes;
        // framebuffer rectangle consumers address only the320x200 prefix.
        let background = decode_cmp_stream(
            bank.member("VIEWPC.CMP")
                .ok_or_else(|| Error("missing VIEWPC".into()))?
                .payload,
        )?;
        if background.dimensions.width != 320
            || background.dimensions.height != 200
            || background.indices.len() != 64001
        {
            return Err(Error("unexpected original VIEWPC extent".into()));
        }
        let raw = read("IVIR.CKD")?;
        let bank = Flib::parse(&raw)?;
        let image = |name: &str| {
            decode_cmp(
                bank.member(name)
                    .ok_or_else(|| Error(format!("missing inventory {name}")))?
                    .payload,
            )
        };
        let mut portraits = Vec::new();
        for id in appearances {
            if !(1..=16).contains(&id) {
                return Err(Error("invalid portrait".into()));
            }
            let name = std::str::from_utf8(literal(&exe, 0x269b + 13 * id))
                .map_err(|e| Error(e.to_string()))?;
            portraits.push(image(&format!("s{name}"))?);
        }
        Ok(Self {
            tables: CombatPartyTables::read(&exe)?,
            icons: image("ITEMBANK.CMP")?,
            font: image("DENEYX.CMP")?,
            upper: image("IREM6.CMP")?,
            portraits: portraits.try_into().ok().unwrap(),
            small: CombatUi::load(root, appearances)?,
            background,
            exe,
        })
    }
    ///019f: gridX*8, gridY*9+8, black shadow one row below.
    fn text(&self, pixels: &mut [u8], text: &[u8], x: i16, y: i16, color: u8) -> Result<(), Error> {
        let font = Font {
            proportional: &self.font,
            uppercase: &self.upper,
        };
        for (dy, c) in [(1, 0), (0, color)] {
            font.draw(
                pixels,
                &TextRun {
                    text: text.to_vec(),
                    x: x * 8,
                    y: y * 9 + 8 + dy,
                    color: c,
                },
            )?;
        }
        Ok(())
    }
    fn icon(&self, dst: &mut [u8], raw: i16, x: usize, y: usize) -> Result<(), Error> {
        let sx = icon_source_x(raw as u16)? as usize;
        if sx + 15 > self.icons.dimensions.width as usize {
            return Err(Error("inventory icon outside bank".into()));
        }
        copy(&self.icons, dst, sx, 0, 15, 15, x, y, true);
        Ok(())
    }
    pub fn render(
        &self,
        party: &[Numeric; 4],
        names: &[[u8; 74]; 4],
        person: usize,
        selection: Option<usize>,
        destination: Option<usize>,
        hover: Option<usize>,
        message: &[u8],
        actors: &[[i16; 20]; 4],
    ) -> Result<Vec<u8>, Error> {
        if person >= 4
            || party
                .iter()
                .any(|n| n[30..33].iter().any(|&v| !(0..46).contains(&v)))
        {
            return Err(Error("invalid world inventory record".into()));
        }
        let mut pixels = self.background.indices[..64000].to_vec();
        let n = &party[person];
        copy(
            &self.portraits[person],
            &mut pixels,
            0,
            0,
            32,
            32,
            7,
            21,
            false,
        );
        for p in 0..4 {
            copy(
                &self.portraits[p],
                &mut pixels,
                0,
                0,
                32,
                32,
                156 + 35 * p,
                20,
                false,
            );
        }
        outline(&mut pixels, 155 + 35 * person, 19, 34, 34, 220);
        for s in 0..10 {
            self.icon(&mut pixels, n[35 + s], 1 + 16 * s, 1)?;
        }
        for e in 0..3 {
            let raw = n[n[30 + e] as usize];
            if raw != 0 {
                for y in 38..53 {
                    pixels[y * 320 + 41 + 17 * e..y * 320 + 56 + 17 * e].fill(0);
                }
                self.icon(&mut pixels, raw, 41 + 17 * e, 38)?;
            }
        }
        self.text(&mut pixels, &names[person][..37], 1, 5, 250)?;
        self.text(
            &mut pixels,
            literal(&self.exe, if n[2] == 1 { 0x444e } else { 0x4454 }),
            6,
            1,
            160,
        )?;
        if (1..=8).contains(&n[1]) {
            self.text(
                &mut pixels,
                &normalize(literal(&self.exe, 0x2638 + 11 * n[1] as usize)),
                6,
                2,
                160,
            )?;
        }
        for (value, row) in [(n[18], 6), (n[19], 7)] {
            self.text(&mut pixels, value.to_string().as_bytes(), 8, row, 160)?;
        }
        for (value, max, row) in [(n[29], n[6], 8), (n[28], n[5], 9)] {
            self.text(
                &mut pixels,
                format!("{value}/{max}").as_bytes(),
                8,
                row,
                160,
            )?;
        }
        for (value, row) in [(n[3], 6), (n[4], 7)] {
            self.text(&mut pixels, value.to_string().as_bytes(), 31, row, 160)?;
        }
        for (field, row) in [
            (7, 9),
            (8, 10),
            (5, 11),
            (10, 12),
            (9, 13),
            (13, 14),
            (11, 15),
            (12, 16),
            (14, 17),
            (15, 18),
            (16, 19),
        ] {
            self.text(&mut pixels, n[field].to_string().as_bytes(), 35, row, 160)?;
        }
        for (value, y) in [(n[21], 114), (n[17], 128)] {
            if value > 0 {
                let w = (value / 10 + 1) as usize;
                if w <= 120 {
                    for r in y..y + 3 {
                        pixels[r * 320 + 18..r * 320 + 18 + w].fill(if value > 500 {
                            170
                        } else {
                            160
                        });
                    }
                }
            }
        }
        // Existing original helper transcriptions supply a pure read projection.
        // In particular numeric45 is refreshed only in this local copy.
        let mut scratch = *n;
        let mut derived = [0; 23];
        match lale_core::combat_party::refresh(
            &mut scratch,
            &actors[person],
            &mut derived,
            &self.tables.borrowed(),
            1,
        ) {
            Ok(()) => {
                for (value, row) in [
                    (derived[4], 15),
                    (scratch[45], 16),
                    (derived[2], 17),
                    (derived[3], 19),
                    (derived[5], 20),
                ] {
                    self.text(&mut pixels, value.to_string().as_bytes(), 16, row, 160)?;
                }
                let weapon = self.small.item_name(n[22]);
                let mut weapon = weapon.to_vec();
                let font = Font {
                    proportional: &self.font,
                    uppercase: &self.upper,
                };
                while !weapon.is_empty() && font.width(&weapon)? > 90 {
                    weapon.pop();
                }
                self.text(&mut pixels, &weapon, 12, 18, 160)?;
            }
            Err(_) => self
                .small
                .text(&mut pixels, b"unsupported derived state", 8, 194, 245),
        }
        if let Some(s) = selection {
            outline(&mut pixels, 16 * (s - 1), 0, 17, 17, 29);
        }
        if let Some(d) = destination {
            outline(&mut pixels, 41 + 17 * d, 38, 15, 15, 220);
        }
        let raw = hover
            .or(selection)
            .map(|s| {
                if s <= 10 {
                    n[34 + s]
                } else {
                    n[n[s + 19] as usize]
                }
            })
            .unwrap_or(0);
        if raw != 0 || !message.is_empty() {
            for y in 2..15 {
                pixels[y * 320 + 161..y * 320 + 318].fill(0);
            }
            let caption = if message.is_empty() {
                self.small.item_description(raw)
            } else {
                message.to_vec()
            };
            let font = Font {
                proportional: &self.font,
                uppercase: &self.upper,
            };
            // Original1694:7f29/file51b79:161,3,217 shadow one row below.
            for (y, color) in [(4, 217), (3, 220)] {
                font.draw(
                    &mut pixels,
                    &TextRun {
                        text: caption.clone(),
                        x: 161,
                        y,
                        color,
                    },
                )?;
            }
        }
        Ok(pixels)
    }
}
