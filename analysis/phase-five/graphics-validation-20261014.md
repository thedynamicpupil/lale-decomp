# Additional graphics validation, 2026-10-14

This new evidence supplements frozen earlier work. Originals were opened read-only. No existing reports, decoder or Rust source were changed. No REA session was accessed. Phase Four is not declared complete.

## Reproduction and bounded outputs

`python tools/extractors/validate_cmp_batch.py` validates all archive directories with the existing parser, audits every CMP packet, and generates a bounded selection using the existing strict decoder. It refuses to replace the batch directory. For a later repeat, select a new batch directory in a copy of this script; retain this evidence unchanged. The existing compiled Rust inspector independently renders the eight selected images, and all eight RGB outputs match Python byte-for-byte. This agreement confirms implementation consistency, not original runtime behavior. New outputs are in `extracted/phase-five/batch-graphics-20261014/`, with raw indices, six-bit palette, original-size PNG, Rust PPM and exact provenance per member.

Detailed results: `graphics-batch-20261014.json`. Every CMP has archive/member hashes, payload offset, packet count, dimensions, decoded count and row-crossing counts. Failure records additionally retain final packets and the first packet reaching the declared size, with both payload-relative and original file offsets.

## Verified packet results

262 CMP members: **251 exact**, **11 dimension mismatches**, no truncated packets, and no unparsed trailing bytes. Counts by archive: 3D 54, IKON 94, IVIR 48, SAVAS 66; the other four containers have no CMP-named members. Their absence does not classify other member types.

| Archive | Member | Source payload offset | Dimensions | Decoded indices | Excess |
|---|---|---:|---:|---:|---:|
|3D|GOTY0.CMP|243476|680×114|77521|1|
|3D|GOTY1.CMP|286423|680×114|77521|1|
|3D|VIEWPC.CMP|1374679|320×200|64001|1|
|IVIR|ACILISA.CMP|77|320×200|64001|1|
|IVIR|ACILISB.CMP|45004|320×200|64001|1|
|IVIR|IREM62.CMP|359988|20×620|12401|1|
|IVIR|ISTB.CMP|369613|640×100|64001|1|
|IVIR|RAKS.CMP|553786|320×200|64001|1|
|IVIR|RPZ.CMP|583201|320×200|64001|1|
|IVIR|SCW.CMP|1076946|640×86|55360|320|
|SAVAS|IROSP1.CMP|133728|108×37|3997|1|

All ten +1 cases reach/overshoot the declared pixel count in the final repeat packet. Therefore these are not separately parseable trailing packets or an extra complete scanline. Encoder fencepost behavior or deliberately oversized terminal runs are hypotheses; runtime allocation and copy limits must establish the correct handling. No mismatched images were cropped, rendered or accepted by the strict decoder.

SCW differs: expected 55040 pixels, reached inside repeat packet at payload offset 15459 (original 1092405), which ends at 55111 pixels. Two further repeat packets at 15461 and 15463 produce 55360 total. This is precisely 173×320, or 86.5×640, but that arithmetic does not establish an alternative dimension interpretation. It requires caller/destination-stride evidence. The header remains 640×86. No guessed reshape was applied.

Packets cross declared row boundaries in many resources (counts recorded). The encoding is a continuous output stream, rather than necessarily one packet sequence per row. No generic row-marker interpretation has been introduced.

## Visual observations and semantic hypotheses

The new bounded original-size selection is:

- IKON0 200×200: solid reddish image; role unknown.
- IKON10 200×200: armed character portrait on magenta background.
- IKON100 200×200: landscape/boat scene.
- SAVAS AYI 145×41: multiple bear poses arranged horizontally.
- SAVAS LALE 148×53: multiple human poses arranged horizontally.
- SAVAS DUVARIC1 50×60: brick wall/block.
- SAVAS TABLETUR 266×58: gray framed panel.
- SAVAS YERICON 650×40: terrain blocks and symbols arranged horizontally.

These visual observations support portraits/scenes in IKON and sprite/tile/UI resources in SAVAS. They do not prove all resources are icons or establish combat behavior. Adjacent poses suggest animation frames, but exact frame boundaries, sequences and timing are unverified. Magenta background suggests a transparency key, but no transparency was applied; preservation previews display every decoded palette index.

IKON contains 94 CMP and 94 same-basename PAL members. SAVAS contains 66 CMP and one PAL (`PALBAT.PAL`). All selected images use these candidate associations, with six-bit RGB expansion `(v<<2)|(v>>4)`. Runtime palette binding/channel calibration still needs executable call-site verification. Filename associations alone are not proof. Existing successful examples IKON1 and AFAKAN use the same strict packet rules; this batch confirms those rules apply exactly to 251 members, not universally.

## Dependency-list comparison

New `graphics-dependencies-20261014.json` preserves raw RES/BAK hex, source offsets and extracted filename references. SAVAS.RES at 208063 and SAVAS.BAK at 209597 contain the same reference set; neither references an absent member. The two bytes of size difference do not establish different assets. SAVDEM.RES at 211133 references absent DUVARIC0.CMP while DUVARIC1 through DUVARICB are present. This may be stale/demo/build data; do not invent or substitute DUVARIC0. List membership is observed; runtime use of these lists is not established.

## Limits and next targets

No new DOSBox runtime observation was available. Confirm palette selection and transparency in actual draw calls, recover KOR structures and frame rectangles, trace the exceptional CMP terminal-run behavior and SCW destination geometry, and determine whether resource lists are consumed at runtime. No game mechanics were implemented and no playable engine work began.

Additional SCW preservation: `batch-graphics-20261014/IVIR-SCW-unshaped/decoded-unshaped.bin` retains all 55,360 indices without shaping or cropping. Its companion JSON preserves every packet and both original and payload-relative offsets. All eleven dimension failures are packet-valid through the end of their compressed payload, so none is classified as a malformed/truncated packet stream. Parent assembly analysis reports that the original decoder loop is bounded by compressed-input length rather than declared pixel count; these failures must consequently remain visible as full decoded lengths, pending caller allocation/copy analysis. That executable finding belongs to the parent's assembly evidence, not an independent executable verification by this batch tool.
