//! Idle exploration panel, original1670:2c69 and4d22.
//! Rendering only: no portrait-jolt RNG, clock advancement or status simulation.
use crate::{
    acquisition_panel::icon_source_x, combat_ui::CombatUi, decode_cmp, world_ui::normalize, Error,
    Flib, IndexedImage,
};
use lale_core::combat_party::Numeric;
use std::path::Path;

pub struct WorldPanel {
    pub background: IndexedImage,
    sheet: IndexedImage,
    icons: IndexedImage,
    blend: Vec<u8>,
    portraits: [IndexedImage; 4],
    font: CombatUi,
    exe: Vec<u8>,
}
fn literal(exe: &[u8], at: usize) -> &[u8] {
    let s = &exe[0x19200 + at..];
    &s[..s.iter().position(|&b| b == 0).unwrap()]
}
fn blit(
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
    for row in 0..h {
        for col in 0..w {
            let value = image.indices[(sy + row) * image.dimensions.width as usize + sx + col];
            if !keyed || value != 254 {
                dst[(y + row) * 320 + x + col] = value;
            }
        }
    }
}
impl WorldPanel {
    ///1662:00b8, physical284d8..28664,200x200/no-jolt branch.
    ///The source crop is7,4,186,192, destination5,4; no resampling.
    ///Slot21 is the94x80 crop of PCMAINTH at50,70 (loader3586d).
    pub fn draw_view(&self, dst: &mut [u8], view: &[u8], facing: u8) -> Result<(), Error> {
        if dst.len() != 64000 || view.len() != 40000 || facing >= 4 {
            return Err(Error("invalid exploration view".into()));
        }
        for y in 4..196 {
            dst[y * 320 + 5..y * 320 + 191].copy_from_slice(&view[y * 200 + 7..y * 200 + 193]);
        }
        blit(
            &self.background,
            dst,
            50 + 47 * (facing as usize % 2),
            70 + 40 * (facing as usize / 2),
            47,
            40,
            144,
            156,
            true,
        );
        Ok(())
    }
    pub fn load(root: &Path, appearances: [usize; 4]) -> Result<Self, Error> {
        let exe = std::fs::read(root.join("lale/IST.EXE")).map_err(|e| Error(e.to_string()))?;
        let data = std::fs::read(root.join("lale/3D.CKD")).map_err(|e| Error(e.to_string()))?;
        let bank = Flib::parse(&data)?;
        let image = |at| {
            let name = std::str::from_utf8(literal(&exe, at)).map_err(|e| Error(e.to_string()))?;
            decode_cmp(
                bank.member(name)
                    .ok_or_else(|| Error(format!("missing world UI {name}")))?
                    .payload,
            )
        };
        let background = image(0x426c)?; // slot80, physical3585d
        let sheet = image(0x42b3)?; // slot78, physical358fb
        let data = std::fs::read(root.join("lale/IVIR.CKD")).map_err(|e| Error(e.to_string()))?;
        let bank = Flib::parse(&data)?;
        let icons = decode_cmp(
            bank.member("ITEMBANK.CMP")
                .ok_or_else(|| Error("missing item bank".into()))?
                .payload,
        )?;
        let blend = bank
            .member("XD.RIX")
            .ok_or_else(|| Error("missing original world blend table".into()))?
            .payload
            .to_vec();
        if blend.len() != 32640 {
            return Err(Error("invalid original world blend table".into()));
        }
        let mut portraits = Vec::new();
        for id in appearances {
            if !(1..=16).contains(&id) {
                return Err(Error("invalid world portrait".into()));
            }
            let name = std::str::from_utf8(literal(&exe, 0x269b + 13 * id))
                .map_err(|e| Error(e.to_string()))?;
            portraits.push(decode_cmp(
                bank.member(&format!("s{name}"))
                    .ok_or_else(|| Error("missing world portrait".into()))?
                    .payload,
            )?);
        }
        if (background.dimensions.width, background.dimensions.height) != (320, 200)
            || (sheet.dimensions.width, sheet.dimensions.height) != (212, 200)
            || (icons.dimensions.width, icons.dimensions.height) != (780, 15)
            || portraits
                .iter()
                .any(|p| (p.dimensions.width, p.dimensions.height) != (160, 32))
        {
            return Err(Error("unsupported original world panel dimensions".into()));
        }
        Ok(Self {
            background,
            sheet,
            icons,
            blend,
            portraits: portraits.try_into().ok().unwrap(),
            font: CombatUi::load(root, appearances)?,
            exe,
        })
    }
    /// Draw four idle party rows, including original unconscious/dead shading.
    /// Movement jolts remain a separate presentation path.
    pub fn draw_party(
        &self,
        dst: &mut [u8],
        party: &[Numeric; 4],
        names: &[[u8; 74]; 4],
    ) -> Result<(), Error> {
        if dst.len() != 64000
            || party
                .iter()
                .any(|n| n[30..33].iter().any(|&r| !(0..46).contains(&r)))
        {
            return Err(Error("unsupported idle world panel state".into()));
        }
        for (p, n) in party.iter().enumerate() {
            let y = p * 38;
            blit(
                &self.background,
                dst,
                197,
                y + 2,
                119,
                33,
                197,
                y + 2,
                false,
            );
            blit(&self.portraits[p], dst, 0, 0, 32, 31, 197, y + 3, false);
            //1670:2c69 shades only this32x31 portrait rectangle. Original
            //1c7f:0a51 ->3599:0440 uses the current XD.RIX pair lookup.
            if n[29] <= 0 {
                if n[29] < -5 {
                    crate::indexed_blit::shade_rectangle(
                        dst,
                        [320, 200],
                        [197, y + 3, 32, 31],
                        &self.blend,
                        253,
                    )?;
                }
                crate::indexed_blit::shade_rectangle(
                    dst,
                    [320, 200],
                    [197, y + 3, 32, 31],
                    &self.blend,
                    217,
                )?;
            }
            for q in 0..3 {
                let raw = n[n[30 + q] as usize];
                if raw == 0 {
                    continue;
                }
                let sx = icon_source_x(raw as u16)? as usize;
                if sx + 15 > 780 {
                    return Err(Error("world icon outside bank".into()));
                }
                for row in y + 2..y + 17 {
                    dst[row * 320 + 231 + 17 * q..row * 320 + 246 + 17 * q].fill(0);
                }
                blit(&self.icons, dst, sx, 0, 15, 15, 231 + 17 * q, y + 2, true);
            }
            self.font.text(dst, &names[p][..37], 231, y + 21, 250);
            self.font.text(dst, &names[p][..37], 231, y + 20, 240);
            for (value, x) in [(n[29], 242), (n[28], 270)] {
                // Both fields restore the same clean source patch,270,28.
                blit(&self.background, dst, 270, 28, 14, 6, x, y + 28, false);
                let s = format!("{value:3}");
                self.font.text(dst, s.as_bytes(), x, y + 29, 250);
                self.font.text(dst, s.as_bytes(), x, y + 28, 240);
            }
            for (value, x) in [(n[17], 308), (n[21], 300)] {
                let h = (value / 45).clamp(1, 24) as usize;
                for row in y + 9..y + 33 - h {
                    dst[row * 320 + x..row * 320 + x + 7].fill(0);
                }
                blit(
                    &self.sheet,
                    dst,
                    if value > 500 { 181 } else { 174 },
                    0,
                    7,
                    h,
                    x,
                    y + 33 - h,
                    false,
                );
            }
        }
        Ok(())
    }
    pub fn clock_text(&self, clock: [i16; 3]) -> Result<Vec<u8>, Error> {
        let [minute, hour, day] = clock;
        if !(0..360).contains(&day) || !(0..24).contains(&hour) || !(0..60).contains(&minute) {
            return Err(Error(
                "world clock requires normalized original words".into(),
            ));
        }
        let mut text = format!("{} ", day % 30 + 1).into_bytes();
        text.extend_from_slice(literal(&self.exe, 0x3dcc + 8 * (day as usize / 30)));
        text.push(b' ');
        text.extend_from_slice(literal(&self.exe, 0x3e2c + 10 * (day as usize % 7)));
        text.extend_from_slice(format!(", {hour:02}:{minute:02}").as_bytes());
        Ok(normalize(&text))
    }
    pub fn draw_clock(&self, dst: &mut [u8], clock: [i16; 3], color: u8) -> Result<(), Error> {
        if dst.len() != 64000 {
            return Err(Error("world clock needs320x200 canvas".into()));
        }
        let text = self.clock_text(clock)?;
        for y in 178..184 {
            dst[y * 320 + 198..y * 320 + 308].fill(0);
        }
        self.font.text(dst, &text, 198, 179, 0);
        self.font.text(dst, &text, 198, 178, color);
        Ok(())
    }
}
