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

# Roadmap

## Latest priority — reusable DOS loops before native battle — 2026-10-20

RESEARCHING: resolve original reusable combat and critical world-loop behavior
before enabling a battle screen/engine. The earlier five combat phases remain
the milestone order; first-encounter appearance alone is not success. New
[readiness matrix](../analysis/phase-five/reusable-loops-20261020/REUSABLE_SYSTEMS_MODEL.md)
records each subsystem and its remaining evidence requirements.

Shared world-step/combat-round tick39fd is source-checked, DOS-compared and
implemented as a small pure Rust module. It remains unwired until caller timing
and numeric/actor synchronization are verified. Original Tab→eligible selection
is captured; full presentation→AI remains unresolved. World8524 outer contract,
arrival re-entry, maintenance/idle RNG, special transitions and second battle
caller are identified critical gaps rather than assumed native behavior.

Next concrete action: fresh run3, reach1caa and establish debugger bounded CPU
logging before tracing camera/redraw/wait/continuation. Then compare ordinary
AI movement/physical attacks, actual equipped Sivri Daş and victory/defeat through
8111 plus event/world return. Audit natural world-step outer state in the same
shared model. No exhaustive enemy/item/spell catalog or premature battle UI.
179 automated test executions, offline builds/fmt and SDL regressions pass;
Fedora acceptance and playable battle remain pending.
[Precise continuation](../analysis/REUSABLE_SYSTEMS_CHECKPOINT_20261020.md).

## Combat Phase1 continuation — 2026-10-20

RESEARCHING: source-backed combat execution model and original initial-screen/
player-step captures are available. Raw Rust combat data and F7 operand capture
are tested; no native battle screen or fight is enabled. Before Phase2, finish
required initialization/UI dependency mapping and controlled turn/AI/physical-
attack/result comparisons; preserve render-driven RNG and original mutable state.
Then implement the authentic interactive renderer, verified actions/AI, inventory/
weapon use and full result→world path in that order.177 tests/build/fmt pass;
automated checks do not fulfil desktop acceptance. The same complete first-dog-
battle objective persists across sessions.
[Exact evidence and restart instructions](../analysis/FIRST_PLAYABLE_COMBAT_CHECKPOINT_20261020.md).

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

## Debug tooling — 2026-10-19

Native room inspection, pause/resume and immutable diagnostic export are
implemented. Tests cover clock exclusion, pending-choice/state/pixel preservation,
bounded trace and output-directory protections. Batch capture and SDL presentation
are available. Fresh Fedora key/overlay acceptance remains pending. The gameplay
priority remains authentic encounter8/combat/key recovery; debug tools do not
fulfil the remaining PC1/PC2 traversal acceptance criterion.
[Tool guide](../rust-port/NATIVE_DEBUG.md).

## Latest bounded M05 integration — 2026-10-19

IMPLEMENTING: native Up/Down now runs shared live-coordinate Open/Door movement,
synchronous current3/candidate1 gates and destination2 events. Turns and cached
views follow committed coordinates. Original selector0/state0 no longer blocks
ordinary walking; unresolved nonzero selectors remain barriers. Native opcode11
loads PC1/PC2 and vetoes the old step. The conditioned PC1→PC2 route/refusal has
native integration tests against the retained DOS destination evidence; normal
play does not receive the prerequisite flags. Unknown animated transitions and
services remain pending, rather than allowing a step or terminating the app.

The optimized build is ready via `./rust-port/play-native-release.sh`.
**Normal play still stops at encounter8.** Next recover its authentic combat
entry/result and the earned key path, then perform continuous PC1/PC2 traversal
and Fedora acceptance. These remain required to finish M05/M08/M09.
[Checkpoint](../analysis/NATIVE_WALKING_BUILD_CHECKPOINT_20261019.md).

## Latest M05 frontier — 2026-10-16

IMPLEMENTING: mode0 acquisition, timed north door, automatic destination commit,
illustration13 and its palette/wait are native. Controlled DOS comparison proves
40000 illustration indices plus768 palette bytes. Native progression now stops
at encounter8, preserving dog/key gates. Next recover actual battle entry,
presentation/input and return; retain death/failure behavior. Then extend shared
world navigation to key/stair and PC2. Full original DOS/Fedora navigation is
still the required acceptance criterion. [Checkpoint](../analysis/NATIVE_ILLUSTRATION_CHECKPOINT_20261016.md).

## Current actionable frontier — 2026-10-16 acquisition/door

