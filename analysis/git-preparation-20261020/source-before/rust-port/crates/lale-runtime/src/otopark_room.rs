//! Original five-layer PC renderer, starting-cell turns and north-door event gate.
//! Uses original geometry, bank-aware scales, cropped surfaces and keyed rectangles.
use crate::sdl_window::{Input, Window};
use lale_assets::{decode_cmp, Flib, IndexedImage, Palette6};
use std::{collections::BTreeMap, error::Error, path::Path, time::Duration};
#[path = "otopark_gate.rs"]
mod gate;
#[path = "world_debug.rs"]
mod world_debug;
#[allow(dead_code)]
pub fn check_door_choice(root: &Path, window: &mut Window) -> Result<(), Box<dyn Error>> {
    gate::runtime_check(root, window)
}
#[cfg(test)]
include!("otopark_start_commands.rs");
#[cfg(test)]
include!("otopark_turn_commands.rs");

#[cfg(test)]
fn commands(facing: u8) -> Result<&'static [(bool, [u16; 12])], Box<dyn Error>> {
    match facing {
        0 => Ok(FACING_0),
        1 => Ok(FACING_1),
        2 => Ok(CAPTURED),
        3 => Ok(FACING_3),
        _ => Err("room facing must be 0..3".into()),
    }
}

#[derive(Clone)]
pub struct StartingRoom {
    pub indices: Vec<u8>,
    pub colors: Vec<u32>,
    pub untouched_pixels: usize,
    written: Vec<bool>,
}
impl StartingRoom {
    pub fn load(root: &Path) -> Result<Self, Box<dyn Error>> {
        Self::load_facing(root, 2)
    }
    pub fn load_facing(root: &Path, facing: u8) -> Result<Self, Box<dyn Error>> {
        Self::load_view(
            root,
            "PC1",
            lale_assets::scene_layers::ViewState { x: 2, y: 1, facing },
        )
    }
    pub fn load_view(
        root: &Path,
        map_name: &str,
        view_state: lale_assets::scene_layers::ViewState,
    ) -> Result<Self, Box<dyn Error>> {
        use lale_assets::{scene_commands::commands_200, scene_context::SceneContext};
        if view_state.facing >= 4 || !matches!(map_name, "PC1" | "PC2") {
            return Err("unsupported room map or facing".into());
        }
        let raw = std::fs::read(root.join("lale/3D.CKD"))?;
        let bank = Flib::parse(&raw)?;
        let mut images: BTreeMap<u8, IndexedImage> = BTreeMap::new();
        let executable = std::fs::read(root.join("lale/IST.EXE"))?;
        let maps = std::fs::read(root.join("lale/FRPOS.CKD"))?;
        let maps = Flib::parse(&maps)?;
        let map = lale_assets::pc_map::PcMap::parse(
            maps.member(map_name).ok_or("missing original map")?.payload,
        )?;
        if view_state.x < 0
            || view_state.y < 0
            || map
                .cell(view_state.x as usize, view_state.y as usize)
                .is_none()
        {
            return Err("view cell outside map".into());
        }
        let horizon = decode_cmp(
            bank.member("UFUK1.CMP")
                .ok_or("missing original horizon")?
                .payload,
        )?;
        let mut context =
            SceneContext::new_200(&map, view_state, horizon.dimensions.height, true, 0)?;
        let generated = commands_200(&map, view_state, &mut context, 66)?;
        // Original loader tables and alias arithmetic, shared with PC2.
        let bindings =
            lale_assets::scene_resources::image_bindings(&executable, &map, "UFUK1.CMP")?;
        let needed: std::collections::BTreeSet<u8> = generated
            .iter()
            .map(lale_assets::scene_render::source_slot)
            .collect();
        for (slot, name) in bindings
            .into_iter()
            .filter(|(slot, _)| needed.contains(slot))
        {
            images.insert(
                slot,
                decode_cmp(
                    bank.member(&name)
                        .ok_or("missing original room resource")?
                        .payload,
                )?,
            );
        }
        // Retained DOS bank reads establish key254 in the three untouched bytes.
        let mut view = vec![254u8; 200 * 200];
        let mut written = vec![false; 200 * 200];
        lale_assets::scene_render::render(&images, &generated, &mut view, &mut written)?;
        // Unwritten/key pixels retain the previous viewport on turns. A fresh
        // inspection canvas displays them as host black, as before.
        let pal = Palette6::parse(bank.member("PAL3D.PAL").ok_or("missing PAL3D")?.payload)?;
        Self::from_view(&view, written, &pal)
    }
    fn from_view(view: &[u8], written: Vec<bool>, pal: &Palette6) -> Result<Self, Box<dyn Error>> {
        let untouched_pixels = written.iter().filter(|&&v| !v).count();
        let mut indices = vec![0; 320 * 200];
        let mut colors = vec![0xff000000; 320 * 200];
        for y in 0..200 {
            for x in 0..200 {
                let index = view[y * 200 + x];
                indices[y * 320 + x + 60] = index;
                let [r, g, b] = pal.preview_rgb(index)?;
                if !written[y * 200 + x] {
                    continue;
                }
                colors[y * 320 + x + 60] =
                    0xff000000 | u32::from(r) << 16 | u32::from(g) << 8 | u32::from(b);
            }
        }
        Ok(Self {
            indices,
            colors,
            untouched_pixels,
            written,
        })
    }
}

