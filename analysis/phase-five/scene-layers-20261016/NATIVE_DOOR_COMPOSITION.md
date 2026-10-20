# Original door frame composition in native Rust — 2026-10-16

`scene_door.rs` composes the original four door stages from original assets and
the general native five-layer command generator. All four fresh controlled DOS
readbacks match **40000/40000 indexed pixels** each. Fixture images are used
only by tests; production does not load captured frames or per-cell draw lists.
This is asset/presentation support,not a movement/event bypass or desktop test.

## Source geometry

Original1662:37ee/file2bc1e..2bd61 reads the animated sheet width/4 and its
height,then derives destination dimensions through16-bit signed products and
division using the saved entry view dimensions. It centers x inside generated
record23 and bottom-aligns y to that record:

`x=record23.x+(record23.width-destination_width)/2`

`y=record23.y+record23.height-destination_height`

Native `DoorGeometry::from_sheet_200` preserves the actual fixed200 branch and
low-word arithmetic. KAPIAN3's original344×119 sheet produces source/destination
86×119 at(58,54). The original captured DS:b474 record independently contains
`86,119,58,54,86,119,0`. This is an integer consumer of original generated
record23,not a guessed crop coordinate. The new exact source slice is
`door-geometry-37ee.bin/.asm`.

## Source composition

Original798c builds the first four3932 passes into buffer66 and current-cell
58e2 into buffer65 at the **same** current map cell/facing. It clears the door
aperture in65 to254,then key-merges65 into66. It subsequently copies that base
66 into65 for each stage and overlays the selected horizontal animation frame.
Native `commands_layers_200` exposes the original contiguous pass ranges without
altering the full compositor API. Context effects remain ordered.

The optional source branch controlled by word DS:6d74!=0 draws stage3 into the
base before the four-stage loop. It remains an explicit caller input. The clean
captured run's `NV4-READ1-DS.BIN` has DS:6d74=0,DS:3b08=1,DS:b8d8=0;the exact
pixel comparison therefore uses `pre_stage3=false`. No broad default or user
animation preference is inferred. The production module preserves the optional
branch but its nonzero case is not newly runtime-verified.

The source slot is32+(current forward selector-1);initial north selector3 gives
animated slot34. These original bindings are resolved from the executable tables
through`image_bindings`. Resources absent from an unused table binding are not
loaded merely to render this path. Key254 remains transparent. Original3b07=1
is retained after composition as in798c;the later transition consumer owns its
clearing lifetime.

## Verified boundary and remaining work

`tests/scene_door.rs` constructs a fresh native200 context,loads actual original
CMP members,and compares each resulting frame byte-for-byte with
`DOOR-FRAME0..3.indices`. `door-composition-validation.json` records source and
fixture hashes. The existing117-call/fresh11-call generator tests and five
layer tests continue to pass. No protected original,old checkpoint or GUI Ghidra
project was modified.

The module rejects the separately unverified scaled-door-sheet branch. The
four-stage unscaled source branch and its original directional reflection
selection are implemented;the fresh pixel acceptance covers PC1(2,1),facing0.
Timing,world event choices/vetoes,DS:3b06 and eventual live coordinate commit
remain the parent-owned navigation integration. The exact destination(2,0)
renderer is independently available;frames never hardcode that destination into
the current-cell door background.