M05 remains IMPLEMENTING. Mode0 acquisition and normal north-door animation/
automatic destination commit are now native, tested and SDL runtime checked.
Three original panel states are pixel-exact and raw item exchange is DOS-matched.
Next: DOS-compare opcode3 illustration (argument13, source481c7), integrate its
palette/restore, then encounter8 without acknowledging a fake victory. Complete
shared PC1 key/stair and PC2 movement/event hosts afterward. Preserve dedicated
service barriers and the PC2 reverse-route veto. Full Fedora PC1+PC2 navigation
acceptance remains required; no success claim yet. Acquisition hover/custom
cursor/extra keyboard controls/dead-party overlays are still incomplete.
[Exact evidence, commands and restart boundary](../analysis/NATIVE_ACQUISITION_DOOR_CHECKPOINT_20261016.md).

Latest user priority (2026-10-16): make **both Otopark PC1 and Mecidiyeköy
PC2 genuinely navigable** in the Fedora native build. This is the persistent
objective across usage windows: general source-derived five-layer renderer,
collision/facing/doors/stairs, authentic connection and event gating. Implement
verified shared subsystems promptly, compare DOS and native, and checkpoint
regularly. Neither captured isolated cells nor unit tests alone complete it.
The accepted menu/creation/cinematics/turning and all preservation boundaries remain.


Updated 2026-10-16. Status refers to the objective stated in each row, not the
whole game. Binary/static verification and user desktop acceptance are distinct.

| ID | Objective | Dependencies | Status | Next concrete action / blocker |
|---|---|---|---|---|
| M01 | Authentic native menu and character visual/input subset | Existing decoders/font/layers | VERIFIED | Eight user desktop checks passed; preserve regression coverage. |
| M02 | Complete deterministic character stat generation | Original RNG, trait initialization | IMPLEMENTING | Ordinary native stats/rerolls/body timing operational under source-calendar native-entry policy. Exact CPU/face/reentry schedule remains open. |
| M03 | Party confirmation and initialization | M02, original record semantics | IMPLEMENTING | Ordinary four named slots now prepare/persist/reread664-byte checkpoints and proceed to film/view. Validate original full writer runtime and new desktop flow. |
| M04 | Opening cutscene representation and dispatch | M03 return path | IMPLEMENTING | Silent SDL playback/F9 debug entry user-accepted on Fedora; all five streams ordered without observed problems. Recover original audio, fades and scheduling before faithful progression. |
| M05 | General original PC1/PC2 first-person renderer and navigation | M04, PC/PCS, original resources | IMPLEMENTING | Five native layers, cropped surfaces and bank-aware scales integrated. Four door stages, PC1 destination and PC2 arrival four facings match DOS. Rendering inspection works; integrate authentic event hosts, walking and stairs without bypassing dog/key gates. |
| M06 | Opening dialogue/event dispatch | M05 | IMPLEMENTING | Ten opening dialogues, once-only flag249, live speaker/RNG, warning/choice and suggestion dialogue are native. Full screen comparison and remaining event/service hosts are open. |
| M07 | Sivri Daş acquisition/inventory | M06, item schema | IMPLEMENTING | Mode0 panel and raw inventory swap/back/cleanup are DOS-matched and native. Hover/cursor/extra controls, equipment and full inventory/save lifetime remain open. |
| M08 | Exit and dog encounter dispatch | M05/M06 | RESEARCHING | Static cell/encounter/transition atlas implemented; recover conditional movement, creature ID consumers and battle initialization. |
| M09 | First playable original Otopark combat | M08, combat structures | RESEARCHING | Highest priority: Phase1 source execution model + DOS entry/screen/step captured. Finish critical runtime/action/AI/result dependencies, then authentic screen, actions/AI, equipment and world return. No native combat enabled. |
| M10 | Appearance 13 supported faithfully | CMP loader/copy semantics | RESEARCHING | Explain extra decoded byte against original loader/allocation/crops; never silently truncate. |
| M11 | Original character face animation | Shared RNG/counter semantics | IMPLEMENTING | Normal source-timed body motion works; automatic random faces/CPU-poll cadence remain incomplete. Snapshot/F8 preserved. |
| M12 | Audio output | Existing AMF analysis, mixer/timing | IMPLEMENTING | Original SEQ PCM encoding/byte positions verified; opt-in SDL audio audible on Fedora per user. Recover MCP mixing/gain, ring corrections, PIT coupling and fades; AMF playback remains pending. |
| M13 | Save/load and Windows backend validation | Verified simulation/state | NOT STARTED | Recover serialization/state boundaries before native writes; retain portable core. |

## Increment requirements

