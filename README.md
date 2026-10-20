# İstanbul Efsaneleri — native Rust port

An independent preservation and reverse-engineering project for *İstanbul
Efsaneleri: Lale Savaşçıları*. The goal is a faithful native implementation of
verified DOS behavior, starting with Linux/Fedora. This is a work in progress.

The connected native prototype supports character creation, native party
checkpoints, opening cinematics, and the opening Otopark dialogue, item-acquisition
and animated-door sequence. It stops at the first combat encounter. **Native
combat, full exploration and complete game saves are not implemented.** Windows
support is a future target.

## Repository contents and rights

Rust code, tools, tests, reverse-engineering research, assembly analysis, maps,
reports, manifests and historical checkpoints are included wherever feasible.
Original game distribution files, copied/decoded game assets, development prompt
TXT files and secrets stay outside Git. See [publication policy](docs/PUBLICATION_POLICY.md)
for exact boundaries, technical omissions and the audit.

Original game content belongs to its rights holders. Supply your own legally
obtained game distribution locally. No source-code license has yet been selected;
public access alone does not grant unrestricted reuse rights.

## Build

Use a current stable Rust/Cargo toolchain and an existing
SDL2 development/linker installation. The current platform backend targets
64-bit Linux. Cargo dependencies are local workspace crates; these commands
do not download dependencies or install system packages.

```sh
cargo build --offline --workspace --manifest-path rust-port/Cargo.toml
cargo test --offline --workspace --manifest-path rust-port/Cargo.toml --no-run
cargo fmt --all --manifest-path rust-port/Cargo.toml -- --check
```

Source-only builds and test compilation require no game assets. Executing the
native application requires private original resources under `lale/`. Room
rendering additionally requires the privately retained projection records until
their original generator is reconstructed. See [development and private data
setup](docs/DEVELOPMENT.md) before running:

```sh
./rust-port/play-native-release.sh
./rust-port/debug-native.sh
```

In the room, F12 toggles the state overlay, F5 pauses, and F7 exports a diagnostic
bundle under ignored `runtime/native/debug/`. These exports contain original
resource data and must remain private. See [debug controls](rust-port/NATIVE_DEBUG.md)
and [current native controls](rust-port/NATIVE_BUILD.md).

## Development

The workspace separates `lale-core` simulation, `lale-assets` parsers/render
primitives, and `lale-runtime` native presentation and input. Unknown mechanics
remain explicit barriers. Original instructions and controlled DOS observations
guide implementation; passing a unit test does not establish full game fidelity.

Read [CONTRIBUTING.md](CONTRIBUTING.md) for environment setup, evidence standards,
DOS/Rust validation, tests, issues and pull requests. See also
[architecture](docs/ARCHITECTURE.md), [development prerequisites](docs/DEVELOPMENT.md),
[living project state](docs/PROJECT_STATE.md), [roadmap](docs/ROADMAP.md) and
[first playable path](docs/FIRST_PLAYABLE_PATH.md). Some linked raw fixtures are
intentionally private; historical checkpoint status is superseded by later notes.

## Roadmap and current limits

1. Recover reusable combat/world execution, actor scheduling, attack/AI,
   equipment and genuine outcome/writeback before enabling native combat.
2. Complete the first Otopark battle and authentic return to world state, then
   earned-key/stair transitions and full Otopark/Mecidiyeköy navigation.
3. Recover remaining systems, save/load, content progression, original audio and
   timing behavior, then broaden platform support toward Windows.

Pure source-backed world clock/timer modules and combat-table readers exist;
that does not mean a playable battle is implemented. Current room rendering
requires private projection data whose original generator is still unrecovered.
Asset-free contributions and all-test compilation are supported. Full tests need
local original/evidence fixtures; see development setup.

Before a commit, inspect `git diff --cached`, run `python3 tools/audit_staged.py`
and `git diff --cached --check`. New research is included by default; review its
provenance before staging. Keep original game files read-only and preserve saves
and historical evidence. Use the GitHub issue/PR templates when contributing.
