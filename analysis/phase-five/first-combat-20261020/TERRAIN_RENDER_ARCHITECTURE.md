# Combat setup, terrain and visual resources — 2026-10-20

Additive Phase1 static instruction audit. No live DOS/REA session accessed and no gameplay code changed. Source: original `lale/IST.EXE`; retained [overlay1694 disassembly](../area-fields-20261015/attributes/overlay-1694.asm), [combat main pseudocode](combat-main.pseudo.c), and corresponding root-owned REA evidence. Retained overlay bytes equal original physical `49c50..5741b` exactly: length55244=`0xd7cc`, SHA256 `9a6ad93715f0c2ac748b7d38fba4df20f36cb9d14f65f4af297aa2959046cd20`.

**Correction to the earlier existing-evidence audit:** root resolved encoded call0110:0066 as preparation1662:0066, physical28430; actual battle entry is1694:0138 resolving to1694:b40a, physical5505a. The earlier report deliberately left the stub unresolved. Do not treat its candidate as the combat body.

Coordinates below are original overlay1694 offsets and original file physical addresses; file=`49c50+offset`. Retained objdump physical targets can wrap at a64K boundary: physical4ff9e's displayed40139 actually targets50139 in this overlay. Compute branch targets from original16-bit IP, not displayed linear target.

## Setup call roles

Combat main calls1694:0570 (physical4a1c0),1694:568c (4f2dc), resident status helper, then1694:6345 (4ff95).

- **0570 is visual resource setup.** It loads the panel/tile/actor/wall assets and KOR records, creates buffers and initializes UI hitboxes.
- **568c constructs terrain from original PC cells.** It expands a bounded3×3 exploration-cell window into9×9 tactical regions and applies directional wall/state rules.
- **6345 is party derived-state setup, not a terrain renderer.** It iterates party1..4, calls near helper64f5 (physical50145), then copies current numeric values and derived values into40-byte combat actor records. It must not be skipped merely because a battlefield draws.

## Resource bindings proved by instructions and original strings

Original static DS base physical19200. Strings read directly from original bytes; slots read from push arguments to encoded0148:0020.

|String DS/file|Original string|Loaded slot / instruction evidence|
|---|---|---|
|647f /1f67f|anakes.cmp|1, physical4a1d8..4a1e4|
|648a /1f68a|yericon.cmp|2,4a1e8..4a1f4|
|6496 /1f696|tabletur.cmp|7,4a1f8..4a204|
|6880 /1fa80|palbat.pal|Full256 palette in combat main550cd..550db|
|64a3 /1f6a3|karafa.cmp|Conditional party visual substitute, slots11+i, i0..3|
|64ae /1f6ae|karafa.kor|Companion conditional KOR input|
|64cd /1f6cd|duvarica.cmp|Temporary slot87, then copied to output18 (4a4d1 onward)|
|64eb /1f6eb|duvaricb.cmp|Temporary slot87, then copied to output18 at source displacement50 (4a536 onward)|
|6509 /1f709|duvaric%d.cmp|Per-selector wall member, temporary87, copied to output18 at displacement50*i, i2..5|

0570 allocates image6 at320×200, depth/format argument2 (4a208..4a217). It allocates a0x1f8=504-byte KOR block (4a21a..4a248), seven sets of6×12=72 bytes; party i0..3 populates slots11..14 and KOR at72*i. Party appearance comes from numeric field DS9a44+92*i into the13-byte table DS269b (4a2c9..4a354). The normal body-name/KOR path reuses established loader suffix construction.

Enemy visual loop i4..6 (4a371..4a46b) reads `DS:5bc8+6*i`, takes signed remainder100 and indexes a9-byte creature-name table atDS2185. It appends `.cmp`, loads slot11+i (15..17), and loads companion `.kor` into72*i. The first explicit encounter group value13 atDS5be0 therefore reachesDS21fa=`2185+13*9`, physical1b3fa, containing exact `kopek\0`. This is **instruction-backed binding of group13 to KOPEK visual resources**, beyond a filename hypothesis. Creature stats still require the separate46-byte indexed data table consumed by combat main.

Wall buffer: allocate0x4650=18000 bytes; output image18 dimensions300×60 atDSe32b/e32d (4a49c..4a4d0). Initial A/B resources occupy two50-pixel strips; selector members fill strips2..5. Selector wordsDS9f0c+2*i choose member number, with a first-nonzero fallback. The jump table at original1694:0b70 contains exact offsets09e0,0a02,0a24,0a46,0a68,0a89,0aaa,0acb, one branch per selector1..8. These branches also set per-selector words DS2626+2*i and color bytes DS2624+i. They are actual data consumers; semantic descriptions of each wall class remain incomplete.

