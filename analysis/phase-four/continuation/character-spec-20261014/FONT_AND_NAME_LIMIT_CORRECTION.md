# Font and name-limit correction addendum — 2026-10-14

This supersedes the font-resource interpretation and unknown maximum-name discussion in [CHARACTER_INPUT_AND_RNG_SPEC.md](CHARACTER_INPUT_AND_RNG_SPEC.md). That earlier report remains unchanged for provenance. Its original byte observations, width115, key behavior, casing maps and RNG findings stand; its interpretation of a diagnostic filename as an opened font resource was incorrect.

## Corrected font provenance

DS:8f65 is the source diagnostic literal `T:ALTDUZEY\GRTEXT.L`, passed with line number0xa9 to resident19d4:0a81. Parent REA tracing establishes this is a memory lock, not opening a font file. DS:de26 is its lock/semaphore state. Helper19d4:0bb4 obtains a mapped memory pointer from handle DS:e2b7 at glyph-index×143; it does not seek a DOS resource file. The original disassembly `width.asm` confirms the actual call arguments, but the operation names require that independently traced callee evidence.

Original main physical0x7c5d..0x7c6a pushes image slot3, DS:394b=`deneyx.cmp`, mode1 and calls16b5:0020. Next loads GOCUK.CMP into slot4 and IREM6.CMP into slot5. Parent follows image slot3 to DS:e2b7. The actual proportional font resource is **IVIR.CKD/DENEYX.CMP**, ordinal12, payload237403, size3374. Strict decoding yields13×1000 and13000 indices. No palette or fabricated glyph substitution is needed to determine stored width bytes. `font-correction-evidence.json` retains original archive/member hashes, decoded-index hash and first-byte measurements.

Each proportional glyph occupies11 sheet rows, stride13; its metadata first byte is therefore at decoded offset143×glyph_index. The name width helper uses `first_byte+2` as advance. Parent traced renderer16da:0b43 uses `first_byte+1` as drawn width and11 as height, with source row11×glyph_index; the one-unit difference is spacing, not contradictory width evidence. Parent also traced recoloring of source indexff only. These render-callee observations belong to the parent's REA evidence; this subtask independently verified original renderer dispatch bytes in `renderer-font-original.asm`.

## Effective name length

The original font resolves the earlier uncertainty about the rendered-width limit. The `-` cursor advance is8. All proportional glyphs reachable through this width routine have advance at least5; uppercase/special fixed glyphs have advance20; fallback/space contributes3. Thus the smallest possible retained input advance is3. With n input bytes plus cursor, the checked helper result is at least `3*n+8−1`. Limit115 permits at most36 bytes, and36 spaces attain115. A37th space is rejected at118. There is no explicit byte-count guard, but the verified original font and width rule impose an **effective36-input-byte bound**, rather than an arbitrary36-character validation rule.

Examples from the actual sheet: `i` advance5 permits21 repeated bytes (21×5+7=112;22→117 rejected); `m` advance14 permits7 (105;8→119 rejected); cursor `-` advance8. The37-byte serialized field supports36 bytes plus final NUL. During editing, cursor and NUL can temporarily require38 bytes for36 retained inputs. A rejected candidate can require one additional temporary position. Therefore the serialized field length alone still does not prove the editor's allocated writable capacity or safe transient layout. Do not emulate unchecked writes in Rust; maintain a safe temporary editing buffer and serialize the accepted original bytes.

These are assembly/data-derived predictions, not direct DOSBox boundary observations. Generalize only with the original font and arithmetic; arbitrary replacement font metrics could invalidate the inferred36-byte cap.

## Exact special renderer mapping

Original CS table16da:0db2, physical0x5dd72, has14 input codes and14 target words (raw table and mappings in JSON):

|Input byte hex|Renderer action|
|---|---|
|0a,b6|Newline branch16da:0cb4|
|80|Separate uppercase atlas glyph26|
|81|DENEYX glyph75|
|87|DENEYX glyph70|
|8d|DENEYX glyph72|
|94|DENEYX glyph73|
|98|Separate uppercase atlas glyph27|
|99|Separate uppercase atlas glyph28|
|9a|Separate uppercase atlas glyph30|
|9e|Separate uppercase atlas glyph29|
|9f|DENEYX glyph74|
|a6|DENEYX glyph69|
|a7|DENEYX glyph71|

The menu's relevant encoded bytes87,8d,9f resolve respectively to source rows770,792,814, drawn widths7,4,7 and advances8,5,8. Space has no glyph copy and advances3. Full dispatch should preserve original bytes; assigning Unicode characters requires the parent font/text encoding mapping. Name measurement and rendering have distinct special tables: the12-entry measurement table treats some uppercase-special inputs as advance20, whereas the14-entry renderer additionally recognizes newline codes. Do not merge the tables.

No original files, earlier reports or Rust modules were changed in this correction. Strict font decoding reused the preserved decoder without modification; no system packages, live REA session or runtime execution was required.
