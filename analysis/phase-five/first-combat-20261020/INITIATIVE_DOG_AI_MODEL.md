# Initiative, scheduler and first-dog AI model — 2026-10-20

Phase1 static evidence only. This subtask reviewed root-produced REA evidence,
retained original1694 assembly and read-only resident data. It did not operate
the live DOS/REA sessions, change Rust or alter historical evidence. Root's
initialized original battle capture must settle actual placement, class/side
state, difficulty byte and RNG before any claim of runtime equivalence.

## Sources and coordinate discipline

Original `lale/IST.EXE` SHA256:
`9ba1640ae2ee33579cb1c914d0686346f53c4c7ef6520c7d92262b9c2f06b05e`.
Logical overlay1694 has file base49c50. Addresses below are hexadecimal file
offsets or explicitly labelled original resident DS offsets. Retained assembly:
`analysis/phase-five/area-fields-20261015/attributes/overlay-1694.asm`.
2103 instruction lines across4b7bd..4bc4b,532b8..5465b and49e52..49ea4
were compared to original bytes; none differed.

Root-created evidence used:

- `initiative-order-rea.json` / `.pseudo.c`, entry1694:1e75, file4bac5..4bc4b,
  evidence`ev_e196c2cb89100243699997dcdab50890eeb11cd2a7b346572acd8dc02053f398`.
- `turn-scheduler-rea.json` / `.pseudo.c`, entry1694:1b6d,
  file4b7bd..4bac4,
  evidence`ev_2c758be2c6e9e52709b020636593e5bc32442bcf6350abfbb4fcaaec130f7161`.
- `enemy-ai-rea.json` / `.pseudo.c`, entry1694:9668,
  file532b8..5465b,
  evidence`ev_b3cddd0c2f4b91f5c18494ee48daf55ad92289b22c243512c7d614bbb0f5673f`.
- `combat-main.pseudo.c`, with original initialization552cd..553cf.

Use signed16 wrapping arithmetic and original RNG scaling. `R(n)` here denotes
the original1779→1242→12df scaled draw with explicit bound n, not an invented
host RNG. Synthetic Ghidra DAT3042 aliases require relocation to original DS;
for example DAT3042_2519 is **DS:bb39**, read by original552d2, not DS:2519.
Near-call text can be wrong by10000 in the adjusted assembly; decode relative
displacements in original overlay coordinates.

## Enemy descriptor13 and reachable subset

Original resident descriptor index13 is DS1287+13*46 = DS14dd,
file1a6dd. Its23 signed little-endian WORDs are:

```
2,3,401,1,0,1,6,3,0,0,-1,0,0,0,0,0,0,0,6,0,0,0,0
```

Raw46 bytes:
`02 00 03 00 91 01 01 00 00 00 01 00 06 00 03 00 00 00 00 00 ff ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 06 00 00 00 00 00 00 00 00 00`.
The shared spell-mask record DS195b+13*35, file1ad22, contains exactly35 ASCII
`0` bytes. This is literal source data, not proof that all later effects are
impossible.

Battle initialization552cd..553cf derives enemy group g's class c=g+4. For
encounter group1 holding descriptor13, class5 is populated as follows, using
`T(c)=DS9f1a+46*c`:

|T offset|Initial value/meaning from consumers|
|---|---|
|00|3 + 2*unsigned_byte(DS:bb39), signed WORD result; base/current initial HP|
|02|401, encoded physical damage|
|04|1 from descriptor, then main increments to2, attack threshold|
|06|0, defender roll/evasion source|
|08|1, physical protection|
|0a|6, movement/action allowance|
|0c|3, primary weapon speed|
|0e|0, secondary weapon speed|
|10|0, current initial Damak/resource|
|12|-1, surrender/AI parameter gate|

The original name/identity connection and encounter count belong to the main
architecture report/runtime capture. This file calls it dog13 only within that
specified encounter. DSbb39's semantic name and actual value remain root runtime
work; do not assume a conventional difficulty or party-level formula.

