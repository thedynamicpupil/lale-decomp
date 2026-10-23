//! Native resource-driven presentation and verified character-creation subset.
mod character_appearance;
mod character_creation;
mod character_data;
mod character_generation;
mod character_runtime_snapshot;
mod character_screen;
mod combat_play;
mod combat_session;
mod creation_session;
mod menu_study;
mod native_audio;
mod native_party_store;
mod original_seed;
mod otopark_background;
mod otopark_room;
mod party_workspace;
mod presentation;
mod quick_start;
mod sdl_window;
mod seq_preview;
use character_screen::CharacterScreen;
use menu_study::{MenuStudy, CHARACTER, MENU};
use presentation::{dos_counter, Presentation};
use sdl_window::{Input, Window};
use std::{
    error::Error,
    io::Write,
    path::{Path, PathBuf},
    time::Instant,
};

fn write_frame(path: &Path, pixels: &[u32]) -> Result<(), Box<dyn Error>> {
    let mut f = std::fs::OpenOptions::new()
        .write(true)
        .create_new(true)
        .open(path)?;
    write!(f, "P6\n320 200\n255\n")?;
    for p in pixels {
        f.write_all(&[
            ((p >> 16) & 255) as u8,
            ((p >> 8) & 255) as u8,
            (p & 255) as u8,
        ])?;
    }
    Ok(())
}
fn dump(
    study: &MenuStudy,
    character: &mut CharacterScreen,
    folder: &Path,
) -> Result<(), Box<dyn Error>> {
    std::fs::create_dir(folder)?;
    for (name, stream) in [("ACILISA", &study.a), ("ACILISB", &study.b)] {
        std::fs::write(folder.join(format!("{name}-full-stream.indices")), stream)?;
    }
    for stage in [0, 4, 5, 10, 16, 17, 22, 28, 29, MENU, CHARACTER] {
        let indices = if stage == CHARACTER {
            character.indices(study)
        } else {
            study.indices(stage)
        };
        let rgba = if stage == CHARACTER {
            study.colorize(&indices, true, 64)?
        } else {
            study.frame(stage)?
        };
        write_frame(&folder.join(format!("stage-{stage:02}.ppm")), &rgba)?;
        std::fs::write(folder.join(format!("stage-{stage:02}.indices")), indices)?;
    }
    let mut timeline = Presentation::startup(0);
    let mut log = String::from("counter_units,phase,stage,brightness,interactive\n");
    for now in (0..=7440).step_by(10) {
        let v = timeline.update(now);
        if [
            0, 800, 1600, 2600, 3600, 3690, 4050, 4680, 4770, 5770, 6310, 6850, 6940, 7440,
        ]
        .contains(&now)
        {
            log.push_str(&format!(
                "{now},{:?},{},{},{}\n",
                timeline.phase, v.stage, v.brightness, v.interactive
            ));
            write_frame(
                &folder.join(format!("counter-{now:05}.ppm")),
                &study.colorize(&study.indices(v.stage), false, v.brightness)?,
            )?;
        }
    }
    std::fs::write(folder.join("timeline.csv"), log)?;
    println!(
        "Wrote original-resource frames, complete streams and counter-timeline samples to {}",
        folder.display()
    );
    Ok(())
}
#[derive(Debug, PartialEq, Eq)]
enum MenuAction {
    Stay,
    QuickStart,
    Quit,
}
fn activate(
    study: &MenuStudy,
    presentation: &mut Presentation,
    stage: &mut usize,
    manual: bool,
    now: u32,
) -> MenuAction {
    match study.selected {
        0 => {
            if manual {
                *stage = CHARACTER;
            } else {
                presentation.to_character(now);
            }
            MenuAction::Stay
        }
        2 => MenuAction::QuickStart,
        3 => MenuAction::Quit,
        i => {
            eprintln!(
                "Menu choice{}: full game-save loading is not implemented.",
                i + 1
            );
            MenuAction::Stay
        }
    }
}
fn main() -> Result<(), Box<dyn Error>> {
    let mut root = PathBuf::from(".");
    let mut explicit_seed: Option<u16> = None;
    let mut native_party: Option<PathBuf> = None;
    let mut opening_debug_audio = false;
    let mut door_sequence = false;
    let mut combat_snapshot: Option<PathBuf> = None;
    let mut check_combat = false;
    let mut check_live_combat = false;
    let mut check_quick_start = false;
    let mut stage = MENU;
    let mut manual = false;
    let mut frames = None;
    let mut output = None;
    let mut reference = None;
    let mut creation_snapshot = None;
    let mut square_pixels = true;
    let args: Vec<_> = std::env::args_os().skip(1).collect();
    let mut i = 0;
    while i < args.len() {
        let arg = args[i].to_str().ok_or("argument is not UTF8")?;
        match arg {
            "--root"
            | "--stage"
            | "--frames"
            | "--dump"
            | "--party-reference"
            | "--creation-snapshot"
            | "--creation-seed"
            | "--native-party"
            | "--combat-snapshot" => {
                i += 1;
                let value = args.get(i).ok_or("missing option value")?;
                match arg {
                    "--root" => root = value.into(),
                    "--dump" => output = Some(PathBuf::from(value)),
                    "--party-reference" => reference = Some(PathBuf::from(value)),
                    "--creation-snapshot" => creation_snapshot = Some(PathBuf::from(value)),
                    "--native-party" => native_party = Some(PathBuf::from(value)),
                    "--combat-snapshot" => combat_snapshot = Some(PathBuf::from(value)),
                    "--creation-seed" => {
                        explicit_seed = Some(value.to_str().ok_or("invalid seed")?.parse()?)
                    }
                    "--stage" => {
                        stage = value.to_str().ok_or("invalid stage")?.parse()?;
                        manual = true;
                    }
                    _ => {
                        frames = Some(
                            value
                                .to_str()
                                .ok_or("invalid frame count")?
                                .parse::<usize>()?,
                        )
                    }
                }
            }
            "--check-combat" => check_combat = true,
            "--check-live-combat" => check_live_combat = true,
            "--check-quick-start" => check_quick_start = true,
            "--debug-audio" => opening_debug_audio = true,
            "--door-sequence" => door_sequence = true,
            "--manual" => manual = true,
            "--vga-aspect" => square_pixels = false,
            "--help" => {
                println!("lale-menu-reference --root PROJECT [--manual | --stage 0..31] [--party-reference PARTY.DAT | --creation-snapshot DS] [--dump NEW_DIR] [--frames N] [--vga-aspect]\nDefault: automatic source-counter startup, company logos excluded. F10: nine original PC1 loader-linked source sheets with PAL3D; arrows browse, WASD pan (not room gameplay). F9: silent SEQ1–5 debug preview from interactive menu/character screen (outside name editing);Esc returns without completing creation. Menu: Up/Down, mouse, Enter. Quick Start loads the original ready-made party directly into Otopark. Character: arrows/numpad4/6 appearance,8/2 race,C sex,Tab/name-button naming,Enter/dice rerolls original stats,Space/next-button advances named slots,Esc/upper-left previous or menu. Name: original width/casing;Enter accepts,Esc restores. Four nonempty slots persist a native party checkpoint, play the original film and open the source-composed starting view. Combat: arrows/keypad and original direction buttons move/attack; Tab advances initiative; I opens carried inventory, Enter twice equips main hand, Q/W/E release equipment, Esc closes inventory or handles an unsupported voice wait. Original bottom panel is connected; native status prompts remain distinct. F12 toggles developer HP, F7 exports. Advanced equipment/actions, random face timing and map progression remain incomplete.\nManual study: Space/Backspace step stages,R restarts. Q quits outside character editing; window-close always quits. Party reference loads verified original statistics for inspection; never new rolls or writes.");
                println!("--creation-seed U16: reproducible native creation-entry seed override. Default uses source-calendar conversion of host civil time. --native-party FILE: validated creation checkpoint to starting view (not full game save). Opening audio is enabled by default and sample-clock synchronized. LALE_AUDIO_VOLUME=0..100 and LALE_AUDIO_MUTE=1 control host output without changing RNG. --debug-audio: legacy opening flag (opening is now audible by default). Standalone film preview also accepts --debug-audio. F11: original room inspection; Left/Right turn, Up/Down attempt event-gated steps.");
                println!("--creation-snapshot ORIGINAL_PRE_SETUP_DS: graphical diagnostic using captured original RNG/state. F8 executes one explicit150-unit idle poll; no automatic idle RNG, native seed, save writes or gameplay. Fourth named slot prepares original party bytes in memory only.");
                println!("--check-quick-start: explicit original-ready-party SDL route through the first battle.\n--check-live-combat: explicit fresh-party SDL integration test; no DOS snapshot or normal-play automation.");
                println!("--combat-snapshot DS: explicit prepared-state combat inspection; arrows/keypad and Tab stop at original presentation boundaries. F7 exports, Esc returns. Not a live-world battle or a game save. --check-combat runs its input/state/render smoke check.");
                return Ok(());
            }
            _ => return Err(format!("unknown option {arg}").into()),
        }
        i += 1;
    }
    if check_quick_start {
        let mut study = MenuStudy::load(&root)?;
        study.selected = 2;
        if activate(
            &study,
            &mut Presentation::immediate_menu(0),
            &mut MENU.clone(),
            false,
            0,
        ) != MenuAction::QuickStart
        {
            return Err("quick-start menu dispatch failed".into());
        }
        let quick = quick_start::QuickStart::load(&root, explicit_seed.unwrap_or(12345))?;
        let mut window = Window::new("Quick-start live-party integration check", square_pixels)?;
        return otopark_room::check_live_combat(
            &root,
            &mut window,
            quick.party.characters.each_ref().map(|c| c.numeric_raw),
            quick.traits,
            quick.rng_state,
        );
    }
    if check_live_combat {
        let exe = std::fs::read(root.join("lale/IST.EXE"))?;
        let mut creation = creation_session::CreationSession::fresh(&exe, 12345, 0)?;
        for i in 0..4 {
            creation.set_name(format!("tester{}", i + 1).as_bytes());
            creation.action(character_creation::Action::Next)?;
        }
        let party = creation
            .completed
            .as_ref()
            .ok_or("test creation incomplete")?;
        let mut window = Window::new("Native live combat integration check", square_pixels)?;
        return otopark_room::check_live_combat(
            &root,
            &mut window,
            party.characters.each_ref().map(|c| c.numeric_raw),
            creation.caller.traits,
            creation.rng_state(),
        );
    }
    if let Some(snapshot) = combat_snapshot {
        let mut window = Window::new("Prepared-state combat inspection", square_pixels)?;
        return combat_session::run(&root, &mut window, &snapshot, frames, check_combat);
    }
    if check_combat {
        return Err("--check-combat requires an explicit --combat-snapshot".into());
    }
    if stage > CHARACTER {
        return Err("stage must be0..31".into());
    }
    if door_sequence {
        let mut window = Window::new("Original north-door rendering inspection", square_pixels)?;
        otopark_room::run_door_inspection(&root, &mut window, frames)?;
        return Ok(());
    }
    let mut study = MenuStudy::load(&root)?;
    if manual {
        eprintln!(
            "Manual presentation study: {}",
            MenuStudy::stage_name(stage)
        );
    }
    let ordinary_creation = reference.is_none() && creation_snapshot.is_none();
    let mut character = CharacterScreen::load(&root, &study, reference.as_deref())?;
    if let Some(path) = creation_snapshot {
        if reference.is_some() {
            return Err("reference party and debug creation snapshot are exclusive".into());
        }
        character.enable_creation_snapshot(&root, &path)?;
    }
    if character.reference {
        eprintln!("REFERENCE PARTY INSPECTION: displayed values come from the supplied file, not newly generated characters.");
    } else if !character.debug_creation() {
        eprintln!("Native new game: original generator, four named characters, safe party checkpoint, cinematic and source-composed starting view. Physical combat is interactive with original audio; supported voice waits finish automatically. Original combat panel and manual inventory/equipment are connected. Advanced actions/equipment, random face scheduling and map progression remain incomplete.");
    }
    if let Some(output) = output {
        if ordinary_creation && stage == CHARACTER {
            let seed = match explicit_seed {
                Some(value) => value,
                None => original_seed::host_local_seed()?,
            };
            character.enable_normal_creation(&root, u32::from(seed), 0)?;
        }
        return dump(&study, &mut character, &output);
    }
    let mut window = Window::new(character.window_title(), square_pixels)?;
    let audio = native_audio::Audio::shared();
    if let Err(e) = audio.music(&root, "demo.amf") {
        eprintln!("Menu audio: {e}");
    }
    if let Some(path) = native_party {
        let party = native_party_store::load(&root, &path)?;
        eprintln!("Loaded native creation checkpoint with{} named characters; this is not a general gameplay save.",party.characters.len());
        otopark_room::run(&root, &mut window, frames)?;
        return Ok(());
    }
    let mut clock = Instant::now();
    let mut count = 0;
    let mut timeline = if manual && stage == CHARACTER {
        Presentation::immediate_character(0)
    } else {
        Presentation::startup(0)
    };
    let mut prior_character = false;
    let mut prior_character_interactive = false;
    loop {
        if let Err(e) = audio.music(&root, "demo.amf") {
            eprintln!("Menu audio: {e}");
        }
        let now = dos_counter(clock.elapsed());
        let visual = if manual {
            presentation::Visual {
                stage,
                brightness: if stage <= 4 { (stage * 16) as u8 } else { 64 },
                interactive: stage >= MENU,
            }
        } else {
            timeline.update(now)
        };
        let in_character = visual.stage == CHARACTER;
        if in_character && !prior_character {
            if ordinary_creation {
                let seed = match explicit_seed {
                    Some(value) => value,
                    None => original_seed::host_local_seed()?,
                };
                eprintln!("Native creation-entry seed{:04x}: {}; prior DOS startup/menu draws are not emulated.",seed, if explicit_seed.is_some() {"explicit compatibility override"} else {"original fallback calendar conversion of host civil time"});
                character.enable_normal_creation(&root, u32::from(seed), now as u16)?;
            }
            character.reset_animation(now);
        }
        if in_character && visual.interactive && !prior_character_interactive {
            character.reset_animation(now);
        }
        prior_character = in_character;
        prior_character_interactive = in_character && visual.interactive;
        character.observe_counter(now as u16);
        window.text_input(in_character && character.editing());
        for event in window.poll() {
            if matches!(event, Input::Quit) {
                return Ok(());
            }
            // Debug entry, never an original menu option or creation success.
            // Freeze the caller's presentation clock while the modal is open.
            if event == Input::Key(1073741890) && visual.interactive && !character.editing() {
                let started = Instant::now();
                let result = seq_preview::run(&root, &mut window, None);
                clock += started.elapsed();
                window.title(character.window_title())?;
                if result? == seq_preview::Exit::Quit {
                    return Ok(());
                }
                break;
            }
            if event == Input::Key(1073741891) && visual.interactive && !character.editing() {
                let started = Instant::now();
                let result = otopark_background::run(&root, &mut window, None);
                clock += started.elapsed();
                window.title(character.window_title())?;
                if result? {
                    return Ok(());
                }
                break;
            }
            if event == Input::Key(1073741892) && visual.interactive && !character.editing() {
                let started = Instant::now();
                let quit = otopark_room::run(&root, &mut window, None)?;
                clock += started.elapsed();
                window.title(character.window_title())?;
                if quit {
                    return Ok(());
                }
                break;
            }
            if in_character && visual.interactive {
                let leave = match event {
                    Input::Key(key) => character.key(key),
                    Input::Text(ref text) => {
                        character.text_input(text);
                        false
                    }
                    Input::Click(x, y) => character.click(x, y, false),
                    Input::RightClick(x, y) => character.click(x, y, true),
                    _ => false,
                };
                if leave {
                    window.text_input(false);
                    study.reset_selection();
                    if manual {
                        stage = MENU;
                    } else {
                        timeline.to_menu(now);
                    }
                }
                if character.normal_creation() {
                    if let Some(party) = character.prepared_party().cloned() {
                        let path = native_party_store::save(&root, &party)?;
                        eprintln!("Native party creation complete; checkpoint {} (664 original-layout bytes; not a general game save).",path.display());
                        window.text_input(false);
                        if seq_preview::run_opening(&root, &mut window, opening_debug_audio)?
                            == seq_preview::Exit::Quit
                        {
                            return Ok(());
                        }
                        if otopark_room::run_with_party(
                            &root,
                            &mut window,
                            party
                                .characters
                                .each_ref()
                                .map(|character| character.numeric_raw),
                            character
                                .rng_state()
                                .ok_or("creation RNG boundary missing")?,
                            character
                                .working_traits()
                                .ok_or("creation traits missing")?,
                            std::array::from_fn(|i| {
                                party.original_bytes()[i * 74..(i + 1) * 74]
                                    .try_into()
                                    .unwrap()
                            }),
                        )? {
                            return Ok(());
                        }
                        study.reset_selection();
                        if manual {
                            stage = MENU;
                        } else {
                            timeline = Presentation::immediate_menu(dos_counter(clock.elapsed()));
                        }
                        prior_character = false;
                        prior_character_interactive = false;
                        break;
                    }
                }
                window.title(character.window_title())?;
                continue;
            }
            let mut menu_action = MenuAction::Stay;
            match event {
                Input::Key(113) => return Ok(()),
                Input::Key(27) if manual || visual.interactive => {
                    study.reset_selection();
                    if manual {
                        stage = MENU;
                    } else {
                        timeline = Presentation::immediate_menu(now);
                    }
                }
                Input::Key(32) if manual => stage = (stage + 1).min(CHARACTER),
                Input::Key(8) if manual => stage = stage.saturating_sub(1),
                Input::Key(114) if manual => stage = 0,
                Input::Key(1073741906) if visual.stage == MENU && visual.interactive => {
                    study.selected = (study.selected + 3) % 4
                }
                Input::Key(1073741905) if visual.stage == MENU && visual.interactive => {
                    study.selected = (study.selected + 1) % 4
                }
                Input::Key(13) if visual.stage == MENU && visual.interactive => {
                    menu_action = activate(&study, &mut timeline, &mut stage, manual, now);
                }
                Input::Motion(x, y) if visual.stage == MENU && visual.interactive => {
                    study.hover(x, y);
                }
                Input::Click(x, y) if visual.stage == MENU && visual.interactive => {
                    if (88..=226).contains(&x) && (127..=180).contains(&y) {
                        study.hover(x, y);
                        menu_action = activate(&study, &mut timeline, &mut stage, manual, now);
                    }
                }
                _ => {}
            }
            match menu_action {
                MenuAction::Quit => return Ok(()),
                MenuAction::QuickStart => {
                    let seed = match explicit_seed {
                        Some(seed) => seed,
                        None => original_seed::host_local_seed()?,
                    };
                    let quick = quick_start::QuickStart::load(&root, seed)?;
                    eprintln!("Quick Start: original GRPHAZIR.DAT party; native entry seed {seed:04x}; no party checkpoint overwritten.");
                    window.text_input(false);
                    let started = Instant::now();
                    if quick.run(&root, &mut window)? {
                        return Ok(());
                    }
                    clock += started.elapsed();
                    study.reset_selection();
                    stage = MENU;
                    timeline = Presentation::immediate_menu(dos_counter(clock.elapsed()));
                    prior_character = false;
                    prior_character_interactive = false;
                    break;
                }
                MenuAction::Stay => {}
            }
        }
        // Original editor blocks body-pose progression while editing.
        if in_character && visual.interactive {
            character.tick(now);
        }
        let indices = if in_character {
            character.indices(&study)
        } else {
            study.indices(visual.stage)
        };
        let colors = if in_character && visual.brightness == 64 {
            character.rgba(&indices)?
        } else {
            study.colorize(&indices, in_character, visual.brightness)?
        };
        window.present(&colors)?;
        count += 1;
        if frames.is_some_and(|n| count >= n) {
            return Ok(());
        }
        // Host presentation/input pacing; it is not a recovered game-frame period.
        std::thread::sleep(std::time::Duration::from_millis(8));
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    fn originals() -> MenuStudy {
        MenuStudy::load(&PathBuf::from(env!("CARGO_MANIFEST_DIR")).join("../../..")).unwrap()
    }
    #[test]
    fn ordinary_creation_animates_names_four_slots_and_persists_without_replacing_files() {
        let root = PathBuf::from(env!("CARGO_MANIFEST_DIR")).join("../../..");
        let study = originals();
        let mut c = CharacterScreen::load(&root, &study, None).unwrap();
        c.enable_normal_creation(&root, 12345, 0).unwrap();
        assert!(c.normal_creation());
        assert!(!c.debug_creation());
        let first = c.indices(&study);
        c.tick(150);
        assert_ne!(first, c.indices(&study));
        for name in ["ali", "veli", "ayse", "fatma"] {
            c.observe_counter(150);
            c.key(9);
            c.text_input(name);
            c.observe_counter(400);
            c.key(13);
            c.key(32);
        }
        let party = c.prepared_party().unwrap();
        let temporary = std::env::temp_dir().join(format!(
            "lale-native-party-test-{}-{}",
            std::process::id(),
            std::time::SystemTime::now()
                .duration_since(std::time::UNIX_EPOCH)
                .unwrap()
                .as_nanos()
        ));
        std::fs::create_dir(&temporary).unwrap();
        std::fs::create_dir(temporary.join("lale")).unwrap();
        std::fs::copy(root.join("lale/IST.EXE"), temporary.join("lale/IST.EXE")).unwrap();
        let first = native_party_store::save(&temporary, party).unwrap();
        let original = std::fs::read(&first).unwrap();
        let second = native_party_store::save(&temporary, party).unwrap();
        assert_ne!(first, second);
        assert_eq!(std::fs::read(first).unwrap(), original);
        assert_eq!(
            native_party_store::load(&temporary, &second).unwrap(),
            *party
        );
        assert!(otopark_room::StartingRoom::load(&root).is_ok());
        std::fs::remove_dir_all(temporary).unwrap();
    }
    #[test]
    fn debug_creation_shows_dos_numbers_and_prepares_four_named_characters_without_io() {
        let root = PathBuf::from(env!("CARGO_MANIFEST_DIR")).join("../../..");
        let study = originals();
        let mut c = CharacterScreen::load(&root, &study, None).unwrap();
        c.enable_creation_snapshot(&root, &root.join("analysis/phase-five/character-ui-20261015/character/dos-run6/FIRST-SETUP-BEFORE-DS.BIN")).unwrap();
        let after = std::fs::read(root.join(
            "analysis/phase-five/character-ui-20261015/character/dos-run6/FIRST-SETUP-AFTER-DS.BIN",
        ))
        .unwrap();
        let original = character_runtime_snapshot::CreationRuntimeSnapshot::parse(
            &after,
            character_runtime_snapshot::SnapshotStage::AfterSlotSetup,
        )
        .unwrap();
        assert_eq!(
            c.party.characters[0].values,
            Some(original.party.characters[0].stats())
        );
        let before_roll = c.party.characters[0].values;
        c.click(20, 145, false); // Original dice hitbox uses same verified handler.
        assert_ne!(c.party.characters[0].values, before_roll);
        for (slot, name) in ["ali", "veli", "ayse", "fatma"].into_iter().enumerate() {
            assert_eq!(c.party.selected, slot);
            c.key(9);
            c.text_input(name);
            c.key(13);
            assert_eq!(c.party.characters[slot].name, name.as_bytes());
            assert!(c.party.characters[slot].values.is_some());
            c.key(32);
        }
        let prepared = c.prepared_party().unwrap();
        assert_eq!(prepared.original_bytes().len(), 664);
        for (slot, name) in ["ali", "veli", "ayse", "fatma"].into_iter().enumerate() {
            assert_eq!(prepared.characters[slot].name(), name.as_bytes());
            assert_eq!(
                prepared.characters[slot].word(0x38),
                prepared.characters[slot].word(0x0a)
            );
            assert_eq!(
                prepared.characters[slot].word(0x3a),
                prepared.characters[slot].word(0x0c)
            );
        }
        assert_eq!(c.party.selected, 3);
        assert!(c.window_title().contains("PREPARED"));
        c.key(13);
        assert!(c.prepared_party().is_none());
    }
    #[test]
    fn reference_views_keep_terminal_output_and_independent_source_extents() {
        let s = originals();
        assert_eq!((s.a.len(), s.b.len()), (64001, 64001));
        assert_eq!(s.a[64000], 0);
        assert_eq!(s.b[64000], 0);
        assert_eq!(s.indices(4), s.a[..64000]);
        assert_eq!(s.indices(29), s.b[..64000]);
        // Independent source audit: logo and episode strips have these deltas.
        let background = s.indices(4);
        let logo = s.indices(16);
        let title = s.indices(28);
        assert_eq!(
            background.iter().zip(&logo).filter(|(a, b)| a != b).count(),
            10556
        );
        assert_eq!(
            logo.iter().zip(&title).filter(|(a, b)| a != b).count(),
            3886
        );
        assert!(s.frame(0).unwrap().iter().all(|&p| p == 0xff00_0000));
    }
    #[test]
    fn selection_retains_state_and_inclusive_overlap_uses_first_region() {
        let mut s = originals();
        assert!(s.hover(100, 175));
        assert_eq!(s.selected, 3);
        assert!(!s.hover(319, 0));
        assert_eq!(s.selected, 3);
        s.hover(88, 138);
        assert_eq!(s.selected, 0);
        s.selected = 1; // Keyboard selection after the cached region0.
        assert!(!s.hover(100, 130));
        assert_eq!(s.selected, 1);
        assert_ne!(s.indices(MENU), s.indices(29));
    }
    #[test]
    fn integrated_name_navigation_keeps_generation_explicit() {
        let study = originals();
        let root = PathBuf::from(env!("CARGO_MANIFEST_DIR")).join("../../..");
        let mut c = CharacterScreen::load(&root, &study, None).unwrap();
        assert!(!c.key(9));
        assert!(c.editing());
        c.text_input("Ali");
        c.key(13);
        assert_eq!(c.party.characters[0].name, b"ali");
        assert!(c.party.characters[0].values.is_none());
        c.key(32);
        assert_eq!(c.party.selected, 1);
        assert!(!c.key(27));
        assert_eq!(c.party.selected, 0);
        assert!(c.key(27));
        c.key(9);
        c.text_input("S");
        c.key(27);
        assert_eq!(c.party.characters[0].name, b"ali");
    }
    #[test]
    fn original_party_numbers_change_only_numeric_destination_region() {
        let study = originals();
        let root = PathBuf::from(env!("CARGO_MANIFEST_DIR")).join("../../..");
        let mut c = CharacterScreen::load(&root, &study, Some(&root.join("lale/GRP.DAT"))).unwrap();
        let with = c.indices(&study);
        c.party.characters[0].values = None;
        let without = c.indices(&study);
        let differences: Vec<_> = with
            .iter()
            .zip(&without)
            .enumerate()
            .filter(|(_, (a, b))| a != b)
            .map(|(i, _)| i)
            .collect();
        assert!(!differences.is_empty());
        assert!(differences
            .iter()
            .all(|i| i % 320 >= 280 && (18..=160).contains(&(i / 320))));
    }
}
