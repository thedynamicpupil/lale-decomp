# Original combat entry and one player step — 2026-10-20

This report owns the runtime chronology behind the static
[combat execution model](COMBAT_EXECUTION_MODEL.md). It establishes genuine
original combat initialization, initial presentation and one player movement.
It does not establish a won/lost fight, runtime AI parity, or native combat.

## Preservation and conditioning

Fresh20-file runtime copy: runtime/first-combat-20261020/run1/game. Each copied
file was checked against its original; only this new owned GRP was seeded from
original GRPHAZIR.DAT. [Copy manifest](runtime-copy-manifest.json). No original
save, emulator/config, Ghidra GUI project, reference media or prior runtime file
was modified. Only this owned game directory was mounted.

Installed Linux DOSBox-X2026.10.01 used normal/fixed50000, IRQ5, dummy SDL/audio,
controlled.conf, -defaultdir, -defaultmapper, -savedir and -time-limit3600. An
initial process lacking the full launch flags was stopped at initial0824:0000
before RUN and excluded. Successful run's PTY handle was52907; it was terminated
with Ctrl-C after the bounded trial. **No live original DOS session remains.**

At menu0e00:133e the debugger command spelling BPDEL* and CR terminators were
established. An earlier batch using unsupported BPDALL/newline terminators
reported unrecognized commands; no accepted game-state result is assigned to
that batch. The successful command log explicitly records each memory/register
write and each breakpoint. Subsequent commands use uppercase plus CR.

BIOS Enter reached original0d6a:059c. Creation was explicitly skipped by setting
AX1/IP05a1; original party reader then ran until0d6a:063c. Film was skipped by
IP0641; original area initialization returned at0d6a:0706. At that stop DS1f04,
SS2dac, SP0f74, BP0fea were observed. Only flag249 was set (DSb9e9=02), to skip
the independently recovered opening dialogue. Main reached0824:2e45 with
SP0f3c/BP0f72/SIde2e/DI8700, AXc100/BXde26/CX1f2c/DX0.

To investigate the original destination event independently of the already
recovered door/acquisition sequence, world x2/y0/facing0 was established directly.
Original1662:006b derived facing vectors. Controlled calls used unused SS:0c00
with a trapped unique return0d6a:0706; that sentinel instruction never executed
on the temporary stack. Original1689:0020 then received cell-offset30h and mode2.

This is a **conditioned dispatcher→combat trial**, not normal creation→film→
acquisition→door→battle completion. No Sivri Daş transfer/equipping occurred here.
Dog/key flags1/2 stayed clear; flag249 was the only deliberate event-flag change.
Party numbers, dates/RNG and placements reflect this one original trial.

## Entry and data

Original mode2 script executed its illustration/warning/preparation path and
stopped at resident stub1eb8:0138. Before resolution its five bytes were
CD3F0AB400. Running to the same breakpoint let the original overlay manager
load it; bytes became EA0AB4AF2E, dispatching to2eaf:b40a. Original static
1694:b40a maps to physical5505a.1662:0066/physical28430 is preparation, not this
combat main. Preserve this distinction from old synthetic func26686 leads.

COMBAT-PRE-DS proves group words DS5be0=13,5be2=1; remaining two pairs are zero.
DSbb39=0. Creature template13 is23 words atDS14dd:
[2,3,401,1,0,1,6,3,0,0,-1,0,0,0,0,0,0,0,6,0,0,0,0].
The indexed name cell DS21fa is kopek. The original initializer constructs
class5's derived state at9f1a+46*5:
[3,401,2,0,1,6,3,0,0,-1,0,0,0,0,0,0,0,6,0,0,0,0,0].
These are raw words; their consumers, signs and aliases are in the source reports.

Original main reached first player-input boundary2eaf:bff4, a POP CX immediately
before universal polling boundarybff5 (push1) /bff7 (call0824:1f3f). At capture:
CS2eaf,IPbff4,DS1f04,SS2dac,SP0b3a,BP0baa, AX002d,BX0b24,CX002d,DX0.

The28-slot,40-byte actor array contains positive-HP actors1 and25..28:

