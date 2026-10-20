# First playable combat continuation checkpoint — 2026-10-20

**Primary objective remains active and incomplete:** faithful player-controlled
Otopark dog battle, verified enemy AI, original Sivri Daş/inventory/equipment and
valid victory/defeat→exploration return. Do not replace this objective with map
browsing, unrelated research or a battle image demonstration. Follow the user's
five phases in order. Phase1 is RESEARCHING; Phases2–5 are not enabled.

Read UpdateablePrompt.txt, AGENTS.md, living docs, preceding walking/debug
checkpoints and the latest user combat instructions before continuation. Preserve
all original distribution/emulator/config/Ghidra GUI/reference media/runtime saves,
frozen Phase Three artifacts and historical checkpoints. Phase Four is not complete.

## Completed source-backed Phase1 work

All new research resides under [first-combat-20261020](phase-five/first-combat-20261020/).
The central deliverable is [COMBAT_EXECUTION_MODEL.md](phase-five/first-combat-20261020/COMBAT_EXECUTION_MODEL.md).
It links exact source offsets/evidence and classifies static/runtime/unknown facts:

- EXISTING_COMBAT_EVIDENCE: prior manual, recordings, resources and dispatcher.
- TERRAIN_RENDER_ARCHITECTURE: startup bindings, original27×27 active terrain,
  stride28, nine9×9 PC-derived regions, exact group13→KOPEK mapping.
- RENDERER_EXECUTION_MODEL:7×7 painter order/projection, ground/wall rectangles,
  KOR actor crops/mirroring, UI/presentation helpers and render-side effects.
- INVENTORY_COMBAT_EVIDENCE: raw inventory/quality encoding, refs3c/3e/40,
  item2 weapon data201,2,1,3,1,2,0 and original equipment/derived-stat consumers.
- ATTACK_WRITEBACK_ARCHITECTURE: signed attack cost/hit/damage, two-hand RNG order,
  reactions and exact8111 source/destination offsets, including current HP/Damak.
- INITIATIVE_DOG_AI_MODEL:28-slot stable initiative, actor ownership/allowance,
  original dog target-selection quirks, approaches, collision and opportunity
  reactions, shared line probe and remaining effect/time dependencies.

Original1694 overlay base file49c50,sizeD7CC. Combat stub1694:0138→bodyB40A,
physical5505a;1662:0066/file28430 is preparation. Do not continue the old synthetic
func26686 identity as if it were the combat body. Direct original16-bit near-call
arithmetic can wrap across physical64K in objdump output: recalculate from the
original IP, not printed physical target. Ghidra DS3042 aliases must be mapped
back to actual original offsets (e.g.2519→DSbb39), not blindly transcribed.

Root REA/Ghidra queried actual main/scheduler/AI/attack/renderer/movement helpers
on the existing owned static1694 wrapper in ephemeral source-immutable mode.
Complete16 Evidence records and provider IDs are retained in individual*-rea.json
and overlay1694.snapshot.json. The provider was closed with that new snapshot;
no live REA target/session or protected GUI project is open on our behalf.
No original/synthetic DOS wrapper was executed natively.

## New original runtime evidence

[DOS_COMBAT_ENTRY_AND_STEP.md](phase-five/first-combat-20261020/DOS_COMBAT_ENTRY_AND_STEP.md)
is authoritative for chronology/conditions/restart. New owned runtime:
runtime/first-combat-20261020/run1/game.20 original files copied; only the owned
GRP seeded from GRPHAZIR. No original saves or previous runtime copies modified.

Actual original destination-mode2 event was invoked after documented creation/
film skips, flag249 and direct world(2,0),facing0 conditioning. This is not the
full earned route through native acquisition/door or a Fedora acceptance result.
The original event/overlay loader reached real combat2eaf:B40A and player input.
Authentic64000-byte image6,768 palette, DS/stack/live-overlay/EMS retained. Source
PALBAT matches live palette exactly. Original frame was visually inspected.

