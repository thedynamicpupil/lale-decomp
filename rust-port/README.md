# Native Rust continuation

[Room debug overlay, pause and snapshot exports](NATIVE_DEBUG.md):
`./rust-port/debug-native.sh`.

[Current optimized build, controls and limitations](NATIVE_BUILD.md).
Run `./rust-port/play-native-release.sh` from the project root. The connected
native route includes creation, films, opening dialogue, Sivri Daş acquisition,
timed door and destination illustration. It stops at the unrecovered dog battle.
Shared event-gated walking and PC1→PC2 area loading are implemented; full normal
map progression is still incomplete. Original game files remain read-only.

The older milestone notes below are retained as historical context.

Latest native increment: [normal creation → cinematic → Otopark starting view](NATIVE_PLAYABLE_INCREMENT.md).
Run `./rust-port/play-native.sh` from the project root. Four-character stats,
body animation and safe creation-party checkpoints now connect to the original
film and room view; random faces and room interaction remain incomplete.

# Lale native Rust asset milestone

This is a compiled native asset inspector, **not a playable port**. It implements
the FLiB container and a verified subset of CMP decoding. Gameplay, timing,
audio playback and a window backend are not implemented.

```bash
cargo fmt --check
cargo check --offline
cargo test --offline
cargo build --offline
./target/debug/lale-inspect list '../lale/IKON.CKD'
./target/debug/lale-inspect decode '../lale/IKON.CKD' IKON1.CMP IKON1.PAL '../extracted/phase-five/native-ikon1.ppm'
```

Run from this directory. Decode output must be new; existing files are never
overwritten. Originals remain read-only. Palette previews use RGB triplets and
six-bit display expansion `(v << 2) | (v >> 4)`; runtime-calibrated palette and
transparency behavior are still unknown. Eleven CMP dimension discrepancies are
reported as unsupported rather than cropped.

Tests read the user's original distribution and separate Python-decoded
reference indices. Those proprietary files are not embedded in this source.
See the new analysis documents for exact DOS/file locations and limitations.

The assets library also exposes `amf::Amf14::parse` for structural inspection of the15 original AMF v14 modules. It preserves uninterpreted event/sample metadata; audio playback is not implemented. Current validation passes eight tests, including the full262-member CMP corpus and15-module AMF corpus.

A separate Linux native visual research harness is now available as `lale-menu-reference`. See [NATIVE_MENU_STUDY.md](NATIVE_MENU_STUDY.md) for launch/controls and limitations. It uses the existing SDL2 runtime, original menu regions/font/palette and manual presentation stages. Ten tests now pass. The inspector remains strict; all eleven CMP discrepancies are still reported.

The 2026-10-14 continuation adds automatic menu presentation and an evidence-backed
character appearance/name/identity subset. See [current usage and limitations](NATIVE_CHARACTER_MILESTONE.md).

Original SEQ footage can now be decoded for inspection; see
[SEQ frame inspection](NATIVE_SEQ_INSPECTION.md). Native playback and audio remain
pending; this does not replace cinematic footage with static scenes.
