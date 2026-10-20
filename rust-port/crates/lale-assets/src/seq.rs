//! Narrow original SEQ/GHD frame inspection; no film scheduler or audio player.
//! Packet instructions: IST.EXE physical 0x58850..0x5898f (16af:0390).
//! Stream layout/dispatch: 0x58efe..0x591c1. Preserve prior pixels for skips.
use crate::{error, Error};

pub const FRAME_BYTES: usize = 320 * 200;

#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub struct PacketStats {
    pub consumed: usize,
    pub destination_advanced: usize,
}

fn expanded(command: u8) -> usize {
    let n = usize::from(command & 15);
    match (command >> 4) & 3 {
        0 => n,
        1 => 16 + 2 * n,
        2 => 48 + 4 * n,
        _ => 112 + 8 * n,
    }
}

/// Apply a single compressed pixel update to the original 64000-byte state.
/// A short update leaves the remaining previous pixels intact. Malformed input
/// returns an error; the caller must discard/reinitialize state after an error.
pub fn decode_packet(payload: &[u8], frame: &mut [u8]) -> Result<PacketStats, Error> {
    if frame.len() != FRAME_BYTES {
        return Err(error("SEQ framebuffer must contain exactly 64000 indices"));
    }
    let (mut source, mut destination) = (0usize, 0usize);
    while source < payload.len() && destination < FRAME_BYTES {
        let command = payload[source];
        source += 1;
        let count = if command & 128 != 0 {
            usize::from(command & 127) + 1
        } else if command & 64 != 0 {
            expanded(command) + 1
        } else {
            expanded(command) + 3
        };
        let end = destination
            .checked_add(count)
            .ok_or_else(|| error("SEQ destination overflow"))?;
        if end > FRAME_BYTES {
            return Err(error("SEQ packet exceeds framebuffer"));
        }
        if command & 128 != 0 {
            let source_end = source
                .checked_add(count)
                .ok_or_else(|| error("SEQ source overflow"))?;
            let literal = payload
                .get(source..source_end)
                .ok_or_else(|| error("truncated SEQ literal"))?;
            frame[destination..end].copy_from_slice(literal);
            source = source_end;
        } else if command & 64 == 0 {
            let value = *payload
                .get(source)
                .ok_or_else(|| error("truncated SEQ repeat"))?;
            source += 1;
            frame[destination..end].fill(value);
        }
        destination = end;
    }
    if source != payload.len() {
        return Err(error("unconsumed SEQ compressed bytes"));
    }
    Ok(PacketStats {
        consumed: source,
        destination_advanced: destination,
    })
}

#[derive(Debug, Clone, Copy)]
pub struct FrameRecord {
    pub kind: u8,
    pub compressed_bytes: u16,
    pub stream_offset: u32,
    pub flags: u8,
}

#[derive(Debug)]
pub struct SeqHeader<'a> {
    pub raw_header: &'a [u8],
    pub fps: u8,
    /// Original header word+6, used as a sound buffer length and tuning value.
    /// This module exposes bytes only; it does not convert/play audio.
    pub sound_word6: u16,
    pub base_palette6: &'a [u8],
    pub initial_sound_block: &'a [u8],
    pub records: Vec<FrameRecord>,
}

#[derive(Debug)]
pub struct FrameInfo<'a> {
    pub palette6: &'a [u8],
    pub type2_sound_block: Option<&'a [u8]>,
    pub packet: Option<PacketStats>,
}

impl<'a> SeqHeader<'a> {
    pub fn parse(ghd: &'a [u8]) -> Result<Self, Error> {
        let raw_header = ghd
            .get(..784)
            .ok_or_else(|| error("truncated GHD header"))?;
        if &raw_header[..3] != b"GFL" {
            return Err(error("unsupported GHD signature"));
        }
        let count = usize::from(u16::from_le_bytes([ghd[3], ghd[4]]));
        let fps = ghd[5];
        if fps == 0 {
            return Err(error("unsupported zero GHD frame rate"));
        }
        let sound_word6 = u16::from_le_bytes([ghd[6], ghd[7]]);
        let table = 784usize
            .checked_add(usize::from(sound_word6))
            .ok_or_else(|| error("GHD extent overflow"))?;
        let table_bytes = count
            .checked_mul(8)
            .ok_or_else(|| error("GHD table overflow"))?;
        if table.checked_add(table_bytes) != Some(ghd.len()) {
            return Err(error("GHD frame table extent mismatch"));
        }
        let base_palette6 = &ghd[16..784];
        if base_palette6.iter().any(|&component| component > 63) {
            return Err(error("unsupported GHD palette component"));
        }
        let mut records = Vec::new();
        for row in ghd[table..].chunks_exact(8) {
            records.push(FrameRecord {
                kind: row[0],
                compressed_bytes: u16::from_le_bytes([row[1], row[2]]),
                stream_offset: u32::from_le_bytes([row[3], row[4], row[5], row[6]]),
                flags: row[7],
            });
        }
        Ok(Self {
            raw_header,
            fps,
            sound_word6,
            base_palette6,
            initial_sound_block: &ghd[784..table],
            records,
        })
    }

