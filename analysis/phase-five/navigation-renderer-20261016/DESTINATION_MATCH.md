# Complete north-door destination compositor — 2026-10-16

New observations supersede only the stated pixel-comparison gaps in the previous
north-door checkpoint. Original files and earlier evidence were not changed.

## Original runtime observations

Installed DOSBox-X, owned runtime/door-20261015/run1/game copy, normal core,
fixed50000 cycles/dummyvideo/audio/IRQ5. Initialized original reader/area loader;
creation/film skipped, initial dialogue flag249 set. Render trials explicitly
set PC1(2,1),facing0,forward(0,-1), guard0 and animation-enable1, then invoked
original1662 stub00bb on an owned temporary stack with selector2. These are
controlled renderer observations, not additional natural event/input trials.

NAV-CORE0..9 are ten actual resident2599:0018 core-call stacks; NAV-WRAP0..9
retain their0ac6:0c5a caller frames. NAV-NODES captures128 original18-byte EMS
allocation nodes. Each actual debugger EV reported ESI=8700h (highword0).
The initial core-debugger-output.json is an empty retention attempt: do not cite
it as raw EV evidence. The binary arguments and node table are retained intact.

NV2 stopped at valid original1662:7ec3 after each stage, not a mid-instruction
breakpoint. Its post-presentation EMS dump is NOT a full image mapping: the
subsequent compass draw remaps EMS pages. NV3 at original01e0 similarly stops
after the viewport copy, whose final bank chunk may leave a partial mapping.
Neither raw EMS dump is a certified contiguous frame65 image.

NV4 used a bounded original0ac6:0430 read of slot65,200x200, stopping before
callback2599:0341 executes. All four callback stacks prove source E000:0b10,
width/height/stride200. The mapped40000-byte images are DOOR-FRAME0..3.indices.
The original call was allowed to return to357e:01e0; the interrupted SP0dd8 and
BP0dec were restored before each next frame. All three subsequent stops were
confirmed individually. No illegal interrupt/crash occurred in this replay.
The previous source candidate differs0,63,257,463 bytes across stages0..3.
Those are real current comparison failures, not presumed bad old VGA captures.

## Complete destination and previously omitted primitive

A separate controlled render set PC1(2,0),facing0. It called original0ac6:16dc
with(slot66,count40000,key254), matching original327b8..327d6, then1662:0070
with destination66. All0430,0c5a AND0f21 entries were trapped until the synthetic
return at0824:2e45. NV5-DRAW00..10 and matchingCODE dumps retain all11 calls:
7 rectangles and4 widening floor/ceiling strips through0ac6:0f21. Earlier7-call
traces omitted the0f21 boundary, rather than an unexplained eighth rectangle.

The destination read uses the same original0430/0341 technique, with source66
E000:2750,width/height/stride200. Original rawEMS, callback arguments and the
extracted DESTINATION.indices are retained. Native original-resource replay
including all four clipped strips matches **all40000 destination indices**.
No captured image is used as a native replacement asset and no pixels are patched.

## Rust implementation at this checkpoint

New lale-assets modules translate original3471/35ff geometry,3969 wall selection,
3cdd far pass,43c9 depth2 pass,4f55 depth1 pass,56e0 side pass,0f21 row callbacks,
original literal-table/alias resource binding and a bounded200x200 context. The
fixed projection is the exact37x18 original generated output, checked against
all four DS captures; other sizes/FPU generator and KOR sidecars are not claimed.
PC1 andPC2 selected walls/doors have no KOR sidecars in original3D.CKD.

The production native starting-room path now uses the shared indexed rectangle
primitive and original resource-table resolver; its four-facing pixel tests pass.
General scene command assembly/integration, fifth pass58e2 and complete door
background/animation comparisons remain in progress. Walking remains disabled.
Core event control flow now preserves choice/flag skips,vetoes and unsupported
external operations; it is not a completed dialogue/inventory/combat host.

Run cargo test --offline -p lale-assets --test scene_destination from rust-port.
The2 tests verify original source callsites, all40000 destination bytes and the
native fixed context's projection/coordinate words. Other new tests cover layer
calls,original resource aliases and event gates. Continue toward native scene
integration and actual PC1/PC2 DOS view comparisons; this objective is incomplete.
