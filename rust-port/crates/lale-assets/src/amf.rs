//! Structural AMF v14 inspection, backed by IST.EXE physical 0x12a3a onward.
//! No event execution, mixing, sample-rate or tempo interpretation is provided.
use crate::{error, Error};
use std::collections::BTreeMap;

#[derive(Debug)]
pub struct Order {
    pub offset: usize,
    pub rows: u16,
    pub track_ids: Vec<u16>,
}

#[derive(Debug)]
pub struct SampleDescriptor<'a> {
    pub offset: usize,
    /// Complete unmodified descriptor, including labels and unknown fields.
    pub raw: &'a [u8; 65],
    pub index: u32,
    pub length: u32,
}

#[derive(Debug)]
pub struct Track<'a> {
    pub offset: usize,
    pub event_count: u16,
    pub third_header_byte: u8,
    /// Three bytes per event; opcode/parameter semantics are not interpreted.
    pub events: &'a [u8],
}

#[derive(Debug)]
pub struct Sample<'a> {
    pub index: u32,
    pub offset: usize,
    pub bytes: &'a [u8],
}

#[derive(Debug)]
pub struct Amf14<'a> {
    pub title: &'a [u8; 32],
    pub channels: u8,
    pub panning_bytes: &'a [u8; 32],
    pub byte73: u8,
    pub byte74: u8,
    pub orders: Vec<Order>,
    pub descriptors: Vec<SampleDescriptor<'a>>,
    pub remap_offset: usize,
    pub track_remap: Vec<u16>,
    pub tracks: Vec<Track<'a>>,
    pub sample_data_offset: usize,
    pub samples: Vec<Sample<'a>>,
    pub consumed: usize,
}

struct Reader<'a> {
    data: &'a [u8],
    pos: usize,
}
impl<'a> Reader<'a> {
    fn take(&mut self, size: usize) -> Result<&'a [u8], Error> {
        let end = self
            .pos
            .checked_add(size)
            .ok_or_else(|| error("AMF offset overflow"))?;
        let result = self
            .data
            .get(self.pos..end)
            .ok_or_else(|| error("truncated AMF structure"))?;
        self.pos = end;
        Ok(result)
    }
    fn word(&mut self) -> Result<u16, Error> {
        let b = self.take(2)?;
        Ok(u16::from_le_bytes([b[0], b[1]]))
    }
}

impl<'a> Amf14<'a> {
    /// Accept the observed v14 layout only. All offsets are payload-relative.
    /// Reject unaccounted trailing bytes, invalid IDs and unestablished nonzero
    /// third track-header bytes rather than guessing an extended event length.
    pub fn parse(data: &'a [u8]) -> Result<Self, Error> {
        let mut r = Reader { data, pos: 0 };
        let h = r.take(75)?;
        if &h[..4] != b"AMF\x0e" {
            return Err(error("unsupported AMF magic/version"));
        }
        let channels = h[40];
        if channels == 0 || channels > 32 {
            return Err(error("unsupported AMF channel count"));
        }
        let logical_tracks = u16::from_le_bytes([h[38], h[39]]);
        let mut orders = Vec::new();
        for _ in 0..h[37] {
            let offset = r.pos;
            let rows = r.word()?;
            let mut track_ids = Vec::new();
            for _ in 0..channels {
                let id = r.word()?;
                if id > logical_tracks {
                    return Err(error("AMF order track ID out of range"));
                }
                track_ids.push(id);
            }
            orders.push(Order {
                offset,
                rows,
                track_ids,
            });
        }
        let mut descriptors = Vec::new();
        let mut lengths = BTreeMap::new();
        for _ in 0..h[36] {
            let offset = r.pos;
            let raw: &[u8; 65] = r
                .take(65)?
                .try_into()
                .map_err(|_| error("AMF descriptor size"))?;
            let index = u32::from_le_bytes([raw[46], raw[47], raw[48], raw[49]]);
            let length = u32::from_le_bytes([raw[50], raw[51], raw[52], raw[53]]);
            if index != 0 {
                if index > u32::from(h[36]) {
                    return Err(error("AMF sample index out of range"));
                }
                if let Some(previous) = lengths.insert(index, length) {
                    if previous != length {
                        return Err(error("inconsistent AMF shared sample length"));
                    }
                }
            }
            descriptors.push(SampleDescriptor {
                offset,
                raw,
                index,
                length,
            });
        }
        let remap_offset = r.pos;
        let mut track_remap = Vec::new();
        for _ in 0..logical_tracks {
            let id = r.word()?;
            if id > logical_tracks {
                return Err(error("AMF physical track ID out of range"));
            }
            track_remap.push(id);
        }
        let mut tracks = Vec::new();
        for _ in 0..track_remap.iter().copied().max().unwrap_or(0) {
            let offset = r.pos;
            let event_count = r.word()?;
            let third_header_byte = r.take(1)?[0];
            if third_header_byte != 0 {
                return Err(error("unsupported nonzero AMF third track-header byte"));
            }
            let bytes = usize::from(event_count)
                .checked_mul(3)
                .ok_or_else(|| error("AMF event size overflow"))?;
            let events = r.take(bytes)?;
            tracks.push(Track {
                offset,
                event_count,
                third_header_byte,
                events,
            });
        }
        let sample_data_offset = r.pos;
        let mut samples = Vec::new();
        for (ordinal, (index, length)) in lengths.into_iter().enumerate() {
            if usize::try_from(index).ok() != ordinal.checked_add(1) {
                return Err(error("noncontiguous AMF sample indices"));
            }
            let offset = r.pos;
            let size =
                usize::try_from(length).map_err(|_| error("AMF sample exceeds host range"))?;
            let bytes = r.take(size)?;
            samples.push(Sample {
                index,
                offset,
                bytes,
            });
        }
        if r.pos != data.len() {
            return Err(error("unaccounted AMF trailing bytes"));
        }
        Ok(Self {
            title: h[4..36].try_into().map_err(|_| error("AMF title size"))?,
            channels,
            panning_bytes: h[41..73]
                .try_into()
                .map_err(|_| error("AMF panning size"))?,
            byte73: h[73],
            byte74: h[74],
            orders,
            descriptors,
            remap_offset,
            track_remap,
            tracks,
            sample_data_offset,
            samples,
            consumed: r.pos,
        })
    }
}
