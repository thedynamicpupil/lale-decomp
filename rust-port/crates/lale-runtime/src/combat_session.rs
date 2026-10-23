//! Native input/state/renderer integration at an explicit prepared-combat boundary.
//! DOS snapshots are optional diagnostic INPUT, never framebuffer/runtime assets.
//! This host stops before original presentation/reaction/round dependencies that
//! are not implemented. It cannot acknowledge an exploration encounter.
use crate::sdl_window::{Input, Window};
use lale_assets::{
    combat_initialization::{self, EntryContext, EntryMusic},
    combat_prepare::EncounterRequest,
    combat_render::{CombatResources, CombatScene},
    pc_map::PcMap,
    Flib,
};
use lale_core::{combat::*, rng::LaleRng};
use std::{
    error::Error,
    fs,
    io::Write,
    path::{Path, PathBuf},
    time::{Duration, SystemTime, UNIX_EPOCH},
};

#[derive(Clone, Debug, PartialEq, Eq)]
pub enum Boundary {
    Input,
    MovementPresentation,
    AttackPresentation(AttackOutcome),
    DepartureReactions(MovementRequest),
    ArrivalReactions(Vec<usize>),
    Turn(TurnBoundary),
}

pub struct PreparedBattle {
    pub state: CombatState,
    pub party: PartyProgress,
    pub appearances: [usize; 4],
    pub enemy_groups: [Option<usize>; 3],
    pub wall_selectors: [u8; 4],
    /// Original [A,B] camera order; actors retain [B,A] coordinates.
    pub camera: [i16; 2],
    pub active_entity: i16,
    /// Explicit original physical-call globals, not inferred from UI redraw.
    pub attack_context: AttackContext,
    /// A newly initialized encounter stops before original turn presentation.
    pub initial_boundary: Boundary,
}

impl PreparedBattle {
    /// Convert caller-owned live records through the verified original entry
    /// pipeline. Auxiliary progress tables and incoming combat storage remain
    /// explicit caller inputs; this does not invent a world lifetime for them.
    /// Result is NOT input-ready until original1b6d turn presentation is hosted.
    #[allow(dead_code)] // Production caller remains gated on world/turn lifecycle.
    pub fn from_live_party(
        root: &Path,
        map: &PcMap<'_>,
        request: EncounterRequest,
        context: &EntryContext,
        mut party: PartyProgress,
        mut state: CombatState,
    ) -> Result<(Self, Option<EntryMusic>), Box<dyn Error>> {
        let exe = fs::read(root.join("lale/IST.EXE"))?;
        let bytes = fs::read(root.join("lale/MUZIK.CKD"))?;
        let archive = Flib::parse(&bytes)?;
        let music = combat_initialization::initialize(
            &exe,
            &archive,
            map,
            request,
            context,
            &mut party.numeric,
            &mut state,
        )?;
        let turn = state
            .select_next()
            .map_err(|e| format!("initial turn:{e:?}"))?;
        let TurnBoundary::Actor(actor) = turn else {
            return Err(
                format!("encounter entry requires original result/round host:{turn:?}").into(),
            );
        };
        let a = state.actors[actor];
        let prepared = Self {
            appearances: party.numeric.map(|n| n[33] as usize),
            enemy_groups: request.visuals(),
            wall_selectors: map.graphic_selectors(),
            camera: [(a[5] - 3).clamp(0, 20), (a[4] - 3).clamp(0, 20)],
            active_entity: actor as i16,
            attack_context: AttackContext::default(),
            initial_boundary: Boundary::Turn(turn),
            party,
            state,
        };
        Ok((prepared, music))
    }
    /// Strict diagnostic reader. No file is loaded implicitly by normal play.
    pub fn from_dos_snapshot(ds: &[u8]) -> Result<Self, Box<dyn Error>> {
        if ds.len() != 65536 {
            return Err("prepared combat snapshot requires exactly65536 DS bytes".into());
        }
        let w = |at: usize| i16::from_le_bytes([ds[at], ds[at + 1]]);
        let mut state = CombatState::new(LaleRng {
            state: u32::from_le_bytes(ds[0x94c4..0x94c8].try_into()?),
        });
        state.actors = std::array::from_fn(|i| std::array::from_fn(|k| w(0xa08a + 40 * i + 2 * k)));
        state.classes =
            std::array::from_fn(|i| std::array::from_fn(|k| w(0x9f1a + 46 * i + 2 * k)));
        state.terrain = std::array::from_fn(|i| w(0xc8ee + 2 * i));
        state.occupancy = std::array::from_fn(|i| w(0xc2ce + 2 * i));
        state.current = usize::try_from(w(0xd5de))?;
        if !(1..=28).contains(&state.current) {
            return Err("snapshot is not at a selected combat actor boundary".into());
        }
        state.remaining = w(0xd54c);
        state.round = w(0xd54a);
        state.missed = w(0xd55a) != 0;
        state.cursor = usize::try_from(w(0x6330))?;
        state.initiative_ready = w(0x6322) != 0;
        if state.cursor > 28 {
            return Err("snapshot scheduler cursor exceeds28".into());
        }
        if state.initiative_ready {
            let mut seen = [false; 29];
            for i in 0..28 {
                let actor = usize::try_from(w(0xd4c0 + 2 * (i + 1)))?;
                if !(1..=28).contains(&actor) || seen[actor] {
                    return Err("snapshot initiative is not an actor permutation".into());
                }
                seen[actor] = true;
                state.order[i] = actor;
                state.initiative_keys[i] = w(0xd4fa + 2 * (i + 1));
            }
        }
        for actor in &state.actors[1..] {
            if !(0..=8).contains(&actor[3]) {
                return Err("snapshot class outside retained combat table".into());
            }
            if actor[0] > 0 {
                CombatState::cell(actor[4], actor[5])
                    .map_err(|e| format!("snapshot coordinate:{e:?}"))?;
            }
        }
        if state.occupancy.iter().any(|v| !(0..=28).contains(v)) {
            return Err("snapshot occupancy outside actor table".into());
        }
        let party = PartyProgress {
            numeric: std::array::from_fn(|p| {
                std::array::from_fn(|k| w(0x99a6 + 92 * (p + 1) + 2 * k))
            }),
            trackers: std::array::from_fn(|p| {
                std::array::from_fn(|k| w(0x9902 + 34 * (p + 1) + 2 * k))
            }),
            modifiers: std::array::from_fn(|p| {
                std::array::from_fn(|k| w(0x9b74 + 36 * (p + 1) + 2 * k))
            }),
        };
        Ok(Self {
            state,
            party,
            appearances: std::array::from_fn(|p| w(0x9a44 + 92 * p) as usize),
            enemy_groups: std::array::from_fn(|p| {
                let id = w(0x5be0 + 6 * p);
                (id > 0).then_some((id % 100) as usize)
            }),
            wall_selectors: std::array::from_fn(|p| w(0x9f10 + 2 * p) as u8),
            camera: [w(0xd57e), w(0xd580)],
            active_entity: w(0xd576),
            attack_context: AttackContext {
                hit_penalty: w(0xd5c2),
                hit_bonus: w(0xd5a0),
                damage_bonus: w(0xd59e),
                counterattack_enabled: w(0xd5b2) == 1,
                ..AttackContext::default()
            },
            initial_boundary: Boundary::Input,
        })
    }
}