The near call at physical4a7ba is original offset7250 (physical50ea0), despite objdump displaying40ea0. That helper begins by writing hitbox rectangles toDSe69d onward (first [2,79,12,86], next [17,79,27,86], next [31,78,40,85]); it is a UI initialization lead, not yet proof of what action each box invokes.

## Terrain ABI: executable differs from manual

**Static proven:** terrain words address `DS:c8ee + 0x38*row + 2*column`, i.e. stride28 words.1694:568c clears row/column0..26, each loop compares `<0x1b` (physical4f2e2..4f313). Thus initialized active extent is27×27, with28-word row stride. Combat main independently clears a separate occupancy array28×28; do not confuse these extents.

The outer PC window loops indices0..2 inclusive in both directions (4ff7b..4ff90). The ordinary fill expands each PC cell to9×9 tactical words: multiplier9 at4f64d/4f659; inner limits9 at4f66f/4f679. This is explicit executable evidence against manual PDF16's12×12-per-region description. Preserve the discrepancy; do not build a36×36 engine from manual prose. Runtime terrain capture is still required to corroborate initial encounter values.

Window origin components are each `max(0,min(map_dimension-3,current_coordinate-1))`, using DSb9eb/b9f3 and DSb9ea/b9f1 respectively (4f35f..4f432). It computes the first PC byte offset `15*(origin_component2*DSb9eb + origin_component1)` and then for each3×3 window cell adds `15*(outer_index*DSb9eb+inner_index)` (4f435..4f4a9). Current minus origin values are retained inDSd554/DSd552 (4f450..4f46b), later used by main for party region placement. This derives terrain from current map context instead of a bespoke first-fight map.

Per-PC-cell loads:

|PC relative byte|Destination|Instruction physical|
|---|---|---|
|0 minus1|DSd53e|4f4ac..4f4d1|
|1|DSd546|4f4d4..4f4f9|
|2 minus1|DSd53c|4f4fc..4f524|
|3|DSd544|4f527..4f54e|
|4 minus1|DSd53a|4f551..4f579|
|5|DSd542|4f57c..4f5a3|
|6 minus1|DSd538|4f5a6..4f5ce|
|7|DSd540|4f5d1..4f5f8|
|9|local-0c, region base fill|4f5fb..4f622|

Terrain default region fill is byte9, unless its top-left terrain word already equals6 (4f625..4f639). Direction selector/state pairs then modify region edges and sometimes whole neighboring regions. Example first directional pair: states1/3 and selector class<9 enter wall logic; selector class8 uses hard terrain6 for boundary/neighbour exclusion; other valid classes write selector_index+10 along an edge (4f67f..4f78b). State2 with class8 uses a fallback selector-derived edge (4f793..4f7df). Analogous logic follows for other directions. Later corner passes inspect neighboring cells and introduce terrain0,4,6,8,9 depending on base byte9, random tests and existing terrain (4fd6f..4ff43). These numeric classes must remain raw until movement and rendering consumers establish meaning. Full transcription of all directional/corner cases remains pending.

Main initial placement rejects occupied squares and terrain>9, terrain8 or terrain6, as seen in fresh root REA pseudocode; validate exact instruction bounds/RNG scaling before implementing random placement. The main also multiplies actor side-region components by9, independently corroborating9-wide regions.

## Party state and renderer follow-up

6345 iterates i1..4 (4ff98..50143). Current record field+3a goes to `DS:a44a+40*i`; current field+38 goes to`DS:a44c+40*i`; ownership/class words are set, and derived23-word records at`DS:9f10+46*i` feed actor fields. The helper64f5 calls physical50478,50712,507c9,50926 and50a9d while constructing derived values; exact equipment effects are not assigned here. The main subsequently places party and enemies in28-slot40-byte actor records; its own renderer/scheduler begins at1694:1b6d. Recovering0570 assets alone does not deliver authentic battle rendering.

Camera helper1694:0c40 /physical4a890 clamps actor coordinates minus3 into0..20 and storesDSd580/DSd57e (through4a96a), a likely7-wide viewport into27 active squares. This is a **static camera-window inference**, not verified screen projection/visible-cell extent. Next inspect1694:1b6d and its actual draw path with live captures; locate original projection, painter ordering, wall transparency, original actor sprite/KOR direction selection and palette lifetime.

All conclusions here are original-byte/static evidence or explicitly labeled inference. No new DOS observations, automated Rust tests, native screen integration or desktop acceptance are claimed. Native combat must stay gated until the model and authentic input/result boundaries are sufficient.
