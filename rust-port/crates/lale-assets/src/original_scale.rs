//! Bounded translation of original resident 2599:0018 (not the bank wrapper).
//!
//! Evidence: analysis/phase-five/door-20261015/scaler/core-original.bin and
//! scale-core-rea.json. The original performs no clipping. Callers must supply
//! each actual contiguous bank invocation, including ESI's inherited high word.
//! This module does not infer wrapper splitting or resource aliases.

#[derive(Clone, Copy, Debug)]
pub struct ScaleCall {
    pub source_offset: usize,
    pub source_stride: u16,
    pub source_width: u16,
    pub source_height: u16,
    pub destination_offset: usize,
    pub destination_stride: u16,
    pub destination_width: u16,
    pub destination_height: u16,
    pub transparent_key: u8,
    pub flags: u8,
    /// Original LDS SI changes only SI; the high word of ESI survives.
    pub initial_x_fraction: u16,
}

/// Explicit post-mapping window inputs to resident 0ac6:0c5a.
/// `source_available` must be read AFTER mapping the destination: the EMS
/// manager can shorten the previously returned source window by alias.
#[derive(Clone, Copy, Debug)]
pub struct ScaleWindow {
    pub source_width: u16,
    pub source_stride: u16,
    pub destination_width: u16,
    pub destination_stride: u16,
    pub remaining_source_height: u16,
    pub remaining_destination_height: u16,
    pub source_available: u16,
    pub destination_available: u16,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct ScaleChunk {
    pub source_height: u16,
    pub destination_height: u16,
}

/// Bounded EMS window calculation for the wrapper's source page0 followed by
/// destination page2, with a zero-offset EMS frame base. Allocation starts are
/// explicit original handle-node DWORD+2 values, never inferred from filenames.
/// Returns the final source/destination available counts AFTER both mappings.
pub fn ems_pair_available(
    source_allocation_start: u32,
    source_size: u32,
    source_offset: u32,
    destination_allocation_start: u32,
    destination_size: u32,
    destination_offset: u32,
) -> Result<(u16, u16), &'static str> {
    let sr = source_size
        .checked_sub(source_offset)
        .ok_or("source offset outside EMS allocation")?;
    let dr = destination_size
        .checked_sub(destination_offset)
        .ok_or("destination offset outside EMS allocation")?;
    let sl = source_allocation_start
        .checked_add(source_offset)
        .ok_or("EMS source offset overflow")?
        & 0x3fff;
    let dl = destination_allocation_start
        .checked_add(destination_offset)
        .ok_or("EMS destination offset overflow")?
        & 0x3fff;
    // a9b1..aa1b limits each window to its allocation and the remaining page
    // frame. aa74..aaa4 then shortens the first window before page2 aliases it.
    let source = sr.min(0xffff - sl).min(0x8000 - sl);
    let destination = dr.min(0x7fff - dl);
    Ok((source as u16, destination as u16))
}

/// Original wrapper chunk arithmetic at file de44..df12. The original
/// long-multiply helper returns DX:AX, but the next XOR DX,DX discards the high
/// word before each DIV. Preserve that low-word multiplication explicitly.
/// Reject zero-progress/unsafe windows instead of reproducing a DOS hang.
pub fn next_chunk(w: ScaleWindow) -> Result<ScaleChunk, &'static str> {
    if w.source_stride == 0
        || w.destination_stride == 0
        || w.remaining_source_height == 0
        || w.remaining_destination_height == 0
        || w.source_width == 0
        || w.destination_width == 0
        || w.source_available < w.source_width
        || w.destination_available < w.destination_width
    {
        return Err("unsafe original scaler window");
    }
    let source_rows = ((w.source_available - w.source_width) / w.source_stride)
        .wrapping_add(1)
        .min(w.remaining_source_height);
    let destination_rows = ((w.destination_available - w.destination_width) / w.destination_stride)
        .wrapping_add(1)
        .min(w.remaining_destination_height);
    let dh = (source_rows.wrapping_mul(w.remaining_destination_height) / w.remaining_source_height)
        .min(destination_rows);
    let sh = (dh.wrapping_mul(w.remaining_source_height) / w.remaining_destination_height)
        .min(source_rows);
    if sh == 0 || dh == 0 {
        return Err("original scaler window makes no progress");
    }
    Ok(ScaleChunk {
        source_height: sh,
        destination_height: dh,
    })
}