pub struct CombatSession {
    pub prepared: PreparedBattle,
    pub boundary: Boundary,
    resources: CombatResources,
    pub message: String,
}
impl CombatSession {
    /// Shared future gameplay host: accepts prepared data, independent of how
    /// the caller obtained it. No encounter identities or canned actions.
    pub fn new(root: &Path, prepared: PreparedBattle) -> Result<Self, Box<dyn Error>> {
        let resources = CombatResources::load(
            root,
            prepared.appearances,
            prepared.enemy_groups,
            prepared.wall_selectors,
        )?;
        let boundary = prepared.initial_boundary.clone();
        let message = if boundary == Boundary::Input {
            String::new()
        } else {
            format!("Original initial {boundary:?} presentation remains pending")
        };
        let session = Self {
            prepared,
            boundary,
            resources,
            message,
        };
        session.frame()?;
        Ok(session)
    }
    pub fn frame(&self) -> Result<Vec<u8>, Box<dyn Error>> {
        self.frame_target(None)
    }
    pub fn frame_target(&self, target: Option<[i16; 2]>) -> Result<Vec<u8>, Box<dyn Error>> {
        let p = &self.prepared;
        Ok(self
            .resources
            .render(&CombatScene {
                terrain: &p.state.terrain,
                occupancy: &p.state.occupancy,
                actors: &p.state.actors,
                camera: p.camera,
                active_entity: p.active_entity,
                selected_entity: p.state.current as i16,
                target,
            })?
            .indices)
    }
    pub fn colors(&self, pixels: &[u8]) -> Result<Vec<u32>, Box<dyn Error>> {
        pixels
            .iter()
            .map(|&i| {
                let [r, g, b] = self.resources.palette.preview_rgb(i)?;
                Ok(0xff000000 | u32::from(r) << 16 | u32::from(g) << 8 | u32::from(b))
            })
            .collect()
    }
    fn camera(&mut self) {
        let a = self.prepared.state.actors[self.prepared.state.current];
        self.prepared.camera = [(a[5] - 3).clamp(0, 20), (a[4] - 3).clamp(0, 20)];
        self.prepared.active_entity = self.prepared.state.current as i16;
    }
    /// SDL keys enter the same shared state kernel used by DOS comparisons.
    /// Simulation changes are transactional on unsupported mechanics/errors.
    pub fn key(&mut self, key: i32) -> Result<(), Box<dyn Error>> {
        if self.boundary != Boundary::Input {
            return Ok(());
        }
        let direction = match key {
            1073741906 | 1073741920 => Some(1), // Up / keypad8
            1073741899 | 1073741921 => Some(2), // PageUp / keypad9
            1073741903 | 1073741918 => Some(3), // Right / keypad6
            1073741902 | 1073741915 => Some(4), // PageDown / keypad3
            1073741905 | 1073741914 => Some(5), // Down / keypad2
            1073741901 | 1073741913 => Some(6), // End / keypad1
            1073741904 | 1073741916 => Some(7), // Left / keypad4
            1073741898 | 1073741919 => Some(8), // Home / keypad7
            _ => None,
        };
        let mut state = self.prepared.state.clone();
        let mut party = self.prepared.party.clone();
        let boundary = if key == 9 {
            Boundary::Turn(state.select_next().map_err(|e| format!("turn:{e:?}"))?)
        } else if let Some(direction) = direction {
            if state.actors[state.current][7] != 1 {
                return Err(
                    "selected actor belongs to AI; player movement is unavailable at this boundary"
                        .into(),
                );
            }
            match state
                .plan_step(direction)
                .map_err(|e| format!("movement:{e:?}"))?
            {
                MovementRequest::Blocked => Boundary::Input,
                MovementRequest::Attack(target) => {
                    let current = state.current;
                    let Some(outcome) = state
                        .attack(current, target, self.prepared.attack_context)
                        .map_err(|e| format!("attack:{e:?}"))?
                    else {
                        return Ok(());
                    };
                    state
                        .apply_attack_progress(&outcome, &mut party)
                        .map_err(|e| format!("progress:{e:?}"))?;
                    Boundary::AttackPresentation(outcome)
                }
                request @ MovementRequest::Step { .. } => {
                    let MovementRequest::Step {
                        ref departure_reactions,
                        ..
                    } = request
                    else {
                        unreachable!()
                    };
                    if !departure_reactions.is_empty() {
                        Boundary::DepartureReactions(request)
                    } else {
                        let arrivals = state
                            .commit_step(&request)
                            .map_err(|e| format!("commit:{e:?}"))?;
                        if arrivals.is_empty() {
                            Boundary::MovementPresentation
                        } else {
                            Boundary::ArrivalReactions(arrivals)
                        }
                    }
                }
            }
        } else {
            return Ok(());
        };
        self.prepared.state = state;
        self.prepared.party = party;
        self.boundary = boundary;
        self.camera();
        self.message = match &self.boundary {
            Boundary::Input => "Blocked square; input remains available".into(),
            _ => format!(
                "Stopped before original {:?}; F7 exports; Esc returns",
                self.boundary
            ),
        };
        Ok(())
    }
    pub fn export(&self, root: &Path) -> Result<PathBuf, Box<dyn Error>> {
        let stamp = SystemTime::now().duration_since(UNIX_EPOCH)?.as_nanos();
        let folder = root
            .join("runtime/native/combat")
            .join(format!("{stamp}-{}", std::process::id()));
        fs::create_dir_all(folder.parent().ok_or("combat export parent")?)?;
        fs::create_dir(&folder)?;
        let pixels = self.frame()?;
        fs::write(folder.join("indexed.bin"), &pixels)?;
        fs::write(
            folder.join("palette6.bin"),
            self.resources
                .palette
                .triplets
                .iter()
                .flatten()
                .copied()
                .collect::<Vec<_>>(),
        )?;
        let mut rgb = fs::File::create(folder.join("frame.ppm"))?;
        rgb.write_all(b"P6\n320 200\n255\n")?;
        for i in pixels {
            rgb.write_all(&self.resources.palette.preview_rgb(i)?)?;
        }
        let s = &self.prepared.state;
        fs::write(folder.join("state.txt"),format!("Prepared-state combat inspection; NOT a game save.\nboundary={:?}\ncurrent={} allowance={} round={} rng={:08x}\nactors={:?}\nclasses={:?}\noccupancy={:?}\nparty={:?}\n",self.boundary,s.current,s.remaining,s.round,s.rng.state,s.actors,s.classes,s.occupancy,self.prepared.party))?;
        Ok(folder)
    }
}

