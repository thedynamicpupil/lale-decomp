# Native walking integration and optimized build — 2026-10-19

This continues the existing Rust port and PC1/PC2 traversal objective. M05 is
still IMPLEMENTING. The normal connected route still stops at encounter8; no
battle, victory, key acquisition or continuous map completion is claimed.

## Delivered Rust increment

- Normal Up/Down now supplies forward/backward vectors at the live PC cell and
  facing to the existing original1670 MovementCall. Left/Right keeps the accepted
  native quarter-turn policy. These are host bindings, not newly recovered DOS
  keyboard mappings or original walking/turn animation cadence.
- Current-mode3 and candidate-mode1 events run synchronously. Live vectors are
  passed on each return. Open steps commit only afterward; state2 doors retain
  forward-only/graphics8 prechecks, timed original frames and a single live-vector
  helper commit. Destination-mode2 dispatch follows the committed room draw.
- Views/turn caches relocate after commits, including within a batch of native
  input events. The next step no longer uses the old starting-cell room snapshot.
- PC1/PC2 opcode11 area loading uses original destination width, big-endian
  position, remainder-minus-one x and modulo4 facing. The old PCS machine retains
  its own original bytes until acknowledgement terminates it and vetoes the old
  step. Destination coordinates are not incremented again.
- Selector0/state0 is provably Open without knowing resident DS9f0e: graphics9's
  priority requires nonzero paired state. Unknown nonzero selector0 and invalid
  loader selectors remain unresolved. No resident selector value was invented.
- Unsupported visual transitions, door variants and dedicated service handlers
  display an explicit barrier. They do not authorize a step. Escape can return
  from these barriers; ordinary turns clear an inactive diagnostic warning.
- `rust-port/play-native-release.sh` builds the optimized native binary offline,
  resolves resources relative to itself and works from other working directories.
  Existing development launcher and prior features remain available.

Implementation: `rust-port/crates/lale-runtime/src/otopark_gate.rs`,
`otopark_room.rs`, `menu_reference.rs`; parser adapter:
`rust-port/crates/lale-assets/src/pc_map.rs`. Deterministic movement remains in
existing `lale-core::movement`, rendering/resource parsing in lale-assets, SDL
input/presentation and external effects in lale-runtime.

## Evidence and validation

This session integrated retained evidence; it did not create new DOS runtime
or REA/Ghidra observations. Relevant source/runtime references:

- [Original movement and helper boundary](phase-five/navigation-20261015/MOVEMENT_BOUNDARY.md):
  physical31f10..32624, original1670:0000 and1662:798c.
- [Conditioned PC1→PC2 DOS trial](phase-five/stairs-runtime-20261016/PC1_TO_PC2_DOS.md):
  Evet at PC1(1,5) loads PC2(3,22),facing3; Hayır vetoes. Dog/key flags were
  deliberately set in that original trial and remain explicit test setup only.
- [General renderer](NATIVE_GENERAL_RENDERER_CHECKPOINT_20261016.md),
  [acquisition/door](NATIVE_ACQUISITION_DOOR_CHECKPOINT_20261016.md),
  [illustration/encounter frontier](NATIVE_ILLUSTRATION_CHECKPOINT_20261016.md).

All **168 test executions** across workspace suites pass (includes shared runtime
modules compiled into more than one executable; this is not168 unique tests).
New integration tests exercise16 ordinary step cases: both banks, four vectors,
forward/backward host arguments; unchanged party/RNG/flags; destination pixels;
and turns after relocation. They select original cells with no endpoint events,
without making those cells reachable in normal gameplay. Additional tests cover
starting walls/backward-door refusal and the conditioned PC1→PC2 accepted/refused
branch. Without supplied party/key conditions, the original refusal dialogue
remains pending17, rather than being skipped. Existing PC2 reverse-route script
veto tests remain passing. Source-byte assertions and retained DOS pixel tests
continue passing; no new whole-map DOS comparison or Fedora acceptance is claimed.

Release and development workspace builds, fmt and Bash syntax pass. SDL dummy
runtime verifies opening ten dialogues, warning/refusal, original transferred
acquisition panel, real four-stage door waits (0.63s in the logged run), automatic
(2,0), illustration wait and pending encounter8, with dog/key flags clear.
The optimized release launcher ran successfully from `/tmp` for three menu frames.
No packages or global settings changed. All233 original/historical baseline and
30 frozen hashes match the pre-existing manifests. Logs and preservation result:
[validation directory](phase-five/native-navigation-20261019/).

## What is and is not normally reachable

Launch `./rust-port/play-native-release.sh`; current controls and limitations are
in [NATIVE_BUILD.md](../rust-port/NATIVE_BUILD.md). Four named characters connect
to original films, opening dialogue, north-door choice, Sivri Daş swap/acquisition,
timed door, illustration and the original warning. **Encounter8 remains pending.**
The host does not set dog/key flags. Conditioned area-load tests establish shared
integration but do not make PC2 accessible before authentic prerequisite events.
Remaining state3/graphics9 visual helpers, other area/service hosts, combat,
earned key, complete inventory/equipment/save lifetime, audio fidelity, RNG poll
cadence and appearance13 remain incomplete. No guessed mechanics were added.

## Handoff

1. Continue from original opcode8 combat entry (retained dispatcher candidate
   func_0x00026686; resolve its original stub). Read the REA skill and use the
   separate owned Ghidra workspace; validate critical code against instructions.
2. Recover enemy-group13/count1 initialization, actual battle presentation/input,
   result/death return and persistent writes. Do not acknowledge encounter8 until
   its host genuinely completes. Then trace how the party earns key flag2.
3. Connect the newly integrated ordinary/door/area hosts through the earned world
   state; complete unsupported visual transitions/services only from evidence.
   Check the PC2 return veto and test continuous PC1/PC2 navigation on Fedora.
4. Preserve prior accepted desktop behavior. Obtain fresh desktop observations
   for acquisition/door and movement when useful; automated source/pixel tests
   are not desktop acceptance.

No live DOS session was inspected or resumed here. Historical session64818's
last recorded register boundary is in the preceding illustration checkpoint;
confirm actual liveness/registers/overlays before reuse, never assume the old
pause remains current. All original distribution, emulator, GUI Ghidra project,
reference media, prior runtime saves and historical checkpoints were preserved.
