# Eleven CMP discrepancies — focused continuation, 2026-10-14

All packets are valid and consume the complete compressed payload. Strict Rust/Python decoding preserves the discrepancy as an error. Correct pixel count alone would not prove palette, transparency, orientation or runtime composition.

|Archive/member|Payload offset|Header dimensions|Expected|Decoded|Excess|
|---|---:|---|---:|---:|---:|
|3D.CKD/GOTY0.CMP|243476|680×114|77520|77521|1|
|3D.CKD/GOTY1.CMP|286423|680×114|77520|77521|1|
|3D.CKD/VIEWPC.CMP|1374679|320×200|64000|64001|1|
|IVIR.CKD/ACILISA.CMP|77|320×200|64000|64001|1|
|IVIR.CKD/ACILISB.CMP|45004|320×200|64000|64001|1|
|IVIR.CKD/IREM62.CMP|359988|20×620|12400|12401|1|
|IVIR.CKD/ISTB.CMP|369613|640×100|64000|64001|1|
|IVIR.CKD/RAKS.CMP|553786|320×200|64000|64001|1|
|IVIR.CKD/RPZ.CMP|583201|320×200|64000|64001|1|
|IVIR.CKD/SCW.CMP|1076946|640×86|55040|55360|320|
|SAVAS.CKD/IROSP1.CMP|133728|108×37|3996|3997|1|

Ten cases exceed by one inside the final repeat packet. SCW exceeds by320 and continues through additional packets after reaching its expected size. Original code16b5:043b and the large/EMS decoder bound input traversal by compressed length, not destination pixel count. This supports full packet output, not a footer interpretation.

New cmp-loader-original-focused.asm preserves allocation setup: width/height are multiplied through resident1000:1242 and combined with a one-byte local initialized to1 via arithmetic helper1000:12e6 before allocation. No explicit dimension-plus-one instruction has been established. Allocation granularity/padding and the complete arithmetic-helper ABI must still be traced before declaring these writes safe or a bug.

ACILISA/ACILISB are actual menu dependencies, so this is a real menu-prototype blocker. However KARAKTER and SEMATIK decode exactly and their explicit palette now matches the manual; they provide an independently validated character-screen path. IROSP1 is a body-atlas dependency for appearance13; its discrepancy is distinct from the correctly decoded SIROSP1 face strip.

Possible encoder terminal-run fencepost or destination padding remain hypotheses. SCW’s +320 fits half a640-wide row but does not justify reshaping. No native decoder was loosened, no failures cropped, and no failed-image PNGs were produced. Next: allocator capacity, destination stride/copy extents, compressed-source producer clues and DOSBox memory/render comparison.

Evidence: graphics-batch-20261014.json, graphics-validation-20261014.md, retained SCW full unshaped output; original decoder REA dossiers in ../phase-four/overlay16b5-rea.json, new focused loader assembly in ../phase-four/continuation/cmp-loader-original-focused.asm.
