# Native menu visual study

A small Linux x86_64 SDL2 window now renders the recovered menu from original
resources. It is a visual research prototype, not a playable game or complete
startup reproduction. No DOS code or emulator runs inside it.

From the project root, using the built binary:

```bash
./rust-port/target/debug/lale-menu-reference --root .
```

To inspect presentation stages from black:

```bash
./rust-port/target/debug/lale-menu-reference --root . --stage 0
```

- Space / Backspace: manually step presentation stages forward/backward.
- R: restart the stage study from black.
- Up / Down: wrap the shared menu selection; moving into another mouse region
  can select it. Selection persists outside rows, matching the recovered selector.
- Enter / left click: activate selected row. New Game opens the character
  **background-resource preview**, not a character editor. Continue/Quick Start
  report their selection but do not load a game. DOS Exit closes this harness;
  original credits/exit sequencing is not reproduced.
- Escape: return/reset to the menu. Q or window close: quit the study.

The image is a320×200 logical framebuffer, nearest-scaled with letterboxing.
Default square-pixel8:5 presentation matches the distribution's aspect=false
configuration and reference. `--vga-aspect` explicitly presents it at4:3.
These settings are separate from video capture dimensions.

Implemented imagery comes from ACILISA/B, ACILISA.PAL, DENEYX font pixels and
XDINTRO.RIX pair blending. Upper logo and episode title are independent source
strips with eleven original lookup-generated intermediate buffers; text appears
separately, using original encoded labels, palette indices and one-pixel shadow.
No screenshots, annotation strokes, replacement fonts or flattened menu asset
are used. Five manually sampled palette levels illustrate the separate whole
screen fade mechanism; they are not claimed to be the original update count.

Automatic intro/fade timing, company animations, original cursor art, complete
character creation, save loading, gameplay, audio and Windows presentation are
not implemented. The study uses a native OS cursor. Stage changes and Q/window
close are research controls, not recovered DOS game controls.

ACILISA/B each emit64001 indices. The new stream reader retains all output;
this renderer explicitly reads the original nominal64000-index framebuffer
extent and logs the terminal extra0. It neither repairs the assets nor claims
original allocation safety. The strict asset inspector still rejects all eleven
known dimension discrepancies.

Existing `/lib64/libSDL2-2.0.so.0` supplies window/texture/event APIs. No crate
or system packages were installed. A small isolated FFI adapter declares only
the required SDL2 ABI; the first adapter supports Linux x86_64. A portable
adapter/dependency policy remains work for Windows rather than guessed support.
The asset inspector retains its existing CLI and tests.

Validation: offline build/check, formatting and ten tests pass. Both presentation
aspect options passed a two-frame SDL dummy-video smoke test. Native headless
frame dumps match independent Python source-read views byte-for-byte. The
rendered menu was visually compared with an unannotated video frame. A visible
KDE desktop window and real mouse/keyboard operation have **not** been tested
from the agent's display-limited environment.

Reproducible checks (from rust-port):

```bash
cargo fmt --check
cargo check --offline
cargo test --offline
cargo build --offline
SDL_VIDEODRIVER=dummy ./target/debug/lale-menu-reference --root .. --frames 2
```

For a new, nonexisting output directory, `--dump NEW_DIR` writes native PPMs,
indices and both complete decoded menu streams, without opening a window.
See ../analysis/phase-five/new-reference-20261014/MENU_RENDERING_SPEC.md and
../analysis/NEW_REFERENCE_NATIVE_CHECKPOINT_20261014.md for source provenance,
confidence distinctions and remaining blockers.