/// Bounded starting-cell orientation state. Views use the shared map renderer;
/// movement authorization lives separately in the resumable original event gate.
pub struct StartingCell {
    area: u8,
    x: u16,
    y: u16,
    facing: u8,
    views: [StartingRoom; 4],
    room: StartingRoom,
}
impl StartingCell {
    pub fn load(root: &Path) -> Result<Self, Box<dyn Error>> {
        let views = [
            StartingRoom::load_facing(root, 0)?,
            StartingRoom::load_facing(root, 1)?,
            StartingRoom::load(root)?,
            StartingRoom::load_facing(root, 3)?,
        ];
        let room = views[2].clone();
        Ok(Self {
            area: 1,
            x: 2,
            y: 1,
            facing: 2,
            views,
            room,
        })
    }
    pub fn load_facing(root: &Path, facing: u8) -> Result<Self, Box<dyn Error>> {
        if facing >= 4 {
            return Err("room facing must be0..3".into());
        }
        let mut cell = Self::load(root)?;
        while cell.facing != facing {
            cell.turn(true);
        }
        Ok(cell)
    }
    fn sync(&mut self, root: &Path, gate: &gate::Gate<'_>) -> Result<(), Box<dyn Error>> {
        let (area, x, y) = gate.location();
        if (self.area, self.x, self.y) != (area, x, y) {
            self.relocate(
                root,
                area,
                x,
                y,
                gate.facing(),
                gate.base_room().ok_or("missing moved room")?,
            )?;
        }
        Ok(())
    }
    fn relocate(
        &mut self,
        root: &Path,
        area: u8,
        x: u16,
        y: u16,
        facing: u8,
        room: &StartingRoom,
    ) -> Result<(), Box<dyn Error>> {
        let mut views = Vec::new();
        for direction in 0..4 {
            views.push(StartingRoom::load_view(
                root,
                &format!("PC{area}"),
                lale_assets::scene_layers::ViewState {
                    x: x as i16,
                    y: y as i16,
                    facing: direction,
                },
            )?);
        }
        self.views = views.try_into().map_err(|_| "missing room views")?;
        self.area = area;
        self.x = x;
        self.y = y;
        self.facing = facing;
        self.room = room.clone();
        Ok(())
    }
    pub fn room(&self) -> &StartingRoom {
        &self.room
    }
    pub fn turn(&mut self, right: bool) {
        // Original direction vectors run clockwise 0,1,2,3. Host arrows select
        // quarter-turns; original turn animation/input cadence is not claimed.
        self.facing = (self.facing + if right { 1 } else { 3 }) % 4;
        let frame = &self.views[usize::from(self.facing)];
        for (i, &written) in frame.written.iter().enumerate() {
            if written {
                let canvas = (i / 200) * 320 + i % 200 + 60;
                self.room.indices[canvas] = frame.indices[canvas];
                self.room.colors[canvas] = frame.colors[canvas];
                self.room.written[i] = true;
            }
        }
        self.room.untouched_pixels = self.room.written.iter().filter(|&&v| !v).count();
    }
    fn key(&mut self, key: i32) -> bool {
        match key {
            1073741904 => self.turn(false), // SDL left
            1073741903 => self.turn(true),  // SDL right
            _ => return false,
        }
        true
    }
}
/// Main-thread SDL check of debug presentation and the immutable export path.
#[allow(dead_code)]
pub fn check_debug(root: &Path, window: &mut Window) -> Result<(), Box<dyn Error>> {
    let bytes = std::fs::read(root.join("lale/FRPOS.CKD"))?;
    let mut gate = gate::Gate::new(root, &bytes)?;
    let room = StartingRoom::load_facing(root, 0)?;
    gate.begin_step(&room, 0, false)?;
    let before = gate.debug_snapshot(0);
    let mut debug = world_debug::Debugger::new(true);
    debug.toggle_pause();
    debug.tick(Duration::from_secs(10));
    if debug.counter() != 0 {
        return Err("paused debug clock advanced".into());
    }
    window.present(&debug.overlay(gate.colors(), &before, gate.debug_font())?)?;
    let path = debug.export_gate(root, &gate, 0, gate.colors(), gate.indices())?;
    if gate.debug_snapshot(0) != before {
        return Err("debugger mutated pending event".into());
    }
    window.present(gate.colors())?;
    println!(
        "Native debug SDL: overlay, paused counter, unchanged pending choice5; export {}",
        path.display()
    );
    Ok(())
}
/// Read-only batch snapshot of the original starting room, without SDL.
#[allow(dead_code)]
pub fn dump_debug(root: &Path, facing: u8) -> Result<std::path::PathBuf, Box<dyn Error>> {
    let bytes = std::fs::read(root.join("lale/FRPOS.CKD"))?;
    let gate = gate::Gate::new(root, &bytes)?;
    let cell = StartingCell::load_facing(root, facing)?;
    world_debug::Debugger::new(true).export_gate(
        root,
        &gate,
        facing,
        &cell.room().colors,
        &cell.room().indices,
    )
}
pub fn run(
    root: &Path,
    window: &mut Window,
    smoke_frames: Option<usize>,
) -> Result<bool, Box<dyn Error>> {
    run_facing(root, window, smoke_frames, 2)
}
pub fn run_facing(
    root: &Path,
    window: &mut Window,
    smoke_frames: Option<usize>,
    facing: u8,
) -> Result<bool, Box<dyn Error>> {
    run_facing_party(root, window, smoke_frames, facing, None, None)
}
#[allow(dead_code)]
pub fn run_with_party(
    root: &Path,
    window: &mut Window,
    numeric: [[u8; 92]; 4],
    rng_state: u32,
) -> Result<bool, Box<dyn Error>> {
    run_facing_party(root, window, None, 2, Some(numeric), Some(rng_state))
}
fn run_facing_party(
    root: &Path,
    window: &mut Window,
    smoke_frames: Option<usize>,
    facing: u8,
    numeric: Option<[[u8; 92]; 4]>,
    rng_state: Option<u32>,
) -> Result<bool, Box<dyn Error>> {
    let mut cell = StartingCell::load_facing(root, facing)?;
    let event_bytes = std::fs::read(root.join("lale/FRPOS.CKD"))?;
    let mut gate = gate::Gate::new(root, &event_bytes)?;
    if let Some(numeric) = numeric {
        gate.set_party(numeric);
    }
    if let Some(state) = rng_state {
        gate.set_rng(state);
    }
    if numeric.is_some() && rng_state.is_some() {
        gate.arrive(cell.room())?;
    }
    eprintln!(
        "Otopark: Left/Right turn; Up/Down attempt forward/backward steps through original collision and events. North door runs warning, dialogue, acquisition and animation. Encounter remains incomplete."
    );
    window.text_input(false);
    let mut frames = 0;
    let world_clock = std::time::Instant::now();
    let mut debug = world_debug::Debugger::new(std::env::var_os("LALE_WORLD_DEBUG").is_some());
    loop {
        debug.tick(world_clock.elapsed());
        for event in window.poll() {
            cell.sync(root, &gate)?;
            if !matches!(event, Input::Motion(_, _) | Input::Text(_)) {
                debug.note_input(&format!("{event:?}"));
            }
            match event {
                Input::Key(1073741893) => {
                    debug.visible = !debug.visible;
                } // F12
                Input::Key(1073741886) => {
                    debug.tick(world_clock.elapsed());
                    debug.toggle_pause();
                } // F5
                Input::Key(1073741888) => {
                    // F7
                    let (colors, indices) = if gate.active() {
                        (gate.colors(), gate.indices())
                    } else {
                        (&cell.room().colors[..], &cell.room().indices[..])
                    };
                    match debug.export_gate(root, &gate, cell.facing, colors, indices) {
                        Ok(path) => {
                            eprintln!("Debug snapshot: {}", path.display());
                            debug.status = "snapshot exported to runtime/native/debug".into();
                        }
                        Err(error) => {
                            eprintln!("Debug export failed: {error}");
                            debug.status = format!("export failed: {error}");
                        }
                    }
                    debug.exclude_until(world_clock.elapsed());
                }
                Input::Quit => return Ok(true),
                Input::Key(27) if debug.paused => {
                    debug.tick(world_clock.elapsed());
                    debug.toggle_pause();
                }
                _ if debug.paused => {}
                Input::Key(27)
                    if gate.active()
                        && gate.pending.is_none()
                        && gate.navigation_pending.is_none() =>
                {
                    gate.key(27)?;
                }
                Input::Key(key)
                    if gate.active()
                        && gate.pending.is_none()
                        && gate.navigation_pending.is_none() =>
                {
                    gate.key(key)?;
                }
                Input::Click(x, y) if gate.active() => {
                    gate.click(x, y)?;
                }
                Input::RightClick(_, _) if gate.active() => {
                    gate.right_click()?;
                }
                Input::Key(113) => return Ok(true),
                Input::Key(27) => return Ok(false),
                Input::Key(key @ (1073741906 | 1073741905)) if !gate.active() => {
                    gate.begin_step(cell.room(), cell.facing, key == 1073741905)?;
                }
                Input::Key(_) if gate.active() => {}
                Input::Key(key) => {
                    if cell.key(key) {
                        gate.navigation_pending = None;
                    }
                }
                _ => {}
            }
        }
        debug.tick(world_clock.elapsed());
        if !debug.paused {
            gate.poll(debug.counter())?;
        }
        cell.sync(root, &gate)?;
        let (area, x, y) = gate.location();
        if let Some(reason) = &gate.navigation_pending {
            window.title(&format!("PC{area} ({x},{y}) | {reason} | Esc returns"))?;
        } else if let Some(opcode) = gate.pending {
            window.title(&format!(
                "Otopark | Original event host incomplete ({opcode}) | Esc returns"
            ))?;
        } else if gate.acquisition_active() {
            window.title("Otopark | Hazine bulduk | Select item and inventory slot; Esc closes")?;
        } else if gate.door_active() {
            window.title("Otopark | Door opening")?;
        } else if gate.dialogue_active() {
            window.title("Otopark | Party dialogue")?;
        } else if gate.active() {
            window.title("Otopark | Evet / Hayır")?;
        } else {
            window.title(&format!(
                "PC{area} ({x},{y}), facing{} | Left/Right turn | Up/Down step | Esc returns",
                cell.facing
            ))?;
        }
        if debug.paused {
            window.title("Native debug PAUSED | F5/Esc resume | F7 snapshot")?;
        }
        let snapshot = gate.debug_snapshot(cell.facing);
        debug.observe(snapshot.clone());
        let colors = if gate.active() {
            gate.colors()
        } else {
            &cell.room().colors
        };
        if debug.visible {
            window.present(&debug.overlay(colors, &snapshot, gate.debug_font())?)?;
        } else {
            window.present(colors)?;
        }
        debug.tick(world_clock.elapsed());
        if !debug.paused {
            gate.presented(debug.counter())?;
        }
        frames += 1;
        if smoke_frames.is_some_and(|n| frames >= n) {
            println!("Original starting-room compositor: {frames} frames");
            return Ok(false);
        }
        std::thread::sleep(Duration::from_millis(16));
    }
}

