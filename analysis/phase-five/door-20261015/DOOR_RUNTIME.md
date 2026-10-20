# North-door runtime investigation — started 2026-10-15, checkpoint 2026-10-16

Latest user clarification: original doors visibly animate; determine whether a
second movement command is necessary. Earlier evidence is preserved. This report
does **not** certify the experimental native animation or complete M05.

## DOS-observed input and state sequence

Original IST.EXE ran only in owned `runtime/door-20261015/run1/game`, with installed
Linux DOSBox-X, normal core, fixed50000 cycles, dummy video/audio and IRQ5. Owned
GRP.DAT was seeded from original GRPHAZIR.DAT. Debugger control skipped creation
and film, then executed the original reader/area initialization. These are not
end-to-end fresh-party observations. Original load base0824, DS1f04 were observed.

The canonical **R3** experiment explicitly set flag249 (DS:b9e9 bit1) before the
initial mode2 event, suppressing the already-recovered opening dialogue. It did
not set flag1 or bypass the destination's warning/acquisition event. BIOS buffer
injection supplied actual original keyboard words; it did not substitute native
movement logic. Two Left scan4b words turned facing2→1→0, retaining PC1(2,1).

1. One Up scan48 reached current event `(offset180,mode3)` and candidate event
   `(offset30,mode1)` through the original world input/movement path. Raw stacks
   retain the movement return116f and BIOS word4800.
2. The original **evet/hayır** warning appeared while still at(2,1), facing0.
   Key `h` (2368 BIOS word) selected choice1. Original DS:bba8 became1; no door
   helper was reached, and coordinates remained(2,1). `R3-REJECTED.BIN` retains
   this result.
3. A second, independent trial issued one new Up scan48, then `e` (1265) at
   that trial's warning. Choice0/veto0 led to the original stone-suggestion
   dialogue and **Hazine Bulduk** acquisition panel **before the door opened**.
   The line selected party member2 in this prepared party; this is not a fixed
   named-protagonist assignment. Space was supplied during speaker presentation;
   its exact effect on the remaining wait is not certified.
4. Escape (011b) from that acquisition panel reached original1662 stub00bb,
   then current relocated3960:798c. Coordinates were still(2,1), guard3b06=0,
   selector argument2. No item was clicked or transferred by this experiment.
   Esc panel exit is observed; ownership/discard/transfer semantics remain open.
5. At original helper guard body80b1/file304e1, state was still(2,1), guard0.
   Executing its original final instructions reached80cf/file304ff with(2,0),
   facing0. BIOS head and tail were equal at helper entry, precommit and return:
   **no second Up/movement word was queued or consumed to perform this commit.**
6. The caller dispatched the destination compositor, then mode2 on offset30.
   That mode2 script was stopped at entry; dog/battle effects were not observed.

Thus the supported answer is: **one accepted forward attempt carries the party
through after the required event interaction; opening is not a separate command
that requires another Up to commit position in this observed guard0 path.**
Hayır vetoes it. This does not prove every door/stair, mouse interaction, held-key
repeat or nonzero-guard path behaves identically.

## Static source corroboration

[Static findings](static/DOOR_STATIC.md) retain four actual REA dossiers, original
instruction slices, modal keyboard/click handling, guard stores and frame pushes.
World input original1670:0ffc/file32f0c dispatches Up at3305d to movement31f10.
The north state2 path checks forward deltas, graphics!=8 and mode3/mode1 vetoes,
then calls stub00bb with facing selector-1. Modal source accepts case-folded first
letters e/h; mouse hit IDs6/7 return0/1. Enter/Space are not world movement keys.
Opcode1 kind2 compares choice to1 and Hayır executes opcode16, setting the veto.

Original helper stages0..3 read a horizontal sheet. The original slot34 binding
is **KAPIAN3.CMP**, literal at IST file1bca3, directly loaded via the third13-byte
filename table at33e7b..33e9d. It strictly decodes344×119 (40936 original indices).
The projection record at DS:b474 supplies destination86×119 at(58,54), source
frame86×119. Retained source34 calls use source x0,86,172,258 and source y0.
Each iteration stamps DS:e74a and waits unsigned16 elapsed>=150, including its
callback/draw/present cost. DS3b08=0 selects the non-timed stage3 branch. No
recording FPS or arbitrary host duration was substituted.

Guard **3b06 is not a persistent door-open flag**. The door reads it but does
not set/clear it. A separate graphics9 transition body80d0/file30500 stores its
parameter into the guard, invokes its helpers for1/2 and clears it on return.
Area setup also clears it. This is a bounded direct-store audit, not exhaustive
alias/save-restore proof. In R3 the guard snapshots were zero and the memory
watchpoint did not fire. 3b07 and animation enable3b08 remain distinct fields.

## Compositing recovered, candidate deliberately not integrated

