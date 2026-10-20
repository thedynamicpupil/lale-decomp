# PC1 consumer frontier — integration investigation

This new evidence extends the earlier area-loader audit without repeating18-bank structural work. Original overlay1670 and1689 byte copies, physical-address objdump listings and original export/source maps are retained here. Parent owns REA; no REA call, Rust edit or original/historical-artifact modification occurred.

## Verified next routines

-1670:0000 /physical31f10 computes current cell offset `(y*width+x)*15`, accesses direction-indexed bytes at2×(direction%4), and consumes neighboring cells in movement-specific branches.
-1670:2521 /34431 initializes the world display/palette/interface; it is not merely an abstract unknown main-loop label.
-1670:2c69 /34b79 is a repeatedly called world redraw frontier, invoked during initial world display and coordinate-change paths. Exact complete perspective layers remain unresolved.
-1670 physical3ac19..3ac43 computes current cell offset and calls original overlay1689 export0020, actualcode0000 /physical43670, with **mode2**. This is the first concrete generic cell-event dispatcher, not hardcoded Otopark dialogue.
-Original movement branches also call the same dispatcher with mode3 for current cell and mode1 for candidate neighbor, before coordinate changes. Their individual reachable conditions need per-direction input tracing; existence of a general branch is not proof every case occurs on initial movement.
-1689:4e63 /484d3 is the actual PCS bank byte reader: cursorDS:bb98, bank handleDS:e34f, map-range helper2154:0688, increment cursor, returnAL.

## Cell field coverage, deliberately incomplete

|Cell offsets|Instruction-backed use|Remaining limits|
|---|---|---|
|0,2,4,6|Direction-indexed byte at`2*(direction%4)` used by movement/geometry consumer31f10 onward, including selector-table comparison|Exact visual surface/obstruction names and direction conventions require renderer validation|
|1,3,5,7|Adjacent paired directional byte accesses occur in movement-specific branches|Do not assume all are generic door-open flags without tracing their writes|
|8,9,10|Not sufficiently audited in this bounded pass|Unknown; no guessed floor/object semantics|
|11..14|Dispatcher builds decimal two-digit text for each byte; special-case comparison string plus generic event selection|Special keys/shops belong to other cells, not automatically initial room|
|13,14|Compared against metadata bytes39/40; derive PCS group index using signed difference and a32-wide encoding|All remaining wrap/range edge cases unimplemented|

First-cell event key is`01010106` from bytes1,1,1,6. Generic selection computes group5; group0 key`01010101` occurs at grid(2,0), immediately above initial(2,1). The exact targeted scripts and original string decoder are researched in the **new lifecycle followup**: `../../lifecycle-20261014/otopark/OTOPARK_DIALOGUE_AND_ACQUISITION.md`.

No complete15-field schema, collision engine, renderer, event VM or inventory behavior was implemented. This report preserves the integration evidence frontier and directs the next bounded trace rather than declaring a room playable.
