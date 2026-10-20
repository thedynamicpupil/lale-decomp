# Ten original core invocations — 2026-10-16

This extends WRAPPER_WINDOWS.md with new actual DOS fixtures retained by the
root investigation under navigation-renderer-20261016/capture. No emulator or
REA session was opened by this bounded comparison.

`original_scale.rs` standalone regression
`predicts_all_ten_original_dos_core_calls_from_live_allocations` reads the ten
NAV-WRAP0..9 and NAV-CORE0..9 stacks, NAV-CORE0-DS and NAV-NODES. Each wrapper
dump starts at BP (saved BP, return IP/CS, then parameters); core dumps start
at SP (return IP/CS, then parameters). Slot selector AH values are incidental
and normalized only when resolving byte selectors.

The DS bank descriptors and18-byte handle nodes independently establish:

| Source/destination | Slot | EMS handle | Allocation start | Resource bytes |
|---|---:|---:|---:|---:|
|DUVAR2 source|25|62|442368|50076|
|Viewport destination|66|86|1353552|40000|

The source node is padded to50080 bytes, while the higher bank descriptor is
50076. The manager's available-byte ceiling uses the bank descriptor, not the
padded allocation size. The source allocation's low14 remainder is0; destination
remainder is0x2750. No allocation starts were guessed or inferred from pixels.

Five original144-source-row→47-destination-row draws each split into two core
calls:137→45 and7→2. The recovered post-map window formulas, low16 wrapper
arithmetic and original allocation remainders predict ALL18 argument words of
all ten calls, including both exact E000 far-pointer offsets and segment words,
source/destination extents/strides/metadata heights, key254 and mode0.

The fixture test also generates a varying indexed source and compares whole
`draw_ems` output against manual replay of each pair's ACTUAL captured core
heights. All five full-buffer comparisons pass. This tests wrapper translation
and chunk placement; it does not claim original screen-pixel equality, because
that synthetic source intentionally exposes sampling differences.

`draw_ems` is now an available pure unwired translation for the recovered EMS
page0→page2 case. Call offsets are resource byte offsets. Actual allocation starts
and the inherited x fraction remain explicit. It slices each host bank at the
resolved resource offset before invoking the core, avoiding accidental16-bit
limits on a flattened host resource larger than65535 bytes. Unsafe/zero-progress
windows return errors; a later failure can follow prior chunk writes.

Root reports EV ESI=00008700 for every fresh core entry, giving fraction0 for
this experiment. At the time of this subtask's file read,
navigation-renderer-20261016/core-debugger-output.json contained `[]`; the
arithmetic test therefore does not claim retained independent register evidence.
Core stacks cannot establish high ESI. Preserve the raw debugger output before
using the report alone to justify a generic zero-fraction policy.

Validation:11 standalone tests pass. Production renderer wiring, original door
frame equality and complete scene/cropped-layer differential remain with the
root investigation; this result alone does not certify those features.
