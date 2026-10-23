//! Standalone entry to the same silent debug preview exposed by the menu's F9.
mod native_audio;
mod sdl_window;
mod seq_preview;
use std::{error::Error, path::PathBuf};
fn main() -> Result<(), Box<dyn Error>> {
    let mut root = PathBuf::from(".");
    let mut square_pixels = false;
    let mut smoke_frames = None;
    let mut debug_audio = false;
    let mut check_audio = false;
    let mut args = std::env::args_os().skip(1);
    while let Some(arg) = args.next() {
        match arg.to_str().ok_or("invalid argument")? {
            "--root" => root = args.next().ok_or("missing project root")?.into(),
            "--square-pixels" => square_pixels = true,
            "--debug-audio" => debug_audio = true,
            "--check-opening-audio" => check_audio = true,
            "--smoke-frames" => {
                smoke_frames = Some(
                    args.next()
                        .ok_or("missing count")?
                        .to_str()
                        .ok_or("invalid count")?
                        .parse::<usize>()?,
                )
            }
            "--help" => {
                println!("lale-seq-preview [--root PROJECT] [--square-pixels] [--smoke-frames N] [--debug-audio]\nSilent by default; --debug-audio enables original PCM and sample-clock visual scheduling. Debug preview of SEQ1–5; GHD fps; silent mode uses host deadlines. DOS mixer/fades remain incomplete. Default aspect 4:3. Space pauses, Right steps/pauses, R restarts, Esc/Q closes. --smoke-frames bypasses timing for bounded SDL verification.");
                return Ok(());
            }
            _ => return Err(format!("unknown argument {}", arg.to_string_lossy()).into()),
        }
    }
    let mut window = sdl_window::Window::new("SILENT DEBUG SEQ preview", square_pixels)?;
    if check_audio {
        seq_preview::check_opening_audio(&root, &mut window)?;
    } else if debug_audio {
        seq_preview::run_with_audio(&root, &mut window, smoke_frames, true)?;
    } else {
        seq_preview::run(&root, &mut window, smoke_frames)?;
    }
    Ok(())
}
