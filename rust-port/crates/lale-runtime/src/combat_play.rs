//! Continuous host for the recovered ordinary physical-combat subset.
//! The prepared-state inspector remains separate. No retained DS is runtime input.
use crate::{
    combat_session::{Boundary, CombatSession, PreparedBattle},
    sdl_window::{Input, Window},
};
use lale_assets::{
    combat_party_tables::CombatPartyTables,
    decode_cmp,
    world_ui::{Font, TextRun},
    Flib, IndexedImage,
};
use lale_core::{
    combat::*,
    combat_equipment::{self, Position},
    combat_party,
    combat_writeback::CombatWriteback,
    world_tick::WorldTickState,
};
use std::{
    collections::VecDeque,
    error::Error,
    path::Path,
    time::{Duration, Instant},
};

type Result<T> = std::result::Result<T, Box<dyn Error>>;
#[derive(Clone, Debug)]
enum Work {
    Turn(TurnBoundary),
    Control,
    Ai,
    Step(u8, Vec<u8>),
    Commit(MovementRequest),
    Attack {
        attacker: usize,
        target: usize,
        reaction: bool,
        departure: bool,
    },
    PoseDone(usize),
    MoveDone(bool),
}
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
struct InventorySelection {
    slot: usize,
    destination: Option<Position>,
}

