# Ordinary movement/event boundary — 2026-10-15

This bounded increment follows the user's confirmation that the starting-room
facings look correct. That accepts native facing visuals, separately from original
turn input/timing, fresh creation checks and movement. Earlier checkpoints remain
unchanged. Phase Four and the first-playable path remain incomplete.

## Original evidence

The read-only original PC1 bank has initial coordinates(2,1), facing2. Its four
directional pairs are `[3,2],[2,1],[2,1],[2,1]`; metadata slots1..4 contain
`0,2,3,9`. Original movement1670:0000 (physical31f10) therefore selects the
state2 branch north and ordinary blocked state1 on the other three sides. There
is no initial ordinary state0 exit. This follows raw bank bytes and consumers;
it is not a fresh original keyboard observation or a complete reachability proof.

Fresh actual REA/Ghidra queries used the existing separate, immutable static
wrappers, never the protected GUI project. Full inline results are retained in
`rea-evidence.json`:

- Movement synthetic40000, original1670 body0000/file31f10:
  `ev_d63d1a90bd0505cd5d84b242ebbb818c5900f1d29c10456fe6ac180d8d937d03`.
- Door synthetic4798c, original1662 body798c/file2fdbc, reached through original
  resident1662 stub00bb:
  `ev_c8be6e337b0e468772f04617da86f70114b1402c650daa81fec9a8f83ea6c1ad`.

Both owned sessions were closed. These are synthetic static-analysis addresses,
not runtime overlay segments. Pseudocode has incorrect DS aliases, incomplete
arguments and floating-point interrupt artifacts. Original instruction bytes
remain authoritative; neither wrapper was executed.

## Ordinary branch implemented

Original31f7c/31fb6 gives graphics value9 priority only when paired state is
nonzero. Otherwise32100 selects state0 open,2 door,3 animated; other byte values
return failure. A selector is a live table index, not an image identity.

Original32117..321b4 performs this exact ordinary path:

1. Clear word DS:bba8.
2. Dispatch `(current_cell_byte_offset, mode3)` at32128.
3. If bba8 is nonzero, clear word DS:b9c8 and return AL0.
4. Read live width/coordinates, compute the requested candidate byte offset, and
   dispatch mode1 at32170.
5. If bba8 is nonzero, clear b9c8 and return AL0.
6. Read live x/y again, add original requested dx/dy words, return AL1.

The original arithmetic retains the low16 bits of multiplication/addition.
It supplies no host memory bounds check. Event handlers may change coordinates,
width or the area; the candidate must not be cached before mode3, and committing
must not overwrite mode1's state changes with a cached destination. No extra
veto clear occurs between the two events. The broader meaning of b9c8 remains
unassigned.

`lale-core::movement` implements that explicit event boundary and branch
classifier independently of SDL/assets. A required fallible dispatcher prevents
unknown events being silently treated as allow. Errors propagate without the
requested movement commit; event mutations already performed remain. This host
error policy is explicit infrastructure, not a claimed original error branch.
Blocked source branches clear b9c8. Door/animated/special branches return an
explicit unsupported-transition result without mutating state.

The `PcMap::movement_branch` read-only adapter resolves loader slots1..4 and
accepts a caller-supplied live selector0 word. Unknown slot0/unsupported selector
entries remain unresolved. This is deliberately conservative, including open
pairs where a known raw selector word has not been supplied. It does not assume
the observed zero word is immutable. Raw direction outside0..3 is rejected by
the existing resource API; the original argument consumer uses its low byte%4.

## Starting door frontier

The initial north state2 path at32207..3230d requires requested delta to match
the live facing vector and the facing selector's graphics value to differ from8.
It runs current mode3 and candidate mode1 with veto checks, rereads the original
cell's current-facing selector after events and passes selector-1 to stub00bb.
This cannot be replaced with ordinary open movement.

The stub-to-body association is retained in the earlier unmodified
`character-ui-20261015/otopark/overlay1662-source-map.json`: stub-relative187
(00bb), body31116(798c), original physical196028(2fdbc).
`door-helper.bin` is the exact original range2fdbc..30500 exclusive;
`door-helper.asm` is its i8086 disassembly. Objdump near-call labels crossing
16-bit IP wrap are not valid physical-file targets; resolve their offset modulo
65536 and add the overlay base. Interrupt3b/35/3d are Borland floating-point
emulation, not guessed BIOS/host operations.

The helper builds intermediate layer buffers, draws original resources and has
timed animation branches. Its final304e1..304fb tests byte DS:3b06. Only if zero
does it add live DS:b9c6 to x and DS:b9c4 to y. This proves a conditional commit,
not the flag's full lifecycle or an unconditional successful coordinate update.
The native implementation intentionally does not execute this helper yet.

The candidate north cell(2,0) has event01010101/group0, already structurally linked
to the outside choice, acquisition item2 and encounter preparation. This is a
static association. Event conditions, accept/cancel transfer, runtime veto and
actual dog identity are not newly established here.

## Validation and limits

Offline formatting, workspace build and95 test executions pass, including eight
new tests. New coverage checks original PC1 classification, raw source slices and
critical instruction bytes, current/candidate veto short-circuiting, nonzero
word vetoes, event failure, live mutations, unsupported transition separation
and low-word arithmetic. Existing full original four-facing viewport comparisons
remain passing. `checks/` retains build/format/test logs.

No fresh DOS runtime capture, graphical behavior change, walking, door animation,
event VM, inventory mutation or desktop movement validation is claimed. Existing
native controls and the runnable menu→creation→film→turnable room are preserved.
No emulator launch, package install or system setting change was needed.

Next: trace the north door helper's DS3b06 lifecycle and actual event/animation
sequence on a disposable original runtime. Capture destination(2,0)'s view and
recover the layer/scaling consumers needed to render it. Retain mode1 choice/item
vetoes before permitting a coordinate commit. The ordinary movement core is a
reusable verified subsystem, not a substitute for those missing consumers.
