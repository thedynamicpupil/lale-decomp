//! Headless original caller ordering. Explicit snapshots, shared RNG and counter
//! reads only; no wall clock, native input cadence, graphics, writes or finalization.
//! Evidence: analysis/phase-five/integration-20261014/character/.
#![allow(dead_code)]
use crate::character_data::{cyclic_identity, sex_for_appearance, LaleRng, Party};
use crate::character_generation::{
    generate_numeric_from_traits, initialize_traits, GenerationTables,
};
fn word(r: &[u8; 92], at: usize) -> u16 {
    u16::from_le_bytes([r[at], r[at + 1]])
}
fn put(r: &mut [u8; 92], at: usize, v: u16) {
    r[at..at + 2].copy_from_slice(&v.to_le_bytes());
}
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct AnimationState {
    pub body_remainder: u16,
    pub drawn_pose: u16,
    pub face_phase: u16,
    pub face_cell: u16,
}
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Action {
    SetupSlot,
    Appearance(i16),
    Race(i16),
    Sex,
    Reroll,
    Next,
    Previous,
    OtherInput,
}
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Outcome {
    Continued,
    SlotChanged,
    Cancelled,
    FinalizationRequired,
}
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct Event {
    pub original_pc: u32,
    pub operation: &'static str,
    pub rng_before: u32,
    pub rng_after: u32,
    pub sex: u16,
    pub phase: u16,
}
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct Trace {
    pub outcome: Outcome,
    pub events: Vec<Event>,
    pub body_updated: bool,
    pub face_rectangle_copied: bool,
}
impl Trace {
    fn new() -> Self {
        Self {
            outcome: Outcome::Continued,
            events: Vec::new(),
            body_updated: false,
            face_rectangle_copied: false,
        }
    }
}
#[derive(Clone, Debug)]
pub struct CreationCaller {
    pub party: Party,
    pub traits: [[u16; 16]; 4],
    pub selected: usize,
    pub animation: AnimationState,
    pub last_counter: u16,
}
impl CreationCaller {
    /// All state comes from the caller: file-backed zeroes are not assumed to be
    /// a complete original runtime entry snapshot. Constructor consumes no RNG.
    pub fn from_snapshot(
        party: Party,
        traits: [[u16; 16]; 4],
        selected: usize,
        animation: AnimationState,
        last_counter: u16,
    ) -> Result<Self, String> {
        if selected >= 4
            || animation.body_remainder > 3
            || animation.face_phase > 3
            || animation.face_cell > 2
        {
            return Err("unsupported creation snapshot domain".into());
        }
        Ok(Self {
            party,
            traits,
            selected,
            animation,
            last_counter,
        })
    }
    fn sex(&self) -> u16 {
        word(&self.party.characters[self.selected].numeric_raw, 4)
    }
    fn event(&self, t: &mut Trace, pc: u32, operation: &'static str, before: u32, rng: &LaleRng) {
        t.events.push(Event {
            original_pc: pc,
            operation,
            rng_before: before,
            rng_after: rng.state,
            sex: self.sex(),
            phase: self.animation.face_phase,
        });
    }
    fn init_traits(
        &mut self,
        t: &mut Trace,
        pc: u32,
        tables: &GenerationTables,
        rng: &mut LaleRng,
    ) -> Result<(), String> {
        let before = rng.state;
        let race = word(&self.party.characters[self.selected].numeric_raw, 2);
        self.traits[self.selected] =
            initialize_traits(&self.traits[self.selected], race, tables, rng)?;
        self.event(t, pc, "traits", before, rng);
        Ok(())
    }
    fn generate(
        &mut self,
        t: &mut Trace,
        pc: u32,
        tables: &GenerationTables,
        rng: &mut LaleRng,
    ) -> Result<(), String> {
        self.event(t, pc, "generator_call", rng.state, rng);
        self.init_traits(t, 0x3d03e, tables, rng)?;
        let before = rng.state;
        generate_numeric_from_traits(
            &mut self.party.characters[self.selected].numeric_raw,
            &self.traits[self.selected],
            rng,
        );
        self.event(t, 0x3d041, "numeric26", before, rng);
        Ok(())
    }
    ///035d helper only. Caller modulo/presentation is intentionally separate.
    fn animation_step(&mut self, t: &mut Trace, pc: u32, rng: &mut LaleRng) {
        let before = rng.state;
        self.animation.drawn_pose = self.animation.body_remainder + 1;
        self.animation.body_remainder = self.animation.drawn_pose % 4;
        match self.animation.face_phase {
            1 => {
                self.animation.face_cell = rng.scaled(3);
                self.animation.face_phase = 2
            }
            2 => {
                self.animation.face_cell = 0;
                self.animation.face_phase = 3
            }
            _ => {}
        }
        t.body_updated = true;
        self.event(t, pc, "animation_step", before, rng);
    }
    fn appearance(&mut self, t: &mut Trace, pc: u32, rng: &mut LaleRng) {
        let appearance = word(&self.party.characters[self.selected].numeric_raw, 0x42);
        self.animation.face_cell = 0;
        self.animation.body_remainder = 0;
        put(
            &mut self.party.characters[self.selected].numeric_raw,
            4,
            sex_for_appearance(appearance),
        );
        self.event(t, pc, "appearance", rng.state, rng);
        self.animation_step(t, 0x3cf2a, rng);
    }
    fn setup(
        &mut self,
        t: &mut Trace,
        tables: &GenerationTables,
        rng: &mut LaleRng,
    ) -> Result<(), String> {
        // Signed JG1 preserves even out-of-range positive words; table validation
        // rejects unsupported snapshots instead of emulating unsafe table reads.
        for at in [2, 4, 0x42] {
            let n = word(&self.party.characters[self.selected].numeric_raw, at);
            if (n as i16) <= 1 {
                put(&mut self.party.characters[self.selected].numeric_raw, at, 1)
            }
        }
        self.init_traits(t, 0x3e859, tables, rng)?;
        self.appearance(t, 0x3e85d, rng);
        if self.party.characters[self.selected].name().is_empty() {
            self.generate(t, 0x3e881, tables, rng)?
        } else {
            self.event(t, 0x3e887, "display_existing", rng.state, rng)
        }
        self.animation_step(t, 0x3e893, rng);
        Ok(())
    }
    /// Explicit post-action counter read models3ea50. Keys/hitboxes are outside
    /// this semantic API. Delta domain±1 follows original identity input paths.
    pub fn dispatch(
        &mut self,
        action: Action,
        counter_after_action: u16,
        tables: &GenerationTables,
        rng: &mut LaleRng,
    ) -> Result<Trace, String> {
        if self.selected >= 4 {
            return Err("creation selected index exceeds four slots".into());
        }
        if matches!(action,Action::Race(n)|Action::Appearance(n)if n!=1&&n!= -1) {
            return Err("original identity delta must be±1".into());
        }
        let mut t = Trace::new();
        match action {
            Action::SetupSlot => self.setup(&mut t, tables, rng)?,
            Action::Appearance(delta) => {
                let pc = if delta == 1 { 0x3ec99 } else { 0x3ecda };
                let r = &mut self.party.characters[self.selected].numeric_raw;
                put(r, 0x42, cyclic_identity(word(r, 0x42), delta, 1, 16));
                self.appearance(&mut t, pc, rng);
            }
            Action::Race(delta) => {
                let r = &mut self.party.characters[self.selected].numeric_raw;
                put(r, 2, cyclic_identity(word(r, 2), delta, 1, 8));
                self.generate(
                    &mut t,
                    if delta == 1 { 0x3ed53 } else { 0x3ee02 },
                    tables,
                    rng,
                )?;
                let r = &mut self.party.characters[self.selected].numeric_raw;
                put(r, 0x42, 2 * (word(r, 2) - 1) + 1);
                self.appearance(&mut t, if delta == 1 { 0x3ed89 } else { 0x3ee38 }, rng);
            }
            Action::Sex => {
                let r = &mut self.party.characters[self.selected].numeric_raw;
                put(r, 4, cyclic_identity(word(r, 4), 1, 1, 2));
                self.generate(&mut t, 0x3eea3, tables, rng)?;
            }
            Action::Reroll => self.generate(&mut t, 0x3ee57, tables, rng)?,
            Action::Next => {
                if !self.party.characters[self.selected].name().is_empty() {
                    if self.selected == 3 {
                        t.outcome = Outcome::FinalizationRequired;
                        return Ok(t);
                    }
                    self.selected += 1;
                    t.outcome = Outcome::SlotChanged;
                    self.setup(&mut t, tables, rng)?
                }
            }
            Action::Previous => {
                if self.selected == 0 {
                    t.outcome = Outcome::Cancelled;
                    return Ok(t);
                }
                self.selected -= 1;
                t.outcome = Outcome::SlotChanged;
                self.setup(&mut t, tables, rng)?
            }
            Action::OtherInput => {}
        }
        self.last_counter = counter_after_action;
        Ok(t)
    }
    /// Native bounded integration of the timed helper. This deliberately does
    /// not stand in for the original CPU-bound poll_gate draws; automatic face
    /// triggering remains unavailable until that scheduling boundary is resolved.
    pub fn advance_body_only(&mut self, counter: u16, rng: &mut LaleRng) -> Trace {
        let mut t = Trace::new();
        if counter.wrapping_sub(self.last_counter) >= 150 {
            self.last_counter = counter;
            self.animation_step(&mut t, 0x3eaa9, rng);
            if self.animation.face_phase != 0 {
                t.face_rectangle_copied = true;
                self.animation.face_phase %= 3;
            }
        }
        t
    }
    /// One original idle-poll invocation, not one frame/timer tick. Both counter
    /// reads are explicit: second stamp read can differ across an interrupt.
    pub fn idle_poll(
        &mut self,
        comparison_counter: u16,
        stamp_counter: u16,
        rng: &mut LaleRng,
    ) -> Trace {
        let mut t = Trace::new();
        let before = rng.state;
        let gate = rng.scaled(1000);
        if gate == 0 && self.animation.face_phase == 0 {
            self.animation.face_phase = 1
        }
        self.event(&mut t, 0x3ea5c, "poll_gate", before, rng);
        if comparison_counter.wrapping_sub(self.last_counter) >= 150 {
            self.last_counter = stamp_counter;
            self.animation_step(&mut t, 0x3eaa9, rng);
            if self.animation.face_phase != 0 {
                t.face_rectangle_copied = true;
                self.animation.face_phase %= 3;
                self.event(&mut t, 0x3eba9, "idle_phase_remainder", rng.state, rng)
            }
        }
        t
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    fn root() -> std::path::PathBuf {
        std::path::Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..")
    }
    fn tables() -> GenerationTables {
        GenerationTables::from_original_ist(&std::fs::read(root().join("lale/IST.EXE")).unwrap())
            .unwrap()
    }
    fn unhex(s: &str) -> Vec<u8> {
        (0..s.len())
            .step_by(2)
            .map(|i| u8::from_str_radix(&s[i..i + 2], 16).unwrap())
            .collect()
    }
    fn party() -> Party {
        Party::parse(&[0; 664]).unwrap()
    }
    #[test]
    fn original_dos_consecutive_idle_gate_survives_overlay_relocation() {
        use crate::character_runtime_snapshot::{CreationRuntimeSnapshot, SnapshotStage};
        let folder = root().join("analysis/phase-five/walkthrough-20261015/character/dos-run1");
        let read = |name| std::fs::read(folder.join(name)).unwrap();
        let before = CreationRuntimeSnapshot::parse(
            &read("FIRST-IDLE-DS.BIN"),
            SnapshotStage::AfterSlotSetup,
        )
        .unwrap();
        let after = CreationRuntimeSnapshot::parse(
            &read("SECOND-RNG-DS.BIN"),
            SnapshotStage::AfterSlotSetup,
        )
        .unwrap();
        let first_stack = read("GATE-RNG-STACK.BIN");
        let second_stack = read("SECOND-RNG-STACK.BIN");
        let stack_word =
            |bytes: &[u8], offset| u16::from_le_bytes([bytes[offset], bytes[offset + 1]]);
        // Resident RNG stops before its update. Both return offsets are the
        // original idle gate, despite the overlay's changed runtime segment.
        assert_eq!(stack_word(&first_stack, 0x1c), 0x1e61);
        assert_eq!(stack_word(&second_stack, 0x1c), 0x1e61);
        assert_eq!(stack_word(&first_stack, 0x1e), 0x35a6);
        assert_eq!(stack_word(&second_stack, 0x1e), 0x3bef);
        let saved_stamp = stack_word(&first_stack, 0x26);
        assert_eq!(saved_stamp, stack_word(&second_stack, 0x26));
        assert!(after.current_counter_low16.wrapping_sub(saved_stamp) < 150);
        let mut rng = before.rng;
        let mut caller = CreationCaller::from_snapshot(
            before.party,
            before.traits,
            before.selected,
            AnimationState {
                body_remainder: before.raw_body_remainder,
                // The gate does not draw below threshold, so presentation-only
                // placeholders are not compared to uncaptured video state.
                drawn_pose: 0,
                face_phase: before.raw_face_phase,
                face_cell: 0,
            },
            saved_stamp,
        )
        .unwrap();
        let trace = caller.idle_poll(
            after.current_counter_low16,
            after.current_counter_low16,
            &mut rng,
        );
        assert!(!trace.body_updated);
        assert!(!trace.face_rectangle_copied);
        assert_eq!(rng, after.rng);
        assert_eq!(caller.party, after.party);
        assert_eq!(caller.traits, after.traits);
        assert_eq!(caller.animation.body_remainder, after.raw_body_remainder);
        assert_eq!(caller.animation.face_phase, after.raw_face_phase);
        assert_eq!(caller.last_counter, saved_stamp);
    }
    #[test]
    fn original_dos_enter_reroll_matches_after_default_callback() {
        use crate::character_runtime_snapshot::{CreationRuntimeSnapshot, SnapshotStage};
        let folder = root().join("analysis/phase-five/walkthrough-20261015/character/dos-run4");
        let read = |name| std::fs::read(folder.join(name)).unwrap();
        let before = CreationRuntimeSnapshot::parse(
            &read("REROLL-GENERATOR-BEFORE-DS.BIN"),
            SnapshotStage::GeneratorBoundary,
        )
        .unwrap();
        let after = CreationRuntimeSnapshot::parse(
            &read("REROLL-GENERATOR-AFTER-DS.BIN"),
            SnapshotStage::GeneratorBoundary,
        )
        .unwrap();
        let stack = read("REROLL-GENERATOR-BEFORE-STACK.BIN");
        // Enter's original generator return, physical3ee5a, in the relocated
        // overlay. This establishes a reroll rather than another setup call.
        assert_eq!(&stack[0x40..0x44], &[0x5a, 0x22, 0xef, 0x3b]);
        let mut rng = before.rng;
        let mut caller = CreationCaller::from_snapshot(
            before.party,
            before.traits,
            before.selected,
            AnimationState {
                body_remainder: before.raw_body_remainder,
                drawn_pose: 0,
                face_phase: before.raw_face_phase,
                face_cell: 0,
            },
            u16::from_le_bytes([stack[0x46], stack[0x47]]),
        )
        .unwrap();
        caller
            .dispatch(
                Action::Reroll,
                after.current_counter_low16,
                &tables(),
                &mut rng,
            )
            .unwrap();
        assert_eq!(rng, after.rng);
        assert_eq!(caller.party, after.party);
        assert_eq!(caller.traits, after.traits);
        assert_eq!(caller.animation.body_remainder, after.raw_body_remainder);
        assert_eq!(caller.animation.face_phase, after.raw_face_phase);
        // The capture precedes display/input restamping. Do not compare the
        // dispatch API's post-action counter against that earlier boundary.
    }
    fn state(party: Party, phase: u16) -> CreationCaller {
        let mut traits = [[0; 16]; 4];
        traits[0][0] = 0xdead;
        CreationCaller::from_snapshot(
            party,
            traits,
            0,
            AnimationState {
                body_remainder: 3,
                drawn_pose: 3,
                face_phase: phase,
                face_cell: 2,
            },
            0,
        )
        .unwrap()
    }
    #[test]
    fn original_static_call_and_instruction_fixtures() {
        let f=include_str!(concat!(env!("CARGO_MANIFEST_DIR"),"/../../../analysis/phase-five/integration-20261014/character/caller-event-fixtures.tsv"));
        let tables = tables();
        let mut count = 0;
        for line in f.lines() {
            let a: Vec<_> = line.split('|').collect();
            let phase = a[1].parse().unwrap();
            let mut p = party();
            p.characters[0].numeric_raw = unhex(a[4]).try_into().unwrap();
            if a[0] == "setup_named" {
                p.characters[0].name_raw[0] = b'n'
            }
            let mut caller = state(p, phase);
            let mut rng = LaleRng {
                state: a[2].parse().unwrap(),
            };
            let action = match a[0] {
                "setup_blank" | "setup_named" => Action::SetupSlot,
                "race_plus" => Action::Race(1),
                "race_minus" => Action::Race(-1),
                "sex" => Action::Sex,
                "appearance_plus" => Action::Appearance(1),
                "appearance_minus" => Action::Appearance(-1),
                "reroll" => Action::Reroll,
                _ => panic!("invalid fixture"),
            };
            let t = caller.dispatch(action, 1000, &tables, &mut rng).unwrap();
            assert_eq!(
                rng.state,
                a[3].parse::<u32>().unwrap(),
                "{}phase{}",
                a[0],
                phase
            );
            assert_eq!(
                caller.party.characters[0].numeric_raw.as_slice(),
                unhex(a[5])
            );
            let traits = unhex(a[6]);
            for i in 0..16 {
                assert_eq!(
                    caller.traits[0][i],
                    u16::from_le_bytes([traits[2 * i], traits[2 * i + 1]])
                );
            }
            let v: Vec<u16> = a[7].split(',').map(|n| n.parse().unwrap()).collect();
            assert_eq!(
                caller.animation,
                AnimationState {
                    face_phase: v[0],
                    body_remainder: v[1],
                    drawn_pose: v[2],
                    face_cell: v[3]
                }
            );
            let pcs: Vec<u32> = a[8].split(',').map(|s| s.parse().unwrap()).collect();
            assert_eq!(
                t.events.iter().map(|e| e.original_pc).collect::<Vec<_>>(),
                pcs
            );
            assert_eq!(caller.last_counter, 1000);
            count += 1;
        }
        assert_eq!(count, 32);
    }
    #[test]
    fn explicit_idle_poll_reads_and_phase_persistence() {
        let mut c = state(party(), 0);
        c.animation.body_remainder = 0;
        let mut rng = LaleRng { state: 0 };
        let t = c.idle_poll(149, 150, &mut rng);
        assert!(!t.body_updated);
        assert_eq!(c.animation.face_phase, 1);
        assert_eq!(rng.state, 1);
        let t = c.idle_poll(150, 160, &mut rng);
        assert!(t.body_updated && t.face_rectangle_copied);
        assert_eq!(c.last_counter, 160);
        assert_eq!((c.animation.face_phase, c.animation.face_cell), (2, 0));
        assert_eq!(rng.state, 0x8082a52f);
        let t = c.idle_poll(310, 315, &mut rng);
        assert!(t.face_rectangle_copied);
        assert_eq!(c.animation.face_phase, 0);
        assert_eq!(rng.state, 0xaae684bc);
        let mut c = state(party(), 0);
        c.last_counter = 65500;
        let mut rng = LaleRng::seeded(1);
        assert!(!c.idle_poll(113, 113, &mut rng).body_updated);
        assert!(c.idle_poll(114, 123, &mut rng).body_updated);
        assert_eq!(c.last_counter, 123);
    }
    #[test]
    fn snapshot_setup_signed_lower_bounds_and_navigation_boundary() {
        let tables = tables();
        let mut c = state(party(), 0);
        put(&mut c.party.characters[0].numeric_raw, 2, 0xffff);
        let mut rng = LaleRng::seeded(1);
        c.dispatch(Action::SetupSlot, 22, &tables, &mut rng)
            .unwrap();
        assert_eq!(
            (
                word(&c.party.characters[0].numeric_raw, 2),
                c.sex(),
                word(&c.party.characters[0].numeric_raw, 0x42)
            ),
            (1, 1, 1)
        );
        assert_eq!((c.animation.body_remainder, c.animation.drawn_pose), (2, 2));
        assert!(c.party.characters[0].name().is_empty());
        assert_eq!(
            c.dispatch(Action::Next, 23, &tables, &mut rng)
                .unwrap()
                .outcome,
            Outcome::Continued
        );
        c.party.characters[0].name_raw[0] = b'x';
        assert_eq!(
            c.dispatch(Action::Next, 24, &tables, &mut rng)
                .unwrap()
                .outcome,
            Outcome::SlotChanged
        );
        assert_eq!(c.selected, 1);
        assert!(c.party.characters[1].name().is_empty());
        assert_eq!(
            c.dispatch(Action::Previous, 25, &tables, &mut rng)
                .unwrap()
                .outcome,
            Outcome::SlotChanged
        );
        assert_eq!(c.selected, 0);
        assert_eq!(
            c.dispatch(Action::Previous, 26, &tables, &mut rng)
                .unwrap()
                .outcome,
            Outcome::Cancelled
        );
        c.selected = 3;
        c.party.characters[3].name_raw[0] = b'x';
        let seed = rng.state;
        let before = c.party.original_bytes();
        assert_eq!(
            c.dispatch(Action::Next, 27, &tables, &mut rng)
                .unwrap()
                .outcome,
            Outcome::FinalizationRequired
        );
        assert_eq!(rng.state, seed);
        assert_eq!(c.party.original_bytes(), before);
    }
    #[test]
    fn named_original_party_keeps_numeric_values_but_consumes_entry_trait_draw() {
        let raw = std::fs::read(root().join("lale/GRP.DAT")).unwrap();
        let original = Party::parse(&raw).unwrap();
        let expected = original.characters[0].numeric_raw;
        let mut caller = state(original, 0);
        let mut rng = LaleRng::seeded(1);
        let trace = caller
            .dispatch(Action::SetupSlot, 42, &tables(), &mut rng)
            .unwrap();
        assert_eq!(caller.party.characters[0].numeric_raw, expected);
        assert_eq!(rng.state, 0x015a4e36);
        assert!(!trace.events.iter().any(|e| e.operation == "numeric26"));
        assert!(trace.events.iter().any(|e| e.original_pc == 0x3e887));
    }
}
