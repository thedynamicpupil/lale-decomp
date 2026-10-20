# Character UI diagnostic, PCM audio and Otopark resources — 2026-10-15

Continuation of VISIBLE_SEQ_CHECKPOINT_20261015. Read UpdateablePrompt.txt and the
three living docs first. The user's newest priorities remain complete creation,
interactive Otopark, then faithful cinematic sound. This bounded increment makes
verified systems visible without claiming the target continuous game is complete.

## User-confirmed acceptance

The user confirms standalone SEQ playback and F9 integration work on Fedora;
all five streams play in the correct order without observed problems. This
accepts the existing silent debug presentation. Preserve it as default. The new
features below have automated/agent inspection checks but no new user acceptance.

## Character creation: actual DOS proof and graphical integration

Two controlled original DOS boundaries now independently corroborate Rust:

1. Natural menu→main new-game→actual167c overlay entry→first-slot setup. Captured
   RNGd1f0aee5→ecd597d9 is exactly28 draws. Complete four-character Party, working
   traits, RNG and body/face phase agree with Rust. First character Boy179/Kilo72.
2. A second original RNG301d0a20 enters setup. Generator entry7e58d8a1→56b4b584
   agrees exactly with initializer+26 numeric draws, full record and traits.

[Runtime observations, exact coordinates, fixtures and limits](phase-five/character-ui-20261015/character/DOS_CREATION_AND_UI_BOUNDARY.md).
Before/after raw DS dumps, configs and transcripts are retained. This is actual
DOS comparison, distinct from the prior32 static instruction fixtures. It is
bounded to initial setup/generator, not complete idle/input/finalization lifecycle.

New `character_runtime_snapshot.rs` imports staged raw DS records/RNG without a
fabricated host seed; `creation_session.rs` connects the existing shared caller
to the original graphical character screen. Optional **DEBUG CREATION SNAPSHOT**
mode supports visible stats, rerolls, race/sex/appearance source order, names,
four slots and preparation of664 serialized-layout bytes in memory. F8 advances
one explicit150-unit counter/poll operation; automatic idle RNG/time and callbacks
are frozen. The ordinary application's original gate remains. Four-character
preparation does not write a file, return gameplay success or start a world.

```sh
./rust-port/preview-character-generation.sh
```

Choose new game, or append `--stage 31` for direct diagnostic entry. It starts from
the same observed RNG each launch. [Controls/checks](../rust-port/NATIVE_CREATION_DIAGNOSTIC.md).
Agent inspection of [the native stat column](phase-five/character-ui-20261015/native-checks/creation-stats.png)
confirms visible original-resource output; it is not a DOS pixel-equality claim.

The reroll experiment did not produce the requested original handler boundary
after callbacks. Later overlay activity was observed; assuming creationCS35a6
persists is unsafe. Runtime relocation/lifetime is a hypothesis for the missed
stop, not a proven cause or proof of reroll failure. No completed original party
write/re-read was observed. These remain the highest-priority research gates.

## Otopark foundations and usable resource view

Strict `lale_assets::pc_map` parses all18 original banks. PC1 starts at zero-based
(2,1), facing2/forward(0,+1). Source tracing recovers the five-layer compositor,
18-byte generated projection records, and concrete cell+9→slot37/yer2 and
cell+8→slot57/tav2a consumers for the initial stored values.

New standalone `lale-otopark-background`, also F10 in the existing app, displays
all200×200 UFUK1 source pixels with PAL3D. Its title says BACKGROUND ONLY; full
centering is a debug inspection choice. No walls, navigation, collision, dialogue
execution or inventory transfers are simulated. [Usage](../rust-port/NATIVE_OTOPARK_RESOURCE.md).

The actual composed room requires generated geometry/FPU rounding and scaled/
mirrored blit semantics. Existing Ghidra decompilation truncates the Borland
INT34..3B emulation sequences, so its pseudocode cannot be used to invent crops.
[Compositor frontier and REA IDs](phase-five/character-ui-20261015/otopark/COMPOSITOR_FRONTIER.md).
Sivri Daş identity/offer findings remain retained, without fabricated transfers.

