# PC1 starting-cell four-facing compositor — 2026-10-15

## Scope and acceptance

The user accepted the preceding native PC1(2,1),facing2 perspective and facing
side on Fedora. That RGB view is preserved exactly. This increment adds only
three more facings and instantaneous native Left/Right turns at that same cell.
New desktop acceptance is pending. This is not general movement or a renderer
for arbitrary original cells.

## Original execution and provenance

The installed Linux DOSBox-X executed original IST.EXE only inside disposable
`runtime/turning-20261015/run1/game`. Its configuration is retained here. No
protected emulator/config, original asset or ordinary runtime/lale save was
written. Fixed50000 cycles/normal core, dummy SDL/audio. Prepared original
GRPHAZIR was already seeded as GRP in the owned copy. Debugger control skipped
creation and film, then executed the original reader, initialization, area
loader and first compositor. This is not an original end-to-end completion test.

Original main boundaries: menu0e00:133e → creation-call0d6a:059c; controlled
AX=1/IP05a1 → reader/film boundary063c; controlledIP0641 → loader return0706.
Breaking at resident renderer stub1e86:0070 located its current original jump
to357e:3932. The actual segment is an observation, never a stable overlay ABI.
Original1662:0000 corresponds to file28430h. The unmodified compositor at3932
calls its five original layers and returns at3968.

The first real view's42 blitter stacks match the earlier facing2 capture through
all ten rectangular arguments and return address. For remaining facings the
emulated DS:b9f0 byte was explicitly set to0,1,3. Original1662:0235 then executed
and stopped at its RETF02a7; IP was directed to3932 with the original compositor
stack restored. The original code generated every draw, without native field
assumptions. These are **controlled original draw traces**, not recorded physical
turn-key input. Position was(2,1) throughout. Capture order2→0→1→3.

At blitter entry12ea:0430/0c5a,64-byte stack dumps preserve raw little-endian
return address and arguments. The compositor-return breakpoint bounds each
stream. `commands.json` indexes calls by facing and ordinal; `capture/` retains
ENTRY/END DS, stack/stub, raw calls and framebuffer readback. The source executable
hash, runtime/physical addresses and counts are in `manifest.json`; raw hashes
are in `capture-hashes.json`.

| Facing | Original forward vector | Rectangles | Scaled calls | Visible native composition |
|---|---|---:|---:|---|
|0|(0,-1)|9|5|Door ahead|
|1|(1,0)|30|7|Door at left edge|
|2|(0,+1)|39|3|Accepted stone wall|
|3|(-1,0)|16|8|Door at right edge|

A fresh actual REA/Ghidra query of the existing owned static wrapper at40235
returned `ev_d551feadba2c3f2d69c06934c5b9b6893c3422718309f4757504a90385108ad1`.
`direction-rea.json` retains it. Original instructions28665..286d7 corroborate
mod4 and the DS:b9c4/b9c6 vector stores. Synthetic pseudocode DS aliases are not
used as source addresses. The owned session was closed; GUI project untouched.
All captured DS states retain byte-identical37×18 projection records versus the
previous generated-table fixture. Tests verify coordinates, facing, vectors,
original far-call bytes, raw arguments and exact slot aliases for every stream.

## Direct original viewport readback

After composition a controlled call to the **original** rectangular blitter
copied source descriptor66 to screen descriptor0. The emulated temporary stack
atSS:0e00 contained return357e:3968 plus arguments:
`0,0,200,200,0,0,66,0,0341,2dbd`.
It stopped before callback2dbd:0341. Raw PIX*-STK proves mapped source
E000:2750, width/height/stride200 and destinationA000:0000/stride320/key254.
Exactly40000 bytes were dumped before this copy executed. This uses the original
bank mapping consumer, not an assumed interpretation of its handle pointer.

PIX3 followed the initial2→0→1→3 draw sequence; PIX0/1/2 followed controlled
re-composition0→1→2 and the same original readback. Tests compare all opaque
pixels individually and all40000 indexed bytes for each facing during native
quarter-turn cycles. No claim is made about original HUD/full-screen equality.

Three final-row bytes(194..196,199) contain254 in retained DOS readbacks. In
facing3 one additional pixel is left untouched by its draw list and retains
prior opaque bank contents. Native turns preserve those contents, rather than
clearing the viewport. The inspection canvas still shows the three key pixels
as black; the original destination background/HUD is outside this increment.

## Native implementation and limits

`otopark_room.rs` shares one exact rectangle/reflection implementation and a
fixed-cell `StartingCell` orientation state. Original sources25 DUVAR2,27 MERDUST,
30 KAPI3,37/47 YER2,38 YER4A,39/49/54 YER5,52 YER1,57/61 TAV2A,63 TAV2B and79
UFUK1 are resolved via existing loader literals and captured descriptor aliases.
No asset edits, substitute graphics or generic wall geometry are introduced.

All23 scaled calls are omitted **only after per-view/per-call proof** that later
opaque original rectangles overwrite the entire possible destination. Every
native load recomputes this coverage proof and rejects failure. This is not a
scaling implementation and cannot be extended to other cells without evidence.

Left/Right select adjacent clockwise orientations modulo4. The original vectors
establish orientation order. Host keys/repeat cadence and instantaneous turns
are native interface choices; original physical bindings, turn animation and
elapsed timing were not validated. Up/Down do nothing. Escape returns, Q quits.
F11, normal creation→SEQ→room and --native-party all reuse this same state/view.
`lale-otopark-room --facing 0..3` supports standalone smoke/inspection and safe
new-file PPM export. Original creation, cinematic and audio code is unchanged.

## Visual reference and checks

[Four native views](checks/four-facings.png) were visually inspected. Existing
[cached recording1 at00:15](../walkthrough-20261015/visual-index/video-1/target-000015.000.png)
shows the same facing2 wall/ceiling/floor structure with original HUD/compass.
The recordings were not processed again. Video similarity supports visual
orientation only; original binary calls/readback establish the new pixels.

Offline format/build pass without warnings;87 test executions pass. New tests
cover117-call provenance/state/projection/aliases, opaque-occlusion guards,
original viewport pixels, both four-turn cycles, opposite turns, ignored Up and
invalid facing rejection. SDL dummy smoke passes all four standalone facings
and the prepared-party→room application entry. The prior960×600 facing2 PNG is
byte-equivalent in RGB to a nearest-neighbor3× current320×200 export; recorded
in checks/accepted-facing2-regression.txt. Logs are under checks/.

Next: obtain Fedora turning feedback, then extend original cell/layer dispatch
and verified movement/collision/door/stair behavior using existing area consumers.
Preserve event vetoes for later Sivri Daş/encounters. General scaler, HUD, movement,
inventory, dialogue execution, encounters and combat remain unimplemented.
