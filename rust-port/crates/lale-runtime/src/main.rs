//! Native asset-inspection milestone, not a playable game or DOSBox wrapper.
use lale_assets::{decode_cmp, Flib, Palette6};
use std::{error::Error, fs::OpenOptions, io::Write};

fn main() -> Result<(), Box<dyn Error>> {
    let args: Vec<_> = std::env::args_os().collect();
    if args.get(1).and_then(|s| s.to_str()) == Some("seq-frame") {
        return seq_frame(&args);
    }
    if args.len() != 3 && args.len() != 6 {
        return Err(
            "Usage: lale-inspect list CONTAINER | decode CONTAINER MEMBER PALETTE OUTPUT.ppm | seq-frame CONTAINER BASENAME FRAME OUTPUT.ppm"
                .into(),
        );
    }
    let command = args[1].to_str().ok_or("command is not UTF-8")?;
    if (command == "list" && args.len() != 3) || (command == "decode" && args.len() != 6) {
        return Err("wrong argument count".into());
    }
    if command != "list" && command != "decode" {
        return Err("unknown command".into());
    }
    if std::fs::metadata(&args[2])?.len() > 256 * 1024 * 1024 {
        return Err("container exceeds 256 MiB inspection budget".into());
    }
    let source = std::fs::read(&args[2])?;
    let package = Flib::parse(&source)?;
    if command == "list" {
        for m in &package.members {
            println!("0x{:x}\t{}\t{}", m.offset, m.payload.len(), m.name);
        }
        return Ok(());
    }
    let query = args[3].to_str().ok_or("member name is not UTF-8")?;
    let palette_query = args[4].to_str().ok_or("palette name is not UTF-8")?;
    let member = package.member(query).ok_or("member not found")?;
    let palette_member = package.member(palette_query).ok_or("palette not found")?;
    let image = decode_cmp(member.payload)?;
    let palette = Palette6::parse(palette_member.payload)?;
    let mut rgb = Vec::with_capacity(image.indices.len() * 3);
    for &index in &image.indices {
        rgb.extend_from_slice(&palette.preview_rgb(index)?);
    }
    // Refuse replacement of any existing file, including original distribution files.
    let mut output = OpenOptions::new()
        .write(true)
        .create_new(true)
        .open(&args[5])?;
    write!(
        output,
        "P6\n{} {}\n255\n",
        image.dimensions.width, image.dimensions.height
    )?;
    output.write_all(&rgb)?;
    println!("Decoded {}: {}x{}, source offset 0x{:x}; original-size palette preview, no gameplay implemented.",
             member.name, image.dimensions.width, image.dimensions.height, member.offset);
    Ok(())
}

/// Inspection export only: reconstruct every dependent frame from zero state.
/// This neither schedules film playback nor changes the native game's flow.
fn seq_frame(args: &[std::ffi::OsString]) -> Result<(), Box<dyn Error>> {
    if args.len() != 6 {
        return Err("Usage: lale-inspect seq-frame CONTAINER BASENAME FRAME OUTPUT.ppm".into());
    }
    if std::fs::metadata(&args[2])?.len() > 256 * 1024 * 1024 {
        return Err("container exceeds 256 MiB inspection budget".into());
    }
    let source = std::fs::read(&args[2])?;
    let package = Flib::parse(&source)?;
    let base = args[3].to_str().ok_or("SEQ basename is not UTF-8")?;
    let target: usize = args[4].to_str().ok_or("frame is not UTF-8")?.parse()?;
    let ghd = package
        .member(&format!("{base}.GHD"))
        .ok_or("GHD member not found")?;
    let gfl = package
        .member(&format!("{base}.GFL"))
        .ok_or("GFL member not found")?;
    let header = lale_assets::seq::SeqHeader::parse(ghd.payload)?;
    if target >= header.records.len() {
        return Err("frame index out of range".into());
    }
    let mut indices = vec![0; lale_assets::seq::FRAME_BYTES];
    let mut rgb = Vec::new();
    for index in 0..=target {
        let info = header.apply_frame(index, gfl.payload, &mut indices)?;
        if index == target {
            let palette = Palette6::parse(info.palette6)?;
            rgb.reserve(indices.len() * 3);
            for &pixel in &indices {
                rgb.extend_from_slice(&palette.preview_rgb(pixel)?);
            }
        }
    }
    let mut output = OpenOptions::new()
        .write(true)
        .create_new(true)
        .open(&args[5])?;
    output.write_all(b"P6\n320 200\n255\n")?;
    output.write_all(&rgb)?;
    println!("Decoded {base} frame {target} chronologically from frame0; {} frames at header rate{}. Audio bytes preserved by decoder API; no playback or seeking emulation.", header.records.len(), header.fps);
    Ok(())
}