/// Apply the recovered mode1/page0→page2 wrapper to flattened authentic bank
/// bytes. Allocation starts must come from original handle nodes. `call` offsets
/// are resource byte offsets, and widths/heights are the wrapper's full extents.
/// This executes chunks in order; a later invalid chunk can follow prior writes.
/// The inherited X fraction is explicit and remains identical across chunks.
pub fn draw_ems(
    source: &[u8],
    destination: &mut [u8],
    written: &mut [bool],
    call: ScaleCall,
    allocation_starts: [u32; 2],
) -> Result<usize, &'static str> {
    let mut so = call.source_offset;
    let mut do_ = call.destination_offset;
    let mut sh = call.source_height;
    let mut dh = call.destination_height;
    let mut chunks = 0;
    if destination.len() != written.len() {
        return Err("scaler coverage length mismatch");
    }
    while sh != 0 {
        let (sv, dv) = ems_pair_available(
            allocation_starts[0],
            u32::try_from(source.len()).map_err(|_| "EMS source size overflow")?,
            u32::try_from(so).map_err(|_| "EMS source offset overflow")?,
            allocation_starts[1],
            u32::try_from(destination.len()).map_err(|_| "EMS destination size overflow")?,
            u32::try_from(do_).map_err(|_| "EMS destination offset overflow")?,
        )?;
        let chunk = next_chunk(ScaleWindow {
            source_width: call.source_width,
            source_stride: call.source_stride,
            destination_width: call.destination_width,
            destination_stride: call.destination_stride,
            remaining_source_height: sh,
            remaining_destination_height: dh,
            source_available: sv,
            destination_available: dv,
        })?;
        draw(
            &source[so..so + usize::from(sv)],
            &mut destination[do_..do_ + usize::from(dv)],
            &mut written[do_..do_ + usize::from(dv)],
            ScaleCall {
                source_offset: 0,
                destination_offset: 0,
                source_height: chunk.source_height,
                destination_height: chunk.destination_height,
                ..call
            },
        )?;
        sh -= chunk.source_height;
        dh -= chunk.destination_height;
        so += usize::from(chunk.source_height) * usize::from(call.source_stride);
        do_ += usize::from(chunk.destination_height) * usize::from(call.destination_stride);
        chunks += 1;
    }
    Ok(chunks)
}

/// Original1154:0410 rounds allocation size to16 bytes, then uses16384-byte
/// START alignment for requests at least0xc000. Smaller starts are16-aligned
/// and depend on the allocator's best-fit live gap history.
pub fn allocation_alignment(size: usize) -> Result<usize, &'static str> {
    let rounded = size
        .checked_add(15)
        .ok_or("original allocation size overflow")?
        & !15;
    if rounded == 0 || rounded > i32::MAX as usize {
        return Err("unsupported original allocation size");
    }
    Ok(if rounded >= 0xc000 { 0x4000 } else { 16 })
}

/// Draw without allocator-history fixtures when invariance is provable.
/// Original large source banks have remainder0 by allocator instruction; a
/// destination rectangle spanning at most16384 bytes fits EVERY possible
/// page2 window (minimum available16384), so its allocation remainder cannot
/// affect chunking. Resource bounds still apply. Reject all other cases.
pub fn draw_aligned_source(
    source: &[u8],
    destination: &mut [u8],
    written: &mut [bool],
    call: ScaleCall,
) -> Result<usize, &'static str> {
    if allocation_alignment(source.len())? != 0x4000 {
        return Err("source allocation alignment depends on original heap history");
    }
    let span = usize::from(call.destination_height)
        .checked_sub(1)
        .and_then(|h| h.checked_mul(usize::from(call.destination_stride)))
        .and_then(|n| n.checked_add(usize::from(call.destination_width)))
        .ok_or("invalid destination span")?;
    if span > 0x4000 {
        return Err("destination bank window depends on original heap history");
    }
    if call
        .destination_offset
        .checked_add(span)
        .is_none_or(|end| end > destination.len())
    {
        return Err("destination span outside original bank");
    }
    // Only remainders enter the mapping/window formulas. Source remainder0 is
    // proven by alignment; destination remainder is immaterial by the bound.
    draw_ems(source, destination, written, call, [0, 0])
}

