# Otopark source-sheet inspection — 2026-10-15

```sh
rust-port/target/debug/lale-otopark-background --root .
```

**F10** in the menu/character application opens the same inspector. Escape returns;
Q/window close quits. Standalone defaults to4:3; `--square-pixels` selects320:200.

- Left/Right: choose an original sheet.
- WASD: pan16 source pixels at a time without scaling.
- Home: reset the selected sheet's crop.

Nine original **3D.CKD** sheets use **PAL3D.PAL**: UFUK1, DUVAR2, DUVAR3,
MERDUST, KAPI2, KAPI3, MERDALT, YER2 and TAV2A. These are verified original
PC1/area-loader selections. The title shows exact member, archive offset,
dimensions, selector/field, original image slot and current crop.

All source indices are shown opaquely at1:1. Small sheets are centered; oversized
sheets require panning to see all rows/columns. UFUK1's initial page retains the
previous preview exactly. These inspection choices are separate from original
transparent blits/projection. **This is not a composed room or gameplay.**

The PC parser accounts for all18 banks, row-major15-byte cells, PC1 entry(2,1)
and facing2/forward(0,+1). No collisions, movement, dialogue, item acquisition or
combat run here. The source sheets help compare the walkthrough's brick walls,
floor, ceiling and stairs without inventing room geometry.

The shared compositor and37 generated18-byte projection records remain the next
renderer dependency. New original callback analysis confirms keyed rectangular
copy and horizontal reflection; actual scaled blits, generated geometry and
world viewport state still require recovery/runtime comparison.

Evidence and tests:
[source sheets and original blits](../analysis/phase-five/walkthrough-20261015/otopark/SOURCE_SHEETS_AND_BLITS.md).
Earlier [compositor frontier](../analysis/phase-five/character-ui-20261015/otopark/COMPOSITOR_FRONTIER.md)
remains preserved.

Latest firsthand confirmation: **MERDUST.CMP contains upward-stair visuals** and
**MERDALT.CMP contains downward-stair visuals**. The inspector title now records
those visual directions as user-confirmed. This does not assign elevation changes
to movement-state bytes. See the new [coordinate/event analysis tool](NATIVE_MAP_ANALYSIS.md).

F11 and the new standalone `lale-otopark-room` display a source-composed starting
view; F10 remains this original-sheet browser. See [native increment](NATIVE_PLAYABLE_INCREMENT.md)
for actual room composition and its bounded-view/navigation limits.
