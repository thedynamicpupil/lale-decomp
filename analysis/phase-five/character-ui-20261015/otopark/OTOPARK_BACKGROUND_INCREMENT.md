# Otopark native resource increment — 2026-10-15

This increment preserves prior area/PCS analysis and adds a directly testable
native resource view. It does not claim to have reconstructed the first room.

## Original-source observations

- Area0's loader chooses `UFUK1.CMP` from the previously verified29-byte area
  table atDS:2e31+24. Physical34236..34292 checks this far pointer and loads it
  into image slot79. The full loader context is retained in the earlier
  `findings-1509-20261014/area` evidence; new focused source bytes are retained
  here with original physical offsets, not synthetic Ghidra addresses.
- Original1670:2521 world initialization loads `pal3d.pal` at physical34452..34460.
  The DS:424b literal is exactly `pal3d.pal\0`. This ties the palette to original
  world initialization rather than relying only on an archive filename.
- The room-rendering overlay is logical1662, original physical28430, size93d6h.
  Its export6b resolves to actual0235 /physical28665, which reducesDS:b9f0 mod4
  and sets the forward-coordinate pair DS:b9c6,b9c4. The jump table establishes
  0=(0,-1),1=(1,0),2=(0,1),3=(-1,0). These are grid vectors; no native movement,
  collision or original input mappings are inferred from them.
- Physical2c3a8..2c5ae tests loadedUFUK slot79 and coordinate bounds, then
  conditionally copies part of that image through the established rectangular
  blitter0ac6:0430 (unrelocated original call encodes segment-index0028;
  descriptor5 resolves to relative segment0ac6).
  This is evidence thatUFUK is a conditional horizon/background layer; it does
  **not** justify drawing the entire image as the composed initial room.
- StrictCMP decode of originalUFUK1 produces exactly200×200=40000 indices.
  ThePAL3D palette is768 bytes with valid six-bit channels. Exact identities,
  offsets and hashes are in `ufuk1-native-provenance.json`. The PNG is a complete
  source-resource inspection with that palette; it is not a DOS screenshot.

The complete linear1662 listing is provided as a search aid. Inline jump tables
and Borland floating-point emulation interrupt operands are present; arbitrary
linear-disassembly lines are not certified instruction boundaries. Focused
listings begin at verified boundaries. The9078 export is a screen-copy helper
with emulated floating-point calculations, not the complete room renderer.

## Implemented native increment

`lale_assets::pc_map::PcMap` parses the verified20-byteAmBk header,
23-byte metadata and exactwidth×height×15-cell extent. It exposes raw cells,
four graphics selectors and the original loader's conditional entry coordinates
without assigning guessed meanings to other fields. Tests read all18 original
PC banks in place, reject truncation and trailing bytes, and verifyPC1's
10×10 extent, initial(2,1), selectors0/2/3/9 and exact starting-cell bytes.

`lale-otopark-background` opens anSDL window using originalUFUK1 andPAL3D.
The title explicitly says **OTOPARK DEBUG RESOURCE / BACKGROUND ONLY**.
All source indices are shown opaquely, centered atx60 within320×200; centering
and complete-resource display are debug inspection choices. Original conditional
crop, wall/floor/door layers, UI, dialogue, sound and all gameplay are absent.
Escape returns andQ/window close quits. The module also exposes a reusable
`run(root, window, smoke_frames)` for the parent application to invoke.

```sh
rust-port/target/debug/lale-otopark-background --root .
```

Checks executed:18-PC corpus test passed; background source/palette preservation
test passed; standalone offline build passed; SDL dummy driver presented3 frames
successfully. New Rust files were formatted withrustfmt. No desktop user
acceptance or original-runtime framebuffer comparison is claimed.

## REA coverage and next renderer work

TheREA skill was followed. Two separateCLI function attempts were made without
touching the sharedMCP or GUI projects. They failed at provider admission with
`runtime_missing`, first usingPATHJava, then explicit
`JAVA_HOME=/usr/lib/jvm/java-25-openjdk`. Direct invocation of thatJava succeeded;
theCLI still supplied no decompilation. Both rejection records are retained.
After the audio agent explicitly released the shared MCP, a separate owned
1662 wrapper was admitted successfully there. Four actual analysis calls and a
snapshot are retained, detailed in `COMPOSITOR_FRONTIER.md`. No dynamic DOS
execution is claimed. The1662 wrapper is explicitly synthetic/static-only and
was never executed.

Next bounded work: continue1662's actual ordered compositor export70 (code3932
/physical2bd62) and horizon-containing function3cdd /physical2c10d. Export20
(code8197) is a transition-copy path, not the base room renderer. Verify geometry
setup and FPU emulation before implementing perspective layers. Resolve actual
viewport dimensions/state, layer-order and
clipping from consumers. Keep the source-resource preview separate from that
future room compositor. ReusePcMap for verified raw state, not an invented
collision grid or map visual. Navigation andPCS execution remain independent
research dependencies.
