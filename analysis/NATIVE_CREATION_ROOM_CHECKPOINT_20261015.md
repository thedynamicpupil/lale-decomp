# Native creation, party checkpoints and original starting view — 2026-10-15

Continues AREA_FIELDS_CHECKPOINT_20261015. Read UpdateablePrompt and living docs.
The user confirmed both native analysis tools worked on Fedora and requested
visible native functionality. That acceptance is retained; this increment extends
the application rather than producing another analysis-only tool.

## What can be used now

```sh
./rust-port/play-native.sh
```

Normal New Game now generates original stats, supports rerolls/identities/names,
automatically advances body poses, and completes all four named characters.
Fourth completion prepares the known original-layout records, validates the
original-reader workspace roundtrip, writes a new664-byte native party checkpoint,
rereads it, plays original SEQ1–5 and opens the source-composed Otopark starting view.

Enter/dice rerolls, arrows change appearance/race, C changes sex, Tab/name button
edits, Space/next advances, Escape backs up. Body movement pauses while naming.
Blank names do not complete a slot. New checkpoints live exclusively under
`runtime/native/parties/` with unique O_EXCL filenames; old checkpoints, originals
and runtime/lale saves are not overwritten. These are **creation-party records,
not general game saves**. `--native-party FILE` validates such a party and opens
the starting view; it does not resume world events/inventory/combat.

F9 keeps the accepted silent film preview/END hold. F10 stays the accepted source
sheet inspector. F11 opens the composed starting view. Normal completion playback
returns after the last frame's full header-rate duration; `--debug-audio` opts
into existing PCM for that completion film. F9 remains silent. Native Escape may
skip completion playback to the view; this control is not claimed as original
DOS skip behavior. The room has no navigation yet; Escape returns to the menu.

[Full controls/desktop checks](../rust-port/NATIVE_PLAYABLE_INCREMENT.md).
New desktop acceptance remains pending. Prior eight UI checks, silent/F9 films,
PCM audibility and Fedora atlas/survey acceptance remain recorded unchanged.

## Creation fidelity and remaining compatibility boundary

The arithmetic/trait initializer/shared RNG and source action order are reused,
not replaced. Fresh zero workspaces match the original controlled first-entry
snapshot. Existing whole-record setup/generator/Enter-reroll DOS differentials pass.
Four-slot native tests exercise nonempty names, rerolls, original preparation
0a→38/0c→3a/exact auxiliary bytes, serialization and original-reader roundtrip.

`original_seed.rs` now transcribes source calendar conversion and original
absent-TZ18000-second/old-April-October-DST fallback. A fresh actual REA DST query,
original tables and independent calendar fixtures support this transcription.
The host adapter provides local civil date/time, as the DOS API did; hundredths
are ignored and only the low16 converted bits seed the shared RNG.

This is an explicit **native New Game entry policy**, not a claim to reproduce
unknown earlier DOS startup/menu random draws. `--creation-seed U16` is an explicit
reproducible override. There is no arbitrary fixed/error seed fallback and no
host timezone-database substitution for the recovered original conversion.
[Seed evidence/policy](phase-five/playable-20261015/seed/NATIVE_CALENDAR_SEED.md).

Body motion uses the source150-unit wrapping deadline and existing conditional
no-audio PIT counter model. Input/name completion restamps the native counter.
Automatic CPU-loop random face gates are **not implemented**: waiting/rendering
does not burn invented per-frame random draws. Snapshot/F8 retains its explicit
frozen behavior. Full original polling/reentry/mouse-release equivalence remains
open. No new controlled original fourth-slot writer/re-read comparison completed;
native IO uses the existing instruction-backed preparation/layout/reader and
an explicitly new safe checkpoint storage policy.
[Creation boundary](phase-five/playable-20261015/creation/NATIVE_CREATION_BOUNDARY.md).
Appearance13 remains the prior strict CMP discrepancy without substituted art.

## Actual Otopark starting-view pixels

Original DOS world initialization/composition on a disposable game copy supplied
DS:b72a37×18 generated projection records and42 raw blitter-entry stack captures
for PC1(2,1),facing2,viewport200×200. Creation return/cinematic were skipped under
debugger control for this capture; it does not validate original end-to-end party
completion/gameplay. Original area setup and draw calls executed normally.

Native rendering uses original DUVAR2/KAPI3/YER2/YER5/TAV2A/UFUK1 CMP sources,
PAL3D, exact captured rectangles and key254 normal/reflected callbacks. Every
compiled tuple is checked against captured stack bytes and its original executable
call site. Source slot aliases are checked against captured DS descriptors.

Three captured scaled draws are not approximated. The renderer proves that every
pixel in each one's destination is later overwritten by an opaque exact original
rectangle before omitting it. This is valid only for this view.39997/40000 pixels
are established; three untouched final-row bank bytes remain unverified and show
host black. This is not an original final-frame equality claim. The native image
was visually inspected against the cached enclosed-room reference.

The viewport is centered in a320×200 inspection canvas. Original HUD/compass/party
sidebar, general five-layer cell dispatch/scaling and navigation are not added.
[Native view PNG](phase-five/playable-20261015/checks/starting-room.png),
[room capture/implementation evidence](phase-five/playable-20261015/room/STARTING_VIEW_COMPOSITOR.md).
This is actual composed wall/ceiling/floor imagery, not a background-sheet substitute.

## Validation

81 offline test executions pass; workspace formatting/build pass without warnings.
New meaningful coverage includes ordinary screen body changes/naming/four-slot
completion; two filesystem checkpoint writes with the first unchanged; load/
original reader roundtrip; source calendar fixtures; exact42-call provenance/
arguments/alias checks; opaque-occlusion proofs and explicit three-border-pixel
limit. Prior formulas/assets/SEQ/PC/PCS/atlas tests remain passing.

SDL dummy smoke passes normal creation, standalone starting view, app party-load
view (original prepared party as read-only fixture), all2433 silent records and
all2433 records with opt-in debug PCM. Native generated-stat and room exports were
visually inspected. Unit/SDL checks do not establish new user desktop acceptance,
original audio fidelity or complete original creation runtime equivalence.
[Logs/exports](phase-five/playable-20261015/checks/).

No original assets, reference recordings, emulator/config, old analysis/checkpoints
or existing runtime/lale saves changed. No packages/global configuration changed.
Owned REA target is closed and root-controlled emulator probe was stopped. New
work stays under rust-port, owned analysis and disposable runtime. Phase Four
remains incomplete. [Preservation audit](phase-five/playable-20261015/preservation-final.json).

## Precise unfinished scope and next visible step

Current connected path ends at the starting view. Room movement/collision/turning,
opening dialogue execution, item acceptance/ownership, dog encounter and combat
remain unimplemented. General save/load, original film fades/audio synchronization,
random face scheduling and complete original creation timing remain incomplete.
Do not label the primary first-playable milestone complete.

Next use captured projection records to generalize the original layer/scaler
selection and validate one additional source room view. Then connect verified
turn/movement/event checks instead of inventing a generic dungeon renderer.
Keep creation pending work targeted: controlled full fourth-slot original IO,
name/reentry/elapsed-animation comparisons and a justified face-gate schedule.
Preserve the new functioning native creation/checkpoints/film/room path while
extending it. Do not return to broad atlas/statistics research for its own sake.
