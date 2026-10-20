> Public-development preparation, 2026-10-20: the current inclusion policy now
> retains research, assembly, maps, reports and historical checkpoints by default.
> Earlier source-only publication statements below are superseded by
> [PUBLICATION_POLICY.md](PUBLICATION_POLICY.md). Combat work remains paused;
> this milestone changes repository preparation, not native gameplay.
> See [the new audit/checkpoint](../analysis/public-development-20261020/CHECKPOINT.md).

> Git preparation update, 2026-10-20: combat research was paused at the user's
> request. The source-only initial index contains 100 audited files; no commit or
> remote exists. See `analysis/git-preparation-20261020/CHECKPOINT.md` for the audit,
> external private projection-data prerequisite and validation, and
> `analysis/git-preparation-20261020/COMBAT_PAUSED.md` for the combat handoff.
> These living internal notes and the private research archive remain excluded
> from the proposed public source tree.

# Project state

## Latest reusable-systems continuation — 2026-10-20

The latest user priority is original reusable combat/world execution architecture
before enabling the native battle engine. Phase1 remains RESEARCHING. New
[checkpoint](../analysis/REUSABLE_SYSTEMS_CHECKPOINT_20261020.md) and
[readiness/gap model](../analysis/phase-five/reusable-loops-20261020/REUSABLE_SYSTEMS_MODEL.md)
extend the preceding combat evidence.

Original world steps and combat rounds share1670:0048→39fd. A conditioned DOS
helper trial verifies clock carry and timer expiry/compaction, including the
skipped shifted slot. A pure Rust `world_tick` module matches all captured clock
and four-party numeric/actor timer fields; it is unwired pending caller lifecycle
recovery. A new actual Tab trace selects actor25 after28; subsequent presentation
and AI remain unconfirmed. Original run2 was terminated; both owned REA sessions
were closed with new snapshots.

The original world outer loop is1670:8524;0824:2e45 is only shared keyboard poll.
New source audit identifies AL-driven arrival-event re-entry, shared time plus
separate maintenance/idle RNG, and a second nonPCS combat caller. See the
[world gaps](../analysis/phase-five/reusable-loops-20261020/WORLD_LOOP_GAPS.md).
Native walking currently hosts verified inner movement/event boundaries, not
the complete original outer loop. No AI/attack/equipment/result parity or native
battle is claimed. Normal play remains pending8 with dog/key flags clear.

179 workspace test executions pass (includes repeated runtime-module suites),
offline development/release builds, formatting and SDL menu/debug/connected-route
checks pass.233 baseline and30 frozen hashes still match. No new Fedora desktop
acceptance. Next: bounded instruction trace from eligible-actor selection through
camera/redraw/wait, then AI/physical attack/equipment and true result→world deltas.

## Combat Phase1 evidence checkpoint — 2026-10-20

[Execution model](../analysis/phase-five/first-combat-20261020/COMBAT_EXECUTION_MODEL.md),
[original runtime evidence](../analysis/phase-five/first-combat-20261020/DOS_COMBAT_ENTRY_AND_STEP.md),
[continuation](../analysis/FIRST_PLAYABLE_COMBAT_CHECKPOINT_20261020.md).
The real original mode2 dispatcher reached1694:0138/bodyB40A; actual tactical
framebuffer/palette,28 actor slots and one real player Down step are captured.
The27×27 active terrain/28 stride,7×7 camera, group13→KOPEK, actor classes,
initiative, physical attack, dog AI, equipment references and writeback now have
source-backed models. Manual12×12-region wording conflicts with executable9×9.
Runtime movement confirms one cell, one allowance point and one shared RNG draw.
The later Tab continuation has no confirmed result and is excluded from turn/AI
claims; owned DOS run1 has been terminated, not left paused.

Rust gains raw combat-table readers and read-only pending-command operands in
F7 debug exports. These do not acknowledge combat.177 automated test executions,
offline development/release builds and fmt pass; SDL regression/boundary/debug
checks are recorded in the checkpoint. All233 baseline+30 frozen hashes match.
Normal native play still stops at encounter8. Phase1 remains RESEARCHING;
Phases2–5 have not been enabled. Full original attack/AI/outcome differentials,
terrain/render comparison, equipment interaction and Fedora acceptance remain.
No captured original frame is used as a native runtime asset.

## Active priority — first playable Otopark combat (2026-10-20)

The current user assignment supersedes the previous navigation-first priority.
Work sequentially: (1) recover original combat execution architecture, (2) authentic
interactive tactical screen, (3) verified player actions and enemy AI, (4) original
inventory/equipment/weapon usage, (5) complete victory/defeat and world return.
The milestone requires a real player-controlled battle, not a rendered scene or
acknowledged encounter opcode. Continue the same objective across sessions.

Phase1 is RESEARCHING. New evidence is under
`analysis/phase-five/first-combat-20261020/`; no combat result is enabled in Rust.
Original opcode8 reaches1694:0138→bodyB40A; retained assembly identifies actor,
derived-stat, terrain, equipment and AI consumers. Runtime comparison is in
progress on a fresh owned DOS copy. Preserve all existing native behavior and
F12/F5/F7 diagnostics; dog/key flags remain clear in ordinary play.

## Native debug tool — 2026-10-19

