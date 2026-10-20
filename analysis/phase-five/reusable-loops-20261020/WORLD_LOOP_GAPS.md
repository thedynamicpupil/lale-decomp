# Reusable world loop and critical gaps — 2026-10-20

This independent static audit preserves earlier reports and original bytes. No
live REA/DOS session, protected GUI project, Rust source or living document was
changed. Existing REA evidence is reused; new conclusions below are checked
against fresh original instruction slices in this directory. Static execution
models are not new runtime observations. The first battle remains incomplete.

## The outer loop is a separate dependency

Original main physical `7fee` calls resident `1670:0075`. Overlay-layout entry17
maps this to **original body1670:8524, physical3a434..3b958 inclusive**. The new
`world-outer-loop-original.bin/.asm` retains its entire5413 bytes, and
`world-source-ranges.json` records source/slice hashes. Encoded segment immediates
such as0130 are relocation descriptor values, not actual runtime segments.

**0824:2e45 is a shared keyboard-availability function**, called from world input
at3301f and outer loop at3a474. Historical logs reaching that address establish
a poll boundary, not a uniquely identified outer-loop entry. Likewise original
1670:0ffc/file32f0c is the world input dispatcher, not the complete world loop.
This distinction matters when instrumenting return after combat and idle draws.

The newly inspected outer instructions establish this partial skeleton:

1. At3a461 call resident0040:01e3;3a474 polls keyboard. The no-key/nonmouse path
   compares live x/y against DSbb51/bb4f and can jump directly to idle3b70f.
2. At3a4ac call world input0ffc. Then compare live coordinates against the same
   remembered words. Coordinate change enters3a4d0; unchanged goes3abb3.
3. Changed coordinates call **1670:39fd(arg1)** at3a4d3, then helper4d22 at3a4de.
   Signed map bounds are checked afterward at3a4e4..3a52a; out-of-bounds calls
   helper765c/file3956c and clears b9c8. This is a real outer recovery boundary;
   movement0000 itself uses low-word arithmetic and has no host bounds check.
4. Changed coordinates read current cell byte+9 for an indexed helper142 in
   combat overlay1694 and a sound call192d when bb38 is nonzero. Consumer
   identity is visible; exact byte9 semantics and sound lifetime need tracing.
5. At3a5ba, DS3d64 signed remainder10 selects party maintenance. Positive current
   HP records enter mutation/UI branches through3ab9b. This is additional to
   shared time/effect39fd; it must not be silently omitted or moved into redraw.
6. At3abb3, byte3b05 selects ordinary redraw07b6(b9c8) at3abcd versus1662:0093.
   Ordinary branch clears b9c8 immediately after drawing. Coordinate-change test
   then selects arrival/event work versus3ad15.
7. At3ac06 helper2c69/file34b79 precedes clearing3d5e bit2. **Mode2 dispatch**
   at3ac43 uses freshly computed `(y*width+x)*15`. If returned AL is nonzero,
   jump3ac10 clearsbit2, calls2c69 and dispatches mode2 again. Therefore arrival
   is a **re-entry loop**, not universally one completed event per movement.
   Determine which external commands set its return-success and whether they
   changed area/position before reproducing this behavior in the native host.
8. After mode2 returns AL0, area-record trailing byte at2e4d+29*area can trigger
   another event-bit test. Conditional RNG paths at3ac89/3acbe use helper1779
   and integer scale200/300, compare ba86 and can set3d6a plus ba84. Full original
   random-encounter trigger/selection remains unverified; do not enable guessed
   random battles from these partial formulas. Then bb51/bb4f snapshot live x/y.
9. The same outer function contains an independently initiated encounter path:
   preparation1662:0066 at3b213; result632e=0 at3b48d; battle1694:0138 at3b494;
   area-loader1927(current area,entryflag0) at3b4a0; helper2521/file34431;
   b9c8=0; result632e==2 tests a termination path. Subsequent resource/group/
   reward-like processing is NOT certified from this bounded audit. This is
   separate from PCS opcode8's caller and proves reusable battle hosting needs
   a return contract shared by two callers.
10. Idle/display work3b70f onward uses indirect callbacks DS964c/9650, timer
    e74a and RNG1779 (e.g.3b918), ending with a jump back3a466 at3b951. Static
    input/action simulation alone cannot preserve whole-game RNG consumption.

This skeleton is deliberately incomplete. Helper names beyond directly traced
roles remain addresses. No claim of naturally observed keys, idle timing,
random encounters or round/step state deltas follows from static calls alone.

## Shared world-step / combat-round clock and timer arrays

