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

# First playable path

## Latest architecture continuation — 2026-10-20

The connected native path remains creation→films→opening dialogues→Sivri Daş
transfer→timed door→illustration/warning→pending encounter8. No battle result or
key is granted. The latest priority is faithful reusable original systems before
native battle implementation. See the
[new checkpoint](../analysis/REUSABLE_SYSTEMS_CHECKPOINT_20261020.md).

New conditioned original DOS observations verify shared world/combat tick39fd's
clock carry and timer compaction, plus actual Tab selection28→25 before the
remaining presentation path. This is not a naturally played round/fight, equipment
test or completed return. Rust now contains only the isolated verified tick;
it is not scheduled by gameplay yet. Original world8524 also loops arrival mode2
on returned AL, has additional maintenance/idle RNG and a separate nonPCS battle
caller. Reconcile those contracts with inventory/timer writeback, loader resources
and continuing script state before claiming authentic post-fight exploration.
The existing conditioned stair test still does not establish an earned route.
[World/event/render gaps](../analysis/phase-five/reusable-loops-20261020/WORLD_LOOP_GAPS.md),
[DOS conditioning and exact restart](../analysis/phase-five/reusable-loops-20261020/DOS_SHARED_TICK_AND_TURN.md).

## First-dog combat architecture/runtime evidence — 2026-10-20

Original opcode8 reaches1694:0138→B40A, physical5505a, after1662:0066
preparation. Controlled original PC1(2,0),facing0,mode2 dispatch initialized one
KOPEK actor (3 HP at DSbb39=0), party actors25..28 and the authentic tactical
image6/PALBAT screen. World position and opening flag249 were conditioned after
startup skips; this does not prove the earned full acquisition/door/battle route.
A real Down key moved actor25(15,2)→(15,3), spent1 allowance and advanced the
shared RNG once. Original victory/defeat, AI/actions and inventory/equipment
runtime differentials remain pending; no native combat result is implemented.
[Execution model](../analysis/phase-five/first-combat-20261020/COMBAT_EXECUTION_MODEL.md),
[full runtime limits](../analysis/phase-five/first-combat-20261020/DOS_COMBAT_ENTRY_AND_STEP.md).


## Native diagnostic controls — 2026-10-19

Room-only overlay/pause/export is now available for observing this path. It
captures pending event8 without acknowledging it, retains live party/inventory
bytes and exports clean original indexed pixels. Debug controls are host tools;
no new scene, event condition or gameplay outcome has been inferred.
[Usage](../rust-port/NATIVE_DEBUG.md).


## Walking and area-load integration — 2026-10-19

RUST-IMPLEMENTED using retained assembly/DOS evidence: Up/Down supplies forward/
backward argument vectors to original1670 movement; live current-mode3,
candidate-mode1, door-only forward checks and destination-mode2 dispatch remain
mandatory. Shared views follow completed steps and subsequent turns. Selector0
with paired state0 is an ordinary step regardless of the unresolved resident
word; source graphics9 override requires a nonzero state. No nonzero unknown
selector has been assigned an invented value.

Native opcode11 hosts supported PC1/PC2 area loads using destination width and
original remainder-minus-one/facing arithmetic. Conditioned tests reproduce
PC1(1,5),facing3 Evet→PC2(3,22),facing3 and Hayır refusal; prerequisite flags are
set only inside those tests, matching the prior controlled DOS trial. Missing
party dialogue remains pending. This establishes host integration, not an earned
key, a new DOS observation, or continuous playable navigation.

The normal acquisition→door→illustration route still stops at encounter8. No
combat outcome, inventory key, dog flag or new narrative has been fabricated.
[Optimized build and controls](../rust-port/NATIVE_BUILD.md),
[checkpoint](../analysis/NATIVE_WALKING_BUILD_CHECKPOINT_20261019.md).


## Latest destination progression — 2026-10-16

Acquisition closes into four door stages and automatic(2,0). Native opcode3 now
renders IKON13.CMP transparently over the original room and replaces only the
lower128 palette entries with IKON13.PAL. All40000 image indices and768 palette
bytes match a fresh controlled DOS helper trial. Its50-cycle wait uses20 source
units per cycle and original delayed keyboard skip. Warning2 then appears;
encounter8[00,0d,01,00,00,00,00] remains pending. No dog victory/flag1 is invented.
[Exact evidence and continuation](../analysis/NATIVE_ILLUSTRATION_CHECKPOINT_20261016.md).