|Actor|HP|resource|facing|class|coordinate pair|side|
|---|---:|---:|---:|---:|---|---:|
|1|3|0|3|5|(9,7)|2|
|25|6|81|1|1|(15,2)|1|
|26|6|110|1|2|(13,1)|1|
|27|5|101|1|3|(10,6)|1|
|28|3|196|1|4|(9,0)|1|

Current actor25, remaining allowance10, round0, order cursor1, result0. The
retained sorted order's live entries are25(key2),26(key4),28(key4),27(key6),
then1(key18). This corroborates stable ties for this trial, not fixed turn order.

## Authentic screen and descriptor boundary

[Initial original screen](capture/BATTLE-INPUT0.png) is an inspection rendering
of the actual64000-byte image6 plus live768-byte palette. The palette matches
original SAVAS/PALBAT.PAL **all768 bytes**. The indexed pixels retain the original
party, current-turn highlight, terrain, walls, action panel and Turkish status.
Some actors are outside the current7×7 camera; do not invent an all-party view.
No extracted screenshot is an authorized native runtime asset.

Descriptor i has widthDSe29b+8*i,heightDSe29d+8*i and handle pointer at
DSe29f/e2a1+8*i. Width/height precede that pointer; treating pointer+4/+6 as this
image's dimensions reads the NEXT descriptor. This initial misinterpretation was
resolved against original resident allocator filecf8a and fresh2721 instructions.
Image6 width320,height200, handle1f04:db29, whose9-byte memory descriptor resolves
to direct pixel storage6acc:0004,lengthfa00. These dynamic allocation addresses
are capture provenance only. Do not hardcode them into native allocation.

The retained full resident DS, original live relocated overlay, stack, framebuffer,
palette and EMS window are under [capture/](capture/), with
[capture hashes](capture-sha256.json). Raw live overlay relocations differ from
original on-disk descriptor indices and must not be compared as identical bytes.

## Player Down step

BIOS key word5000 was injected into an otherwise empty normalized keyboard queue.
The real main input route reached movement2eaf:2d39. Before-helper and after-action
full DS states were retained. Breakpointbff5 stopped the returned main input loop.

- Current actor remained25.
- Its coordinates changed(15,2)→(15,3), facing1→3.
- Allowance10→9; successful-step wordDSd5b8 became1.
- Destination terrain was4 with empty occupancy before moving.
- HP/resources stayed intact; dog/key flags were not set.
- RNG7bdd5bcd→29de7772 is exactly one shared original LCG advance between helper
  entry and completed action.2d39 has no direct RNG instruction; presentation/
  message/effect consumers in its caller remain relevant to total draw order.

This confirms a genuine player-controlled step in the DOS game. It is not native
movement validation, and it does not establish all obstacle/opportunity cases.

## Tab continuation excluded from completed results

After the Down capture, BIOS Tab0f09 reached the real scheduler2eaf:1b6d. A
TAB-SCHEDULER-BEFORE-DS capture is retained. The bounded continuation did not
produce a confirmed bff5/sentinel stop. A terminal F5 diagnostic produced no
confirmed debugger stop either. The owned emulator was then terminated; **no
post-Tab turn, AI, victory or defeat result is claimed**. Do not diagnose the
original game/emulator as broken from this instrumented incomplete route.

Next trial should break on the next actor store/selection before presentation,
then resolve the exact continuation/overlay return addresses and voices. Do not
reuse historical PTY52907 or enqueue commands assuming it remains paused.

## Exact next original-runtime work

Create a new owned run/copy; preserve run1 captures. Repeat the documented startup
boundaries. Break universally at2eaf:bff5 only after confirming the dynamically
loaded1694 base; bff4 is conditional. To validate turn selection/AI, trap scheduler
actor store before speech/render and the AI9668 entry, rather than assuming the
post-action segment stays unchanged. Capture source/target actor, allowance,
RNG and full DS before/after actual AI moves and physical3f5b attacks. Compare
bare-hand and actual equipped item2, including misses/zero damage and cost equality.
Then capture true victory/defeat→8111→opcode8 return with full party/world deltas.

Phase1 architecture is documented; these runtime comparisons, UI completeness,
terrain/render differential and native phases remain pending. No native auto-win,
flag grant, invented reward, enemy heuristic or fabricated combat result was added.
