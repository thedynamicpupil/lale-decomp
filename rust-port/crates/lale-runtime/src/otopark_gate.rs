//! Native host for the verified warning/choice portion of the north-door gate.
//! Verified mode0 acquisition and door host; unsupported encounter effects stay pending.
use super::StartingRoom;
use lale_assets::{
    decode_cmp,
    pc_map::PcMap,
    pcs::PcsBank,
    world_events::{dispatch, CellDispatch},
    world_ui::{self, Choice, Font},
    Flib, IndexedImage, Palette6,
};
use lale_core::{
    events::{EventMachine, EventState, EventYield},
    movement::{MovementCall, MovementRequest, MovementState},
};
use std::{
    collections::{BTreeMap, VecDeque},
    error::Error,
    path::Path,
};

struct Dialogue {
    appearance: u16,
    playback: world_ui::DialoguePlayback,
    saved_pixels: Vec<u8>,
    saved_colors: Vec<u32>,
    mouse: bool,
    frame_pending: bool,
}

struct Acquisition {
    person: u8,
    pending: u8,
    inventory: u8,
    row: u8,
}

pub(super) struct Gate<'a> {
    root: std::path::PathBuf,
    archive: &'a [u8],
    area: u8,
    facing: u8,
    pub navigation_pending: Option<String>,
    exe: Vec<u8>,
    acquisition_background: IndexedImage,
    acquisition_icons: IndexedImage,
    pool: lale_core::acquisition::Pool,
    owned_resources: [u16; 3],
    acquisition: Option<Acquisition>,
    door: Option<(lale_core::door::DoorClock, Vec<StartingRoom>)>,
    illustration: Option<Option<lale_core::modal_wait::ModalWait>>,
    map: PcMap<'a>,
    scripts: PcsBank<'a>,
    proportional: IndexedImage,
    uppercase: IndexedImage,
    dialogue_uppercase: IndexedImage,
    portraits: BTreeMap<u16, IndexedImage>,
    dialogue: Option<Dialogue>,
    palette: Palette6,
    movement: MovementState,
    events: EventState,
    call: Option<MovementCall>,
    arrival: bool,
    machine: Option<EventMachine<'a>>,
    choice: Option<Choice>,
    lines: u8,
    pixels: Vec<u8>,
    colors: Vec<u32>,
    original: Option<StartingRoom>,
    pub pending: Option<u8>,
    party: Option<[[u8; 92]; 4]>,
    selected_speaker: u8,
    rng: Option<lale_core::rng::LaleRng>,
    keys: VecDeque<u8>,
}