## Latest playable increment — acquisition→door→destination (2026-10-16)

Native normal live-party flow now implements mode0 acquisition after the north
warning/suggestion dialogue. Click upper-row stone then lower-row inventory slot;
party portraits/F1..F4 select recipient. Reverse selection swaps back. Esc/close
clears the temporary pool and retains transferred inventory. Original controlled
DOS helper calls prove raw word exchange with no RNG/equipment mutation; all
three composed panel states match19,840 indices and all captured hitboxes.
Closing acquisition resumes the same pending movement: four150-unit door stages,
guard0 automatic(2,1)→(2,0), correct destination view, mode2 dispatch. No second Up.
The new barrier is illustration opcode3, argument13; encounter8 and dog flag1
completion remain unimplemented. Never skip these to enable map traversal.
[Checkpoint and limits](../analysis/NATIVE_ACQUISITION_DOOR_CHECKPOINT_20261016.md).

Updated 2026-10-16. This is an evidence ledger, not a completed implementation spec.
Classifications: **U** user recollection/observation, **M** manual claim,
**A** original assembly/data confirmed, **D** decoded original assets,
**R** repeatable runtime comparison,
**H** hypothesis. Unknowns remain explicit. The character visual/input subset, explicit-state generation diagnostic, silent cinematic
preview and opt-in PCM audio remain native. Ordinary creation/body animation,
party checkpoints and film→source-composed starting view now connect. Four
starting-cell facings/turning work; movement and complete original timing/scene
progression remain incomplete.

| Scene/event | Evidence and narrative | Executable/resources | UI/input/state/trigger | Dialogue/audio/transitions | Rust status / next verification |
|---|---|---|---|---|---|
| Party creation | A: dispatch, formulas, final branch and reader recovered; U: visual/input subset accepted |167c:0437/182e/1932/1aa2 | Ordinary native stats/body animation/four named slots and664-byte checkpoints operational; snapshot mode preserved | Source-calendar native entry policy; exact CPU/face/reentry cadence still open | Initial setup/generator and actual Enter-reroll match DOS; callback relocation proved. Validate timed animation/reentry and fourth-slot IO. |
| Live-action cinematic | U: camera footage; D: SEQ1 frame50 embeds İstanbul/Bosfor title ending Sonra | Main7e9c→1682:3790→16af:1270; SEQ1–5 | Silent SDL/F9 accepted; debug PCM audible; native completion now plays film then opens starting view |10fps header; raw sound blocks recovered, audio/scheduling incomplete | Silent/F9 accepted; PCM audibility user-confirmed; recover driver gain/refill/fades for faithful playback. |
| Otopark initialization | U: starting perspective/facing2 accepted on Fedora; A/R: shared loader, four facing traces and viewport bytes |1670:1927;1662:0235/3932; PC1,PCS1,3D.CKD/PAL3D | Grid10×10×15; fixed initial(2,1); native Left/Right rotates0..3; no movement/event execution | Original physical turn input/animation not validated; event architecture preserved |117 captured draws, all40000 indexed bytes per facing match controlled DOS buffers in turn tests. Starting-room facing visuals now user-accepted; general cell dispatch/HUD/native walking remain open. |
| Opening dialogue | U: recalled words; D/A: PCS1 member500h decodes `nooluyo yaa? o neydi Oyle` plusb6 |1689 dispatcher/byte reader/string decoder; PCS1 group5 | A: mode2/group5, fixed selectors1,2,1,2,3,1,3,4,1,3, once-only flag249; B6 rendering open | Exact bytes preserved; b6 display behavior pending | First entry/caller established; recover speaker5 lifetime/B6 UI and inventory mutation. |
| Item acquisition | U: interface appears before leaving; item **Sivri Daş** | A: opcode9 pool item2 and indexed name prove Sivri Daş; record effects/transfer still open | Automatic trigger, accept/decline, inventory transfer and persistent flags unknown | No invented dialogue or identifier | Recover shared acquisition handler and exact event link. Earlier uncertain Taş/Sivri Taş wording is superseded. |
| Room exit/dog encounter | U: dog encountered after leaving | Exit/adjacency/collision/encounter references unknown | Scripted vs general encounter unknown | Transition/audio unknown | Trace first exit and encounter initialization. |
| First dog battle | U: battle interface follows encounter | Combat overlay, resources, party/enemy structures unknown | Turn order/input/accuracy/damage/defense/RNG and AI unknown | Victory/defeat/world return unknown | Research target; no guessed RPG mechanics. |

