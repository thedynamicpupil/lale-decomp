# Reusable combat/world systems checkpoint — 2026-10-20

Latest continuation authority: user's reusable-architecture-first request plus
UpdateablePrompt/AGENTS preservation rules. Continue the SAME genuine first
Otopark combat objective; native battle remains incomplete. Do not restart old
menu/creation/room work or replace original systems with a scripted fight.
This checkpoint extends `FIRST_PLAYABLE_COMBAT_CHECKPOINT_20261020.md`.

## Read first

1. `docs/PROJECT_STATE.md`, `docs/ROADMAP.md`, `docs/FIRST_PLAYABLE_PATH.md`.
2. `analysis/phase-five/reusable-loops-20261020/REUSABLE_SYSTEMS_MODEL.md`:
   subsystem readiness, new source findings and Evidence IDs.
3. Same folder `DOS_SHARED_TICK_AND_TURN.md`: exact conditioning, accepted and
   excluded runtime results, commands/captures and next trace.
4. Same folder `WORLD_LOOP_GAPS.md`: world outer function, shared dependencies,
   arrival-event re-entry and prioritized navigation/render/event gaps.
5. Preceding `first-combat-20261020/` models for rendering, terrain, physical
   attack/writeback, initiative/dog AI and inventory/equipment. These remain
   authoritative where not explicitly narrowed by new observations.

## New established results

- Original world outer loop is resident1670:0075→body8524/file3a434..3b958.
  Full5413 original bytes plus fresh exact-entry disassembly are retained.
  **0824:2e45 is shared keyboard-availability poll, not world-loop entry**.
- World changed-coordinate path and combat round boundary both call
  resident1670:0048→39fd/file3590d..35b02 with1. This shared helper advances
  signed clock words3d64/66/68 and independently decrements/compresses five
  timer words in each numeric party record AND each corresponding party actor.
- A new original DOS helper differential confirms59/23/359→0/0/0 and independent
  timer arrays[50,250,150,0,500]→[250,50,500,0,0]. Original forward compaction
  skips the newly shifted slot. Treat it as authentic behavior, not a bug to fix.
  This is explicitly conditioned input, not a natural round or world step.
- Original Tab reaches eligible selection1694:1caa/file4b8fa. New run's current
  actor28→25, cursor1→2, same round0/result0, live HP/coordinates unchanged.
  Initial order live28/key2,25/key4,27/key4,26/key6,1/key15. Run1 differed;
  retain original RNG/call chronology instead of fixed positions/order.
- Original occupancy0c27 is raw stride28 write. Effect predicate20e0 scans
  actor+16..1e with **unsigned remainder100**, linking those timer words to effect
  IDs. Damage helper1ace and message214e have new REA/direct-byte evidence.
- World8524 arrival mode2 can re-enter on returned AL; changed coordinates also
  trigger time/maintenance and idle can draw RNG. A separate nonPCS encounter
  caller invokes preparation→battle→area reload. These are critical reusable
  contracts still missing from the native outer host, not cosmetic extras.

No natural AI action, physical damage, equip/unequip, victory/defeat or return to
exploration is newly verified. The combined architecture is NOT sufficiently
verified to enable a native battle engine yet. Phase1 stays RESEARCHING; no
Phases2–5 completion. PhaseFour remains unclosed as before.

## Rust increment

New `rust-port/crates/lale-core/src/world_tick.rs`, exported from lib.rs:
pure `WorldTickState` with clock[3], numeric_timers[4][5], actor_timers[4][5]
and advance(amount). Preserves signed remainder, wrapped16-bit arithmetic,
wrapped subtraction sign clamp, loop order and skip-after-compression. No RNG,
rendering, I/O, event/flag write or SDL dependence.

`lale-core/tests/world_tick_dos.rs` compares all four party/actor arrays against
retained full original DOS captures, and separately tests source-derived signed/
overflow edge cases. Those edge cases are not claimed naturally observed values.
**The module is deliberately unwired** until original host timing and state
synchronization are recovered. This does not make native walking/rounds complete.

Normal native route remains creation→films→opening dialogues→north choice→stone
transfer→four door frames→automatic(2,0)→illustration/warning→pending8. F12/F5/F7
remain intact. No autoequip, auto-win, dog/key flag, reward or fake return added.

## Runtime status and limitations

Owned original DOS run2: `runtime/first-combat-20261020/run2/`,20 copied/hashed
original files, fresh GRP fromGRPHAZIR. Same installed emulator normal/fixed50000,
SDL dummy/audio, owned config/savedir/captures, mounted only owned game directory.
No packages, global settings, original saves or protected files changed.

