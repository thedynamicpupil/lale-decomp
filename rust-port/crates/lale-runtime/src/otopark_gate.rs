//! Native host for the verified warning/choice portion of the north-door gate.
//! Original world events, mode0 acquisition, door and live physical-combat caller.
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

#[path = "otopark_navigation_check.rs"]
mod navigation_check;

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
    portrait_blend: Vec<u8>,
    pool: lale_core::acquisition::Pool,
    owned_resources: [u16; 3],
    acquisition: Option<Acquisition>,
    audio_events: Vec<(usize, u32)>,
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
    step_origin: Option<(u8, u16, u16)>,
    arrival: bool,
    arrival_reentry: bool,
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
    combat_traits: Option<[[u16; 16]; 4]>,
    party_text: Option<[[u8; 74]; 4]>,
    combat_progress: Option<lale_core::combat::PartyProgress>,
    combat_storage: Option<lale_core::combat::CombatState>,
    combat_clock: [i16; 3],
    inventory: Option<super::world_inventory::Inventory>,
    rest: Option<super::world_rest::Rest>,
    rest_notice: Option<(Vec<u8>, std::time::Instant)>,
    metabolism: lale_core::rest::Metabolism,
}

#[cfg(test)]
mod tests {
    use super::*;
    fn root() -> std::path::PathBuf {
        Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..")
    }
    fn original_party() -> [[u8; 92]; 4] {
        let original = std::fs::read(root().join("lale/GRPHAZIR.DAT")).unwrap();
        std::array::from_fn(|p| {
            original[296 + 92 * p..296 + 92 * (p + 1)]
                .try_into()
                .unwrap()
        })
    }
    fn finish_navigation_modals(gate: &mut Gate<'_>, accept: bool, collect: bool) {
        let mut now = 0u16;
        for _ in 0..500 {
            gate.poll(now).unwrap();
            gate.presented(now).unwrap();
            assert!(gate.pending.is_none(), "{:?}", gate.pending);
            assert!(
                gate.navigation_pending.is_none(),
                "{:?}",
                gate.navigation_pending
            );
            if !gate.active() {
                return;
            }
            if gate.acquisition_active() {
                if collect {
                    gate.click(8, 28).unwrap();
                    gate.click(8, 45).unwrap();
                }
                gate.key(27).unwrap();
            } else {
                gate.key(if gate.choice.is_some() {
                    i32::from(if accept { b'e' } else { b'h' })
                } else {
                    32
                })
                .unwrap();
            }
            now = now.wrapping_add(150);
        }
        panic!("navigation modal did not finish");
    }
    #[test]
    fn original_stairs_commit_once_tick_once_and_reject_backward_without_rng() {
        let root = root();
        let bytes = std::fs::read(root.join("lale/FRPOS.CKD")).unwrap();
        for (x, y, facing, nx, ny, sound) in [
            (4, 0, 1, 5, 0, 22),
            (5, 0, 3, 4, 0, 21),
            (9, 4, 2, 9, 5, 22),
            (9, 5, 0, 9, 4, 21),
        ] {
            for backward in [true, false] {
                let mut gate = place(
                    &root,
                    &bytes,
                    1,
                    x,
                    y,
                    if backward { (facing + 2) % 4 } else { facing },
                );
                gate.set_party(original_party());
                gate.set_rng(0x12345678);
                let facing = gate.facing;
                let room = StartingRoom::load_view(
                    &root,
                    "PC1",
                    lale_assets::scene_layers::ViewState {
                        x: x as i16,
                        y: y as i16,
                        facing,
                    },
                )
                .unwrap();
                let clock = gate.combat_clock;
                gate.begin_step(&room, facing, backward).unwrap();
                assert!(!gate.active());
                assert!(gate.navigation_pending.is_none());
                assert_eq!(
                    gate.location(),
                    if backward { (1, x, y) } else { (1, nx, ny) }
                );
                let mut expected = lale_core::world_tick::WorldTickState {
                    clock,
                    ..Default::default()
                };
                expected.advance(if backward { 0 } else { 1 });
                assert_eq!(gate.combat_clock, expected.clock);
                assert_eq!(gate.rng.unwrap().state, 0x12345678);
                assert_eq!(gate.movement.failed_step_word, 0);
                assert_eq!(
                    gate.take_audio_events(),
                    if backward {
                        vec![]
                    } else {
                        vec![(sound, 32000)]
                    }
                );
            }
        }
    }
    #[test]
    fn original_fainted_man_search_choice_loot_and_missing_key_exit_veto() {
        let root = root();
        let bytes = std::fs::read(root.join("lale/FRPOS.CKD")).unwrap();
        for accept in [false, true] {
            let mut gate = place(&root, &bytes, 1, 9, 1, 3);
            gate.set_party(original_party());
            gate.set_rng(12345);
            let resources = gate.owned_resources;
            let room = StartingRoom::load_view(
                &root,
                "PC1",
                lale_assets::scene_layers::ViewState {
                    x: 9,
                    y: 1,
                    facing: 3,
                },
            )
            .unwrap();
            gate.begin_step(&room, 3, false).unwrap();
            finish_navigation_modals(&mut gate, accept, true);
            assert_eq!(gate.location(), (1, 8, 1));
            assert_eq!(gate.events.flag(2), accept);
            assert_eq!(
                gate.owned_resources,
                if accept {
                    [resources[0] + 5, resources[1], resources[2] + 1]
                } else {
                    resources
                }
            );
            let party = lale_core::combat_party::decode_numeric(&gate.party.unwrap());
            assert_eq!(party[0][35] % 100, if accept { 3 } else { 0 });
        }
        let mut gate = place(&root, &bytes, 1, 1, 5, 3);
        gate.set_party(original_party());
        gate.set_rng(12345);
        gate.events.set_flag(1); // Controlled postbattle fixture, never live bypass.
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
        let original = gate.party;
        let clock = gate.combat_clock;
        for _ in 0..2 {
            gate.begin_step(&room, 3, false).unwrap();
            finish_navigation_modals(&mut gate, true, false);
            assert_eq!(gate.location(), (1, 1, 5));
            assert_eq!(gate.combat_clock, clock);
            assert!(gate.events.flag(240));
            assert!(!gate.events.flag(2));
            assert_eq!(gate.party, original);
        }
    }
    #[test]
    fn mecidiyekoy_next_event_holds_unrecovered_opcode25_without_granting_flag82() {
        let root = root();
        let bytes = std::fs::read(root.join("lale/FRPOS.CKD")).unwrap();
        let mut gate = place(&root, &bytes, 2, 3, 21, 0);
        gate.set_party(original_party());
        gate.set_rng(12345);
        let room = StartingRoom::load_view(
            &root,
            "PC2",
            lale_assets::scene_layers::ViewState {
                x: 3,
                y: 21,
                facing: 0,
            },
        )
        .unwrap();
        gate.begin_step(&room, 0, false).unwrap();
        for i in 0..100u16 {
            if gate.pending.is_some() {
                break;
            }
            gate.poll(i * 150).unwrap();
            gate.presented(i * 150).unwrap();
            gate.key(32).unwrap();
        }
        assert_eq!(gate.location(), (2, 3, 20));
        assert_eq!(gate.pending, Some(25));
        assert_eq!(
            gate.machine.as_ref().unwrap().pending_external().unwrap().2,
            [9]
        );
        assert!(!gate.events.flag(82));
        let before = gate.debug_snapshot(0);
        gate.poll(20000).unwrap();
        gate.key(32).unwrap();
        assert_eq!(gate.debug_snapshot(0), before);
    }
    #[test]
    fn camp_artwork_pacing_and_automatic_return_preserve_simulation() {
        use crate::sdl_window::Input;
        use std::time::Duration;
        let root = root();
        let bytes = std::fs::read(root.join("lale/FRPOS.CKD")).unwrap();
        let original = std::fs::read(root.join("lale/GRPHAZIR.DAT")).unwrap();
        let raw: [[u8; 92]; 4] = std::array::from_fn(|p| {
            original[296 + 92 * p..296 + 92 * (p + 1)]
                .try_into()
                .unwrap()
        });
        let mut party = lale_core::combat_party::decode_numeric(&raw);
        for n in &mut party {
            n[29] = n[6];
            n[28] = n[5];
            n[9] = 250;
            n[17] = 499;
            n[21] = 500;
            n[23..28].copy_from_slice(&[50, 250, 150, 0, 500]);
        }
        party[0][29] -= 2;
        let raw = party.map(|n| std::array::from_fn(|b| n[b / 2].to_le_bytes()[b % 2]));
        let names = std::array::from_fn(|p| original[74 * p..74 * (p + 1)].try_into().unwrap());
        let room = StartingRoom::load(&root).unwrap();
        let ui = lale_assets::world_panel::WorldPanel::load(&root, party.map(|n| n[33] as usize))
            .unwrap();
        let mut expected = None;
        // Different real-time settings/poll frequencies must run the same exact
        // core operations, including shared timers and the finish call.
        for (duration_ms, interval_ms) in [(1000u64, 7u64), (3000, 17), (5000, 29)] {
            let mut g = Gate::new(&root, &bytes).unwrap();
            g.set_party(raw);
            g.set_party_text(Some(names));
            g.set_rng(12345);
            g.combat_clock = [59, 23, 359];
            let mut storage = lale_core::combat::CombatState::new(g.rng.unwrap());
            for p in 0..4 {
                storage.actors[p + 25][11..16].copy_from_slice(&[250, 50, 150, 0, 500]);
            }
            g.combat_storage = Some(storage);
            let original_palette = g.debug_palette();
            let (_, ordinary) = g.exploration_frame(&ui, &room, 2).unwrap().unwrap();
            g.world_input(&Input::Key(107)).unwrap();
            assert_eq!(
                g.rest.as_ref().unwrap().presentation_duration,
                Duration::from_millis(super::super::world_rest::CAMP_PRESENTATION_DURATION_MS)
            );
            g.rest.as_mut().unwrap().presentation_duration = Duration::from_millis(duration_ms);
            let snapshot = g.debug_snapshot(2);
            let (_, frame) = g.exploration_frame(&ui, &room, 2).unwrap().unwrap();
            assert_eq!(g.debug_snapshot(2), snapshot); // pure redraw
            let artwork = g.rest.as_ref().unwrap().artwork.as_ref().unwrap();
            let mut nontransparent = 0;
            for y in 4..148 {
                // original message window overlays the lower viewport
                for x in 5..191 {
                    if x >= 144 && y >= 156 {
                        continue;
                    } // original native compass layer
                    let index = artwork.image.indices[y * 200 + x + 2]; // accepted viewport sourceX7,destX5
                    if index != 254 {
                        assert_eq!(frame[y * 320 + x], index);
                        nontransparent += 1;
                    }
                }
            }
            assert!(nontransparent > 15000);
            for y in 0..148 {
                assert_eq!(
                    &frame[y * 320 + 197..y * 320 + 320],
                    &ordinary[y * 320 + 197..y * 320 + 320]
                );
            }
            let palette = g.debug_palette();
            assert_eq!(&palette[384..], &original_palette[384..]);
            assert_ne!(&palette[..384], &original_palette[..384]);
            // No simulation can run until the first successful presentation.
            g.poll(60000).unwrap();
            assert_eq!(g.debug_snapshot(2), snapshot);
            g.presented(60000).unwrap();
            for elapsed in (0..duration_ms).step_by(interval_ms as usize) {
                g.poll_rest_elapsed(Duration::from_millis(elapsed)).unwrap();
                assert!(g.rest_active());
            }
            g.poll_rest_elapsed(Duration::from_millis(duration_ms - 1))
                .unwrap();
            assert!(g.rest_active());
            g.poll_rest_elapsed(Duration::from_millis(duration_ms))
                .unwrap();
            assert!(!g.rest_active());
            assert_eq!(g.debug_palette(), original_palette);
            assert!(!g.events.flag(79));
            let result = (
                g.debug_snapshot(2),
                g.combat_storage.as_ref().unwrap().actors,
            );
            if let Some(expected) = &expected {
                assert_eq!(&result, expected);
            } else {
                expected = Some(result);
            }
            // No extra Escape: next F1 immediately opens character information.
            g.world_input(&Input::Key(1073741882)).unwrap();
            assert!(g.inventory_active());
        }
        // Cancel is still exactly the original prefix plus one input-check tick;
        // it returns automatically without a result-acknowledgement key.
        let mut g = Gate::new(&root, &bytes).unwrap();
        g.set_party(raw);
        g.set_party_text(Some(names));
        g.set_rng(12345);
        g.world_input(&Input::Key(107)).unwrap();
        g.poll_rest_elapsed(Duration::ZERO).unwrap();
        let mut state = lale_core::combat_party::decode_numeric(&g.party.unwrap());
        let mut cancelled_tick = g.tick_state().unwrap();
        cancelled_tick.advance(1);
        for p in 0..4 {
            state[p][23..28].copy_from_slice(&cancelled_tick.numeric_timers[p]);
        }
        let state = Some(state.map(|n| std::array::from_fn(|b| n[b / 2].to_le_bytes()[b % 2])));
        let clock = g.combat_clock;
        let seed = g.rng;
        g.world_input(&Input::Key(27)).unwrap();
        g.poll_rest_elapsed(Duration::ZERO).unwrap();
        assert!(!g.rest_active());
        assert_eq!(g.party, state);
        assert_eq!(g.rng, seed);
        let mut expected_clock = lale_core::world_tick::WorldTickState {
            clock,
            ..Default::default()
        };
        expected_clock.advance(1);
        assert_eq!(g.combat_clock, expected_clock.clock);
    }
    #[test]
    fn short_world_camp_updates_live_records_and_rejections_are_transactional() {
        use crate::sdl_window::Input;
        let root = root();
        let bytes = std::fs::read(root.join("lale/FRPOS.CKD")).unwrap();
        let mut g = Gate::new(&root, &bytes).unwrap();
        let original = std::fs::read(root.join("lale/GRPHAZIR.DAT")).unwrap();
        let raw: [[u8; 92]; 4] = std::array::from_fn(|p| {
            original[296 + 92 * p..296 + 92 * (p + 1)]
                .try_into()
                .unwrap()
        });
        let mut p = lale_core::combat_party::decode_numeric(&raw);
        for n in &mut p {
            n[29] = n[6];
            n[28] = n[5];
            n[9] = 250;
            n[17] = 499;
            n[21] = 500;
            n[23..28].fill(0);
            n[30..33].fill(0);
            n[35..45].fill(0);
        }
        p[0][35] = 202;
        p[0][30] = 35;
        g.set_party(p.map(|n| std::array::from_fn(|b| n[b / 2].to_le_bytes()[b % 2])));
        g.set_party_text(Some(std::array::from_fn(|p| {
            original[74 * p..74 * (p + 1)].try_into().unwrap()
        })));
        g.set_rng(12345);
        g.combat_clock = [9, 9, 3];
        let full = g.party;
        let rng = g.rng;
        let flags = g.events.flags;
        assert!(g.world_input(&Input::Key(107)).unwrap()); // original not-tired
        assert!(g.rest.as_ref().unwrap().simulation.is_none());
        g.poll(100).unwrap();
        g.world_input(&Input::Key(27)).unwrap();
        assert_eq!(g.party, full);
        assert_eq!(g.rng, rng);
        assert_eq!(g.events.flags, flags);
        p[0][29] -= 1;
        g.set_party(p.map(|n| std::array::from_fn(|b| n[b / 2].to_le_bytes()[b % 2])));
        g.world_input(&Input::Key(107)).unwrap();
        assert_eq!(
            g.rest
                .as_ref()
                .unwrap()
                .simulation
                .as_ref()
                .unwrap()
                .duration,
            15
        );
        assert_eq!(g.rest.as_ref().unwrap().text, g.rest_text(0x437c));
        let seed = g.rng;
        for minute in 0..=15 {
            g.poll_rest_elapsed(std::time::Duration::from_millis(
                minute * super::super::world_rest::CAMP_PRESENTATION_DURATION_MS / 15,
            ))
            .unwrap();
        }
        assert!(g.rest.is_none());
        assert_eq!(g.rest_notice.as_ref().unwrap().0, g.rest_text(0x43a0));
        assert_eq!(g.rng, seed);
        assert_eq!(g.combat_clock, [24, 9, 3]);
        assert_eq!(g.events.flags, flags); // illustration79 never sets event flag79
        let after = lale_core::combat_party::decode_numeric(&g.party.unwrap());
        assert_eq!(after[0][29], after[0][6]);
        assert_eq!(after[0][17], 502);
        assert_eq!(after[0][21], 499);
        for i in 0..4 {
            assert_eq!(after[i][30..45], p[i][30..45]);
        }
        g.world_input(&Input::Key(1073741882)).unwrap();
        assert!(g.inventory_active());
        g.world_input(&Input::Key(27)).unwrap();
        // A long rest is a native unsupported-encounter boundary, not a new
        // original camping restriction or a silently safe long camp.
        p[0][29] = p[0][6] - 9;
        g.set_party(p.map(|n| std::array::from_fn(|b| n[b / 2].to_le_bytes()[b % 2])));
        let before = g.party;
        let clock = g.combat_clock;
        let rng = g.rng;
        g.world_input(&Input::Key(107)).unwrap();
        assert!(g.rest.as_ref().unwrap().simulation.is_none());
        assert_eq!(g.party, before);
        assert_eq!(g.combat_clock, clock);
        assert_eq!(g.rng, rng);
    }
    #[test]
    fn world_inventory_modal_transfers_equips_releases_and_preserves_host_state() {
        use crate::sdl_window::Input;
        let root = root();
        let bytes = std::fs::read(root.join("lale/FRPOS.CKD")).unwrap();
        let mut g = Gate::new(&root, &bytes).unwrap();
        let original = std::fs::read(root.join("lale/GRPHAZIR.DAT")).unwrap();
        let mut raw: [[u8; 92]; 4] = std::array::from_fn(|p| {
            original[296 + 92 * p..296 + 92 * (p + 1)]
                .try_into()
                .unwrap()
        });
        // Explicit unit fixture, not a claim of naturally acquiring quality202.
        raw[0][70..72].copy_from_slice(&202i16.to_le_bytes());
        g.set_party(raw);
        g.set_rng(12345);
        g.set_party_text(Some(std::array::from_fn(|p| {
            original[74 * p..74 * (p + 1)].try_into().unwrap()
        })));
        let room = StartingRoom::load(&root).unwrap();
        let ui = lale_assets::world_panel::WorldPanel::load(&root, [15, 10, 1, 8]).unwrap();
        let before = g.debug_snapshot(2);
        let clock = g.combat_clock;
        assert!(g.world_input(&Input::Key(1073741882)).unwrap());
        let (_, frame) = g.exploration_frame(&ui, &room, 2).unwrap().unwrap();
        assert_eq!(g.party, Some(raw));
        assert_eq!(g.rng.unwrap().state, 12345);
        if let Some(folder) = std::env::var_os("LALE_TEST_WORLD_INVENTORY_FRAME") {
            let folder = std::path::PathBuf::from(folder);
            std::fs::write(folder.join("native-info-indexed.bin"), &frame).unwrap();
            std::fs::write(folder.join("native-info-palette6.bin"), g.debug_palette()).unwrap();
        }
        g.world_input(&Input::Key(105)).unwrap();
        g.world_input(&Input::Key(1073741883)).unwrap(); // selected-item F2 transfers
        assert_eq!(&g.party.unwrap()[0][70..72], &[0, 0]);
        assert_eq!(&g.party.unwrap()[1][70..72], &202i16.to_le_bytes());
        g.world_input(&Input::Key(1073741883)).unwrap(); // overview F2 selects
        g.world_input(&Input::Click(8, 8)).unwrap();
        g.world_input(&Input::Click(45, 42)).unwrap();
        assert_eq!(&g.party.unwrap()[1][60..62], &[35, 0]);
        g.world_input(&Input::Key(105)).unwrap();
        g.world_input(&Input::Key(1073741882)).unwrap();
        assert_eq!(&g.party.unwrap()[1][70..72], &202i16.to_le_bytes()); // equipped transfer rejected
        g.world_input(&Input::Key(113)).unwrap();
        assert_eq!(&g.party.unwrap()[1][60..62], &[0, 0]);
        g.world_input(&Input::Key(105)).unwrap();
        g.world_input(&Input::Key(13)).unwrap();
        g.world_input(&Input::Key(13)).unwrap();
        let equipment = g.party.unwrap();
        // All unsupported modal inputs block world movement/clock/host changes.
        for input in [Input::Key(9), Input::Key(1073741906), Input::Key(32)] {
            assert!(g.world_input(&input).unwrap());
        }
        g.poll(60000).unwrap();
        g.presented(60000).unwrap();
        assert!(g.prepare_battle().unwrap().is_none());
        assert_eq!(g.party, Some(equipment));
        assert_eq!(g.combat_clock, clock);
        assert_eq!(g.rng.unwrap().state, 12345);
        assert_eq!(g.events.flags, before.flags);
        assert_eq!(g.location(), (1, 2, 1));
        g.world_input(&Input::Click(142, 95)).unwrap();
        assert!(!g.inventory_active());
        let after = g.debug_snapshot(2);
        assert_eq!(after.event_cursor, before.event_cursor);
        assert_eq!(after.movement, before.movement);
        assert_eq!(after.resources, before.resources);
        assert_eq!(after.pool, before.pool);
        assert_eq!(after.inventory, None);
    }
    #[test]
    fn exploration_presentation_matches_dos_crop_compass_panel_and_preserves_modal_regions() {
        let root = root();
        let folder = root.join("analysis/phase-five/combat-runtime-20261020/capture");
        let ds = std::fs::read(folder.join("VICTORY-WORLD-POLL-DS.BIN")).unwrap();
        let expected = std::fs::read(folder.join("VICTORY-WORLD-VGA.BIN")).unwrap();
        let bytes = std::fs::read(root.join("lale/FRPOS.CKD")).unwrap();
        let room = StartingRoom::load_view(
            &root,
            "PC1",
            lale_assets::scene_layers::ViewState {
                x: 2,
                y: 0,
                facing: 0,
            },
        )
        .unwrap();
        let mut g = place(&root, &bytes, 1, 2, 0, 0);
        let raw = std::array::from_fn(|p| {
            ds[0x9a02 + 92 * p..0x9a02 + 92 * (p + 1)]
                .try_into()
                .unwrap()
        });
        let party = lale_core::combat_party::decode_numeric(&raw);
        g.set_party(raw);
        g.set_party_text(Some(std::array::from_fn(|p| {
            ds[0x9cba + 148 * p..0x9cba + 148 * p + 74]
                .try_into()
                .unwrap()
        })));
        g.combat_clock = std::array::from_fn(|i| {
            i16::from_le_bytes(ds[0x3d64 + 2 * i..0x3d66 + 2 * i].try_into().unwrap())
        });
        let ui = lale_assets::world_panel::WorldPanel::load(
            &root,
            std::array::from_fn(|p| party[p][33] as usize),
        )
        .unwrap();
        let before = g.debug_snapshot(0);
        let (_, frame) = g.exploration_frame(&ui, &room, 0).unwrap().unwrap();
        if let Some(folder) = std::env::var_os("LALE_TEST_WORLD_FRAME") {
            let folder = std::path::PathBuf::from(folder);
            std::fs::write(folder.join("native-idle-indexed.bin"), &frame).unwrap();
            std::fs::write(folder.join("native-palette6.bin"), g.debug_palette()).unwrap();
        }
        assert_eq!(g.debug_snapshot(0), before);
        let errors: Vec<_> = (4..196)
            .flat_map(|y| (5..191).map(move |x| (x, y)))
            .filter(|&(x, y)| !(x <= 13 && y <= 9) && frame[y * 320 + x] != expected[y * 320 + x])
            .collect();
        assert!(
            errors.is_empty(),
            "viewport/compass mismatch {} {:?}",
            errors.len(),
            &errors[..errors.len().min(15)]
        );
        // Warning/choice bottom blackclear remains a full-screen layer, even
        // where its zero indices equal the old black side margins.
        g.original = Some(room.clone());
        g.pixels = room.indices.clone();
        g.colors = room.colors.clone();
        g.lines = 1;
        g.pending = Some(23);
        g.arrival = true;
        g.pixels[148 * 320..].fill(0);
        let (_, frame) = g.exploration_frame(&ui, &room, 0).unwrap().unwrap();
        assert!(frame[148 * 320..].iter().all(|&b| b == 0));
        assert_eq!(g.party, Some(raw));
        assert_eq!(
            g.rng,
            before.rng.map(|state| lale_core::rng::LaleRng { state })
        );
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
                    let mut expected_records = [[0x5a; 92]; 4];
                    for record in &mut expected_records {
                        for q in 23..28 {
                            record[q * 2..q * 2 + 2]
                                .copy_from_slice(&(0x5a5ai16 - 100).to_le_bytes());
                        }
                        record[90..92].copy_from_slice(&30i16.to_le_bytes());
                    }
                    assert_eq!(gate.party, Some(expected_records));
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
        // The original door192d now executes its pitch draw even when host
        // audio is muted. Subsequent polling/redrawing must not consume it again.
        let mut expected = rng.unwrap();
        let draw = expected.next_dos();
        assert_eq!(gate.rng, Some(expected));
        let events = gate.take_audio_events();
        assert_eq!(events.len(), 1);
        let def = crate::native_audio::SoundDef::read(&gate.exe, events[0].0).unwrap();
        assert_eq!(events[0].1, def.pitched(Some(draw)));
        assert!(gate.take_audio_events().is_empty());
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
        let portrait_blend = fonts
            .member("XD.RIX")
            .ok_or("missing portrait blend table")?
            .payload
            .to_vec();
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
        let combat_clock = std::array::from_fn(|i| {
            let at = 0x19200 + 0x3d64 + 2 * i;
            i16::from_le_bytes([exe[at], exe[at + 1]])
        });
        Ok(Self {
            root: root.to_owned(),
            archive: bytes,
            area: 1,
            facing: 0,
            navigation_pending: None,
            exe,
            acquisition_background,
            acquisition_icons,
            portrait_blend,
            pool: Default::default(),
            owned_resources: [10; 3],
            acquisition: None,
            audio_events: Vec::new(),
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
            step_origin: None,
            arrival: false,
            arrival_reentry: false,
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
            combat_traits: None,
            party_text: None,
            combat_progress: None,
            combat_storage: None,
            combat_clock,
            inventory: None,
            rest: None,
            rest_notice: None,
            metabolism: Default::default(),
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
            inventory: self.inventory.as_ref().map(|i| i.state()),
            world_clock: self.combat_clock,
            hunger_warned: self.metabolism.warned,
            rest: self.rest.as_ref().map(|r| {
                r.simulation
                    .as_ref()
                    .map(|c| [c.duration, c.completed, c.interrupt_at])
                    .unwrap_or([0; 3])
            }),
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
    fn presentation_palette(&self) -> &Palette6 {
        self.rest
            .as_ref()
            .and_then(|r| r.artwork.as_ref())
            .map(|a| &a.palette)
            .unwrap_or(&self.palette)
    }
    pub fn debug_palette(&self) -> Vec<u8> {
        self.presentation_palette()
            .triplets
            .iter()
            .flatten()
            .copied()
            .collect()
    }
    pub fn indices(&self) -> &[u8] {
        &self.pixels
    }
    /// Final presentation keeps the established200x200 simulation/event canvas
    /// independent of the original exploration frame. No game state or RNG writes.
    pub fn exploration_frame(
        &self,
        ui: &lale_assets::world_panel::WorldPanel,
        room: &StartingRoom,
        facing: u8,
    ) -> Result<Option<(Vec<u32>, Vec<u8>)>, Box<dyn Error>> {
        let (Some(raw), Some(names)) = (self.party.as_ref(), self.party_text.as_ref()) else {
            return Ok(None);
        };
        let party = lale_core::combat_party::decode_numeric(raw);
        if let Some(inventory) = &self.inventory {
            let actors = std::array::from_fn(|p| {
                self.combat_storage
                    .as_ref()
                    .map(|s| s.actors[p + 25])
                    .unwrap_or([0; 20])
            });
            let indices = inventory.assets.render(
                &party,
                names,
                inventory.person,
                inventory.selected,
                inventory.destination,
                inventory.hover,
                &inventory.message,
                &actors,
            )?;
            let colors = indices
                .iter()
                .map(|&i| {
                    let [r, g, b] = self.palette.preview_rgb(i).unwrap();
                    0xff000000 | u32::from(r) << 16 | u32::from(g) << 8 | u32::from(b)
                })
                .collect();
            return Ok(Some((colors, indices)));
        }
        let active = self.active();
        let source = if active { &self.pixels } else { &room.indices };
        let mut view: Vec<_> = (0..200)
            .flat_map(|y| source[y * 320 + 60..y * 320 + 260].iter().copied())
            .collect();
        let artwork = self.rest.as_ref().and_then(|r| r.artwork.as_ref());
        if let Some(artwork) = artwork {
            lale_assets::world_illustration::compose_200(&mut view, &artwork.image)?;
        }
        let mut indices = ui.background.indices.clone();
        ui.draw_view(&mut indices, &view, facing)?;
        ui.draw_party(&mut indices, &party, names)?;
        ui.draw_clock(&mut indices, self.combat_clock, 255)?;
        // These hosts operate in original full-screen coordinates, after the
        // scene/party redraw. Copy complete regions, including unchanged black.
        if active && (self.dialogue.is_some() || self.choice.is_some() || self.lines > 0) {
            indices[148 * 320..].copy_from_slice(&self.pixels[148 * 320..]);
        }
        if self.dialogue.is_some() {
            for y in 110..142 {
                indices[y * 320 + 8..y * 320 + 40]
                    .copy_from_slice(&self.pixels[y * 320 + 8..y * 320 + 40]);
            }
        }
        if self.acquisition.is_some() {
            indices[..19840].copy_from_slice(&self.pixels[..19840]);
        }
        let message = self
            .rest
            .as_ref()
            .map(|r| r.text.as_slice())
            .or_else(|| self.rest_notice.as_ref().map(|(text, _)| text.as_slice()));
        if let Some(message) = message {
            indices[148 * 320..].fill(0);
            for run in world_ui::warning(message, 148, 0, 255, None).runs {
                self.debug_font().draw(&mut indices, &run)?;
            }
        }
        if let Some(rest) = &self.rest {
            if let Some(camp) = &rest.simulation {
                let width = (i32::from(camp.completed) * 319 / i32::from(camp.duration)) as usize;
                // Original bar0,198,width,2; default live DOS color966b=160.
                for y in 198..200 {
                    indices[y * 320..y * 320 + width].fill(160);
                }
            }
        }
        let mut colors = Vec::with_capacity(64000);
        for &i in &indices {
            let [r, g, b] = self.presentation_palette().preview_rgb(i)?;
            colors.push(0xff000000 | u32::from(r) << 16 | u32::from(g) << 8 | u32::from(b));
        }
        Ok(Some((colors, indices)))
    }
    /// Fresh creation owns the original962c..ea7c zero-initialized workspace.
    /// Keep its live traits (9b72 stride36); growth reads a two-byte-shifted view.
    pub fn set_party_text(&mut self, text: Option<[[u8; 74]; 4]>) {
        self.party_text = text;
    }
    pub fn set_combat_traits(&mut self, traits: [[u16; 16]; 4]) {
        self.combat_traits = Some(traits);
    }
    fn rest_text(&self, offset: usize) -> Vec<u8> {
        let bytes = &self.exe[0x19200 + offset..];
        world_ui::normalize(&bytes[..bytes.iter().position(|&b| b == 0).unwrap()])
    }
    fn start_rest(&mut self) -> Result<(), Box<dyn Error>> {
        use lale_core::rest::{duration, Camp, CampError};
        let party =
            lale_core::combat_party::decode_numeric(&self.party.ok_or("camp without party")?);
        let cell = self
            .map
            .cell(self.movement.x as usize, self.movement.y as usize)
            .ok_or("camp outside map")?;
        // Original3bf3 derives bit8 from current cell byte10. Bit4/area flag
        // protection is not needed for the rate0, <=120-minute playable subset.
        let flags = if cell[10] == 0 { 0 } else { 8 };
        let duration = duration(&party, party.map(|n| n[29] < -5), flags);
        let mut rest = super::world_rest::Rest::message(match duration {
            Err(CampError::Forbidden) => self.rest_text(0x4345),
            Err(CampError::NotTired) => self.rest_text(0x4367),
            _ => b"Native: this camp needs encounter or nonliving support; unavailable.".to_vec(),
        });
        if let Ok(minutes) = duration {
            if self.map.metadata[2] == 0 && minutes <= 120 && party.iter().all(|n| n[29] > -6) {
                let mut artwork =
                    lale_assets::world_illustration::Illustration::load(&self.root, 79)?;
                let mut palette = Palette6 {
                    triplets: self.palette.triplets.clone(),
                };
                lale_assets::world_illustration::apply_palette(&mut palette, &artwork.palette)?;
                artwork.palette = palette;
                rest.artwork = Some(artwork);
                self.refresh_carried_weight()?;
                rest.simulation = Some(Camp::begin(
                    minutes,
                    0,
                    false,
                    false,
                    self.rng.as_mut().ok_or("camp without RNG")?,
                ));
                rest.text = self.rest_text(0x437c);
                // Original1689:0039(79,1) presents artwork; no event flag write.
            }
        }
        self.rest = Some(rest);
        Ok(())
    }
    fn refresh_carried_weight(&mut self) -> Result<(), Box<dyn Error>> {
        let Some(raw) = self.party else {
            return Ok(());
        };
        let mut party = lale_core::combat_party::decode_numeric(&raw);
        let tables = lale_assets::combat_party_tables::CombatPartyTables::read(&self.exe)?;
        for n in &mut party {
            n[45] = lale_core::combat_party::carried_weight(n, &tables.borrowed())
                .map_err(|e| format!("world carried weight:{e:?}"))?;
        }
        self.party = Some(party.map(|n| std::array::from_fn(|b| n[b / 2].to_le_bytes()[b % 2])));
        Ok(())
    }
    fn tick_state(&self) -> Result<lale_core::world_tick::WorldTickState, Box<dyn Error>> {
        let party =
            lale_core::combat_party::decode_numeric(&self.party.ok_or("tick without party")?);
        Ok(lale_core::world_tick::WorldTickState {
            clock: self.combat_clock,
            numeric_timers: std::array::from_fn(|p| party[p][23..28].try_into().unwrap()),
            actor_timers: std::array::from_fn(|p| {
                self.combat_storage
                    .as_ref()
                    .map(|s| s.actors[p + 25][11..16].try_into().unwrap())
                    .unwrap_or([0; 5])
            }),
        })
    }
    fn commit_tick(
        &mut self,
        mut party: [lale_core::combat_party::Numeric; 4],
        tick: lale_core::world_tick::WorldTickState,
    ) {
        self.combat_clock = tick.clock;
        for p in 0..4 {
            party[p][23..28].copy_from_slice(&tick.numeric_timers[p]);
            if let Some(storage) = &mut self.combat_storage {
                storage.actors[p + 25][11..16].copy_from_slice(&tick.actor_timers[p]);
            }
        }
        self.party = Some(party.map(|n| std::array::from_fn(|b| n[b / 2].to_le_bytes()[b % 2])));
    }
    fn poll_rest(&mut self, _now: u16) -> Result<(), Box<dyn Error>> {
        let Some(start) = self.rest.as_ref().and_then(|r| r.visible_since) else {
            return Ok(());
        };
        self.poll_rest_elapsed(start.elapsed())
    }
    /// Explicit elapsed-time seam for deterministic pacing/state differential tests.
    fn poll_rest_elapsed(&mut self, elapsed: std::time::Duration) -> Result<(), Box<dyn Error>> {
        let rest = self.rest.as_ref().unwrap();
        let due = rest.due_steps(elapsed);
        let mut remaining = rest
            .simulation
            .as_ref()
            .map(|c| (due - c.completed).max(0))
            .unwrap_or(0);
        if rest.cancel && rest.simulation.is_some() {
            remaining = 1;
        }
        while remaining > 0 {
            let mut tick = self.tick_state()?;
            let mut party = lale_core::combat_party::decode_numeric(&self.party.unwrap());
            let rest = self.rest.as_mut().unwrap();
            let step = rest.simulation.as_mut().unwrap().step(
                &mut party,
                &mut tick,
                rest.cancel,
                false,
                false,
                self.rng.as_mut().ok_or("camp lost RNG")?,
            );
            self.commit_tick(party, tick);
            use lale_core::rest::CampStep;
            match step {
                CampStep::Resting => {}
                CampStep::Complete | CampStep::Cancelled => {
                    let text = self.rest_text(if step == CampStep::Complete {
                        0x43a0
                    } else {
                        0x43bf
                    });
                    self.rest = None;
                    self.rest_notice = Some((text, std::time::Instant::now()));
                    return Ok(());
                }
                CampStep::Encounter => {
                    return Err("camp crossed unsupported encounter boundary".into())
                }
            }
            remaining -= 1;
        }
        if self
            .rest
            .as_ref()
            .is_some_and(|r| r.simulation.is_none() && elapsed >= r.presentation_duration)
        {
            self.rest = None;
        }
        Ok(())
    }
    fn world_step(&mut self) -> Result<(), Box<dyn Error>> {
        if self.party.is_none() {
            return Ok(());
        }
        self.refresh_carried_weight()?;
        let mut tick = self.tick_state()?;
        tick.advance(1);
        let mut party = lale_core::combat_party::decode_numeric(&self.party.unwrap());
        let effects =
            std::array::from_fn(|p| tick.actor_timers[p].iter().any(|&v| (v as u16) % 100 == 20));
        let events = self.metabolism.world_step(&mut party, tick.clock, effects);
        self.commit_tick(party, tick);
        // Preserve verified numeric effects, explicitly bound the still-unported
        // voiced starvation/death presentation instead of silently skipping it.
        if !events.is_empty() {
            self.navigation_pending =
                Some(format!("Original hunger presentation pending: {events:?}"));
        }
        Ok(())
    }
    pub fn modal_active(&self) -> bool {
        self.inventory.is_some() || self.rest.is_some()
    }
    pub fn rest_active(&self) -> bool {
        self.rest.is_some()
    }
    pub fn inventory_active(&self) -> bool {
        self.inventory.is_some()
    }
    /// Original idle F1–F4/portrait access. During native door presentation the
    /// same modal may suspend the host; this additional access timing is native.
    pub fn world_input(
        &mut self,
        event: &crate::sdl_window::Input,
    ) -> Result<bool, Box<dyn Error>> {
        use crate::sdl_window::Input;
        if !matches!(event, Input::Motion(_, _)) {
            self.rest_notice = None;
        }
        let (Some(raw), Some(_)) = (self.party, self.party_text) else {
            return Ok(false);
        };
        let mut party = lale_core::combat_party::decode_numeric(&raw);
        if let Some(rest) = &mut self.rest {
            if matches!(event, Input::Key(27) | Input::RightClick(_, _)) {
                if rest.simulation.is_some() {
                    rest.cancel = true;
                } else {
                    self.rest = None;
                }
            }
            return Ok(true);
        }
        if !self.active()
            && self.pending.is_none()
            && self.navigation_pending.is_none()
            && matches!(event, Input::Key(107))
        {
            self.start_rest()?;
            return Ok(true);
        }
        if let Some(inventory) = &mut self.inventory {
            let closed = inventory.input(event, &mut party);
            self.party =
                Some(party.map(|n| std::array::from_fn(|b| n[b / 2].to_le_bytes()[b % 2])));
            if closed {
                self.inventory = None;
            }
            return Ok(true);
        }
        if self.active() && self.door.is_none() {
            return Ok(false);
        }
        let person = match *event {
            Input::Key(k @ 1073741882..=1073741885) => Some((k - 1073741882) as usize),
            Input::Click(x, y)
                if !self.active() && (197..=229).contains(&x) && (2..148).contains(&y) =>
            {
                Some(((y - 2) / 38) as usize)
            }
            _ => None,
        };
        if let Some(person) = person.filter(|&p| p < 4) {
            self.inventory = Some(super::world_inventory::Inventory::load(
                &self.root, &party, person,
            )?);
            return Ok(true);
        }
        Ok(false)
    }
    pub fn prepare_battle(
        &mut self,
    ) -> Result<Option<crate::combat_play::LiveBattle>, Box<dyn Error>> {
        if self.pending != Some(8)
            || self.modal_active()
            || self.navigation_pending.is_some()
            || self.combat_traits.is_none()
        {
            return Ok(None);
        }
        let (_, opcode, args) = self
            .machine
            .as_ref()
            .and_then(|m| m.pending_external())
            .ok_or("battle without event caller")?;
        if opcode != 8 {
            return Err("battle caller opcode mismatch".into());
        }
        let request = lale_assets::combat_prepare::EncounterRequest::parse(args)?;
        let numeric = lale_core::combat_party::decode_numeric(
            &self.party.ok_or("battle without live party")?,
        );
        let rng = self.rng.ok_or("battle without shared RNG")?;
        let traits = self.combat_traits.unwrap();
        let mut party =
            self.combat_progress
                .clone()
                .unwrap_or_else(|| lale_core::combat::PartyProgress {
                    numeric,
                    // Original startup24a9..24b9 zeros962c..ea7c. These trackers have
                    // not been awarded any combat progress during creation/world entry.
                    trackers: [[0; 17]; 4],
                    modifiers: std::array::from_fn(|p| {
                        std::array::from_fn(|k| {
                            if k < 15 {
                                traits[p][k + 1] as i16
                            } else if k == 17 && p < 3 {
                                traits[p + 1][0] as i16
                            } else {
                                0
                            }
                        })
                    }),
                });
        party.numeric = numeric; // acquisition/inventory writes remain authoritative
        let mut state = self
            .combat_storage
            .clone()
            .unwrap_or_else(|| lale_core::combat::CombatState::new(rng));
        state.rng = rng;
        let context = lale_assets::combat_initialization::EntryContext {
            position: [self.movement.x, self.movement.y],
            facing: self.facing,
            difficulty: 0,
            hand: 1,
            // Original new-game7fc5..7fda enables music/speech. This profile
            // preserves enabled-driver chronology even while native PCM is silent.
            music: lale_core::combat_entry::MusicGates {
                audio_enabled: true,
                combat_music: true,
            },
            preceding_terrain: state.occupancy[755..784].try_into().unwrap(),
        };
        // Owned world assets remain alive for return; combat allocates independent
        // indexed buffers, the native equivalent of source release/reload lifetime.
        let (prepared, music) = crate::combat_session::PreparedBattle::from_live_party(
            &self.root, &self.map, request, &context, party, state,
        )?;
        let mut battle =
            crate::combat_play::LiveBattle::new(&self.root, prepared, self.combat_clock)?;
        battle.party_text = self.party_text;
        battle.music = music;
        Ok(Some(battle))
    }
    pub fn battle_return(
        &mut self,
        battle: crate::combat_play::LiveBattle,
    ) -> Result<(), Box<dyn Error>> {
        let result = battle
            .result
            .ok_or("battle returned without original result")?;
        self.party = Some(battle.numeric());
        self.rng = Some(battle.session.prepared.state.rng);
        self.combat_clock = battle.clock;
        self.combat_progress = Some(battle.session.prepared.party.clone());
        let mut stored = battle.session.prepared.state.clone();
        // Original main cleanup before8111: coordinates, target, side, cached
        // hit and disabled counter are cleared; HP/resources/timers survive.
        for actor in &mut stored.actors[1..] {
            for k in [4, 5, 6, 7, 9, 17] {
                actor[k] = 0;
            }
        }
        self.combat_storage = Some(stored);
        if result == lale_core::combat::BattleResult::Defeat {
            //8111 is verified;1682:002f prompt/load completion is not. Do not
            //acknowledge opcode8 or invent a surviving-party world return.
            self.navigation_pending = Some(
                "Defeat: original loss prompt/load remains unverified; state retained, Esc returns"
                    .into(),
            );
            return Ok(());
        }
        self.pending = None;
        self.restore();
        self.machine
            .as_mut()
            .ok_or("victory without event")?
            .acknowledge_external(&mut self.events)
            .map_err(|e| format!("combat caller return:{e:?}"))?;
        //The original PCS continuation, not this host, sets dogflag1. No key/reward.
        self.drive()
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
        if self.rest_notice.as_ref().is_some_and(|(_, since)| {
            since.elapsed()
                >= std::time::Duration::from_millis(
                    super::world_rest::CAMP_PRESENTATION_DURATION_MS,
                )
        }) {
            self.rest_notice = None;
        }
        if self.rest.is_some() {
            self.poll_rest(now)?;
            return Ok(());
        }
        if self.inventory.is_some() {
            return Ok(());
        }
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
        if let Some(rest) = &mut self.rest {
            rest.presented();
        }
        if self.modal_active() {
            return Ok(());
        }
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
        self.step_origin = Some(self.location());
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
        self.arrival_reentry |= self.arrival;
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
        // Original opcode17 dispatcher44b31..44b55 owns the random0
        // selector;2948 then retries dead speakers. Selection precedes portraits.
        let mut speaker = if arguments[0] == 0 {
            rng.scaled(4) as u8 + 1
        } else if arguments[0] == 5 {
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
                blend: &self.portrait_blend,
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
    pub fn take_audio_events(&mut self) -> Vec<(usize, u32)> {
        std::mem::take(&mut self.audio_events)
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
        // Original1662:798c, file300b0..300f7: the live area's
        // selector is the sound ID minus13;192d owns the optional pitch draw.
        let pair = self
            .map
            .directional_pair(
                self.movement.x as usize,
                self.movement.y as usize,
                self.facing,
            )
            .ok_or("missing door sound selector")?;
        let id = usize::from(
            self.map
                .graphics_value_for_pair(pair)
                .ok_or("missing door graphics value")?,
        ) + 13;
        let def = crate::native_audio::SoundDef::read(&self.exe, id)?;
        let draw = if def.flags & 0x10 != 0 {
            self.rng.as_mut().map(|r| r.next_dos())
        } else {
            None
        };
        self.audio_events.push((id, def.pitched(draw)));
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
                            if std::mem::take(&mut self.arrival_reentry) {
                                // Opcode11 inside mode2 returns success:3ac4b
                                // re-enters the destination without a second tick.
                                self.refresh_room()?;
                                self.destination_event()?;
                                if self.arrival {
                                    continue;
                                }
                            }
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
                        // Original3a4af compares live x/y after input, regardless
                        // of AL. Stairs return0; opcode11 vetoes the old step.
                        // Both still run time/metabolism and destination mode2.
                        let changed = self
                            .step_origin
                            .take()
                            .is_some_and(|(_, x, y)| (x, y) != (self.movement.x, self.movement.y));
                        if changed {
                            self.world_step()?;
                            self.refresh_room()?;
                            self.destination_event()?;
                            if self.machine.is_none() {
                                return Ok(());
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
                    MovementRequest::SpecialForward {
                        original_cell_offset,
                    } => {
                        //32067 rereads the saved cell's paired state AFTER both
                        //event gates. PC1 has no state3 movement branches.
                        let index = usize::from(original_cell_offset) / 15;
                        let pair = self
                            .map
                            .directional_pair(
                                index % usize::from(self.map.width()),
                                index / usize::from(self.map.width()),
                                self.facing,
                            )
                            .ok_or("invalid graphics9 source cell")?;
                        let guard = lale_core::special_transition::guard_for_paired_state(
                            pair.movement_state,
                        )
                        .ok_or("unsupported original graphics9 paired state")?;
                        // Host the original animation-OFF paths:73d8 with6d74=0
                        // commits immediately;6f18 with3b08=0 redraws. Do not
                        // substitute invented zoom frames for unresolved FPU math.
                        let mut control =
                            lale_core::special_transition::TransitionControl::new(guard)?;
                        let (dx, dy) = self.forward();
                        control.commit_first(&mut self.movement, dx, dy)?;
                        control.finish_first()?;
                        self.refresh_room()?;
                        control.finish_second()?;
                        let id = usize::from(guard) + 20;
                        let def = crate::native_audio::SoundDef::read(&self.exe, id)?;
                        let draw = if def.flags & 0x10 != 0 {
                            self.rng.as_mut().map(|r| r.next_dos())
                        } else {
                            None
                        };
                        self.audio_events.push((id, def.pitched(draw)));
                        self.call
                            .as_mut()
                            .unwrap()
                            .special_returned(&mut self.movement)?;
                    }
                }
            }
        }
    }

    fn destination_event(&mut self) -> Result<(), Box<dyn Error>> {
        let request = lale_core::movement::CellEvent {
            cell_offset: self.movement.cell_offset(0, 0),
            mode: 2,
        };
        match dispatch(&self.map, &self.scripts, request)
            .map_err(|e| format!("destination:{e:?}"))?
        {
            CellDispatch::NoEvent => {}
            CellDispatch::Script { machine, .. } => {
                self.machine = Some(machine);
                self.arrival = true;
            }
            CellDispatch::Dedicated { handler, .. } => {
                self.navigation_pending = Some(format!(
                    "Original destination service incomplete: {handler}"
                ));
                self.arrival = true;
            }
        }
        Ok(())
    }
}

/// Explicit SDL integration check. Generated live party, original event route,
/// test-directed keys only; no DOS snapshots, flags, HP or outcomes are injected.
pub(super) fn runtime_live_check(
    root: &Path,
    window: &mut crate::sdl_window::Window,
    numeric: [[u8; 92]; 4],
    traits: [[u16; 16]; 4],
    rng: u32,
) -> Result<(), Box<dyn Error>> {
    use crate::{combat_play::LiveBattle, sdl_window::Input};
    let bytes = std::fs::read(root.join("lale/FRPOS.CKD"))?;
    let mut gate = Gate::new(root, &bytes)?;
    gate.set_party(numeric);
    gate.set_rng(rng);
    gate.set_combat_traits(traits);
    let mut text = [[0u8; 74]; 4];
    for (p, t) in text.iter_mut().enumerate() {
        let name = format!("tester{}", p + 1);
        t[..name.len()].copy_from_slice(name.as_bytes());
    }
    gate.set_party_text(Some(text));
    let party = lale_core::combat_party::decode_numeric(&numeric);
    let world_panel = lale_assets::world_panel::WorldPanel::load(
        root,
        std::array::from_fn(|p| party[p][33] as usize),
    )?;
    let room = StartingRoom::load(root)?;
    gate.arrive(&room)?;
    let present =
        |gate: &Gate<'_>, window: &mut crate::sdl_window::Window| -> Result<(), Box<dyn Error>> {
            let base = gate.base_room().unwrap_or(&room);
            if let Some((colors, _)) = gate.exploration_frame(&world_panel, base, gate.facing())? {
                window.present(&colors)?;
            } else {
                window.present(gate.colors())?;
            }
            Ok(())
        };
    let mut now = 0u16;
    let key = |gate: &mut Gate<'_>,
               window: &mut crate::sdl_window::Window,
               key: i32|
     -> Result<(), Box<dyn Error>> {
        window.diagnostic_key(key)?;
        for input in window.poll() {
            if let Input::Key(k) = input {
                if !gate.world_input(&Input::Key(k))? {
                    gate.key(k)?;
                }
            }
        }
        Ok(())
    };
    for _ in 0..200 {
        gate.poll(now)?;
        present(&gate, window)?;
        gate.presented(now)?;
        if !gate.active() {
            break;
        }
        key(&mut gate, window, 32)?;
        now = now.wrapping_add(150);
    }
    if gate.active() || !gate.events.flag(249) {
        return Err("fresh live opening dialogue did not finish".into());
    }
    let north = StartingRoom::load_facing(root, 0)?;
    gate.begin_step(&north, 0, false)?;
    key(&mut gate, window, i32::from(b'e'))?;
    for _ in 0..100 {
        gate.poll(now)?;
        present(&gate, window)?;
        gate.presented(now)?;
        if gate.acquisition_active() {
            break;
        }
        key(&mut gate, window, 32)?;
        now = now.wrapping_add(150);
    }
    if !gate.acquisition_active() {
        return Err("live party did not reach acquisition".into());
    }
    gate.click(8, 28)?;
    gate.click(8, 45)?;
    key(&mut gate, window, 27)?;
    let world_inventory_check = std::env::var_os("LALE_WORLD_INVENTORY_CHECK").is_some();
    if world_inventory_check {
        let before = gate.debug_snapshot(0);
        let clock = gate.combat_clock;
        key(&mut gate, window, 1073741882)?;
        if !gate.inventory_active() {
            return Err("world inventory did not suspend the door host".into());
        }
        present(&gate, window)?;
        // Pure selection/inspection before a real owned-item transfer.
        for k in [1073741883, 1073741884, 1073741885, 1073741882] {
            key(&mut gate, window, k)?;
        }
        if gate.party != before.party || gate.rng.map(|r| r.state) != before.rng {
            return Err("world inspection changed party/RNG".into());
        }
        key(&mut gate, window, 105)?;
        key(&mut gate, window, 1073741883)?;
        key(&mut gate, window, 1073741883)?;
        key(&mut gate, window, 105)?;
        key(&mut gate, window, 1073741882)?;
        key(&mut gate, window, 1073741882)?;
        // Equip/release/equip in world UI, never in the battle test shortcut.
        for k in [105, 13, 13, 113, 105, 13, 13] {
            key(&mut gate, window, k)?;
        }
        present(&gate, window)?;
        let n = lale_core::combat_party::decode_numeric(&gate.party.unwrap());
        if n[0][30] != 35
            || n[0][35] != 2
            || gate.combat_clock != clock
            || gate.rng.map(|r| r.state) != before.rng
            || gate.events.flags != before.flags
        {
            return Err("world equipment/transfer contract failed".into());
        }
        let mut expected = before.party.unwrap();
        expected[0][60..62].copy_from_slice(&[35, 0]);
        if gate.party != Some(expected) {
            return Err("world inventory changed unrelated numeric bytes".into());
        }
        let mut same = gate.debug_snapshot(0);
        same.party = before.party;
        same.inventory = None;
        if same != before {
            return Err("world inventory changed suspended event/position/resources".into());
        }
        if let Some(folder) = std::env::var_os("LALE_TEST_WORLD_INVENTORY_FRAME") {
            let folder = std::path::PathBuf::from(folder);
            gate.world_input(&Input::Motion(8, 8))?;
            let base = gate.base_room().ok_or("world modal lost scene")?;
            let (_, indices) = gate
                .exploration_frame(&world_panel, base, gate.facing())?
                .ok_or("world modal lost frame")?;
            std::fs::write(folder.join("native-world-equipped-indexed.bin"), indices)?;
            std::fs::write(
                folder.join("native-world-equipped-palette6.bin"),
                gate.debug_palette(),
            )?;
        }
        key(&mut gate, window, 27)?;
        if gate.inventory_active() {
            return Err("world inventory did not close".into());
        }
        println!("SDL world inventory: F1-F4 inspection, two-way transfer, I/Enter/Enter -> Q -> I/Enter/Enter; ref35/item2 before combat, unchanged suspended event/clock/RNG");
    }
    for _ in 0..300 {
        now = now.wrapping_add(20);
        gate.poll(now)?;
        present(&gate, window)?;
        gate.presented(now)?;
        if gate.pending == Some(8) {
            break;
        }
    }
    if gate.pending != Some(8)
        || gate.events.flag(1)
        || gate.events.flag(2)
        || gate.party.unwrap()[0][70..72] != [2, 0]
    {
        return Err("normal acquisition/door/encounter contract failed".into());
    }
    let live_numeric = gate.party.unwrap();
    let mut battle: LiveBattle = gate
        .prepare_battle()?
        .ok_or("live encounter not prepared")?;
    if world_inventory_check
        && (battle.numeric()[0][60..62] != [35, 0]
            || battle.session.prepared.state.classes[1][6] != 2)
    {
        return Err("world equipment lost at combat entry".into());
    }
    if battle.session.prepared.party.numeric
        != lale_core::combat_party::decode_numeric(&live_numeric)
    {
        //64f5 also refreshes carried numeric45; all inventory/equipment must survive.
        for i in 0..4 {
            for k in 0..90 {
                if battle.numeric()[i][k] != live_numeric[i][k] {
                    return Err("live initializer changed non-derived party bytes".into());
                }
            }
        }
    }
    let audio_check = std::env::var_os("LALE_AUDIO_COMBAT_CHECK")
        .map(|_| crate::native_audio::Audio::diagnostic());
    if let Some(a) = &audio_check {
        battle.attach_audio(a.clone())?;
    }
    let mut tick = 0u32;
    let keys = [
        1073741906, 1073741899, 1073741903, 1073741902, 1073741905, 1073741901, 1073741904,
        1073741898,
    ];
    let mut trace = Vec::new();
    let mut current = 0;
    let mut inputs_this_turn = 0;
    let mut attacks = 0;
    let mut moves = 0;
    let mut voice_escapes = 0;
    let mut entry_export = None;
    let equipment_check = std::env::var_os("LALE_EQUIPMENT_COMBAT_CHECK").is_some();
    let mut equipment_checked = false;
    for frame in 0..8000 {
        if equipment_check
            && !equipment_checked
            && battle.input_ready()
            && battle.session.prepared.state.current == 25
        {
            let before = battle.session.prepared.state.clone();
            for keys in [&[105, 13, 13][..], &[113][..], &[105, 13, 13][..]] {
                for &k in keys {
                    window.diagnostic_key(k)?;
                    for input in window.poll() {
                        if let Input::Key(k) = input {
                            battle.key(k)?;
                            if k == 105 {
                                println!("SDL inventory modal: {}", battle.export(root)?.display());
                            }
                        }
                    }
                }
                let n = battle.session.prepared.party.numeric[0];
                if n[35] != 2 || n[30] != if keys == [113] { 0 } else { 35 } {
                    return Err("combat inventory reference/ownership regression".into());
                }
            }
            let after = &battle.session.prepared.state;
            if before.actors != after.actors
                || before.rng != after.rng
                || before.remaining != after.remaining
                || before.cursor != after.cursor
                || after.classes[1][6] != 2
            {
                return Err(
                    "equipment changed scheduler/actor caches/RNG or failed SHZ refresh".into(),
                );
            }
            println!("SDL equipment: I/Enter/Enter -> Q -> I/Enter/Enter; item2/ref35, SHZ2, unchanged actor caches/allowance/RNG; {}",battle.export(root)?.display());
            equipment_checked = true;
        }
        if battle.waiting_voice() && audio_check.is_none() {
            window.diagnostic_key(27)?;
            voice_escapes += 1;
        } else if battle.input_ready() {
            if entry_export.is_none() {
                entry_export = Some(battle.export(root)?);
            }
            let s = &battle.session.prepared.state;
            if current != s.current {
                current = s.current;
                inputs_this_turn = 0;
            }
            let chosen = if s.round < 2 || inputs_this_turn >= 5 {
                9
            } else {
                let actor = s.actors[s.current];
                let enemy = (1..=28)
                    .filter(|&i| s.actors[i][0] > 0 && s.actors[i][7] == 2)
                    .min_by_key(|&i| {
                        (s.actors[i][4] - actor[4])
                            .abs()
                            .max((s.actors[i][5] - actor[5]).abs())
                    })
                    .ok_or("input without opponent")?;
                let mut candidates = Vec::new();
                for direction in 1..=8 {
                    let mut copy = s.clone();
                    if let Ok(request) = copy.plan_step(direction) {
                        match request {
                            lale_core::combat::MovementRequest::Attack(_) => {
                                candidates.push((-1, direction))
                            }
                            lale_core::combat::MovementRequest::Step { x, y, .. } => candidates
                                .push((
                                    (s.actors[enemy][4] - x)
                                        .abs()
                                        .max((s.actors[enemy][5] - y).abs()),
                                    direction,
                                )),
                            _ => {}
                        }
                    }
                }
                candidates.sort();
                if let Some(&(_, direction)) = candidates.first() {
                    keys[direction as usize - 1]
                } else {
                    9
                }
            };
            window.diagnostic_key(chosen)?;
            inputs_this_turn += 1;
            trace.push(format!(
                "frame{frame} actor{} round{} key{chosen} hp{} allowance{} seed{:08x}",
                s.current, s.round, s.actors[s.current][0], s.remaining, s.rng.state
            ));
        }
        for input in window.poll() {
            if let Input::Key(k) = input {
                battle.key(k)?;
            }
        }
        let before = battle.session.prepared.state.clone();
        if let Some(a) = &audio_check {
            a.diagnostic_advance(960);
        }
        battle.poll(tick)?;
        tick += 20;
        if battle.stopped.is_some() {
            return Err(format!("live combat stopped: {:?}", battle.stopped).into());
        }
        if before
            .actors
            .iter()
            .zip(battle.session.prepared.state.actors.iter())
            .any(|(a, b)| a[0] != b[0])
        {
            attacks += 1;
        }
        if before
            .actors
            .iter()
            .zip(battle.session.prepared.state.actors.iter())
            .any(|(a, b)| a[4..6] != b[4..6])
        {
            moves += 1;
        }
        window.title(&battle.title())?;
        window.present(&battle.colors(&battle.frame()?)?)?;
        if battle.result.is_some() {
            break;
        }
    }
    if equipment_check && !equipment_checked {
        return Err("equipment path not exercised".into());
    }
    let result = battle
        .result
        .ok_or("live combat did not reach a legitimate result within test budget")?;
    if moves == 0
        || attacks == 0
        || battle.enemy_actions == 0
        || battle.enemy_attacks == 0
        || battle.session.prepared.state.round < 2
    {
        return Err("live loop did not exercise movement/attacks/enemy/multiple rounds".into());
    }
    if audio_check.is_some() && voice_escapes != 0 {
        return Err("audio combat used Escape".into());
    }
    let path = battle.export(root)?;
    if let Some(path) = entry_export {
        println!("Live battle initial input frame: {}", path.display());
    }
    std::fs::write(path.join("live-input-trace.txt"), trace.join("\n"))?;
    println!("Native SDL live route: live party -> opening dialogues -> acquired item2 -> door -> opcode8 -> {moves} movement changes, {attacks} HP changes, {} enemy actions, round{}, {voice_escapes} original voice-wait Esc inputs, {result:?}; {}",battle.enemy_actions,battle.session.prepared.state.round,path.display());
    println!("Enemy physical attacks executed: {}", battle.enemy_attacks);
    gate.battle_return(battle)?;
    if world_inventory_check
        && (gate.party.unwrap()[0][60..62] != [35, 0] || gate.party.unwrap()[0][70..72] != [2, 0])
    {
        return Err("world-equipped item lost on victory writeback".into());
    }
    if equipment_check
        && (gate.party.unwrap()[0][60..62] != [35, 0] || gate.party.unwrap()[0][70..72] != [2, 0])
    {
        return Err("equipped item lost on world return".into());
    }
    // Opcode8 returns to the real postbattle dialogue BEFORE the script's flag7.
    if result == lale_core::combat::BattleResult::Victory {
        if gate.events.flag(1) {
            return Err("dog flag set before postbattle dialogue".into());
        }
        for _ in 0..100 {
            gate.poll(now)?;
            present(&gate, window)?;
            gate.presented(now)?;
            if !gate.active() {
                break;
            }
            key(&mut gate, window, 32)?;
            now = now.wrapping_add(150);
        }
    }
    if result == lale_core::combat::BattleResult::Victory {
        if !gate.events.flag(1) || gate.events.flag(2) || gate.pending == Some(8) {
            return Err(format!("victory PCS pending={:?} flags={:?} cursor={:?} arrival={} call={:?} external={:?}",gate.pending,gate.events.flags,gate.machine.as_ref().map(|m|m.cursor()),gate.arrival,gate.call.as_ref().map(|c|c.request()),gate.machine.as_ref().and_then(|m|m.pending_external())).into());
        }
        println!("Original PCS victory continuation: dogflag1 set by script, keyflag2 clear, live numeric/RNG retained");
        let (_, postbattle_frame) = gate
            .exploration_frame(
                &world_panel,
                gate.base_room().unwrap_or(&room),
                gate.facing(),
            )?
            .ok_or("postbattle exploration lost its right-hand panel")?;
        // These original control-art rows are outside portraits/statistics and
        // must survive world return regardless of party consciousness.
        for y in 153..175 {
            if postbattle_frame[y * 320 + 198..y * 320 + 316]
                != world_panel.background.indices[y * 320 + 198..y * 320 + 316]
            {
                return Err("postbattle exploration control panel missing".into());
            }
        }
        if let Some(folder) = std::env::var_os("LALE_POSTBATTLE_FRAME") {
            let folder = std::path::PathBuf::from(folder);
            std::fs::write(folder.join("postbattle-indexed.bin"), &postbattle_frame)?;
            std::fs::write(folder.join("postbattle-palette6.bin"), gate.debug_palette())?;
        }
        println!(
            "Postbattle full exploration panel present; party HP {:?}",
            lale_core::combat_party::decode_numeric(&gate.party.unwrap()).map(|n| n[29])
        );
        let before = gate.debug_snapshot(gate.facing());
        present(&gate, window)?;
        if world_inventory_check {
            key(&mut gate, window, 1073741882)?;
            if !gate.inventory_active() {
                return Err("post-victory world information did not open".into());
            }
            present(&gate, window)?;
            key(&mut gate, window, 27)?;
            if gate.inventory_active() {
                return Err("post-victory world information did not close".into());
            }
            println!("SDL world inventory: post-victory information reopened and closed");
        }
        if gate.debug_snapshot(gate.facing()) != before {
            return Err("exploration presentation changed returned game state".into());
        }
        println!("Exploration frame: original crop/compass, live party panel and shared clock; returned state/RNG unchanged");
        if std::env::var_os("LALE_REST_CHECK").is_some() {
            let original = lale_core::combat_party::decode_numeric(&gate.party.unwrap());
            let minutes = lale_core::rest::duration(&original, original.map(|n| n[29] < -5), 0)
                .map_err(|e| format!("live victory camp duration:{e:?}"))?;
            let mut expected_rng = gate.rng.unwrap();
            expected_rng.scaled(7);
            let clock = gate.combat_clock;
            key(&mut gate, window, 107)?;
            if gate
                .rest
                .as_ref()
                .and_then(|r| r.simulation.as_ref())
                .is_none()
            {
                return Err(format!(
                    "live victory camp not started: duration{minutes} {:?}",
                    gate.rest.as_ref().map(|r| String::from_utf8_lossy(&r.text))
                )
                .into());
            }
            let started = std::time::Instant::now();
            present(&gate, window)?;
            gate.presented(now)?;
            let mut captured = false;
            while gate.rest.is_some() {
                gate.poll(now)?;
                present(&gate, window)?;
                if gate.rest.is_some() && !captured && started.elapsed().as_millis() >= 1500 {
                    if let Some(folder) = std::env::var_os("LALE_REST_FRAME") {
                        let folder = std::path::PathBuf::from(folder);
                        let (_, indices) = gate
                            .exploration_frame(
                                &world_panel,
                                gate.base_room().unwrap_or(&room),
                                gate.facing(),
                            )?
                            .ok_or("missing camp frame")?;
                        std::fs::write(folder.join("native-camp-indexed.bin"), indices)?;
                        std::fs::write(
                            folder.join("native-camp-palette6.bin"),
                            gate.debug_palette(),
                        )?;
                    }
                    captured = true;
                }
                gate.presented(now)?;
                now = now.wrapping_add(20);
                if started.elapsed()
                    > std::time::Duration::from_millis(
                        super::world_rest::CAMP_PRESENTATION_DURATION_MS + 2000,
                    )
                {
                    return Err(
                        "camp did not return within configured presentation duration".into(),
                    );
                }
                std::thread::sleep(std::time::Duration::from_millis(5));
            }
            let elapsed_ms = started.elapsed().as_millis();
            if elapsed_ms < u128::from(super::world_rest::CAMP_PRESENTATION_DURATION_MS) {
                return Err("camp presentation returned before its configured duration".into());
            }
            let result = lale_core::combat_party::decode_numeric(&gate.party.unwrap());
            for p in 0..4 {
                if result[p][29] != result[p][6] || result[p][30..45] != original[p][30..45] {
                    return Err("camp recovery/equipment retention mismatch".into());
                }
            }
            let mut expected_clock = lale_core::world_tick::WorldTickState {
                clock,
                ..Default::default()
            };
            expected_clock.advance(minutes);
            if gate.combat_clock != expected_clock.clock
                || gate.rng != Some(expected_rng)
                || gate.events.flag(79)
            {
                return Err("camp clock/RNG mismatch or spurious event79".into());
            }
            key(&mut gate, window, 1073741882)?;
            if !gate.inventory_active() {
                return Err("postcamp information unavailable".into());
            }
            present(&gate, window)?;
            key(&mut gate, window, 27)?;
            println!("SDL rest: natural victory -> K/IKON79 -> {minutes} game minutes, original recovery, one RNG draw, unchanged event79, retained equipment -> automatic exploration in {elapsed_ms}ms -> F1 information");
        }
        if std::env::var_os("LALE_NAVIGATION_CHECK").is_some() {
            navigation_check::run(root, &mut gate, window, &world_panel, &mut now)?;
        }
    } else if gate.navigation_pending.is_none() || gate.events.flag(1) {
        return Err("defeat was incorrectly acknowledged".into());
    }
    Ok(())
}