/// Source-proven200×200 fallback projection scale subset. Fraction0 is an
/// explicit native-entry policy, observed in the retained ten-core DOS trace;
/// this is not a claim that every original caller always has high ESI zero.
/// Allocator positions are not captured constants: source alignment is proven
/// from original allocation size, destination placement is proven immaterial.
pub fn draw_fallback200(
    source: &[u8],
    destination: &mut [u8],
    written: &mut [bool],
    call: ScaleCall,
) -> Result<usize, &'static str> {
    if destination.len() != 40000
        || call.destination_stride != 200
        || !matches!(call.source_stride, 234 | 323)
        || source.len() != usize::from(call.source_stride) * 214
        || call.source_offset >= usize::from(call.source_stride)
        || !matches!(call.source_width, 86 | 144)
        || call.source_height != 144
        || !matches!(call.destination_height, 29 | 47)
        || !(28..=48).contains(&call.destination_width)
        || !matches!(call.destination_offset / 200, 76 | 86)
        || call.destination_offset % 200 + usize::from(call.destination_width) > 200
        || call.initial_x_fraction != 0
    {
        return Err("scaled call outside verified200 fallback projection subset");
    }
    draw_aligned_source(source, destination, written, call)
}

/// Draw one original core invocation. Reject unsafe extents before any writes.
/// Widths/heights are ratios, strides are byte pitches; offsets already include
/// the source/destination coordinates resolved by the caller's bank manager.
pub fn draw(
    source: &[u8],
    destination: &mut [u8],
    written: &mut [bool],
    call: ScaleCall,
) -> Result<(), &'static str> {
    let sw = usize::from(call.source_width);
    let sh = usize::from(call.source_height);
    let dw = usize::from(call.destination_width);
    let dh = usize::from(call.destination_height);
    if sw == 0 || sh == 0 || dw == 0 || dh == 0 {
        return Err("zero original scaler extent");
    }
    if written.len() != destination.len() {
        return Err("scaler coverage length mismatch");
    }
    let x_step = ((sw as u64) << 16) / dw as u64;
    let y_step = ((sh as u64) << 16) / dh as u64;
    let x_fraction = u64::from(call.initial_x_fraction);
    let max_x = ((x_fraction + (dw as u64 - 1) * x_step) >> 16) as usize;
    let max_y = (((dh as u64 - 1) * y_step) >> 16) as usize;
    let source_last = call
        .source_offset
        .checked_add(max_y * usize::from(call.source_stride))
        .and_then(|v| v.checked_add(max_x))
        .ok_or("scaler source overflow")?;
    let destination_last = call
        .destination_offset
        .checked_add((dh - 1) * usize::from(call.destination_stride))
        .and_then(|v| v.checked_add(dw - 1))
        .ok_or("scaler destination overflow")?;
    if source_last >= source.len() || destination_last >= destination.len() {
        return Err("original scaler accesses outside supplied bank");
    }
    // Original SI/DI are 16-bit offsets. Do not quietly replace their wrap with
    // host memory access. This bounded implementation rejects wrapping calls.
    if source_last > u16::MAX as usize || destination_last > u16::MAX as usize {
        return Err("original scaler would wrap a 16-bit bank offset");
    }
    for y in 0..dh {
        let sy = ((y as u64 * y_step) >> 16) as usize;
        for x in 0..dw {
            let sx = ((x_fraction + x as u64 * x_step) >> 16) as usize;
            let value = source[call.source_offset + sy * usize::from(call.source_stride) + sx];
            if value != call.transparent_key {
                let dx = if call.flags & 1 == 0 { x } else { dw - 1 - x };
                let index = call.destination_offset + y * usize::from(call.destination_stride) + dx;
                destination[index] = value;
                written[index] = true;
            }
        }
    }
    Ok(())
}

#[cfg(test)]
mod tests {
    use super::*;

    fn call() -> ScaleCall {
        ScaleCall {
            source_offset: 0,
            source_stride: 2,
            source_width: 2,
            source_height: 2,
            destination_offset: 0,
            destination_stride: 6,
            destination_width: 6,
            destination_height: 6,
            transparent_key: 254,
            flags: 0,
            initial_x_fraction: 0,
        }
    }

