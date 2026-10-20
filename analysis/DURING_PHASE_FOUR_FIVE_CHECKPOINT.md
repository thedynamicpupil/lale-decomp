# During Phase Four/Five checkpoint — 2026-10-14

Instructions followed: duringphase4and5.txt. Phase Four remains incomplete; Phase Five continues evidence-backed resource validation. No full engine, music mixer or new dependencies were implemented or installed.

## Deliverables and evidence status

|Requested deliverable|Result|Status|
|---|---|---|
|Main menu → character creation|Original main value1 calls167c stub0057 → actual1aa2; initialization, four-slot navigation and success/cancel returns traced|Verified static path; runtime replay pending|
|Screen resources|KARAKTER/SEMATIK with explicitly bound PALBAT; prefixed faces and body CMP/KOR tables; ACILISA/B menu dependencies|Character background agrees with manual; final menu raster incomplete|
|Creation mechanics/data|92-byte numeric and148-byte text strides; four slots;664-byte party serialization; attribute display mapping and strength minimum3 exception|Partial code/manual agreement; RNG formulas pending|
|11 CMP discrepancies|Complete list and packet accounting retained; menu resources implicated; no silent crop|Unresolved allocator/destination behavior|
|AMF approach|All15 DSMI AMFv14 members with embedded samples accepted by existing libopenmpt; timing events/loops recorded|Loading verified; original audio fidelity pending|
|Before native menu prototype|Remaining work below, with preserved code/evidence|No prototype begun|

## Focused reports

- [Menu/creation path and input](phase-four/continuation/MENU_TO_CHARACTER_CREATION_20261014.md)
- [Screen resource and compositing map](phase-five/SCREEN_RESOURCE_MAP_20261014.md)
- [Character mechanics and record layout](phase-four/continuation/CHARACTER_RECORDS_20261014.md)
- [Manual evidence and screenshots](phase-five/manual-character-and-graphics-20261014.md)
- [Appearance members](phase-five/appearance-members-addendum-20261014.md)
- [Eleven CMP exceptions](phase-five/CMP_DISCREPANCIES_20261014.md)
- [Audio compatibility and recommendation](phase-five/audio-compatibility-20261014.md)

## Most useful discoveries

The character screen is now tied to original code, exact members and the manual's visible layout. Both32×32 face expressions and coordinate-based body poses are distinct resources. The renderer has opaque copying and explicit index254 masking/horizontal mirroring; CMP files themselves do not universally declare transparency. The manual's minimum50 wording has a code-supported strength exception of3. Naming and sex hotkeys differ between manual wording and traced BIOS scan checks; they must be tested rather than guessed.

The standard tracker library is a technically justified first music candidate. It loaded all15 members from memory without warnings, demonstrating that external sample files are unnecessary. Prefer a small Rust libopenmpt boundary for a later playback comparison rather than building a tracker mixer. Original music repeat/volume transitions, interpolation and sound effects remain independent fidelity questions. Pre-rendered music is a fallback only after loop/transition behavior is recovered.

## Blockers before the first faithful native menu prototype

1. Resolve how original allocation and screen copying handle the extra pixel in ACILISA/ACILISB. Preserve complete output; no silent truncation.
2. Recover font/glyph encoding and callback setup, steady menu placement and intro-to-menu strip/transition ordering.
3. Establish video mode, presentation/fade timing and keyboard/mouse behavior through a controlled DOSBox comparison. Code-proven320×200 offscreen dimensions must stay separate from screenshot dimensions.
4. Verify creation hotkeys (manual5 vs codeC; manual0 vs codeTab), KOR anchor/crop/mirror behavior, name-entry limits, trait defaults and deterministic RNG arithmetic.
5. Compare libopenmpt output against a known original DOS audio configuration before selecting playback settings. Separate SFX representation/driver arguments still require tracing.

## Validation and preservation

Existing launcher retried safely against runtime copies; DOSBox-X exits during SDL initialization with `x11 not available`, before gameplay. Log: phase-four/continuation/during-phase-runtime-launch.log. No system configuration or emulator installation was changed. The user-reported screenshots remain useful observation evidence, but no separately saved screenshot images were found here.

Rust formatting and all eight tests pass offline, including262 CMP and15 AMF corpus checks. Rust implementation is unchanged in this continuation. All25 originals and30 frozen prior artifacts match recorded hashes; see phase-four/continuation/during-phase-preservation-check.json. Earlier Four/Five evidence was extended with new reports, derived static-only wrappers and REA bundles; original Ghidra GUI project was not opened or modified. REA sessions were closed after evidence export.

Next assembly targets: allocator capacity/padding; rendering/font callbacks and menu transition helpers;1694:0202 range handling and16da:0000 name editor;1670:2521 first playable loop; audio game-controlled repeat/volume calls. No phase completion percentage is claimed.
