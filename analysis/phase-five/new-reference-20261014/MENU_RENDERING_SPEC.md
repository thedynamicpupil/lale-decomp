# Main-menu rendering and interaction specification — 2026-10-14

This extends earlier reports. Original logical overlay segments identify code, not actual DOS placement. Resident Ghidra linear coordinates assume analysis load base1000. Synthetic overlay CS4000 appears only in REA evidence. Original physical offsets are retained below. Phase Four remains incomplete.

## Runtime reference, separate from implementation proof

Exactly two supplied files were found and inspected: annotated menu_context.png and a73.53s startup recording. No standalone unannotated screenshot was present; full unannotated video frames were used instead. The colored outlines identify presentation regions and are not game graphics. Recording640×360/60fps and resized DOSBox window are capture properties, not original video timing or mode.

Recorded order: RAKS → SILICON3D → Compuphiliacs → Turkish disclaimer → background (~40.25–42s) → upper logo (~45.25–45.75s) → episode title (~48.25–48.75s) → simultaneous menu choices (absent49.50,present49.75). Menu darkens around62s, black around63s, character screen brightens63.30–64s. Precise event bounds remain sampled estimates. See ../reference-validation-20261014/REFERENCE_MEDIA_FINDINGS.md and runtime-observations.json.

## Resource identity and rendering extents

|Original member|Archive / payload offset|Code-established role|
|---|---|---|
|ACILISA.CMP|IVIR /77|320×200 background artwork|
|ACILISB.CMP|IVIR /45004|Same artwork plus upper logo and episode title; no menu choices|
|ACILISA.PAL|IVIR /44171|Explicit palette for main menu|
|XDINTRO.RIX|IVIR /1343298|32640-byte unordered palette-index pair blend table|
|DENEYX.CMP|IVIR /237403|13×1000 glyph sheet, image slot3|
|KARAKTER.CMP|IVIR /493154|Character background, slot1|
|PALBAT.PAL|SAVAS /207230|Explicit character-screen palette|

A/B each emit64001 indices, including terminal0. Complete streams remain retained. The original menu reads nominal320×200 source extents; two320×50 transition strips begin at offsets0 and16000. A/B differ10556 indices in rows0–49,3886 in50–99, and zero in100–199. Thus upper logo and episode title are regions in B, not proven standalone files. The visible background region, first strip, second strip and text are separate operations; no screenshot is used for rendering.

Original menu1682:054d, physical0x3faed, establishes these loads and copy/transition calls. BIOS mode setter16ba:0000 at physical0x5a6b0 takes AX and invokes INT10; menu passes0013. Original DS:7314/7316 contain320/200, corroborating the framebuffer geometry. VGA mode13 is therefore assembly-supported, independently of media dimensions. The distribution has aspect=false/scaler=normal2x; the native study defaults to matching square pixels (8:5), with explicit4:3 VGA presentation option. Neither capture dimensions nor that configuration proves a universal original CRT presentation.

## Two distinct fade mechanisms

Resident1c7f:073f (analysis1cf2f, physical0xf32f) scales768 palette channel bytes by a brightness fraction and uploads them via VGA DAC operations. Brightness range DS:731e is64; full palette lifetime spans subsequent menu operations. It also supports an audio-level delta when sound is enabled. This explains whole-screen background/exit/character brightening operations; exact scheduling and clamp arithmetic need continued validation.

Upper logo/title transition1682:0086, physical0x3f626, instead builds intermediate **pixel-index buffers**. Resident3599:04ad (analysis35e3d, original0x2823d) reads two indices; equal values bypass the lookup. For unequal values define lo=min(a,b),hi=max(a,b):

```
index = lo*(509-lo)/2 + hi - 1
result = XDINTRO.RIX[index]
```

The32640 entries exactly equal256choose2. This is strong assembly/structure proof of a symmetric pair-blend table; prior suggestions that XDINTRO.RIX might be a font are superseded. It is not an RGB alpha interpolation.