    #[test]
    fn preserves_truncated_16_16_sampling_in_both_axes() {
        let mut destination = [0; 36];
        let mut written = [false; 36];
        draw(&[1, 2, 3, 4], &mut destination, &mut written, call()).unwrap();
        // 2/6 becomes 0x5555, so the fourth sample still selects index 0.
        for row in 0..6 {
            let base = if row < 4 { 0 } else { 2 };
            assert_eq!(
                &destination[row * 6..row * 6 + 6],
                &[1 + base, 1 + base, 1 + base, 1 + base, 2 + base, 2 + base]
            );
        }
        assert!(written.iter().all(|&v| v));
    }

    #[test]
    fn mirrors_destination_and_advances_over_transparent_pixels() {
        let mut c = call();
        c.flags = 0x81;
        c.source_height = 1;
        c.destination_height = 1;
        let mut destination = [9; 6];
        let mut written = [false; 6];
        draw(&[1, 254], &mut destination, &mut written, c).unwrap();
        assert_eq!(destination, [9, 9, 1, 1, 1, 1]);
        assert_eq!(written, [false, false, true, true, true, true]);
    }

    #[test]
    fn inherited_fraction_is_explicit_and_restarts_each_row() {
        let mut c = call();
        c.source_width = 1;
        c.initial_x_fraction = 0x8000;
        c.destination_width = 2;
        c.destination_height = 2;
        c.destination_stride = 2;
        let mut destination = [0; 4];
        draw(&[1, 2, 3, 4], &mut destination, &mut [false; 4], c).unwrap();
        assert_eq!(destination, [1, 2, 3, 4]);
    }

    #[test]
    fn invalid_extents_leave_destination_unchanged() {
        let mut destination = [9; 35];
        assert!(draw(&[1, 2, 3, 4], &mut destination, &mut [false; 35], call()).is_err());
        assert_eq!(destination, [9; 35]);
    }

    #[test]
    fn verifies_critical_original_instructions() {
        let bytes = std::fs::read(concat!(
            env!("CARGO_MANIFEST_DIR"),
            "/src/",
            "../../../../analysis/phase-five/door-20261015/scaler/core-original.bin"
        ))
        .expect("private research fixture required; see docs/DEVELOPMENT.md");
        // LDS SI preserves ESI high; ratios use 32-bit DIV; ROR/ADD/ROL sample.
        assert_eq!(&bytes[0xb..0xe], &[0xc5, 0x76, 0x06]);
        assert_eq!(&bytes[0x53..0x56], &[0x66, 0xf7, 0xf1]);
        assert_eq!(
            &bytes[0xc8..0xd6],
            &[0x66, 0xc1, 0xce, 0x10, 0x66, 0x2e, 0x03, 0x36, 0, 0, 0x66, 0xc1, 0xc6, 0x10]
        );
    }

    #[test]
    fn bank_chunking_changes_vertical_sampling() {
        let chunk = next_chunk(ScaleWindow {
            source_width: 1,
            source_stride: 1,
            destination_width: 1,
            destination_stride: 1,
            remaining_source_height: 2,
            remaining_destination_height: 6,
            source_available: 1,
            destination_available: 6,
        })
        .unwrap();
        assert_eq!(
            chunk,
            ScaleChunk {
                source_height: 1,
                destination_height: 3
            }
        );
        let mut whole = [0; 6];
        let mut split = [0; 6];
        let mut c = call();
        c.source_width = 1;
        c.source_stride = 1;
        c.destination_width = 1;
        c.destination_stride = 1;
        draw(&[7, 8], &mut whole, &mut [false; 6], c).unwrap();
        c.source_height = chunk.source_height;
        c.destination_height = chunk.destination_height;
        draw(&[7, 8], &mut split, &mut [false; 6], c).unwrap();
        c.source_offset = 1;
        c.destination_offset = 3;
        draw(&[7, 8], &mut split, &mut [false; 6], c).unwrap();
        assert_eq!(whole, [7, 7, 7, 7, 8, 8]);
        assert_eq!(split, [7, 7, 7, 8, 8, 8]);
    }