Actor table is `A(i)=DSa08a+40*i`, indices1..28. Party actors25..28 map classes1..4;
enemy group1 actors1..8 share class5. A+0 is per-actor HP, +2 current resource,
+4 facing, +6 class, +8/+a coordinates, +c remembered opponent, +e side.
Initialized enemy ordinary side2 and party side1 must still be confirmed at
the actual encounter entry. Side1 is the hardcoded opponent sought by this AI.

With actor resource0, the casting-choice branch sets local casting flag0
without a casting-choice RNG draw; an all-zero mask independently corroborates
the absence of normal known spells. Speed3<=100 excludes ranged attack branch.
T12=-1 excludes actual surrender, although the preliminary surrender branch
can still consume RNG before testing that field. Thus ordinary unchanged dog13
behavior reduces to target choice, approach and adjacent physical attack, with
global effects/post-action logic still required.

## Exact initiative procedure

For **every actor1..28**, including empty/dead entries,1e75 sets order[i]=i.
It reads c=A(i)+6, speed=T(c)+0c, evasion=T(c)+06 and does:

```
probe = R(6) + speed + 10 - evasion
if signed(probe) < 0:
    key[i] = 0
else:
    key[i] = R(6) + speed + 10 - evasion
```

Original bound6 appears at4baf9 and4bb5c. The second draw is independent and
is **not clamped again**. Do not collapse the duplicated expression or skip
draws for dead actors. With unchanged dog stats both draws occur and final key
is13+R(6), hence13..18 under the existing nonnegative RNG contract.

It performs repeated adjacent comparisons, swaps only if next key<current key,
and sorts ascending (4bbfb..4bc47). Equal keys retain ascending initial actor
index, a stable tie order. Fast/lower speed tends earlier; higher evasion also
reduces the key, but this is the exact arithmetic, not a general initiative
heuristic. Order is DSd4c0+2*i; temporary keys DSd4fa+2*i.

## Scheduler and actor-turn ownership

1b6d first scans live HP>0 actors into side-presence DS2634/2636. If a side is
absent, returnffff: no side2→632e1, otherwise632e2. Both absent takes the first
branch. It clears the preceding current actor's A+24 marker, initializes the
round order once using6322, then advances cursor6330 through the sorted28.
At round end it increments d54a, invokes original1670:0048 with1, clears global
d54e/d550 and regenerates initiative. The per-round1670 helper is an explicit
unresolved state/time/effect dependency; do not silently omit it.

For each sorted candidate:

- HP<=0: skip.
- A+22>0: decrement that WORD once and skip its turn.
- Otherwise set current actor DSd5de, reset missd55a, load remainingd54c=T(c)+0a.
- Effect21 changes remaining to max(3,remaining−3); effect28 doubles remaining.
  Preserve ordering and16-bit arithmetic.
- Party actor index>24 selects DS2898=i−24. Recenter/update original presentation
  through the existing helpers. Side1 can consume a random speech/message draw
  on party turn entry; this is another RNG dependency beyond initiative.
- Return0 with selected actor and full current allowance. The main host repeatedly
  invokes AI for side2 until allowance exhaustion/termination; AI is not a
  one-action-per-round script.

Main host side2 branch calls9668 and then1b6d; attack/movement helpers determine
whether allowance reaches0. The precise host loop should be preserved directly
from main, rather than allowing players to freely select any party actor.

## Dog AI target selection, exact original quirks

Entry9668 optionally enters a surrender evaluation when DSd54e!=0. It totals
side HP/resources and consumes **two R(150)** draws, then compares their sum+2
against a derived disadvantage value (53418/53439). It tests T12>0 only
afterwards (53471). Dog−1 therefore cannot surrender on this path, but dropping
those draws when d54e!=0 would change all subsequent decisions.

Ordinary evaluation starts at535df only while remainingd54c>0. Read current
coords x/y, remembered target=A(current)+0c, then call0f86 toward that target.
Scan offsets dy=−1..1 outer, dx=−1..1 inner. Valid scan coordinates satisfy
1<=coord<=27; read occupancy DS:c2ce+2*(28*x+y). Count other actors with side1.
HP is not checked in this neighborhood count; occupancy cleanup matters.

Compute retarget threshold C:

