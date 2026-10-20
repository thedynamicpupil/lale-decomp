# Reference validation and first native visual milestone — 2026-10-14

Authority: newfindings_phase5continiues.txt. Phase Four remains incomplete; Phase Five now includes a bounded native visual research prototype. Earlier checkpoints and protected originals are preserved.

## 1. Runtime-observed reference findings

The folder contained annotated menu_context.png and one73.53s startup recording. Both were inspected;90 timestamped full video frames were retained. A separately unannotated screenshot was absent, so unannotated video frames provided appearance comparisons. Original media were kept read-only. Capture640×360/60fps and audio48kHz are recording properties only.

Observed startup order: RAKS → SILICON3D → Compuphiliacs → disclaimer → background → upper logo → episode title → all four options. Background brightens40.25–42s; upper logo45.25–45.75; episode title48.25–48.75; options absent49.50 and present49.75. Selection remains white after the pointer leaves a row. Menu darkens around62s; black around63s; character screen brightens63.30–64s. Character frame64s visibly shows Güç3. These are sampled visual observations, not internal timer measurements or keypress evidence.

[Media findings](phase-five/reference-validation-20261014/REFERENCE_MEDIA_FINDINGS.md) separate annotations, capture limits and observations.

## 2. Assembly-backed menu rendering

Original1682:054d main-menu routine loads ACILISA/B and ACILISA.PAL. A is background; B adds two title regions. The first320×50 strip is upper logo, second episode title. Differences are10556 and3886 indices respectively; lower100 rows are identical. Text is a separate font operation, appearing after the title sequence.

XDINTRO.RIX is now verified as a32640-byte unordered color-index-pair blend lookup (256choose2), not a font. Original3599:04ad indexes it by `min*(509-min)/2 + max-1`; equal indices bypass lookup. Original1682:0086 builds eleven intermediate buffers and retrace/counter-controlled transitions. Whole-screen fading uses the separate palette-scaling routine1c7f:073f, with brightness denominator64. Exact tick scheduling is not yet sufficiently audited for automatic faithful presentation.

BIOS mode setter16ba:0000 invokes INT10 with caller-supplied0013; framebuffer data confirms320×200. Original video configuration aspect=false explains the square-pixel reference presentation; native study offers that default plus explicit4:3 VGA presentation, independent of capture dimensions.

## 3. Font, colors and interaction

DENEYX.CMP (IVIR payload237403) is the actual13×1000 menu font sheet. Original16da:0b43 reads glyph widths and renders11-pixel cells;19d4:0022 recolors sourceff pixels. Encoded Turkish mappings and leading spaces are retained from original IST labels. Normal palette indexf8, selectedff, shadowf4; callback15dc:0004 places foreground at grid88,135 with11-pixel row spacing and a one-pixel shadow.

Selector15dc:1133 shares keyboard/mouse selection. Inclusive hitboxes are x88..226, with row tops127/138/149/160 and bottom+20; the first overlapping region wins. Selection persists outside rows, and a cached region prevents stationary mouse polling from undoing keyboard selection. This corroborates the video's retained highlight, rather than a strictly hover-only color rule.

[Rendering specification](phase-five/new-reference-20261014/MENU_RENDERING_SPEC.md) links the resource identities, exact function locations, original-byte listings and REA bundles. Synthetic CS4000 is never treated as a runtime overlay address.

## 4. Character creation

Existing four-slot creation path and664-byte party serialization remain established. New original assembly specifies cyclic identity bounds, exact RNG recurrence `(state*0x015a4e35+1) mod2^32`, returned15-bit value and scaled draws. Boy/Kilo formulas are partly recovered; full attribute generation remains incomplete. The recording's strength3 agrees with the code exception to the manual's minimum50 wording.

Name entry accepts Enter, restores the prior name on Escape and uses a115-unit width limit including cursor. Original DENEYX widths imply at most36 input bytes; this is an effective metric bound, not an explicit count check. Safe temporary buffers must also accommodate cursor/NUL and rejected candidates. Turkish key-byte transforms are retained. GRTEXT.L is a diagnostic source path, correcting the first new name report's font-resource interpretation.

Read [character spec](phase-four/continuation/character-spec-20261014/CHARACTER_INPUT_AND_RNG_SPEC.md) **with its superseding [font/name correction](phase-four/continuation/character-spec-20261014/FONT_AND_NAME_LIMIT_CORRECTION.md)**. The recording does not demonstrate Tab/numpad0 or C/numpad5, so manual/code hotkey discrepancies remain unresolved by runtime observation. KOR cropping/anchor semantics and complete generation require further testing.

