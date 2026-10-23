//! Native inspection only: no flag writes, teleports or event acknowledgement.
use super::gate::Gate;
use lale_assets::world_ui::{Font, TextRun};
use lale_core::movement::MovementRequest;
use std::{
    collections::VecDeque,
    error::Error,
    fs,
    io::Write,
    path::{Path, PathBuf},
    time::{Duration, SystemTime, UNIX_EPOCH},
};

#[derive(Clone, Debug, PartialEq, Eq)]
pub(super) struct Snapshot {
    pub area: u8,
    pub position: [u16; 2],
    pub facing: u8,
    pub cell: Option<[u8; 15]>,
    pub branches: [String; 4],
    pub movement: Option<MovementRequest>,
    pub veto: u16,
    pub script_veto: u16,
    pub acquisition_selection: Option<[u8; 4]>,
    pub failed_step: u16,
    pub event_cursor: Option<usize>,
    pub pending_opcode: Option<u8>,
    pub event_command_offset: Option<usize>,
    pub event_arguments: Option<Vec<u8>>,
    pub encounter_pairs: Option<[[u8; 2]; 3]>,
    pub navigation_barrier: Option<String>,
    pub flags: [u8; 32],
    pub choice: u16,
    pub speaker: u8,
    pub rng: Option<u32>,
    pub party: Option<[[u8; 92]; 4]>,
    pub pool: [u16; 10],
    pub resources: [u16; 3],
    pub pending_resources: [u16; 3],
    pub ui: [bool; 6], // active,dialogue,choice,acquisition,door,illustration
    pub inventory: Option<[usize; 3]>,
    pub world_clock: [i16; 3],
    pub hunger_warned: u8,
    pub rest: Option<[i16; 3]>,
}

