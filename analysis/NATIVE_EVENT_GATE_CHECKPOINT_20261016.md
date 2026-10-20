# Native event-gated movement continuation — 2026-10-16

The persistent PC1+PC2 navigability objective remains active and incomplete.
This checkpoint extends the preceding general renderer milestone; it does not
claim naturally played stairs, completed acquisition, combat or native walking.

## New original DOS proof

`phase-five/stairs-runtime-20261016/PC1_TO_PC2_DOS.md` retains54 hashed captures,
raw debugger logs, state summaries and its verification script. Original movement
from explicitly conditioned PC1(1,5),facing3 invokes current mode3(offset765), then
candidate mode1(offset750). Hayır returns AL0, veto1, unchanged position. Evet
loads area1/PC2 through the original loader, commits(3,22),facing3, and sets the
old movement veto. Event cleanup calls the ordinary renderer with argument1;
the old movement subsequently clears b9c8 and returns AL0 without another delta.
The8197/80d0 transition helpers did not fire in this bounded route; guard remained0.
The trial explicitly set dog/key flags1+2 and opening249. It is not a natural
playthrough or proof of graphics9 animation. Owned session70097 was terminated.

New modal/UI evidence is in `phase-five/world-ui-20261016/WORLD_UI.md`, including
actual REA records and original disassembly. Original choices use encoded byte
length for origins, proportional glyph width for inclusive hitboxes, original
DENEYX/IREM6 fonts and E/H input. The north warning reproduces both original DS
boxes(57,169,95,185) and(212,169,257,185). The bottom320x52 region at y148 is saved,
cleared black, then restored on choice return; bbaa resets0. No full original
packed VGA warning-image comparison is claimed: the old raw A000 capture was
not suitable as a logical framebuffer fixture.

The host initially exposed a text-decoding omission through wrong boxes and line
count. Original4870d appends NUL and calls47d1a, whose raw `ADD AL,0a` and repeated
strlen loop prove byte+10 decoding BEFORE normalization. Native decoded actual
PCS strings now reproduce the original linecounter4 and both DS hitboxes. Raw
original helper bytes are retained as event-text-47d1a.bin; tests bind the add
instruction and original callsite, including decoded-NUL termination.

Opcode23[01,0f] is now source-proven: choose first party index1..4 with maximal
SIGNED field15 (ties lowest index), write speaker selection bb9c; no RNG or party
mutation. Dialogue17 speaker5 uses that selection, original S-appearance portraits,
IREM62.CMP prefix atlas84 and original timed/RNG animation. Pure helpers exist;
the full party-aware runtime dialogue host is not wired yet. Acquisition mode0
adds pending resources BEFORE input; Esc exits without item transfer, clears
temporary pending items/resources, and retains the entry additions. Do not model
Esc as undoing all acquisition effects.

## New native implementation

- `lale-core::movement::MovementCall` suspends at actual event/helper boundaries.
  Ordinary/door calls check veto after each event; graphics9 checks only after
  both mode3 and mode1. Live coordinates/width are reread; door candidates use
  live forward vectors. Graphics8/nonforward doors fail before veto reset.
  Door return does not add a second position delta. Animated state3 and graphics9
  visual helpers remain explicit boundaries, not ordinary movement.
- `lale-assets::world_events::dispatch` routes original grid offsets through
  special keys first, then PCS groups. Dedicated unknown handlers remain explicit.
  Missing groups, bad modes and invalid offsets are errors, never allow decisions.
- `lale-assets::world_ui` implements encoded text/font/layout/choice primitives,
  source-proven speaker maximum selection, portrait frame RNG order and stopping
  helpers. Acquisition helpers cover only verified additions/Esc recognition.
- Normal standalone AND menu-reference room now accepts **Up while facing north**
  to run the actual current/candidate scripts and present the original warning
  and Evet/Hayır choice. H/Hayır restores the room and releases input at(2,1).
  E/Evet restores the text background and **remains pending at opcode23**, because
  live party/speaker/dialogue/acquisition hosts have not yet been connected.
  The title identifies this incomplete event host; Esc returns from the prototype.
  During choice, original Esc/Enter/arrows do not select an option. No flag1/2,
  item transfer, door animation or position commit is silently performed here.
  Existing Left/Right, menu/creation/films and separate `--door-sequence` rendering
  inspection remain intact. No save is written by this gate.

All4000 in-bounds PC1+PC2 cell/facing combinations now generate and render from
original resources without unsupported draws or missing members. The normal
`scene_map_coverage` test checks that count. This proves source coverage, not
original pixel equivalence for every view or permission to enter every cell.
Existing selected DOS full-index differential tests remain the visual evidence.

## Validation and continuation