The user observations are valuable search clues. They do not establish original
string bytes, speaker identity, event IDs, item IDs, resource format or executable
architecture. Link new bounded findings below without rewriting old checkpoints.

## New original-data findings

A: IST.EXE physical **19f00h** contains `73 69 76 72 69 20 64 61 9f 00`
(`sivri da` plus the font/DOS ş byte), confirming the spelling **sivri daş**
in a fixed-width item-name region. This does not yet prove the acquired item's
identifier or the event/inventory transfer path.

A: physical **1df61h** begins `bosfor savaSIndan elli billah kadar\nOnceydi.`
The game's source text encoding uses ASCII substitutions for some Turkish letters;
rendered interpretation is “bosfor savaşından elli billah kadar önceydi.” This
supersedes the remembered “sonra” wording for that source string. Its exact rendering
and scene dispatch still require the data-consumer trace. The 15:09 user update
identifies a live-action cinematic separately: this resident prose may belong to
a different text/narration sequence and is not established as its embedded title.

A: physical **1eb65h** contains `otopark\0`. A different resident string at
1d58eh says `nooluyor yaahuu!!`; it is not established as the user's remembered
“Nooluyo ya o neydi öyle” dialogue. Do not merge those strings or assign a speaker.

A: character finalization direct branch is now traced: logical167c:2312 input
handling, final nonempty-name gate, physical3efa2 index increment,3efb8 fade3200,
3efc1 writer167c:182e (physical3e42e),3efc5 cleanup167c:1a1a, common exit3f05f
returns success1. No extra modal confirmation occurs on this branch. The writer
serializes664 bytes and prepares auxiliary text; the latter is recovered below.
Native finalization stays disabled pending faithful full caller/state integration. See
[generation/finalization evidence](../analysis/phase-five/living-continuation-20261014/character-generation/GENERATION_AND_FINALIZATION.md).

Earlier bounded work identified PC1/UFUK1 and INTRO.GFL/GHD as leads. The
15:09 continuation below resolves PC1's area connection and identifies SEQ1–5
as the post-creation playback path; INTRO remains separate. Longer literal-prefix
searches across stored bytes of all eight CKDs were negative within the stated
spellings; compressed/encoded text is not excluded. Historical report:
[bounded opening search](../analysis/phase-five/living-continuation-20261014/opening-path/OPENING_PATH_BOUNDED_FINDINGS.md).

## 15:09 continuation: code-backed sequence and grid

The post-creation main branch now confirms success→party reader→SEQ1–5 playback→
area0 loader. INTRO is not the post-creation film by filename inference. Each
GHD carries784 header bytes (including768-byte six-bit palette), a22050-byte
sound-associated block and8-byte frame records. Total2433 frames at10fps is a
nominal counter duration, not measured footage. The subsequent integration pass
recovers pixel decoding and title pixels; audio/native scheduling remain pending. [Cinematic audit](../analysis/phase-five/findings-1509-20261014/cinematic/POST_CREATION_CINEMATIC.md).

Original main setsDSbb6b=0 and passes the same selector plusflag1 to1670:1927.
Area0's first table record points toPC1,otoparkIn,UFUK1; PCS1 is opened through
`pcs%d`. All18 available PC banks account exactly for20-byte bank header,
23-byte metadata andwidth×height×15 cell bytes. PC1's initial cell is(2,1),
zero-based. Field meanings, PCS1 events, first dialogue/acquisition and exits
remain open. [Area audit](../analysis/phase-five/findings-1509-20261014/area/AREA_LOADER_AND_PC1.md).

The pre-write auxiliary buffer is now recovered as the exact37-byte original
literal and raw numeric word copies. Its gameplay semantics are not inferred
as inventory flags. [Preparation audit](../analysis/phase-five/findings-1509-20261014/finalization/PREWRITE_PREPARATION.md).


## Integration continuation: decoded footage and initial dialogue