M02 binary work must establish trait tables, integer widths/wrap, complete ordered
random draws and field clamps. Rust work should expose deterministic state/input
boundaries before connecting fresh generation. Tests need assembly-derived fixed
seed vectors and identity extremes; compilation alone cannot verify formulas.
Desktop acceptance should compare repeatable original behavior where possible.

M03 requires exact nonempty-name and final confirmation rules, record initialization,
return values and downstream state changes. Test rejection/cancel/accept and byte
layouts; do not enter gameplay with invented values.

M04–M09 each require executable function/overlay references, archive/member identities,
state/input/text/audio/transition evidence recorded in FIRST_PLAYABLE_PATH. Implement
small shared parsing/state/rendering systems, with original-byte fixtures and a
specific original runtime comparison when needed. User recollections are search
clues, not sufficient acceptance evidence for mechanics.

M10/M11 can proceed independently where evidence permits; RNG animation must not
be given an arbitrary independent seed that changes generation semantics. Audio,
world systems and combat must preserve integer/random/state semantics rather than
borrow conventional RPG behavior.

## Next bounded actions after integration continuation

M02/M11: headless caller state and explicit shared RNG/counter operations are now
implemented and fixture-tested. Do not repeat formula transcription. Recover the
actual new-game/reentry raw snapshots and DS964c pointer lifecycle (callsite3ebdc),
plus input/name/mouse-release scheduling. Candidate callback1694:1935 consumes
additional draws; restored05dc:00cd is a no-op. Their stores/targets are recovered,
but actual creation-entry installation must be established. No-input retains timer stamp; processed
input restamps; mouse release polls outside the RNG gate. Compare controlled
original traces before choosing a documented native scheduling boundary and
connecting fresh UI. Preserve prior-sex generation on race changes.

M03: original reader167c:1932 restores persisted blocks and derives race labels;
working text gaps survive. The pure workspace bridge roundtrips664 bytes. Design
native output paths only after required initialization/progression is validated;
keep originals read-only and distinguish creation party data from full game saves.

M04: no need to rediscover the pixel packet codec. All five streams decode; film
title pixels verifySonra. Next recover sound encoding/mixer calls, refill0de8 and
seek/recovery behavior, then stateful timed native playback and segment fades.
Sound bytes remain raw until supported by consumer evidence. DS4d61 prose remains
separate. Test against captured playback only after scheduling/audio exists.

M05/M06: trace1689 dispatcher33-case opcode table after43f6f using initial-cell key
01010106 and selected PCS1 group5. Verify branch argument, speaker selection,
text controlbyteb6 and actual automatic-entry call. Finish unassigned cell fields
8..10, directional fields and renderer/writes. The add10-decoded line atPCS1:500h
matches the user's words, but is not proof of a specific speaker/pickup trigger.

M07–M09 remain event/engine research. Do not infer item IDs or combat conventions
from resource names or decoded dialogue alone.


## Lifecycle/manual handoff

M02/M11 remain gated: original menu initialization installs default05dc:08f6
through the72-byte template copy, as observed in controlled DOS. Trace forward
to actual creation entry/reentry, shared RNG and active callbacks; do not assume
that default, portrait or no-op is the complete creation schedule. M03 still
requires controlled finalization/re-read comparison before writes.

M04 gains only tested pure counter/refill arithmetic (38-test suite). Preserve
pixel decoder; resolve dynamic MCP registration/sample encoding and positions,
then full stream recovery, synchronization, timed playback and original fades.

M06/M07: opening(2,1) mode2/group5 is ten lines guarded by flag249. Adjacent(2,0)
group0 offers item2=Sivri Daş via opcode9. Next trace mode1 candidate-cell choice,
46591 accept/cancel/transfer writes and15dc:2948 speaker5/B6 behavior. No native
inventory/event execution yet. M05 fields8..10, directional consumers and shared
renderer remain research; M08/M09 are not advanced by manual descriptions.

Use [manual index](../analysis/phase-five/lifecycle-20261014/manual/MANUAL_TO_BINARY_INDEX.md)
and structured34-vecize catalog as terminology/search references. Literal
matches do not verify effects, numeric IDs, death thresholds or combat math.
This historical handoff is extended by [latest checkpoint](../analysis/VISIBLE_SEQ_CHECKPOINT_20261015.md).


## Visible native milestone — 2026-10-15

M04: verified pixels/palettes now reach a moving SDL preview, all five streams,
header-rate host deadlines, pause/step/restart and final-frame hold. F9 returns
to the prior menu/character screen without changing party completion or writes.
This is **IMPLEMENTED DEBUG PREVIEW**, not verified original synchronized
playback or user desktop acceptance. Three new distinct preview tests pass in
both binary targets; workspace total44 executions/41 distinct tests.