The unresolved combat per-round call resident1670:0048(arg1) is the **same
39fd/file3590d** invoked on changed world coordinates above. Fresh exact source
`shared-world-combat-tick-original.bin/.asm` covers3590d..35b02 inclusive.
The overlay-layout entry8 maps stub0048 to body39fd independently of names.
Both actual callers are retained separately: world3a4d0 pushes1 then nearcalls
3590d at3a4d3; combat1694:1c4e/file4b89e calls encoded0118:0048 after pushing1
at4b89c and incrementing roundd54a at4b898. Entry cursor6330 is reset to1 just
before that. `combat-round-shared-tick-call-original.*` and
`world-step-shared-tick-call-original.*` retain these exact instruction ranges.

Instruction-backed behavior:

- Add signed argument n to word3d64 with16-bit wrapping; signed divide by60
  and add quotient to3d66; divide updated3d66 by24 and add quotient to3d68;
  retain signed remainders3d64%60,3d66%24,3d68%360. Naming these minute/hour/day
  is an inference from radix structure, not new UI/runtime verification.
- For p1..4 and q1..5, compute low-word n*100 and subtract it from word
  **99d2+92*p+2*q**, signed-clamping negative difference to0. Relative to party
  record99a6+92*p these are offsets2e,30,32,34,36.
- A nonzero result writes back. Zero result shifts all later slots left by one
  and clears last word99dc+92*p (offset36).
- In the same iteration independently do the same to **a45e+40*p+2*q**. In the
  known actor layout A(i)=a08a+40*i, this is **A(24+p)+16..1e**, party-actor timer
  words. Clear-last address a468+40*p is A(24+p)+1e.
- The loop increments q after compression; it does not revisit the newly shifted
  timer at that q. Preserve this apparent skip quirk unless runtime disproves
  the decoding; do not replace it with conventional remove-and-retry iteration.
- No direct RNG, rendering or external calls appear in this502-byte helper.
  Whole caller execution can still consume RNG elsewhere. Subtraction and signed
  overflow are original word operations, not arbitrary-width saturating math.
  Specifically OR DX,DX follows SUB and clears overflow before JGE: clamp is
  selected from the sign of the wrapped difference. The p loop has no HP test;
  all four party records and corresponding actor timer arrays are processed.

Remaining: compare original DS before/after n1, wrap/carry and multiple expired
slots. Determine meanings of these five timers from consumers without needing
to enumerate spells. Audit caller synchronization between numeric timer words
and actor timers, especially initialization/writeback and world→battle→world.
This helper is a high-value reusable deterministic Rust candidate after targeted
runtime differentials. It is not yet implemented by this audit.

## Already established boundaries to retain

| Dependency | Evidence and present coverage | Critical limitation |
|---|---|---|
| PC geometry | Loader1670:1927/file33837;18PC sizes exactly20+23+w*h*15; raw pairs+0..7, surfaces+8..10, eventkey+11..14 | All consumers/meaning of each field are not exhausted; do not rename every byte by a filename |
| Open movement |1670:0000/file32117..321b4: currentmode3→veto→live candidatemode1→veto→live coordinate add | Full outer-loop bounds/time/redraw/mode2/idle contract above not yet ported |
| State2 door | Forward-only; graphics8 refusal; same two event gates;1662:798c; conditional live-vector commit when3b06=0 | Original nonzero animation settings/scaled sheets and turn/walk transitions not broadly compared |
| Graphics9 |1670:31f7c branch priority only if pairedstate nonzero; currentmode3 then candidatemode1 with **no intermediate veto check**;1662:80d0 guard1/2→73d8→6f18;AL0 despite helper commit | Geometry/FPU/buffer/sky/100viewport details and natural runtime sequence still missing; core clocks unwired |
| State3 movement | Classified distinctly by original32100; renderer state3 has known wall behavior | Navigation branch32310 onward has no complete faithful host; never infer movement from wall rendering |
| PCS dispatch |1689:0000/file43670; zero/specialkey first, generic group arithmetic43851..43886; pending effects must complete | Dedicated service hosts and several opcodes unresolved; no allow-all adapter |
| Opcode11 |44908..44923 setsb9c8=1,veto=1,returnsuccess=1 after area load; eventcleanup redraw07b6 | Native area load limitedPC1/PC2; verify outer mode2 re-entry/loader state lifetime after returning |
| PC1→PC2 | Conditioned original trial: PC1(1,5),facing3 accepted choice→PC2(3,22),facing3; old move veto; graphics9/8197 not entered | Dog/key flags supplied in trial. No earned continuous route or natural stair-animation acceptance |
| Shared perspective compositor |1662:3932 ordered3cdd/43c9/4f55/56e0/58e2 passes; actual resources,200projection/transparent254,bank-aware rectangle/scaling | Four selected arrival facings/door frames match DOS;4000 renderable views are coverage, not4000 DOS matches |