D: [SEQ1 frame50](../analysis/phase-five/integration-20261014/seq/seq1-trial/seq1-0050.png)
contains the live-action city image and embedded “İSTANBUL / Bosfor Savaşı'ndan
Elli Billah Sonra...” title. Sonra is visible in source pixels; the user's later
Önce recollection does not override that output. The distinct resident prose
endingönceydi remains a separate untraced consumer. Native frame export matches
the independent RGB fixture exactly; all2433 records decode chronologically.
[Codec evidence and boundaries](../analysis/phase-five/integration-20261014/seq/SEQ_PIXEL_DECODING.md).

A/D: cell(2,1) bytes11..14 form01010106. PCS1 has six length-accounted groups;
relative selector arithmetic gives5 for this cell's stored map values. The
interpreter's argument/state still determines execution. The length-copy helper
at4870d calls add10 decoder47d1a. PCS1 offset500h decodes the matching dialogue
span, with exact raw bytes retained. No speaker, automatic condition or item
transfer is assigned. [Event/text frontier](../analysis/phase-five/integration-20261014/otopark/CELL_EVENT_AND_DIALOGUE.md).

A: after serialization,167c:1932 re-reads the same664 bytes and derives race labels
without consuming RNG or regenerating stats. Name/auxiliary working offsets0/111
and derived race74 differ from on-disk pairs; unassigned workspace bytes survive.
[Reader bridge](../analysis/phase-five/integration-20261014/party/PARTY_REREAD_BOUNDARY.md).


## Lifecycle continuation: opening events and manual evidence

A: world3ac19..3ac43 calls1689 dispatcher mode2 for initial(2,1). PCS1 group5
selects its marker14 section, conditionally exits if flag249 is set, otherwise
shows ten opcode17 lines and sets flag249. Fixed speaker selectors are
1,2,1,2,3,1,3,4,1,3; the opening line uses selector1, whose name depends on the
party. B6 glyph/display behavior is not yet recovered. Earlier unknown-speaker
statements above describe the previous frontier, superseded only to this extent.

A: adjacent(2,0) group0 contains the outside-noise warning/choice and speaker5
stone suggestion. Opcode9 atPCS1:197 supplies pool[2,0,0] to acquisition46591,
mode0. Name consumers use DS0ce2+15*index:2→DS0d00/physical19f00=`sivri daş`.
This independently proves offered item2; the initial group5 itself does not
acquire it. Exact movement/choice path, UI accept/cancel and persistent inventory
writes are pending. [Full source-backed audit](../analysis/phase-five/lifecycle-20261014/otopark/OTOPARK_DIALOGUE_AND_ACQUISITION.md).

R (bounded observation): original menu initialization installs05dc:08f6 via
DS98b4→962c copy. This is not yet the creation-entry/RNG validation required for
M02/M03. Fresh generation/finalization remain disabled.

M: manual20 distinguishes melee Sivri Daş from ranged Daş on22. Inventory13–14
and dog-related Zopa/Terlik/Tüftüf descriptions guide consumer searches, without
proving first-battle logic. Manual34-vecize catalog, reversed-name affordability
UI, nine12×12 combat regions and separate hit/net-damage descriptions remain
research references, not native mechanics. [Manual index/catalog](../analysis/phase-five/lifecycle-20261014/manual/MANUAL_TO_BINARY_INDEX.md).

Rust: SEQ timing arithmetic now tested, pixels unchanged; full live-action
playback/audio/fades remain pending. No static scene substitute was introduced.


## Visible integration — 2026-10-15

RUST-IMPLEMENTED: all five SEQ streams now advance in SDL using host deadlines
at the10fps GHD rate. F9 in the existing UI explicitly enters silent debug
inspection; Escape returns with drafts retained and the parent clock suspended.
Pause, step, restart, stream boundaries and END hold are implemented. Independent
frame50 fixture matches indices and preview RGB. Automated tests and full-film
SDL dummy smoke pass; user desktop acceptance and original runtime audiovisual
comparison remain pending. [Usage](../rust-port/NATIVE_SEQ_PREVIEW.md).

This is the first connected visible film preview, not a creation-success branch.
No new character lifecycle, Otopark room rendering/navigation, event execution,
item transfer, dog encounter or combat behavior was enabled. Recover those shared
systems incrementally; do not equate debug film access with continuous gameplay.


U — 2026-10-15: user confirms standalone and F9 silent preview working correctly
on Fedora, with all five cinematic streams playing in order and no observed
problems. Silent debug presentation is accepted; original audio and continuous
completed-party→film→Otopark gameplay are not established by this observation.


## Original-state graphical increment — 2026-10-15