[Usage](../rust-port/NATIVE_DEBUG.md),
[checkpoint](../analysis/NATIVE_DEBUG_TOOL_CHECKPOINT_20261019.md).
`debug-native.sh` enables a room state overlay. F12 toggles it, F5 pauses/resumes
clock/input, and F7 exports a new diagnostic bundle under runtime/native/debug.
State includes raw cell/flags/party/RNG, pending movement/event and recent changes;
exports include clean RGB pixels, indexed pixels and6-bit palette. A no-display
`--dump` path captures the initial room. This tool does not change flags, teleport,
acknowledge encounters or advance the gameplay frontier. Original resources and
saves remain untouched. Automated validation is distinct from Fedora acceptance.

## Latest native build — 2026-10-19

[Checkpoint](../analysis/NATIVE_WALKING_BUILD_CHECKPOINT_20261019.md) and
[launch/controls](../rust-port/NATIVE_BUILD.md). Optimized Rust/Linux build is available; its launcher works from other
working directories. Normal Up/Down now uses live-cell,
live-facing original movement calls; turns follow the new cell after a completed
step. Open state0 is resolvable even for selector0 without inventing DS9f0e.
Doors retain forward-only checks and event gates. Shared opcode11 loads PC1/PC2
with original coordinate arithmetic and old-move veto; conditioned native tests
cover the previously DOS-observed PC1(1,5)→PC2(3,22) route and refusal.

This is integration of retained source/DOS evidence, not new DOS runtime evidence
or Fedora desktop acceptance. The normal route still reaches acquisition, door,
illustration and **pending encounter8**. Dog/key flags are never granted by the
host. Full normal PC1+PC2 traversal remains IMPLEMENTING: battle result, earned
key, other animated transitions and dedicated services remain barriers. No live
DOS/Ghidra session was changed. Latest release tests and smoke logs are linked
from the checkpoint; historical checkpoints and frozen files remain unchanged.

## Current frontier — destination illustration and encounter (2026-10-16)

[Latest checkpoint](../analysis/NATIVE_ILLUSTRATION_CHECKPOINT_20261016.md).
The normal native path now continues through acquisition and automatic door
movement to(2,0), composes original illustration13, updates only the original
lower128 palette colors, waits50 original20-unit cycles, and presents warning2.
It stops at encounter8 with dog/key flags clear. A fresh controlled DOS helper
comparison matches all40000 logical image indices and all768 live palette bytes.
Offline workspace tests/build/fmt and native SDL runtime checks pass. Full
PC1+PC2 traversal and new Fedora acceptance remain incomplete. The current DOS
session64818 is the fresh run at original main0824:2e45/SP0f3c/BP0f72; its earlier
reboot/acquisition pause has been superseded. See the checkpoint before reuse.
Next: authentic encounter/battle entry and result, then key/stair/PC2 integration.

## Latest continuation — acquisition and north door (2026-10-16)

[Current checkpoint](../analysis/NATIVE_ACQUISITION_DOOR_CHECKPOINT_20261016.md).
Native normal creation→film→Otopark now hosts actual mode0 acquisition: original
panel, stone transfer/swap-back, party selection and Esc/close cleanup. Initial
and both transferred/back panel states match all19,840 original DOS indices;
complete numeric records/pool/RNG match the controlled original exchange.
After acquisition returns, four timed original door frames lead automatically
from(2,1) to(2,0) and the correct destination renderer. Destination illustration3
is the new pending event barrier; dog/key flags remain clear. Full PC1+PC2
traversal remains IMPLEMENTING and incomplete. Offline workspace tests/build/fmt
and native SDL checks pass (door0.64s; opening6.25s). New Fedora acceptance,
acquisition hover/cursor/keyboard extras, illustration and encounter hosts remain.
233 baseline+30 frozen hashes unchanged. DOS64818 rebooted during a later excluded
Esc trial and is no longer the old acquisition state; use the checkpoint's restart
boundary. Historical status below is superseded where this section differs.

Latest user priority (2026-10-16): make **both Otopark PC1 and Mecidiyeköy
PC2 genuinely navigable** in the Fedora native build. This is the persistent
objective across usage windows: general source-derived five-layer renderer,
collision/facing/doors/stairs, authentic connection and event gating. Implement
verified shared subsystems promptly, compare DOS and native, and checkpoint
regularly. Neither captured isolated cells nor unit tests alone complete it.
The accepted menu/creation/cinematics/turning and all preservation boundaries remain.


Updated 2026-10-16, north-door DOS input/commit investigation. Read [UpdateablePrompt.txt](../UpdateablePrompt.txt)
and [ROADMAP.md](ROADMAP.md) before continuing. Latest checkpoint:
[NATIVE_DIALOGUE_CHECKPOINT_20261016.md](../analysis/NATIVE_DIALOGUE_CHECKPOINT_20261016.md).
Historical checkpoints remain unchanged; later findings below supersede their gaps.

The native Rust application remains an incremental faithful port, Linux first,
Windows later. Full gameplay is not yet available.

## Working functionality and user acceptance

