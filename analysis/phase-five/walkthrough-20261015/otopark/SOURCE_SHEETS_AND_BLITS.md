# PC1 source sheets and keyed blits — 2026-10-15

## Native increment

F10 and `lale-otopark-background` now inspect nine original source sheets with
PAL3D. Left/Right browses sheets, WASD pans sixteen source pixels, Home resets,
Escape returns. Every visible pixel is a 1:1 opaque source index. Small sheets
are centered; large sheets are cropped and pannable. The title identifies archive,
member, original archive payload offset, dimensions, PC1 selector/field and slot.
These are debug inspection choices, not the game's projection or navigation.
The first UFUK1 page exactly preserves the preceding preview's pixels.

The ordered sheets are UFUK1, DUVAR2, DUVAR3, MERDUST, KAPI2, KAPI3, MERDALT,
YER2 and TAV2A. They are selected through executable/data relationships:

- PC1 metadata[3..7] contains0,2,3,9. Original physical33bcd..33d10 reads those
  four bytes, stores the selectors atDS:9f10, indexesDS:2978 with13-byte stride
  and loads nonzero selected members into slots24+i.
- Original33d13..33e30 similarly indexesDS:29fa and loads slots28+i. Tables
  contain blank entry0, duvar2/kapi2 at2, duvar3/kapi3 at3 and
  merdust/merdalt at9. Thus the stair resources are actual PC1 loader selections;
  their precise room placement is not inferred from names.
- Prior verified consumers2c1d1..2c248 choose35+field9 and55+field8. Initial
  cell(2,1) fields9=2 and8=2 select slots37/57, loaded from table index1 of
  DS:2b18/2c1c: yer2/tav2a. UFUK1 remains area0 slot79.

`source-sheet-provenance.json` retains original identities, literal records,
resource offsets, dimensions and payload/index hashes. The new focused assembly
starts at a verified instruction boundary33bc5. No original/frozen files changed.

## Actual REA findings

Separate ephemeral Ghidra analysis used the existing synthetic/static-only1662
wrapper, then closed the session. Original resident descriptor60 is relative
segment2599; synthetic load addresses3599:0341 and3599:03c4 are not observed DOS
placement. These callbacks are resident bytes, not new engine implementations.

- `blit0341-rea-focused.json`, Evidence
  `ev_f64df38175ae54cbf2bb50b520b999c89ecca296ae61529ad227f63798f62c0b`:
  source and destination row offsets multiply y by respective strides, guard
  high-word overflow, then add x. Inner instructions load[SI], incrementSI,
  compareAL toAH loaded from parameter byte+1e, conditionally storeES:[DI],
  then incrementDI. This establishes a keyed transparent rectangular copy.
- `blit03c4-rea-focused.json`, Evidence
  `ev_7c73de4e55087bdac5836aa051684cdbc96f6554999b23b70810e25efc48813c`:
  same key comparison, source increments while destination decrements within
  each row. It begins at destination x+width-1 and advances the destination
  stride between rows. This establishes horizontal reflection, resolving the
  prior primitive's bit0 callback distinction. It does not establish scaling.
- `sidecar1e06-rea-focused.json`, Evidence
  `ev_3e45c9e25e38b8379a7f18f898097f8072b0c6b44dcdfb23c2a59c425b8477c9`:
  original1662:1e06 allocates29ah bytes=37 records of18 bytes. Failed sidecar
  open frees the allocation and assignsDS:b72a to the resource geometry
  pointer. Successful parsing handles source14-byte records and output18-byte
  records, then hits emulated FPU paths. Bad-instruction Ghidra truncation makes
  its floating-point pseudocode unsuitable for implementation.

These observations do not recover generated geometry, original viewport,
transparent-key value supplied by the higher blitter, scale stepping, full
five-layer draw order consumers, collision or movement. A faithful composed
room remains gated on those dependencies, especially a controlled original
post-world-setup geometry capture. Walkthrough opening-room pixels are visual
reference, not a replacement for these structures.

## Validation

Offline focused tests pass in both menu and standalone targets: existing UFUK
palette/index test plus a new test checking every displayed index of all nine
sheets at both pan extremes, exact resource identities and initial preview
equivalence. Standalone offline build passes without warnings; SDL dummy smoke
presents3 frames and loads all nine sheets. User desktop acceptance and
original-runtime composed-room comparison are not claimed.
