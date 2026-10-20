# First Git preparation checkpoint — 2026-10-20

## Active task and result

The user explicitly paused combat research to prepare a source-only first GitHub
commit. Local Git was initialized and exactly 100 reviewed files
(690667 bytes, largest 67943 bytes) were staged.
No commit, remote, push, publication or repository creation on GitHub occurred.
The filesystem sandbox mounts `.git` read-only; Git init/add succeeded through
explicit platform-approved escalated calls. No permission workaround was used.

Exact index paths: [STAGED_FILES.txt](STAGED_FILES.txt).
Per-blob hashes, sizes and modes: [staged-audit.json](staged-audit.json).
Every staged blob equals its reviewed working file. The final staged audit checks
all index paths, modes, text encoding, size and common credential signatures.

## Audit scope

Initial read-only inventory: 17624 regular files, 9129748798
bytes; no symlinks or inventory read errors. Every top-level distribution,
research, extracted, runtime, emulator, source, build and media directory was
included. `.git` metadata itself was excluded from the content inventory.
The inventory is a point-in-time snapshot; build checks subsequently replaced
ignored target files and created additional ignored audit/debug outputs.

78 files exceeded 10 MiB; all are excluded. Complete paths/sizes are in
`inventory.json` and `large-files.json`. The largest public file is below 68 kB.
The original/manual/config and emulator reference set contains
38 files; SHA-256/size checks identified
728 exact original/emulator matches across nested copies,
none in the staged set. Sixty stale incremental-build paths disappeared during
Cargo rebuilds; this is recorded, not treated as lost research evidence.

The credential scan examined 2563 UTF-8 text files,
796697473 text bytes, with no common secret-pattern matches. Binary or
non-UTF-8 files were classified and excluded rather than interpreted as text.
A fresh scan of all 100 candidate files and of the actual index also passed.
Pattern scanning cannot prove the absence of arbitrary unrecognized secrets.
No credential values are recorded in reports.

Publication exclusions cover original distribution/root files, every runtime
copy, emulator, save/checkpoint, Ghidra project/lock, manual and reference media,
all private analysis, decompilation/assembly exports, captures/dumps, decoded
assets and fonts/audio, Rust build output/caches, local prompts and agent or
credential configuration. `rust-port/research/` and captured command-array `.rs`
files also remain private. No excluded file was deleted or moved.

## Narrow source changes for a source-only build

All edited original Rust files were backed up byte-for-byte under `source-before/`;
`source-changes.json` lists the ten affected files. Existing historical evidence
and captured Rust command arrays were not overwritten.

- Removed the captured 37x18-byte projection table from public Rust source.
  `scene_projection_200` now parses external private data with strict extent
  validation and explicit missing-data errors. Context, command and door consumers
  use that loader. The private default file is
  `runtime/native-data/projection-200.bin`; bytes equal the previous array AND
  retained `analysis/phase-five/playable-20261015/room/projection37x18.bin`.
  `LALE_PROJECTION_200` supports an explicit alternative private path.
- Captured per-facing command arrays remain ignored and unchanged. Local
  `runtime/native-data/facing-0.tsv` through `facing-3.tsv` preserve their rows;
  tests now read those at runtime instead of including private `.rs` files.
- Compile-time `include_bytes!`/`include_str!` private evidence imports became
  runtime file reads. Missing research stays a clear runtime test failure;
  no fixtures or their full data are embedded in the public source/test build.
- Added a synthetic projection parser test. No guessed projection generator,
  combat mechanic or graphical substitute was introduced.

A new source-only checkout can build and compile every test target, but room
rendering still needs that private projection data. Full fixture comparisons
need the private original/evidence workspace. These limitations are documented
in the staged README and docs/DEVELOPMENT.md. Existing local native tests/smokes
continue to pass with the external private fixture.

## Validation

- Full local offline workspace tests PASS after the loader changes.
- Cargo formatting check, offline check and optimized workspace build PASS.
- Source-only temporary copy (path in `source-only-copy.txt`): no `lale/`,
  `analysis/`, `runtime/` or `extracted/`. Offline build, ALL test compilation,
  asset-free core movement tests and formatting PASS; logs retained.
- Native SDL dummy menu smoke, existing door-choice/dialogue/acquisition/door/
  illustration/opening route check, combat-boundary export and debug export PASS.
  These are automated checks; no new Fedora desktop user acceptance is claimed.
- Shell syntax checks PASS. `git diff --cached --check` PASS.
- Guard `python3 tools/audit_staged.py`: PASS, 100 files/690667 bytes.
- Git actual ignore evaluation across 17629 initial/candidate paths: no unexpected
  nonignored files and no blocked allowlisted files. Synthetic nested original
  copy and renamed-dump paths are ignored.
- Preservation: all 30 frozen-report hashes unchanged. The old 233-file baseline
  has one mismatch, `UpdateablePrompt.txt`, whose living instructions were already
  revised before Git preparation; this task did not modify it. The other 232
  baseline hashes match, including original distribution/emulator evidence.

## Continuation

Git preparation is complete; leave this index intact for user review. Do not
commit or create a remote unless explicitly requested. To see the exact staged
set: `git diff --cached --name-only`; re-run `python3 tools/audit_staged.py` after
any staging change. New source paths need review and an exact `.gitignore` entry.
No source-code license choice was made.

Combat was safely stopped at the user-requested task switch. See
[COMBAT_PAUSED.md](COMBAT_PAUSED.md) and retained run 3 results. Run 4's last
transcript is dos-431.json at voice completion poll 0e00:1dca; owned PTY72866 was
terminated with Ctrl-C (exit1). Defeat is still unverified; native combat remains
unimplemented. Resume the precise fatal-attack/defeat/writeback/return experiment
from that handoff only after the user returns to combat development.