pub fn run(
    root: &Path,
    window: &mut Window,
    snapshot: &Path,
    frames: Option<usize>,
    check: bool,
) -> Result<(), Box<dyn Error>> {
    let mut session = CombatSession::new(
        root,
        PreparedBattle::from_dos_snapshot(&fs::read(snapshot)?)?,
    )?;
    eprintln!("Prepared-state combat inspection: original-resource idle field, directional input/Tab; stops at unscheduled presentation. Bottom status/actions, equipment and live-world entry incomplete.");
    if check {
        let before = session.prepared.state.clone();
        session.key(1073741899)?; // Real input handler: PageUp / original scan49.
        if session.prepared.state == before {
            return Err("combat check input did not change state".into());
        }
        let frame = session.frame()?;
        window.present(&session.colors(&frame)?)?;
        let after = session.prepared.state.clone();
        session.key(1073741905)?;
        if after != session.prepared.state {
            return Err("combat pending boundary accepted another action".into());
        }
        println!(
            "Native combat SDL: input/state/render and pending boundary passed: {:?}",
            session.boundary
        );
        return Ok(());
    }
    let mut count = 0;
    loop {
        for input in window.poll() {
            match input {
                Input::Quit | Input::Key(27) => return Ok(()),
                Input::Key(1073741888) => {
                    eprintln!("Combat export: {}", session.export(root)?.display())
                }
                Input::Key(key) => {
                    if let Err(error) = session.key(key) {
                        session.message = error.to_string();
                    }
                }
                _ => {}
            }
        }
        let s = &session.prepared.state;
        window.title(&format!(
            "Combat inspection | actor{} HP{} allowance{} | {}",
            s.current,
            s.actors[s.current][0],
            s.remaining,
            if session.message.is_empty() {
                "Arrows/keypad move; Tab selects; F7 exports; Esc returns"
            } else {
                &session.message
            }
        ))?;
        let frame = session.frame()?;
        window.present(&session.colors(&frame)?)?;
        count += 1;
        if frames.is_some_and(|n| count >= n) {
            return Ok(());
        }
        std::thread::sleep(Duration::from_millis(16));
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    fn root() -> PathBuf {
        Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..")
    }
    fn capture(name: &str) -> Vec<u8> {
        fs::read(
            root()
                .join("analysis/phase-five/combat-runtime-20261020/capture")
                .join(format!("{name}-DS.BIN")),
        )
        .unwrap()
    }
    #[test]
    fn live_party_factory_reaches_authentic_initial_turn_and_keeps_presentation_pending() {
        let ds = capture("COMBAT-PRE");
        let w = |at| i16::from_le_bytes([ds[at], ds[at + 1]]);
        let mut state = CombatState::new(LaleRng {
            state: u32::from_le_bytes(ds[0x94c4..0x94c8].try_into().unwrap()),
        });
        state.actors = std::array::from_fn(|i| std::array::from_fn(|k| w(0xa08a + 40 * i + 2 * k)));
        state.classes =
            std::array::from_fn(|i| std::array::from_fn(|k| w(0x9f1a + 46 * i + 2 * k)));
        state.terrain = std::array::from_fn(|i| w(0xc8ee + 2 * i));
        let party = PartyProgress {
            numeric: std::array::from_fn(|p| {
                std::array::from_fn(|k| w(0x99a6 + 92 * (p + 1) + 2 * k))
            }),
            trackers: std::array::from_fn(|p| {
                std::array::from_fn(|k| w(0x9902 + 34 * (p + 1) + 2 * k))
            }),
            modifiers: std::array::from_fn(|p| {
                std::array::from_fn(|k| w(0x9b74 + 36 * (p + 1) + 2 * k))
            }),
        };
        let context = EntryContext {
            position: [w(0xb9f3) as u16, w(0xb9f1) as u16],
            facing: 0,
            difficulty: ds[0xbb39],
            hand: w(0xd5b6),
            music: lale_core::combat_entry::MusicGates {
                audio_enabled: ds[0x73d0] != 0,
                combat_music: ds[0xbb37] != 0,
            },
            preceding_terrain: std::array::from_fn(|i| w(0xc8b4 + 2 * i)),
        };
        let request = EncounterRequest {
            prefix: 0,
            groups: std::array::from_fn(|i| [w(0x5be0 + 6 * i) as u8, w(0x5be2 + 6 * i) as u8]),
        };
        let bytes = fs::read(root().join("lale/FRPOS.CKD")).unwrap();
        let bank = Flib::parse(&bytes).unwrap();
        let map = PcMap::parse(bank.member("PC1").unwrap().payload).unwrap();
        let (prepared, music) =
            PreparedBattle::from_live_party(&root(), &map, request, &context, party, state)
                .unwrap();
        assert_eq!(music.unwrap().module_id, 16);
        let actual_input = capture("INPUT0");
        let selected = i16::from_le_bytes(actual_input[0xd5de..0xd5e0].try_into().unwrap());
        assert_eq!(prepared.state.current, selected as usize);
        assert_eq!(
            prepared.state.rng.state, 0x3d0c9906,
            "stop before turn-owned speech/pitch draws"
        );
        let mut session = CombatSession::new(&root(), prepared).unwrap();
        assert_eq!(
            session.boundary,
            Boundary::Turn(TurnBoundary::Actor(selected as usize))
        );
        let before = session.prepared.state.clone();
        session.key(1073741905).unwrap();
        assert_eq!(session.prepared.state, before);
        assert_eq!(session.frame().unwrap().len(), 64000);
    }
    #[test]
    fn input_attack_updates_real_state_and_renders_then_stops_before_presentation() {
        let mut session = CombatSession::new(
            &root(),
            PreparedBattle::from_dos_snapshot(&capture("P01-BEFORE")).unwrap(),
        )
        .unwrap();
        let before = session.frame().unwrap();
        let rng = session.prepared.state.rng;
        session.key(1073741899).unwrap();
        let Boundary::AttackPresentation(outcome) = session.boundary else {
            panic!("physical presentation boundary expected")
        };
        assert_eq!(
            (outcome.raw_damage, outcome.hit_roll, outcome.damage),
            (3, 1, 2)
        );
        let after = PreparedBattle::from_dos_snapshot(&capture("P01-AFTER")).unwrap();
        assert_eq!(session.prepared.state.actors, after.state.actors);
        assert_eq!(session.prepared.state.remaining, after.state.remaining);
        let mut expected = rng;
        expected.next_dos();
        expected.next_dos();
        assert_eq!(
            session.prepared.state.rng, expected,
            "presentation pitch has not run"
        );
        assert_ne!(
            session.frame().unwrap(),
            before,
            "source facing changes visible sprite"
        );
        let state = session.prepared.state.clone();
        session.key(1073741905).unwrap();
        session.key(9).unwrap();
        assert_eq!(
            session.prepared.state, state,
            "no action can bypass pending presentation"
        );
    }
    #[test]
    fn malformed_snapshot_and_unsupported_action_do_not_mutate_session() {
        assert!(PreparedBattle::from_dos_snapshot(&[0; 10]).is_err());
        assert!(PreparedBattle::from_dos_snapshot(&[0; 65536]).is_err());
        let mut session = CombatSession::new(
            &root(),
            PreparedBattle::from_dos_snapshot(&capture("P01-BEFORE")).unwrap(),
        )
        .unwrap();
        let class = session.prepared.state.actors[session.prepared.state.current][3] as usize;
        session.prepared.state.classes[class][7] = 201; // Unsupported offhand.
        let state = session.prepared.state.clone();
        assert!(session.key(1073741899).is_err());
        assert_eq!(session.prepared.state, state);
        assert_eq!(session.boundary, Boundary::Input);
    }
    #[test]
    fn directional_input_matches_original_dos_step_before_presentation_rng() {
        let cap = root().join("analysis/phase-five/first-combat-20261020/capture");
        let before = fs::read(cap.join("BATTLE-INPUT0-DS.BIN")).unwrap();
        let after = fs::read(cap.join("MOVE-DOWN-AFTER-DS.BIN")).unwrap();
        let mut session =
            CombatSession::new(&root(), PreparedBattle::from_dos_snapshot(&before).unwrap())
                .unwrap();
        let rng = session.prepared.state.rng;
        session.key(1073741905).unwrap();
        assert_eq!(session.boundary, Boundary::MovementPresentation);
        let expected = PreparedBattle::from_dos_snapshot(&after).unwrap();
        assert_eq!(session.prepared.state.actors, expected.state.actors);
        assert_eq!(session.prepared.state.occupancy, expected.state.occupancy);
        assert_eq!(session.prepared.state.remaining, expected.state.remaining);
        assert_eq!(
            session.prepared.state.rng, rng,
            "movement kernel itself owns no pitch draw"
        );
        let mut presented = rng;
        presented.next_dos();
        assert_eq!(
            presented, expected.state.rng,
            "original later presentation consumes one draw"
        );
        assert_eq!(session.frame().unwrap().len(), 64000);
    }
}
