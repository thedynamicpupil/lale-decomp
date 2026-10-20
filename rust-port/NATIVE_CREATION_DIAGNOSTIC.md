# Original-state character generation diagnostic — 2026-10-15

From project root:

```sh
./rust-port/preview-character-generation.sh
```

Choose **Yeni oyuna başla**. The original character screen now displays generated
stats. The wrapper imports a captured original pre-setup DS state; Rust executes
the recovered caller and generator. It does not load pre-generated numeric values:
the captured numeric/trait rows are initially zero. First setup matches the
actual DOS output, including all record bytes, traits, phase and RNG state.

For direct entry, append `--stage 31`. The equivalent binary option is:

```sh
rust-port/target/debug/lale-menu-reference --root . \
  --creation-snapshot analysis/phase-five/character-ui-20261015/character/dos-run6/FIRST-SETUP-BEFORE-DS.BIN
```

This is **DEBUG CREATION SNAPSHOT**, not ordinary new-game creation. Every launch
starts with the same observed RNG state. There is no invented host seed. Automatic
idle polls/time and callbacks are suspended; **F8** explicitly advances the debug
counter by150 and executes exactly one source-backed idle poll. That control is
an inspection policy, not recovered DOS polling frequency. Automatic body/face
animation is disabled in this mode; F8 shows the shared animation/RNG operation.
The default application without this option retains the accepted previous behavior.

- Enter or dice: reroll using the same shared RNG.
- Up/Down: race (original generation-before-suggested-appearance ordering).
- Left/Right: appearance; C: sex.
- Tab or naming button: name; Enter accepts, Escape restores.
- Space or next button: advance a named slot; Escape/upper-left goes back.
- Fourth named slot + Space: prepare all four records in memory. The title changes
  to **DEBUG PARTY PREPARED — 664 bytes in memory only**.
- F9: accepted silent film preview; F10: Otopark source-sheet inspection (arrows browse; WASD pans).
  Escape returns to the same character drafts/debug state.

Preparation is not a gameplay success transition. No party/save file is written,
no world is initialized and cinematic access remains an explicit debug shortcut.
Serialization layout/preparation exists and is tested; original fourth-slot IO
and downstream initialization still need a controlled original comparison.
Appearance13 retains the existing strict CMP failure and does not substitute art.

## Desktop checks pending

1. New game shows stats; the captured first character has Boy179/Kilo72.
2. Enter/dice changes stats; naming, race, sex and appearance remain usable.
3. F8 advances the diagnostic pose/poll; waiting alone consumes no RNG.
4. Name all four slots, advance/back, and prepare the fourth; title reports in-memory
   preparation, with no false gameplay/saving claim.
5. F9/F10 then Escape preserves the current names, values and selected slot.

These are new checks. Earlier eight prototype checks and your all-five-stream
silent/F9 acceptance remain recorded separately. Agent image inspection confirms
the stat column is visible; no new desktop acceptance or DOS pixel equality is
claimed. The direct DOS comparisons concern numeric/raw state, not the full screen.

Latest integration: the default application's New Game now uses normal native
creation with body animation and party checkpoints. This explicit snapshot mode
retains its frozen/F8 behavior. See [native creation/starting-view guide](NATIVE_PLAYABLE_INCREMENT.md)
for the current functionality and remaining random-face/timing limits.
