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
Other comparison tests retain their original `analysis/`/`extracted/`
fixture paths and read them at runtime rather than embedding them in test binaries.

## Publication boundary

New updates include Rust source, tests, build/run scripts and relevant user/setup
instructions. New `analysis/`, `runtime/`, `extracted/`, reconstruction and reference
media files are ignored. Previously tracked `analysis/` files are removed from the current Git tree with
`git rm --cached`; local files and older commits are preserved. Preserve local research,
private fixtures and saves. See [publication policy](PUBLICATION_POLICY.md).

The full fidelity tests still read private evidence files at runtime. Keeping their
test source in Git does not publish the captured bytes. The build and test-compilation
commands above work without those files; do not report unavailable comparisons as
passing. New camping, combat, inventory and navigation comparisons have the same
private-fixture requirement. For native SDL route controls see
[Otopark navigation](../rust-port/NATIVE_OTOPARK_NAVIGATION.md).

For a source-focused update, run `python3 tools/audit_staged.py --staged-only`
after staging, then inspect `git diff --cached --check` and the staged file list.
The full-index/history audit is still available; it can report previously tracked
research paths now covered by the new ignore rules. No historical blobs are removed.
