# Recovered function frontier

Addresses are static analysis coordinates. Use EXECUTABLE_LAYOUT.md for source mapping and overlay caveats.

| Function/frontier | Analysis or logical address | Status |
|---|---|---|
| Main and six-way menu-state switch | 1546:0001; switch0590 | Original table verified; manually repaired Ghidra body |
| Intro/main menu | overlay1682:054d | Resource calls and state-return path observed |
| Credits | overlay1682:217c | thanx.doc and grup image/palette references |
| Intro/demo sequence | overlay1682:3790 | Initial REA analysis retained |
| Initialization candidate | overlay1670:1927 | Main call target verified; behavior pending |
| Game-loop target | overlay1670:2521 | Main call target verified; behavior pending |
| Archive open/lookup/read | overlay16cd:0047/0342/053c | Structure and lookup path verified |
| CMP loader/decoder | overlay16b5:052a/043b | Packet behavior verified; rendering pending |
| VGA palette upload | resident linear1c7fc | Port writes observed |
| AMF parser | resident2063a | v14 parser and corpus corroboration |
| AMF loader | resident20da3 | Open/magic/parser linkage observed |
| Keyboard wrappers | resident129d7/12e45 | DOS input/status wrappers |
| Timer initialization | resident20f6d | IRQ08 vector operations observed |
| Driver registration | resident1df20 | Initial identification; ABI pending |
| Pointer release | resident1dd9f | Free/zero behavior; not playback |
| Overlay interrupt handler | resident227a8 | Original-byte assembly observation |

REA dossiers are retained in analysis/phase-four, with new menu and AMF records under continuation. Local manager assembly is separately labeled; no claim that Ghidra recovered those functions automatically. Save/load serialization, movement, combat rules, map semantics and complete render/audio loops remain unrecovered.
