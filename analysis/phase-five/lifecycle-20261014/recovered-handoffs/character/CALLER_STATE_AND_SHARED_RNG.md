# Headless creation caller and shared RNG — 2026-10-14

New bounded integration milestone. Original numeric formulas remain those in findings-1509-20261014; they are not re-recovered here. New implementation: `rust-port/crates/lale-runtime/src/character_creation.rs`. This module is headless, unconnected to UI and finalization, and uses caller-supplied raw state, shared RNG and counter reads. No original/runtime comparison was performed; evidence is original assembly and controlled static fixtures.

## Ownership and initial state

CreationCaller accepts the four-character Party, per-slot16-word working traits, selected slot, body/face state and low16 last-animation counter. Every call receives the same caller-owned LaleRng by mutable reference. It creates no RNG, seed, clock, poll frequency or independent animation stream. It does not manufacture a fresh runtime snapshot.

Original file-backed active numeric records, names and working-trait words are zero; DS:2898 selected slot is1; DS:48e8/48ea are zero. Exact offsets/bytes for all four slots are retained in original-caller-evidence.json. These observations are **not proof that all startup code leaves those bytes unchanged at runtime**. The constructor therefore requires an explicit snapshot. Original slot setup signed-compares race/sex/appearance with1 and substitutes1 when≤1. Positive values above their intended maxima are not clamped by that instruction; unsupported snapshots are rejected by existing table boundaries rather than emulating unsafe original table reads.

## Verified paths and ordering

Setup0x3e753:

1. Signed lower bounds for identity fields.
2. 0000 initializer call0x3e859: one choice draw and working traits copied.
3. Appearance011f call0x3e85d: restores/copies face0, resets body remainder0, forces sex from appearance, invokes035d at0x3cf2a. Face phase is preserved.
4. Empty name:0437 at0x3e881, including another trait choice then26 numeric draws. Named slot: display0f4e at0x3e887; existing numbers remain.
5. Another035d step at0x3e893. This is not redundant: a fresh body progresses from drawn pose1 to2; phase1 can become2 on the appearance step and3 on the setup step.
6. Later setup transitions and stamp read0x3ea50; explicit post-action counter supplied by host/harness.

The headless module preserves that ordering and keeps working traits per slot. It does not regenerate a named slot solely because it is revisited. The entry still consumes its preliminary trait choice even when numbers remain unchanged.

Race±1: update race cyclically1..8, call generator at0x3ed53/0x3ee02 using **old sex**, then write suggested appearance=2×(race−1)+1 and call011f at0x3ed89/0x3ee38, which can force a different sex after generation. Sex: cyclic update1..2 then generator0x3eea3; no appearance call. Reroll: generator0x3ee57. Appearance±1: cyclic appearance1..16 then011f at0x3ec99/0x3ecda, with no numeric regeneration. Face phase can cause an RNG update in the appearance path despite no new stats.

Next: requires nonempty current name. Slots1..3 increment then setup; Previous from slots2..4 decrements then setup. Existing slot names/numeric state survive. Previous from slot1 returns a cancellation boundary. Next from slot4 reports `FinalizationRequired` **before** original index5/save/cleanup; it does not increment beyond the model, write a file or claim successful creation.

Headless action dispatch resets last-counter from explicit post-action input, modeling the common3ea4b stamp read. Input key/hitbox translation, name editor and renderer are separate existing modules and are not silently connected here.

## Animation helper versus idle caller

035d increments body remainder, draws pose1..4, reduces remainder modulo4. Phase1 consumes shared scaled(3), selects face0..2 and changes phase2; phase2 copies face0 and changes phase3; phases0/3 leave face unchanged. It never performs caller modulo3. Appearance resets face cell0/body remainder0, **not phase**.

One explicit idle_poll invocation performs shared scaled(1000) first regardless of phase. Only gate0 with phase0 sets phase1. Unsigned wrapped `(comparison_counter−last_counter)≥150` triggers update; the second supplied stamp counter is stored, then035d runs. If resulting phase is nonzero, face rectangle is marked for copy and caller reduces phase modulo3 at0x3eba9. Thus phase3 may persist across non-idle helper calls but becomes0 in the timed idle presentation path.

No elapsed-time catch-up loop is introduced. Every idle poll consumes one gate draw even when no animation update is due. The caller supplies the two original counter-read values independently; an interrupt can separate them.

Input/cadence limits: no-input branch0x3ec34 returns directly to gate0x3ea57 without resetting last stamp. Processed-input paths return to0x3ea4b and read a new stamp. Mouse held-button release loop0x3ec3d..0x3ec58 polls until release **without returning to the RNG gate**. An indirect DS:964c callback at0x3ebdc precedes BIOS/mouse input; its full side effects are not represented by this semantic module. No host frame rate, arbitrary RNG burn count or one-poll-per-timer-tick mapping is claimed. These boundaries, plus resource error/cache/callback behavior, require review before UI integration.

## Tests and evidence

caller_fixtures.py verifies14 original near-call targets byte-for-byte, builds source-ordered call/event plans and uses the retained independent concrete numeric-instruction oracle from findings-1509-20261014. It executes only the old oracle definitions, never its old output writer, so historical fixtures remain unchanged. New outputs only: caller-event-fixtures.json/tsv.

32 cases cover eight actions × four starting phases, checking complete selected92-byte record, working traits, RNG state, body/face state and exact original source-PC event sequence. Fixture inputs are deliberate controlled snapshots, **not captured DOS states**. Separate Rust tests verify no-update/due poll order, one gate per call, phase persistence/modulo, two timestamp reads, counter wrap, signed setup lower bounds, slot navigation, explicit cancellation/finalization boundaries, and an actual original GRP named slot retaining its entire numeric record while consuming the preliminary trait draw.

Four new tests passed; isolated harness including existing character/generator tests passed13 in isolated-tests.log. Parent owns workspace integration/build. Constructor and actions accept only the recovered reachable animation/identity domains; no original fault behavior is emulated. New source slices appearance-and-step.asm, setup-and-poll.asm, input-and-navigation.asm and exact byte/hash JSON preserve original provenance.

Next: obtain an explicit original runtime snapshot/event sequence or isolated fixed-seed comparison; resolve indirect callback/state entry and native poll/counter scheduling; integrate only with shared RNG and source-ordered sex/trait changes intact. Keep finalization disabled until the full caller/output lifecycle is validated. No additional dependencies or source outside the new module were changed by this subtask.