## 5. Eleven CMP discrepancies

All262 streams remain covered;251 strict dimensions and11 discrepancies. A/B both retain64001 indices, final extra0 included. Explicit nominal framebuffer source-read views explain their visible320×200 rendering without claiming the extra original write is safe. Source and native full streams match independently byte-for-byte. No generic crop/truncation rule was added; strict inspector behavior remains unchanged. EMS16-byte alignment alone does not prove spare capacity for nominal64000. SCW+320 and the other mismatches still require allocation/rendering analysis.

[Addressable-view evidence](phase-five/MENU_ADDRESSABLE_VIEWS_20261014.md) separates binary decoding, palette, visible extent and presentation.

## 6. Audio

All15 DSMI AMFv14 modules still load in existing libopenmpt. New offline render comparisons rank DEMO.AMF first in the menu-region spectral windows, corroborating static references. Matching offsets/rates remain ambiguous; no tempo/gain correction or DOS-identical mix is claimed. Intro audio and SFX are unresolved. Original assembly shows channel-level initialization64 and timing arithmetic50×tempo/125. No custom tracker/mixer, installation or audio-device use occurred.

[Recorded audio comparison](phase-five/AUDIO_REFERENCE_COMPARISON_20261014.md). Audio did not block the visual milestone.

## 7. Native Rust prototype status

Built `lale-menu-reference`: a native Linux x86_64 SDL2 visual study rendering authentic background, separate title strips, lookup-generated intermediate buffers and original font/options. Native pointer and keyboard share retained selection; New Game reaches a clearly scoped character-background resource preview. No screenshot flattening or annotation marks are used. Presentation is manually stepped rather than assigned guessed timing. Continue/Quick Start, playable character editing, startup movies, original cursor, credits, audio and gameplay are outside this milestone.

The installed SDL2 runtime is linked through an isolated owned FFI adapter; no dependencies or system packages were installed. The320×200 buffer uses nearest scaling and letterboxing. Windows presentation remains pending. Existing inspector CLI is preserved; a separate stream API retains excess output safely for verified source-read modeling.

[Run instructions and limitations](../rust-port/NATIVE_MENU_STUDY.md). From project root:

```bash
./rust-port/target/debug/lale-menu-reference --root .
```

## 8. Validation and preservation

Formatting, offline check/build and all10 tests pass. Source-read endpoints and both full64001-index streams match independent Python evidence. The strict inspector still rejects ACILISA. SDL dummy-video presented two frames in both aspect modes; this is a window/render-path smoke test, **not a visible KDE desktop or real-input test**. Native stage30 and video49.75 were visually compared; appearance agrees, but compressed capture RGB is not a pixel-exact calibration.

No new DOSBox launch was attempted; the user's working desktop launcher is not deemed broken by agent display limitations. Original game, emulator/config, Ghidra GUI project, reference media and frozen Phase Three outputs were not modified. End-of-continuation hashes distinguish intentional Rust extensions from preserved evidence.

## 9. Remaining blockers

Automatic presentation timing/PIT audit; fresh desktop native input/scaling validation; original cursor art; original allocation/write behavior for the11 CMPs; complete character generation and KOR semantics; manual/code hotkey validation; full save/load and playable loop; DOS-versus-libopenmpt mix/loop/transition settings and separate SFX decoding. Full phase completion is not claimed.

## 10. Next steps

1. Validate the native study in the normal KDE session, including row boundaries, pointer-leave persistence, keyboard navigation and aspect modes.
2. Finish timer/PIT and transition deadline analysis, then add automatic original stages without hardcoding captured seconds.
3. Use the recovered font/name/RNG specs for a safe deterministic character-editor increment; verify KOR pose geometry first.
4. Trace complete save/game-loop initialization and remaining allocation discrepancies.
5. Compare representative original/libopenmpt audio with consistent alignment/configuration before choosing playback settings.

Useful fresh captures, if needed: Tab vs numpad0 naming; C vs numpad5 sex; Enter/Escape within naming; near-limit repeated narrow characters; switching between mouse and keyboard without leaving/reentering the selected row. Use the working normal desktop launcher and preserve runtime saves. No protected/system change is required for these observations.
