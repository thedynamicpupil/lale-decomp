# Contributing to İstanbul Efsaneleri: Lale Savaşçıları

This project preserves the DOS game's behavior through a faithful native Rust
port. Linux is the first platform; Windows is planned. The goal is a complete
playable port, preserving original arithmetic, data formats, indexed graphics,
input behavior and timing. Unknown behavior remains explicitly unsupported.

## Environment and first checks

Use stable Rust with Cargo and rustfmt, Python 3 for research/audits, and an
SDL2 development/linker installation for native binaries. Install prerequisites
using your platform's supported tools; project scripts do not install packages.
The workspace uses Rust 2021 and local crates, with no external Cargo packages.
From the repository root:

```sh
cargo fmt --all --manifest-path rust-port/Cargo.toml -- --check
cargo check --offline --workspace --manifest-path rust-port/Cargo.toml
cargo build --offline --workspace --manifest-path rust-port/Cargo.toml
cargo test --offline --workspace --manifest-path rust-port/Cargo.toml --no-run
cargo test --offline --manifest-path rust-port/Cargo.toml -p lale-core --test movement
python3 tools/audit_staged.py
```

The full runtime test suite needs private originals and evidence fixtures. Missing
fixtures are explicit failures, not silently skipped fidelity checks. You can
contribute documentation, synthetic parser/malformed-input tests, pure simulation,
tooling and review without game files. Do not replace missing fixtures with
invented game data. See [development setup](docs/DEVELOPMENT.md).

## Repository guide

- `rust-port/crates/lale-core/`: deterministic simulation and arithmetic.
- `rust-port/crates/lale-assets/`: resource parsing and rendering primitives.
- `rust-port/crates/lale-runtime/`: native SDL presentation, input and diagnostics.
- `tools/`: inventory, extraction, analysis, Ghidra helpers and publication audits.
- `analysis/`: assembly, pseudocode, experiments, reports and dated checkpoints.
- `extracted/`: publishable extraction metadata; decoded game resources stay local.
- `runtime/`: publishable run notes/configuration; game copies and raw captures stay local.
- `docs/`: architecture, living state, roadmap, development and publication policy.
- `.github/`: issue and pull request templates.

## Original files and publication

Obtain the game independently and legally. Nothing in this repository grants
rights to the game's executables, artwork, fonts, music, dialogue or manual.
Keep the original distribution read-only in ignored `lale/`; create disposable
emulation copies for experiments. Never execute unknown DOS/Windows binaries on
Linux directly. Never modify the bundled `DOSBox/`, `dosbox.conf`, protected
original Ghidra GUI project, saves or reference recordings.

The repository includes research, maps, manifests, assembly, checkpoints and tools
by default. It excludes original distribution content and copies (including decoded
assets/raw memory), development prompt TXT files, and secrets. Large lossless
research traces can use compression or Git LFS after content review. Build/cache
products are regenerated locally. Read [publication policy](docs/PUBLICATION_POLICY.md)
and inspect both `git diff --cached` and `python3 tools/audit_staged.py` before a
commit. Never force-add original content. File extensions cannot prove provenance.

No source license has yet been selected. Public availability alone is not an
open-source license; contributors and maintainers must resolve licensing before
claiming unrestricted reuse or publishing licensed releases. Do not add an
unapproved license or submit code you lack permission to share.

## Evidence and reverse engineering

Use original instructions/overlays, resource structures, controlled original DOS
readbacks and manual descriptions as separate authorities. Existing REA/Ghidra
analysis uses owned workspaces, separate from the protected GUI project. Validate
critical decompiler results against 16-bit instructions, relocations, call/return
semantics, segment:offset addresses and file offsets. Pseudocode is analysis,
not production source. Filenames such as IKON, MUZIK, SOUNDS and SAVAS are semantic
hypotheses until structure, references and decoded output corroborate them.

For each finding record:

