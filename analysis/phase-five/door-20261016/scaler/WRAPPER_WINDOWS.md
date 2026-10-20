# Scaled wrapper bank windows — 2026-10-16

New bounded analysis; prior reports/captures remain unchanged. This does not
certify the withdrawn door candidate or explain its exact463/545 pixel errors.

## Observation and source coordinates

The existing REA wrapper/core/manager dossiers in
`../../door-20261015/scaler/` are reused; no shared REA session was opened.
Direct original instructions retained here resolve the manager branches that
the old Ghidra function boundary omitted. Original EXE MZ header is0x2400 bytes.

| New bytes/listing | Original load-image start | Original file start |
|---|---:|---:|
|bank-resolution-original|a8f4|ccf4|
|ems-map-original|11d34|14134|
|ems-handle-original|11541|13941|
|far-add-original|1477|3877|
|wrapper-chunk-original|ba44|de44|

The existing room/blitters.asm uses original FILE addresses; those must not be
confused with the load-image coordinates used by the new manager listings.

Retained R3-DOOR-ENTRY.BIN descriptor table DS:e29b has8-byte stride. Slots
25,30,34,65,66 all point to DS-local9-byte bank descriptors whose byte+8 is1:
these are EMS allocations. Relevant descriptor contents are:

| Slot | Width×height | Handle | Bytes |
|---|---|---:|---:|
|25|234×214|003e|50076|
|30|323×214|0042|69122|
|34|344×119|0045|40936|
|65|200×200|005f|40000|
|66|200×200|0060|40000|

These bank pointers are not the EMS allocation-node pointers. Original11541
walks a linked list beginning DS:86f0. Each18-byte node has handle+0,
allocation byte start DWORD+2, byte size DWORD+6, next far pointer+0a.
DS:e7b4 points to the node table and DS:e7a8 contains the count. In retained R3,
table/head4c8e:0004, count128: the external2304-byte table was not retained.
The DS snapshot therefore cannot recover actual allocation low14 offsets.

## Mapping and alias write

Original1154:07f4 /load-image11d34 adds the requested resource byte offset to
the node's allocation start, divides by16384 for the logical EMS page, and
returns the remainder plus physical EMS page*16384 in the frame at DS:e7a4.
R3 DS:e7a4 is E000:0000. The mapper can map consecutive pages until the requested
extent fits or it reaches physical page3. Mapping failures return null.

The higher manager09d4:0bb4 maps source at physical page0, destination at page2.
It stores a POINTER to each caller's available-byte local in DS:da2c+7*page,
plus the mapped pointer's low14 remainder and physical page. When mapping the
destination, instructions aa74..aaa4 can WRITE THROUGH the previously retained
source pointer to shorten the source window before page2 aliases it.
Thus source availability must be read AFTER the destination mapping completes.
Capturing only the first manager return can overestimate source capacity.

For the observed zero-offset frame and source0→destination2 mapping, with
successful mapping, nonnegative in-range resource offsets, allocation starts
As/Ad and requested resource offsets Os/Od:

```
Ls = (As+Os) & 0x3fff
Ld = (Ad+Od) & 0x3fff
final_source_available = min(source_size-Os, 32768-Ls)
final_destination_available = min(destination_size-Od, 32767-Ld)
```

The one-byte asymmetry is original: the initial per-window ceiling uses
`page*(-16384)-1`; the alias-shortening write uses `page*16384-first_remainder`.
Do not replace the32767/32768 distinction with a uniform bank-size constant.
Other manager modes exist; mode0 normalizes a conventional-memory far pointer
via resident1477, returning a low offset0..15 and a bounded available count.
No new conventional-memory port policy is inferred here.

## Wrapper arithmetic

Original filede44..df12 computes, using post-map available counts:

```
source_rows = min(remaining_SH, (availableS-SW)/source_stride + 1)
destination_rows = min(remaining_DH, (availableD-DW)/destination_stride + 1)
chunk_DH = min(destination_rows, low16(source_rows*remaining_DH)/remaining_SH)
chunk_SH = min(source_rows, low16(chunk_DH*remaining_SH)/remaining_DH)
```

Every division is unsigned16. The long-multiply helper returns DX:AX, but each
caller executes XOR DX,DX before DIV, deliberately discarding the high word.
The native pure helper preserves this low16 multiplication. Unsafe windows and
zero-progress cases are rejected, rather than reproducing out-of-bounds DOS
behavior or a nonterminating original loop. The loop advances source and
destination y by the respective chunk heights and subtracts both from the
remaining heights; the next call maps again and recomputes both ratios.

Each core chunk resets vertical fraction to0, so splitting can alter pixels.
Reproducible small witness: a whole two-row→six-row draw produces rows
`7,7,7,7,8,8`; two one-row→three-row chunks produce `7,7,7,8,8,8`.
This proves that simply flattening original assets and using a single whole
ratio is not generally faithful. It does not prove which pixels differ in R3.

Core LDS SI retains ESI high16 as initial x fraction, and each completed row
restores starting ESI before adjusting only SI. The manager/map functions inspected
also change SI16 only. This supports persistence of the inherited fraction across
these functions, but does not establish its value at any captured call or across
uninspected callbacks. Capture actual ESI; do not assume zero from these sources.

## Native result and limits

`original_scale.rs` remains unwired. New pure `next_chunk` accepts explicit
post-map windows; `ems_pair_available` accepts actual original allocation starts,
sizes and offsets for the bounded mode1 page0/page2 case. Existing draw logic still
requires explicit inherited fraction. Ten standalone rustc tests pass, including
the chunking witness, destination-limited source rows, low16 multiplication,
alias-shortened counts, and exact original multiply/XOR/DIV bytes.

Reproduce:

```
rustc --edition=2021 --test rust-port/crates/lale-runtime/src/original_scale.rs -o /tmp/lale-original-scale-tests
/tmp/lale-original-scale-tests
```

Next runtime requirement: capture dynamic DS:e7b4 node table/count (or actual
core stacks) and ESI, then compare per-chunk resource-generated output to original
bank bytes. The transient failed instrumentation and lower-bound destination
trace remain unsuitable for native acceptance. No captured pixels replace assets.