The user passed all eight latest desktop checks: automatic menu fades,
menu-to-character transition, original sprites/symbols, appearance/pose controls,
name editing, four drafts, return transitions and rendering/aspect ratio.
Those accepted milestones were preserved. The user additionally confirms the
standalone silent SEQ preview and F9 integration work on Fedora, with all five
streams playing in order without observed problems. The user also confirms debug PCM audio is audible on Fedora. This accepts
audibility, not original gain/synchronization/fades. Generation and Otopark
diagnostic features still await desktop acceptance. The user confirmed both native
analysis tools exported their expected atlas/survey files successfully on Fedora.
The user accepted the prior Otopark starting view's original perspective and facing
side on Fedora. The latest user also confirms the starting-room facings look
correct. This accepts their visuals; original turn timing and other unreported
creation checks remain pending.

The resource-driven menu/character prototype runs as
`rust-port/target/debug/lale-menu-reference`. FLiB lookup, strict CMP decoding,
full-stream CMP inspection, palettes, original font, menu lookup blends and
character layers are implemented. Fifteen body sets render. Appearance13 remains
a strict3997-vs3996 CMP discrepancy; no replacement/crop is used.

The native application now offers a silent, advancing SDL cinematic debug preview
(`lale-seq-preview`, or F9 in the interactive menu/character UI).
[Launch and desktop checks](../rust-port/NATIVE_SEQ_PREVIEW.md). This uses host
deadlines at GHD fps; it does not establish original audio/fades or gameplay
progression fidelity. Escape restores the calling screen. Native party completion
now plays the same streams and proceeds to the composed starting view.
Opt-in [PCM sound inspection](../rust-port/NATIVE_AUDIO_DEBUG.md) is now available.
The accepted default/F9 mode stays silent.

[Graphical generation diagnostic](../rust-port/NATIVE_CREATION_DIAGNOSTIC.md)
now exposes stats/rerolls/identities/names/four slots from an observed original
pre-setup state. Launch `./rust-port/preview-character-generation.sh`. Its idle
RNG/time is frozen except explicit F8 polls; fourth completion prepares664 bytes
in memory only. This is not ordinary new-game scheduling or save IO.

[F10/standalone Otopark resource inspection](../rust-port/NATIVE_OTOPARK_RESOURCE.md)
now browses nine verified PC1 loader-linked source sheets with PAL3D. Arrows
choose walls/doors/stairs/surfaces/background; WASD pans at1:1. The initial UFUK1
page is preserved exactly. This is debug inspection, not a composed room.

The asset inspector additionally reconstructs authentic SEQ footage frames:
[usage](../rust-port/NATIVE_SEQ_INSPECTION.md). This is an offline inspection
export, not a static replacement for original film playback.


## Visible native creation and starting view — current

Run `./rust-port/play-native.sh`. Normal New Game now generates original stats,
animates body poses, supports identities/rerolls/names and completes four named
characters. Completion validates the original prepared664-byte layout, creates a
new checkpoint under `runtime/native/parties/`, rereads it, plays original SEQ1–5
and opens the source-composed Otopark starting view. Files are never overwritten.
These are creation-party checkpoints, **not full game saves**.
[Launch/controls/desktop checks](../rust-port/NATIVE_PLAYABLE_INCREMENT.md).

The seed uses recovered original calendar/DST fallback arithmetic on host local
civil time at native New Game entry. Earlier DOS startup/menu RNG draws are not
emulated; `--creation-seed U16` supplies a reproducible native boundary. Body
timing uses original150 source units. Automatic CPU-poll random-face triggering
is still incomplete; no per-frame RNG burns are fabricated. Snapshot/F8 mode
retains its accepted explicit/frozen behavior. No new controlled original full
fourth-slot writer/re-read runtime comparison completed this increment.

F11, party→film completion and standalone `lale-otopark-room` now share all four
original facings at PC1(2,1). Left/right arrows turn in place; Up/Down do not move.
117 DOS draw captures establish the four command streams. Original CMP/PAL3D,
keyed rectangles/reflection and proved opaque occlusion of23 scaled draws are
used. Tests match all40000 indexed viewport bytes per facing in a controlled
turn sequence against original DOS bank reads. Three retained key254 bytes show
host black; the original HUD/background is not implemented. The accepted facing2
RGB export is unchanged. General cell/layer dispatch, scaler, movement, collision,
doors/stairs interaction, dialogue, inventory and encounters remain open.
[Turning evidence](../analysis/phase-five/turning-20261015/FOUR_FACINGS.md).

F9 and standalone debug film retain their accepted silent/default END hold; normal
completion returns after the final frame duration. `--debug-audio` enables existing
PCM for completion playback. F10 stays source-sheet inspection. Native body/UI,
four-slot persistence/re-read and starting-room SDL smoke pass.87 offline test
executions and all-four-facing SDL smoke passed in that increment; the latest
user accepts the starting-room facing visuals. Prior milestones/analysis-tool acceptance are retained.

## Current implementation boundaries

- Pure trait/numeric generation preserves26 ordered draws,17 destinations,
  16-bit wrapping, signed division and final minimum pass. Its32 instruction-derived
  fixtures pass. Two new controlled original DOS boundaries also match Rust: a
  complete first-slot28-draw setup and a separate27-draw generator invocation.
- New headless creation caller takes explicit raw party/traits/animation snapshots,
  shared RNG and counter reads. Setup, named/blank paths, race-before-appearance
  sex ordering, rerolls and idle phase behavior have trace tests. It invents no
  seed or poll rate. Actual first-entry/first-setup state and default hook are
  now observed. Subsequent callback/overlay lifetime, reentry/mouse-release
  polling, automatic seed and native scheduling remain integration boundaries.