Actual new REA records in `compositing-rea.json` corroborate:

- Mask fill0ac6:0908, Evidence
  `ev_61c7034a7df36bae45f4464704e52c1332eee325dc83f4e7bd6cdfccfe96f7e5`.
- Keyed linear copy09d4:004c, Evidence
  `ev_55cf5c92580a9f1df8223ef65ad2438e5cd1fd4a063365ab18d25213633fb708`.
- Slot-copy wrapper0ac6:0615, Evidence
  `ev_9064e3bbb6c358381c9906c431dc9636e3413d21e8ec751269f5ce5259df5752`.

The helper draws into65/66, clears the animated aperture in65 to key254,
key-merges65→66, then copies66→65 before each frame34 draw. Merely overlaying the
strip on the closed-door view leaves incorrect brown door pixels behind it.
Pseudocode loses some bank arguments/loops; original instructions and retained
caller arguments are authoritative. Uncorrected objdump near targets crossing
16-bit IP wrap are not physical-file addresses.

A controlled replay's first frame **matches all40000 original slot65 bytes**
using original decoded assets, exact rectangle/mask/key operations and a bounded
16.16 core candidate. The transient slot64 draw's potential200×113 destination
is overwritten by later resource pixels in every candidate stage; no captured
bitmap is used as a replacement asset. This is not sufficient to certify all
states: the candidate final aperture differs at463/10234 pixels from retained
R3 VGA bytes; the seven-draw destination candidate differs at545/40000 bytes
from the original slot66 readback. Source core fraction, wrapper bank splitting,
complete trace coverage and framebuffer initialization/lifetime remain unresolved.
Those are investigation targets, not proven explanations or permission to patch
pixels. A source64/GOTY lookup additionally found the existing77521-vs77520
discrepancy; no truncation or global decoder relaxation was introduced.

The attempted animated preview **was not promoted**. Its source is retained
under `rust-port/research/door-20261016/`, outside Cargo targets. Existing native
controls/graphics are unchanged. The verified isolated scaler translation lives
in `original_scale.rs` and passes five standalone tests, but is not wired into
the application's renderer. It requires an explicit inherited ESI high-word
fraction and actual contiguous-bank invocation boundaries; defaulting those for
an arbitrary room would be unsupported.

## Capture quality and failed attempts

`capture/` contains117 retained raw files; hashes are in the manifest. R3 state,
event, input and bank-read files precede the later failed instrumentation. Original
bank readback via rect66→screen stops at callback2dbd:0341 and proves source
E000:2750,stride200,200×200; the controlled frame0 read proves slot65 at
E000:0b10 with the same extent. Reads occur before the copy executes.

R1/R2 established initialization but did not complete input tracing; they are not
additional movement observations. Later controlled replays explicitly restored
cell/vector/guard data and entered the original helper on an owned temporary
stack. Relocation made fixed helper breakpoints stale, so the first broad replay
retained primitive stacks but did not bound every stage. Raw calls with source34
return7eb6 prove four stage extents; seven retained destination calls are **not
certified as an exhaustive trace**.

The R3 paint instrumentation included a breakpoint request at3960:7e80, which is
not an instruction boundary. No claim is made that its effect on painting is
known; the R3 open-image comparison remains diagnostic, not visual acceptance.
This does not substitute for the separately observed original guard/store path.
The improved replay reached a valid first-stage boundary and yielded the complete
frame0 bank read. Its later nested-read automation advanced before confirming
all expected stops and ultimately failed with illegal interrupts. Only FR0 and
the preceding valid call captures are used in the comparator. FR1+ pixel reads
are absent/excluded. The owned process was terminated. No original file or
ordinary runtime save was involved. These failures must not be counted as
successful animation/runtime tests.

## Reproduction and exact next step

```
python3 tools/extractors/verify_door_capture.py --root . --output /tmp/NEW-door-check
```

The tool refuses an existing output directory, verifies source call bytes and
event/state assertions, retains candidate indices, and reports unresolved
differences without certifying them. `comparison-20261016/` holds this run.

Next session should start a fresh disposable initialized run and capture valid
stage boundaries through actual current stub/return segments. Wait for each
confirmed stop before issuing the next command; do not queue across RUN. First
capture every scaled **core** invocation (arguments and inherited ESI) in the
background pass. Then obtain all four source65 readbacks without unbalanced
temporary calls, and buffer66 before/after the destination clear and each draw.
Verify all call coverage; the current seven-call list is a lower bound. Only
then connect native animation/destination rendering. Keep the observed warning,
acquisition return and veto gates before enabling real Up movement. Never replace
the unexplained pixels with readback images or guessed geometry.

All owned REA/Ghidra sessions and DOS processes were closed. Protected originals,
GUI project, emulator/configuration, reference media, frozen artifacts and earlier
checkpoints remain untouched. No packages or global settings changed.