pub struct LiveBattle {
    ui: lale_assets::combat_ui::CombatUi,
    inventory: Option<InventorySelection>,
    debug_overlay: bool,
    hover: Option<[i16; 2]>,
    feedback: String,
    pub session: CombatSession,
    work: VecDeque<Work>,
    until: u32,
    pub clock: [i16; 3],
    pub result: Option<BattleResult>,
    pub stopped: Option<String>,
    exe: Vec<u8>,
    tables: CombatPartyTables,
    font: IndexedImage,
    uppercase: IndexedImage,
    pub actions: usize,
    pub enemy_actions: usize,
    pub enemy_attacks: usize,
    pub last_action: String,
    last_outcome: Option<AttackOutcome>,
    pub party_text: Option<[[u8; 74]; 4]>,
    /// Original startup defaults (7fc5..7fda), independent of host PCM mute.
    audio_enabled: bool,
    speech_enabled: bool,
    sound_inflight: bool,
    voice_wait: Option<TurnBoundary>,
    presentation_speed: u8,
    pub music: Option<lale_assets::combat_initialization::EntryMusic>,
    audio: Option<crate::native_audio::Audio>,
    audio_ticket: Option<u64>,
    root: std::path::PathBuf,
}
impl LiveBattle {
    pub fn new(root: &Path, prepared: PreparedBattle, clock: [i16; 3]) -> Result<Self> {
        let turn = prepared.initial_boundary.clone();
        let exe = std::fs::read(root.join("lale/IST.EXE"))?;
        let bytes = std::fs::read(root.join("lale/IVIR.CKD"))?;
        let bank = Flib::parse(&bytes)?;
        let font = decode_cmp(bank.member("DENEYX.CMP").ok_or("missing font")?.payload)?;
        let uppercase = decode_cmp(bank.member("IREM6.CMP").ok_or("missing font")?.payload)?;
        let mut this = Self {
            ui: lale_assets::combat_ui::CombatUi::load(root, prepared.appearances)?,
            inventory: None,
            debug_overlay: false,
            hover: None,
            feedback: String::new(),
            tables: CombatPartyTables::read(&exe)?,
            exe,
            session: CombatSession::new(root, prepared)?,
            work: VecDeque::new(),
            until: 0,
            clock,
            result: None,
            stopped: None,
            font,
            uppercase,
            actions: 0,
            enemy_actions: 0,
            enemy_attacks: 0,
            last_action: String::new(),
            last_outcome: None,
            party_text: None,
            audio_enabled: true,
            speech_enabled: true,
            sound_inflight: false,
            voice_wait: None,
            presentation_speed: 5,
            music: None,
            audio: None,
            audio_ticket: None,
            root: root.into(),
        };
        if let Boundary::Turn(turn) = turn {
            this.work.push_back(Work::Turn(turn));
        } else {
            this.work.push_back(Work::Control);
        }
        Ok(this)
    }
    pub fn attach_audio(&mut self, audio: crate::native_audio::Audio) -> Result<()> {
        audio.preload(&self.root)?;
        if let Some(music) = &self.music {
            audio.music(&self.root, &music.member_name)?;
        }
        self.audio = Some(audio);
        Ok(())
    }
    pub fn input_ready(&self) -> bool {
        self.work.is_empty()
            && self.result.is_none()
            && self.stopped.is_none()
            && self.voice_wait.is_none()
            && self.session.prepared.state.actors[self.session.prepared.state.current][7] == 1
    }
    fn push_front(&mut self, work: impl IntoIterator<Item = Work>) {
        let items: Vec<_> = work.into_iter().collect();
        for w in items.into_iter().rev() {
            self.work.push_front(w);
        }
    }
    fn refresh(&mut self) -> Result<()> {
        let p = &mut self.session.prepared;
        let c = p.state.actors[p.state.current][3] as usize;
        if (1..=4).contains(&c) {
            combat_party::refresh(
                &mut p.party.numeric[c - 1],
                &p.state.actors[p.state.current],
                &mut p.state.classes[c],
                &self.tables.borrowed(),
                1,
            )
            .map_err(|e| format!("combat status refresh: {e:?}"))?;
        }
        Ok(())
    }
    fn camera(&mut self) {
        let p = &mut self.session.prepared;
        let a = p.state.actors[p.state.current];
        p.camera = [(a[5] - 3).clamp(0, 20), (a[4] - 3).clamp(0, 20)];
        p.active_entity = p.state.current as i16;
    }
    /// 214e ->192d: only the source lookup's0x10 pitch gate consumes RNG.
    /// Native mute/device settings never change the source enable gates or draws.
    fn sound(&mut self, id: usize) -> Result<()> {
        if id == 0 || !self.audio_enabled || !self.speech_enabled {
            return Ok(());
        }
        let def = crate::native_audio::SoundDef::read(&self.exe, id)?;
        let draw = if def.flags & 0x10 != 0 {
            Some(self.session.prepared.state.sound_pitch_draw())
        } else {
            None
        };
        self.sound_inflight = true;
        if let Some(audio) = &self.audio {
            let mut base = def.rate;
            if def.flags & 0x20 != 0 {
                let s = &self.session.prepared.state;
                let actor = if id == 2 {
                    self.last_outcome.map_or(s.current, |o| o.target)
                } else {
                    s.current
                };
                let voice = if actor > 24 {
                    actor as u16 + 40
                } else {
                    let class = s.actors[actor][3] as usize;
                    // DS5bc0 is a live encounter table, not executable data.
                    *self
                        .session
                        .prepared
                        .enemy_groups
                        .get(class.checked_sub(5).ok_or("enemy voice class below5")?)
                        .ok_or("enemy voice class above7")?
                        .as_ref()
                        .ok_or("missing live enemy voice group")? as u16
                };
                base = lale_assets::sound::actor_rate(base, voice, &self.exe)?;
            }
            let adjusted = crate::native_audio::SoundDef { rate: base, ..def };
            match audio.effect(&self.root, id, adjusted.pitched(draw)) {
                Ok(ticket) => self.audio_ticket = Some(ticket),
                Err(e) => {
                    self.audio_ticket = None;
                    eprintln!("Combat audio fallback (Esc at voice wait): {e}");
                }
            }
        }
        Ok(())
    }
    pub fn key(&mut self, key: i32) -> Result<()> {
        if key == 1073741893 {
            self.debug_overlay = !self.debug_overlay;
            return Ok(());
        }
        if self.voice_wait.is_some() {
            if key == 27 {
                // Original15dc:1d1b accepts Escape and returns1; retained RUN3
                // observed this exact continuation. No guessed sample duration.
                if let Some(audio) = &self.audio {
                    audio.stop_effect();
                }
                self.audio_ticket = None;
                let turn = self.voice_wait.take().unwrap();
                self.sound_inflight = false;
                self.work.push_front(Work::Turn(turn));
            }
            return Ok(());
        }
        if !self.input_ready() {
            return Ok(());
        }
        if self.inventory.is_some() {
            return self.inventory_key(key);
        }
        match key {
            105 => {
                // Original I, starts at first nonempty carried slot.
                let p = self.session.prepared.state.current - 25;
                let slot = self.session.prepared.party.numeric[p][35..45]
                    .iter()
                    .position(|&v| v != 0)
                    .unwrap_or(0)
                    + 1;
                self.refresh()?;
                self.inventory = Some(InventorySelection {
                    slot,
                    destination: None,
                });
                self.feedback.clear();
                self.hover = None;
                return Ok(());
            }
            113 | 119 | 101 => {
                let position = match key {
                    113 => Position::Primary,
                    119 => Position::Secondary,
                    _ => Position::Clothing,
                };
                self.change_equipment(None, position)?;
                return Ok(());
            }
            _ => {}
        }
        self.feedback.clear();
        self.hover = None;
        let direction = match key {
            1073741906 | 1073741920 => 1,
            1073741899 | 1073741921 => 2,
            1073741903 | 1073741918 => 3,
            1073741902 | 1073741915 => 4,
            1073741905 | 1073741914 => 5,
            1073741901 | 1073741913 => 6,
            1073741904 | 1073741916 => 7,
            1073741898 | 1073741919 => 8,
            9 => {
                let turn = self
                    .session
                    .prepared
                    .state
                    .select_next()
                    .map_err(|e| format!("scheduler:{e:?}"))?;
                self.work.push_back(Work::Turn(turn));
                return Ok(());
            }
            _ => return Ok(()),
        };
        self.work.push_back(Work::Step(direction, vec![]));
        Ok(())
    }
    /// One original action boundary per native poll, never per framebuffer redraw.
    pub fn poll(&mut self, counter: u32) -> Result<()> {
        if let (Some(audio), Some(ticket)) = (&self.audio, self.audio_ticket) {
            if audio.finished(ticket) {
                self.sound_inflight = false;
                self.audio_ticket = None;
                if let Some(turn) = self.voice_wait.take() {
                    self.work.push_front(Work::Turn(turn));
                }
            }
        }
        if self.stopped.is_some()
            || self.result.is_some()
            || (counter.wrapping_sub(self.until) as i32) < 0
        {
            return Ok(());
        }
        let Some(work) = self.work.pop_front() else {
            return Ok(());
        };
        if let Err(error) = self.execute(work, counter) {
            self.stopped = Some(error.to_string());
            self.session.message = format!("Unsupported original boundary: {error}");
        }
        Ok(())
    }
    fn execute(&mut self, work: Work, counter: u32) -> Result<()> {
        match work {
            Work::Turn(TurnBoundary::RoundTick) => {
                let p = &mut self.session.prepared;
                let mut tick = WorldTickState {
                    clock: self.clock,
                    numeric_timers: p.party.numeric.map(|n| n[23..28].try_into().unwrap()),
                    actor_timers: std::array::from_fn(|i| {
                        p.state.actors[i + 25][11..16].try_into().unwrap()
                    }),
                };
                tick.advance(1);
                self.clock = tick.clock;
                for i in 0..4 {
                    p.party.numeric[i][23..28].copy_from_slice(&tick.numeric_timers[i]);
                    p.state.actors[i + 25][11..16].copy_from_slice(&tick.actor_timers[i]);
                }
                p.state.resume_round().map_err(|e| format!("round:{e:?}"))?;
                let next = p
                    .state
                    .select_next()
                    .map_err(|e| format!("round select:{e:?}"))?;
                self.work.push_front(Work::Turn(next));
            }
            Work::Turn(TurnBoundary::Finished(result)) => {
                self.finish(result)?;
            }
            Work::Turn(TurnBoundary::Actor(actor)) => {
                if self.sound_inflight {
                    self.voice_wait = Some(TurnBoundary::Actor(actor));
                    self.session.message = if self.audio_ticket.is_some() {
                        "Original voice playing"
                    } else {
                        "Unsupported original voice: Esc fallback"
                    }
                    .into();
                    return Ok(());
                }
                self.camera();
                self.refresh()?;
                let p = &mut self.session.prepared;
                if p.state.actors[actor][7] == 1 && actor > 24 {
                    // Original1b6d chooses one of four sex-specific turn voices.
                    let sex = p.party.numeric[actor - 25][2];
                    let voice = p.state.rng.scaled(4) as usize + if sex == 1 { 25 } else { 29 };
                    self.sound(voice)?;
                }
                self.session.message = format!("Actor {actor}: turn entry");
                self.until = counter.wrapping_add(
                    10 * u32::from(self.presentation_speed)
                        * (u32::from(self.presentation_speed) + 1),
                );
                self.work.push_front(Work::Control);
            }
            Work::Control => {
                let s = &mut self.session.prepared.state;
                if let Some(result) = s.result() {
                    self.finish(result)?;
                } else if s.remaining <= 0 || s.actors[s.current][0] <= 0 {
                    let turn = s.select_next().map_err(|e| format!("next turn:{e:?}"))?;
                    self.work.push_front(Work::Turn(turn));
                } else if s.actors[s.current][7] == 2 {
                    self.work.push_front(Work::Ai);
                } else {
                    self.session.boundary = Boundary::Input;
                }
            }
            Work::Ai => {
                let s = &mut self.session.prepared.state;
                let target = s.actors[s.current][6] as usize;
                if target > 28 {
                    return Err("AI remembered actor outside original table".into());
                }
                let probe = s
                    .line_probe(s.current, s.actors[target][4], s.actors[target][5])
                    .map_err(|e| format!("AI probe:{e:?}"))?;
                match s
                    .physical_ai_decision(probe.clear, false)
                    .map_err(|e| format!("AI:{e:?}"))?
                {
                    PhysicalAiAction::Attack(target) => {
                        s.face_toward(s.current, target)
                            .map_err(|e| format!("AI facing:{e:?}"))?;
                        self.work.push_front(Work::Attack {
                            attacker: s.current,
                            target,
                            reaction: false,
                            departure: false,
                        });
                    }
                    PhysicalAiAction::Approach { directions, .. } => self
                        .work
                        .push_front(Work::Step(directions[0], directions[1..].to_vec())),
                    PhysicalAiAction::NoOpponent => self.work.push_front(Work::Control),
                }
            }
            Work::Step(direction, alternatives) => {
                let s = &mut self.session.prepared.state;
                let before = s.clone();
                let request = s.plan_step(direction).map_err(|e| format!("step:{e:?}"))?;
                self.session.prepared.attack_context.counterattack_enabled = true; //2d39 d5b2=1
                match request {
                    MovementRequest::Blocked => {
                        if let Some((&next, rest)) = alternatives.split_first() {
                            self.work.push_front(Work::Step(next, rest.to_vec()));
                        } else if s.actors[s.current][7] == 2 {
                            // 9668 returns after three failed candidates. Scheduler selects next;
                            // remaining allowance is not artificially spent.
                            let turn = s
                                .select_next()
                                .map_err(|e| format!("AI blocked return:{e:?}"))?;
                            self.work.push_front(Work::Turn(turn));
                        } else {
                            self.session.message = "Blocked square".into();
                            self.feedback = "Blocked square".into();
                            self.work.push_front(Work::Control);
                        }
                    }
                    MovementRequest::Attack(target) => self.work.push_front(Work::Attack {
                        attacker: s.current,
                        target,
                        reaction: false,
                        departure: false,
                    }),
                    request @ MovementRequest::Step { .. } => {
                        let MovementRequest::Step {
                            ref departure_reactions,
                            ..
                        } = request
                        else {
                            unreachable!()
                        };
                        // Reaction effects are supported only by the no-effect physical kernel.
                        // Validate before accepting the move, retaining state on an unsupported path.
                        if departure_reactions
                            .iter()
                            .any(|&a| s.classes[s.actors[a][3] as usize][7] != 0)
                        {
                            *s = before;
                            return Err("offhand departure reaction".into());
                        }
                        let mut tasks: Vec<_> = departure_reactions
                            .iter()
                            .map(|&attacker| Work::Attack {
                                attacker,
                                target: s.current,
                                reaction: true,
                                departure: true,
                            })
                            .collect();
                        tasks.push(Work::Commit(request));
                        self.push_front(tasks);
                    }
                }
            }
            Work::Commit(request) => {
                let s = &mut self.session.prepared.state;
                let arrivals = s
                    .commit_step(&request)
                    .map_err(|e| format!("movement commit:{e:?}"))?;
                let mut tasks: Vec<_> = arrivals
                    .iter()
                    .map(|&attacker| Work::Attack {
                        attacker,
                        target: s.current,
                        reaction: true,
                        departure: false,
                    })
                    .collect();
                tasks.push(Work::MoveDone(arrivals.is_empty()));
                self.push_front(tasks);
                self.actions += 1;
                if self.session.prepared.state.actors[self.session.prepared.state.current][7] == 2 {
                    self.enemy_actions += 1;
                }
                //2d39 camera follows in three-cell increments, unlike0c40
                //turn entry's centered camera. Keep original [A,B] order.
                let p = &mut self.session.prepared;
                let a = p.state.actors[p.state.current];
                for (axis, pos) in [a[5], a[4]].into_iter().enumerate() {
                    if p.camera[axis] + 4 < pos {
                        p.camera[axis] = (p.camera[axis] + 3).min(20);
                    }
                    if pos < p.camera[axis] + 2 {
                        p.camera[axis] = (p.camera[axis] - 3).max(0);
                    }
                }
            }
            Work::MoveDone(play_sound) => {
                if play_sound {
                    let s = &self.session.prepared.state;
                    let a = s.actors[s.current];
                    let terrain = s.terrain
                        [CombatState::cell(a[4], a[5]).map_err(|e| format!("sound cell:{e:?}"))?];
                    // Original2c7b switch table at4c951, ordinary terrain0..9.
                    let id = match terrain {
                        1 | 7 | 8 => 12,
                        3 => 7,
                        4 | 9 => 6,
                        6 => 11,
                        _ => 1,
                    };
                    self.sound(id)?;
                }
                self.refresh()?;
                self.until = counter.wrapping_add(
                    10 * u32::from(self.presentation_speed)
                        * (u32::from(self.presentation_speed) + 1),
                );
                self.work.push_front(Work::Control);
            }
            Work::Attack {
                attacker,
                target,
                reaction,
                departure,
            } => {
                let p = &mut self.session.prepared;
                if p.state.actors[attacker][0] <= 0 || p.state.actors[target][0] <= 0 {
                    return Ok(());
                }
                if reaction {
                    p.state
                        .face_toward(attacker, target)
                        .map_err(|e| format!("reaction facing:{e:?}"))?;
                }
                let context = AttackContext {
                    override_allowance: reaction,
                    departure_reaction: departure,
                    ..p.attack_context
                };
                if let Some(outcome) = p
                    .state
                    .attack(attacker, target, context)
                    .map_err(|e| format!("physical attack:{e:?}"))?
                {
                    p.state
                        .apply_attack_progress(&outcome, &mut p.party)
                        .map_err(|e| format!("attack progress:{e:?}"))?;
                    if outcome.incapacitated {
                        p.party
                            .presentation_progress(p.state.actors[p.state.current][3] as usize, 0)
                            .map_err(|e| format!("action progress:{e:?}"))?;
                    }
                    p.state.actors[attacker][2] += 4; // Original attack pose, reset after wait10.
                    self.session.message = format!(
                        "{attacker} -> {target}: {} (damage {})",
                        match outcome.action {
                            2 => "incapacitated",
                            3 => "hit",
                            4 => "zero damage",
                            _ => "miss",
                        },
                        outcome.damage
                    );
                    self.actions += 1;
                    self.last_action = self.session.message.clone();
                    self.last_outcome = Some(outcome);
                    if attacker <= 24 {
                        self.enemy_actions += 1;
                        self.enemy_attacks += 1;
                    }
                    self.sound(outcome.action as usize)?;
                    self.until = counter.wrapping_add(
                        10 * u32::from(self.presentation_speed)
                            * (u32::from(self.presentation_speed) + 1),
                    );
                    self.work.push_front(Work::PoseDone(attacker));
                    if !reaction {
                        self.work.insert(1, Work::Control);
                    }
                    if outcome.counterattack
                        && !reaction
                        && self.session.prepared.state.remaining == 0
                    {
                        self.work.insert(
                            1,
                            Work::Attack {
                                attacker: target,
                                target: attacker,
                                reaction: true,
                                departure: false,
                            },
                        );
                    }
                } else if !reaction {
                    // Cost exceeds allowance: original ordinary input remains available;
                    // resource-zero AI returns when its attack cannot be paid.
                    let s = &mut self.session.prepared.state;
                    if s.actors[s.current][7] == 2 {
                        let turn = s.select_next().map_err(|e| format!("AI unpaid:{e:?}"))?;
                        self.work.push_front(Work::Turn(turn));
                    } else {
                        self.session.message =
                            "Insufficient movement allowance; Tab advances".into();
                        self.feedback = self.session.message.clone();
                    }
                }
            }
            Work::PoseDone(actor) => {
                self.session.prepared.state.actors[actor][2] -= 4;
                self.refresh()?;
            }
        }
        Ok(())
    }
    fn finish(&mut self, result: BattleResult) -> Result<()> {
        let p = &mut self.session.prepared;
        let write = CombatWriteback {
            derived: std::array::from_fn(|i| {
                let mut b = [0; 46];
                for (k, w) in p.state.classes[i + 1].iter().enumerate() {
                    b[2 * k..2 * k + 2].copy_from_slice(&w.to_le_bytes());
                }
                b
            }),
            actors: std::array::from_fn(|i| {
                let mut b = [0; 40];
                for (k, w) in p.state.actors[i + 25].iter().enumerate() {
                    b[2 * k..2 * k + 2].copy_from_slice(&w.to_le_bytes());
                }
                b
            }),
        };
        let mut numeric = p.party.numeric.map(|row| {
            let mut b = [0; 92];
            for (k, w) in row.iter().enumerate() {
                b[2 * k..2 * k + 2].copy_from_slice(&w.to_le_bytes());
            }
            b
        });
        write.apply(&mut numeric);
        p.party.numeric = combat_party::decode_numeric(&numeric);
        self.result = Some(result);
        self.work.clear();
        self.session.message = format!("{result:?}");
        Ok(())
    }
    pub fn numeric(&self) -> [[u8; 92]; 4] {
        self.session.prepared.party.numeric.map(|n| {
            let mut b = [0; 92];
            for (k, w) in n.iter().enumerate() {
                b[2 * k..2 * k + 2].copy_from_slice(&w.to_le_bytes());
            }
            b
        })
    }
    fn change_equipment(&mut self, slot: Option<usize>, position: Position) -> Result<()> {
        let p = &mut self.session.prepared;
        let actor = p.state.current;
        let c = p.state.actors[actor][3] as usize;
        let result = if let Some(slot) = slot {
            combat_equipment::equip(
                &mut p.party.numeric[actor - 25],
                &p.state.actors[actor],
                &mut p.state.classes[c],
                &self.tables.borrowed(),
                slot,
                position,
            )
        } else {
            combat_equipment::unequip(
                &mut p.party.numeric[actor - 25],
                &p.state.actors[actor],
                &mut p.state.classes[c],
                &self.tables.borrowed(),
                position,
            )
        };
        self.feedback = match result {
            Ok(()) => {
                self.inventory = None;
                format!(
                    "{:?} {} | SHZ {}",
                    position,
                    if slot.is_some() {
                        "equipped"
                    } else {
                        "released"
                    },
                    p.state.classes[c][6]
                )
            }
            Err(combat_equipment::EquipmentError::Unsupported) => {
                "That equipment interaction is not supported yet".into()
            }
            Err(e) => match e {
                combat_equipment::EquipmentError::Empty => "Selected slot is empty",
                combat_equipment::EquipmentError::AlreadyEquipped => {
                    "Already equipped; Q releases main hand"
                }
                combat_equipment::EquipmentError::WrongKind => {
                    "Item cannot be equipped in that position"
                }
                combat_equipment::EquipmentError::HandsOccupied => {
                    "Two-handed item needs an empty offhand"
                }
                _ => "Equipment values unavailable for this item",
            }
            .into(),
        };
        Ok(())
    }
    fn inventory_key(&mut self, key: i32) -> Result<()> {
        let mut selection = self.inventory.unwrap();
        if key == 27 {
            if selection.destination.is_some() {
                selection.destination = None;
                self.inventory = Some(selection);
            } else {
                self.inventory = None;
            }
            self.feedback.clear();
            return Ok(());
        }
        if let Some(dest) = selection.destination {
            match key {
                1073741903 | 1073741904 => {
                    let next = if key == 1073741903 {
                        (dest.word() - 30 + 1) % 3
                    } else {
                        (dest.word() - 30 + 2) % 3
                    };
                    selection.destination =
                        Some([Position::Primary, Position::Secondary, Position::Clothing][next]);
                }
                13 | 1073741912 => return self.change_equipment(Some(selection.slot), dest),
                _ => {}
            }
        } else {
            match key {
                1073741903 => selection.slot = selection.slot % 10 + 1,
                1073741904 => selection.slot = (selection.slot + 8) % 10 + 1,
                1073741906 | 1073741905 => selection.slot = (selection.slot + 4) % 10 + 1,
                13 | 1073741912 => selection.destination = Some(Position::Primary),
                _ => {}
            }
        }
        self.feedback.clear();
        self.inventory = Some(selection);
        Ok(())
    }
    pub fn motion(&mut self, x: i32, y: i32) {
        self.hover = None;
        if !self.input_ready() || self.inventory.is_some() || y >= 146 || y < 16 {
            return;
        }
        let camera = self.session.prepared.camera;
        // Invert the recovered ground anchor: diamond centre=(x+21,y+17),
        // basis A=(14,14), B=(30,0). Native pointer feedback uses tile10.
        let a = ((y - 41) as f32 / 14.0).round() as i16;
        let b = ((x - 31 - i32::from(14 * a)) as f32 / 30.0).round() as i16;
        if (0..=6).contains(&a) && (0..=6).contains(&b) {
            self.hover = Some([camera[0] + a, camera[1] + b]);
        }
    }
    pub fn click(&mut self, x: i32, y: i32) -> Result<()> {
        if !self.input_ready() {
            return Ok(());
        }
        if (165..=196).contains(&y) && (236..=318).contains(&x) {
            let col = (x - 236) / 17;
            let row = (y - 165) / 17;
            if col < 5 && (x - 236) % 17 < 15 && (y - 165) % 17 < 15 {
                self.inventory = Some(InventorySelection {
                    slot: (row * 5 + col + 1) as usize,
                    destination: None,
                });
                self.feedback.clear();
            }
            return Ok(());
        }
        if (165..180).contains(&y) && (59..108).contains(&x) && (x - 59) % 17 < 15 {
            let pos = [Position::Primary, Position::Secondary, Position::Clothing]
                [((x - 59) / 17) as usize];
            if let Some(i) = self.inventory {
                return self.change_equipment(Some(i.slot), pos);
            }
            return self.change_equipment(None, pos);
        }
        if self.inventory.is_some() {
            return Ok(());
        }
        // Original7250 regions21..28, main dispatch scan47/48/49/4b/4d/4f/50/51.
        let buttons = [
            ([2, 79, 12, 86], 1073741898),
            ([17, 79, 27, 86], 1073741906),
            ([31, 78, 40, 85], 1073741899),
            ([14, 91, 25, 99], 1073741904),
            ([43, 90, 52, 99], 1073741903),
            ([26, 103, 37, 110], 1073741901),
            ([41, 103, 52, 110], 1073741905),
            ([56, 103, 65, 110], 1073741902),
        ];
        for ([x0, y0, x1, y1], key) in buttons {
            if (x0..=x1).contains(&x) && (y0..=y1).contains(&y) {
                return self.key(key);
            }
        }
        if (146..=160).contains(&y) && (130..=181).contains(&x) {
            return self.key(9);
        }
        self.motion(x, y);
        if let Some([a, b]) = self.hover {
            let s = &self.session.prepared.state;
            let actor = s.actors[s.current];
            let (dx, dy) = (b - actor[4], a - actor[5]);
            // Same directions as CombatState; only adjacent native pointer actions.
            let dirs = [
                (0, -1),
                (1, -1),
                (1, 0),
                (1, 1),
                (0, 1),
                (-1, 1),
                (-1, 0),
                (-1, -1),
            ];
            if let Some(i) = dirs.iter().position(|&d| d == (dx, dy)) {
                self.feedback.clear();
                self.work.push_back(Work::Step((i + 1) as u8, vec![]));
            } else {
                self.feedback = "Select an adjacent square or use arrows/keypad".into();
            }
        }
        Ok(())
    }
    fn actor_label(&self, actor: usize) -> Vec<u8> {
        if (25..=28).contains(&actor) {
            if let Some(text) = &self.party_text {
                let name = &text[actor - 25][..37];
                let end = name.iter().position(|&c| c == 0).unwrap_or(37);
                if end > 0 {
                    return name[..end].to_vec();
                }
            }
            return format!("Party {}", actor - 24).into_bytes();
        }
        let c = self.session.prepared.state.actors[actor][3] as usize;
        let species = c
            .checked_sub(5)
            .and_then(|i| self.session.prepared.enemy_groups.get(i))
            .and_then(|&v| v);
        self.ui.enemy_name(species.unwrap_or(0)).to_vec()
    }
    pub fn frame(&self) -> Result<Vec<u8>> {
        self.frame_with_debug(self.debug_overlay)
    }
    fn frame_with_debug(&self, debug: bool) -> Result<Vec<u8>> {
        let mut pixels = self.session.frame_target(self.hover)?;
        let p = &self.session.prepared;
        let s = &p.state;
        self.ui.render(
            &mut pixels,
            &lale_assets::combat_ui::PanelState {
                party: &p.party.numeric,
                actors: &s.actors,
                classes: &s.classes,
                actor: s.current,
                remaining: s.remaining,
                names: self.party_text.as_ref(),
                selected: self
                    .inventory
                    .map(|i| i.destination.map_or(i.slot, |d| 11 + d.word() - 30)),
            },
        )?;
        // Native guidance/status uses the recovered small font, kept separate
        // from the DOS-matched panel. It is presentation only, never simulation.
        let status = if let Some(i) = self.inventory {
            let raw = p.party.numeric[s.current - 25][34 + i.slot];
            let name = self.ui.item_description(raw);
            self.ui.text(&mut pixels, &name, 24, 157, 255);
            match i.destination {
                None => "I: esya | arrows select; Enter equip; Esc close".to_string(),
                Some(d) => format!(
                    "{} | Left/Right; Enter equip; Esc cancel",
                    match d {
                        Position::Primary => "Main hand",
                        Position::Secondary => "Offhand",
                        Position::Clothing => "Clothing",
                    }
                ),
            }
        } else if self.input_ready() {
            format!(
                "Sira {} | HP {} | HRK {} | I esya; Q/W/E birak",
                s.current - 24,
                s.actors[s.current][0],
                s.remaining
            )
        } else {
            format!("Tur {} | {}", s.round, self.session.message)
        };
        for y in 1..8 {
            pixels[y * 320 + 2..y * 320 + 318].fill(0);
        }
        self.ui.text(
            &mut pixels,
            &status.as_bytes()[..status.len().min(78)],
            4,
            2,
            255,
        );
        let info = if !self.feedback.is_empty() {
            self.feedback.clone()
        } else if let Some([a, b]) = self.hover {
            let actor = s.occupancy[b as usize * 28 + a as usize] as usize;
            if actor > 0 {
                format!(
                    "Target {} HP {} | adjacent click moves/attacks",
                    actor, s.actors[actor][0]
                )
            } else {
                "Adjacent click moves; arrows/keypad; Tab next".into()
            }
        } else {
            self.last_action.clone()
        };
        let mut visible_info = info.as_bytes().to_vec();
        if self.feedback.is_empty() && self.hover.is_none() {
            if let Some(outcome) = self.last_outcome {
                visible_info = self.actor_label(outcome.attacker);
                visible_info.extend_from_slice(b" -> ");
                visible_info.extend_from_slice(&self.actor_label(outcome.target));
                visible_info.extend_from_slice(
                    format!(
                        ": {}",
                        match outcome.action {
                            2 => "defeated",
                            3 => "hit",
                            4 => "no damage",
                            _ => "miss",
                        }
                    )
                    .as_bytes(),
                );
                if outcome.damage > 0 {
                    visible_info.extend_from_slice(format!(" -{}", outcome.damage).as_bytes());
                }
            }
        }
        if s.current <= 24 {
            let name = self.actor_label(s.current);
            self.ui.text(&mut pixels, &name, 60, 192, 0);
            self.ui.text(&mut pixels, &name, 60, 191, 220);
        }
        if !visible_info.is_empty() {
            for y in 9..16 {
                pixels[y * 320 + 2..y * 320 + 318].fill(0);
            }
            self.ui.text(
                &mut pixels,
                &visible_info[..visible_info.len().min(78)],
                4,
                10,
                220,
            );
        }
        if debug {
            let font = Font {
                proportional: &self.font,
                uppercase: &self.uppercase,
            };
            for i in 0..4 {
                font.draw(
                    &mut pixels,
                    &TextRun {
                        text: format!("{} hp {}", i + 1, s.actors[i + 25][0]).into_bytes(),
                        x: 5,
                        y: 148 + 12 * i as i16,
                        color: if s.current == i + 25 { 255 } else { 220 },
                    },
                )?;
            }
        }
        Ok(pixels)
    }
    pub fn waiting_voice(&self) -> bool {
        self.voice_wait.is_some()
    }
    pub fn title(&self) -> String {
        let s = &self.session.prepared.state;
        format!("Battle | actor{} HP{} moves{} round{} | {} | {} | arrows/keypad move/attack; Tab next; I inventory; Enter equip; Q/W/E release; F12 debug; F7 export",s.current,s.actors[s.current][0],s.remaining,s.round,self.stopped.as_ref().unwrap_or(&self.session.message),self.last_action)
    }
    pub fn export(&self, root: &Path) -> Result<std::path::PathBuf> {
        use std::io::Write;
        let folder = self.session.export(root)?;
        let frame = self.frame_with_debug(false)?;
        if self.debug_overlay {
            std::fs::write(folder.join("debug-indexed.bin"), self.frame()?)?;
        }
        if let Some(text) = self.party_text {
            std::fs::write(
                folder.join("party-name-aux.bin"),
                text.into_iter().flatten().collect::<Vec<_>>(),
            )?;
        }
        std::fs::write(folder.join("indexed.bin"), &frame)?;
        let mut ppm = std::fs::File::create(folder.join("frame.ppm"))?;
        ppm.write_all(b"P6\n320 200\n255\n")?;
        for color in self.colors(&frame)? {
            ppm.write_all(&[(color >> 16) as u8, (color >> 8) as u8, color as u8])?;
        }
        std::fs::write(folder.join("live-host.txt"),format!("LIVE native battle, not a game save.\n{}\ninventory={:?} hover={:?} feedback={}\nqueue={:?}\nvoice_wait={:?}\nresult={:?}\nclock={:?}\nactions={} enemy_actions={} enemy_attacks={}\n",self.title(),self.inventory,self.hover,self.feedback,self.work,self.voice_wait,self.result,self.clock,self.actions,self.enemy_actions,self.enemy_attacks))?;
        Ok(folder)
    }
    pub fn colors(&self, pixels: &[u8]) -> Result<Vec<u32>> {
        self.session.colors(pixels)
    }
}

