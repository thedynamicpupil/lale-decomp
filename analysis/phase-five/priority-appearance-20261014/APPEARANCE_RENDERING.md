# Original character appearance renderer — 2026-10-14

Authority: `prioritiesandfurtherinstructions.txt`, Priority B. Existing source/report/media evidence was read; source originals, reference media, existing Ghidra projects and prior Phase Three/Four/Five outputs remain unchanged. Parent owns REA; this task did not call it. Native implementation is confined to the **new** `rust-port/crates/lale-runtime/src/character_appearance.rs`. No dependencies, global settings, gameplay formulas or shared menu files were changed.

## Implemented API and boundaries

`CharacterAppearance::load(root: &Path) -> Result<Self, String>` owns original KARAKTER, SEMATIK, PALBAT and sixteen table-selected appearance resource sets. It reads the original 13-byte filename cells from IST.EXE at physical0x19200+DS:269b+13×appearance, not an invented list. `render(appearance: u16, race: u16, sex: u16, pose: u16, face: usize) -> Result<Vec<u8>, String>` returns one complete320×200 PALBAT-indexed framebuffer. `rgba(&[u8])` converts it for the existing frontend. The original palette is also exposed through `pub palette`.

Appearance1..16, race1..8 and sex1..2 use original one-based IDs. Pose1..8 uses original direction normalization; face0..4 indexes resource cells, but current creation caller proves only0..2 for the temporary-expression path. It does not automatically animate, choose an expression, change game data or invent timing.

No dynamic attribute values, names, race/sex text, character-slot-number text or editable game state are supplied. The race/sex **symbol** indicators are rendered from original cells. Attribute **labels are already embedded in KARAKTER**, as previously visually verified; the new compositor preserves them.

## Assembly-backed drawing specification

All addresses below are **original overlay code offsets / original IST.EXE physical offsets**, not synthetic4000 addresses or observed DOS relocation addresses.

- `167c:011f`, physical0x3cd1f: prefix string `s` atDS:48ec concatenated with original appearance-table entry; prefixed image slot0x47, bare body image slot0x0b, KOR companion loaded.
- `167c:02aa`, physical0x3ceaa: opaque32×32 face source(0,0), destination**(68,53)**. The portrait atlas is160×32, five cells.
- `167c:035d`, physical0x3cf5d: restore background rectangle source/destination**(17,53),48×72**, set body anchor**(42,120)**, increment pose and draw via sprite stub. Pose counter subsequently reduced modulo4: visible creation sequence1,2,3,4 repeats. No recording-derived interval was hardcoded.
- Same routine physical0x3cfbb onward: expression phase1 obtains `random(0x8000)%3`, source x=32×result, y0,32×32, destination(68,53); phase2 restores face0; later phase/counter logic owned by parent scheduling analysis. Five available cells are not proof all five occur in this screen.
- `167c:1753`, physical0x3e353: opaque20×20 race cell source x=(race−1)×20,y0 to**(68,88)**; opaque sex cell source x=(sex+7)×20,y0 to**(68,111)**. SEMATIK is200×20, supporting8 race cells plus2 sex cells.
- `1694:0387`, physical0x49fd7: reads six little-endian words per KOR record and chooses normal/mirrored index254-masked callback.
- Normal callback3599:0341 /physical0x280d1 and mirror3599:03c4 /0x28154 skip exactly explicit key254 in this path. Mirroring traverses destination right-to-left while source advances. No index0 transparency is inferred.
- Opaque face/symbol callback3599:02d0 /physical0x28060 writes every source index. Thus face black backgrounds and any index254 in those opaque rectangles remain actual pixels.

Layer output is fresh authentic KARAKTER base, opaque face, masked anchored body, opaque race symbol and opaque sex symbol. A fresh base is equivalent to restoring its body-panel rectangle between separate poses; no unverified retained motion trails are created. These particular rectangles do not conflict geometrically.

## Exact KOR interpretation

Each selected body KOR is72 bytes: six12-byte records. Words are inclusive `(x0,y0,x1,y1,anchor_x,anchor_y)`. Width=x1−x0+1; height=y1−y0+1. For fixed creation anchor(42,120):

- Forward destination x=42−(anchor_x+4−x0).
- Mirrored destination x=42−(x1+4−anchor_x).
- Destination y=120−(anchor_y+8−y0).
- Source remains `(x0,y0)`; source endpoints are inclusive.

Direction normalization, verified by instructions0x4a008–0x4a047:1→record0,2→1,3→2,4→record1 mirrored,5→3,6→4,7→5,8→record4 mirrored. The broader routine also handles pose>=100 as geometry-only/no-draw; that is outside this renderer's requested draw API and rejected rather than guessed.

At0x4a167, negative destination top moves source y downward and reduces height. Implemented exactly. Remaining unsupported out-of-frame geometry is rejected; no general original left/right/bottom clipping behavior is claimed. Every supported original appearance/direction combination fits the verified framebuffer; all selected KOR source rectangles fit their decoded atlas. The routine's returned mutable collision/anchor coordinates are not needed for this static creation rendering API and were not exposed as gameplay logic.

Example INSAN1 record0=(0,1,23,37,11,35):24×37 pixels at(27,78). Direction4 uses record1=(24,1,42,37,34,35),19×37 at(30,78), mirrored. Direction8 uses record4 at(29,77), mirrored. These inclusive extents/anchors are covered by tests.

## Resources and preservation

`appearance-source-records.json` contains every original table index, table file offset, face/body/KOR member spelling and payload offset/hash, raw KOR hex and all six-word records. `source.json` identifies original IST source/hash and raw extraction range. `sprite-0387.asm` is targeted objdump of newly extracted original bytes; `party-layer-calls-original.asm` selects exact retained original physical instructions. No decompiler-only assertion is used for crop arithmetic.

**Appearance13 / IROSP1.CMP remains unsupported:** its valid packet stream emits3997 indices against108×37=3996. `load` retains this as a per-appearance strict-decoder error while allowing the other15 appearances. `render(13,...)` returns the explicit discrepancy and states that full excess output must not be cropped. It does not substitute another body, silently truncate or declare the11 CMP anomalies resolved.

## Validation and comparison

Two targeted Rust tests compiled directly against the existing lale_assets rlib passed (`appearance-tests.log`): original INSAN1 forward/mirrored KOR anchor and index254-mask mapping; complete16-appearance×8-direction corpus with explicit appearance13 failures, exact opaque face/race/sex source strips and invalid resource/state bounds. No existing tests were weakened. Parent will integrate the new module into the standard Cargo targets/tests.

`render-preview.rs` reproduces two complete native320×200 indexed/PPM previews with the new module: appearance1,race1,sex1,pose1,face0 and mirroredpose4,face2. PNGs are inspection conversions of those PPMs; indices are retained. They visibly agree with video64s/manualPDF7 body-grid/portrait/race/sex placement while deliberately omitting unimplemented text and values. These are original-resource composites, not screenshots or invented art. Exact pixel equivalence with H264 capture is not claimed.

`new-output-manifest.json` snapshots generated evidence/code/preview artifacts. Originals and earlier artifacts were opened read-only. Rendering primitives are deterministic; no game mechanics or approximate-video timestamps are embedded.

## Remaining work

Parent integration must choose original state values and recovered scheduling. Character selection text, stats, names and hotkeys remain separate modules. General viewport clipping, expression phase timing, attribute generation, party serialization and gameplay behavior are not established by this appearance task. Phase Four remains incomplete.
