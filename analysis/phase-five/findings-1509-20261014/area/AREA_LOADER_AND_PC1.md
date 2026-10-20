# Area-loader and PC1/Otopark audit — 2026-10-14 15:09 continuation

Authority: newest3:09 section of UpdateablePrompt.txt. Read current first-playable ledger and prior bounded opening findings. This new evidence validates the retained Ghidra lead against original instructions and stored resource bytes. No REA session, Rust source, originals, media, historical/frozen research or GUI project was modified. No game engine or playable room is claimed.

## Initial-area connection

Original main physical0x7f49 stores **DS:bb6b=0**. At0x7f55 it pushes flag1, at0x7f5c it pushes DS:bb6b, and0x7f61 calls original stub1670:002a, previously mapped to actual code1670:1927 /physical**0x33837**. Exact original bytes/assembly are retained as `main-initial-area-call.bin/.asm`.

The collaborator's cinematic trace places this afterSEQ1–5; this task independently confirms the stores/arguments/call, not all preceding cinematic dispatch. Main includes intervening resident call05dc:178e at0x7f50; the area argument is read from the same global subsequently used by the loader. Main's explicit initialization and shared selector establish the intended area0/flag1 initial path, without inventing a disconnected room selection.

## Table and dependency identities: now assembly/data-backed

Original1670:1927 reads its first argument atBP+6, multiplies by29, then pushes far pointer words at original DS:2e31/2e33 into generic loader stub16b5:002f (unrelocated binary encodes segment index0148). Instructions physical0x3387f–0x33896 verify the table stride and pointer order independently of Ghidra.

Each29-byte area record has seven4-byte far pointers and a trailing byte. Twenty contiguous entries precede the strings. The first record at original file**0x1c031** contains:

|Record offset|Original far pointer|Exact bytes/string|Established role|
|---|---|---|---|
|+0|16e0:3075|`pc1`|Loaded map/bank resource through param-area selector|
|+4|16e0:3079|`otoparkIn`|Associated area-name fragment; exact grammar/format consumer not traced here|
|+8,+12,+16,+20|0000:0000|Null|No dependency asserted|
|+24|16e0:3083|`ufuk1.cmp`|Later CMP image load, slot0x4f, using global-area selector|
|+28|byte00|00|Meaning unverified|

Area0 PC1 is **FRPOS.CKD payload0x14f8a (85898),1543bytes**. For global0, format string `pcs%d` atDS:415f receives global+1, resolving **PCS1**, FRPOS payload0x4d,1930bytes. The loader opens and stores that second bank handle. UFUK1.CMP is in3D.CKD, exact source identity/hash in `bounded-resource-identities.json`.

The first map pointer uses function parameter; PCS formatting and horizon lookup use globalDS:bb6b. This is a real difference in the assembly. The initial main path supplies that same global as parameter, tying them together; do not silently assume every possible caller does so.

`area-data-audit.json` retains all20 raw table records/pointers and exact strings. PC1..PC18 exist inFRPOS; table entries18/19 spellPC19/PC20, which are absent inFRPOS. This is not evidence of playable19th/20th areas or permission to substitute assets.

## PC bank layout: independently validated across all18 originals

Atphysical0x338ac–0x338cf the loader maps/obtains the map bank range beginning **20**, length bank-size−20. It then reads the first metadata byte intoDS:b9eb, byte1 intoDS:b9ea and byte2 intoDS:ba86. Atphysical0x3429d–0x342c0 it remaps beginning **43**, length bank-size−43. Thus20bank-header bytes and23metadata bytes precede cell data.

Earlier original1670:0000 /physical0x31f10 independently computes:

```
cell_byte_offset = (DS:b9f1 * DS:b9eb + DS:b9f3) *15
```

and adds2×(direction%4) for a directional-byte access. Other movement-adjacent instructions repeat the15-byte record arithmetic. Therefore the cell width and row-major indexing are code-backed; the remaining record fields' semantic meanings are not all recovered.

**Every one of18 PC members exactly satisfies**:

```
member length =20 +23 +(metadata[0] * metadata[1] *15)
```

PC1 specifically has10×10 cells,100×15=1500grid bytes,43+1500=1543. No unexplained trailing bytes remain. This is exact structural accounting, not a rendered map or completed event parser. All18 sizes/dimensions/hashes are retained in the audit JSON; the complete100 PC1 cell records retain original payload/file offsets and raw15-byte hex.

PC1 metadata23bytes:

```
0a 0a 00 00 02 03 09 03 02 0d 0d 0d 0d 0d 0d 0d
0d 01 01 01 01 00 06
```

For second argument nonzero (initial caller pushes1), instructions0x339cc–0x33a1e assignmetadata[7]−1 toDS:b9f3 andmetadata[8]−1 toDS:b9f1. Combined with the grid formula this gives **zero-based initial cell(x=2,y=1)**. The corresponding15-byte record is included verbatim with source offset in JSON. This establishes grid coordinates, not pixel placement or movement speed.

The conditional block also computes nearby coordinates/orientation-like byteDS:b9f0 and resets other fields; exact world-facing labels remain unassigned pending renderer/turn input validation. No invented north/east labels appear in this report.

## Header-selected graphics and generic room preparation

Loader loops over four metadata selector bytes startingat+3. PC1 values are**0,2,3,9**. It stores them in a four-word selector array and consults original13-byte filename tablesDS:2978,29fa,2a7c. Resulting names includeDUVAR2/3,MERDUST;KAPI2/3,MERDALT;KAPIAN2/3 andBOSCH. Zero selectors produce empty table cells/skipped loads in appropriate branches; exact per-loop conditions are retained in assembly rather than generalized into guessed walls/doors.

This supports a shared data-driven area/graphics loader instead of an independently invented Otopark renderer. It does not yet establish every resource's draw order, perspective, clipping, palette state or animation meaning. PCS1 payload is retained as raw bytes with itsAmBk header; its1910-byte bank body has not been decoded as an event or room-object schema.

## Original assembly versus old Ghidra

Retained `game-init1670-rea.json` correctly identifies stride29 and the initial pointer/map offsets, but it contaminates prototypes with synthetic code/segment values and misleading symbol names such as unrelated `ogret1_cmp` strings. Direct assembly shows exact stack pushes and caller cleanup: generic bank load uses five16-bit words (including far pointer and zero words), not invented gameplay-string arguments. The body's argument2 conditional, metadata byte accesses, two bank map offsets and RETF boundary atphysical0x342fc are now instruction-backed.

`area-loader-1927-original.asm` covers that actual function and a little following code for context; the function ends at0x342fc. `preceding-functions-original.asm` supplies the cell-index consumer. Original overlay source begins0x31f10, size39497; addresses are original physical coordinates, not the wrapper's synthetic4000 segment. No wrapper was executed.

## Reproduction and remaining frontier

`python audit_area_data.py` reads original sources and checks all18 exact lengths, pointer records, PC1 coordinates and cell bytes. New original-member copies PC1/PCS1 preserve complete raw bytes. Hashes identify originals and selected dependencies; no original write occurs.

This bounded investigation upgrades PC1/Otopark from filename lead to original-code/data connection and recovers a reusable grid boundary. It does **not** claim a complete renderer, initial dialogue, Sivri Daş acquisition trigger, inventory transfer, room-exit adjacency, dog encounter or combat transition. Next targets: consume PCS1 with its actual reader; map all15 cell fields and metadata bytes9..22; trace post-loader rendering/event initialization and exact first cell's event dispatch. Keep finalization/gameplay disabled until those behaviors are sufficiently recovered.
