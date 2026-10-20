# Native Rust debug tool

Start the optimized native application with the room overlay enabled:

```sh
./rust-port/debug-native.sh
```

Complete creation as usual, load a native party with `--native-party FILE`, or
press F11 at the menu for room inspection without a party. The debug controls
are also available in ordinary builds once you enter the room.

| Key | Action in the room |
|---|---|
| F12 | Show/hide the state overlay. |
| F5 | Pause/resume the room clock and gameplay input; shows the overlay. |
| Esc while paused | Resume, without sending Esc to an acquisition/dialogue. |
| F7 | Export the current state and clean framebuffer, including while paused. |

Window-close still exits while paused. Paused time and snapshot-writing time
are excluded from the room counter, so resuming does not fast-forward doors or
dialogue. The overlay is drawn on a separate presentation buffer; it never
modifies original game pixels or palette indices. These are native diagnostic
controls, not reconstructed DOS game controls. Menu/creation/film debugging is
outside this tool's current scope.

Every F7 export creates a new directory under `runtime/native/debug/`. Its path
is printed to the launch terminal; a short confirmation appears in the overlay.
Failures are printed there as well and do not terminate gameplay.

- `state.txt`: area, position/facing, original15-byte cell, all four movement
  classifications, suspended movement request, script cursor, pending opcode,
  pending command's group-relative offset/raw operands and opcode8 group/count pairs,
  movement/script vetoes, all32 flag bytes, RNG, party numeric records, temporary
  items/resources, selected acquisition slots and active UI hosts.
- `trace.txt`: up to64 recent input/state-change entries with native counters.
  Unchanged snapshots do not fill the trace; mouse motion/text input is omitted.
- `framebuffer.ppm`:320×200 RGB presentation, without the debug overlay.
- `overlay.ppm`: the same frame with the diagnostic overlay for easier review.
- `indices.bin`:64000 original palette indices in320×200 row-major order.
- `palette6.bin`:768 bytes,256 original6-bit RGB triplets.
- `party-numeric.bin`: four92-byte records when a live party is supplied.
- `COMPLETE.txt`: written last after successful export of all expected files.

Snapshots are diagnostic bundles, not resumable saves or DOS memory captures.
The trace starts on room entry; it is not a full deterministic input replay.
No teleport, flag editing, battle skipping or event acknowledgement is provided.

For a batch snapshot of the initial room, with no display or party required:

```sh
./rust-port/debug-native.sh --dump --facing 0
```

This builds the standalone room binary and exports PC1(2,1) at the requested
facing. It does not inspect a running process. Scripts resolve the project from
their own location and work from another working directory.

Automated SDL check (writes one diagnostic bundle):

```sh
SDL_VIDEODRIVER=dummy SDL_AUDIODRIVER=dummy \
  rust-port/target/release/lale-otopark-room --root . --check-debug
```
