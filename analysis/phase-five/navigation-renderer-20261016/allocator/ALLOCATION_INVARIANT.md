# Original EMS allocation alignment and native projection choice

This new2026-10-16 investigation resolves the scaled renderer's dependence on
captured allocation starts for the bounded200×200 fallback projection subset.
Protected originals and earlier evidence remain unchanged.

## Actual original allocator

REA `allocate-rea.json`, Evidence
`ev_46d47c30fcff14b28ab7b3491baff52f69e703ce18e8937aba948e97c7284725`,
analyzes original1154:0410, load-image11950 /IST.EXE file13d50. The query's
requested linear21951 resolved to the enclosing real entry21950; original ENTER
bytes establish the boundary. `allocator-original.bin/.asm` retain original
load-image11593..11d33 including allocator initialization, allocation and free.
REA's separate owned session was closed; GUI Ghidra was not touched.

Allocation rounds requested size UP to16 bytes. Requests whose rounded size is
at least0xc000 (49152 bytes) align the allocation START up to a0x4000-byte page
boundary. Smaller allocations use the previous node's end without page rounding.
The original scans every linked-list gap and retains the smallest sufficient
gap; equal-size gaps keep the earlier candidate. It is best-fit, not first-fit.
Freeing unlinks the node; later allocations can reuse its gap. Handle IDs increase
independently of node-table slot reuse.16-byte size rounding and large-bank page
alignment are explicit original instructions at11990..119bd and119c8..119f2,
repeated for the selected allocation's start at11aea..11b35.

Thus small viewport start placement depends on prior allocation/free history.
Reproducing every original small-bank start would require that full lifecycle;
resource dimensions and the area-loader order alone do not establish it.

## Proven invariants for the current projection subset

All wall/door/stair source sheets selected by PC1 and PC2 are234×214=50076 or
323×214=69122 bytes. Both exceed49152, so their allocation START low14 bits are
ALWAYS zero under this original allocator, independent of allocation history.
NAV-NODES additionally corroborates page alignment for all captured large live
nodes. A bank descriptor's decoded-data size remains distinct from the allocator's
padded node size; do not treat padding as image data.

The200×200 fallback geometry table contains12 scaled records, each source
height144, destination height29 or47 and destination width at most48. Their
largest destination byte span is `(47-1)*200+48=9248`, less than16384.

The original mode1 destination page2 mapping has available count at least
`32767-16383=16384` before its resource-size ceiling, for EVERY possible allocation
remainder. Since each complete draw's span is<=9248 and its resource extent fits,
destination availability never restricts any of these12 records. The same holds
for every smaller remaining chunk. Its actual low14 allocation remainder is
therefore immaterial to their scaled output. Only the source window limits the
original chunk sequence, and that source remainder is proven zero.

This is a source-backed invariance proof, not an arbitrary placement policy.
It does not justify using allocation remainder0 for smaller source banks,
different geometry dimensions, conventional-memory mode, or larger destination
rectangles. Those remain rejected by the guarded native entry point.

## Native implementation

Shared implementation is now `lale-assets/src/original_scale.rs`. The runtime
file is a standalone-compatible reexport shim, preserving the earlier rustc test
command. Public `draw_fallback200(source,destination,written,ScaleCall)` checks:

- Original source234/323 stride×214 height and large-bank alignment threshold.
- Source y0, source height144, source width86/144.
- Viewport40000 bytes/stride200, destination y76/86, height29/47, width28..48.
- Destination extent fits and has the proven<=16384-byte bound.
- Explicit initial x fraction0, the native-entry policy for this scoped path.

It calls the recovered per-window wrapper using source remainder0 and a
mathematically immaterial destination representative. It does not load a DS
snapshot, copied allocation table, captured start constant or readback image.
For other situations the lower APIs still accept actual allocation starts and
fraction explicitly; guarded fallback rendering rejects unsupported inputs.

## Validation and limits

Thirteen scaler tests pass in Cargo and through the runtime standalone shim.
The new exhaustive test compares the entire chunk sequence for ALL16384 possible
destination allocation remainders, for all12 scaled fallback records and BOTH
234/323 source strides:393216 combinations. Every sequence equals the zero
destination representative. Original byte assertions independently check the
allocation threshold and page-rounding instructions; a live-node test checks
every captured large active node's actual alignment.

The ten actual core-call argument comparisons remain exact. Five varying-source
pixel replays using actual captured allocation starts additionally match the
allocation-independent guarded entry point over the whole40000-byte destination.
These exercise original captured call geometry; they are not a standalone
original framebuffer comparison. Complete scene/door pixel comparisons belong
to the root integration, including cropped commands, buffer lifetime and events.

Initial x fraction0 remains an explicit bounded native-entry policy supported
by the root's observed ESI00008700 core trace, not a universal original invariant.
Allocator alignment does not establish register values. Full allocator lifecycle
reconstruction is no longer required to render this proven projection subset.