#[cfg(test)]
mod tests {
    use super::*;
    fn root() -> std::path::PathBuf {
        Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..")
    }
    fn place<'a>(root: &Path, bytes: &'a [u8], area: u8, x: u16, y: u16, facing: u8) -> Gate<'a> {
        let mut gate = Gate::new(root, bytes).unwrap();
        let bank = Flib::parse(bytes).unwrap();
        gate.map = PcMap::parse(bank.member(&format!("PC{area}")).unwrap().payload).unwrap();
        gate.scripts = PcsBank::parse(bank.member(&format!("PCS{area}")).unwrap().payload).unwrap();
        gate.area = area;
        gate.facing = facing;
        gate.movement.x = x;
        gate.movement.y = y;
        gate.movement.width = gate.map.width();
        gate
    }
    #[test]
    fn ordinary_native_steps_use_each_live_bank_vector_and_destination_view() {
        use lale_core::movement::{CellEvent, MovementBranch};
        let root = root();
        let bytes = std::fs::read(root.join("lale/FRPOS.CKD")).unwrap();
        // Select actual original cells with no service/script effects at either
        // endpoint. This tests the shared host independently of unrecovered
        // encounter results; it does not make these cells accessible in play.
        for area in 1..=2 {
            for direction in 0..4 {
                for backward in [false, true] {
                    let mut gate = place(&root, &bytes, area, 0, 0, direction);
                    let mut chosen = None;
                    'cells: for y in 0..gate.map.height() {
                        for x in 0..gate.map.width() {
                            let (dx, dy) = lale_assets::pc_map::direction_vector(direction);
                            let nx = i16::from(x) + dx;
                            let ny = i16::from(y) + dy;
                            if nx < 0
                                || ny < 0
                                || gate.map.cell(nx as usize, ny as usize).is_none()
                                || gate
                                    .map
                                    .movement_branch(x as usize, y as usize, direction, None)
                                    != Some(MovementBranch::Open)
                            {
                                continue;
                            }
                            gate.movement.x = u16::from(x);
                            gate.movement.y = u16::from(y);
                            let no_events = [(0, 0, 3), (dx, dy, 1), (dx, dy, 2)].into_iter().all(
                                |(dx, dy, mode)| {
                                    matches!(
                                        dispatch(
                                            &gate.map,
                                            &gate.scripts,
                                            CellEvent {
                                                cell_offset: gate.movement.cell_offset(dx, dy),
                                                mode
                                            }
                                        ),
                                        Ok(CellDispatch::NoEvent)
                                    )
                                },
                            );
                            if no_events {
                                chosen = Some((u16::from(x), u16::from(y), nx as u16, ny as u16));
                                break 'cells;
                            }
                        }
                    }
                    let (x, y, nx, ny) = chosen.expect("original open no-event fixture");
                    let facing = (direction + if backward { 2 } else { 0 }) % 4;
                    let room = StartingRoom::load_view(
                        &root,
                        &format!("PC{area}"),
                        lale_assets::scene_layers::ViewState {
                            x: x as i16,
                            y: y as i16,
                            facing,
                        },
                    )
                    .unwrap();
                    gate.set_rng(0x12345678);
                    gate.set_party([[0x5a; 92]; 4]);
                    gate.begin_step(&room, facing, backward).unwrap();
                    assert_eq!(gate.location(), (area, nx, ny));
                    assert!(!gate.active());
                    assert_eq!(gate.pending, None);
                    assert_eq!(gate.navigation_pending, None);
                    assert_eq!(gate.events.flags, [0; 32]);
                    assert_eq!(gate.party, Some([[0x5a; 92]; 4]));
                    assert_eq!(gate.rng.unwrap().state, 0x12345678);
                    let expected = StartingRoom::load_view(
                        &root,
                        &format!("PC{area}"),
                        lale_assets::scene_layers::ViewState {
                            x: nx as i16,
                            y: ny as i16,
                            facing,
                        },
                    )
                    .unwrap();
                    assert_eq!(gate.base_room().unwrap().indices, expected.indices);
                    let mut cell = super::super::StartingCell::load(&root).unwrap();
                    cell.sync(&root, &gate).unwrap();
                    assert_eq!(
                        (cell.area, cell.x, cell.y, cell.facing),
                        (area, nx, ny, facing)
                    );
                    assert_eq!(cell.room().indices, expected.indices);
                    // A turn at the new location must not jump to the old
                    // starting room or reset position.
                    cell.turn(true);
                    let turned = StartingRoom::load_view(
                        &root,
                        &format!("PC{area}"),
                        lale_assets::scene_layers::ViewState {
                            x: nx as i16,
                            y: ny as i16,
                            facing: (facing + 1) % 4,
                        },
                    )
                    .unwrap();
                    for (i, &written) in turned.written.iter().enumerate() {
                        if written {
                            let at = i / 200 * 320 + i % 200 + 60;
                            assert_eq!(cell.room().indices[at], turned.indices[at]);
                        }
                    }
                }
            }
        }
    }
    #[test]
    fn native_walls_and_backward_door_do_not_run_forward_events() {
        let root = root();
        let bytes = std::fs::read(root.join("lale/FRPOS.CKD")).unwrap();
        for (facing, backward) in [(1, false), (2, false), (3, false), (2, true)] {
            let mut gate = Gate::new(&root, &bytes).unwrap();
            let room = StartingRoom::load_facing(&root, facing).unwrap();
            gate.begin_step(&room, facing, backward).unwrap();
            assert_eq!(gate.location(), (1, 2, 1));
            assert!(!gate.active());
            assert!(gate.choice.is_none());
            assert!(gate.navigation_pending.is_none());
            assert_eq!(gate.events, EventState::default());
        }
    }
    #[test]
    fn native_stair_choice_loads_pc2_only_with_original_conditions_and_vetoes_old_step() {
        let root = root();
        let bytes = std::fs::read(root.join("lale/FRPOS.CKD")).unwrap();
        for allowed in [false, true] {
            for accepted in [false, true] {
                let mut gate = place(&root, &bytes, 1, 1, 5, 3);
                // Controlled conditions matching retained DOS trial. These
                // flags are NOT granted by normal native gameplay.
                if allowed {
                    gate.events.set_flag(1);
                    gate.events.set_flag(2);
                }
                let room = StartingRoom::load_view(
                    &root,
                    "PC1",
                    lale_assets::scene_layers::ViewState {
                        x: 1,
                        y: 5,
                        facing: 3,
                    },
                )
                .unwrap();
                gate.begin_step(&room, 3, false).unwrap();
                if gate.choice.is_some() {
                    gate.key(i32::from(if accepted { b'e' } else { b'h' }))
                        .unwrap();
                }
                if !allowed {
                    // The original refusal includes party dialogue. With no
                    // supplied party, hold that host instead of skipping it.
                    assert_eq!(gate.pending, Some(17));
                    assert!(gate.active());
                    assert_eq!(gate.location(), (1, 1, 5));
                    assert!(!gate.events.flag(1) && !gate.events.flag(2));
                    continue;
                }
                let moved = allowed && accepted;
                assert_eq!(gate.location(), if moved { (2, 3, 22) } else { (1, 1, 5) });
                assert!(
                    !gate.active(),
                    "allowed={allowed}, accepted={accepted}, pending={:?}, nav={:?}, choice={}",
                    gate.pending,
                    gate.navigation_pending,
                    gate.choice.is_some()
                );
                assert_eq!(gate.pending, None);
                assert_eq!(gate.navigation_pending, None);
                assert_eq!(gate.movement.failed_step_word, 0);
                assert_eq!(gate.events.flag(1), allowed);
                assert_eq!(gate.events.flag(2), allowed);
                if moved {
                    assert_eq!(gate.map.width(), 30);
                    assert_eq!(gate.facing(), 3);
                    let expected = StartingRoom::load_view(
                        &root,
                        "PC2",
                        lale_assets::scene_layers::ViewState {
                            x: 3,
                            y: 22,
                            facing: 3,
                        },
                    )
                    .unwrap();
                    assert_eq!(gate.base_room().unwrap().indices, expected.indices);
                }
            }
        }
    }
    #[test]
    fn native_warning_choice_preserves_real_event_barrier() {
        let root = root();
        let bytes = std::fs::read(root.join("lale/FRPOS.CKD")).unwrap();
        let room = StartingRoom::load_facing(&root, 0).unwrap();
        for accepted in [false, true] {
            let mut gate = Gate::new(&root, &bytes).unwrap();
            gate.begin(&room).unwrap();
            assert!(gate.active());
            assert_eq!(
                gate.choice.as_ref().unwrap().hitboxes,
                [[57, 169, 95, 185], [212, 169, 257, 185]]
            );
            assert_eq!(gate.lines, 4);
            assert_ne!(gate.colors, room.colors);
            gate.key(27).unwrap(); // Original choice does not accept Esc.
            assert!(gate.choice.is_some());
            gate.key(if accepted { b'e' } else { b'h' } as i32).unwrap();
            assert_eq!((gate.movement.x, gate.movement.y), (2, 1));
            assert_eq!(gate.active(), accepted);
            assert_eq!(gate.pending, if accepted { Some(23) } else { None });
            assert_eq!(gate.colors, room.colors); // Original1eb9 restore.
            assert!(!gate.events.flag(1));
        }
    }
    #[test]
    fn live_party_speaker_selection_stops_at_unhosted_dialogue() {
        let root = root();
        let bytes = std::fs::read(root.join("lale/FRPOS.CKD")).unwrap();
        let room = StartingRoom::load_facing(&root, 0).unwrap();
        let mut gate = Gate::new(&root, &bytes).unwrap();
        let mut numeric = [[0; 92]; 4];
        for (i, value) in [100i16, -200, 200, 200].into_iter().enumerate() {
            numeric[i][30..32].copy_from_slice(&value.to_le_bytes());
        }
        gate.set_party(numeric);
        gate.begin(&room).unwrap();
        gate.key(i32::from(b'e')).unwrap();
        assert_eq!(gate.selected_speaker, 3); // first signed maximum, no RNG
        assert_eq!(gate.pending, Some(17));
        assert_eq!(gate.party, Some(numeric));
        assert_eq!((gate.movement.x, gate.movement.y), (2, 1));
        assert!(!gate.events.flag(1));
    }
    #[test]
    fn original_dialogue_frames_input_gate_and_pending_acquisition() {
        let root = root();
        let bytes = std::fs::read(root.join("lale/FRPOS.CKD")).unwrap();
        let room = StartingRoom::load_facing(&root, 0).unwrap();
        let path = root.join("analysis/phase-five/world-dialogue-runtime-20261016/capture");
        let before = std::fs::read(path.join("ROOT-DIALOGUE-DS.BIN")).unwrap();
        let numeric: [[u8; 92]; 4] = std::array::from_fn(|i| {
            before[0x99a6 + (i + 1) * 92..0x99a6 + (i + 2) * 92]
                .try_into()
                .unwrap()
        });
        let mut gate = Gate::new(&root, &bytes).unwrap();
        gate.set_party(numeric);
        gate.set_rng(u32::from_le_bytes(
            before[0x94c4..0x94c8].try_into().unwrap(),
        ));
        gate.begin(&room).unwrap();
        gate.key(i32::from(b'e')).unwrap();
        assert!(gate.dialogue_active());
        assert_eq!(gate.pending, None);
        gate.poll(0).unwrap();
        for i in 0..4 {
            gate.key(32).unwrap(); // Early Space is consumed but cannot end frames1..3.
            gate.key(32).unwrap(); // Original after-key helper drains the remainder.
            gate.poll((i + 1) * 150).unwrap();
            let ds = std::fs::read(path.join(format!("ROOT-PORTRAIT{i}-DS.BIN"))).unwrap();
            assert_eq!(
                gate.rng.unwrap().state,
                u32::from_le_bytes(ds[0x94c4..0x94c8].try_into().unwrap())
            );
            assert_eq!(gate.pending, None);
            gate.presented((i + 1) * 150).unwrap();
            assert!(gate.keys.is_empty());
            if i < 3 {
                assert!(gate.dialogue_active());
            }
        }
        assert!(!gate.dialogue_active());
        assert_eq!(gate.pending, None);
        assert!(gate.acquisition_active());
        assert_eq!(gate.party, Some(numeric));
        assert_eq!((gate.movement.x, gate.movement.y), (2, 1));
        assert!(!gate.events.flag(1));
        for row in 110..142 {
            assert_eq!(
                &gate.pixels[row * 320 + 8..row * 320 + 40],
                &room.indices[row * 320 + 8..row * 320 + 40]
            );
            assert_eq!(
                &gate.colors[row * 320 + 8..row * 320 + 40],
                &room.colors[row * 320 + 8..row * 320 + 40]
            );
        }
        let rng = gate.rng;
        let original = std::fs::read(
            root.join("analysis/phase-five/acquisition-20261016/capture/ACQ-INITIAL-PANEL83.BIN"),
        )
        .unwrap();
        assert_eq!(&gate.pixels[..19840], original.as_slice());
        gate.click(8, 28).unwrap();
        gate.click(8, 45).unwrap();
        let after = std::fs::read(root.join(
            "analysis/phase-five/acquisition-20261016/capture/ACQ-VALID-TO-PARTY-PANEL83.BIN",
        ))
        .unwrap();
        assert_eq!(&gate.pixels[..19840], after.as_slice());
        assert_eq!(gate.party.unwrap()[0][0x46..0x48], [2, 0]);
        assert_eq!(gate.pool.items[0], 0);
        assert_eq!(gate.rng, rng);
        gate.key(27).unwrap();
        assert!(!gate.acquisition_active());
        assert!(gate.door_active());
        assert_eq!(gate.pool, lale_core::acquisition::Pool::default());
        assert_eq!((gate.movement.x, gate.movement.y), (2, 1));
        for now in [1000, 1150, 1300, 1450] {
            gate.poll(now).unwrap();
            assert_eq!((gate.movement.x, gate.movement.y), (2, 1));
        }
        gate.poll(1600).unwrap();
        assert_eq!((gate.movement.x, gate.movement.y), (2, 0));
        assert_eq!(gate.pending, None);
        assert!(gate.illustration.as_ref().is_some_and(|w| w.is_none()));
        gate.presented(1600).unwrap();
        for i in 1..50 {
            gate.poll(1600 + i * 20).unwrap();
            assert!(gate.illustration.is_some());
        }
        gate.poll(2600).unwrap();
        assert_eq!(gate.pending, Some(8)); // authentic encounter remains pending
        let diagnostic = gate.debug_snapshot(0);
        assert_eq!(diagnostic.event_arguments, Some(vec![0, 13, 1, 0, 0, 0, 0]));
        assert_eq!(diagnostic.encounter_pairs, Some([[13, 1], [0, 0], [0, 0]]));
        assert!(!gate.events.flag(1));
        assert!(!gate.events.flag(2));
        assert_eq!(gate.party.unwrap()[0][0x46..0x48], [2, 0]);
        assert_eq!(gate.rng, rng);
    }
    #[test]
    fn original_illustration_preserves_room_pixels_and_upper_palette() {
        let root = root();
        let bytes = std::fs::read(root.join("lale/FRPOS.CKD")).unwrap();
        let room = StartingRoom::load(&root).unwrap();
        let mut gate = Gate::new(&root, &bytes).unwrap();
        gate.original = Some(room.clone());
        gate.pixels = room.indices.clone();
        gate.colors = room.colors.clone();
        gate.start_illustration(13).unwrap();
        let original = std::fs::read(
            root.join("analysis/phase-five/acquisition-20261016/capture/ILL-SLOT65-LOGICAL.BIN"),
        )
        .unwrap();
        let native: Vec<u8> = (0..200)
            .flat_map(|y| gate.pixels[y * 320 + 60..y * 320 + 260].iter().copied())
            .collect();
        let differences: Vec<_> = native
            .iter()
            .zip(&original)
            .enumerate()
            .filter(|(_, (a, b))| a != b)
            .map(|(i, (&a, &b))| (i, a, b))
            .collect();
        assert!(
            differences.is_empty(),
            "{} illustration mismatches: {:?}",
            differences.len(),
            &differences[..differences.len().min(12)]
        );
        let expected = std::fs::read(
            root.join("analysis/phase-five/acquisition-20261016/capture/ILL-LIVE-PALETTE.BIN"),
        )
        .unwrap();
        let palette: Vec<u8> = gate.palette.triplets.iter().flatten().copied().collect();
        assert_eq!(palette, expected);
    }
    #[test]
    fn opening_executes_ten_dialogues_before_once_only_flag() {
        let root = root();
        let bytes = std::fs::read(root.join("lale/FRPOS.CKD")).unwrap();
        let room = StartingRoom::load(&root).unwrap();
        let ds =
            std::fs::read(root.join(
                "analysis/phase-five/world-dialogue-runtime-20261016/capture/ROOT-MAIN-DS.BIN",
            ))
            .unwrap();
        let numeric: [[u8; 92]; 4] = std::array::from_fn(|i| {
            ds[0x99a6 + (i + 1) * 92..0x99a6 + (i + 2) * 92]
                .try_into()
                .unwrap()
        });
        let mut gate = Gate::new(&root, &bytes).unwrap();
        gate.set_party(numeric);
        gate.set_rng(u32::from_le_bytes(ds[0x94c4..0x94c8].try_into().unwrap()));
        gate.arrive(&room).unwrap();
        assert!(gate.arrival && gate.active() && gate.dialogue_active());
        let mut commands = std::collections::BTreeSet::new();
        let mut now = 0u16;
        for _ in 0..100 {
            assert!(!gate.events.flag(249));
            commands.insert(gate.machine.as_ref().unwrap().cursor());
            gate.key(32).unwrap();
            gate.poll(now).unwrap();
            gate.presented(now).unwrap();
            now = now.wrapping_add(150);
            if !gate.active() {
                break;
            }
        }
        assert!(!gate.active());
        assert!(gate.events.flag(249));
        assert_eq!(commands.len(), 10);
        assert_eq!(gate.party, Some(numeric));
        assert_eq!(gate.colors, room.colors);
        assert_eq!(gate.events.flags[0] & 6, 0);
        let rng = gate.rng;
        gate.arrive(&room).unwrap();
        assert!(!gate.active());
        assert_eq!(gate.rng, rng); //repeat flag skips every dialogue/RNG operation
    }
}