```
cargo test --workspace --offline --manifest-path rust-port/Cargo.toml
cargo build --offline --bins --manifest-path rust-port/Cargo.toml
cargo fmt --manifest-path rust-port/Cargo.toml --all -- --check
SDL_VIDEODRIVER=dummy SDL_AUDIODRIVER=dummy ./rust-port/target/debug/lale-otopark-room --root . --check-door-choice
```

The native main-thread SDL check presents room→original warning/choice→restored
room for Hayır and Evet, verifies pending23 and unchanged(2,1), and passes. A first
attempt to create SDL inside a Rust test worker was correctly rejected by the
existing main-thread guard; it was removed and replaced by this main-thread
application check. Native unit checks exercise actual scripts, both choice
branches, pending acquisition/encounter barriers and conditioned stair loading
without reapplying the old delta. New Fedora desktop acceptance is still needed.

Next actions:

1. Wire live Party numeric records through room entry. Use verified field15
   speaker selection and original dialogue renderer/portrait/timing; do not
   fabricate a speaker or a fresh RNG history. Connect opcode23 then17.
2. Recover and implement acquisition's original screen/resource/item pool and
   Esc/transfer cleanup. Then the already exact door animation can run only after
   the actual candidate event returns. Present PC1(2,0) and run destination mode2;
   encounter8 must stay pending until its authentic host completes. Never set
   dog flag1 or key flag2 to let native gameplay continue.
3. Continue broadening actual DOS movement/visual checks. Fresh session18730
   was started in owned runtime/stairs-20261016/run2 after the stair checkpoint.
   PC2 arrival west pair is state1, so verify blocked west first; then original
   north door(3,22)→(3,21), both cells' event keys zero. Worker evidence goes in
   phase-five/pc2-movement-runtime-20261016. Reconfirm current live handle/stops;
   do not assume a paused session survives an interruption.
4. Native world lifetime must retain EventState, original veto/AL distinctions,
   map buffers and authentic area cleanup. PC2's return refusal and service keys
   remain restrictions. Separate known source coverage from DOS/Fedora acceptance.

Earlier checkpoints and protected originals remain untouched; all implementation
is under rust-port. Latest historical preservation pass recorded243 baseline and
30 frozen hashes unchanged; the new DOS stair run separately verifies20 copied
original distribution sources unchanged.


### Same-session live party integration addendum

The ordinary creation→film→room path now passes its actual prepared92-byte
numeric records into the room. Verified opcode23[01,0f] executes signed field15
maximum selection without RNG or mutations, then stays pending at dialogue17.
Standalone/debug room entries have no supplied party and correctly stay pending23.
The prior pending23 description therefore applies to those entries; fresh normal
creation now reaches pending17 with the correct selected live party member.
No dialogue, acquisition or encounter has been implicitly acknowledged.

Native `--check-door-choice` now additionally reads the original GRPHAZIR.DAT
fixture for an explicitly supplied-party SDL check: speaker selection completes,
dialogue17 stays pending, numeric records remain byte-identical and position
remains(2,1). This diagnostic fixture is not used to seed ordinary fresh gameplay.
The SDL main-thread checks and targeted native gate tests pass. The earlier
attempt to read extensionless GRPHAZIR in this new check failed; corrected to the
actual original GRPHAZIR.DAT name before reporting validation.

Fresh PC2 follow-up run2 was excluded after a vector-write typo touched DS00c4
instead of b9c4, with no pre-typo same-run dump. Cross-run byte agreement was not
accepted as restoration evidence. It was terminated; the worker is starting clean
run3 and using the original direction helper006b. Session18730 is therefore no
longer a usable accepted continuation state. Consult the live worker/current
pc2-movement-runtime-20261016 evidence before selecting a debugger handle.


### Fresh dialogue DOS/RNG continuation

[Actual dialogue draw/RNG evidence](phase-five/world-dialogue-runtime-20261016/DIALOGUE_DOS.md)
now proves original speaker2 and four portrait draws, all10words each, plus every
resulting32-bit RNG state. Fresh normal creation passes its actual RNG state into
the room; the unchanged RNG implementation moved to lale-core and is reexported
for creation. Native dialogue17 is still pending; this is preparation for the
faithful dialogue host, not an acknowledgement or acquisition bypass.

Root-owned DOS session64818 is confirmed paused at0e00:2ca1 BEFORE portrait draw3
(the fourth copy); SP0b6e/BP0b94, DS1f04/SS2dac. Original input/selection ran after
Evet. Only opening249 was explicitly set; dog/key flags remain clear. Consult the
new report before touching the live pending stack. Worker run3 was not certified
before its usage limit; use this independently owned fresh run instead.