/// Explicit rendering inspection. This does not acknowledge world events or
/// mutate a party/save. Normal Up remains gated until those hosts are recovered.
pub fn run_door_inspection(
    root: &Path,
    window: &mut Window,
    smoke_frames: Option<usize>,
) -> Result<bool, Box<dyn Error>> {
    use lale_assets::{
        scene_context::SceneContext, scene_door::compose_200, scene_layers::ViewState,
    };
    use lale_core::{
        clock::dos_counter,
        door::{DoorClock, DoorPhase},
        movement::MovementState,
    };
    let raw = std::fs::read(root.join("lale/3D.CKD"))?;
    let bank = Flib::parse(&raw)?;
    let raw_maps = std::fs::read(root.join("lale/FRPOS.CKD"))?;
    let maps = Flib::parse(&raw_maps)?;
    let map = lale_assets::pc_map::PcMap::parse(maps.member("PC1").ok_or("missing PC1")?.payload)?;
    let exe = std::fs::read(root.join("lale/IST.EXE"))?;
    let bindings = lale_assets::scene_resources::image_bindings(&exe, &map, "UFUK1.CMP")?;
    let mut images = BTreeMap::new();
    for (slot, name) in bindings {
        if let Some(member) = bank.member(&name) {
            images.insert(slot, decode_cmp(member.payload)?);
        }
    }
    let palette = Palette6::parse(bank.member("PAL3D.PAL").ok_or("missing PAL3D")?.payload)?;
    let view = ViewState {
        x: 2,
        y: 1,
        facing: 0,
    };
    let mut context = SceneContext::new_200(&map, view, 200, true, 0)?;
    let composition = compose_200(&map, view, &mut context, &images, false)?;
    let frames: Vec<_> = composition
        .frames
        .iter()
        .map(|f| StartingRoom::from_view(f, f.iter().map(|&v| v != 254).collect(), &palette))
        .collect::<Result<_, _>>()?;
    let destination = StartingRoom::load_view(
        root,
        "PC1",
        ViewState {
            x: 2,
            y: 0,
            facing: 0,
        },
    )?;
    let mut position = MovementState {
        x: 2,
        y: 1,
        width: 10,
        event_veto: 0,
        failed_step_word: 0,
    };
    let start = std::time::Instant::now();
    let mut clock = DoorClock::new(true);
    let mut frame = 0;
    let mut finished = false;
    let mut rendered = 0;
    let mut stages = Vec::new();
    window.text_input(false);
    loop {
        for event in window.poll() {
            match event {
                Input::Quit | Input::Key(113) => return Ok(true),
                Input::Key(27) => return Ok(false),
                _ => {}
            }
        }
        match clock.poll(dos_counter(start.elapsed()) as u16) {
            DoorPhase::Present(stage) => {
                frame = usize::from(stage);
                stages.push(stage);
            }
            DoorPhase::Finished if !finished => {
                lale_core::door::commit(&mut position, 0, -1, 0);
                finished = true;
            }
            _ => {}
        }
        window.title(&format!(
            "Original north-door rendering inspection | ({},{}) | Esc returns",
            position.x, position.y
        ))?;
        window.present(if finished {
            &destination.colors
        } else {
            &frames[frame].colors
        })?;
        rendered += 1;
        if smoke_frames.is_some_and(|n| rendered >= n) {
            println!(
                "Door rendering inspection: {rendered} frames, stages{stages:?}, position({},{})",
                position.x, position.y
            );
            return Ok(false);
        }
        std::thread::sleep(Duration::from_millis(16));
    }
}
#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn general_renderer_matches_original_north_destination_and_mecidiyekoy_connection_view() {
        let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
        let mut cases = vec![("PC1", 2, 0, 0, "DESTINATION.indices".to_string())];
        for facing in 0..4 {
            cases.push(("PC2", 3, 22, facing, format!("PC2-3-22-F{facing}.indices")));
        }
        for (map, x, y, facing, fixture) in cases {
            let room = StartingRoom::load_view(
                &root,
                map,
                lale_assets::scene_layers::ViewState { x, y, facing },
            )
            .unwrap();
            let original = std::fs::read(
                root.join("analysis/phase-five/navigation-renderer-20261016/capture")
                    .join(fixture),
            )
            .unwrap();
            for (i, &value) in original.iter().enumerate() {
                assert_eq!(
                    room.indices[(i / 200) * 320 + i % 200 + 60],
                    value,
                    "{map}({x},{y})face{facing} pixel{i}"
                );
            }
        }
    }
    #[test]
    fn all_four_original_facings_render() {
        let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
        for facing in 0..4 {
            let room = StartingRoom::load_facing(&root, facing)
                .unwrap_or_else(|e| panic!("facing {facing}: {e}"));
            assert_eq!(room.untouched_pixels, if facing == 3 { 4 } else { 3 });
            let pixels = std::fs::read(root.join(format!(
                "analysis/phase-five/turning-20261015/capture/PIX{facing}.BIN"
            )))
            .unwrap();
            assert_eq!(pixels.len(), 40000);
            for (i, &written) in room.written.iter().enumerate() {
                if written {
                    assert_eq!(
                        room.indices[(i / 200) * 320 + i % 200 + 60],
                        pixels[i],
                        "DOS framebuffer facing{facing}, ({},{})",
                        i % 200,
                        i / 200
                    );
                }
            }
        }
    }
    #[test]
    fn turns_use_four_original_facings_and_retain_bank_contents() {
        let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
        let mut cell = StartingCell::load(&root).unwrap();
        let initial = cell.room.colors.clone();
        assert_eq!(cell.facing, 2);
        assert!(!cell.key(1073741906)); // Up cannot move this fixed-cell state.
        for facing in [3, 0, 1, 2] {
            assert!(cell.key(1073741903));
            assert_eq!(cell.facing, facing);
            assert_eq!(cell.room.untouched_pixels, 3);
            let original = std::fs::read(root.join(format!(
                "analysis/phase-five/turning-20261015/capture/PIX{facing}.BIN"
            )))
            .unwrap();
            for (i, &index) in original.iter().enumerate() {
                assert_eq!(
                    cell.room.indices[(i / 200) * 320 + i % 200 + 60],
                    index,
                    "persistent DOS viewport facing{facing}, pixel{i}"
                );
            }
        }
        assert_eq!(cell.room.colors, initial);
        for facing in [1, 0, 3, 2] {
            assert!(cell.key(1073741904));
            assert_eq!(cell.facing, facing);
        }
        assert_eq!(cell.room.colors, initial);
        cell.turn(false);
        cell.turn(true);
        assert_eq!(cell.facing, 2);
        assert_eq!(cell.room.colors, initial);
    }
    #[test]
    fn all_facing_calls_and_state_match_original_dos_captures() {
        let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
        let exe = std::fs::read(root.join("lale/IST.EXE")).unwrap();
        let folder = root.join("analysis/phase-five/turning-20261015/capture");
        for facing in 0..4 {
            let ds = std::fs::read(folder.join(format!("ENTRY{facing}.BIN"))).unwrap();
            assert_eq!(ds[0xb9f0], facing);
            assert_eq!(&ds[0xb9f1..0xb9f5], &[1, 0, 2, 0]);
            let projection = std::fs::read(
                root.join("analysis/phase-five/playable-20261015/room/projection37x18.bin"),
            )
            .unwrap();
            assert_eq!(&ds[0xb72a..0xb72a + 37 * 18], projection);
            let (dx, dy) = lale_assets::pc_map::direction_vector(facing);
            assert_eq!(&ds[0xb9c4..0xb9c6], &dy.to_le_bytes());
            assert_eq!(&ds[0xb9c6..0xb9c8], &dx.to_le_bytes());
            for (a, b) in [(47, 37), (49, 39), (52, 42), (54, 39), (61, 57), (63, 59)] {
                assert_eq!(
                    &ds[0xe29b + a * 8..0xe29b + a * 8 + 8],
                    &ds[0xe29b + b * 8..0xe29b + b * 8 + 8]
                );
            }
            for (i, (scaled, args)) in commands(facing).unwrap().iter().enumerate() {
                let raw = std::fs::read(folder.join(format!("F{facing}-{i:02}.BIN"))).unwrap();
                let words: Vec<u16> = raw
                    .chunks_exact(2)
                    .map(|b| u16::from_le_bytes([b[0], b[1]]))
                    .collect();
                let call = 0x28430 + usize::from(words[0]);
                assert_eq!(words[1], 0x357e);
                assert_eq!(
                    &exe[call - 5..call],
                    if *scaled {
                        &[0x9a, 0x5a, 0x0c, 0x28, 0]
                    } else {
                        &[0x9a, 0x30, 0x04, 0x28, 0]
                    }
                );
                let count = if *scaled { 12 } else { 10 };
                assert_eq!(&args[..count], &words[2..2 + count]);
            }
        }
        assert!(StartingRoom::load_facing(&root, 4).is_err());
    }
    #[test]
    fn captured_original_view_has_fully_occluded_scales_and_only_three_border_unknowns() {
        let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
        let room = StartingRoom::load(&root).unwrap();
        assert_eq!(room.indices.len(), 64000);
        assert_eq!(room.colors.len(), 64000);
        assert_eq!(CAPTURED.len(), 42);
        assert_eq!(room.untouched_pixels, 3);
    }
    #[test]
    fn native_draw_trace_matches_original_call_sites_and_captured_arguments() {
        let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
        let exe = std::fs::read(root.join("lale/IST.EXE")).unwrap();
        let folder = root.join("analysis/phase-five/playable-20261015/room/capture");
        for (i, (scaled, arguments)) in CAPTURED.iter().enumerate() {
            let raw = std::fs::read(folder.join(format!("DRAW{i:02}.BIN"))).unwrap();
            let words: Vec<u16> = raw
                .chunks_exact(2)
                .map(|b| u16::from_le_bytes([b[0], b[1]]))
                .collect();
            let return_file = 0x28430 + usize::from(words[0]);
            assert_eq!(
                &exe[return_file - 5..return_file],
                if *scaled {
                    &[0x9a, 0x5a, 0x0c, 0x28, 0]
                } else {
                    &[0x9a, 0x30, 0x04, 0x28, 0]
                }
            );
            let count = if *scaled { 12 } else { 10 };
            assert_eq!(&arguments[..count], &words[2..2 + count]);
        }
        let ds = std::fs::read(folder.join("ROOM-ENTRY-DS.BIN")).unwrap();
        for (a, b) in [(47, 37), (49, 39), (61, 57)] {
            assert_eq!(
                &ds[0xe29b + a * 8..0xe29b + a * 8 + 8],
                &ds[0xe29b + b * 8..0xe29b + b * 8 + 8]
            );
        }
        assert_eq!(ds[0xb9f0], 2);
        assert_eq!(u16::from_le_bytes([ds[0xb9f1], ds[0xb9f2]]), 1);
        assert_eq!(u16::from_le_bytes([ds[0xb9f3], ds[0xb9f4]]), 2);
    }
}