- Optional graphical snapshot diagnostic connects the caller/generator to stats,
  rerolls, original identity order, names and all four slots. F8 is an explicit
  debug poll; there are no automatic idle draws. Fourth completion prepares
  original-layout records in memory. Ordinary native creation now prepares and
  persists the same layout; source-exact CPU/face scheduling remains incomplete.
- Pre-write preparation and downstream reader are recovered. New pure party
  workspace reproduces name/auxiliary/numeric copies and derived race labels,
  preserving unassigned text gaps. Serialization roundtrips664 bytes. Original
  files are never written; broader game save/load is not implemented.
- SEQ literal/repeat/skip pixel updates, hold records, baseline/flagged palette
  behavior and frame-associated raw sound blocks are implemented for inspection.
  All2433 records across five streams decode chronologically;2396 update pixels
  and37 hold. Silent host-clock inspection playback is now connected to SDL. Original
  scheduling/refill recovery and clock/audio synchronization remain incomplete.
  SDISB16 consumers now prove unsigned8 mono PCM22050Hz and byte positions; an
  opt-in SDL queue plays it with explicitly approximate host alignment/gain.

## Verified new source discoveries

SEQ1 frame50 contains camera footage with embedded title pixels ending
**“Elli Billah Sonra...”**. This resolves the remembered Önce/Sonra conflict for
the film. The resident DS4d61 prose ending“önceydi” remains a separate consumer
trace. [Decoded title](../analysis/phase-five/integration-20261014/seq/seq1-trial/seq1-0050.png).
The native RGB export exactly matches the independent decoded fixture.

The original main connects creation success→party reader→SEQ1–5→area0 loader.
PC1/Otopark/UFUK1 andPCS1 are code/data-linked. PC1 is10×10 with15-byte cells,
initial zero-based(2,1). New event tracing reads offsets11..14 as decimal key
01010106. PCS1 has six exactly accounted length groups and an add10 text decoder.
A span at member500h decodes `nooluyo yaa? o neydi Oyle` plusbyteb6. The lifecycle continuation below resolves the fixed speaker selectors, once-only
flag and separate acquisition link; control-byte display behavior remains open.
All15 field meanings and the shared renderer/event interpreter are not complete.

Original item text `sivri daş` and acquisition pool item2 are independently linked
by original indexed-name consumers. Transfers, exit/dog encounter and combat
formulas remain unimplemented. See [first-playable ledger](FIRST_PLAYABLE_PATH.md).

## Last build and checks

**95 test executions pass offline** (includes reused modules across binary targets). Formatting/build pass without
warnings. SDL dummy smoke covers normal/diagnostic character views, background,
all2433 silent records and all2433 records with opt-in PCM queues. Native
stat-column image was inspected; numeric state matches captured DOS boundaries.
Prior visuals, silent/F9 playback and debug-audio audibility have user
desktop acceptance. New source-sheet browsing is automated-checked only.
Tests distinguish malformed input handling, source fixtures and static call plans
from original runtime observations. Existing desktop acceptance remains the user's
eight checks and silent/F9 playback above. Windows has not been validated.

The native menu counter schedule still does not emulate VGA retrace, original CPU
preparation costs or audio retuning. Manual keypad5/0 vs executable C/Tab mappings
remain unresolved. Native face cadence is not guessed from capture FPS.

## Evidence and preservation

- [Caller state/RNG boundary](../analysis/phase-five/integration-20261014/character/CALLER_STATE_BOUNDARY.md)
- [Party reader/workspace](../analysis/phase-five/integration-20261014/party/PARTY_REREAD_BOUNDARY.md)
- [SEQ pixel decoding](../analysis/phase-five/integration-20261014/seq/SEQ_PIXEL_DECODING.md)
- [Initial-cell/PCS text frontier](../analysis/phase-five/integration-20261014/otopark/CELL_EVENT_AND_DIALOGUE.md)
- [Previous formulas/caller audit](../analysis/phase-five/findings-1509-20261014/generation/GENERATOR_IMPLEMENTATION.md)
- [Startup seed audit](../analysis/phase-five/living-continuation-20261014/rng-seed/SEED_PATH.md)

Original distribution, GUI Ghidra project, emulator/configuration, reference media,
frozen Phase Three artifacts and historical checkpoints remain protected. No
packages/global configuration changed. Phase Four is not marked complete; no
modding/editor work is authorized by these increments.


The callback frontier is narrowed: known stores install1694:1935, a150-unit
portrait callback with extra shared draws, or restore resident05dc:00cd, a no-op.
A third default05dc:08f6 is now observed during menu initialization. Actual
creation-entry pointer lifecycle is still unresolved; no target is
assumed by the headless model. See the caller report's additional callback audit.


## Lifecycle/manual continuation

**DOS-RUNTIME-OBSERVED:** a controlled original DOS run on disposable copies
caught the DS964c bulk-copy installation of relocated05dc:08f6 during menu setup.
**BINARY-VERIFIED:** initializer DS98d4 and72-byte DS98b4→962c template copy explain
this default. This does not establish actual creation entry or complete RNG
scheduling; named/blank reentry, active portrait callbacks, idle polling and held
mouse release still require controlled traces. Party finalization and save/load
remain gated. [Runtime evidence](../analysis/phase-five/lifecycle-20261014/runtime/CALLBACK_INITIALIZATION_OBSERVATION.md).

