# Door input, frames and guard — static evidence, 2026-10-15

This is new Phase Five evidence. Original files and earlier reports were read
only. It does not establish DOS runtime behavior by itself. The root worker owns
the controlled DOS comparison and destination captures. Initial facing2 is south;
the starting door is north/facing0.

## Actual REA queries

The existing immutable synthetic overlay1662 wrapper was opened with Ghidra12.1.4
in REA's separate ephemeral owned project, four actual function dossiers were
queried, the complete evidence bundle was exported to `rea-evidence.json`, and
the session was closed. No protected GUI project was touched. The wrapper was
never executed. Original overlay body base is file28430; synthetic body base is
40000. Runtime overlay segments can relocate and are not these static addresses.

| Original body / file | Synthetic query | Evidence ID |
|---|---|---|
|1662:798c /2fdbc|4798c|ev_d50e20c04cb8864ba683e8230686ce624f84e75c15fc7a3d895e2f9c354c8273|
|1662:80d0 /30500|480d0|ev_0379ba03ae06481f7492f1de8e85747afb9c8d213a5093e961c6cf1c08fcc0a8|
|1662:73d8 /2f808|473d8|ev_ce81c1b413c90a3c1cb61a66c392f0f5dc6d72dfd8dee03beba2a9cc7b2a5169|
|1662:6f18 /2f348|46f18|ev_4f5855e5a92db6fe8ae04b1bb81956d6615bb21812b8368d6b4b46127b7e5b4d|

Critical claims were checked against original instructions. Ghidra's pseudocode
misassigns segment aliases, some loop variables/arguments, floating-point INT
sequences and relocated immediate words; it is not compilable source.

## Forward input and interaction boundary

Original1670 body0ffc/file32f0c is the world input function; its return is
body182e/file3373e. The no-mouse keyboard branch tests resident0:2e45 at
file3301f, exits if there is no input, then calls resident0:1f3f with argument0
at3302d. That is the original BIOS-word read path. At3303b it tests the low byte;
the zero-low-byte scan branch uses table original1670:186f/file3377f.

Scan48 (Up) targets file3305d/body114d: push current facing, live dy DS:b9c4,
live dx DS:b9c6, then call movement body0000/file31f10 at3307c. On AL success it
sets DS:b9c8=2. Scan4b turns facing+3; scan4d increments facing; scan50 calls
movement with negative forward vectors and facing+2. The ASCII table at
body182f/file3373f admits Escape,2,4,5,6,7,8,9,K,N,S,T (letters either case).
ASCII8 targets33624 and calls the same forward movement at33643. Enter and Space
are absent from this particular world dispatch table. This does not describe
modal dialogue handling or prove a whole-game negative for door-click behavior.

The normal state2 branch file32207..3230d requires requested dx/dy equal live
facing vectors. It clears DS:bba8, calls current-cell mode3, veto-checks, calls
candidate-cell mode1, veto-checks, rereads current-facing selector and passes
selector-1 to original1662 resident stub00bb/body798c. That helper runs inside
this same movement invocation. No second-input wait exists in its own loop.
The state2 branch returns AL1 through32611→321b2 after the helper. It does not
rewrite the map's directional state byte to an ordinary open-state value.

The graphics9 special branch, separate from this door branch, is the sole
direct caller found of resident1662 stub00c0/body80d0: file320a9 passes2 for
paired state1 and passes1 for paired state2. This is where DS:3b06 receives a
nonzero byte. It must not be treated as the normal door-open input path.

## Door frame sequence

Let `j = selector-1`, `G = DS:b458 + 14*j`, `W=DS:3aff`, `H=DS:3b01`.
The starting north selector3 supplies j2. Exact word fields consumed are:

|Field|Meaning in this helper|
|---|---|
|G+0 /b458+14j|destination width|
|G+2 /b45a+14j|destination height|
|G+4 /b45c+14j|destination x|
|G+6 /b45e+14j|destination y|
|G+8 /b460+14j|source frame width|
|G+10 /b462+14j|source frame height|

Frames lie **horizontally**, not vertically: source x=`stage*source_width`, y0.
For j2 the rectangle is DS:b474..b47f, and animated source surface is0x22/34.
The source alias/resource and live numeric rectangle require DOS descriptors or
the corresponding loader evidence; a filename alone does not identify them.