References: `../navigation-20261015/MOVEMENT_BOUNDARY.md` (REA evidence
ev_d63d1a90bd0505cd5d84b242ebbb818c5900f1d29c10456fe6ac180d8d937d03),
`../navigation-events-20261016/EVENT_NAVIGATION.md` (event REA evidence
ev_c3794a031a2c5bc529c07f19cc8fe4ebd4f62a21b404c29be8e378a016dd3f56),
`../navigation-renderer-20261016/stairs/GRAPHICS9_TRANSITION.md`,
`../stairs-runtime-20261016/PC1_TO_PC2_DOS.md`,
`../../NATIVE_GENERAL_RENDERER_CHECKPOINT_20261016.md`,
`../../NATIVE_WALKING_BUILD_CHECKPOINT_20261019.md`.

## Event and rendering integration gaps, prioritized

1. **Battle return and shared time/effect ownership**: compare both encounter
   callers around preparation, battle,8111 writeback, area reloadflag0, palettes,
   resource handles, party timers and event re-entry. Preserve script offset/
   remaining command count; victory alone must not fabricate keyflag2. First
   battle caller remains root's current runtime priority.
2. **Outer world-loop fidelity**: instrument8524/input0ffc/shared39fd/redraw07b6/
   mode2 and idle callbacks. Capture one natural open step, blocked step, turn,
   event-veto and one area change with DS/stack/RNG. Record bb51/bb4f, b9c8,
   bba8,3b03/05/06/07/08,3d5e,3d64/66/68 and live vectors. Native Up/Down and
   quarter-turn policies currently integrate verified inner boundaries, not
   this entire original dispatcher/animation/cadence.
3. **Equipment and item lifetime**: native mode0 acquisition is verified for
   original Sivri Daş pool/party transfer, not general equipment UI. Native
   `otopark_gate.rs` prepares arbitrary opcode9 arguments but its current UI host
   is mode0. Verify original PC1key-event arguments `[05,00,01,00,03,00,00,00,00]`
   before claiming that host handles all acquisition modes. Keyscript group1
   setsflag2 after returned acquisition if stillclear; ownership is not tested
   explicitly in that script. Do not grant key from dogfight or assume transfer.
4. **Remaining event effects near reusable route**: PC2(3,20) group1mode2 uses
   flag82 dialogue and opcode25[09]. Native23 handles only `[01,0f]` selecting
   max party field, not a complete opcode23 host. PC1/PC2 also use10/18/26/27/28.
   Recover only reached handlers as required; table-wide exhaustive event work
   is lower priority than combat/return and first navigation dependencies.
5. **PC2 dedicated keys**: `[31,31,31,29/30/28/27]` route weapon/necessities/
   food/Havalı Mehtap services beforePCS; `[31,31,31,31]` has distinct mode2/
   DS3d5e bit4 behavior. Keep explicit barriers until their mode/state contract
   is known. PC2(4,22) genericgroup0mode1 refusal/veto is original, no reverse
   opcode11 exists in staticPCS2; do not manufacture bidirectional adjacency.
6. **Transition presentation**: state3,graphics9 and8197 are separate control
   paths. Verify natural caller and exact callbacks/scaled rectangles before
   adding a general animation. Current200context source tables cannot stand in
   for100viewport generation/FPU phase. Retain unsupported cases explicitly.
7. **Renderer mutations and resource lifecycle**: generated context includes
   mutable geometries/3b07 and original save/restore quirk (wall helper saves
   byte flags but restores word). Current bounded renderer rejects nonzero high
   flag-byte temporary paths rather than claiming equivalence. Need actual
   loader lifetime/sky/callback/palette comparison across battle and area reload;
   map-wide generation alone does not prove lifecycle correctness. HUD/minimap/
   status, original input hotspots and sound/presentation cadence also remain.

Current native source inspected read-only: `lale-core/src/movement.rs`,
`lale-core/src/events.rs`, `lale-assets/src/pc_map.rs`, `world_events.rs`,
`lale-runtime/src/otopark_gate.rs`. In particular native `arrive` constructs one
mode2machine and its arrival `Finished` branch restores then returns; there is
no demonstrated implementation of the original AL-driven outer re-entry loop.
This is a bounded source mismatch/frontier, not a claim that an accepted native
first-room event is currently broken. Determine actual effect return values
and caller context before changing it.

## Precise next world action

While root continues the live combat trace, query shared39fd through the owned
1670 REA wrapper if further pseudocode helps; fresh original bytes here already
resolve the arithmetic. For original runtime use a new controlled trial, discover
dynamic body from resident stub0048, dump DS before/after n1 and distinct expired
timers, trap return before speech/redraw. Then trace natural outer8524 around
one real movement rather than invoking only0000 on a temporary stack. No tests,
build or new desktop acceptance are claimed for this source-only audit.