pub(super) struct Debugger {
    pub visible: bool,
    pub paused: bool,
    pub suspended: bool,
    elapsed: Duration,
    last_wall: Duration,
    previous: Option<Snapshot>,
    trace: VecDeque<String>,
    pub status: String,
}
impl Debugger {
    pub fn new(visible: bool) -> Self {
        Self {
            visible,
            paused: false,
            suspended: false,
            elapsed: Duration::ZERO,
            last_wall: Duration::ZERO,
            previous: None,
            trace: VecDeque::new(),
            status: String::new(),
        }
    }
    pub fn tick(&mut self, wall: Duration) {
        if !self.paused && !self.suspended {
            self.elapsed += wall.saturating_sub(self.last_wall);
        }
        self.last_wall = wall;
    }
    pub fn exclude_until(&mut self, wall: Duration) {
        self.last_wall = wall;
    }
    pub fn counter(&self) -> u16 {
        lale_core::clock::dos_counter(self.elapsed) as u16
    }
    pub fn toggle_pause(&mut self) {
        self.paused = !self.paused;
        self.visible = true;
    }
    fn push_trace(&mut self, entry: String) {
        if self.trace.len() == 64 {
            self.trace.pop_front();
        }
        self.trace.push_back(entry);
    }
    pub fn note_input(&mut self, input: &str) {
        self.push_trace(format!("counter={} input={input}", self.counter()));
    }
    pub fn observe(&mut self, snapshot: Snapshot) {
        if self.previous.as_ref() != Some(&snapshot) {
            self.push_trace(format!("counter={}\n{snapshot:#?}\n", self.counter()));
            self.previous = Some(snapshot);
        }
    }
    pub fn overlay(
        &self,
        colors: &[u32],
        s: &Snapshot,
        font: Font<'_>,
    ) -> Result<Vec<u32>, Box<dyn Error>> {
        let mut pixels = colors.to_vec();
        let lines = [
            format!(
                "debug {} pc{} ({},{}) dir{}",
                if self.paused { "paused" } else { "live" },
                s.area,
                s.position[0],
                s.position[1],
                s.facing
            ),
            format!(
                "event {:?} at {:?} veto{}",
                s.pending_opcode, s.event_cursor, s.veto
            )
            .to_ascii_lowercase(),
            format!(
                "rng {} dog{} key{}",
                s.rng
                    .map(|v| format!("{v:08x}"))
                    .unwrap_or_else(|| "none".into()),
                u8::from(s.flags[0] & 2 != 0),
                u8::from(s.flags[0] & 4 != 0)
            ),
            "f12 hide / f5 pause / f7 export".into(),
            self.status.to_ascii_lowercase(),
        ];
        let mut mask = vec![0; 320 * 200];
        for (row, line) in lines.iter().enumerate() {
            // Fit the proportional font by measured width, never off-screen
            // truncation that hides the debug controls unpredictably.
            let mut text = line.as_bytes().to_vec();
            while !text.is_empty() && font.width(&text)? > 310 {
                text.pop();
            }
            font.draw(
                &mut mask,
                &TextRun {
                    text,
                    x: 4,
                    y: (row * 12 + 3) as i16,
                    color: 1,
                },
            )?;
        }
        for i in 0..320 * 64 {
            pixels[i] = if mask[i] != 0 { 0xffffffff } else { 0xff101820 };
        }
        Ok(pixels)
    }
    pub fn export(
        &self,
        root: &Path,
        snapshot: &Snapshot,
        colors: &[u32],
        indices: &[u8],
        palette: &[u8],
        overlay: &[u32],
    ) -> Result<PathBuf, Box<dyn Error>> {
        if colors.len() != 64000
            || overlay.len() != 64000
            || indices.len() != 64000
            || palette.len() != 768
        {
            return Err("invalid debug framebuffer/palette extent".into());
        }
        let mut parent = root.canonicalize()?;
        for part in ["runtime", "native", "debug"] {
            parent.push(part);
            match fs::symlink_metadata(&parent) {
                Ok(metadata) if metadata.is_dir() && !metadata.file_type().is_symlink() => {}
                Ok(_) => return Err("debug output parent is not an owned directory".into()),
                Err(e) if e.kind() == std::io::ErrorKind::NotFound => fs::create_dir(&parent)?,
                Err(e) => return Err(e.into()),
            }
        }
        let stamp = SystemTime::now().duration_since(UNIX_EPOCH)?.as_nanos();
        let directory = parent.join(format!("snapshot-{stamp}-{}", std::process::id()));
        fs::create_dir(&directory)?;
        let write = |name: &str, bytes: &[u8]| -> Result<(), Box<dyn Error>> {
            let mut f = fs::OpenOptions::new()
                .write(true)
                .create_new(true)
                .open(directory.join(name))?;
            f.write_all(bytes)?;
            Ok(())
        };
        write("state.txt",format!("Native Rust debug snapshot v1\nNot a DOS memory dump or a resumable save.\nDirection0=north,1=east,2=south,3=west.\nui=[active,dialogue,choice,acquisition,door,illustration]\nCounter={} paused={}\n{snapshot:#?}\n",self.counter(),self.paused).as_bytes())?;
        write(
            "trace.txt",
            self.trace
                .iter()
                .cloned()
                .collect::<Vec<_>>()
                .join("\n")
                .as_bytes(),
        )?;
        write("indices.bin", indices)?;
        write("palette6.bin", palette)?;
        for (name, buffer) in [("framebuffer.ppm", colors), ("overlay.ppm", overlay)] {
            let mut ppm = b"P6\n320 200\n255\n".to_vec();
            for &c in buffer {
                ppm.extend_from_slice(&[(c >> 16) as u8, (c >> 8) as u8, c as u8]);
            }
            write(name, &ppm)?;
        }
        if let Some(party) = snapshot.party {
            write("party-numeric.bin", &party.concat())?;
        }
        write(
            "COMPLETE.txt",
            b"All snapshot files written successfully.\n",
        )?;
        Ok(directory)
    }
    pub fn export_gate(
        &mut self,
        root: &Path,
        gate: &Gate<'_>,
        facing: u8,
        colors: &[u32],
        indices: &[u8],
    ) -> Result<PathBuf, Box<dyn Error>> {
        let state = gate.debug_snapshot(facing);
        self.observe(state.clone());
        let overlay = self.overlay(colors, &state, gate.debug_font())?;
        self.export(
            root,
            &state,
            colors,
            indices,
            &gate.debug_palette(),
            &overlay,
        )
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn pause_excludes_time_without_counter_jump_on_resume() {
        let mut d = Debugger::new(false);
        d.tick(Duration::from_secs(1));
        let before = d.counter();
        d.toggle_pause();
        d.tick(Duration::from_secs(20));
        assert_eq!(d.counter(), before);
        d.toggle_pause();
        d.tick(Duration::from_secs(21));
        assert_eq!(
            d.counter(),
            lale_core::clock::dos_counter(Duration::from_secs(2)) as u16
        );
        d.exclude_until(Duration::from_secs(30));
        d.tick(Duration::from_secs(31));
        assert_eq!(
            d.counter(),
            lale_core::clock::dos_counter(Duration::from_secs(3)) as u16
        );
        d.suspended = true;
        d.tick(Duration::from_secs(61));
        assert_eq!(
            d.counter(),
            lale_core::clock::dos_counter(Duration::from_secs(3)) as u16
        );
        d.suspended = false;
        d.tick(Duration::from_secs(62));
        assert_eq!(
            d.counter(),
            lale_core::clock::dos_counter(Duration::from_secs(4)) as u16
        );
    }
    #[test]
    fn exports_preserve_pending_choice_pixels_and_game_state() {
        let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
        let bytes = fs::read(root.join("lale/FRPOS.CKD")).unwrap();
        let room = super::super::StartingRoom::load_facing(&root, 0).unwrap();
        let mut gate = Gate::new(&root, &bytes).unwrap();
        gate.begin_step(&room, 0, false).unwrap();
        let before = gate.debug_snapshot(0);
        assert_eq!(before.pending_opcode, Some(5));
        let colors = gate.colors().to_vec();
        let indices = gate.indices().to_vec();
        let parent = std::env::temp_dir().join(format!(
            "lale-debug-test-{}-{}",
            std::process::id(),
            SystemTime::now()
                .duration_since(UNIX_EPOCH)
                .unwrap()
                .as_nanos()
        ));
        fs::create_dir(&parent).unwrap();
        let mut debug = Debugger::new(true);
        let first = debug
            .export_gate(&parent, &gate, 0, &colors, &indices)
            .unwrap();
        let second = debug
            .export_gate(&parent, &gate, 0, &colors, &indices)
            .unwrap();
        assert_ne!(first, second);
        assert_eq!(fs::read(first.join("indices.bin")).unwrap(), indices);
        assert_eq!(
            fs::metadata(first.join("framebuffer.ppm")).unwrap().len(),
            192015
        );
        assert_eq!(fs::metadata(first.join("palette6.bin")).unwrap().len(), 768);
        assert!(first.join("COMPLETE.txt").is_file());
        assert!(!first.join("party-numeric.bin").exists());
        let overlaid = debug.overlay(&colors, &before, gate.debug_font()).unwrap();
        assert_ne!(overlaid, colors);
        assert_eq!(gate.colors(), colors);
        assert_eq!(gate.debug_snapshot(0), before);
        for _ in 0..80 {
            debug.note_input("Key(32)");
        }
        assert_eq!(debug.trace.len(), 64);
        debug.observe(before.clone());
        assert_eq!(debug.trace.len(), 64); // unchanged snapshot does not churn
                                           // Outputs intentionally remain under /tmp for inspection; no cleanup
                                           // touches any project evidence, runtime save or original resource.
    }
    #[cfg(unix)]
    #[test]
    fn export_rejects_symlinked_runtime_directory() {
        let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
        let bytes = fs::read(root.join("lale/FRPOS.CKD")).unwrap();
        let gate = Gate::new(&root, &bytes).unwrap();
        let room = super::super::StartingRoom::load(&root).unwrap();
        let parent = std::env::temp_dir().join(format!(
            "lale-debug-link-test-{}-{}",
            std::process::id(),
            SystemTime::now()
                .duration_since(UNIX_EPOCH)
                .unwrap()
                .as_nanos()
        ));
        fs::create_dir(&parent).unwrap();
        let target = parent.join("elsewhere");
        fs::create_dir(&target).unwrap();
        std::os::unix::fs::symlink(&target, parent.join("runtime")).unwrap();
        assert!(Debugger::new(true)
            .export_gate(&parent, &gate, 2, &room.colors, &room.indices)
            .is_err());
        assert_eq!(fs::read_dir(target).unwrap().count(), 0);
    }
}