    /// Decode in original chronological order with an initially zeroed buffer.
    /// Arbitrary seeking is not implemented: skipped pixels depend on history.
    pub fn apply_frame<'s>(
        &'s self,
        index: usize,
        gfl: &'s [u8],
        frame: &mut [u8],
    ) -> Result<FrameInfo<'s>, Error> {
        if frame.len() != FRAME_BYTES {
            return Err(error("SEQ framebuffer must contain exactly 64000 indices"));
        }
        let record = self
            .records
            .get(index)
            .ok_or_else(|| error("SEQ frame index out of range"))?;
        let offset = usize::try_from(record.stream_offset)
            .map_err(|_| error("SEQ offset exceeds host range"))?;
        let palette6 = if record.flags & 128 != 0 {
            let start = offset
                .checked_sub(768)
                .ok_or_else(|| error("SEQ palette precedes stream"))?;
            let bytes = gfl
                .get(start..offset)
                .ok_or_else(|| error("truncated SEQ palette"))?;
            if bytes.iter().any(|&component| component > 63) {
                return Err(error("unsupported SEQ palette component"));
            }
            bytes
        } else {
            self.base_palette6
        };
        if record.kind == 1 {
            return Ok(FrameInfo {
                palette6,
                type2_sound_block: None,
                packet: None,
            });
        }
        if record.kind > 2 {
            return Err(error("unsupported SEQ record kind"));
        }
        let sound_bytes = if record.kind == 2 {
            usize::from(self.sound_word6)
        } else {
            0
        };
        let pixel_start = offset
            .checked_add(sound_bytes)
            .ok_or_else(|| error("SEQ sound extent overflow"))?;
        let pixel_end = pixel_start
            .checked_add(usize::from(record.compressed_bytes))
            .ok_or_else(|| error("SEQ pixel extent overflow"))?;
        let payload = gfl
            .get(pixel_start..pixel_end)
            .ok_or_else(|| error("truncated SEQ frame payload"))?;
        let sound = if record.kind == 2 {
            Some(
                gfl.get(offset..pixel_start)
                    .ok_or_else(|| error("truncated SEQ sound block"))?,
            )
        } else {
            None
        };
        let packet = decode_packet(payload, frame)?;
        Ok(FrameInfo {
            palette6,
            type2_sound_block: sound,
            packet: Some(packet),
        })
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn instruction_packet_ranges_and_prior_pixels() {
        let mut frame = vec![9; FRAME_BYTES];
        let s = decode_packet(
            &[0x80, 3, 0x40, 0, 7, 0x10, 8, 0x20, 6, 0x30, 5],
            &mut frame,
        )
        .unwrap();
        assert_eq!(&frame[..5], &[3, 9, 7, 7, 7]);
        assert_eq!(s.destination_advanced, 1 + 1 + 3 + 19 + 51 + 115);
        assert!(frame[s.destination_advanced..].iter().all(|&v| v == 9));
        assert!(decode_packet(&[0x81, 1], &mut frame).is_err());
        assert!(decode_packet(&[0], &mut frame).is_err());
    }

    #[test]
    fn all_length_mode_edges_and_malformed_boundaries() {
        for (command, expected) in [
            (0x00, 3),
            (0x0f, 18),
            (0x10, 19),
            (0x1f, 49),
            (0x20, 51),
            (0x2f, 111),
            (0x30, 115),
            (0x3f, 235),
        ] {
            let mut frame = vec![11; FRAME_BYTES];
            let stats = decode_packet(&[command, 7], &mut frame).unwrap();
            assert_eq!(stats.destination_advanced, expected);
            assert!(frame[..expected].iter().all(|&v| v == 7));
            assert_eq!(frame[expected], 11);
            let stats = decode_packet(&[command | 64], &mut frame).unwrap();
            assert_eq!(stats.destination_advanced, expected - 2);
        }
        for (command, count) in [(0x80, 1), (0xff, 128)] {
            let mut packet = vec![command];
            packet.extend(std::iter::repeat_n(29, count));
            let mut frame = vec![11; FRAME_BYTES];
            assert_eq!(
                decode_packet(&packet, &mut frame)
                    .unwrap()
                    .destination_advanced,
                count
            );
            assert!(frame[..count].iter().all(|&v| v == 29));
            packet.pop();
            assert!(decode_packet(&packet, &mut frame).is_err());
        }
        let mut frame = vec![0; FRAME_BYTES];
        let mut full = Vec::new();
        for _ in 0..500 {
            full.push(255);
            full.extend([1; 128]);
        }
        assert_eq!(
            decode_packet(&full, &mut frame)
                .unwrap()
                .destination_advanced,
            FRAME_BYTES
        );
        full.push(64);
        assert!(decode_packet(&full, &mut frame).is_err());
        let mut overflow = vec![0x3f, 1].repeat(273);
        assert!(decode_packet(&overflow, &mut frame).is_err());
        overflow.clear();
        assert!(decode_packet(&overflow, &mut frame[..63999]).is_err());
    }

    #[test]
    fn flagged_palette_then_unflagged_hold_restores_original_baseline() {
        let mut header = vec![0; 800];
        header[..3].copy_from_slice(b"GFL");
        header[3] = 2;
        header[5] = 10;
        header[16..784].fill(1);
        // Image frame with palette immediately before stream offset768.
        header[785] = 2;
        header[787..791].copy_from_slice(&768u32.to_le_bytes());
        header[791] = 128;
        // Second record kind1 holds pixels but restores baseline palette.
        header[792] = 1;
        let parsed = SeqHeader::parse(&header).unwrap();
        let mut stream = vec![2; 768];
        stream.extend([128, 3]);
        let mut frame = vec![0; FRAME_BYTES];
        assert_eq!(
            parsed.apply_frame(0, &stream, &mut frame).unwrap().palette6,
            &stream[..768]
        );
        assert_eq!(frame[0], 3);
        let result = parsed.apply_frame(1, &stream, &mut frame).unwrap();
        assert_eq!(result.palette6, &header[16..784]);
        assert!(result.packet.is_none());
        assert_eq!(frame[0], 3);
        assert!(parsed.apply_frame(2, &stream, &mut frame).is_err());
        assert!(parsed.apply_frame(0, &stream[..767], &mut frame).is_err());
        header.push(0);
        assert!(SeqHeader::parse(&header).is_err());
    }

    #[test]
    fn all_five_original_sequences_and_independent_title_fixture() {
        use std::io::{Read, Seek, SeekFrom};
        let root = std::path::Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
        let mut file = std::fs::File::open(root.join("lale/0GFL.CKD")).unwrap();
        let mut start = [0; 12];
        file.read_exact(&mut start).unwrap();
        assert_eq!(&start[..4], b"FLiB");
        let count = u32::from_le_bytes(start[4..8].try_into().unwrap()) as usize;
        let directory = u32::from_le_bytes(start[8..12].try_into().unwrap());
        file.seek(SeekFrom::Start(u64::from(directory))).unwrap();
        let mut table = vec![0; count * 65];
        file.read_exact(&mut table).unwrap();
        let mut read_member = |name: &str| {
            let row = table
                .chunks_exact(65)
                .find(|r| r[4..36].split(|&b| b == 0).next() == Some(name.as_bytes()))
                .unwrap();
            assert_eq!(&row[..4], b"FiLE");
            let offset = u32::from_le_bytes(row[53..57].try_into().unwrap());
            let size = u32::from_le_bytes(row[57..61].try_into().unwrap()) as usize;
            let mut bytes = vec![0; size];
            file.seek(SeekFrom::Start(u64::from(offset))).unwrap();
            file.read_exact(&mut bytes).unwrap();
            bytes
        };
        for (name, expected_count, expected_updates) in [
            ("SEQ1", 636, 636),
            ("SEQ2", 268, 268),
            ("SEQ3", 622, 622),
            ("SEQ4", 415, 415),
            ("SEQ5", 492, 455),
        ] {
            let header = read_member(&format!("{name}.GHD"));
            let stream = read_member(&format!("{name}.GFL"));
            let parsed = SeqHeader::parse(&header).unwrap();
            assert_eq!(parsed.records.len(), expected_count);
            let mut frame = vec![0; FRAME_BYTES];
            let mut updates = 0;
            for i in 0..expected_count {
                let result = parsed.apply_frame(i, &stream, &mut frame).unwrap();
                if result.packet.is_some() {
                    updates += 1;
                }
                if name == "SEQ1" && i == 50 {
                    // Independently transcribed Python decoder's authentic
                    // filmed-title indices and original unscaled palette.
                    let fixture = root
                        .join("analysis/phase-five/integration-20261014/seq/seq1-trial/seq1-0050");
                    assert_eq!(
                        frame,
                        std::fs::read(fixture.with_extension("indices")).unwrap()
                    );
                    assert_eq!(
                        result.palette6,
                        std::fs::read(fixture.with_extension("pal6")).unwrap()
                    );
                }
            }
            assert_eq!(updates, expected_updates);
        }
    }
}