|Condition|C|
|---|---|
|Remembered target HP<1 or side2|100|
|Remembered target adjacent in both axes, abs difference<2|5 * adjacent_side1_count|
|Not adjacent; no neighbors; probe d560==0|50|
|Not adjacent; no neighbors; probe d560!=0|5|
|Not adjacent; neighbors present; probe d560==0|90|
|Not adjacent; neighbors present; probe d560!=0|70|

If current A+24!=0 add5. Search for any living side1. If present, consume
R(100)+1 and retarget only if this is<=C. Otherwise keep remembered target,
unless it is dead/side2, in which case choose the first living side1 by index.

When retargeting with neighbors, consume R(100)+1; if it is less than
10*neighbor_count+70 enter special neighbor preference; otherwise choose a
uniform one-based ordinal among all living side1 actors, consuming R(count).
Enumeration is ascending actor index and stops on the chosen ordinal.

**Original stale-neighbor behavior is assembly-confirmed.** The initial scan
leaves local WORD[bp−42] containing the last examined cell's occupant, at
(x+1,y+1) if valid or0. Subsequent nested loops53872..538db do **not** recompute
occupancy: they test that same local's remembered opponent nine times. If it
equals current actor, each attempt consumes R(100)+1, accepting the stale local
when roll<80. If none accepted, select ordinal1 when neighbor_count<=1, else
R(neighbor_count)+1, then again iterate nine times over that same stale local.
It qualifies only if local>current and side1; the first matching iteration count
selects it. If no match, fall back to retaining/repairing old target, not the
uniform-all-party branch. Source53882,53923/53932 explicitly rereads the local.
Do not replace this with nearest-target or corrected adjacent enumeration.

Store selected target back to A(current)+0c (53a91). Resource0 bypasses the
casting decision with zero casting RNG; call0f86 toward selected target again.
Set target-related globals and face toward it by first comparing x, then y.
If abs(dx)<2 and abs(dy)<2, call3f5b with current attacker and selected target,
redraw/wait, call9490 and return. This includes diagonal adjacency. Original
physical helper performs exact allowance/hit/damage checks, not this AI host.

## Approach movement and bounded fallback

For nonadjacent ordinary dog, speed3<=100 excludes ranged branch and goes to
movement5444a. Snapshot position and target coordinates; obtain signed signum
of each delta through0238/file49e88..49ea4. This helper is **signum**, not abs.
Direction numbers and facing are:

|Direction|dx,dy|Facing|
|---|---|---|
|1|0,−1|1|
|2|+1,−1|4|
|3|+1,0|4|
|4|+1,+1|4|
|5|0,+1|3|
|6|−1,+1|2|
|7|−1,0|2|
|8|−1,−1|2|

Attempt initial desired direction. On first failure call0202 with delta−1,
minimum1,maximum8; on next failure call0202 delta+2,minimum1,maximum8.
Thus relative attempts are desired, one direction before, one after.0202
increments then wraps out-of-range directly to the opposite bound, not full
modulo arithmetic. It has no RNG. Each attempt calls2d39 movement,2721 redraw,
wait10 and9490. If d5b8!=0 re-enter535df and recompute targets/approach from live
coordinates; otherwise return after three failed attempts. There is no A*,
distance-field or randomized steering in this recovered branch.

Legality, obstacle/corner handling, actual step/action cost, events/effects and
movement-successd5b8 belong to2d39 and9490. Their new root REA results must
complete this dependency before enabling movement.0f86's probe must also be
recovered because its d560 result changes target probability and other decisions.

## Explicit remaining dependencies / root runtime capture

1. Capture exact native-equivalent initial actor and class tables, DSbb39,
   DSd54e/d550/d54c, target refs, occupancy, RNG and initiative after initialization.
2. Recover2d39/file4c989,9490/file530e0 and0f86/file4abd6.0202/file49e52 and
   signum0238/file49e88 have complete bounded assembly above.
3. Trace per-round1670:0048 and turn-entry random messages; preserve every
   original RNG draw even where a value is overwritten or actor is dead.
4. Compare one distant dog approach, blocked approach with two side alternatives,
   diagonal adjacency attack and post-hit retargeting against original DOS.
5. Verify target0/empty-neighbor record accesses, stale-local behavior and
   side/HP cleanup in actual initialized state. Original loops can reference actor0;
   a safe native representation must preserve its evidenced sentinel contents.