RUST-IMPLEMENTED/DOS-RUNTIME-OBSERVED: graphical stats, rerolls and source-ordered
identity handlers work from a captured original pre-setup state. Whole first-slot
28-draw setup and a separate27-draw generator invocation match actual DOS memory.
Four named slots prepare664 original-layout bytes in memory. F8 alone advances
one explicit debug idle poll; normal automatic seed/callback/polling, final IO and
gameplay completion remain incomplete. [Test guide](../rust-port/NATIVE_CREATION_DIAGNOSTIC.md).

BINARY-VERIFIED/RUST-IMPLEMENTED: all18 PC banks strictly parsed; initial PC1
(2,1), facing2/forward(0,+1). F10/standalone shows UFUK1/PAL3D background only.
Shared five-layer renderer, generated18-byte projection records and concrete
initial field9→slot37/yer2, field8→slot57/tav2a consumers narrow the renderer
frontier. These are not a complete room draw or navigation/collision/event rules.

BINARY-VERIFIED/RUST-IMPLEMENTED: original SDISB16 sample consumer proves unsigned8
mono22050 PCM and byte positions. --debug-audio exposes source sound through
SDL host queues, approximate host alignment/gain. Silent/F9 playback remains
user-accepted/default; original mixing/timing/fades and new listening acceptance
remain open. All rooms, dialogue execution, Sivri Daş transfer, exits and combat
remain research; no continuous playable sequence is claimed.


## Timestamped firsthand walkthrough reference — 2026-10-15

[Source-PTS visual index](../analysis/phase-five/walkthrough-20261015/visual-index/INDEX.md)
and [cross-reference findings](../analysis/phase-five/walkthrough-20261015/VISUAL_REFERENCE_FINDINGS.md)
retain source hashes and cached frames. These supersede earlier user recollection
only where directly visible; they do not replace assembly/state evidence.

- Video1: last live-action footage10s→enclosed brick/wood-floor room15s; first
  dialogue20s shows first party portrait, consistent with prior selector1.
  Front-door choice85s→stone suggestion90s→Sivri Daş acquisition panel95s.
  The panel's `(1)` suffix is not numeric item ID2. Ownership/transfer remains
  unresolved; a closed panel117s does not establish acceptance. Dog120–125s
  precedes black130s and separate isometric battle140s; room return330s.
- Video2: stairs visible at0s and140s exit confirmation, upper room145s has
  different ceiling/floor, arches286s and open-sky view300s. This supports the
  multi-storey route and distinguishes distant background from actual composition.
  Input/collision/bank adjacency remain executable-recovery work.
- Video3: illustrated history text20s is consistent with separate resident prose
  endingönceydi; this is a candidate consumer association. It does not alter
  the original live-action SEQ title endingSonra. Videos4/5 index later fight
  and travel/Beşiktaş references for future milestones only.

Native increment is source-sheet inspection, not room progression. Creation
lifecycle gains original idle/overlay-relocation and Enter-reroll differentials; normal
RNG scheduling/party IO remain gated. Debug PCM audibility is user-confirmed;
original audio synchronization/fades remain unresolved. Primary milestone is
still incomplete; preserve accepted visual and cinematic behavior.


## Original area extraction and field consumers — 2026-10-15

[Reusable atlas](../analysis/phase-five/area-fields-20261015/atlas-release/INDEX.md)
and [research ledger](RESEARCH_INDEX.md) now take priority over new recordings.
All18 banks/3889 cells and266 fully framed event groups retain coordinates and
member/archive offsets. PC1(2,1)/group5 opening remains separate from(2,0)/group0
acquisition/encounter. Group0 encounter command at PCS1:11c has raw parameters
000d0100000000; dog numeric identity/count semantics remain unresolved.

PC1(0,5)/group2 command atPCS1:254 is opcode11 area2/position664/facing3, resolving
to zero-based area1 PC2 Mecidiyeköy cell(3,22). This is a static transition target
with unexecuted conditions, not proof that any guessed stair movement triggers it.
Default PC2 entry is(23,0), separately stored. MERDUST upward/MERDALT downward
visuals are user-confirmed; elevation/event mapping remains open. Existing
walkthrough anchors video1 room15s, door85s, dog120–125s and video2 stair140s/city300s
remain visual checks, not substitute collision/state evidence.

