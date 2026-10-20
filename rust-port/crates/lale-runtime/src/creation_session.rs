//! Explicit-poll graphical diagnostic of the recovered creation caller.
//! Imported original state; no invented seed or automatic idle RNG schedule.
use crate::character_creation::{Action, AnimationState, CreationCaller, Outcome};
use crate::character_data::{prepare_original_creation_records, FourCharacters, Party};
use crate::character_generation::GenerationTables;
use crate::character_runtime_snapshot::{CreationRuntimeSnapshot, SnapshotStage};
use std::path::Path;

pub struct CreationSession {
    pub caller: CreationCaller,
    rng: crate::character_data::LaleRng,
    tables: GenerationTables,
    counter: u16,
    pub completed: Option<Party>,
    pub native: bool,
}
impl CreationSession {
    ///Carry the actual native generator state into later world effects. This
    ///does not reconstruct unobserved DOS CPU-idle or cinematic RNG consumption.
    pub fn rng_state(&self) -> u32 {
        self.rng.state
    }
    pub fn load(path: &Path, exe: &[u8]) -> Result<Self, String> {
        let raw = std::fs::read(path).map_err(|e| e.to_string())?;
        let state = CreationRuntimeSnapshot::parse(&raw, SnapshotStage::BeforeFirstSlotSetup)?;
        if state.selected != 0 || state.raw_body_remainder != 0 || state.raw_face_phase != 0 {
            return Err(
                "debug UI requires the verified first-slot setup baseline (slot1, body0, phase0)"
                    .into(),
            );
        }
        let mut result = Self {
            caller: CreationCaller::from_snapshot(
                state.party,
                state.traits,
                state.selected,
                AnimationState {
                    body_remainder: 0,
                    drawn_pose: 0,
                    face_phase: 0,
                    face_cell: 0,
                },
                0,
            )?,
            rng: state.rng,
            tables: GenerationTables::from_original_ist(exe)?,
            counter: state.current_counter_low16,
            completed: None,
            native: false,
        };
        // Setup overwrites the unavailable drawn pose, cell and prior stamp.
        result.caller.dispatch(
            Action::SetupSlot,
            result.counter,
            &result.tables,
            &mut result.rng,
        )?;
        Ok(result)
    }
    /// Fresh native creation boundary: zero workspaces match the controlled
    /// original first-entry DS capture. RNG is supplied by the application,
    /// never seeded independently by the generator or animation code.
    pub fn fresh(exe: &[u8], rng_state: u32, counter: u16) -> Result<Self, String> {
        let mut result = Self {
            caller: CreationCaller::from_snapshot(
                Party::parse(&[0; 664])?,
                [[0; 16]; 4],
                0,
                AnimationState {
                    body_remainder: 0,
                    drawn_pose: 0,
                    face_phase: 0,
                    face_cell: 0,
                },
                counter,
            )?,
            rng: crate::character_data::LaleRng { state: rng_state },
            tables: GenerationTables::from_original_ist(exe)?,
            counter,
            completed: None,
            native: true,
        };
        result
            .caller
            .dispatch(Action::SetupSlot, counter, &result.tables, &mut result.rng)?;
        Ok(result)
    }
    /// Original timer-gated body update without inventing CPU-loop RNG polls.
    /// Random face triggering is pending a defensible native poll model.
    pub fn advance_native_body(&mut self, counter: u16) {
        self.counter = counter;
        if self.completed.is_none() {
            self.caller.advance_body_only(counter, &mut self.rng);
        }
    }
    pub fn view(&self) -> FourCharacters {
        let mut view = FourCharacters::loaded(&self.caller.party);
        view.selected = self.caller.selected;
        // These values were generated/retained by the original semantic caller,
        // not loaded reference-party statistics. The whole session is debug.
        for (i, c) in view.characters.iter_mut().enumerate() {
            if self.caller.party.characters[i].race() == 0 {
                c.invalidate_generation();
            } else {
                c.values_origin = Some(crate::character_data::StatsOrigin::GeneratedOriginal);
            }
        }
        view
    }
    pub fn observe_counter(&mut self, counter: u16) {
        self.counter = counter;
    }
    pub fn set_name(&mut self, bytes: &[u8]) {
        let name = &mut self.caller.party.characters[self.caller.selected].name_raw;
        let length = bytes.len().min(36);
        name[..length].copy_from_slice(&bytes[..length]);
        name[length] = 0;
        self.completed = None;
        if self.native {
            self.caller.last_counter = self.counter;
        }
    }
    pub fn action(&mut self, action: Action) -> Result<Outcome, String> {
        self.completed = None;
        let trace = self
            .caller
            .dispatch(action, self.counter, &self.tables, &mut self.rng)?;
        if trace.outcome == Outcome::FinalizationRequired {
            self.completed = Some(prepare_original_creation_records(&self.caller.party));
        }
        Ok(trace.outcome)
    }
    /// User-directed debugger operation, not one poll per render frame. Advance
    /// the explicit counter150 and execute exactly one recovered idle poll.
    pub fn step_poll(&mut self) {
        self.counter = self.counter.wrapping_add(150);
        self.caller
            .idle_poll(self.counter, self.counter, &mut self.rng);
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    fn root() -> std::path::PathBuf {
        Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..")
    }
    #[test]
    fn fresh_native_matches_original_zero_workspace_and_prepares_four_slots() {
        let exe = std::fs::read(root().join("lale/IST.EXE")).unwrap();
        let baseline = std::fs::read(root().join("analysis/phase-five/character-ui-20261015/character/dos-run6/FIRST-SETUP-BEFORE-DS.BIN")).unwrap();
        let observed =
            CreationRuntimeSnapshot::parse(&baseline, SnapshotStage::BeforeFirstSlotSetup).unwrap();
        assert_eq!(observed.party, Party::parse(&[0; 664]).unwrap());
        assert_eq!(observed.traits, [[0; 16]; 4]);
        let mut native =
            CreationSession::fresh(&exe, observed.rng.state, observed.current_counter_low16)
                .unwrap();
        let imported_path = root().join("analysis/phase-five/character-ui-20261015/character/dos-run6/FIRST-SETUP-BEFORE-DS.BIN");
        let imported = CreationSession::load(&imported_path, &exe).unwrap();
        assert_eq!(native.caller.party, imported.caller.party);
        assert_eq!(native.caller.traits, imported.caller.traits);
        assert_eq!(native.rng, imported.rng);
        for slot in 0..4 {
            assert_eq!(native.caller.selected, slot);
            assert_eq!(native.action(Action::Next).unwrap(), Outcome::Continued);
            native.set_name(format!("name{slot}").as_bytes());
            let before = native.caller.party.characters[slot].numeric_raw;
            native.action(Action::Reroll).unwrap();
            assert_ne!(native.caller.party.characters[slot].numeric_raw, before);
            let outcome = native.action(Action::Next).unwrap();
            assert_eq!(
                outcome,
                if slot == 3 {
                    Outcome::FinalizationRequired
                } else {
                    Outcome::SlotChanged
                }
            );
        }
        let final_party = native.completed.as_ref().unwrap();
        assert_eq!(final_party.original_bytes().len(), 664);
        for c in &final_party.characters {
            assert_eq!(c.word(0x38), c.word(0x0a));
            assert_eq!(c.word(0x3a), c.word(0x0c));
            assert_eq!(c.auxiliary_raw, *b"100000000000000000000000000000000000\0");
        }
        let mut workspace = crate::party_workspace::PartyWorkspace {
            text: [[0; 148]; 4],
            numeric: [[0; 92]; 4],
        };
        workspace
            .read_party(
                final_party,
                &crate::party_workspace::original_race_labels(&exe).unwrap(),
            )
            .unwrap();
        assert_eq!(workspace.serialized_snapshot(), *final_party);
    }
    #[test]
    fn native_body_clock_preserves_rng_and_uses_one_wrapping_deadline() {
        let exe = std::fs::read(root().join("lale/IST.EXE")).unwrap();
        let mut s = CreationSession::fresh(&exe, 12345, 65500).unwrap();
        let rng = s.rng;
        let pose = s.caller.animation.drawn_pose;
        s.advance_native_body(113);
        assert_eq!(s.caller.animation.drawn_pose, pose);
        s.advance_native_body(114);
        assert_eq!(s.caller.animation.drawn_pose, pose % 4 + 1);
        assert_eq!(s.caller.last_counter, 114);
        assert_eq!(s.rng, rng);
        s.advance_native_body(600);
        assert_eq!(s.caller.animation.drawn_pose, (pose + 1) % 4 + 1);
        assert_eq!(s.rng, rng);
    }
}
