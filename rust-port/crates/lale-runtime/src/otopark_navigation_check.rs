//! Test-directed SDL route through the actual movement/event hosts. No live
//! gameplay route or event outcomes are stored here: paths come from PC edges.
use super::*;
use crate::sdl_window::{Input, Window};
use lale_assets::world_panel::WorldPanel;

fn path(gate: &Gate<'_>, target: (u16, u16)) -> Result<Vec<u8>, Box<dyn Error>> {
    use lale_core::movement::MovementBranch;
    let start = (gate.movement.x, gate.movement.y);
    let mut queue = VecDeque::from([start]);
    let mut previous = BTreeMap::from([(start, None)]);
    while let Some((x, y)) = queue.pop_front() {
        if (x, y) == target {
            let mut at = target;
            let mut directions = Vec::new();
            while let Some((origin, facing)) = previous[&at] {
                directions.push(facing);
                at = origin;
            }
            directions.reverse();
            return Ok(directions);
        }
        for facing in 0..4 {
            if !matches!(
                gate.map
                    .movement_branch(x as usize, y as usize, facing, None),
                Some(MovementBranch::Open | MovementBranch::Door | MovementBranch::SpecialForward)
            ) {
                continue;
            }
            let (dx, dy) = lale_assets::pc_map::direction_vector(facing);
            let next = (x.wrapping_add(dx as u16), y.wrapping_add(dy as u16));
            if gate.map.cell(next.0 as usize, next.1 as usize).is_none()
                || previous.contains_key(&next)
                // The exit is a conditional event, not an intermediate path.
                || (gate.area == 1 && next == (0, 5))
            {
                continue;
            }
            previous.insert(next, Some(((x, y), facing)));
            queue.push_back(next);
        }
    }
    Err("no original-map path to navigation test target".into())
}

fn present(
    gate: &Gate<'_>,
    cell: &super::super::StartingCell,
    ui: &WorldPanel,
    window: &mut Window,
) -> Result<(), Box<dyn Error>> {
    let (colors, _) = gate
        .exploration_frame(ui, cell.room(), cell.facing)?
        .ok_or("navigation lost the live exploration panel")?;
    window.present(&colors)?;
    Ok(())
}

fn key(
    gate: &mut Gate<'_>,
    cell: &mut super::super::StartingCell,
    window: &mut Window,
    key: i32,
) -> Result<(), Box<dyn Error>> {
    window.diagnostic_key(key)?;
    for event in window.poll() {
        if gate.world_input(&event)? {
            continue;
        }
        if let Input::Key(k) = event {
            if gate.active() {
                gate.key(k)?;
            } else if k == 1073741906 || k == 1073741905 {
                gate.begin_step(cell.room(), cell.facing, k == 1073741905)?;
            } else {
                cell.key(k);
            }
        }
    }
    Ok(())
}

fn settle(
    root: &Path,
    gate: &mut Gate<'_>,
    cell: &mut super::super::StartingCell,
    window: &mut Window,
    ui: &WorldPanel,
    now: &mut u16,
    accept: bool,
    audio: &crate::native_audio::Audio,
) -> Result<(), Box<dyn Error>> {
    for _ in 0..500 {
        gate.poll(*now)?;
        cell.sync(root, gate)?;
        present(gate, cell, ui, window)?;
        gate.presented(*now)?;
        if gate.location() == (1, 8, 1) && !gate.events.flag(2) {
            if let Some(folder) = std::env::var_os("LALE_NAVIGATION_FRAME") {
                let name = if gate.acquisition_active() {
                    Some("search-loot")
                } else if gate.illustration.is_some() {
                    Some("fainted-man")
                } else {
                    None
                };
                if let Some(name) = name {
                    let folder = std::path::PathBuf::from(folder);
                    let (_, indices) = gate
                        .exploration_frame(ui, cell.room(), cell.facing)?
                        .unwrap();
                    std::fs::write(folder.join(format!("{name}-indexed.bin")), indices)?;
                    std::fs::write(
                        folder.join(format!("{name}-palette6.bin")),
                        gate.debug_palette(),
                    )?;
                }
            }
        }
        for (id, rate) in gate.take_audio_events() {
            audio.effect(root, id, rate)?;
        }
        if gate.pending.is_some() || gate.navigation_pending.is_some() {
            return Err(format!(
                "navigation effect blocked at {:?}: {:?} {:?}",
                gate.location(),
                gate.pending,
                gate.navigation_pending
            )
            .into());
        }
        if !gate.active() {
            return Ok(());
        }
        if gate.acquisition_active() {
            // Use the original click handler, as in the first-battle SDL driver.
            let panel = gate.acquisition_panel()?;
            let person = usize::from(gate.acquisition.as_ref().unwrap().person - 1);
            let slot = (0..10)
                .find(|&i| gate.party.as_ref().unwrap()[person][70 + i * 2..72 + i * 2] == [0, 0])
                .ok_or("no empty inventory slot for original search loot")?;
            let b = panel.inventory_boxes[slot];
            gate.click(8, 28)?;
            gate.click(i32::from(b[0]), i32::from(b[1]))?;
            key(gate, cell, window, 27)?;
        } else {
            key(
                gate,
                cell,
                window,
                if gate.choice.is_some() {
                    i32::from(if accept { b'e' } else { b'h' })
                } else {
                    32
                },
            )?;
        }
        *now = now.wrapping_add(150);
    }
    Err("navigation modal did not finish within bounded test".into())
}