1. Question, date, tool versions, input hashes, source offsets/addresses and scope.
2. Reproducible setup: natural entry or conditioned debugger state, seed, inputs,
   relevant registers/memory and exact commands or script.
3. Observation, inference, hypothesis and limitation as distinct statements.
4. Expected/actual values, comparison method and links to publishable evidence;
   identify private omitted fixtures by hash/path without embedding their contents.
5. Contradictions, unresolved consumers, unsupported paths and next experiment.

Use evidence labels consistently: `MANUAL`, `USER-OBSERVED`, `STATIC-BINARY`,
`CONDITIONED-DOS-RUNTIME`, `NATURAL-DOS-RUNTIME`, `RUST-TESTED` and
`FEDORA-USER-ACCEPTED`. A manual is not a formula specification; a conditioned
helper invocation does not verify the entire normal launch path.

## DOS versus Rust validation

Compare the same boundary with the same initial state, RNG seed/draw order,
input sequence and timing assumptions. Preserve signedness, 16-bit wrapping,
integer division, palette indices, buffer strides and original byte offsets.
Prefer exact state/framebuffer/palette/command comparisons and explain any
mismatch. Describe host timing or audio approximations explicitly.

Keep pure numeric tests, malformed-input tests, original fixture differentials,
SDL dummy smoke checks and human desktop acceptance separate in reports. A build
or screenshot does not establish playability. Debug F12/F5/F7 observations must
not mutate gameplay state or RNG. Do not bypass pending events, grant flags,
fabricate combat outcomes or substitute captured frames for general renderers.

## Code and tests

Keep parsing, deterministic game logic, presentation/input and persistence
separate. Extend sufficiently understood subsystems in `rust-port/`; retain
working behavior and diagnostics. Use clear unsupported/error paths for unknown
formats/events, checked bounds and meaningful malformed-input tests. Preserve
original arithmetic intentionally rather than relying on accidental overflow.
Avoid unrelated refactors, dependencies and guessed mechanics.

Run formatting, offline check/build and applicable tests. Compile all test targets
without assets. With the private preservation workspace, run the entire offline
suite and release build; perform relevant runtime/differential checks when behavior
changes. Record commands, outcomes and missing prerequisites honestly. Never mark
unrun tests or headless checks as desktop acceptance. Add synthetic tests where
possible; do not commit assets as convenient test fixtures.

## Branches, commits and pull requests

Branch from current `main` with a descriptive name such as `research/turn-order`
or `fix/cmp-bounds`. Keep commits focused and describe the behavior or evidence
changed. Avoid unrelated reformatting and generated build products. Run the staged
audit and inspect the complete staged list before committing.

Open a PR using the template. Explain the concrete problem, final change,
evidence/provenance, verification and remaining uncertainties. Link the issue and
new checkpoint, identify private prerequisites, and distinguish implementation
from research-only findings. Do not force-push shared history or rewrite evidence
without maintainer agreement. Maintainers review fidelity, preservation, content
provenance and tests; passing CI alone does not certify behavioral parity.

Use the bug, research or feature issue templates. Include reproducible commands,
platform/toolchain, observed versus expected behavior and evidence boundary.
Never attach original assets, manuals, executables, raw dumps, credentials or
private recordings to public issues. Describe hashes and offsets instead.

## Historical evidence and living status

Existing reports, manifests and checkpoints are historical records. Phase Three
outputs remain frozen and provisional; Phase Four must not be declared complete.
Do not regenerate, normalize or overwrite them to agree with a newer hypothesis.
Write a new dated checkpoint linking the old evidence and explaining corrections.
Preserve the byte hashes in `analysis/phase-four/prior-output-preservation.json`.

After a bounded milestone update `docs/PROJECT_STATE.md`, `docs/ROADMAP.md` and
`docs/FIRST_PLAYABLE_PATH.md`. State what is observed, implemented, tested,
user-accepted and unresolved separately, with the next reproducible action and
blocker. Older checkpoints may contain superseded publication or status claims;
new dated guidance explains the current position without erasing that history.