This report narrows dog13 to a reusable source-backed physical AI branch, but
does not certify full AI, runtime parity or the combat milestone as complete.

## Same-session helper continuation

Root subsequently supplied `tactical-movement`, `ai-after-action`,
`line-range-probe` and `cyclic-selector` `.pseudo.c`/`-rea.json` files. This
addendum narrows the preceding unknown-helper frontier without changing the
earlier historical reports. Their evidence IDs respectively are
`ev_eabd52eccda36e73781b1cbe3493d4fe7a7a51498f00876d236e77ce7879ab20`,
`ev_1aaf7a6a006ac265ae6920fc52176a648271f2030193330ad4083a16b99acb5a`,
`ev_881e89fd92e5ca5b50d1837b5fc3ae345e5bcc0b6519b1a91222d43973309a7a`,
`ev_3503780d010d757467b0e793583a227c9ca6344494153045a1a2a11f211fed6f`.

### Shared movement2d39

For ordinary actor control (d57c=0), read original actor coords, set facing,
and clamp candidate x/y independently to0..26. Read terrain at
DS:c8ee+2*(28*x+y) and occupancy at DS:c2ce+2*(28*x+y).
Successful candidate flagd5b8 is set iff signed terrain<10, terrain!=6,
terrain!=8 and occupancy==0 (original4cf2b..4cf4a). No independent diagonal
corner test appears in this body. Occupied opposed destination entered by
side1 calls3f5b and returns without a step (4cf4d..4cf9b); side2 AI instead
attacks through its own explicit adjacency branch.

On a free legal candidate, **decrement allowance exactly1 first** (4cfb6),
before opportunity attacks. It scans all neighbors of the old position. For an
opposed neighbor with status A+22==0 that will be farther than1 in either axis
from destination, setd5a4 override andd5b4 context flag, face toward mover,
call3f5b, redraw and clear override. If the mover is incapacitated, remaining0
and no coordinate commit. Otherwise clear old occupancy, set destination
occupancy, update scroll offsets and live actor coordinates.

Then scan destination neighbors. An opposed, status0 actor newly adjacent
(farther than1 from old position in either axis) can attack with override if
it has no other opposed neighbor besides the mover. The nested test for other
opponents does not check their HP itself; occupancy cleanup remains material.
This is an original engagement/disengagement reaction system, not invented
free attacks. Both old-position and new-position scans can matter for dog
approach and player movement. Respect their source order and globals.

Terrain step-message helper2c7b, effect tests through3f5b, occupancy mutator0c27
and rendering calls remain part of the full action call graph. There is no
direct movement RNG call, but these reaction attacks can consume attack RNG.
At end clear direction/dx/dy globals. Native safe bounds must preserve the
original discrepancy: placement/AI neighborhood can reach27, normal step
clamps to26; do not harmonize these limits silently.

### Probe0f86 and after-action9490

0f86/file4abd6..4ad88 sets clear-line d560=1 and distance d564=1. Equal source/
target returns immediately. Otherwise choose the dominant absolute axis and
iterate from target back toward source using signed100-scaled integer slope;
increment distance per dominant-axis cell. Terrain10..13 blocks and stops the
scan; independently target terrain0 clears line. With a fully clear line,
distance is max(abs(dx),abs(dy))+1, not ordinary Chebyshev distance. The
division/multiply intermediates are signed16 and may wrap; a Bresenham or
floating-point replacement could select different terrain cells. The function
reads terrain rather than occupancy and has no RNG call.

9490/file530e0..532b7 handles two damage-dependent effect flagsd56a/d572 from
3f5b. Under their status/HP predicates it invokes1ace, displays original text,
clears dead actors from occupancy, may zero remaining allowance, then clears
the effect flag. No direct RNG appears in9490, but1ace and presentation callbacks
must be audited before asserting complete no-effect replay. For a controlled
first-dog capture with both effect flags0 it returns without those calls.

The remaining action blockers are now specific: root must runtime-compare
movement, line-cell sampling and reactions, and verify helper0c27/1ace and the
per-round1670:0048 effects. The static normal dog movement model no longer
requires guessed pathfinding, movement costs, obstacle codes or target rules.
