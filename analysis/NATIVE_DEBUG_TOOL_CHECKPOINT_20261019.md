# Native room debugging tool — 2026-10-19

Requested debug tool is implemented in Rust, built in release/development profiles,
and documented in [NATIVE_DEBUG.md](../rust-port/NATIVE_DEBUG.md).
Launch `./rust-port/debug-native.sh`; enter the room through the normal path,
`--native-party FILE`, or F11 inspection. Room-only controls are F12 overlay,
F5 pause/resume, F7 snapshot, and Esc while paused to resume without forwarding
Esc into the game. The ordinary launchers also expose these controls in the room.

## Implementation

`rust-port/crates/lale-runtime/src/world_debug.rs` owns the diagnostic state,
bounded64-entry input/state trace, presentation overlay, pause-aware clock and
new-file export. Gate accessors read the current original-layout state; the core
EventMachine has a read-only pending-opcode accessor. No event acknowledgement,
flag write, coordinate mutation or RNG draw is performed by debugging.

The overlay uses the existing original font on a separate ARGB buffer. Its fixed
background/colors are native debugging presentation, not recovered game assets.
The gameplay indexed/RGB buffers remain unchanged. F5 suppresses normal room
input, poll and presented callbacks; room counter elapsed time excludes pause and
export time. Window-close still works. Resume has no delayed timer jump.

F7 creates a unique owned directory under runtime/native/debug. It includes
state/trace text, clean framebuffer.ppm, overlay.ppm, indices.bin, palette6.bin,
optional368-byte party-numeric.bin and a final COMPLETE.txt marker. Existing files
are never replaced; symlinked output parents are refused. Export errors are
reported without quitting gameplay. State has current cell bytes, original branch
classification, movement request/veto, script veto, group-relative script cursor,
external opcode, flags, RNG, party, pool/resources, speaker and acquisition slots.
A cursor is not a DOS address or file offset. Trace is diagnostic, not replay.

`debug-native.sh --dump --facing 0` builds/runs the standalone batch snapshot path
without SDL/display or party. It captures only the starting room, not a running
process. The script resolves project paths correctly from other working directories.

## Validation

- All174 workspace test executions pass (shared runtime tests are compiled into
  multiple executables; this is not174 unique tests). New checks cover pause/
  resume/export time exclusion, pending-choice/state/pixel preservation, trace
  bounds/deduplication, separate output directories and symlink refusal.
- Optimized and development workspace builds, formatting and Bash syntax pass.
- SDL dummy check presents the overlay and clean frame, retains original pending
  choice5 and state, freezes the counter and writes a complete snapshot.
- Batch snapshot succeeds from /tmp, with no display. The exported overlay was
  rendered to a PNG and visually inspected: state/keys above the original north
  door and Evet/Hayır warning remain legible.
- Existing real-time SDL regression still plays the ten opening dialogues,
  authentic acquisition panel/transfer and four-stage door, then illustration
  wait and pending encounter8, with no dog/key flag granted.
-233 original/historical and30 frozen preservation hashes remain unchanged.

[Logs, preview and preservation result](phase-five/native-debug-20261019/).
This is native automated/visual inspection, not user Fedora desktop acceptance or
a new original DOS comparison. No live DOS/Ghidra session was accessed. No
packages, global settings, original files, prior saves or historical checkpoints
were changed.

## Handoff

Gameplay frontier remains the preceding
[walking checkpoint](NATIVE_WALKING_BUILD_CHECKPOINT_20261019.md): normal play
stops at encounter8. Continue authentic combat/result/key recovery, then continuous
PC1/PC2 navigation. This tool helps capture those boundaries; it never skips them.
Fresh Fedora checks: enter F11 or a live-party room, toggle F12, pause with F5,
export with F7, resume using F5/Esc, and inspect the new bundle. The current tool
covers room/event state only; menu, creation and film instrumentation remains
outside its scope.
