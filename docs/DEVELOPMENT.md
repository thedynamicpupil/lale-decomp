# Development and private data

## Source-only checkout

Build from the repository root with the commands in [README](../README.md).
SDL2 must already be installed, including its linker library. No bundled
emulator is needed for the native binaries. Neither the build scripts nor the
native port download game files.

All test targets compile without private fixtures. Most DOS comparison tests
require original files, local captures or independently generated private
reference results at runtime; the complete test suite is therefore a preservation
workspace check, not an asset-free checkout check. Missing fixtures fail
explicitly. One asset-free integration target is:

```sh
cargo test --offline --manifest-path rust-port/Cargo.toml -p lale-core --test movement
```

With the complete private preservation workspace available:

```sh
cargo test --offline --workspace --manifest-path rust-port/Cargo.toml
cargo build --release --offline --workspace --manifest-path rust-port/Cargo.toml
```

## Private runtime prerequisites

Keep your original distribution under ignored `lale/` without changing its bytes.
The native prototype reads resources directly, including `IST.EXE`, FLiB/CKD
containers, palettes and cinematic streams. It parses executable data; it does
not execute the DOS executable. Full distribution files are simplest because
different inspectors and tests read different resource banks.

The original fixed 200×200 projection generator remains unreconstructed. The
previous prototype embedded its captured output as a Rust array. That captured
table is now external private data: **666 bytes, 37 little-endian records, each
containing nine 16-bit words**. No approximate replacement is provided.

- Default local path: `runtime/native-data/projection-200.bin` in the workspace
  where Cargo built `lale-assets`.
- Override: set `LALE_PROJECTION_200` to an absolute private file path before
  starting the application. The first successful/failed load is cached for the
  process lifetime; restart after changing the path.
- In the existing preservation workspace, the source was the retained
  `analysis/phase-five/playable-20261015/room/projection37x18.bin` capture.
  Git preparation preserved its exact bytes in the default local path.

This file is not obtainable from this repository. A new checkout without that
private evidence can compile and inspect assets, but cannot render rooms yet.
Reconstructing the verified projection generator is future work.

Captured render-command tests also read private `runtime/native-data/facing-N.tsv`
files for facings 0–3. Each line contains a boolean scale flag followed by twelve
tab-separated unsigned words. Their local copies preserve earlier captured
arrays; they are test evidence, not production per-cell rendering instructions.
Other comparison tests retain their original ignored `analysis/`/`extracted/`
fixture paths and read them at runtime rather than embedding them in test binaries.

## Publication boundary

The ignore policy denies every path unless explicitly reviewed and allowed.
Only workspace manifests, audited Rust source/test files, selected native shell
scripts, selected authored notes, and the staged-content checker are allowed.

Keep all originals, nested runtime copies, emulator binaries, manuals, recordings,
screenshots, decoded fonts/images/audio, palettes, command/projection captures,
saves, Ghidra projects, assembly/decompiler exports, logs, caches, build output,
credentials and personal agent settings out of Git. Renaming a dump to `.rs`,
`.txt` or `.json` does not make it source. Newly added files need content review,
an explicit `.gitignore` entry and explicit staging; never use `git add -f` to
work around the boundary.

Run `python3 tools/audit_staged.py` after staging. It checks index blobs, allowed
paths, file modes, size, text encoding and common credential patterns; it prints
paths/categories only when it finds a problem. This supplements content review
and cannot establish authorship or detect every possible secret.

No remote, commit, release, license grant or publication is part of the initial
Git preparation. The original private workspace and historical evidence remain
on disk and excluded.