Observed group13/count1, one dog actor1 HP3/class5/side2 at(9,7); party actors25..28
have HP6/6/5/3 and trial placements(15,2),(13,1),(10,6),(9,0). Current actor25,
allowance10, result0, DSbb39=0. These are this trial's values, not native constants.
Real Down key reached2D39; actor25 moved(15,2)→(15,3), allowance10→9, facing1→3,
successDSd5b8=1. RNG7bdd5bcd→29de7772 is one shared LCG advance across action.
Render/message consumers must preserve that draw; don't assign independent RNG.

Later real Tab reached scheduler1B6D but the bounded continuation did not confirm
next input/AI/outcome. That subtrial is excluded from completed results. Original
DOS PTY52907 was terminated with Ctrl-C, exit1. **No live DOS pause remains.**
Do not reuse historical52907,64818 or their old register/overlay coordinates.
The no-full-launch-flags initial process and rejected command batch are excluded;
accepted command/capture logs explicitly preserve each state change and stop.

## Rust increment (support only)

- lale-assets combat_data exposes original creature-name9-byte/template46-byte
  and weapon14-byte records, signed raw words and DS/file offsets. Callers must
  supply an independently validated ID interval; no guessed counts, aliases,
  normalization or combat formulas are introduced. Malformed bounds fail.
- EventMachine read-only pending_external returns command offset/opcode/operands
  without advancing/acknowledging. F7 snapshot includes these plus raw opcode8
  group/count pairs. It still stops at encounter8; it grants no dog/key flag.
- New control-flow/data tests verify dog13/item2 source rows and pending-operand
  inspection, retained cursor/veto/flags and ExternalPending behavior.
- Existing SDL route check now exports the actual native pending encounter
  diagnostic and verifies its state did not change. This is diagnostics, not
  a combat host or simulated victory.

No native battle screen, combat actions, enemy AI, equipment interface or battle
outcome was enabled. Normal native gameplay and debug controls remain intact.
No original screenshots/captures are native runtime assets.

## Validation and acceptance

177 workspace test executions pass (includes duplicate runtime module tests in
multiple executables). Offline release and development workspace builds and fmt
pass. SDL main-thread menu/debug/normal dialogue→acquisition→timed door→illustration
regression and pending-encounter diagnostic run are logged in the evidence folder.
All233 original/historical baseline and30 frozen hashes match. No packages or
global settings changed. No new user Fedora acceptance is claimed.

## Exact next work — keep the same objective

1. Resume Phase1 from the existing models/bytes, not a fresh broad inventory.
   Open the source-immutable owned1694 analysis wrapper through REA as needed;
   use the saved snapshot as retained reference, never the protected GUI project.
2. Create a fresh owned run2 and repeat the documented startup boundary sequence.
   Capture universal combat input BFF5 only after confirming actual overlay base.
   Before continuing Tab, trap next actor selection/store in1B6D before speech/
   presentation and AI9668 entry; resolve real return/relocation/voice paths.
   Capture exact actor/allowance/RNG/HP deltas and original AI step/attack behavior.
3. Controlled original physical3F5B comparisons: bare hand vs actually equipped
   Sivri Daş, exact allowance boundary, miss, zero net damage, both-hand/response
   behavior. Keep input conditioning separate from normal gameplay evidence.
4. Finish required UI/action/terrain/draw/mutable-state consumers and compare
   full terrain/compositor pixels with original capture. Key source dependencies
   remain renderer status/minimap/action helpers,0c27 occupancy,1ace effects,
   per-round1670:0048 and source message/voice RNG timing.
5. Capture real victory and defeat through8111 and opcode8 return, entire party/
   RNG/world delta, result1/2 and whether the calling script sets flag1. Do not
   assign flag2/key as a fabricated combat reward.
6. When Phase1 dependencies are adequately proven, implement Phase2 interactive
   source-rendered tactical screen, then Phase3 actions/AI, Phase4 original item/
   equipment/weapon interaction and Phase5 full sequence. Each phase must meet
   its dependency/acceptance criteria; rendering or compilation is not completion.

Update living docs/checkpoint after meaningful increments. Full Fedora test must
include acquisition of Sivri Daş, wielding it, real player/enemy turns and correct
victory/defeat→world state. Until then keep this milestone explicitly incomplete.