**RUST-IMPLEMENTED:** isolated SEQ frame-index and strict signed refill-budget
arithmetic, including counter wrap, is exported and tested. The existing pixel
decoder is unchanged. Original audio uses a44100-byte two-half ring and dynamic
MCP dispatch; actual sample encoding/output, synchronization, complete recovery,
host scheduling and original fades remain pending. [Sound/refill audit](../analysis/phase-five/lifecycle-20261014/seq/SOUND_RING_REFILL_AND_CLOCK.md).

**BINARY-VERIFIED:** initial Otopark(2,1), mode2/group5 has ten dialogue operations
with selectors1,2,1,2,3,1,3,4,1,3 and once-only flag249. Separate adjacent cell(2,0)
group0 contains the outside warning/choice, speaker5 stone suggestion and opcode9
pool[2,0,0]; indexed name lookup binds2 to Sivri Daş. Inventory accept/cancel and
persistent transfer are still unverified. No scene/gameplay VM was enabled.
[Event/acquisition audit](../analysis/phase-five/lifecycle-20261014/otopark/OTOPARK_DIALOGUE_AND_ACQUISITION.md).

**MANUAL-DOCUMENTED:** direct PDF6–29 review produces attribute/item/combat index
and a structured34-vecize catalog with original spelling and matching literal
cells. Literal ordinal alone is not an item/spell ID. Güç describes vitality,
Vuruş Gücü physical attacking power; current Damak/Güç field interpretations need
consumer proof. Manual effects are not implemented formulas. [Manual index](../analysis/phase-five/lifecycle-20261014/manual/MANUAL_TO_BINARY_INDEX.md).

Latest applicable checks:38 Rust tests, formatting and offline workspace build
pass. Prior SDL smoke/desktop acceptance remains historical; no new visual or
audio acceptance is claimed by this arithmetic-only increment.


## Visible integration continuation — 2026-10-15

The latest user instruction shifts work toward small visible increments while
retaining executable-evidence requirements. M04 now has an automatically
advancing silent SDL debug preview for all five original streams, pause/step/
restart and explicit END hold. F9 exposes it without repurposing original menu
choices or completing creation. Full gameplay is still unavailable: creation
stat generation and party workspace are headless, Otopark resources/events are
researched, and inventory transfers remain unimplemented. No new binary/DOS
runtime finding is claimed by this integration increment.

Next prioritize the controlled creation-entry/shared-RNG snapshot and fourth-slot
validation so existing generation/workspace code can be connected to the UI.
Keep another verified visual increment moving in parallel with that dependency:
recover shared Otopark renderer/resource consumers before enabling room
rendering/navigation. Do not delay silent-preview desktop testing for audio.


## User acceptance — 2026-10-15 continuation

USER-CONFIRMED: the standalone SEQ preview and F9 integration both work on the
Fedora desktop; all five streams play in the correct order without observed
problems. This accepts the silent debug presentation, not original audio/PIT
synchronization or a completed character-to-world gameplay path. The earlier
preview checkpoint correctly recorded acceptance as pending at its own date.


## Current integration boundary — 2026-10-15

DOS-RUNTIME-OBSERVED: natural menu→main new-game→actual overlay entry and first
setup, relocated hook0e00:08f6 (original05dc:08f6). Original observed RNG
d1f0aee5→ecd597d9 after28 draws; a second seed's initializer+26 draws also
matches Rust. The reroll/callback/reentry experiment did not establish full
lifecycle, so no ordinary fresh-game seed/scheduler or finalization IO is enabled.
[Runtime/UI audit](../analysis/phase-five/character-ui-20261015/character/DOS_CREATION_AND_UI_BOUNDARY.md).

BINARY-VERIFIED/RUST-IMPLEMENTED: PC1 starts(2,1), direction2/(0,+1);18 strict
PC banks parsed. Five-layer compositor and floor/ceiling consumers recovered,
but generated18-byte projection tables and scaled blitters remain open.
F10 displays source background only.
[Renderer frontier](../analysis/phase-five/character-ui-20261015/otopark/COMPOSITOR_FRONTIER.md).

BINARY-VERIFIED/RUST-IMPLEMENTED: unsigned8 mono PCM, concrete MCP registration
and sample/start handlers, byte-based positions; optional debug audio output.
Original driver gain/timing/refill/fades remain open. The latest user confirms
audibility on Fedora, separately from original synchronization/fidelity.
[Audio audit](../analysis/phase-five/character-ui-20261015/audio/SEQ_PCM_DRIVER_BOUNDARY.md).

Next highest priority: stable resident RNG/return watchpoints plus current stub/
caller-stack capture across callbacks, then controlled original four-slot write/
re-read. Do not repeat recovered numeric formulas or initial setup. Keep all three
new diagnostics available for desktop testing while resolving that lifecycle.


## Walkthrough/native continuation — 2026-10-15

The latest user confirms debug SEQ PCM is audible on Fedora; gain, synchronization,
ring behavior and fades remain unresolved. Prior menu/character visual and silent
film acceptance is retained. Ordinary creation and first playable path remain gated.