The transition stores eleven intermediates: repeated pair blending yields ordering analogous to1/32,1/16,1/8,1/4,3/8,1/2,5/8,3/4,7/8,15/16,31/32 between source/destination. These fractions explain construction order, not literal RGB weights. Each generated pixel uses the original lookup table. Source and final destination are also displayed. It performs retrace waits and counter deadlines; Ghidra's08fc wrapper boundary is unreliable, so the small assembler kernel is the authoritative primitive. Original function excerpts are in menu-transition-original.asm and resident-render-original.asm.

Main uses the first strip at framebuffer offset0, then the second at16000. Afterwards it installs the final B imagery and draws text. Native reconstruction models this ordering and discrete buffers; it does not implement the company intros or claim calibrated automatic timing.

## Original font and options

Main loads DENEYX.CMP into slot3. Renderer16da:0b43, original0x5db03, maps lowercase ASCII a..z to glyphbyte−0x41; punctuation and special encoded letters use original tables. Relevant Turkish mappings:87→glyph70,8d→72,9f→74. Each glyph occupies13×11 indices (143bytes); first byte provides draw-width−1. Drawing width is firstbyte+1, advance firstbyte+2. Space advances3. Resident19d4:0022 (analysis19d62, physical0xc162) recolors only source pixels equalff; other source pixels leave the destination unchanged. This is a **different mask convention** from index254 body-sprite transparency.

GRTEXT.L strings are diagnostic source-code paths passed to a memory lock routine, not opened font resources. See the [font/name correction](../../phase-four/continuation/character-spec-20261014/FONT_AND_NAME_LIMIT_CORRECTION.md) for the full correction and maps.

The original menu callback15dc:0004 (physical0x81c4) draws one-pixel-offset shadow, then foreground. Labels come from original IST data at DS4d01,4d16,4d2a,4d3d, preserving their encoded Turkish bytes and leading spaces. Menu grid origin88,135; row spacing11. Normal indexf8, selectedff, shadowf4 follow the initialized callback properties. Actual RGB expansion remains the existing six-bit preview convention; H264 colors cannot calibrate it exactly.

## Shared selection and mouse regions

Selector15dc:1133 (analysis16ef3, physical0x92f3) shares state at DS:d5dc between BIOS keyboard and mouse. Up/down wrap1..4; Enter confirms; Esc clears/cancels and the enclosing menu loop redraws. A valid pointer region can update selection; no region leaves the current selection intact. A cached last region prevents repeated mouse polling in that region from undoing keyboard selection. The recording's persistent white row agrees with this behavior; 'white only while currently hovered' would be inaccurate.

Hitbox callback15dc:05e4 (physical0x87a4) makes inclusive rectangles x88..226; row tops127,138,149,160 with bottom+20. Resident1c7f:0515 (analysis1cd05, physical0xf105) returns the first containing region, so overlapping boundaries belong to the earlier row. Cursor50 uses no+7 hotspot adjustment. Native window coordinates map back into320×200, rejecting letterbox coordinates; modern native cursor art is not yet replaced with the original cursor sprite.

## Native scope and unresolved details

The lale-menu-reference window is a research prototype: authentic resources, separate regions, original glyphs, original blend-table intermediates, retained selection, and a character-background resource preview. It manually steps presentation, deliberately separating verified spatial operations from unresolved timing. It does not implement a playable character editor, full startup movies, full save/quick-start paths, original cursor art, audio or credits. Native quit conveniences are not a recovered DOS exit sequence.

Original heap/EMS write capacity for the64001st index remains unresolved. EMS allocator2154:0410 rounds requested lengths to16-byte boundaries and aligns larger blocks, but nominal64000 is already a multiple16; that fact alone does not prove the extra write is safe. The native implementation keeps the complete output in a safe Vec and models only verified renderer reads. The other nine mismatches remain unsupported by the strict inspector, including SCW+320; no generic truncation rule is introduced.

Evidence bundles in this directory: resident-menu-palette-allocation-rea.json, menu-transition1682-rea.json, menu-selector-callbacks-rea.json, text16da-rea.json and text-mask-timer-rea.json. New native-validation.json records byte-equal independent source views and full streams, ten passing tests, dummy SDL presentation and visual comparison limits. Continue timer/PIT and callback analysis before automatic runtime-fidelity claims.
