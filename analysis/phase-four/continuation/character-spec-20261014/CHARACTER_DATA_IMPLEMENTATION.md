# Character-data implementation checkpoint — 2026-10-14

Task: prioritiesandfurtherinstructions.txt, Priority C. New implementation exclusively in `rust-port/crates/lale-runtime/src/character_data.rs`; parent integrates module and visual/input hookup. No earlier report or original artifact was changed. This module uses the corrected DENEYX font interpretation in FONT_AND_NAME_LIMIT_CORRECTION.md.

Implemented independent verified systems:

- Exact664-byte party reader, preserving two37-byte text fields per slot followed by four92-byte numeric records. It requires terminated name bytes and retains auxiliary/unknown bytes. `original_bytes` provides in-memory roundtrip verification; no game-file writing is performed.
- Four slots, zero-based host selection, nonempty-name gate for advancement, previous-slot navigation and cancel from first slot. Completing fourth slot reports `GenerationIncomplete`; it does not silently start gameplay or write an incomplete party.
- Numeric fields race+02, sex+04, appearance+42 and14 display statistics in original row order. All original records remain available; no unknown fields are reinterpreted.
- New incomplete character drafts use blank names and identity1. Original IST file-backed active slot records/names are all zero (new IMPLEMENTATION_DATA_PROVENANCE.json records exact physical offsets/bytes); original167c:1aa2 lower-bounds each identity to1. Numeric generated values are `None`, explicitly distinguishing fresh character state from supplied GRP/GRPHAZIR examples. A loaded-party draft has values tagged `LoadedOriginalParty`.
- Cyclic identity endpoint handling, race-based suggested appearance, appearance-based sex selection; race/sex modification invalidates statistical values until original generation can be implemented. Appearance changes preserve current values, as the traced appearance branch does not invoke generation.
- Exact original LCG32 and scaled positive draws. No guessed time seed or full generator is connected to new-game state.
- DOS encoded name editor: mode1 DENEYX metrics, width115 with cursor, byte conversion tables, safe temporary Vec, extended-key discard, Backspace, Enter accept and Escape restore. It applies the effective36-byte capacity implied by original metrics and never performs unsafe transient writes into a37-byte serialized field. Raw encoded values remain distinct from Unicode host events; parent supplies the input translation boundary.

Generation remains incomplete. Boy/Kilo formulas are recovered in the earlier spec, but trait initialization, random-call sequence, all remaining attribute formulas and display comparison thresholds have not been fully audited. Partial formulas are not used to present invented complete values. Reroll can clear values but cannot claim a faithful generated result. Save-game progression and final party serialization are intentionally unconnected.

Four focused tests passed via isolated `rustc --test` using existing built lale-assets (before shared workspace integration): both original parties roundtrip byte-exact with correct decoded names/identity/display statistics; malformed length rejection; twelve RNG fixture outputs/state; endpoint wrapping/four-slot gates; actual strictly decoded DENEYX metrics,36-space/21-i limits, encoded uppercase transformation, extended keys, accepted names and Escape rollback. The file is rustfmt formatted. Parent owns final full-workspace tests and runnable build verification.

This checkpoint adds no dependencies, tracker implementation or gameplay engine. DOS reference hotkey discrepancies (C versus numpad5, Tab versus numpad0) remain documented; module-level DOS byte handling does not resolve the native keyboard-layout mapping itself.
