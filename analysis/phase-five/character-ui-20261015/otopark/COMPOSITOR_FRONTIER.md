# Original Otopark compositor frontier — 2026-10-15

This follow-up is source analysis, separate from the working background-resource
preview. It narrows the next implementation dependency rather than rendering
guessed perspective geometry.

## New established original state

PC1 entry is (2,1). Loader physical33a88..33aa0 sets direction2 because y<3,
before considering x. The verified1662:0235 direction table gives forward vector
(0,+1). `PcMap::initial_direction()` now preserves this branch order. This does
not enable movement/collision. Focused bytes/listings retain original offsets.

The ordered room compositor is1662 export0070, actual3932 /physical2bd62:

1. 1662:3cdd /physical2c10d
2. 1662:43c9 /physical2c7f9
3. 1662:4f55 /physical2d385
4. 1662:56e0 /physical2db10
5. 1662:58e2 /physical2dd12

All receive the same destination-image byte selector. This is supported by
direct calls and REA `ev_86107d4579c749d6c41c82642760efdb4d4e5f898a983397da7ef88db7b3ca32`.
Do not confuse export0020/8197 with this compositor: it is a transition path that
calls framebuffer copy/scale helpers and changes temporary view dimensions.

## Cell fields8/9 now have concrete visual consumers

The first compositor layer reads cell+9 and adds35 to select an image slot
(physical2c1d1..2c1ee); it reads cell+8 and adds55 for another slot
(2c22b..2c248). Both are actual rectangular blits. The initialization tables
establish the relevant current-cell2 values as:

| Cell field | Stored value | Slot | Loaded original table literal |
|---|---:|---:|---|
|9|2|37|`yer2.cmp`|
|8|2|57|`tav2a.cmp`|

Table DS:2b18 begins slot36 (`yer3.cmp`), then slot37 (`yer2.cmp`). Table
DS:2c1c begins slot56 (`tav1a.cmp`), then57 (`tav2a.cmp`). See original loader
physical33ebb..3412e and new `compositor-frontier-source.json`. The first layer
samples cells several positions ahead/lateral; these current-cell identities
are not a complete draw command for the starting scene. Floor/ceiling are useful
semantic interpretations of source names and vertical draw positions, while the
field-to-slot references are directly established instructions.

## Reusable draw primitive and precise remaining dependency

Original1662:35ff /physical2ba2f consumes a geometry table of18-byte records:
words+0/+2 affect destination x/y (adding DS:3b09/3b0b); +4/+6 provide blit extent;
+8/+10 select source x/y; +12/+14 feed scaling when enabled; +16 is a flag word.
Flag0 calls rectangular0ac6:0430 with callback3599:0341; bit1 alone switches
the rectangular callback to3599:03c4; bit2 enables0ac6:0c5a and bit1 changes its
mode. These descriptions follow pushes/branches, not inferred mirror semantics.
Selected geometry indices9/10/19/20/25/26 add235 to source x for facing0/3.

REA confirms the primitive structure in
`ev_73a65cbe123d7500d830f281023ea67e3c313284992fdbf62982fdaec136a51e`.
Its syntheticDS aliases are misleading in pseudocode; original bytes and the
18-byte pointer arithmetic establish the cited fields. The broader wall
consumer1662:3969 chooses geometry indices from directional field pairs and
dispatches35ff or3471. Full semantics and callback pixels remain unimplemented.

The geometry tables are **generated**, not stored ready for direct rendering:
DS:b490 andDS:b72a are zeroed in the source image. Original1662:15d7
/physical29a07 generates the fallbackDS:b72a template through floating-point
projection helpers. 1662:1e06 tries `.kor` coordinate sidecars and falls back to
the generated template when absent. DUVAR2/3 have no identically namedKOR
members in the prior archive inventory; exact fallback lifetime and all callers
still need verification. A full resource image cannot substitute for these
tables.

Actual REA call for15d7 returned
`ev_eb384e205c5feb545c0f957692fb34f62150aec2e3824e59d74e648e21e5b411`, but
Ghidra encounters bad instruction data and truncates control flow at Borland
floating-point emulation sequences (`INT34..3B`, `INT3D`). That pseudocode is
explicitly unusable as a projection implementation. The far layer3cdd was also
analyzed as `ev_ee1872d20514f13f0476655c5eab3d87569666c6db1896f5e9b4f3a414b5cae5`;
its geometry/global aliases and incomplete blitter prototypes must be checked
against retained instructions before transcription.

**Blocker for a verified composed room:** recover generated18-byte geometry
records (including emulated FPU arithmetic/rounding), actual view dimensions,
scaled/mirrored blit semantics, and all five layer consumers. A narrow DOS state
capture immediately after world geometry setup can independently validate the
tables. Do not invent crop coordinates, use a generic dungeon projection, or
present the centeredUFUK debug view as a completed room.

The shared MCP was opened only after explicit release by the audio agent and
closed after writing `overlay1662.snapshot.json`. GUI Ghidra and originals were
untouched. Original-to-derived mapping is retained with the static wrapper.
