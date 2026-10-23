//! Original IST sound catalog and resident192d/1694:255b rate arithmetic.
//! Static IDs do not imply every SOUNDS member has one uniform encoding.
#[derive(Debug)]
pub struct SoundDef {
    pub name: String,
    pub rate: u32,
    pub flags: u16,
}
impl SoundDef {
    pub fn read(exe: &[u8], id: usize) -> Result<Self, String> {
        if id > 48 {
            return Err("sound ID outside original table".into());
        }
        let at = 0x19200 + 0x22db + 17 * id;
        let b = exe.get(at..at + 17).ok_or("truncated sound table")?;
        Ok(Self {
            name: String::from_utf8_lossy(&b[..13])
                .trim_end_matches('\0')
                .into(),
            rate: u32::from(u16::from_le_bytes([b[13], b[14]])),
            flags: u16::from_le_bytes([b[15], b[16]]),
        })
    }
    pub fn pitched(&self, draw: Option<u16>) -> u32 {
        draw.map_or(self.rate, |r| {
            self.rate - self.rate / 10 + (u32::from(r) * (self.rate / 5) >> 15)
        })
    }
}
/// Resident255b: voice-class rate lookup. Caller supplies the source actor voice
/// class, not its combat slot. Scaling precedes the source pitch variation.
pub fn actor_rate(rate: u32, voice: u16, exe: &[u8]) -> Result<u32, String> {
    if rate > 65535 {
        return Err("actor sound rate exceeds original catalog range".into());
    }
    let factor = if voice > 40 {
        7500
    } else {
        match *exe
            .get(0x19200 + 0x1e8d + usize::from(voice))
            .ok_or("truncated voice rate table")?
        {
            0 | 2 => 6000,
            1 => 7500,
            3 => 7000,
            4 => 6500,
            5 => 4500,
            6 => 20000,
            7 => 8500,
            9 => 44000,
            _ => 22000,
        }
    };
    Ok((rate * factor / 7500).min(65535))
}
