//! Structural PCS bank index from original1689 reader43670/43d61..43e96.
//! This enumerates length-delimited groups; it does not execute event opcodes.
use crate::Error;

#[derive(Debug)]
pub struct PcsGroup<'a> {
    pub index: usize,
    pub length_word_offset: usize,
    pub payload_offset: usize,
    pub bytes: &'a [u8],
}
impl PcsGroup<'_> {
    /// Original mode1 begins after eight bytes; modes2..4 use the three
    /// big-endian relative offsets. A target alone is not an executable event:
    /// the original dispatcher checks the section marker against mode+12.
    pub fn mode_target(&self, mode: u8) -> Option<usize> {
        let relative = match mode {
            1 => 8,
            2..=4 => {
                let at = usize::from(mode - 1) * 2;
                usize::from(u16::from_be_bytes([
                    *self.bytes.get(at)?,
                    *self.bytes.get(at + 1)?,
                ]))
            }
            _ => return None,
        };
        (relative < self.bytes.len()).then_some(self.payload_offset + relative)
    }
    pub fn marker_matches(&self, mode: u8) -> bool {
        if !(1..=4).contains(&mode) {
            return false;
        }
        self.mode_target(mode)
            .and_then(|at| self.bytes.get(at - self.payload_offset))
            == Some(&(mode + 12))
    }
}
#[derive(Debug)]
pub struct PcsBank<'a> {
    pub groups: Vec<PcsGroup<'a>>,
}
impl<'a> PcsBank<'a> {
    pub fn parse(bytes: &'a [u8]) -> Result<Self, Error> {
        if bytes.len() < 22 || bytes.get(..4) != Some(b"AmBk") {
            return Err(Error("truncated or unsupported PCS bank".into()));
        }
        let count = usize::from(u16::from_be_bytes([bytes[20], bytes[21]]));
        let mut groups = Vec::new();
        let mut cursor: usize = 22;
        for index in 0..count {
            let word = bytes
                .get(cursor..cursor + 2)
                .ok_or_else(|| Error("truncated PCS group length".into()))?;
            let length = usize::from(u16::from_be_bytes([word[0], word[1]]));
            let start = cursor + 2;
            let group = bytes
                .get(start..start + length)
                .ok_or_else(|| Error("truncated PCS group".into()))?;
            groups.push(PcsGroup {
                index,
                length_word_offset: cursor,
                payload_offset: start,
                bytes: group,
            });
            cursor = start + length;
        }
        if cursor != bytes.len() {
            return Err(Error("unaccounted PCS trailing bytes".into()));
        }
        Ok(Self { groups })
    }
}

#[derive(Debug)]
pub struct PcsCommand<'a> {
    pub payload_offset: usize,
    pub opcode: u8,
    pub arguments: &'a [u8],
}
#[derive(Debug)]
pub struct FramedCommands<'a> {
    pub commands: Vec<PcsCommand<'a>>,
    pub stop_offset: usize,
    pub issue: Option<String>,
}
impl PcsGroup<'_> {
    /// Original skip helper4853b..486ca defines framing, not operation effects.
    /// A stop/conditional opcode is retained: this is a static listing and does
    /// not claim that mutually exclusive sections execute sequentially.
    pub fn frame_commands(&self) -> FramedCommands<'_> {
        let mut cursor = 8;
        let mut commands = Vec::new();
        let mut issue = None;
        while cursor < self.bytes.len() {
            let at = cursor;
            let opcode = self.bytes[cursor];
            cursor += 1;
            if opcode == 0 && self.bytes[at..].iter().all(|&b| b == 0) {
                cursor = at;
                break;
            }
            let length = argument_length(opcode, &self.bytes[cursor..]);
            let Some(length) = length else {
                cursor = at;
                issue = Some(format!("unsupported/truncated opcode{opcode} framing"));
                break;
            };
            let Some(arguments) = self.bytes.get(cursor..cursor + length) else {
                cursor = at;
                issue = Some(format!("truncated opcode{opcode} arguments"));
                break;
            };
            commands.push(PcsCommand {
                payload_offset: self.payload_offset + at,
                opcode,
                arguments,
            });
            cursor += length;
        }
        if self.bytes.len() < 8 {
            issue = Some("group shorter than eight-byte header".into());
            cursor = 0;
        }
        FramedCommands {
            commands,
            stop_offset: self.payload_offset + cursor,
            issue,
        }
    }
}
use lale_core::events::argument_length;
