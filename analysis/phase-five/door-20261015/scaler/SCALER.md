# Door scaler and animated-sheet identity — 2026-10-15

This is new Phase Five static evidence. No original or historical report changed.

## Original sheet 34

The original area loader at file33e7b..33e9d pushes slot `32+i`, selects the
word at DS:9f10+2*i and indexes the 13-byte filename table DS:2a7c. PC1's
selector words are 0,2,3,9. Thus i=2 selects3 and loads slot34 from literal
`kapian3.cmp`, at original IST.EXE file0x1bca3. This is a separate original
resource, not a transformation of KAPI3.CMP. The prior original loader listing
is `../../findings-1509-20261014/area/area-loader-1927-original.asm`.

`source34-provenance.json` preserves literal bytes, member offset and hashes.
Original 3D.CKD member KAPIAN3.CMP at decimal1050525 strictly decodes to
344×119=40936 indices, retained as `KAPIAN3-decoded.indices`. Four86-pixel
horizontal extents are structurally consistent with the door consumer reported
by the separate door investigation. This static report does not claim any
particular frame's observed timing or actual displayed image.

## Scaled core

REA `scale-core-rea.json` Evidence
`ev_977d27af95b7ea598b799398f86be30499691d71fac2a9336c2da781348c479b`
analyzes original resident2599:0018 (Ghidra linear0x359a8 in the existing
derived MZ). `core-original.bin/.asm` independently retain the original resident
bytes, original load-image259a8..25ad3, file27da8..27ed3. The 300 bytes match
the corresponding derived MZ bytes exactly. The original EXE header is9216
bytes; the derived header is11824. No derived binary executed.

The core parameters at BP offsets are:

| Offset | Value |
|---|---|
|+06/+08|source far pointer|
|+0a/+0c|source x/y|
|+0e/+10|source width/height|
|+12/+14|source stride/height metadata (height unused by core)|
|+16/+18|destination far pointer|
|+1a/+1c|destination x/y|
|+1e/+20|destination width/height|
|+22/+24|destination stride/height metadata (height unused by core)|
|+26|transparent key byte|
|+28|flags byte, bit0 horizontal destination mirror|

The core calculates integer `x_step=(source_width<<16)/destination_width`
and likewise y_step. Division truncates before sampling. With zero initial
fraction,2→6 samples source indices0,0,0,0,1,1, not the direct rational formula's
0,0,0,1,1,1. X advances through ROR ESI,16 / ADD ESI,x_step / ROL ESI,16.
Each row restores its starting ESI from EDX before advancing source rows by
the y accumulator's integer part. Y starts at zero. Key pixels still advance
the destination. Bit0 selects decrementing destination pixels, starting at the
rightmost destination pixel; source sampling remains forward. Other flag bits
are not used by this core. No source or destination clipping occurs.

Critical limit: `LDS SI` updates only the low word of ESI. The high word survives
as the initial x fractional accumulator and is restored each row. Its runtime
value cannot be inferred from this routine. The isolated native API requires
`initial_x_fraction` explicitly. This can make sampling reach beyond the nominal
source crop width; supplied bank bounds, rather than crop dimensions, determine
whether the access is valid.

Ghidra's pseudocode is unsuitable for literal transcription here: it mistakes
CS-relative scratch memory (step values/loop counters) for immutable data and
loses the terminating loop, reporting an infinite loop and bogus constants.
Original instructions establish the arithmetic and final RETF.

## Wrapper and bank limits

REA `scale-wrapper-rea.json`, Evidence
`ev_0d39f605d49ae7687f7a15dc5ea57b68cf866d1dc7d6bb6d4c138e88baa2b226`,
analyzes resident0ac6:0c5a, Ghidra0x1b8ba. It reads descriptor entries with
8-byte stride at DS:e29b: width/stride+0, height+2, bank pointer+4/+6.
It calls the memory manager to resolve source and destination offsets, limits
the vertical chunk to both returned bank capacities and relative scale ratios,
calls2599:0018 with key254 and the supplied mode, then advances the respective
source/destination y positions and repeats. Ratios can be recalculated per
chunk; a whole flattened-image rescale is not yet established as equivalent.

REA `memory-bank-rea.json`, Evidence
`ev_8ff47178e20b97b742714cd9d435a1672ba5818a8178286627ac3a97c4cf86f2`,
shows resident09d4:0bb4 selects descriptor mode byte+8==1 for a paged mapping
path, calls2154:07f4 and uses14-bit offsets /16384-byte page arithmetic. Other
modes branch to0d8d. This was a bounded look, not complete bank-manager recovery;
the fallback and paging producer remain outside this investigation. A descriptor
alias alone establishes shared bank identity, not a guessed source filename.

## Isolated Rust module and validation

`rust-port/crates/lale-runtime/src/original_scale.rs` implements a single
contiguous core invocation, with explicit offsets/strides/ratios/key/mode and
initial fraction. It rejects unsafe buffers/16-bit offset wrapping before writes.
It is deliberately not wired into the renderer and does not simulate bank
mapping or infer a wrapper's chunk sequence. Five standalone rustc tests pass:
truncated sampling in both axes, mirrored/keyed pixels, inherited fraction,
reject-before-write behavior, and critical original instruction bytes.

Runtime core-call captures, high ESI observation, and actual original pixels are
still needed before using this module to certify door/destination rendering.
REA's separate ephemeral owned session was closed. GUI Ghidra was untouched.