Next bounded work: obtain preview desktop feedback, resolve actual creation
entry/callback/RNG state for M02/M03 UI integration, and trace shared Otopark
render consumers for the next original-resource visual increment. Inventory
item2 identity/acquisition call is verified, but accept/cancel/persistent mutation
is still required before implementing pickup. Continuous menu→completed party→
film→Otopark gameplay remains incomplete.


## Character/UI integration handoff — 2026-10-15

Latest [checkpoint](../analysis/CHARACTER_UI_CHECKPOINT_20261015.md) supersedes
earlier handoff gaps only as recorded here. User accepted standalone/F9 silent
playback of all five streams on Fedora without observed problems.

M02/M11: optional --creation-snapshot imports original pre-setup DS and exposes
the existing shared caller in the real character screen. Stats, rerolls, names,
identities and four slots work; F8 is exactly one explicit diagnostic poll with
150-unit advance. Waiting/rendering never burns shared RNG in this mode. Whole
first-setup state and independent generator boundary now match original DOS.
Ordinary creation remains gated; next capture stable resident RNG/return and
current overlay stub/stack across callbacks. Do not assume runtime35a6 persists.
Automatic startup seed, normal polling/release/reentry and final IO are unresolved.

M03: graphical fourth-next prepares original-layout party in memory only. No
file writes or success→world transition; controlled original completion comparison
still required. Existing preparation/reader code need not be retranscribed.

M05: native F10 UFUK1/PAL3D background inspection is usable; it is not a room.
Initial facing2 and field8/9 slot consumers are recovered. Capture generated18-byte
geometry tables after world setup and resolve blit semantics before composition.
M06/M07 dialogue/inventory mutation remains unimplemented.

M04/M12: opt-in --debug-audio uses proven unsigned8 mono22050 PCM and SDL queue;
accepted default/F9 silent behavior retained. Original gain, ring clock/refill/
seek corrections and fades remain unresolved; audio desktop acceptance pending.

52 test executions/48 distinct tests pass; source/DOS differential evidence and
SDL dummy integration are separate from the user's desktop acceptance. Target
continuous playable sequence remains incomplete.


## Walkthrough/native handoff — 2026-10-15

Latest [checkpoint](../analysis/WALKTHROUGH_NATIVE_CHECKPOINT_20261015.md).
M02/M11: an actual controlled consecutive-idle trace proves creation overlay
relocation35a6→3bef and exactly one shared draw below150 units, preserving all
party/trait/phase/stamp state. A second original run observes callback/trampoline
relocation without RNG updates and proves actual Enter reroll against full Rust
state. Two differentials are recorded. Ordinary seed/timed-animation/reentry
scheduling remains incomplete. Continue from current
resident RNG return/stub, never from an assumed fixed creation segment.

M05: nine PC1 loader-linked source sheets are natively browsable; previous UFUK1
preview retained. Keyed rectangular copy/horizontal reflection are verified;
generated37×18-byte geometry and scaled blits still block a faithful room.
125 cached source-timestamp samples plus20 targeted frames cover all new videos;
use video1 room15s, choice85s, acquisition95–114s, dog120–125s and video2 stairs140s,
upper room145s, open sky300s for bounded visual comparisons. First two recordings
remain priority; later scenes are indexed only. M06–M09 are not advanced to native
gameplay by visual resemblance. M12 audibility is now user-confirmed on Fedora,
with original synchronization/gain/rings/fades still open.


## Systematic area/field handoff — 2026-10-15

Latest [checkpoint](../analysis/AREA_FIELDS_CHECKPOINT_20261015.md) and
[living research index](RESEARCH_INDEX.md). M05–M08 now have a reusable native
original-data atlas covering all18 banks, cell directional branch classes and
static command/cell/transition links. M05 is still RESEARCHING actual composition;
M08 is now RESEARCHING, with original opcode8 preparation and opcode11 transition
recovered, not an implemented encounter/navigation loop. Prefer table offsets
and exact consumers to further recordings; request observations only for a
specific code/resource ambiguity. MERDUST/MERDALT visual directions are user-confirmed.

M02 gains consumer corroboration for existing14 labels plus base/current pairs
and a deterministic17-destination survey. Keep current38 Damak semantics and
rare Kilo0/Güç17 witnesses pending targeted original comparisons. Statistical
extrema/correlations are not mathematical bounds or gameplay frequencies.
Do not repeat completed formulas or introduce arbitrary caps. First-party lifecycle,
room geometry, mutable collision/event vetoes and party persistence remain open.


