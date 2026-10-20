# Reusable systems readiness — 2026-10-20

Continue the first playable battle objective, with the user's latest priority:
understand the shared execution systems before enabling a native battle engine.
Phase1 remains RESEARCHING. This report extends, rather than replaces, the
preceding [combat model](../first-combat-20261020/COMBAT_EXECUTION_MODEL.md).

## Readiness and critical gaps

|System|Established evidence|Still required before faithful integration|
|---|---|---|
|Encounter initialization|PCS opcode8 group/count operands, preparation1662:0066, battle1694:b40a, actor/class arrays, actual original first input state in two conditioned trials|Complete party stat/placement initialization and terrain corner transcription; nonPCS caller contract|
|Battle renderer|Actual indexed DOS frame/palette, assets/KOR crop ABI,27active/28stride,7×7 camera, source tile order; prior renderer report|Complete status/action/minimap consumers, clipping/presentation and terrain differential; rendering can mutate state/RNG|
|Player input/turns|Eight movement scans, shared movement/reactions, scheduler/initiative source; original Down and new Tab→eligible selection captured|Resolve selection→camera/redraw/wait continuation; full keyboard/mouse action selection and targeting; no free party selection assumption|
|Enemy AI|Source-based reusable target, movement and physical-attack branches, including original stale-neighbor quirk; no invented pathfinder|Actual distant/blocked/diagonal/adjacent comparisons, target0 and occupancy/death lifecycle|
|Attacks|Source signed/wrapped hit, damage, two-hand allowance, damage-before-hit RNG and zero-damage success; attack-parameter/equipment consumers|Runtime miss/hit/protection, cost equality, reactions/counterattack and equipment comparisons; growth side effects|
|Inventory/equipment|Original acquisition transfer, raw inventory words and equipment record references; Sivri Daş item2 is distinct from Daş|Original wield UI/constraints/cost, real equip/unequip→recompute→attack; acquisition does not autoequip|
|Time/effects|NEW shared1670:39fd clock/timer helper, original callsites and conditioned DOS differential; tested pure Rust transcription|Host scheduling, numeric↔actor timer synchronization and full effect consumers. No timer names/formulas invented|
|Outcome/return|Scheduler result1/2 branches,8111 writeback and opcode8 reload/cleanup source; second world encounter caller newly identified|Actual fought victory and defeat through writeback/reload/event continuation, palettes/resources, persistent deltas and earned key event|
|World navigation/events|Inner movement gates, original PC maps/PCS, shared room renderer, conditioned area change; NEW complete outer8524 bytes/partial model|Outer time/maintenance/bounds/redraw/arrival-reentry/idle/RNG contract, state3/graphics9/services, natural earned continuous route|

See [world-loop audit](WORLD_LOOP_GAPS.md) for source addresses and ordered world
gaps and [new DOS trial](DOS_SHARED_TICK_AND_TURN.md) for exact conditioning and
limits. Do not infer that native ordinary walking already implements8524's full
outer contract. A one-shot arrival host must be reconciled with original AL-driven
mode2 re-entry, particularly after opcode11 changes area/position.

## New REA and direct-byte findings

Owned ephemeral Ghidra sessions used existing synthetic static wrappers; they
never executed a wrapper or touched the protected GUI project. All full inline
Evidence records are retained in `*-rea.json`, plus closed snapshots
`combat-helpers.snapshot.json` (4 records) and `world-loop.snapshot.json` (2).
Ghidra pseudocode remains interpretation, not original source. Original slices
retain encoded segment descriptors; logical/stub/runtime coordinates differ.

- Shared tick1670:39fd/file3590d: Evidence
  `ev_f300fe8006e01d9278c3ce4858f613515a5519bcda68f11d6c0f7c7868f77ec7`.
  Direct502-byte disassembly checks signed division and wrapped subtraction sign.
  Actual DOS confirms carry and skip-after-expiry; Rust `world_tick` implements
  only this closed deterministic operation, unwired from incomplete hosts.
- World outer1670:8524/file3a434: Evidence
  `ev_352aae81130cfee427a758d458796cd1fef397d98beaa489d4c29234dd0ef0b9`.
  Complete5413-byte original range is retained. It calls shared tick on changed
  coordinates; additional maintenance/idle/encounter paths are only partially
  interpreted. REA warns of removed unreachable blocks; original instructions
  are authoritative, and no complete outer-loop equivalence is claimed.
- Occupancy1694:0c27/file4a877..4a88f: Evidence
  `ev_2440244a82b4a54154f145aca648b6ff22137190d5a0245e0873de1c0e59bcdf`.
  Exact raw body writes DS:c2ce+56*x+2*y=value, no checks/calls/RNG. Native bounds
  must be enforced by verified callers, not invented clipping in this primitive.
- Effect predicate1694:20e0/file4bd30..4bd9d: Evidence
  `ev_419123655e16fc3b99f265596b57447b295ceebbd9f07294504cfb8962f83249`.
  Checks five actor words A+16..1e for **unsigned remainder100** matching ID.
  Original XOR DX,DX / DIV at4bd6f/71 settles unsigned arithmetic. These are the
  same actor words decremented by shared tick; ID0 can match empty0. Do not
  collapse all raw-item/effect remainder operations into one signed normalizer.
- Effect damage1694:1ace/file4b71e..4b7bc: Evidence
  `ev_a3cebb6716d6730430701a9907fbb5db47a564d7a17a7f8a42168e9b1923b54d`.
  If amount>0 orDSd59c>0, AND class T+12>0, marksA+24, subtracts HP, selects
  effect/death display and camera; no direct RNG. The class gate's semantic name
  remains uncertain; do not remove it from effect paths.
- Turn-message1694:214e/file4bd9e..4bede: Evidence
  `ev_41952ad3954a8879ab1040d85ee33e71b715bea8616d3c9bce5f3a990539bcf1`.
  Gated by actor/presentation state and audio bytesDSbb38/73d0; resolves message/
  creature/party voice and calls15dc:192d. Does not prove the unresolved runtime
  interval is a voice wait. Original camera14ea has finite dominant-axis integer
  stepping, repeated2721 draws and15dc:1e5e(2); its full513-byte body is retained.

Party writeback8111's existing source explicitly copies actor timer words back
to numeric2e..36. Initialization6345/64f5 must supply the reciprocal mapping in
the eventual state owner. Updating both arrays in the shared tick is original
behavior, not evidence they can be merged into a single always-aliased array.

## Implementation boundary and validation

`lale-core::world_tick::WorldTickState` retains raw three clock words, four numeric
five-word arrays and four actor five-word arrays. Signed remainder, wrapping
addition/multiplication/subtraction, sign clamp and forward compaction are explicit.
It performs no RNG, rendering, file access or event acknowledgement. No battle
engine/UI is enabled. Two tests compare all captured timer fields against actual
DOS and exercise assembly-derived signed/overflow edge cases; the latter are
not claimed DOS gameplay observations. See `world_tick_dos.rs` and retained raw
fixtures; original game bytes are read-only.

Before enabling battle integration, finish core runtime comparisons above. Do
not spend the next session enumerating enemies, items or specials. Prioritize
bounded turn continuation, ordinary physical AI/action outcomes, actual equipment
and result→world contracts. Keep native encounter8 pending until genuinely fought.