Creation14 displayed field offsets remain unchanged. Base/current consumers link
0c→3a and0a→38; current Damak semantics pending controlled depletion/UI checks.
Controlled Rust samples include Güç13 and17 without an imposed maximum, and rare
Kilo0 requiring original DOS comparison. Neither survey extrema nor semantic
plausibility enables fresh creation scheduling, final IO or gameplay progression.


## Native visible connection — 2026-10-15

[Current launch/controls](../rust-port/NATIVE_PLAYABLE_INCREMENT.md): native menu
New Game generates stats/body poses, prepares four named characters, writes a
new owned664-byte checkpoint and uses existing SEQ1–5 playback before displaying
PC1(2,1),facing2. This follows the known source sequence with explicit native
entry/clock policy, not an assertion of full original runtime equivalence.

[Room capture](../analysis/phase-five/playable-20261015/room/STARTING_VIEW_COMPOSITOR.md)
retains37×18 projection records and42 original draw-call stacks. Native replay
uses original resources, keyed/reflected rectangles and proof that three scaled
draws are fully occluded. Three untouched last-row pixels are unverified. This
is the actual starting-view imagery; no camera movement, collision, dialogue
execution, Sivri Daş ownership, dog encounter or combat has been fabricated.

New native creation checkpoints preserve prepared party data only; general game
saves remain unimplemented. Exact random-face/CPU RNG timing, original full
writer runtime comparison and source audio gain/sync/fades remain incomplete.
All prior user acceptance stands; user now also passed both Fedora analysis-tool
outputs. New visible integration has automated/source checks, pending desktop acceptance.


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


## Movement/event boundary — latest 2026-10-15

**U:** user confirms starting-room facing visuals are correct. This supersedes
the preceding pending visual acceptance only. **A/RUST:** the ordinary open-step
path now exists in `lale-core::movement`, with explicit event execution, current
mode3 and destination mode1 vetoes before any coordinate commit. Source reads
width/coordinates again after events; event-side changes must survive. Unknown
events cannot silently allow a step. No native input invokes this module yet.

**A/D:** PC1 initial(2,1) has north selector3/state2 and three selector2/state1
pairs. Its next route therefore needs the original door transition, not the
ordinary open-step branch. Original1670 file32207..3230d checks facing and events
then calls1662 stub00bb/body798c (file2fdbc). This helper commits live facing
vectors only if DS3b06==0 at304e1..304fb. The adjacent(2,0) event key01010101
selects group0, already linked to the outside choice/item2/encounter preparation.
Full conditional execution, animation, guard lifecycle, destination view and
persistent inventory are still unimplemented. This does not establish an
unconditional door→item→battle sequence.

[Checkpoint](../analysis/NATIVE_MOVEMENT_BOUNDARY_CHECKPOINT_20261015.md),
[assembly/REA and implementation limits](../analysis/phase-five/navigation-20261015/MOVEMENT_BOUNDARY.md).
95 offline test executions pass; no new runtime or desktop movement acceptance.


## North-door sequence — latest 2026-10-16

**U:** original doors visibly open; the north-facing starting exit is a door.
**A/R:** original Up invokes state2's event/door path. In a controlled initialized
DOS party, north-facing(2,1) current-mode3/candidate-mode1 leads to the outside
warning. h/Hayır choice1 executes the veto and does not move. A separate trial's
single Up plus e/Evet choice0 displays the stone suggestion and acquisition
panel while still(2,1). Esc from that panel reaches original1662:798c via
stub00bb. At guard0, original final stores commit(2,0), facing0, without another
Up; keyboard head/tail equality is captured before/after commit. Destination
mode2 is reached but stopped before its effects. This validates a concrete
sequence, not every possible acquisition/door outcome or dog/battle dispatch.

**Limits:** creation/film skipped; initial dialogue flag249 deliberately set;
no stone transfer performed. Guard byte3b06 remains separate from world flags
and is not a persistent open-door bit. Four86×119 KAPIAN3 frames and source150
unit stage minimum are instruction-backed. Current native app remains turning
only: the attempted animation/destination candidate failed comparisons and was
kept outside Cargo targets. Original-source frame0 matches40000 bytes; other
image comparisons and failed instrumentation remain explicitly provisional.

[Detailed trace, source references, limits and next capture](../analysis/phase-five/door-20261015/DOOR_RUNTIME.md),
[new checkpoint](../analysis/OTOPARK_DOOR_RUNTIME_CHECKPOINT_20261016.md).


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
