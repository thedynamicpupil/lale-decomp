# İstanbul Efsaneleri — native Rust port

A faithful native Rust port of *İstanbul Efsaneleri: Lale Savaşçıları*, based on
original DOS behavior and assets. Linux/Fedora is the current target; Windows
support is planned. This is a work in progress.

The playable route includes normal party creation or **Çabuk Başla**, opening
cinematics and audio, Otopark exploration, inventory/equipment, the first dog
battle, victory return and short safe camping. Postbattle navigation now reaches
the original fainted-man search, exit-key event and exit toward Mecidiyeköy.
Stairs currently use the original animation-disabled transition. Further
Mecidiyeköy events, risky/long camping, Afakan battles and general game save/load
remain incomplete. Native creation-party checkpoints are not full game saves.

## Build and test

Use stable Rust/Cargo with rustfmt, SDL2 development/linker libraries and
`libopenmpt.so.0`. The platform backend currently targets 64-bit Linux. Cargo
uses local workspace crates; these commands do not install or download packages.

```sh
cargo fmt --all --manifest-path rust-port/Cargo.toml -- --check
cargo check --offline --workspace --manifest-path rust-port/Cargo.toml
cargo build --offline --workspace --manifest-path rust-port/Cargo.toml
cargo test --offline --workspace --manifest-path rust-port/Cargo.toml --no-run
cargo test --offline --manifest-path rust-port/Cargo.toml -p lale-core --test movement
```

Build and test compilation require no original game assets. The movement target
above is asset-free. Running the full fidelity suite requires private original
files and evidence fixtures; missing fixtures fail explicitly. With the complete
preservation workspace available, run:

```sh
cargo test --offline --workspace --manifest-path rust-port/Cargo.toml
```

## Run

Supply your own legally obtained game distribution under ignored `lale/`.
Room rendering also requires the private 666-byte projection table until its
original generator is reconstructed. See [setup and private fixture
requirements](docs/DEVELOPMENT.md); neither assets nor that table are downloaded.
The port parses `IST.EXE` data without executing the DOS binary.

```sh
./rust-port/play-native.sh
# Optimized build:
./rust-port/play-native-release.sh
```

[Otopark navigation and exact test route](rust-port/NATIVE_OTOPARK_NAVIGATION.md) ·
[First battle](rust-port/NATIVE_FIRST_BATTLE.md) ·
[World inventory](rust-port/NATIVE_WORLD_INVENTORY.md) ·
[Camping](rust-port/NATIVE_REST.md) · [Audio](rust-port/NATIVE_AUDIO.md).

Left/Right turn; Up/Down move forward/backward. F1–F4 open character information;
K camps where supported. See the linked control sheets for inventory, combat and
original event choices. The latest postbattle panel and Otopark continuation have
native automated validation and await Fedora desktop confirmation.

Optional [debugging](rust-port/NATIVE_DEBUG.md): `./rust-port/debug-native.sh`,
F12 overlay, F5 pause and F7 diagnostic export. Runtime exports and saves remain
local. Never overwrite original game files to diagnose a native problem.

## Repository scope

New updates include reviewed source, tests, build/run scripts and relevant user
documentation. New analysis, captures, runtime data, reference media, extracted
assets and saves are ignored. Previously tracked `analysis/` files are removed from the current Git tree
while remaining intact locally and in older commits. Original distribution files, copied/decoded game content,
development prompts and credentials remain excluded. See the current
[publication policy](docs/PUBLICATION_POLICY.md).

Original game content belongs to its rights holders. No source-code license has
yet been selected; public access alone does not grant unrestricted reuse rights.
No game assets are distributed or replaced with generated artwork/audio.

See [contribution guidelines](CONTRIBUTING.md), [architecture](docs/ARCHITECTURE.md)
and [development setup](docs/DEVELOPMENT.md). Unknown mechanics remain explicit
boundaries; passing tests is separate from original DOS runtime verification and
human desktop acceptance. Some research links in older documents refer to private
workspace evidence and are not available in a fresh checkout.

Before publishing an update:

```sh
python3 tools/audit_staged.py --staged-only
git diff --cached --check
git diff --cached --name-status
```