**DOS-RUNTIME-OBSERVED:** consecutive resident RNG stops retain creation return
offset1e61 but change its segment35a6→3bef. Exactly one LCG update connects shared
RNGad02a081→8ccc88b6. Party, traits, body/phase and saved stamp are unchanged
within this below150-unit no-input interval. Follow-up captures default callback
entry, both trampoline/return relocation, and unchanged callback RNG85836d8e.
Actual BIOS Enter then reaches the relocated reroll callsite; RNGc182f267→1290ab52,
complete party/traits/raw body/phase match Rust. Two original-state differentials
pass. Automatic elapsed-animation/poll scheduling, reentry and finalization remain open.
[Controlled trace](../analysis/phase-five/walkthrough-20261015/character/CREATION_LIFECYCLE_RELOCATION.md).

**RUST-IMPLEMENTED DEBUG:** F10/standalone now browses nine verified original PC1
loader-linked sheets. Existing UFUK1 first-page pixels are unchanged. Arrows
select, WASD pans, Home resets; title retains member/offset/slot/dimensions. Actual
REA/assembly confirms keyed rectangular copy and horizontal reflection; generated
37×18-byte projection records and scaled blits remain room-renderer dependencies.
[Native/evidence guide](../rust-port/NATIVE_OTOPARK_RESOURCE.md). No room, movement,
collision, event execution or inventory transfer is simulated.

**FIRSTHAND VIDEO OBSERVATIONS:** all five new recordings now have a reusable
SHA-bound [timestamped visual index](../analysis/phase-five/walkthrough-20261015/visual-index/INDEX.md):
125 coarse frames/eight sheets and20 targeted full-resolution frames. First two
recordings take priority. Indexed opening room/dialogue, door choice, Sivri Daş
panel, dog/battle transition, stairs and open-sky city views are cross-referenced
with prior PC1/PCS1, executable, manual and Rust evidence. They do not prove input
commands, ownership mutations or combat formulas. Cache reuse checks confirm155
existing images are not regenerated. None of these videos covers character creation.
[Findings and next targeted windows](../analysis/phase-five/walkthrough-20261015/VISUAL_REFERENCE_FINDINGS.md).

Next: follow resident RNG/stack and the current creation stub across relocation
to validate elapsed>=150 animation, reentry and fourth-slot write/re-read; capture generated room
geometry before composition. Do not select a fabricated seed or per-frame RNG burn.


## Systematic area/attribute continuation — 2026-10-15

The newest user prioritizes original data/code extraction over new recordings.
[Living research index](RESEARCH_INDEX.md) is now the coordinate/field evidence
entry point, retaining confidence and next exact consumers. Existing milestones
and acceptance remain intact. No new video processing or observation request.

**RUST/BINARY/DATA:** new `lale-map-inspect` exports all18 available PC/PCS banks:
3889 cells,15556 directional pairs,266 event groups,3670 framed commands and19
static transition references, with original member/archive/executable offsets.
[Coordinate atlas](../analysis/phase-five/area-fields-20261015/atlas-release/INDEX.md)
contains SVG grids and TSV cell/graphics/movement/event/encounter/transition tables.
All33 original opcode framing rules are recovered from the skip consumer; all
266 groups account completely except explicit zero padding. Special keys bypass
generic PCS selection, including31313131 setting DS3d5e bit4 in mode2. Exact
gameplay meaning of that bit is unknown.

Otopark cell(0,5)/PCS1 group2 has an opcode11 reference to area1/PC2 Mecidiyeköy,
position664→(3,22),facing3. PC2 default entry(23,0) differs legitimately from that
explicit transition position. Cell(2,0)/group0 links both item2 acquisition and
encounter parameters000d0100000000;13 is not yet a verified dog ID. Branches and
conditions are unexecuted, not a ready collision/encounter engine. Stair-image
directions MERDUST upward/MERDALT downward are user-confirmed and shown in F10
titles; vertical movement/elevation remains unassigned. Full room rendering still
requires generated geometry/scaled blits. [Tool guide](../rust-port/NATIVE_MAP_ANALYSIS.md).

**ATTRIBUTE RESEARCH:** existing14 creation display mappings are corroborated by
original pushes and manual6–7; no UI remapping was needed. Original consumers
show base0c/current3a and base0a/current38 relationships and capped refill writes.
Güç linkage is strongly supported;38 as current Damak still needs controlled
original depletion/vecize/UI comparison before full semantic promotion. Three
generated offsets22/28/2c remain unnamed.

**RUST-SAMPLED:** `lale-generation-survey` reuses the verified generator for
2097152 controlled cases across8races×2sexes×2state families. Güç sampled3..17,
including19268 results of13. No cap10/15 is introduced;17 is not a proven maximum
or a new DOS observation. Boy sampled140..208,Kilo0..96; rare zero-weight states
remain explicit anomalies with exact RNG/record witnesses for original DOS tests.
[Field/distribution report](../analysis/phase-five/area-fields-20261015/attributes/ATTRIBUTE_FIELD_RESEARCH.md).

Rare-input DOS comparisons, current-resource depletion consumers and exact
creation timing remain research gaps; native party completion is operational
under the explicit policies above. Latest development priority is verified room
rendering/turning, then movement/collision/doors/stairs, inventory/Sivri Daş,
encounter triggering and tactical combat. Dialogue presentation can wait while
the original event architecture/vetoes are preserved. The next bounded step is
one verified adjacent view and original movement branch; do not extend fixed-cell
draw captures to new cells with guessed geometry.


## Movement/event boundary — latest 2026-10-15