At entry the helper sets up layer buffers41/42 (clear index254, W*H), draws the
view background and layer routines3cdd/43c9/4f55/56e0 into42, sets DS:3b07=1,
draws58e2 into41, clears the door rectangle in41, and copies42 into41. The
DS:6d74 conditional can add a stage3 door image into42 before the animation.
Optional sound uses index DS:9f10[j]+13 if DS:bb38 is nonzero (file300b0..300f7).

DS:3b08!=0 chooses the full stage0,1,2,3 loop at30104..30313. Each stage:

1. Reads low timer word DS:e74a into the local start value (3010c..30115).
2. Invokes generic resident callback descriptor0x40:01e3 (30118); this is not a
   dedicated door input read, but callback effects remain a runtime question.
3. Copies composed42 into41 (3011d..30136).
4. Draws animated source0x20+j to41. North/facing0 is unmirrored.
5. Presents41 through1662:00a8 with arguments41,30,34 (302e9..302f3).
6. Busy-waits until unsigned16 `(DS:e74a-start)>=150` (302f6..30305), increments
   the stage and repeats while stage<4.

Rectangular primitive arguments, in callee order, are source_x,source_y,
source_width,source_height,destination_x,destination_y,source_slot,destination_slot,
callback_offset,callback_segment. Thus the unscaled unmirrored branch30206 uses
`(stage*G8,0,G8,G10,G4,G6,0x20+j,0x41,0x341,0x1e0)`; the mirrored branch uses
callback3c4 and destination_x=`W-G4-G8`. The scaled0c5a branch supplies the same
source rectangle, destination `(G4,G6,G0,G2)`, slots and mirror0/1; mirrored
destination x is `W-G4-G0`. Bit1 of DS:b8d8 selects the scaled primitive.
Facing0/1 are unmirrored. Facing2/3 additionally consult b424+14j before taking
the mirrored loop branch. Raw argument pushes and complete helper bytes remain
in earlier `navigation-20261015/door-helper.asm/.bin`.

DS:3b08==0 skips the timed loop and draws/presents only stage3 at30316..304de.
The wait literal150 is established; wall-clock units are not inferred here.
Each stage's elapsed interval includes callback/drawing/present time, so it is
not an extra fixed150-unit delay after drawing.

After the last stage, file304e1 tests DS:3b06. If zero it adds live DS:b9c6 to
x DS:b9f3, then live DS:b9c4 to y DS:b9f1 with16-bit arithmetic. It returns
immediately after. Thus static source predicts one accepted forward command
animates and commits position when guard0; DOS must confirm the actual event
choices, guard, view and whether additional input is consumed elsewhere.

## DS:3b06 lifetime and related bytes

The helper never sets or clears DS:3b06. Separate1662:80d0 stores its byte
parameter atfile30514; values1/2 call73d8 then6f18; it clears the byte at30560
after those calls and unconditionally again at305c0 before returning. Routine
73d8 itself advances coordinates in its no-animation branch or before
its animated rendering branch. These are distinct special transition consumers.
Area/world initialization explicitly clears3b06 at331e6 and345a1. A literal
whole-original scan found exactly one `A2 06 3B` set, and four `C6 06 06 3B`
zero-write patterns (30560,305c0,331e7,345a2; the latter two follow ES prefixes).
This is a bounded instruction-pattern scan, not exhaustive alias analysis for
indirect writes or save-state restores.

All explicit3b06 references in the existing linear1662 original disassembly are
at files2e90c;2f39f,2f3af,2f3ce,2f3de,2f430,2f443;2f7d0,2f7e0;
2f8ea,2f8fa,2f919,2f929,2f96c;2fc20,2fc62;2fd26,2fd84,2fd94;
304e1;30514,30545,30560,305c0. Most reads select transition direction/viewport
branches; that alone does not name the byte. No persistent "door now open"
meaning is established for this guard.

DS:3b07 is separate: door sets it at2fe37; forward-view animation reads it at
2eae0 and resets it at2ee0b. DS:3b08 is the animation enable byte. These must
not be collapsed into a single door-state flag.

## Remaining DOS obligations

Observe natural world Up input, mode3/mode1 events and any veto/dialogue, guard
before/after helper, four frame surfaces/presents and timer values, final commit,
subsequent main redraw and destination `(2,0)` with facing0. Observe no extra Up
being queued after the first accepted command. Static input tables do not answer
mouse/open-only behavior across all UI contexts. No Rust changes or runtime
behavior acceptance are claimed by this report.
