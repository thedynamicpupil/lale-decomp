# Graphics recovery checkpoint

CMP packets have u16 little-endian width/height followed by a compressed stream. A control byte <=128 copies that many literals (zero is permitted); >128 repeats the next byte control−128 times. The original decoder at physical0x59d4b bounds traversal by compressed input length, not declared pixel count. Small-buffer and EMS-window paths share packet rules; their full rendering behavior is not reconstructed.

Independent Python and native Rust corpus checks cover all262 CMP members:251 exactly produce width×height indices;11 have valid packets but excess decoded indices. Ten exceed by one final-repeat pixel; SCW exceeds by320, with more packets after the expected size is reached. Strict extraction rejects these discrepancies rather than silently cropping. SCW's full unshaped stream and packet boundaries are retained for investigation.

Initial examples: IKON1.CMP, IKON.CKD physical payload0x98a,200×200, paired IKON1.PAL; AFAKAN.CMP, SAVAS.CKD payload0x4d,86×19, candidate shared PALBAT.PAL. The user visually confirmed both previews; no DOSBox side-by-side validation has occurred. Eight additional previews cover IKON0/10/100 and SAVAS AYI, LALE, DUVARIC1, TABLETUR2, YERICON6. Python PNG and Rust PPM RGB outputs match exactly. Original indices and palettes are retained; no transparency is applied.

The palette uploader at resident analysis1c7fc (original physical0xebfc) writes VGA ports3c6/3c8/3c9 and waits on3da. Preview expansion `(v<<2)|(v>>4)` is a display convention, not runtime calibration. Shared palette assignment outside explicit caller references remains a hypothesis.

Decoded content disproves an icons-only interpretation of IKON: it contains portraits and scenery too. SAVAS contains apparent pose strips, walls, terrain/symbols and UI; this supports mixed graphics usage, not a proven combat-only role. Animation sequencing and combat behavior require executable callers/runtime evidence.

Evidence: [batch report](phase-five/graphics-validation-20261014.md), [batch JSON](phase-five/graphics-batch-20261014.json), [literal dependency correction](phase-five/graphics-dependency-literal-addendum-20261014.md). Original-size outputs are under extracted/phase-five/batch-graphics-20261014. Transparency keys, blitting/clipping, palette changes, timing and the11 size discrepancies remain open.