pub enum Exit {
    Victory(LiveBattle),
    Defeat(LiveBattle),
    Quit,
}
pub fn run(root: &Path, window: &mut Window, mut battle: LiveBattle) -> Result<Exit> {
    let audio = crate::native_audio::Audio::shared();
    if let Err(e) = battle.attach_audio(audio) {
        eprintln!("Combat audio unavailable (Esc fallback): {e}");
    }
    let start = Instant::now();
    loop {
        for input in window.poll() {
            match input {
                Input::Quit => return Ok(Exit::Quit),
                Input::Key(1073741888) => {
                    eprintln!("Combat export: {}", battle.export(root)?.display());
                }
                Input::Key(key) => battle.key(key)?,
                Input::Motion(x, y) => battle.motion(x, y),
                Input::Click(x, y) => battle.click(x, y)?,
                Input::RightClick(_, _) if battle.inventory.is_some() => battle.key(27)?,
                _ => {}
            }
        }
        let counter = lale_core::clock::dos_counter(start.elapsed());
        battle.poll(counter)?;
        window.title(&battle.title())?;
        window.present(&battle.colors(&battle.frame()?)?)?;
        if let Some(result) = battle.result {
            return Ok(match result {
                BattleResult::Victory => Exit::Victory(battle),
                BattleResult::Defeat => Exit::Defeat(battle),
            });
        }
        std::thread::sleep(Duration::from_millis(16));
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    fn root() -> std::path::PathBuf {
        Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..")
    }
    fn ds(name: &str) -> Vec<u8> {
        std::fs::read(
            root()
                .join("analysis/phase-five/combat-runtime-20261020/capture")
                .join(format!("{name}-DS.BIN")),
        )
        .unwrap()
    }
    fn battle(name: &str) -> LiveBattle {
        LiveBattle::new(
            &root(),
            PreparedBattle::from_dos_snapshot(&ds(name)).unwrap(),
            [0; 3],
        )
        .unwrap()
    }
    fn settle(b: &mut LiveBattle, now: &mut u32) {
        for _ in 0..2000 {
            *now += 20;
            if b.voice_wait.is_some() {
                b.key(27).unwrap();
            }
            b.poll(*now).unwrap();
            assert!(b.stopped.is_none(), "{:?}", b.stopped);
            if b.input_ready() || b.result.is_some() {
                return;
            }
        }
        panic!("combat failed to return to player input");
    }
    #[test]
    fn continuous_initial_voice_and_six_attacks_match_retained_dos() {
        let mut b = battle("INPUT0");
        b.session.prepared.state.rng.state = 0x3d0c9906;
        b.work = VecDeque::from([Work::Turn(TurnBoundary::Actor(27))]);
        settle(&mut b, &mut 0);
        assert_eq!(b.session.prepared.state.rng.state, 0x4c57823f);
        for name in ["P01", "P02", "P05", "AI-A01", "AI-A02", "AI-A03"] {
            let before = ds(&format!("{name}-BEFORE"));
            let w = |at| i16::from_le_bytes([before[at], before[at + 1]]);
            let mut b = battle(&format!("{name}-BEFORE"));
            b.work = VecDeque::from([Work::Attack {
                attacker: w(0xd56e) as usize,
                target: w(0xd56c) as usize,
                reaction: w(0xd5a4) != 0,
                departure: false,
            }]);
            let expected =
                PreparedBattle::from_dos_snapshot(&ds(&format!("{name}-AFTER"))).unwrap();
            for now in [0, 300] {
                b.poll(now).unwrap();
                assert!(b.stopped.is_none(), "{name}: {:?}", b.stopped);
            }
            assert_eq!(
                b.session.prepared.state.actors, expected.state.actors,
                "{name} actors"
            );
            assert_eq!(
                b.session.prepared.state.rng, expected.state.rng,
                "{name} RNG"
            );
            assert_eq!(
                b.session.prepared.state.remaining, expected.state.remaining,
                "{name} allowance"
            );
            assert_eq!(
                b.session.prepared.party.numeric, expected.party.numeric,
                "{name} progress"
            );
        }
    }
    #[test]
    fn continuous_ai_matches_run3_and_returns_to_input_across_rounds() {
        let mut b = battle("AI0-BEFORE");
        b.work = VecDeque::from([Work::Ai]);
        let mut now = 0;
        for _ in 0..300 {
            b.poll(now).unwrap();
            now += 20;
            assert!(b.stopped.is_none(), "{:?}", b.stopped);
            if b.session.prepared.state.remaining == 0
                && matches!(b.work.front(), Some(Work::Control))
            {
                break;
            }
        }
        let expected = PreparedBattle::from_dos_snapshot(&ds("AI0-AFTER")).unwrap();
        assert_eq!(b.session.prepared.state.rng, expected.state.rng);
        assert_eq!(b.session.prepared.state.actors, expected.state.actors);
        assert_eq!(b.session.prepared.state.occupancy, expected.state.occupancy);
        assert_eq!(b.enemy_actions, 3);
        settle(&mut b, &mut now);
        assert_eq!(b.session.prepared.state.round, 1);
        for _ in 0..8 {
            b.key(9).unwrap();
            settle(&mut b, &mut now);
            if b.result.is_some() {
                break;
            }
        }
        assert!(b.session.prepared.state.round >= 2 || b.result.is_some());
    }
    #[test]
    fn repeated_keys_and_redraw_do_not_repeat_actions_or_rng() {
        let mut b = battle("P01-BEFORE");
        let mut now = 0;
        settle(&mut b, &mut now);
        b.key(1073741899).unwrap();
        let s = b.session.prepared.state.clone();
        b.key(1073741899).unwrap();
        assert_eq!(s, b.session.prepared.state);
        for _ in 0..3 {
            assert_eq!(b.frame().unwrap().len(), 64000);
        }
        assert_eq!(s, b.session.prepared.state);
        settle(&mut b, &mut now);
        assert_eq!(b.actions, 1);
        assert!(b.input_ready());
    }
}

#[cfg(test)]
mod outcome_and_wait_tests {
    use super::*;
    fn root() -> std::path::PathBuf {
        Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..")
    }
    #[test]
    fn fatal_original_attack_reaches_defeat_and_exact_writeback_without_victory() {
        let cap = root().join("analysis/phase-five/combat-defeat-20261020/run6/capture");
        let before = std::fs::read(cap.join("G-S011-3F5B-DS.BIN")).unwrap();
        let after = std::fs::read(cap.join("G-S015-8268-DS.BIN")).unwrap();
        let mut battle = LiveBattle::new(
            &root(),
            PreparedBattle::from_dos_snapshot(&before).unwrap(),
            [0; 3],
        )
        .unwrap();
        battle.work = VecDeque::from([Work::Attack {
            attacker: 1,
            target: 25,
            reaction: false,
            departure: false,
        }]);
        for now in [0, 300, 320] {
            battle.poll(now).unwrap();
            assert!(battle.stopped.is_none(), "{:?}", battle.stopped);
        }
        assert_eq!(battle.result, Some(BattleResult::Defeat));
        assert_eq!(
            battle.numeric(),
            std::array::from_fn::<[u8; 92], 4, _>(|p| after
                [0x99a6 + 92 * (p + 1)..0x99a6 + 92 * (p + 2)]
                .try_into()
                .unwrap())
        );
    }
    #[test]
    fn original_voice_escape_is_explicit_and_source_speed_delay_precedes_input() {
        let ds = std::fs::read(
            root().join("analysis/phase-five/combat-runtime-20261020/capture/INPUT0-DS.BIN"),
        )
        .unwrap();
        let mut battle = LiveBattle::new(
            &root(),
            PreparedBattle::from_dos_snapshot(&ds).unwrap(),
            [0; 3],
        )
        .unwrap();
        battle.sound_inflight = true;
        battle.work = VecDeque::from([Work::Turn(TurnBoundary::Actor(27))]);
        battle.poll(0).unwrap();
        assert!(battle.waiting_voice());
        let state = battle.session.prepared.state.clone();
        battle.key(9).unwrap();
        battle.key(1073741905).unwrap();
        battle.poll(2000).unwrap();
        assert_eq!(state, battle.session.prepared.state);
        battle.key(27).unwrap();
        battle.poll(2000).unwrap();
        assert!(!battle.waiting_voice());
        assert!(!battle.input_ready());
        battle.poll(2299).unwrap();
        assert!(!battle.input_ready());
        battle.poll(2300).unwrap();
        assert!(battle.input_ready());
    }
}

#[cfg(test)]
mod equipment_ui_tests {
    use super::*;
    fn battle() -> LiveBattle {
        let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
        let ds = std::fs::read(
            root.join("analysis/phase-five/combat-runtime-20261020/capture/EQUIP-BASE-DS.BIN"),
        )
        .unwrap();
        let mut b = LiveBattle::new(
            &root,
            PreparedBattle::from_dos_snapshot(&ds).unwrap(),
            [0; 3],
        )
        .unwrap();
        // Match RUN3's explicit item ownership conditioning, not an earned route.
        b.session.prepared.party.numeric[0][35] = 2;
        b.refresh().unwrap();
        b.work.clear();
        b.voice_wait = None;
        b
    }
    #[test]
    fn modal_selection_cancel_equipment_and_debug_are_observational_until_confirm() {
        let mut b = battle();
        let before = b.session.prepared.state.clone();
        let numeric = b.numeric();
        b.key(105).unwrap();
        assert_eq!(b.inventory.unwrap().slot, 1);
        b.key(1073741905).unwrap();
        assert_eq!(b.inventory.unwrap().slot, 6);
        b.key(9).unwrap(); // Tab cannot pass while inventory owns input.
        b.click(140, 150).unwrap(); // Nor can next-turn click.
        b.poll(1000).unwrap();
        b.key(13).unwrap();
        b.key(27).unwrap();
        b.key(27).unwrap();
        assert!(b.inventory.is_none());
        assert_eq!(b.session.prepared.state, before);
        assert_eq!(b.numeric(), numeric);
        let clean = b.frame().unwrap();
        b.key(1073741893).unwrap();
        assert_ne!(b.frame().unwrap(), clean);
        assert_eq!(b.frame_with_debug(false).unwrap(), clean);
        for _ in 0..4 {
            b.frame().unwrap();
        }
        assert_eq!(b.session.prepared.state, before);
        b.key(105).unwrap();
        b.key(13).unwrap();
        b.key(13).unwrap();
        assert!(b.inventory.is_none());
        assert_eq!(b.session.prepared.party.numeric[0][30], 35);
        assert_eq!(b.session.prepared.state.classes[1][6], 2);
        assert_eq!(b.session.prepared.state.actors, before.actors);
        assert_eq!(b.session.prepared.state.rng, before.rng);
        assert_eq!(b.session.prepared.state.remaining, before.remaining);
        b.key(113).unwrap();
        assert_eq!(b.session.prepared.party.numeric[0][30], 0);
        assert_eq!(b.session.prepared.party.numeric[0][35], 2);
        // Mouse uses the same inventory/ref/refresh route.
        b.click(237, 166).unwrap();
        b.click(60, 166).unwrap();
        assert_eq!(b.session.prepared.party.numeric[0][30], 35);
        b.click(60, 166).unwrap();
        assert_eq!(b.session.prepared.party.numeric[0][30], 0);
    }
    #[test]
    fn unsupported_offhand_and_invalid_destination_preserve_every_simulation_word() {
        let mut b = battle();
        let before = b.session.prepared.state.clone();
        let numeric = b.numeric();
        b.key(105).unwrap();
        b.key(13).unwrap();
        b.key(1073741903).unwrap();
        b.key(13).unwrap();
        assert_eq!(b.session.prepared.state, before);
        assert_eq!(b.numeric(), numeric);
        assert!(b.inventory.is_some());
        b.key(1073741903).unwrap();
        b.key(13).unwrap(); // Stone cannot become clothing.
        assert_eq!(b.session.prepared.state, before);
        assert_eq!(b.numeric(), numeric);
    }
    #[test]
    fn original_direction_buttons_dispatch_the_same_actions_as_keyboard() {
        for (x, y, direction) in [
            (7, 82, 8),
            (22, 82, 1),
            (35, 81, 2),
            (19, 95, 7),
            (47, 94, 3),
            (30, 106, 6),
            (45, 106, 5),
            (60, 106, 4),
        ] {
            let mut b = battle();
            let state = b.session.prepared.state.clone();
            b.click(x, y).unwrap();
            assert!(matches!(b.work.front(),Some(Work::Step(d,_)) if *d==direction));
            assert_eq!(b.session.prepared.state, state);
        }
    }
    #[test]
    fn pointer_highlight_and_click_share_original_coordinates_without_draw_rng() {
        let mut b = battle();
        let before = b.session.prepared.state.clone();
        let s = &b.session.prepared;
        let a = s.state.actors[s.state.current];
        let camera = s.camera;
        let la = a[5] - camera[0];
        let lb = a[4] - camera[1];
        let x = i32::from(30 * lb + 14 * la + 31);
        let y = i32::from(14 * la + 41);
        b.motion(x, y);
        assert_eq!(b.hover, Some([a[5], a[4]]));
        b.frame().unwrap();
        assert_eq!(b.session.prepared.state, before);
        b.click(x, y).unwrap();
        assert!(b.work.is_empty()); // Current cell is not a step.
    }
}