## Visible native integration handoff — 2026-10-15

Latest [checkpoint](../analysis/NATIVE_CREATION_ROOM_CHECKPOINT_20261015.md),
[desktop guide](../rust-port/NATIVE_PLAYABLE_INCREMENT.md). The user passed
Fedora atlas/survey outputs; preserve these tools without expanding analysis scope.

Native flow is now menu→operational creation/body animation→four-character
checkpoint→SEQ film→source-composed starting view. This is tangible visible
progress; it does not complete the first playable milestone. Original CPU face
RNG cadence, complete original fourth-slot write/re-read runtime comparison,
general room dispatch/navigation/collision/dialogue/inventory/combat remain open.

Next bounded work must extend this application: recover general layer commands/
scaler from captured geometry, verify one neighboring view, then enable only
verified interaction. Preserve native entry timing policy as explicit; do not
claim it reproduces elapsed DOS menu RNG history. Keep full saves distinct from
new party checkpoint persistence and retain accepted silent/PCM film behavior.


## Four-facing native increment — 2026-10-15

Latest [checkpoint](../analysis/NATIVE_OTOPARK_TURNING_CHECKPOINT_20261015.md).
The user accepted the previous Otopark starting perspective/facing side. All four
facings of PC1(2,1) now render from original DOS draw traces; native Left/Right
turns in place in the existing shared room path.117 calls and controlled original
viewport reads support the implementation;87 offline test executions pass.
New facings/turning await Fedora desktop acceptance. Existing creation→film→room,
silent films, debug PCM and event research are preserved. No broad new research
or recording processing was needed.

Development order now follows the latest user request: original room rendering/
turning → verified map movement/collision/doors/stairs → inventory/Sivri Daş →
encounter triggers → tactical battle/combat. Broader dialogue presentation can
wait; retain original event dispatch/veto semantics for items and encounters.
Next bounded work: use existing coordinate/consumer evidence to choose one
verified adjacent view and movement branch, generalize original cell/layer
selection as needed, then connect only the verified state change. Do not turn
these four captured command streams into invented geometry for other cells.


## Movement boundary handoff — latest 2026-10-15

[Checkpoint](../analysis/NATIVE_MOVEMENT_BOUNDARY_CHECKPOINT_20261015.md). M05
remains IMPLEMENTING. Starting-room facing visuals are now user-accepted. New
ordinary movement core preserves current-mode3/candidate-mode1 veto order, live
state reads, 16-bit arithmetic and failure-word clearing. PC map adaptation keeps
unknown selector words explicit.95 test executions and offline build pass; no
new DOS runtime comparison or native walking is claimed.

**Next concrete action:** original PC1(2,1) north is state2/graphics3, not an open
step. Trace resident1662:00bb → body798c (file2fdbc), DS:3b06 lifecycle and the
forward door animation; capture its actual event calls and destination(2,0) view.
Current ordinary gate must not replace this helper. Confirm the candidate mode1
choice/acquisition veto before committing position. Original door-helper commit
304e1..304fb uses live facing vectors only when3b06==0; its visuals/timing and
full state effects are not implemented. Generalize needed layer/scaling consumers
for that verified view. Preserve the existing four-facing compositor and event
links to item2/encounter preparation. Broader dialogue presentation can wait,
but event execution/vetoes cannot be bypassed to enable movement.


## North-door DOS handoff — latest 2026-10-16

[Checkpoint](../analysis/OTOPARK_DOOR_RUNTIME_CHECKPOINT_20261016.md). M05 stays
IMPLEMENTING; native animation candidate was withdrawn after failed comparisons.
The original input/commit question is answered for the controlled initial door:
one accepted Up, Evet and acquisition-panel return reaches guard0 automatic
position commit. Hayır vetoes and remains in the starting cell. No second Up is
queued/needed by the helper. Do not repeat the input-table/guard-store audit.

Next bounded work: fresh valid stage/core-call captures with dynamic current
overlay segments, inherited ESI fraction, bank splitting and exact buffer lifetime.
Frame0's40000-byte equality is retained; final aperture and destination are not
certified. Seven retained destination draws are a lower-bound capture, not proof
of completeness. Confirm every stop before issuing a new command; the failed
nested-read attempt must not become acceptance evidence. Then render all stages
and the destination from original resources and connect observed event gates.
Do not enable native Up by silently skipping warning/acquisition or setting
flags. Five verified isolated scaler tests do not certify its whole wrapper.


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