pub(super) fn runtime_check(
    root: &Path,
    window: &mut crate::sdl_window::Window,
) -> Result<(), Box<dyn Error>> {
    let bytes = std::fs::read(root.join("lale/FRPOS.CKD"))?;
    let room = StartingRoom::load_facing(root, 0)?;
    for accepted in [false, true] {
        let mut gate = Gate::new(root, &bytes)?;
        window.present(&room.colors)?;
        gate.begin_step(&room, 0, false)?;
        window.present(gate.colors())?;
        if accepted {
            gate.click(57, 169)?;
        } else {
            gate.key(i32::from(b'h'))?;
        }
        window.present(gate.colors())?;
        if gate.active() != accepted
            || gate.pending != if accepted { Some(23) } else { None }
            || (gate.movement.x, gate.movement.y) != (2, 1)
        {
            return Err("native door choice runtime check failed".into());
        }
    }
    let party = std::fs::read(root.join("lale/GRPHAZIR.DAT"))?;
    if party.len() != 664 {
        return Err("original party fixture length mismatch".into());
    }
    let numeric: [[u8; 92]; 4] =
        std::array::from_fn(|i| party[296 + i * 92..296 + (i + 1) * 92].try_into().unwrap());
    let mut gate = Gate::new(root, &bytes)?;
    gate.set_party(numeric);
    gate.begin_step(&room, 0, false)?;
    window.present(gate.colors())?;
    gate.key(i32::from(b'e'))?;
    window.present(gate.colors())?;
    if gate.pending != Some(17)
        || gate.party != Some(numeric)
        || (gate.movement.x, gate.movement.y) != (2, 1)
    {
        return Err("native live-party event boundary failed".into());
    }
    println!("Native door choice runtime: warning/choice presented; Hayır veto; Evet pending23; position(2,1)");
    println!("Native supplied-party runtime: speaker{} selected; dialogue17 pending; original numeric records unchanged",gate.selected_speaker);
    let path = root.join("analysis/phase-five/world-dialogue-runtime-20261016/capture");
    let before = std::fs::read(path.join("ROOT-DIALOGUE-DS.BIN"))?;
    let numeric: [[u8; 92]; 4] = std::array::from_fn(|i| {
        before[0x99a6 + (i + 1) * 92..0x99a6 + (i + 2) * 92]
            .try_into()
            .unwrap()
    });
    let mut gate = Gate::new(root, &bytes)?;
    gate.set_party(numeric);
    gate.set_rng(u32::from_le_bytes(
        before[0x94c4..0x94c8].try_into().unwrap(),
    ));
    gate.begin_step(&room, 0, false)?;
    gate.key(i32::from(b'e'))?;
    window.present(gate.colors())?;
    gate.poll(0)?;
    for i in 0..4 {
        gate.key(32)?;
        gate.poll((i + 1) * 150)?;
        window.present(gate.colors())?;
        let ds = std::fs::read(path.join(format!("ROOT-PORTRAIT{i}-DS.BIN")))?;
        if gate.rng.unwrap().state != u32::from_le_bytes(ds[0x94c4..0x94c8].try_into().unwrap()) {
            return Err("native dialogue RNG diverged from DOS".into());
        }
        gate.presented((i + 1) * 150)?;
    }
    window.present(gate.colors())?;
    if !gate.acquisition_active()
        || gate.pending.is_some()
        || gate.dialogue_active()
        || gate.party != Some(numeric)
        || (gate.movement.x, gate.movement.y) != (2, 1)
    {
        return Err("native dialogue/acquisition boundary failed".into());
    }
    println!("Native dialogue runtime: four DOS-matched RNG frames; early Space ignored; fourth Space returns; mode0 acquisition displayed; position(2,1)");
    let initial_panel = std::fs::read(
        root.join("analysis/phase-five/acquisition-20261016/capture/ACQ-INITIAL-PANEL83.BIN"),
    )?;
    if gate.pixels[..19840] != initial_panel {
        return Err("native acquisition initial pixels differ from DOS".into());
    }
    gate.click(8, 28)?;
    gate.click(8, 45)?;
    window.present(gate.colors())?;
    let transferred =
        std::fs::read(root.join(
            "analysis/phase-five/acquisition-20261016/capture/ACQ-VALID-TO-PARTY-PANEL83.BIN",
        ))?;
    if gate.pixels[..19840] != transferred {
        return Err("native acquisition transfer pixels differ from DOS".into());
    }
    gate.key(27)?;
    let door_clock = std::time::Instant::now();
    while gate.door_active() {
        if door_clock.elapsed() > std::time::Duration::from_secs(5) {
            return Err("native door runtime exceeded deadline".into());
        }
        gate.poll(lale_core::clock::dos_counter(door_clock.elapsed()) as u16)?;
        window.present(gate.colors())?;
        std::thread::sleep(std::time::Duration::from_millis(16));
    }
    if (gate.movement.x, gate.movement.y) != (2, 0)
        || gate.illustration.is_none()
        || gate.events.flag(1)
        || gate.events.flag(2)
        || gate.party.unwrap()[0][0x46..0x48] != [2, 0]
    {
        return Err("native acquisition/door/destination state diverged".into());
    }
    println!("Native acquisition/door runtime: DOS-exact initial+transferred panels; real four-stage door waits; automatic(2,0); illustration13 presented; {:.2}s",door_clock.elapsed().as_secs_f64());
    gate.presented(lale_core::clock::dos_counter(door_clock.elapsed()) as u16)?;
    while gate.illustration.is_some() {
        gate.poll(lale_core::clock::dos_counter(door_clock.elapsed()) as u16)?;
        window.present(gate.colors())?;
        std::thread::sleep(std::time::Duration::from_millis(16));
    }
    if gate.pending != Some(8) || gate.events.flag(1) {
        return Err("illustration did not reach original encounter barrier".into());
    }
    println!("Native illustration runtime: keyed original13, low128 palette update;50x20-counter presentation wait; warning2 then encounter8 pending");
    let boundary = gate.debug_snapshot(0);
    if boundary.event_arguments != Some(vec![0, 13, 1, 0, 0, 0, 0])
        || boundary.encounter_pairs != Some([[13, 1], [0, 0], [0, 0]])
    {
        return Err("native combat boundary operands diverged".into());
    }
    let path = super::world_debug::Debugger::new(true).export_gate(
        root,
        &gate,
        0,
        gate.colors(),
        gate.indices(),
    )?;
    if gate.debug_snapshot(0) != boundary {
        return Err("combat diagnostic acknowledged an event".into());
    }
    println!("Native combat-boundary debug export: {} (opcode8/raw group pairs retained; no battle acknowledgement)",path.display());

    let room = StartingRoom::load(root)?;
    let mut opening = Gate::new(root, &bytes)?;
    opening.set_party(numeric);
    opening.set_rng(u32::from_le_bytes(
        before[0x94c4..0x94c8].try_into().unwrap(),
    ));
    opening.arrive(&room)?;
    let clock = std::time::Instant::now();
    let mut commands = std::collections::BTreeSet::new();
    while opening.active() {
        if clock.elapsed() > std::time::Duration::from_secs(20) {
            return Err("native opening dialogue runtime exceeded check deadline".into());
        }
        if let Some(machine) = &opening.machine {
            commands.insert(machine.cursor());
        }
        opening.key(32)?;
        opening.poll(lale_core::clock::dos_counter(clock.elapsed()) as u16)?;
        window.present(opening.colors())?;
        opening.presented(lale_core::clock::dos_counter(clock.elapsed()) as u16)?;
        std::thread::sleep(std::time::Duration::from_millis(16));
    }
    if commands.len() != 10
        || !opening.events.flag(249)
        || opening.party != Some(numeric)
        || opening.events.flags[0] & 6 != 0
    {
        return Err("native opening dialogue state diverged".into());
    }
    window.present(&room.colors)?;
    println!("Native opening runtime: ten original dialogues, real150-unit waits, flag249 only after completion; {:.2}s",clock.elapsed().as_secs_f64());
    Ok(())
}
impl<'a> Gate<'a> {
    pub fn new(root: &Path, bytes: &'a [u8]) -> Result<Self, Box<dyn Error>> {
        let bank = Flib::parse(bytes)?;
        let map = PcMap::parse(bank.member("PC1").ok_or("missing PC1")?.payload)?;
        let scripts = PcsBank::parse(bank.member("PCS1").ok_or("missing PCS1")?.payload)?;
        let raw = std::fs::read(root.join("lale/IVIR.CKD"))?;
        let fonts = Flib::parse(&raw)?;
        let proportional = decode_cmp(
            fonts
                .member("DENEYX.CMP")
                .ok_or("missing original font")?
                .payload,
        )?;
        let uppercase = decode_cmp(
            fonts
                .member("IREM6.CMP")
                .ok_or("missing original uppercase font")?
                .payload,
        )?;
        // This original member is a known strict-CMP discrepancy. Preserve ALL
        //12401 emitted bytes; font consumers use the original20x620 geometry.
        // Do not weaken the generic strict decoder or discard the extra byte.
        let dialogue_uppercase = lale_assets::decode_cmp_stream(
            fonts
                .member("IREM62.CMP")
                .ok_or("missing dialogue prefix atlas")?
                .payload,
        )?;
        if dialogue_uppercase.dimensions.width != 20
            || dialogue_uppercase.dimensions.height != 620
            || dialogue_uppercase.indices.len() != 12401
        {
            return Err("unverified original IREM62 stream geometry".into());
        }
        let acquisition_icons = decode_cmp(
            fonts
                .member("ITEMBANK.CMP")
                .ok_or("missing item icons")?
                .payload,
        )?;
        let exe = std::fs::read(root.join("lale/IST.EXE"))?;
        let mut portraits = BTreeMap::new();
        for id in 1..=16 {
            let name = world_ui::portrait_name(&exe, id)?;
            portraits.insert(
                id,
                decode_cmp(
                    fonts
                        .member(&name)
                        .ok_or("missing original party portrait")?
                        .payload,
                )?,
            );
        }
        let raw = std::fs::read(root.join("lale/3D.CKD"))?;
        let bank = Flib::parse(&raw)?;
        let palette = Palette6::parse(
            bank.member("PAL3D.PAL")
                .ok_or("missing world palette")?
                .payload,
        )?;
        let acquisition_background = decode_cmp(
            bank.member("TRADE.CMP")
                .ok_or("missing acquisition panel")?
                .payload,
        )?;
        Ok(Self {
            root: root.to_owned(),
            archive: bytes,
            area: 1,
            facing: 0,
            navigation_pending: None,
            exe,
            acquisition_background,
            acquisition_icons,
            pool: Default::default(),
            owned_resources: [10; 3],
            acquisition: None,
            door: None,
            illustration: None,
            movement: MovementState {
                x: 2,
                y: 1,
                width: map.width(),
                event_veto: 0,
                failed_step_word: 0,
            },
            map,
            scripts,
            proportional,
            uppercase,
            dialogue_uppercase,
            portraits,
            dialogue: None,
            palette,
            events: EventState::default(),
            call: None,
            arrival: false,
            machine: None,
            choice: None,
            lines: 0,
            pixels: Vec::new(),
            colors: Vec::new(),
            original: None,
            pending: None,
            party: None,
            selected_speaker: 0,
            rng: None,
            keys: VecDeque::new(),
        })
    }
    pub fn debug_snapshot(&self, facing: u8) -> super::world_debug::Snapshot {
        let x = usize::from(self.movement.x);
        let y = usize::from(self.movement.y);
        let external = self.machine.as_ref().and_then(|m| m.pending_external());
        super::world_debug::Snapshot {
            area: self.area,
            position: [self.movement.x, self.movement.y],
            facing,
            cell: self.map.cell(x, y).copied(),
            branches: std::array::from_fn(|d| {
                format!("{:?}", self.map.movement_branch(x, y, d as u8, None))
            }),
            movement: self.call.as_ref().map(|c| c.request()),
            veto: self.movement.event_veto,
            script_veto: self.events.movement_veto,
            acquisition_selection: self
                .acquisition
                .as_ref()
                .map(|a| [a.person, a.pending, a.inventory, a.row]),
            failed_step: self.movement.failed_step_word,
            event_cursor: self.machine.as_ref().map(|m| m.cursor()),
            pending_opcode: self
                .pending
                .or_else(|| self.machine.as_ref().and_then(|m| m.pending_opcode())),
            event_command_offset: external.map(|(at, _, _)| at),
            event_arguments: external.map(|(_, _, args)| args.to_vec()),
            encounter_pairs: external.and_then(|(_, op, args)| {
                (op == 8 && args.len() == 7)
                    .then(|| [[args[1], args[2]], [args[3], args[4]], [args[5], args[6]]])
            }),
            navigation_barrier: self.navigation_pending.clone(),
            flags: self.events.flags,
            choice: self.events.choice,
            speaker: self.selected_speaker,
            rng: self.rng.map(|r| r.state),
            party: self.party,
            pool: self.pool.items,
            resources: self.owned_resources,
            pending_resources: self.pool.resources,
            ui: [
                self.active(),
                self.dialogue.is_some(),
                self.choice.is_some(),
                self.acquisition.is_some(),
                self.door.is_some(),
                self.illustration.is_some(),
            ],
        }
    }
    pub fn debug_font(&self) -> Font<'_> {
        Font {
            proportional: &self.proportional,
            uppercase: &self.uppercase,
        }
    }
    pub fn debug_palette(&self) -> Vec<u8> {
        self.palette.triplets.iter().flatten().copied().collect()
    }
    pub fn indices(&self) -> &[u8] {
        &self.pixels
    }
    pub fn set_party(&mut self, numeric: [[u8; 92]; 4]) {
        self.party = Some(numeric);
    }
    pub fn set_rng(&mut self, state: u32) {
        self.rng = Some(lale_core::rng::LaleRng { state });
    }
    pub fn active(&self) -> bool {
        self.call.is_some() || self.arrival
    }
    pub fn colors(&self) -> &[u32] {
        &self.colors
    }
    pub fn dialogue_active(&self) -> bool {
        self.dialogue.is_some()
    }
    pub fn poll(&mut self, now: u16) -> Result<(), Box<dyn Error>> {
        let wait_due = self
            .illustration
            .as_ref()
            .and_then(|w| w.as_ref())
            .is_some_and(|w| w.due(now));
        let illustration_done = if wait_due {
            let key = self.keys.pop_front();
            if key.is_some() {
                self.keys.clear();
            }
            self.illustration
                .as_mut()
                .unwrap()
                .as_mut()
                .unwrap()
                .check(now, key)
        } else {
            false
        };
        if illustration_done {
            self.illustration = None;
            self.machine
                .as_mut()
                .ok_or("illustration without event")?
                .acknowledge_external(&mut self.events)
                .map_err(|e| format!("illustration return:{e:?}"))?;
            self.drive()?;
        }
        if let Some((clock, frames)) = &mut self.door {
            match clock.poll(now) {
                lale_core::door::DoorPhase::Present(stage) => {
                    self.pixels = frames[usize::from(stage)].indices.clone();
                    self.colors = frames[usize::from(stage)].colors.clone();
                }
                lale_core::door::DoorPhase::Finished => {
                    self.door = None;
                    let (dx, dy) = self.forward();
                    lale_core::door::commit(&mut self.movement, dx, dy, 0);
                    self.call
                        .as_mut()
                        .ok_or("door without movement")?
                        .door_returned()?;
                    self.drive()?;
                }
                _ => {}
            }
        }

        if let Some(dialogue) = &mut self.dialogue {
            if dialogue.playback.poll(now) {
                let rng = self.rng.as_mut().ok_or("dialogue lost its live RNG")?;
                let sx = world_ui::dialogue_portrait_frame(|| rng.scaled(2));
                let image = self
                    .portraits
                    .get(&dialogue.appearance)
                    .ok_or("missing live portrait")?;
                world_ui::draw_dialogue_portrait(image, sx, &mut self.pixels)?;
                dialogue.frame_pending = true;
                self.color_region(8, 110, 32, 32)?;
            }
        }
        Ok(())
    }
    pub fn presented(&mut self, now: u16) -> Result<(), Box<dyn Error>> {
        if self.illustration.as_ref().is_some_and(|w| w.is_none()) {
            self.illustration = Some(Some(lale_core::modal_wait::ModalWait::new(50, now)));
        }

        let finished = if let Some(dialogue) = &mut self.dialogue {
            if dialogue.frame_pending {
                dialogue.frame_pending = false;
                let key = if dialogue.playback.animation.times_out_next_draw() {
                    None
                } else {
                    let key = self.keys.pop_front();
                    // Original0db7:01e3 drains every remaining BIOS key after
                    // the first read, even when it is too early to finish.
                    if key.is_some() {
                        self.keys.clear();
                    }
                    key
                };
                let result = dialogue.playback.presented(now, key, dialogue.mouse);
                dialogue.mouse = false;
                result == Some(true)
            } else {
                false
            }
        } else {
            false
        };
        if finished {
            let dialogue = self.dialogue.take().unwrap();
            for row in 0..32 {
                let at = (110 + row) * 320 + 8;
                self.pixels[at..at + 32]
                    .copy_from_slice(&dialogue.saved_pixels[row * 32..row * 32 + 32]);
                self.colors[at..at + 32]
                    .copy_from_slice(&dialogue.saved_colors[row * 32..row * 32 + 32]);
            }
            self.machine
                .as_mut()
                .ok_or("dialogue without pending script")?
                .acknowledge_external(&mut self.events)
                .map_err(|e| format!("dialogue return:{e:?}"))?;
            self.drive()?;
        }
        Ok(())
    }
    fn forward(&self) -> (i16, i16) {
        lale_assets::pc_map::direction_vector(self.facing)
    }
    pub fn location(&self) -> (u8, u16, u16) {
        (self.area, self.movement.x, self.movement.y)
    }
    pub fn base_room(&self) -> Option<&StartingRoom> {
        self.original.as_ref()
    }
    pub fn facing(&self) -> u8 {
        self.facing
    }
    #[cfg(test)]
    pub fn begin(&mut self, room: &StartingRoom) -> Result<(), Box<dyn Error>> {
        self.begin_step(room, 0, false)
    }
    /// Host Up/Down selects a forward/backward argument vector. Collision,
    /// event modes, door forward-only checks and coordinate commits remain in
    /// the original movement call. These host bindings are not DOS key claims.
    pub fn begin_step(
        &mut self,
        room: &StartingRoom,
        facing: u8,
        backward: bool,
    ) -> Result<(), Box<dyn Error>> {
        if self.active() {
            return Ok(());
        }
        if facing >= 4 {
            return Err("invalid movement facing".into());
        }
        self.facing = facing;
        self.original = Some(room.clone());
        self.pixels = room.indices.clone();
        self.colors = room.colors.clone();
        self.pending = None;
        self.navigation_pending = None;
        let direction = (facing + if backward { 2 } else { 0 }) % 4;
        let x = usize::from(self.movement.x);
        let y = usize::from(self.movement.y);
        let Some(branch) = self.map.movement_branch(x, y, direction, None) else {
            self.navigation_pending = Some("Unresolved original selector".into());
            return Ok(());
        };
        let forward = self.forward();
        let (dx, dy) = lale_assets::pc_map::direction_vector(direction);
        // Only the Door branch consumes the live-facing graphics value.
        // Selector0/state0 has a proven ordinary branch without knowing DS9f0e.
        let graphics = if branch == lale_core::movement::MovementBranch::Door {
            let pair = self
                .map
                .directional_pair(x, y, facing)
                .ok_or("missing live facing pair")?;
            let Some(graphics) = self.map.graphics_value_for_pair(pair) else {
                self.navigation_pending = Some("Unresolved original door selector".into());
                return Ok(());
            };
            u16::from(graphics)
        } else {
            0
        };
        self.call = Some(MovementCall::begin(
            branch,
            &mut self.movement,
            dx,
            dy,
            forward,
            graphics,
        ));
        self.events.movement_veto = self.movement.event_veto;
        self.drive()
    }
    fn refresh_room(&mut self) -> Result<(), Box<dyn Error>> {
        let room = StartingRoom::load_view(
            &self.root,
            &format!("PC{}", self.area),
            lale_assets::scene_layers::ViewState {
                x: self.movement.x as i16,
                y: self.movement.y as i16,
                facing: self.facing,
            },
        )?;
        self.original = Some(room);
        self.restore();
        Ok(())
    }
    ///Original world-entry mode2, including its once-only opening dialogue flag.
    ///Only a caller supplying live party/RNG should invoke this playable path.
    pub fn arrive(&mut self, room: &StartingRoom) -> Result<(), Box<dyn Error>> {
        if self.active() {
            return Err("world event already active".into());
        }
        let request = lale_core::movement::CellEvent {
            cell_offset: self.movement.cell_offset(0, 0),
            mode: 2,
        };
        match dispatch(&self.map, &self.scripts, request)
            .map_err(|e| format!("arrival dispatch:{e:?}"))?
        {
            CellDispatch::NoEvent => return Ok(()),
            CellDispatch::Script { machine, .. } => self.machine = Some(machine),
            CellDispatch::Dedicated { handler, .. } => {
                return Err(format!("unimplemented arrival:{handler}").into())
            }
        }
        self.arrival = true;
        self.original = Some(room.clone());
        self.pixels = room.indices.clone();
        self.colors = room.colors.clone();
        self.pending = None;
        self.drive()
    }
    /// Opcode11's verified area-load path. Only the two source-rendered banks
    /// are hosted. Other exits stay external; no destination or flag is guessed.
    fn transition(&mut self, arguments: &[u8]) -> Result<bool, Box<dyn Error>> {
        let Some(&area) = arguments.first() else {
            return Err("truncated area transition".into());
        };
        if !(1..=2).contains(&area) {
            return Ok(false);
        }
        let bank = Flib::parse(self.archive)?;
        let map = PcMap::parse(
            bank.member(&format!("PC{area}"))
                .ok_or("missing destination PC")?
                .payload,
        )?;
        let scripts = PcsBank::parse(
            bank.member(&format!("PCS{area}"))
                .ok_or("missing destination PCS")?
                .payload,
        )?;
        let lale_core::events::TransitionTarget::Area { x, y, facing, .. } =
            lale_core::events::transition_target(arguments, map.width())
                .map_err(|e| format!("transition:{e:?}"))?
        else {
            return Ok(false);
        };
        if map.cell(usize::from(x), usize::from(y)).is_none() {
            return Err("original transition target outside supported bank".into());
        }
        // Prepare before changing live state. The old machine still borrows
        // its original PCS group; it terminates only on the explicit return.
        let room = StartingRoom::load_view(
            &self.root,
            &format!("PC{area}"),
            lale_assets::scene_layers::ViewState {
                x: x as i16,
                y: y as i16,
                facing,
            },
        )?;
        self.map = map;
        self.scripts = scripts;
        self.area = area;
        self.facing = facing;
        self.movement.x = x;
        self.movement.y = y;
        self.movement.width = self.map.width();
        self.movement.failed_step_word = 1; // original44908, later veto clears
        self.original = Some(room);
        self.restore();
        Ok(true)
    }
    fn restore(&mut self) {
        if let Some(original) = &self.original {
            self.pixels.copy_from_slice(&original.indices);
            self.colors.copy_from_slice(&original.colors);
        }
        self.lines = 0; // original1eb9, including the no-save branch
    }
    fn paint(&mut self, runs: &[world_ui::TextRun]) -> Result<(), Box<dyn Error>> {
        let font = Font {
            proportional: &self.proportional,
            uppercase: &self.uppercase,
        };
        for run in runs {
            font.draw(&mut self.pixels, run)?;
        }
        self.color_region(0, 148, 320, 52)
    }
    fn color_region(
        &mut self,
        x: usize,
        y: usize,
        w: usize,
        h: usize,
    ) -> Result<(), Box<dyn Error>> {
        for row in y..y + h {
            for col in x..x + w {
                let i = row * 320 + col;
                let [r, g, b] = self.palette.preview_rgb(self.pixels[i])?;
                self.colors[i] = 0xff000000 | u32::from(r) << 16 | u32::from(g) << 8 | u32::from(b);
            }
        }
        Ok(())
    }
    fn start_dialogue(&mut self, arguments: &[u8]) -> Result<bool, Box<dyn Error>> {
        let Some(party) = self.party else {
            return Ok(false);
        };
        let Some(rng) = self.rng.as_mut() else {
            return Ok(false);
        };
        let mut speaker = if arguments[0] == 5 {
            self.selected_speaker
        } else {
            arguments[0]
        };
        if !(1..=4).contains(&speaker) {
            return Ok(false);
        }
        let alive = party.map(|r| i16::from_le_bytes([r[0x3a], r[0x3b]]) > 0);
        if !alive.iter().any(|&b| b) {
            return Ok(false);
        } // Original separate death handler.
        while !alive[usize::from(speaker - 1)] {
            speaker = rng.scaled(4) as u8 + 1;
        }
        let record = party[usize::from(speaker - 1)];
        let appearance = u16::from_le_bytes([record[0x42], record[0x43]]);
        if !self.portraits.contains_key(&appearance) {
            return Err("invalid live party portrait".into());
        }
        self.restore(); // Original opcode17 calls1eb9 before2948.
        let text = world_ui::decode_event_text(&arguments[2..]);
        let plan = world_ui::dialogue_text(&text);
        let font = Font {
            proportional: &self.proportional,
            uppercase: &self.dialogue_uppercase,
        };
        self.pixels[148 * 320..].fill(0);
        for run in &plan.runs {
            font.draw(&mut self.pixels, run)?;
        }
        self.color_region(0, 148, 320, 52)?;
        let mut saved_pixels = Vec::with_capacity(1024);
        let mut saved_colors = Vec::with_capacity(1024);
        for row in 110..142 {
            saved_pixels.extend_from_slice(&self.pixels[row * 320 + 8..row * 320 + 40]);
            saved_colors.extend_from_slice(&self.colors[row * 320 + 8..row * 320 + 40]);
        }
        self.lines = plan.line_counter;
        self.dialogue = Some(Dialogue {
            appearance,
            playback: world_ui::DialoguePlayback::new(u16::from(plan.line_counter) + 1),
            saved_pixels,
            saved_colors,
            mouse: false,
            frame_pending: false,
        });
        Ok(true)
    }
    pub fn key(&mut self, key: i32) -> Result<(), Box<dyn Error>> {
        if self.acquisition.is_some() {
            if key == 27 {
                return self.finish_acquisition();
            }
            if (1073741882..=1073741885).contains(&key) {
                self.acquisition.as_mut().unwrap().person = (key - 1073741882 + 1) as u8;
                self.paint_acquisition()?;
            }
            return Ok(());
        }

        if self.dialogue.is_some() || self.illustration.is_some() {
            if let Ok(ascii) = u8::try_from(key) {
                if self.keys.len() < 15 {
                    self.keys.push_back(ascii);
                }
            }
            return Ok(());
        }
        let result = self
            .choice
            .as_ref()
            .and_then(|c| u8::try_from(key).ok().and_then(|k| c.key(k)));
        if let Some(result) = result {
            self.choose(result)?;
        }
        Ok(())
    }
    pub fn click(&mut self, x: i32, y: i32) -> Result<(), Box<dyn Error>> {
        if self.acquisition.is_some() {
            let hit = |b: [i16; 4]| {
                x >= i32::from(b[0])
                    && y >= i32::from(b[1])
                    && x <= i32::from(b[2])
                    && y <= i32::from(b[3])
            };
            if hit([302, 3, 310, 13]) {
                return self.finish_acquisition();
            }
            let panel = self.acquisition_panel()?;
            let a = self.acquisition.as_mut().unwrap();
            if let Some(i) = panel.party_boxes.iter().position(|&b| hit(b)) {
                a.person = i as u8 + 1;
            } else if let Some(i) = panel.pending_boxes.iter().position(|&b| hit(b)) {
                a.row = 1;
                if a.inventory != 0 || self.pool.items[i] as i16 % 100 != 0 {
                    a.pending = i as u8 + 1;
                }
            } else if let Some(i) = panel.inventory_boxes.iter().position(|&b| hit(b)) {
                a.row = 2;
                let r = &self.party.as_ref().unwrap()[usize::from(a.person - 1)];
                let at = 0x46 + i * 2;
                if a.pending != 0 || i16::from_le_bytes([r[at], r[at + 1]]) % 100 != 0 {
                    a.inventory = i as u8 + 1;
                }
            }
            if a.pending != 0 && a.inventory != 0 {
                self.pool.exchange(
                    self.party.as_mut().unwrap(),
                    a.person,
                    a.pending,
                    a.inventory,
                )?;
                a.pending = 0;
                a.inventory = 0;
                a.row = 3 - a.row;
            }
            return self.paint_acquisition();
        }

        if let Some(dialogue) = &mut self.dialogue {
            dialogue.mouse = true;
            return Ok(());
        }
        let result = self
            .choice
            .as_ref()
            .and_then(|c| Some(c.click(i16::try_from(x).ok()?, i16::try_from(y).ok()?)))
            .flatten();
        if let Some(result) = result {
            self.choose(result)?;
        }
        Ok(())
    }
    pub fn acquisition_active(&self) -> bool {
        self.acquisition.is_some()
    }
    pub fn door_active(&self) -> bool {
        self.door.is_some()
    }
    pub fn right_click(&mut self) -> Result<(), Box<dyn Error>> {
        if let Some(a) = &mut self.acquisition {
            if a.row == 1 {
                a.pending = 0;
            } else {
                a.inventory = 0;
            }
            self.paint_acquisition()?;
        }
        Ok(())
    }
    fn acquisition_panel(&self) -> Result<lale_assets::acquisition_panel::Panel, Box<dyn Error>> {
        let a = self.acquisition.as_ref().ok_or("no acquisition")?;
        Ok(lale_assets::acquisition_panel::render(
            &lale_assets::acquisition_panel::PanelImages {
                background: &self.acquisition_background,
                icons: &self.acquisition_icons,
                font: Font {
                    proportional: &self.proportional,
                    uppercase: &self.uppercase,
                },
                portraits: &self.portraits,
            },
            &self.exe,
            &lale_assets::acquisition_panel::PanelState {
                pending_items: &self.pool.items,
                pending_resources: self.pool.resources,
                party: self.party.as_ref().ok_or("acquisition requires party")?,
                selected_party: a.person,
                origin: [0, 0],
            },
        )?)
    }
    fn paint_acquisition(&mut self) -> Result<(), Box<dyn Error>> {
        let panel = self.acquisition_panel()?;
        self.pixels[..19840].copy_from_slice(&panel.pixels);
        self.color_region(0, 0, 320, 62)
    }
    fn finish_acquisition(&mut self) -> Result<(), Box<dyn Error>> {
        self.acquisition = None;
        self.pool.finish();
        self.restore();
        self.machine
            .as_mut()
            .ok_or("acquisition without event")?
            .acknowledge_external(&mut self.events)
            .map_err(|e| format!("acquisition return:{e:?}"))?;
        self.drive()
    }
    fn start_illustration(&mut self, id: u8) -> Result<(), Box<dyn Error>> {
        let raw = std::fs::read(self.root.join("lale/IKON.CKD"))?;
        let bank = Flib::parse(&raw)?;
        let name = format!("IKON{id}.CMP");
        let palette_name = format!("IKON{id}.PAL");
        let image = decode_cmp(
            bank.member(&name)
                .ok_or("missing original illustration")?
                .payload,
        )?;
        let palette = Palette6::parse(
            bank.member(&palette_name)
                .ok_or("missing original illustration palette")?
                .payload,
        )?;
        self.restore();
        let mut view: Vec<u8> = (0..200)
            .flat_map(|y| self.pixels[y * 320 + 60..y * 320 + 260].iter().copied())
            .collect();
        lale_assets::world_illustration::compose_200(&mut view, &image)?;
        lale_assets::world_illustration::apply_palette(&mut self.palette, &palette)?;
        for y in 0..200 {
            self.pixels[y * 320 + 60..y * 320 + 260].copy_from_slice(&view[y * 200..(y + 1) * 200]);
        }
        self.color_region(0, 0, 320, 200)?;
        self.keys.clear(); // original0db7:01e3 at wait entry
        self.illustration = Some(None);
        Ok(())
    }
    fn start_door(&mut self) -> Result<(), Box<dyn Error>> {
        use lale_assets::{scene_context::SceneContext, scene_layers::ViewState};
        let raw = std::fs::read(self.root.join("lale/3D.CKD"))?;
        let bank = Flib::parse(&raw)?;
        let mut images = BTreeMap::new();
        for (slot, name) in
            lale_assets::scene_resources::image_bindings(&self.exe, &self.map, "UFUK1.CMP")?
        {
            if let Some(member) = bank.member(&name) {
                images.insert(slot, decode_cmp(member.payload)?);
            }
        }
        let view = ViewState {
            x: self.movement.x as i16,
            y: self.movement.y as i16,
            facing: self.facing,
        };
        let mut context = SceneContext::new_200(&self.map, view, 200, true, 0)?;
        let frames =
            lale_assets::scene_door::compose_200(&self.map, view, &mut context, &images, false)?
                .frames
                .iter()
                .map(|f| {
                    StartingRoom::from_view(f, f.iter().map(|&v| v != 254).collect(), &self.palette)
                })
                .collect::<Result<Vec<_>, _>>()?;
        self.door = Some((lale_core::door::DoorClock::new(true), frames));
        Ok(())
    }
    fn choose(&mut self, result: u8) -> Result<(), Box<dyn Error>> {
        self.events.choice = u16::from(result);
        self.choice = None;
        self.restore();
        self.machine
            .as_mut()
            .ok_or("choice without pending event")?
            .acknowledge_external(&mut self.events)
            .map_err(|e| format!("choice return:{e:?}"))?;
        self.drive()
    }
    fn drive(&mut self) -> Result<(), Box<dyn Error>> {
        loop {
            if let Some(machine) = &mut self.machine {
                match machine
                    .advance(&mut self.events)
                    .map_err(|e| format!("world event:{e:?}"))?
                {
                    EventYield::Finished => {
                        self.machine = None;
                        if self.arrival {
                            self.arrival = false;
                            self.restore(); // Original exit4 calls1eb9 before cleanup.
                            return Ok(());
                        }
                        self.movement.event_veto = self.events.movement_veto;
                        self.call
                            .as_mut()
                            .ok_or("event without movement")?
                            .event_returned(
                                &mut self.movement,
                                lale_assets::pc_map::direction_vector(self.facing),
                            )?;
                    }
                    EventYield::External {
                        opcode, arguments, ..
                    } => match opcode {
                        2 => {
                            let text = world_ui::decode_event_text(
                                arguments.get(1..).ok_or("truncated warning")?,
                            );
                            // Original1f6a saves and clears the320x52 bottom;
                            // warning2 is nonblocking and precedes choice5.
                            self.pixels[148 * 320..].fill(0);
                            let plan = world_ui::warning(&text, 148, self.lines, 255, None);
                            self.lines = plan.line_counter;
                            self.paint(&plan.runs)?;
                            self.machine
                                .as_mut()
                                .unwrap()
                                .acknowledge_external(&mut self.events)
                                .map_err(|e| format!("warning return:{e:?}"))?;
                        }
                        5 => {
                            let a = usize::from(arguments[0]);
                            let b = usize::from(arguments[1]);
                            let first = world_ui::decode_event_text(&arguments[2..2 + a]);
                            let second = world_ui::decode_event_text(&arguments[2 + a..2 + a + b]);
                            let font = Font {
                                proportional: &self.proportional,
                                uppercase: &self.uppercase,
                            };
                            let choice =
                                Choice::new([&first, &second], self.lines, &font, 245, 255)?;
                            self.lines = choice.line_counter;
                            self.paint(&choice.runs)?;
                            self.choice = Some(choice);
                            return Ok(());
                        }
                        23 if arguments == [1, 15] && self.party.is_some() => {
                            let values = self
                                .party
                                .as_ref()
                                .unwrap()
                                .map(|record| i16::from_le_bytes([record[30], record[31]]));
                            self.selected_speaker = world_ui::maximum_party_field(values);
                            self.machine
                                .as_mut()
                                .unwrap()
                                .acknowledge_external(&mut self.events)
                                .map_err(|e| format!("speaker selection return:{e:?}"))?;
                        }
                        3 => {
                            self.start_illustration(
                                *arguments.first().ok_or("truncated illustration")?,
                            )?;
                            return Ok(());
                        }
                        9 if self.party.is_some() => {
                            self.restore();
                            self.pool.prepare(arguments)?;
                            self.pool.enter(&mut self.owned_resources);
                            self.acquisition = Some(Acquisition {
                                person: 1,
                                pending: 0,
                                inventory: 0,
                                row: 1,
                            });
                            self.paint_acquisition()?;
                            return Ok(());
                        }
                        11 => {
                            if !self.transition(arguments)? {
                                self.pending = Some(11);
                                return Ok(());
                            }
                            self.machine
                                .as_mut()
                                .unwrap()
                                .acknowledge_external(&mut self.events)
                                .map_err(|e| format!("area return:{e:?}"))?;
                        }
                        17 => {
                            if !self.start_dialogue(arguments)? {
                                self.pending = Some(17);
                            }
                            return Ok(());
                        }
                        other => {
                            self.pending = Some(other);
                            return Ok(());
                        }
                    },
                }
            } else {
                match self.call.as_ref().ok_or("missing movement call")?.request() {
                    MovementRequest::Event(request) => {
                        match dispatch(&self.map, &self.scripts, request)
                            .map_err(|e| format!("cell dispatch:{e:?}"))?
                        {
                            CellDispatch::NoEvent => self.call.as_mut().unwrap().event_returned(
                                &mut self.movement,
                                lale_assets::pc_map::direction_vector(self.facing),
                            )?,
                            CellDispatch::Script { machine, .. } => self.machine = Some(machine),
                            CellDispatch::Dedicated { handler, .. } => {
                                self.navigation_pending =
                                    Some(format!("Original service incomplete: {handler}"));
                                return Ok(());
                            }
                        }
                    }
                    MovementRequest::Door { .. } => {
                        if let Err(error) = self.start_door() {
                            self.navigation_pending =
                                Some(format!("Original door host incomplete: {error}"));
                        }
                        return Ok(());
                    }
                    MovementRequest::Finished(outcome) => {
                        self.call = None;
                        if outcome == lale_core::movement::StepOutcome::Moved {
                            self.refresh_room()?;
                            let request = lale_core::movement::CellEvent {
                                cell_offset: self.movement.cell_offset(0, 0),
                                mode: 2,
                            };
                            match dispatch(&self.map, &self.scripts, request)
                                .map_err(|e| format!("destination:{e:?}"))?
                            {
                                CellDispatch::NoEvent => return Ok(()),
                                CellDispatch::Script { machine, .. } => {
                                    self.machine = Some(machine);
                                    self.arrival = true;
                                }
                                CellDispatch::Dedicated { handler, .. } => {
                                    self.navigation_pending = Some(format!(
                                        "Original destination service incomplete: {handler}"
                                    ));
                                    self.arrival = true;
                                    return Ok(());
                                }
                            }
                        } else {
                            if let lale_core::movement::StepOutcome::RequiresOriginalTransition(
                                branch,
                            ) = outcome
                            {
                                self.navigation_pending =
                                    Some(format!("Original transition incomplete: {branch:?}"));
                            }
                            return Ok(());
                        }
                    }
                    // These cannot be reached before the north acquisition host
                    // returns. Never present an inspection as event completion.
                    other => {
                        self.navigation_pending =
                            Some(format!("Original transition incomplete: {other:?}"));
                        return Ok(());
                    }
                }
            }
        }
    }
}