    #[test]
    fn original_allocator_size_rule_matches_live_large_nodes() {
        assert_eq!(allocation_alignment(0xbff0).unwrap(), 16);
        assert_eq!(allocation_alignment(0xbff1).unwrap(), 0x4000);
        let nodes = std::fs::read(concat!(
            env!("CARGO_MANIFEST_DIR"),
            "/src/",
            "../../../../analysis/phase-five/navigation-renderer-20261016/capture/NAV-NODES.BIN"
        ))
        .expect("private research fixture required; see docs/DEVELOPMENT.md");
        let mut checked = 0;
        for node in nodes.chunks_exact(18) {
            let id = u16::from_le_bytes(node[..2].try_into().unwrap());
            if id == 0 || id == 0xffff {
                continue;
            }
            let start = u32::from_le_bytes(node[2..6].try_into().unwrap());
            let size = u32::from_le_bytes(node[6..10].try_into().unwrap());
            if size >= 0xc000 {
                assert_eq!(start & 0x3fff, 0, "handle{id}");
                checked += 1;
            }
        }
        assert!(checked >= 7);
        let original=std::fs::read(concat!(env!("CARGO_MANIFEST_DIR"), "/src/", "../../../../analysis/phase-five/navigation-renderer-20261016/allocator/allocator-original.bin")).expect("private research fixture required; see docs/DEVELOPMENT.md");
        //119b3: CMP requestlow,c000;119e4: ADD end,3fff/ADC/AND c000.
        assert_eq!(&original[0x420..0x425], &[0x81, 0x7e, 0x06, 0x00, 0xc0]);
        assert_eq!(
            &original[0x451..0x45c],
            &[0x81, 0xc2, 0xff, 0x3f, 0x15, 0, 0, 0x81, 0xe2, 0, 0xc0]
        );
    }

    #[test]
    fn every_fallback_scale_is_invariant_for_all_viewport_allocation_remainders() {
        let ds = std::fs::read(concat!(
            env!("CARGO_MANIFEST_DIR"),
            "/src/",
            "../../../../analysis/phase-five/navigation-renderer-20261016/capture/NAV-CORE0-DS.BIN"
        ))
        .expect("private research fixture required; see docs/DEVELOPMENT.md");
        fn sequence(record: [u16; 9], stride: u16, dest_allocation: u32) -> Vec<(u16, u16)> {
            let mut so = u32::from(record[5]) * u32::from(stride) + u32::from(record[4]);
            let mut do_ = u32::from(record[1]) * 200 + u32::from(record[0]);
            let (mut sh, mut dh) = (record[7], record[3]);
            let mut out = Vec::new();
            while sh != 0 {
                let (sv, dv) =
                    ems_pair_available(0, u32::from(stride) * 214, so, dest_allocation, 40000, do_)
                        .unwrap();
                let c = next_chunk(ScaleWindow {
                    source_width: record[6],
                    source_stride: stride,
                    destination_width: record[2],
                    destination_stride: 200,
                    remaining_source_height: sh,
                    remaining_destination_height: dh,
                    source_available: sv,
                    destination_available: dv,
                })
                .unwrap();
                out.push((c.source_height, c.destination_height));
                sh -= c.source_height;
                dh -= c.destination_height;
                so += u32::from(c.source_height) * u32::from(stride);
                do_ += u32::from(c.destination_height) * 200;
            }
            out
        }
        let mut records = 0;
        for index in 0..37 {
            let at = 0xb72a + index * 18;
            let r: [u16; 9] =
                std::array::from_fn(|j| u16::from_le_bytes([ds[at + j * 2], ds[at + j * 2 + 1]]));
            if r[8] & 2 == 0 {
                continue;
            }
            records += 1;
            assert!((usize::from(r[3]) - 1) * 200 + usize::from(r[2]) <= 0x4000);
            for stride in [234, 323] {
                let baseline = sequence(r, stride, 0);
                for remainder in 0..0x4000 {
                    assert_eq!(
                        sequence(r, stride, remainder),
                        baseline,
                        "record{index},stride{stride},remainder{remainder}"
                    );
                }
            }
        }
        assert_eq!(records, 12);
    }

