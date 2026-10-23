mod combat_play;
#[allow(dead_code)]
mod combat_session;
mod native_audio;
mod otopark_room;
mod sdl_window;
use std::{error::Error, io::Write, path::PathBuf};
fn main() -> Result<(), Box<dyn Error>> {
    let mut root = PathBuf::from(".");
    let mut smoke = None;
    let mut dump = None;
    let mut facing = 2;
    let mut door_sequence = false;
    let mut check_choice = false;
    let mut debug_dump = false;
    let mut check_debug = false;
    let mut args = std::env::args_os().skip(1);
    while let Some(a) = args.next() {
        match a.to_str().ok_or("invalid argument")? {
            "--root" => root = args.next().ok_or("missing root")?.into(),
            "--debug-dump" => debug_dump = true,
            "--check-debug" => check_debug = true,
            "--door-sequence" => door_sequence = true,
            "--check-door-choice" => check_choice = true,
            "--facing" => facing = args.next().ok_or("missing facing")?.to_str().ok_or("invalid facing")?.parse::<u8>()?,
            "--smoke-frames" => {
                smoke = Some(
                    args.next()
                        .ok_or("missing count")?
                        .to_str()
                        .ok_or("invalid count")?
                        .parse::<usize>()?,
                )
            }
            "--dump" => dump = Some(PathBuf::from(args.next().ok_or("missing output")?)),
            _ => {
                return Err(
                    "lale-otopark-room --root PROJECT [--facing 0..3 | --door-sequence] [--smoke-frames N] [--dump NEW.ppm | --debug-dump]".into(),
                )
            }
        }
    }
    if debug_dump {
        println!("{}", otopark_room::dump_debug(&root, facing)?.display());
        return Ok(());
    }
    if let Some(path) = dump {
        let cell = otopark_room::StartingCell::load_facing(&root, facing)?;
        let room = cell.room();
        let mut f = std::fs::OpenOptions::new()
            .write(true)
            .create_new(true)
            .open(path)?;
        f.write_all(b"P6\n320 200\n255\n")?;
        for &color in &room.colors {
            f.write_all(&[(color >> 16) as u8, (color >> 8) as u8, color as u8])?;
        }
        return Ok(());
    }
    let mut window = sdl_window::Window::new("Otopark original room", false)?;
    if check_debug {
        otopark_room::check_debug(&root, &mut window)?;
    } else if check_choice {
        otopark_room::check_door_choice(&root, &mut window)?;
    } else if door_sequence {
        otopark_room::run_door_inspection(&root, &mut window, smoke)?;
    } else if facing == 2 {
        otopark_room::run(&root, &mut window, smoke)?;
    } else {
        otopark_room::run_facing(&root, &mut window, smoke, facing)?;
    }
    Ok(())
}
