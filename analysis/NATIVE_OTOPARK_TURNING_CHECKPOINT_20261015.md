# Native Otopark four-facing turning checkpoint — 2026-10-15

Continues NATIVE_CREATION_ROOM_CHECKPOINT_20261015. UpdateablePrompt, current
living docs and latest user priority apply. The user accepted the preceding
Otopark starting perspective/facing side on Fedora. That acceptance is retained;
no broader unreported desktop acceptance is inferred.

## Playable native increment

```sh
./rust-port/play-native.sh
```

F11 opens original Otopark PC1(2,1),facing2. **Left/Right arrows turn in place**
through all four facings. Facing0 has a door ahead,1 a door at the left edge,
2 the accepted wall,3 a door at the right edge. Four turns restore the same view;
opposite turns cancel. Up/Down do not move. Escape returns; Q quits.

The same controls work after existing normal creation→four-character party
checkpoint→original SEQ1–5→starting room, and after --native-party loading.
Creation behavior, safe new-file party persistence, silent/F9 playback, F10
resource inspection and debug PCM remain intact. Their exact prior limitations
and acceptance remain recorded in the preceding checkpoint.

Standalone `lale-otopark-room --root . --facing 0..3` selects an inspection facing;
--dump NEW.ppm safely exports a new image. [Desktop checks/controls](../rust-port/NATIVE_PLAYABLE_INCREMENT.md),
[four-view preview](phase-five/turning-20261015/checks/four-facings.png).

## DOS-verified

A fresh controlled original DOS run reproduced the accepted facing2's42 calls
and supplied all four original command streams:14/37/42/24 calls for facings0..3,
117 total. Original1662:0235 computed facing vectors; original1662:3932 ran all
five compositor layers using unchanged generated37×18 projection records.
Coordinates remained(2,1). Raw64-byte stacks, DS snapshots, original call-site
bytes, resource descriptor aliases and hashes are retained.

Direct original bank-mapped reads retain40000 indexed viewport bytes per facing.
Native turn tests match all40000 bytes for each facing against these controlled
original buffers. This is stronger than visual resemblance but is not original
full-screen/HUD equality or an original end-to-end keyboard gameplay test.

Debugger control skipped creation/film and explicitly selected orientations,
executing the original direction helper/compositor. It did not observe physical
turn keys, original turn animation, key-repeat cadence, movement or collisions.
The owned DOS process and REA/Ghidra session were closed; protected GUI project
and originals remained untouched.

[Detailed evidence/method/addresses](phase-five/turning-20261015/FOUR_FACINGS.md),
[manifest](phase-five/turning-20261015/manifest.json),
[capture hashes](phase-five/turning-20261015/capture-hashes.json).
Fresh REA evidence ev_d551feadba2c3f2d69c06934c5b9b6893c3422718309f4757504a90385108ad1
corroborates original direction normalization/vector stores; raw instructions
remain authoritative over synthetic pseudocode aliases.

## Rust-implemented and precise limits

The existing rectangle/key254/reflection compositor now handles four captured
facings. `StartingCell` caches their original-resource views and changes only
orientation. All23 scaled draws have per-call proofs of complete later opaque
overwrite; no scaler approximation is introduced. Draws that leave pixels
untouched retain previous viewport contents across turns. Three retained border
bytes are now observed as254; the native inspection background stays black there.
Facing3 has one additional untouched pixel supplied by the previous native view.
The accepted facing2 RGB export remains exactly unchanged.

This is generalized across **the four facings of the starting cell only**.
Original general cell/layer selection, visible scaling, HUD/compass/sidebar,
turn animation/input timing, movement, collision, doors/stairs interaction,
inventory/Sivri Daş ownership, dialogue execution, encounters and tactical combat
are not implemented by this increment. Original event analysis and architecture
are preserved; no guessed events, geometry or movement rules are added.

## Validation and acceptance

- Offline workspace format/build pass without warnings;87 test executions pass.
- 117-call original provenance/arguments, projection records, coordinates/facings,
  vectors and descriptor aliases pass.
- Pixel tests cover every opaque source draw and full40000-byte persistent
  viewports for all four facings, both complete turn cycles, opposite turns,
  ignored Up input and invalid facing rejection.
- SDL dummy smoke passes all four standalone views and prepared-party→room app
  entry. Read-only original prepared-party fixture was used; no user save write.
- Prior facing2 PNG equals current nearest-neighbor3× RGB export exactly.
- Cached recording1 at00:15 corroborates the visible starting wall/ceiling/floor;
  no videos were reprocessed.

[Logs/exports](phase-five/turning-20261015/checks/). Tests and dummy SDL are separate
from Fedora acceptance. **The three new facings and Left/Right turning await user
desktop acceptance.** Prior accepted starting-facing perspective and all other
accepted milestones stand. Full original turn timing/input remains unverified.

## Preservation and next increment

All baseline protected originals, emulator/config, references and historical
analysis remain unchanged. Existing runtime/lale saves and original root files
also match their preceding preserved baseline. Only intended native source,
user guide and living docs changed; new capture/evidence/checkpoint files are
additive. [Preservation audit](phase-five/turning-20261015/preservation-final.json).
No packages or global settings changed. Phase Four and the first-playable
milestone remain incomplete.

Next follow the user's order: original rendering/turning → map navigation,
collision, doors/stairs → inventory/Sivri Daş → original encounters → tactical
combat. Choose one source-verified adjacent view/movement branch using the
existing area atlas/consumers. Generalize original cell/layer dispatch as required
for that view; recover scaling only if its pixels remain visible. Preserve event
vetoes and item/encounter links even while broader dialogue presentation waits.
Do not substitute these captured starting-cell streams for a general map engine.