    #[test]
    fn destination_window_relimits_source_rows() {
        assert_eq!(
            next_chunk(ScaleWindow {
                source_width: 10,
                source_stride: 10,
                destination_width: 20,
                destination_stride: 20,
                remaining_source_height: 100,
                remaining_destination_height: 200,
                source_available: 1000,
                destination_available: 800,
            })
            .unwrap(),
            ScaleChunk {
                source_height: 20,
                destination_height: 40
            }
        );
    }

    #[test]
    fn wrapper_preserves_low_word_multiplication() {
        assert_eq!(
            next_chunk(ScaleWindow {
                source_width: 1,
                source_stride: 1,
                destination_width: 1,
                destination_stride: 1,
                remaining_source_height: 300,
                remaining_destination_height: 300,
                source_available: 300,
                destination_available: 300,
            })
            .unwrap(),
            ScaleChunk {
                source_height: 81,
                destination_height: 81
            }
        );
    }

    #[test]
    fn second_ems_mapping_shortens_source_window() {
        assert_eq!(
            ems_pair_available(0x1234, 50076, 90, 0x1b10, 40000, 15229).unwrap(),
            (
                0x8000 - 0x128e,
                (40000u16 - 15229).min(0x7fff - ((0x1b10 + 15229) & 0x3fff))
            )
        );
        assert_eq!(ems_pair_available(0, 120, 20, 0, 10, 0).unwrap(), (100, 10));
    }

    #[test]
    fn verifies_original_wrapper_discards_multiply_high_word() {
        let bytes = std::fs::read(concat!(
            env!("CARGO_MANIFEST_DIR"),
            "/src/",
            "../../../../analysis/phase-five/door-20261016/scaler/wrapper-chunk-original.bin"
        ))
        .expect("private research fixture required; see docs/DEVELOPMENT.md");
        assert_eq!(
            &bytes[0x2f..0x39],
            &[0x9a, 0x42, 0x12, 0, 0, 0x33, 0xd2, 0xf7, 0x76, 0x0c]
        );
    }

