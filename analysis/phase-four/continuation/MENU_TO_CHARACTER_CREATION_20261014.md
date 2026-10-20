# Main menu to character creation — 2026-10-14

Phase Four is still incomplete. This is a static instruction-backed path, cross-checked with the original manual and user-reported DOSBox observations. The two user screenshots were described in duringphase4and5.txt but were not available as separate workspace image files; their pixels were not directly compared. No screenshot dimensions are treated as a video mode.

## Concrete call path

1. Main at original IST.EXE physical0x7861 (Ghidra1546:0001) calls original resident stub relative1682:002a. The overlay table resolves this to code1682:054d, original physical0x3faed. The analysis load base0x1000 is synthetic, not an observed DOS load address.
2. The menu routine copies four literal labels from original data DS:4d01,4d16,4d2a,4d3d: Yeni oyuna başla; Eski oyuna devam et; Çabuk başla; DOS'a çık. Original encoded bytes and physical positions are retained in character-menu-data-bytes.json. Turkish display decoding is supported by the user label observations; the font/glyph mapping still needs recovery.
3. It calls resident selector analysis15dc:1133 (linear16ef3, original physical0x92f3). The selector renders text through function pointers, checks BIOS keyboard and mouse state, moves selection with scan48/50, confirms scan1c, and cancels scan01. Menu selection is held at original DS:d5dc. Continue selection2 includes a load-game check before returning; full save restoration is not reconstructed.
4. At main1546:057b, source0x7ddb, the menu CALLF returns a word. Original DEC/range-check/CS-relative switch maps value1 to main1546:059c, physical0x7dfc. There it calls resident stub relative167c:0057. Descriptor/export bytes resolve that stub to actual overlay code167c:1aa2, original physical0x3e6a2.
5. Character creation returns0 when canceled from slot1 and1 after completing slot4. Main checks AX at1546:05a1/05a3 and returns to the menu if zero. Success proceeds through loading grp.dat via167c stub004d (actual1932), intro/demo helper1682 stub0025, then initialization/loop targets in1670. Complete playable loop semantics are still unknown.

The main switch intervention remains documented in switch-byte-evidence.json and main-switch-override.json. Original-byte calls, not the misleading merged pseudocode, establish this path.

## Character-screen initialization and input

Original physical0x3e6c7 names PALBAT.PAL; calls16b5 stub002a. Physical0x3e6d5 names SEMATIK.CMP into image slot0x45, and0x3e6e5 names KARAKTER.CMP into slot1. The routine allocates64000 bytes and sets buffer dimensions320×200 at0x3e714/0x3e720. These are offscreen-buffer facts; they do not establish every intro mode or user screenshot capture size.

It copies the background slot1 to buffer6, then runs helpers for initial defaults, appearance, values, name and symbol cells. Each iteration restores selected background rectangles before drawing dynamic content. A timer-linked animation update restores body/face rectangles and redraws them. Presentation, fades and exact timer units remain partially understood.

Original0x3ebe6 calls resident1000:1f3f; the wrapper uses INT16 status/read. At0x3ebec SAR AX,8 extracts the BIOS scan code. Mouse poll1c7f:026b follows, then the stored scan is captured locally. The poll routine updates cursor/buttons; its analyzed body does not write the scan global.

|Scan code|Observed branch|Manual agreement|
|---|---|---|
|4d /4b|Increment/decrement appearance1..16; reload face/body resources|Numpad6/4|
|48 /50|Change race1..8; regenerate values and suggested appearance|Numpad8/2|
|2e|Change sex1..2; regenerate values and symbols|Manual says numpad5; code tests C scan2e, unresolved discrepancy|
|1c|Regenerate values|Enter|
|0f|Open name editor16da stub004d (code0000), then redraw name|Manual says numpad0; code tests Tab scan0f, unresolved discrepancy|
|39|Advance if name nonempty; after slot4 serialize party and return success|Space|
|01|Previous character; from slot1 return canceled|Esc|

Standard scan labels are an interpretation of BIOS codes; actual keyboard behavior has not been exercised here. Mouse hit regions provide corresponding operations. The sex branch and naming discrepancy should be tested in DOSBox before choosing native mappings. Race/appearance bounds helper1694:0202 and name editor16da:0000 are next targets.

## Evidence and limits

- character167c-rea.json: entry ev_84b9a1256ff147cc6c77d0a3819847cbc00eb70da78ceae20617e536ea367e8d plus11 helper dossiers.
- menu-selector-blit-resident-rea.json: selector ev_2d578c8b87dace6d835a35953f0316fe7c3e60d6381a2d4faa9ae22c723c0f43.
- character-input-poll-rea.json: poll ev_8e84805acd401bee8e1eef28c5be2bbaf1308e2c40a0a39fe1adb813e0e3d7ca.
- character-original-focused.asm starts disassembly at known function boundaries. The earlier whole-overlay linear listing can misalign after embedded tables and must not override focused boundary evidence.

Derived overlay code is shown at analysisCS4000; original loaded addresses vary. All derived artifacts have provenance. RNG formulas, the complete character editor ABI, callbacks, font rendering and end-to-end execution remain unverified.