Creation/film were skipped explicitly; flag249 conditioned only after area init.
Tick trial used unused SS0c00 and trapped return0d6a:0706. All touched counters
and timer fields were restored before further execution;11 BASE/RESTORED DS byte
differences are unused SS stack scratch aliases. Original registers/SP restored.
World position(2,0),facing0 then conditioned to investigate original mode2, not
claim the earned acquisition/door route. Correct cell offset is **30 DECIMAL =
1e HEX**. An accidental30hex call returned without combat and is excluded.

Dynamic combat stub resolved1eb8:0138→2eaf:b40a; universal input2eaf:bff5 reached.
After verified Tab selection1caa, continuing to1de3 yielded no confirmed stop.
That target lies after camera/recenter/1d1b and before speech, so do not assert
voice wait, engine failure or overlay relocation as cause. New source camera
pan14ea repeatedly redraws2721 and waits1e5e(2), but actual stopping location is
unobserved. No continuation instruction after1caa is certified from that RUN.

**DOS session79236 terminated (Ctrl-C, exit1, dos-26.json). No live DOS session.**
REA sessions were closed with new `combat-helpers.snapshot.json` (4 Evidence)
and `world-loop.snapshot.json` (2). Reuse existing original static wrappers only
in owned ephemeral Ghidra analysis; never execute wrappers or touch GUI locks.

## Validation and preserved evidence

New folder `analysis/phase-five/reusable-loops-20261020/` retains:
full inline REA records/snapshots, original source slices/disassembly/manifests,
dos-00..26 command/results,7 DS captures with hashes, turn-capture-summary.json,
runtime-copy manifest, models and validation logs. `camera-pan-original.bin` is
an initial wider probe including a following function prefix; use the exact
513-byte `camera-pan-body-original.*` for camera function boundaries. Likewise
turn-message-original slice includes following functions;214e itself ends4bede.

- 179 workspace test executions pass (shared runtime suites counted in multiple
  executables).2 new tick tests. `workspace-tests.log` retains complete output.
- Offline development and release workspace builds pass; fmt check passes.
- SDL dummy menu3frames, debug overlay/pause/export and connected route checks
  pass. Normal route still ends8; ten dialogue waits6.38s, door stages0.63s in
  this validation. Native debug exports are new unique directories, not saves.
- 233 original/historical baseline and30 frozen hashes match existing manifests.
  `preservation.json` records zero mismatches. No new Fedora acceptance.

Living docs updated. No older reports/checkpoints/frozen artifacts overwritten.
No Git repository exists at project root; no commit was made.

## Exact next work, in order

1. Create fresh owned run3; reuse run2 commands/config policy, source files from
   manifest, never reuse dead PTY79236. Repeat startup and mode2 byte offset1e.
   Trap first inputbff5, then keyboard Tab at eligible-selection1caa.
2. At a CONFIRMED paused stop, inspect debugger HELP for bounded
   LOG/LOGS/LOGL/LOGC[num] (present in installed binary help strings), establish
   small-budget stop/log semantics, and use a bounded CPU trace through camera/
   redraw/wait. Capture actual CS:IP/stack/stub/timer states. Do not repeat an
   unbounded RUN to a possibly stale dynamic continuation. Break original helper
   boundaries earlier if needed; do not skip presentation and claim parity.
3. Finish Tab→next input and advance to original AI9668. Capture allowance,
   source/target/occupancy/terrain/RNG before/after ordinary movement2d39 and
   attacks3f5b. Cover distant, blocked alternative directions, diagonal adjacency,
   reactions, hit/miss/zero damage and equal allowance cost. Do not invent AI.
4. Trace actual original inventory/equip UI and numeric→actor derived recompute;
   compare barehand vs acquired-and-wielded item2. Then actual battle victory
   and defeat through8111, opcode8 continuation, loaderflag0, party/world deltas.
   Key flag2 belongs to its later event, not an automatic battle reward.
5. In the same state model validate8524 changed-step vs blocked/turn/idle paths,
   shared tick scheduling, numeric/actor timer copy ownership, arrival AL re-entry
   and loader resources. Keep state3/graphics9/services unsupported until traced.
6. When reusable core behavior is sufficiently verified, implement authentic
   battle rendering and actions incrementally, preserving original assets/RNG/
   integer/timing behavior. Do not enumerate every creature/item/special now.