## Original cinematic samples now audible on demand

SDISB16.DSD consumer instructions prove unsigned8 mono PCM midpoint128, actual
MCP registration/sample/start targets and byte-cursor positions. All five streams
extract at22050Hz. No guessed ADPCM codec or stereo interpretation is used.

```sh
rust-port/target/debug/lale-seq-preview --root . --debug-audio
```

This opt-in preview uses a mono SDL queue and approximate host-clock alignment.
Pausing, stepping, restart, segment advance and end pause/replace/clear queues;
buffered tails cannot spill into the next film. Default standalone and F9 remain
silent. Original two-voice gain/clipping, ring corrections, audio/PIT coupling,
seek recovery and fades remain incomplete. This is debug audio, not faithful
synchronized playback or user listening acceptance. [Controls/limits](../rust-port/NATIVE_AUDIO_DEBUG.md),
[driver evidence](phase-five/character-ui-20261015/audio/SEQ_PCM_DRIVER_BOUNDARY.md).

## Checks and exact playable boundary

52 test executions pass offline (48 distinct: three SEQ tests and one background
test compile in two targets). Formatting check and workspace build pass without
warnings. Tests include two original DOS differentials, snapshot strides/gaps,
graphical reroll/name/four-slot preparation,18 PC corpus, source sound midpoint/
block order, prior generators/callers/decoders and accepted presentation regression.

SDL dummy checks pass for standard and diagnostic character screens,3 background
presentations, all2433 silent film records, and all2433 with PCM queue integration.
Smoke mode bypasses real-time deadlines, so it is not audio fidelity validation.
Build/test/smoke details are under [this increment](phase-five/character-ui-20261015/).

Working native features: accepted menu/character visual subset and silent/F9 films;
new testable explicit-state stats/rerolls/four-slot preparation; opt-in source PCM;
background resource inspection. Missing gameplay: ordinary seeded/polled completed
creation and party IO, automatic success→film→interactive room, room composition/
movement/collision/events, inventory transfer, dog encounter/combat and full saves.
No full playable path or Phase Four completion is claimed.

## Exact next bounded work

1. **M02/M03 first:** use stable resident RNG1779/return or DS94c4 watchpoints and
   caller-stack/current-stub dumps across the default callback. Re-resolve loaded
   creation segments after overlay activity. Validate reroll, named/blank reentry,
   race/prior-sex, no-input/restamp and held-button release. First setup and numeric
   formulas are now runtime-checked; do not rediscover them or substitute arbitrary
   native idle burns. Resolve startup seed/native polling boundary, then integrate
   ordinary UI and controlled original fourth-slot write/re-read before native IO.
2. **M05:** capture generated18-byte geometry after original world setup, resolve
   emulated-FPU rounding and rectangular/scaled/mirrored blitters, implement shared
   composed room before navigation/collision/event integration. Keep F10 honest.
3. **M04/M12:** obtain debug-audio listening feedback while recovering original
   gain, two-ring cursor corrections, stop/tail handling and fades. Preserve silent
   default; no AMF playback or full audio fidelity is established by PCM decoding.
4. **M06/M07:** retain initial group5/flag249 dialogue and adjacent group0/item2
   offer evidence; trace acquisition46591 accept/cancel/owner writes and speaker5/
   B6 before enabling native pickup/dialogue VM. Do not invent world progression.

## Preservation

1080 pre-increment files hashed. Only nine intended existing files changed:
three living docs, assets module exports, runtime Cargo manifest, menu entry,
character screen and the two SEQ preview entry/implementation files. New source,
launcher, guides, checkpoint and evidence are additive. All30 frozen artifacts
match; original distribution, bundled emulator/config and reference media match
baseline. Protected GUI Ghidra project was not opened/edited. Owned REA sessions
are closed; interactive DOS trace sessions are closed. No packages/dependencies
or global settings changed. [Audit](phase-five/character-ui-20261015/preservation-final.json).
