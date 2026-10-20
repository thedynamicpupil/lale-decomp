//! Original SEQ byte samples, corroborated against SDISB16.DSD.
//! See character-ui-20261015/audio/SEQ_PCM_DRIVER_BOUNDARY.md. This is not
//! the original mixer, two-channel gain, ring-refill scheduler or synchronizer.
use crate::seq::SeqHeader;
use crate::{error, Error};

/// Chronological original mono, unsigned eight-bit sample blocks. The initial
/// GHD block precedes the kind-2 GFL blocks. Playback stop may discard its tail.
pub struct SeqPcm {
    pub sample_rate: u16,
    pub samples: Vec<u8>,
}

impl SeqPcm {
    /// Restrict extraction to the verified one-block-per-counter-second layout.
    /// Do not reinterpret an unknown record schedule as continuous audio.
    pub fn extract(header: &SeqHeader<'_>, gfl: &[u8]) -> Result<Self, Error> {
        if header.sound_word6 == 0 {
            return Err(error("SEQ sound rate is zero"));
        }
        let mut samples = header.initial_sound_block.to_vec();
        let mut block = 0usize;
        for (frame, record) in header.records.iter().enumerate() {
            match record.kind {
                0 | 1 => continue,
                2 => {}
                _ => return Err(error("unsupported SEQ sound record kind")),
            }
            if frame != block * usize::from(header.fps) {
                return Err(error("unverified SEQ sound refill schedule"));
            }
            let offset = usize::try_from(record.stream_offset)
                .map_err(|_| error("SEQ sound offset exceeds host range"))?;
            let end = offset
                .checked_add(usize::from(header.sound_word6))
                .ok_or_else(|| error("SEQ sound extent overflow"))?;
            samples.extend_from_slice(
                gfl.get(offset..end)
                    .ok_or_else(|| error("truncated SEQ sound block"))?,
            );
            block += 1;
        }
        Ok(Self {
            sample_rate: header.sound_word6,
            samples,
        })
    }
}

/// Linear PCM inspection conversion, preserving the original unsigned byte's
/// midpoint. Host full-scale mapping is a debug convention, not DSMI gain.
pub fn unsigned8_to_signed16(sample: u8) -> i16 {
    (i16::from(sample) - 128) * 256
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::seq::FrameRecord;

    #[test]
    fn recovered_midpoint_and_chronological_ring_blocks() {
        assert_eq!(unsigned8_to_signed16(0), -32768);
        assert_eq!(unsigned8_to_signed16(128), 0);
        assert_eq!(unsigned8_to_signed16(255), 32512);
        let mut header = SeqHeader {
            raw_header: &[],
            fps: 2,
            sound_word6: 2,
            base_palette6: &[],
            initial_sound_block: &[128, 129],
            records: vec![
                FrameRecord {
                    kind: 2,
                    compressed_bytes: 0,
                    stream_offset: 1,
                    flags: 0,
                },
                FrameRecord {
                    kind: 0,
                    compressed_bytes: 0,
                    stream_offset: 3,
                    flags: 0,
                },
                FrameRecord {
                    kind: 2,
                    compressed_bytes: 0,
                    stream_offset: 4,
                    flags: 0,
                },
            ],
        };
        assert_eq!(
            SeqPcm::extract(&header, &[99, 130, 131, 88, 132, 133])
                .unwrap()
                .samples,
            [128, 129, 130, 131, 132, 133]
        );
        assert!(SeqPcm::extract(&header, &[99, 130, 131, 88, 132]).is_err());
        header.records[1].kind = 2;
        assert!(SeqPcm::extract(&header, &[99, 130, 131, 88, 132, 133]).is_err());
    }
}