    #[test]
    fn predicts_all_ten_original_dos_core_calls_from_live_allocations() {
        macro_rules! capture {
            ($file:literal) => {
                std::fs::read(concat!(
                    env!("CARGO_MANIFEST_DIR"),
                    "/src/",
                    concat!(
                        "../../../../analysis/phase-five/navigation-renderer-20261016/capture/",
                        $file
                    )
                ))
                .expect("private research fixture required; see docs/DEVELOPMENT.md")
            };
        }
        let cores = [
            capture!("NAV-CORE0.BIN"),
            capture!("NAV-CORE1.BIN"),
            capture!("NAV-CORE2.BIN"),
            capture!("NAV-CORE3.BIN"),
            capture!("NAV-CORE4.BIN"),
            capture!("NAV-CORE5.BIN"),
            capture!("NAV-CORE6.BIN"),
            capture!("NAV-CORE7.BIN"),
            capture!("NAV-CORE8.BIN"),
            capture!("NAV-CORE9.BIN"),
        ];
        let wrappers = [
            capture!("NAV-WRAP0.BIN"),
            capture!("NAV-WRAP1.BIN"),
            capture!("NAV-WRAP2.BIN"),
            capture!("NAV-WRAP3.BIN"),
            capture!("NAV-WRAP4.BIN"),
            capture!("NAV-WRAP5.BIN"),
            capture!("NAV-WRAP6.BIN"),
            capture!("NAV-WRAP7.BIN"),
            capture!("NAV-WRAP8.BIN"),
            capture!("NAV-WRAP9.BIN"),
        ];
        let ds = capture!("NAV-CORE0-DS.BIN");
        let nodes = capture!("NAV-NODES.BIN");
        fn word(b: &[u8], offset: usize) -> u16 {
            u16::from_le_bytes([b[offset], b[offset + 1]])
        }
        fn dword(b: &[u8], offset: usize) -> u32 {
            u32::from_le_bytes(b[offset..offset + 4].try_into().unwrap())
        }
        fn descriptor(ds: &[u8], nodes: &[u8], slot: u16) -> (u16, u16, u32, u32) {
            let at = 0xe29b + usize::from(slot & 255) * 8;
            let bank = usize::from(word(ds, at + 4));
            assert_eq!(word(ds, at + 6), 0x1f04);
            assert_eq!(ds[bank + 8], 1);
            let id = word(ds, bank);
            let node = nodes.chunks_exact(18).find(|n| word(n, 0) == id).unwrap();
            (
                word(ds, at),
                word(ds, at + 2),
                dword(node, 2),
                dword(ds, bank + 4),
            )
        }
        for i in 0..10 {
            let c = &cores[i];
            let b = &wrappers[i];
            // Wrapper dump begins at BP: saved BP, return IP, return CS.
            // Core dump begins at SP: return IP, return CS, then parameters.
            let a: [u16; 11] = std::array::from_fn(|j| word(&b, 6 + j * 2));
            let (ss, sh, sa, sz) = descriptor(&ds, &nodes, a[8]);
            let (ds_, dh, da, dz) = descriptor(&ds, &nodes, a[9]);
            let so = u32::from(a[1]) * u32::from(ss) + u32::from(a[0]);
            let do_ = u32::from(a[5]) * u32::from(ds_) + u32::from(a[4]);
            let (sv, dv) = ems_pair_available(sa, sz, so, da, dz, do_).unwrap();
            let chunk = next_chunk(ScaleWindow {
                source_width: a[2],
                source_stride: ss,
                destination_width: a[6],
                destination_stride: ds_,
                remaining_source_height: a[3],
                remaining_destination_height: a[7],
                source_available: sv,
                destination_available: dv,
            })
            .unwrap();
            let expected = [
                ((sa + so) & 0x3fff) as u16,
                0xe000,
                0,
                0,
                a[2],
                chunk.source_height,
                ss,
                sh,
                (0x8000 + ((da + do_) & 0x3fff)) as u16,
                0xe000,
                0,
                0,
                a[6],
                chunk.destination_height,
                ds_,
                dh,
                254,
                a[10] & 255,
            ];
            let actual: [u16; 18] = std::array::from_fn(|j| word(&c, 4 + j * 2));
            assert_eq!(actual, expected, "original core call {i}");
            assert_eq!(
                (chunk.source_height, chunk.destination_height),
                if i % 2 == 0 { (137, 45) } else { (7, 2) }
            );
            if i % 2 == 0 {
                // Vary every row/column so incorrect sampling is observable.
                // Expected heights come from actual cores, not the planner.
                let source: Vec<u8> = (0..sz)
                    .map(|j| ((j / u32::from(ss) + j % u32::from(ss)) % 253) as u8)
                    .collect();
                let mut predicted = vec![254; dz as usize];
                let mut expected_pixels = predicted.clone();
                let call = ScaleCall {
                    source_offset: so as usize,
                    source_stride: ss,
                    source_width: a[2],
                    source_height: a[3],
                    destination_offset: do_ as usize,
                    destination_stride: ds_,
                    destination_width: a[6],
                    destination_height: a[7],
                    transparent_key: 254,
                    flags: (a[10] & 255) as u8,
                    initial_x_fraction: 0,
                };
                let count = draw_ems(
                    &source,
                    &mut predicted,
                    &mut vec![false; dz as usize],
                    call,
                    [sa, da],
                )
                .unwrap();
                assert_eq!(count, 2);
                for j in i..=i + 1 {
                    let wc = &wrappers[j];
                    let cc = &cores[j];
                    let source_offset =
                        usize::from(word(&wc, 8)) * usize::from(ss) + usize::from(word(&wc, 6));
                    let destination_offset =
                        usize::from(word(&wc, 16)) * usize::from(ds_) + usize::from(word(&wc, 14));
                    draw(
                        &source,
                        &mut expected_pixels,
                        &mut vec![false; dz as usize],
                        ScaleCall {
                            source_offset,
                            destination_offset,
                            source_height: word(&cc, 14),
                            destination_height: word(&cc, 30),
                            ..call
                        },
                    )
                    .unwrap();
                }
                assert_eq!(
                    predicted,
                    expected_pixels,
                    "source-generated core pixels pair{}",
                    i / 2
                );
                let mut independent = vec![254; dz as usize];
                let count = draw_fallback200(
                    &source,
                    &mut independent,
                    &mut vec![false; dz as usize],
                    call,
                )
                .unwrap();
                assert_eq!(count, 2);
                assert_eq!(
                    independent,
                    expected_pixels,
                    "allocation-independent pair{}",
                    i / 2
                );
            }
        }
    }
}
