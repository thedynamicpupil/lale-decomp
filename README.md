# İstanbul Efsaneleri — native Rust port

An independent preservation and reverse-engineering project for *İstanbul
Efsaneleri: Lale Savaşçıları*. The goal is a faithful native implementation of
verified DOS behavior, starting with Linux/Fedora. This is a work in progress.

The connected native prototype supports character creation, native party
checkpoints, opening cinematics, and the opening Otopark dialogue, item-acquisition
and animated-door sequence. It stops at the first combat encounter. **Native
combat, full exploration and complete game saves are not implemented.** Windows
support is a future target.

## What this repository contains

- Independently written Rust parsers, simulation modules, SDL2 presentation and
  diagnostic tools, plus their test source.
- Local build/debug scripts and independently authored development notes.
- No original executable, artwork, fonts, dialogue database, music, manual,
  emulator, save, recording, extracted resource, Ghidra database or memory dump.

Original game content belongs to its respective rights holders. This repository
does not grant rights to that content. Supply your own legally obtained game
distribution locally. No source-code license is assigned by this preparation.

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

See [architecture and research status](docs/ARCHITECTURE.md) for the verified
boundary and [development](docs/DEVELOPMENT.md) for tests and contribution rules.
Private research archives referenced by source comments are intentionally absent.

The root `.gitignore` uses an explicit file allowlist. New files stay ignored
until reviewed and added to that list. Before any commit, run:

```sh
python3 tools/audit_staged.py
git diff --cached --name-only
```

Do not force-add private resources or generated output. Keep original game files
read-only and preserve local historical research and saves.