USER-CONFIRMED: starting-room facing visuals are correct. Prior acceptance is
retained; no new creation, movement, audio fidelity or original turn timing
acceptance is inferred.

BINARY-VERIFIED/RUST-IMPLEMENTED: `lale-core::movement` now implements the
ordinary open-step boundary at original1670:0000 / physical32117..321b4. It clears
DS:bba8, dispatches current-cell mode3, checks veto, computes the candidate from
live state, dispatches mode1, checks veto, then adds the requested deltas using
16-bit wrapping. Event errors propagate without a movement commit. Event effects
are not rolled back. Failure clears the still-unnamed DS:b9c8 word. The original
selector/state branch classifier and a read-only `PcMap` adapter distinguish
blocked, open, door, animated and special-forward paths. They do not execute
unsupported transitions or supply an allow-all event handler. Selector0's live
word is explicit rather than assumed from a filename/metadata.

PC1(2,1) initially has **no ordinary open-step exit**: north uses state2/door,
other directions state1/blocked. The door path checks forward direction, current
and candidate events, then invokes original1662 stub00bb → body798c / file2fdbc.
New assembly/REA inspection establishes a conditional live-vector coordinate
commit at304e1..304fb guarded by DS:3b06==0. Complete door animation, guard
lifecycle, event execution and adjacent-view rendering are still required.
Native room controls remain turning only; the new movement core is not yet
connected to host keys. No new DOS runtime comparison is claimed.

Formatting, offline workspace build and95 test executions pass. Eight new tests
cover original PC1 branch identities, source-byte provenance, event/veto/error
ordering, live event mutations and wrapping. Existing room pixel tests pass.
[Latest checkpoint](../analysis/NATIVE_MOVEMENT_BOUNDARY_CHECKPOINT_20261015.md),
[evidence and exact next action](../analysis/phase-five/navigation-20261015/MOVEMENT_BOUNDARY.md).


## North door — latest 2026-10-16

**DOS-RUNTIME-OBSERVED (controlled initialized party):** two original Left inputs
turn north. Up reaches current-mode3 and candidate-mode1 events. At the original
warning, h/Hayır gives choice1/veto1 and stays(2,1). A new Up then e/Evet gives
choice0, stone dialogue and acquisition panel before animation. Esc from that
panel reaches the door helper. Its original guard0 commit moves(2,1)→(2,0),
facing0, with the BIOS key buffer empty throughout helper entry/commit/return.
A second movement command is not necessary in this observed accepted path.
Creation/film were debugger-skipped and opening flag249 explicitly set; this is
not a full fresh-party run. Ownership/transfer was not exercised.

**BINARY-VERIFIED:** source34 is KAPIAN3.CMP, four horizontal86×119 frames.
The helper uses stage0..3 with minimum150 source units each. It clears the
animation aperture in65, key-merges65→66 and copies66→65 per frame. DS3b06 is a
transient guard read by the door; a separate special transition sets/clears it.
It is not established as persistent door-open state.

**UNWIRED CANDIDATE:** original-resource frame0 reconstruction matches all40000
DOS indices. A proposed whole animation failed final-aperture/destination
comparisons (463/10234 and545/40000 differences), and was not promoted. Retained
R3 paint instrumentation also has an invalid-boundary breakpoint request, so its
image comparison is diagnostic rather than acceptance. A later controlled read
failed after the valid frame0 capture; failed attempts are documented/excluded.
Original-source core bank splitting/fraction inputs, complete destination call
coverage and framebuffer lifetime remain research. No captured image/pixel patch
is substituted. Native D/door-preview/Up changes are not present in the accepted
application; existing turning/creation/film behavior is preserved.

**Validation:**95 offline workspace test executions/build pass; five isolated
scaler tests pass. The scaler is unwired and requires explicit actual core-bank
inputs. The experimental source is outside Cargo targets under rust-port/research.
[Checkpoint](../analysis/OTOPARK_DOOR_RUNTIME_CHECKPOINT_20261016.md),
[method, failed attempts and exact handoff](../analysis/phase-five/door-20261015/DOOR_RUNTIME.md).
No new desktop/native-animation acceptance. Phase Four remains incomplete.


## General renderer continuation — 2026-10-16

The persistent highest priority is genuinely navigable PC1 Otopark and PC2
Mecidiyeköy, preserving original event restrictions. A complete controlled DOS
PC1(2,0),facing0 trace now contains7 rectangles **and4 cropped floor/ceiling
strips**. Native source replay matches all40000 destination indices; the earlier
545-pixel difference came from omitting0ac6:0f21 captures. Four clean door-frame
reads now exist; the prior background candidate differs0/63/257/463 bytes and
remains unwired pending repair.

New shared native geometry/layer/crop/resource modules and explicit PCS event
control flow are implemented with original-fixture comparisons. The production
starting-room renderer uses the extracted rectangle primitive and original
resource resolver; all existing four-facing pixel tests pass. General layer
assembly, complete door animation integration and traversable maps remain in
progress. No event is silently acknowledged by gameplay. PC1 stairs require
key flag2; opcode11 changes area then vetoes the old move; PC2's stair-return
script vetoes descent. Native walking is still disabled.

[Fresh DOS evidence,commands,limits and next work](../analysis/phase-five/navigation-renderer-20261016/DESTINATION_MATCH.md).


## Shared native renderer and exact door frames — latest 2026-10-16

