# Native Rust port: first verified subsystem milestone

2026-10-14. This is an initial architecture decision, not a complete game port
feasibility verdict. Rust/Cargo is fixed by promptlale_rust.txt. Phase Three
outputs remain frozen and provisional. New native analysis has independently
traced FLiB directory parsing and the CMP packet decoder into IST's appended
overlays; see EXECUTABLE_LAYOUT.md, ASSET_LOADING_MAP.md and GRAPHICS_SYSTEM.md.

## Current implementable boundary

A bounded FLiB reader and CMP index decoder are sufficiently supported for a
small Rust module. Reading directory offsets/counts, FiLE records, image width/
height and literal/repeat packets does not require inventing game rules. A
headless native asset-inspection CLI can render an authentic decoded image to
an output file and be compared against an independent Python decoder. It must
not be described as a playable port or a recovered gameplay screen.

Strict parsing rejects malformed ranges and unsupported dimension discrepancies.
The original decoder's possible overrun behavior is not a feature to reproduce
as a Rust memory error. Eleven CMP dimension discrepancies remain unsupported
until their generation/consumption and clipping rules are established.

## Workspace and crate boundaries

- `rust-port/crates/lale-core`: deterministic integer dimensions/limits initially;
  only add verified game state, rules, timing and RNG later.
- `rust-port/crates/lale-assets`: read-only bounded proprietary parsing and indexed
  pixels. Keep original palette bytes and resource identity separate from display.
- `rust-port/crates/lale-runtime`: initial native inspection CLI and PPM output;
  future window/audio/input backend behind a separate interface.

The first milestone uses only Rust's standard library, with no network dependency
or chosen game framework. Cargo.lock and offline builds provide reproducibility.
The core and parser are portable; Windows compilation is not yet tested.

## Backend decision remains open

Recovered instructions send palette bytes to VGA DAC ports and use EMS and BIOS/
DOS services. Before selecting SDL3 bindings, wgpu, macroquad or another backend,
recover actual graphics modes, scanline layouts, indexed drawing/transparency,
timing, input and audio mixing. An indexed CPU framebuffer plus palette conversion
is a plausible abstraction, not a final rendering design. Do not implement audio
rates, story, rooms or combat mechanics from filenames or archive names alone.

Preserve 16-/32-bit widths, signedness and wrapping when original instructions
establish them. Static synthetic overlay addresses are analysis coordinates,
not DOS runtime allocations. Recovered pseudocode must be checked against bytes.

## Build and fidelity checks

From `rust-port/`: `cargo fmt --check`, `cargo check --offline`,
`cargo test --offline`, `cargo build --offline`. Use an existing installed Rust
toolchain; installation/system changes require approval.

Packet/bounds tests cover malformed inputs and overflow limits. Real-asset
differential tests compare Rust decoded indices against independently generated
Python reference bytes under extracted/phase-five. Native CLI output should match
the reference preview's pixel values at original dimensions. Record exact checks
and outcomes in the new Phase Four/Five checkpoint; do not infer a successful
build or a DOSBox comparison from this plan.

Unknown: complete overlay semantics, game loop/menu mapping, save layouts, room
scripts, RNG, battle rules, audio rates and driver ABI. Faithful gameplay porting
depends on tracing and observing these subsystems incrementally.
