# Native shared renderer and north-door checkpoint — 2026-10-16

The persistent objective remains genuinely navigable Otopark PC1 and Mecidiyeköy
PC2. **It is not complete.** This milestone integrates reusable source-derived
rendering and exact north-door frames; ordinary world Up is still disabled while
its event/UI/acquisition/encounter hosts are implemented.

## Proven against original DOS

- Full original1662:3932 five-layer native command generation matches117 retained
  original rectangle/scale calls in order across PC1(2,1)'s four facings. The old
  captures omitted0ac6:0f21: fresh PC1(2,0),facing0 has11 calls,7 rectangles plus
 4 cropped floor/ceiling strips. Native generation matches all11 in order.
- Native destination pixels now match all40000 original indices. The old545-byte
  difference was precisely the omitted cropped strips. A guessed extra wall was
  never added. The four north-door frames now EACH match40000 original indices
  from clean source65 readbacks; former0/63/257/463 differences are repaired by
  including the original surface passes and bank-aware scaling.
- Original PC2 loader ran under debugger, with its global area selector1 and
  parameter1/flag1. Coordinates were explicitly set to the source-proven arrival
  (3,22), four facings/vectors selected, original slot66 cleared254, compositor
  called and original slot66 read through0430/0341. All four native PC2 views
  match all40000 indices each. This is controlled renderer evidence, not a played
  PC1→PC2 route or a new proof of stair event/animation behavior.
- Ten fresh original scaler-core stacks are predicted word-for-word by recovered
  wrapper windows and EMS nodes. Original allocator rounds to16 and page-aligns
  >=c000h allocations, which covers the selected234/323×214 wall/door sources.
  For the bounded200 fallback shapes, all393216 tested destination alignments
  preserve the chunk sequence; viewport allocation constants are unnecessary.
  Inherited X fraction is explicit; native world-entry policy0 matches the ten
  observed core calls. Other shapes/fractions/context remain bounded/rejected.

## Implemented in the native build

`lale-assets` now contains original PC neighborhood sampling, all five layer
consumers, wall/door source selection and temporary reflection,37×18 projection
record translation, original resource literal tables/aliases, cropped scanline
callbacks, indexed key254 rectangles and bounded bank-aware16.16 scaling. The
projection is the exact original generated200×200 fallback output, not a guessed
camera model; other viewport sizes and KOR sidecars are not claimed. PC1/PC2
selected wall/door resources have no KOR sidecars in original3D.CKD.

The normal native application now generates the existing four starting facings
from map data through these shared systems. Captured per-facing command lists
remain test fixtures only. Existing character creation, party checkpoints,
cinematics, audio diagnostics and turning remain intact.

Original door buffer separation/aperture mask/key merge, original animated sheet
selection and integer geometry are implemented. The visible native rendering
inspection uses all four exact frames,150-source-counter stage minima and guard0
automatic position commit, then the exact destination view. It is deliberately
outside gameplay: it acknowledges no warning, item or encounter operations and
writes no party/save. This is a runtime comparison surface for the same shared
renderer, not completed north-door gameplay.

Core door scheduling/guard commit and graphics9 transition controls exist. PCS
control flow preserves flag/choice skips, movement veto, external-effect barriers
and opcode11's destination/old-move veto. UI, acquisition ownership, encounter
and area-transition presentation still need host integration. Do not simply
acknowledge external events or set flags to permit walking.

## Validation and commands

From project root:

```
cargo test --workspace --offline --manifest-path rust-port/Cargo.toml
cargo build --offline --bins --manifest-path rust-port/Cargo.toml
cargo fmt --manifest-path rust-port/Cargo.toml --all -- --check
./rust-port/target/debug/lale-otopark-room --root "$PWD" --door-sequence
```

All workspace tests, offline builds and formatting checks pass. SDL dummy smoke
runs of BOTH standalone and menu-reference `--door-sequence` run60 frames,
present stages[0,1,2,3] and finish at(2,0). Normal menu8-frame smoke also passes.
These are native runtime checks, not Fedora user desktop acceptance. The user's
previous menu/creation/film/turning acceptance is preserved.

```
SDL_VIDEODRIVER=dummy SDL_AUDIODRIVER=dummy ./rust-port/target/debug/lale-otopark-room --root "$PWD" --door-sequence --smoke-frames 60
SDL_VIDEODRIVER=dummy SDL_AUDIODRIVER=dummy ./rust-port/target/debug/lale-menu-reference --root "$PWD" --door-sequence --frames 60
```

The243 original/historical baseline hashes and30 frozen PhaseThree hashes remain
unchanged. No original game/configuration, GUI project, media or ordinary runtime
save was modified. All new code lives under rust-port. DOS ran only owned copies.

## Exact next actions

1. Continue original warning/choice/dialogue and acquisition-Esc host recovery,
   `analysis/phase-five/world-ui-20261016/` (active separate REA worker). Connect
   event authorization to the verified door animation, then destination mode2;
   unsupported encounters must remain pending rather than be auto-completed.
2. Preserve dog flag1 and key flag2 dependencies. The north destination mode2
   calls encounter8 before flag1 is set. PC1(8,1) key/search acquisition precedes
   flag2. PC1(0,5) stair mode1 requires flag2 and Evet; opcode11 loads PC2(3,22),
   facing3 then vetoes the old move. PC2(4,22)'s original mode1 veto refuses return.
   See navigation-events-20261016/EVENT_NAVIGATION.md for command boundaries.
3. Verify actual DOS graphics9/stair and opcode11 route presentation. Reuse fresh
   owned initialization; do NOT repeat the previous failed entry mistake:
   resident1670 stub0034 maps movement body0000; stub0020 maps4f3a and is unrelated.
   Stub0025 is input0ffc,002a loader1927,002f world dispatcher07b6. The late
   attempted stair control used0020, did not yield a valid observation and was
   terminated. None of its state/output is acceptance evidence. Current DOS
   session63208 is terminated; retained successful captures precede that attempt.
4. Extend native player state/input through verified movement branches and retain
   persistent buffers on turns/transitions. Broaden DOS differentials to more PC1
   and PC2 cells while integrating each proven subsystem. Combat may be necessary
   for the first mandatory encounter; do not invent victory merely to advance.

Evidence:
- phase-five/navigation-renderer-20261016/DESTINATION_MATCH.md and capture/
- phase-five/scene-layers-20261016/NATIVE_LAYER_GENERATION.md
- phase-five/navigation-renderer-20261016/allocator/ALLOCATION_INVARIANT.md
- phase-five/navigation-renderer-20261016/stairs/GRAPHICS9_TRANSITION.md
- phase-five/navigation-events-20261016/EVENT_NAVIGATION.md
