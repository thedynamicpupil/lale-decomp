#[path = "../../../rust-port/crates/lale-runtime/src/character_appearance.rs"]
mod character_appearance;
use std::{io::Write, path::Path};
fn main() -> Result<(), String> {
    let root=Path::new(".");
    let renderer=character_appearance::CharacterAppearance::load(root)?;
    let out=Path::new("analysis/phase-five/priority-appearance-20261014");
    for (name, pose, face) in [("original-appearance1-pose1-face0",1,0),("original-appearance1-pose4-mirrored-face2",4,2)] {
        let indices=renderer.render(1,1,1,pose,face)?;
        std::fs::write(out.join(format!("{name}.indices.bin")),&indices).map_err(|e|e.to_string())?;
        let pixels=renderer.rgba(&indices)?;
        let mut f=std::fs::OpenOptions::new().write(true).create_new(true).open(out.join(format!("{name}.ppm"))).map_err(|e|e.to_string())?;
        f.write_all(b"P6\n320 200\n255\n").map_err(|e|e.to_string())?;
        for p in pixels { f.write_all(&[(p>>16) as u8,(p>>8) as u8,p as u8]).map_err(|e|e.to_string())?; }
    }
    Ok(())
}
