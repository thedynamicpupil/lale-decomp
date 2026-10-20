mod otopark_background;
mod sdl_window;
use std::{error::Error, path::PathBuf};

fn main() -> Result<(), Box<dyn Error>> {
    let mut root = PathBuf::from(".");
    let mut square_pixels = false;
    let mut smoke_frames = None;
    let mut args = std::env::args_os().skip(1);
    while let Some(arg) = args.next() {
        match arg.to_str().ok_or("invalid argument")? {
            "--root" => root = args.next().ok_or("missing root")?.into(),
            "--square-pixels" => square_pixels = true,
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
                println!("lale-otopark-background [--root PROJECT] [--square-pixels] [--smoke-frames N]\nDebug inspection of nine original PC1 loader-linked source sheets with PAL3D. Left/Right selects, WASD pans at 1:1, Home resets, Esc/Q closes. No room rendering/navigation/events.");
                return Ok(());
            }
            _ => return Err(format!("unknown argument {}", arg.to_string_lossy()).into()),
        }
    }
    let mut window = sdl_window::Window::new("OTOPARK DEBUG SOURCE SHEETS", square_pixels)?;
    otopark_background::run(&root, &mut window, smoke_frames)?;
    Ok(())
}
