# ACILISA/B complete streams and explicit addressable framebuffer views

This new evidence follows parent original-assembly verification of the menu renderer's actual source reads. It does **not** resolve the eleven strict CMP dimension discrepancies, repair a CMP, change the strict decoder, or discard overflow evidence.

## Original evidence retained

Both IVIR.CKD members declare320×200 but packet decoding emits64001 indices. Full streams are retained under `extracted/phase-five/batch-menu-addressable-20261014/{ACILISA,ACILISB}/full-decoded-indices.bin`. Both additional indices at output offset64000 are **0**, preserved separately in `beyond-addressable-indices.bin`. Provenance JSON contains every packet with compressed payload-relative/original-file offsets and output extents, input/member/archive hashes and complete decoded hashes. No packets or decoded bytes are omitted from this evidence.

- ACILISA payload offset77; final decoded64001.
- ACILISB payload offset45004; final decoded64001.
- Explicit shared palette ACILISA.PAL; offset and hashes recorded in provenance.

Each directory additionally contains **addressable-framebuffer-320x200.bin** and **addressable-framebuffer-view.png**. These are deliberately named **rectangular source-read views of the original renderer's nominal320×200 addressable extent**, derived only after parent assembly established those reads. They are neither strict decoder success nor replacement decoded assets. Full decoded data and overflow remain authoritative evidence. The images use RGB six-bit palette expansion and do not apply guessed masking.

Parent authority: original menu loads A into nominal320×200 storage; source operations read nominal width×height rectangles. Two B-source320×50 strip transitions use byte offsets0 and16000; subsequently full B destination imagery is used. Parent retains exact instruction evidence and lookup-table interpretation separately. This view models those source reads; it does not prove original heap allocation capacity or safety of the64001st write.

## Quantitative A/B relationship

`analysis/phase-five/menu-addressable-comparison-20261014.json` records per-row changed-index counts and horizontal bounds across the explicit64000-index rectangle.

|Source rows|Byte range|Changed A/B indices|Meaning observed visually|
|---|---|---:|---|
|0–49|0–15999|10556|Upper İstanbul Efsaneleri logo over same artwork|
|50–99|16000–31999|3886|Birinci Bölüm /Lale Savaşçıları title over same artwork|
|100–199|32000–63999|0|Identical remaining artwork; menu choices absent from both|

Total14442 differing indices. Changed rows extend1 through97. Top strip changed columns span3..314; second strip8..308. Rows0,51–53,67–69,98–99 have no changed pixels; remaining rows100–199 are entirely identical. This strongly agrees with the two source-strip transitions: upper logo first, central title second. It also disproves treating B as a completely different underlying background.

## Comparison with actual unannotated recording

Previously retained reference frames are full capture frames under `analysis/phase-five/reference-validation-20261014/`:

-41.00/42.00s show only illustrated background, with41s still dimmer. A's addressable view matches the orange left/blue right figures, central green face and black lower area.
-46.00s shows upper logo over that background but no central title. It matches the appearance produced by replacing the first source strip with B while retaining A below; no synthetic composite was produced to assert pixel-exact equivalence.
-49.00s shows both logo and central title, no interactive options. B's addressable view matches this content.
-49.75s contains the four options below, absent in both A/B, confirming they require a separate rendering operation.

The annotated screenshot's green/purple outlines identify these same regions, but those outlines are not in source resources or unannotated frames. Capture scaling, H264 color conversion/chroma subsampling and fade state prevent direct palette-exact screenshot equivalence; this comparison verifies visual content/order, not exact video RGB or internal timing.

## Remaining discrepancy and fidelity limits

The terminal extra0 is still emitted by both streams, and the original compressed-input-bounded decoder appears to write it. The nominal copy rectangle explains why it is not visibly part of the menu; it does not establish allocation/padding behavior or authorize generic truncation of all CMPs. Preserve this as separate decoding, destination-capacity and rendering-extent questions.

Parent now identifies the RIX32640-byte table as256-choose-2 blending lookup rather than a font. That supports a transition mechanism, but no blend values, loops or timing were guessed in these static views. Actual transition implementation, counter/wait values and font/options drawing remain parent assembly tasks.
