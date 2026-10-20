# Executable layout and control flow — continuation checkpoint

Phase Four remains incomplete. Original files and the original Ghidra GUI project are preserved. Physical offsets below address the original IST.EXE; analysis addresses use Ghidra's chosen load base, never an observed DOS runtime base.

## Verified structure

IST.EXE is 385,328 bytes. Its MZ header is 0x2400 bytes; declared image extent is 0x28410. The trailing FBOV area begins there, with payload base 0x28420. There are 61 eight-byte segment descriptors at physical 0x18800, 16 overlay slots (one empty), 280 export stubs, and 8,538 relocation entries. See [layout evidence](phase-four/overlay-layout.json).

Resident analysis linear addresses map to physical `0x2400 + linear - 0x10000`. Relative overlay segment identifiers describe resident stubs; loaded overlay segments vary dynamically. Derived wrappers assign analysis segment 0x4000 and are static-analysis artifacts, never executable replacements. Each derived artifact has provenance and patch records in phase-four/derived.

## Main switch correction

Original main begins at physical 0x7861, analysis 1546:0001. At 1546:0590, original bytes `2e ff a7 58 09` jump through CS:[BX+0958]. The original table at physical 0x81b8 contains 059c,0796,0595,07b0,07bd,0919. After decrementing the returned value and doubling the index, values 1–6 select those six offsets in CS=1546. Physical 0x81b6 contains LEAVE/RETF; reachability of that epilogue is still unproved.

[Exact byte evidence](phase-four/continuation/switch-byte-evidence.json) supports the table. [Corrected Ghidra output](phase-four/continuation/main-switch-override.json) uses an explicit analyst jump-table override and a manually bounded 2,391-byte main body. It fixes the erroneous merged regions but does not independently validate every pseudocode statement or stack variable. Failed earlier context-only analysis remains preserved.

## Overlay runtime corroboration

Original-byte assembly at analysis 0x222c4 reads the MZ header, seeks past its declared extent and verifies FBOV. The manager installs interrupt 0x3f; handler 0x227a8 obtains the stub return frame and dispatches loading. Relocation loop 0x226d5 masks each stored descriptor index with 0xfff8, looks up the descriptor segment, and writes it into the loaded code. Stub patcher 0x22947 writes far JMP entries; 0x22965 restores unloaded INT 3f stubs.

These are targeted local objdump observations, not recovered REA functions. [Runtime crosscheck](phase-four/continuation/runtime-relocation-crosscheck.json) agrees with the earlier mapping for all 8,538 entries; all 61 descriptor segment words are MZ relocation targets. No observed entry uses the special low-bit path. Dynamic allocation, eviction and stack repair remain unresolved. Assembly is retained in phase-four/continuation/overlay-*-resident.asm and overlay-relocation-runtime.asm.

## Initialization, menu and loop frontier

Resident startup reaches main; main opens the package set and repeatedly calls overlay 1682 stub 002a, actual overlay code 054d (physical 0x3faed). That function loads intro/menu images and music, handles input and returns menu state. Branches lead to overlay 1670 stub 002a (code1927, physical33837), stub007a (code2521, physical34431), and stub0075 (code8524, physical3a434). These are concrete initialization/game-loop investigation targets; their complete gameplay semantics are not recovered.

Menu state 6 calls overlay1682 stub0039, code217c (physical4171c). Analysis shows credits resources thanx.doc and grup.pal/grup.cmp; calling it simply an exit routine was premature. See [menu REA bundle](phase-four/continuation/menu-overlay1682-rea.json).