fn travel(
    root: &Path,
    gate: &mut Gate<'_>,
    cell: &mut super::super::StartingCell,
    window: &mut Window,
    ui: &WorldPanel,
    now: &mut u16,
    target: (u16, u16),
    audio: &crate::native_audio::Audio,
) -> Result<(), Box<dyn Error>> {
    let directions = path(gate, target)?;
    let count = directions.len();
    for facing in directions {
        while cell.facing != facing {
            key(gate, cell, window, 1073741903)?;
        }
        key(gate, cell, window, 1073741906)?;
        settle(root, gate, cell, window, ui, now, true, audio)?;
    }
    if (gate.movement.x, gate.movement.y) != target {
        return Err("map-directed route ended at the wrong position".into());
    }
    println!(
        "SDL original-map navigation: {count} steps -> {:?}, flags1/2={}/{}",
        gate.location(),
        gate.events.flag(1),
        gate.events.flag(2)
    );
    Ok(())
}

pub(super) fn run(
    root: &Path,
    gate: &mut Gate<'_>,
    window: &mut Window,
    ui: &WorldPanel,
    now: &mut u16,
) -> Result<(), Box<dyn Error>> {
    if gate.location() != (1, 2, 0) || !gate.events.flag(1) || gate.events.flag(2) {
        return Err("navigation requires genuinely completed first battle".into());
    }
    let mut cell = super::super::StartingCell::load(root)?;
    cell.sync(root, gate)?;
    let audio = crate::native_audio::Audio::shared();
    let before = lale_core::combat_party::decode_numeric(&gate.party.unwrap());
    let resources = gate.owned_resources;
    travel(root, gate, &mut cell, window, ui, now, (8, 1), &audio)?;
    let after = lale_core::combat_party::decode_numeric(&gate.party.unwrap());
    if !gate.events.flag(2)
        || gate.owned_resources != [resources[0] + 5, resources[1], resources[2] + 1]
        || !after.iter().any(|p| p[35..45].iter().any(|v| v % 100 == 3))
    {
        return Err("original search did not deliver club loot/resources and key flag2".into());
    }
    for p in 0..4 {
        if before[p][30..35] != after[p][30..35] || before[p][35] != after[p][35] {
            return Err("navigation changed existing equipment or owned stone".into());
        }
    }
    // Revisit invokes the original already-searched illustration/dialogue only.
    let key_records = gate.party.unwrap();
    let key_resources = gate.owned_resources;
    travel(root, gate, &mut cell, window, ui, now, (9, 1), &audio)?;
    travel(root, gate, &mut cell, window, ui, now, (8, 1), &audio)?;
    if gate.owned_resources != key_resources
        || gate
            .party
            .unwrap()
            .iter()
            .zip(key_records)
            .any(|(a, b)| a[60..90] != b[60..90])
    {
        return Err("repeated key search duplicated loot or altered inventory".into());
    }
    travel(root, gate, &mut cell, window, ui, now, (1, 5), &audio)?;
    while cell.facing != 3 {
        key(gate, &mut cell, window, 1073741903)?;
    }
    let clock = gate.combat_clock;
    key(gate, &mut cell, window, 1073741906)?;
    settle(root, gate, &mut cell, window, ui, now, false, &audio)?;
    if gate.location() != (1, 1, 5) || gate.combat_clock != clock {
        return Err("Hayır exit choice moved party or advanced world time".into());
    }
    key(gate, &mut cell, window, 1073741906)?;
    settle(root, gate, &mut cell, window, ui, now, true, &audio)?;
    let mut expected = lale_core::world_tick::WorldTickState {
        clock,
        ..Default::default()
    };
    expected.advance(1);
    if gate.location() != (2, 3, 22) || gate.facing != 3 || gate.combat_clock != expected.clock {
        return Err("accepted original exit lost target/facing/single world tick".into());
    }
    travel(root, gate, &mut cell, window, ui, now, (3, 21), &audio)?;
    key(gate, &mut cell, window, 1073741882)?;
    if !gate.inventory_active() {
        return Err("information unavailable after area transition".into());
    }
    present(gate, &cell, ui, window)?;
    key(gate, &mut cell, window, 27)?;
    let (_, indices) = gate
        .exploration_frame(ui, cell.room(), cell.facing)?
        .unwrap();
    if let Some(folder) = std::env::var_os("LALE_NAVIGATION_FRAME") {
        let folder = std::path::PathBuf::from(folder);
        std::fs::write(folder.join("mecidiyekoy-indexed.bin"), indices)?;
        std::fs::write(
            folder.join("mecidiyekoy-palette6.bin"),
            gate.debug_palette(),
        )?;
    }
    println!("SDL Otopark continuation: earned victory -> map doors/stairs -> fainted-man search/club loot/key flag2 -> no duplicate search -> Hayır stays -> Evet PC2(3,22)f3 -> north door PC2(3,21) -> F1/inventory retained");
    Ok(())
}