[Current checkpoint](../analysis/NATIVE_GENERAL_RENDERER_CHECKPOINT_20261016.md)
supersedes preceding renderer gaps: all five layers now generate native commands
from PC cells; all117 old calls and all11 fresh destination calls match original
order/arguments. Cropped surfaces explain and fix the old545 destination errors.
All four repaired door frames match40000 original indices each. Shared bank-aware
scaling uses original allocation invariants; no captured allocation constants or
frame images are runtime assets. The normal app uses this renderer for turns.

Fresh controlled DOS PC2(3,22) renders now match native in all four facings,40000
indices each. The explicit native `--door-sequence` rendering inspection animates
all four original frames with source150-unit scheduling, commits the observed
guard0 position and shows PC1(2,0). Both native SDL dummy inspection runs passed
60 frames; normal menu smoke, all workspace tests, offline build and fmt pass.
This is not completed gameplay or new Fedora user acceptance.

World movement remains gated: warning/acquisition/encounter hosts and authentic
stair/area presentation are still being integrated. Dog flag1, key flag2 and PC2
return veto must not be bypassed. The PC1+PC2 traversability objective stays active
and incomplete. Preservation checks:243 baseline and30 frozen hashes unchanged.


## Event gate continuation — 2026-10-16

Latest [checkpoint](../analysis/NATIVE_EVENT_GATE_CHECKPOINT_20261016.md).
M05 remains IMPLEMENTING. All4000 PC1/PC2 cell/facing views render without missing
sources or unsupported draws; this is source coverage, not whole-map DOS pixel
acceptance. Normal north-facing Up now runs original event routing and presents
warning2/choice5 using decoded PCS bytes, original fonts, bottom save/blackclear/
restore, exact DOS-DS hitboxes and E/H controls. Hayır restores control at(2,1).
Evet stays pending23 until live party/speaker/dialogue/acquisition hosts exist;
no item, dog/key flags, animation or position commit is silently performed.
The native main-thread SDL choice check passes. Earlier all-Up-disabled statements
are superseded by this bounded gate integration; ordinary walking is incomplete.

Original conditioned DOS PC1(1,5) exit now proves Hayır refusal and Evet loading
PC2(3,22),facing3 through opcode11, ordinary renderer cleanup and old-move veto,
AL0/b9c8clear. Guard remained0 and8197/80d0 did not run in this bounded route.
Dog/key flags1+2 were explicitly set for the trial, not earned in gameplay.
See [DOS proof](../analysis/phase-five/stairs-runtime-20261016/PC1_TO_PC2_DOS.md).

Speaker23[01,0f] is source-proven signed maximum field15, ties lowest party index,
no RNG/mutation. Dialogue17 speaker5 reuses selection. Original portraits, timing,
RNG draw order, IREM62 prefix, bottom region restoration and acquisition Esc
resource/item cleanup are recovered; full hosts remain incomplete. Next: pass
live Party through room entry, host23/17, recover acquisition presentation and
transfer, then authorize exact door animation/destination mode2. Encounter8 must
remain pending until its authentic host completes. New Fedora acceptance is pending.


Live-party addendum: ordinary creation now passes its actual prepared numeric
records into the room; verified speaker23 signed field15 selection runs without
RNG/mutation and stops at dialogue17. Standalone/debug room entries still stop23
without a supplied party. The accepted branch still cannot skip dialogue or
acquisition. Native supplied-party SDL check passes with original numeric records
unchanged; see the checkpoint addendum for the clean PC2 run3 restart boundary.


Fresh dialogue DOS continuation: [report](../analysis/phase-five/world-dialogue-runtime-20261016/DIALOGUE_DOS.md)
proves original speaker2, four portrait call argument sets and exact native RNG
state progression. Creation now carries its actual RNG state into room entry
through the shared core RNG; no new seed. Dialogue host remains pending17.
Root DOS session64818 is paused before the fourth portrait copy at0e00:2ca1;
read the report's exact stack/register checkpoint before continuing.


## Native dialogue integration — 2026-10-16

Latest [checkpoint](../analysis/NATIVE_DIALOGUE_CHECKPOINT_20261016.md). Fresh
creation→film→Otopark now plays all ten original opening dialogues, sets249 only
after completion and skips them on repeat without RNG consumption. North Evet
now runs original live-party stone-suggestion dialogue and stops at acquisition9,
still(2,1); no item, dog/key flag, animation or movement is silently completed.
Native portrait/text/border/save/restore/timer/input host is wired. Actual DOS
confirms speaker2, four original portrait/RNG draws and Space after the fourth
returning to acquisition. IREM62's extra decoded byte is preserved through the
explicit named stream consumer; generic CMP remains strict. Native SDL runtime
check plays all ten opening dialogues with real150-unit waits in6.25s, plus DOS-
matched north dialogue frames; all offline tests/build pass. Full original screen
pixel equality/new Fedora user acceptance remain open. Next: authentic acquisition
mode0 screen/transfer/Esc cleanup, authorized door/destination, then encounter host.
The PC1+PC2 traversal objective remains IMPLEMENTING and incomplete.

Live DOS64818 is now paused BEFORE acquisition2eaf:2f21, SP0b9c/BP0bf0, DS1f04,
SS2dac; earlier fourth-portrait pause is superseded. Read the new checkpoint for
exact breakpoints/temporary item2/state and next safe source/runtime actions.
