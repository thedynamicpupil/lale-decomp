# Graphics9 transition controls, guards and stairs boundary — 2026-10-16

This new source investigation reuses the four actual REA dossiers in
door-20261015/static/rea-evidence.json and independently checks original
instructions. New original byte slices are retained here. Static recovery does
not establish the actual DOS stairs frame sequence or authorize a native bypass.

## Three distinct paths

1. Ordinary paired-state2 door uses1662:798c. It draws four horizontal-sheet
   stages (or stage3 only) and commits live x/y at the END only when3b06==0.
   The observed initial north door automatically passes through after accepted
   warning/acquisition interaction; no second movement command is needed.
2. Current-cell graphics value9 with nonzero paired state has priority over the
   ordinary state switch at original1670:0000/file31f7c. A forward-only branch
   invokes1662:80d0 with paired-state1→guard2, paired-state2→guard1. It runs
  73d8 then6f18. Here position commits in the FIRST helper BEFORE destination
   composition, while the nonzero guard remains set through both helpers.
3. PCS opcode11 loads its specified area/position/facing, performs its presentation
   and sets the movement veto before returning. Therefore a PC1→PC2 opcode11
   transition can change areas and VETO the old movement. It does not imply
   that graphics9's helper or a second old-coordinate step should also run.

These mechanisms must not be collapsed into a generic stair/door-open flag.
Graphics9 is the executable selector value. A particular staircase/resource
meaning still depends on map fields and actual event routing.

## Event and input order

Original file31fbf..31fe1 requires requested movement dx/dy equal the live
forward vectors. It clears veto bba8, dispatches current-cell mode3, then
computes the candidate using live coordinates/width and dispatches mode1.
In THIS graphics9 branch, no intermediate veto check separates those calls:
the only veto check is after both at32057..32064. This differs from the already
ported ordinary and door boundary's intermediate checks. Event mutations are
not transactional and must not be overwritten with precomputed coordinates.

Only after final veto0 does it reread the current directional paired-state byte
and map1→2 /2→1 at32096..320b3. The graphics9 branch ultimately reaches the
failed-step/AL0 tail at32615, even after helper-side state changes; ordinary
world code subsequently observes the changed state. AL0 is not proof that the
world stayed in place. Unsupported paired states invoke the original error path.

## Guard lifetime and position commit

80d0/file30500 stores its parameter into3b06 at30514, optionally starts sound
index(parameter+20), and for guards1/2 calls73d8 then6f18. It clears3b06 at30560
immediately after those calls, performs conditional sound cleanup, clears it
again at305c0 and returns. Guard0/non1/2 do not call these two helpers.

73d8/file2f808 first checks WORD DS:6d74:

- Zero: x+=live_dx at2f81b..2f822 and y+=live_dy at2f825..2f82c, then return.
- Nonzero: prepare buffers, then execute IDENTICAL commit instructions at
  2f89b..2f8ac, immediately BEFORE3932 composes destination into slot67.

Both preserve16-bit wrapping, use live coordinates/vectors and commit exactly
once.6f18/file2f348 contains no second coordinate commit. Nonzero3b06 would
also suppress a door helper's final commit if such a helper were nested; however,
the73d8/6f18 direct call chains recovered here do NOT directly call798c. No
unobserved nested-door execution is claimed.

## Independent settings and exact source clocks

73d8's animation depends on6d74, while6f18 separately checks BYTE3b08. They are
independent gates. The retained NAV-CORE0 DS has6d74=0 and3b08=1: for that
controlled initialization, graphics9 would immediately commit in phase1 and
still animate phase2. This is a prediction from captured settings and source,
not an observed graphics9 runtime trace or proof of every ordinary startup.

First animated phase computes signed limit=`6d74/2`; if nonzero it computes
integer step=`3000/limit`. It starts index1, records timer low word e74a AFTER
buffer preparation/commit and before entering the loop, and draws while
index<limit. After each callback/draw/present it recalculates:

```
index = 1 + floor(30 * u16(now - initial_stamp) / 1000)
```

The stamp is NOT reset each frame. Indices can repeat when drawing is fast,
or be skipped when drawing is slow. Integer multiply/divide helpers preserve
the full positive product for this elapsed expression. Timer subtraction is
unsigned16 wrapping. The loop finishes with a distinct final composition.

Second animated phase uses limit18 and inclusive index<=18, with the SAME
elapsed formula and a fresh initial stamp at2f45d..2f466 (guard2 branch) or
2f5c0..2f5c9 (guard1). Its geometry step is signed
`((viewport_height/3)*100)/18`. After elapsed600 units index19 ends the loop;
no arbitrary host frame period or extra150-tick wait belongs here. The150
minimum belongs to the ordinary four-stage door loop, a different schedule.
If3b08==0,6f18 calls external1670 stub002f with argument1 and returns.

## Buffers, dimensions and unresolved visual arithmetic

Guard selects source pane x=`(guard-1)*W` within temporary slot81; selected
strip y is148 for guard1 and20 for guard2. NAV DS establishes slot81 width400,
height200, consistent with two current200-wide panes; source code, not a filename,
establishes the pane/strip positions. Buffers65..68 are allocated/freed via
1662:8fd4/9024 bitmasks, each bit selecting slot65+i. Rectangular backup/restore
and key254 masking preserve strip data while the helpers scale old/current
composites and draw source64 through9078 with facing-derived FPU input.

73d8 and6f18 read W=3aff/H=3b01 but contain no direct W/H stores. They scale
subrectangles WITHIN the current viewport. The separate8197/file305c7 routine
does write W/H100 and200, rebuilds temporary buffers and ultimately restores
200. It is not called directly by80d0/73d8/6f18 and should not be attributed to
these stairs phases without a separate caller/runtime connection. Its bytes are
retained as temp-viewport8197.bin for the remaining general transition work.

The animated visual math is not implemented here: Ghidra incorrectly decompiles
Borland INT34..3D floating-point sequences and corrupts variable identities.
Integer scale rectangles,9078 sky phase, exact strip composition, viewport100
tables, complete original bank lifetime and audio need runtime/consumer checks.
The new guarded200-fallback scaler is deliberately insufficient for these larger
transition rectangles; relaxing its guards would not implement the original.

## Bounded native controls

New `lale-core::special_transition` provides source-verified guard mapping,
single live coordinate commit, guard1/2 lifetime across explicit first/second
completion boundaries and the two exact elapsed-counter clocks. It is unwired.
It neither authorizes movement, dispatches events, draws stairs, nor loads PC2.
Callers must satisfy actual forward/event/veto boundaries before entering it.

Three targeted tests pass: guard mapping/single wrapping commit/lifetime, repeat
and skip scheduling with timer wrap/exclusive-vs-inclusive limits, and exact
original commit instruction bytes occurring before destination3932 composition.
This is static/core validation, not a DOS stairs animation acceptance test.

## Concrete next original-runtime checks

At a naturally reached graphics9 forward boundary, capture current/candidate
events, current pairing/selector, veto and area identity. Stop dynamically at
80d0/73d8 and record guard/settings. Capture before/after the73d8 commit and
6f18 entry/return plus guard reset. For visual parity retain each actual scaled
wrapper/core call and final buffer reads; the clocks permit repeated/skipped
indices, so do not assume a fixed18-frame movie. Record9078 FPU arguments and
pane/strip lifetimes. A script's opcode11 return must prove its area/coordinate
change and veto separately, then show that the old helper was not entered.

No emulator process, save, protected GUI project or original file was modified
by this source-only subtask. Existing four REA dossiers were reused while the
modal worker owned the shared REA session; no setup was repeated.
