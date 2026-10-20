# Character input and RNG specification — 2026-10-14

New Phase Four static evidence; earlier reports and protected artifacts unchanged. No REA session was used or modified by this subtask: conclusions below come from focused GNU objdump disassembly of original bytes, matched to previously recovered overlay descriptors/export mappings. `source-byte-evidence.json` preserves original offsets, bytes and hashes. Original IST SHA256: `9ba1640ae2ee33579cb1c914d0686346f53c4c7ef6520c7d92262b9c2f06b05e`. Logical overlay addresses are identifiers; actual DOS overlay load segments are dynamic. Resident analysis addresses use synthetic load segment1000; resident physical = analysis linear−0x10000+0x2400.

## Cyclic identity bounds — verified instructions

Logical1694:0202, physical0x49e52..0x49e87 (`original-1694.asm`) takes `(far_pointer, delta_i16, minimum_i16, maximum_i16)`. It adds delta with16-bit wrap, compares signed against minimum, substitutes maximum if too low, then compares signed against maximum and substitutes minimum if too high. This is cyclic endpoint selection, **not clamping or general modular arithmetic**. Large deltas beyond one range still select an endpoint.

Existing character calls establish appearance1..16, race1..8 and sex1..2. Example sex call physical0x3ee81..0x3ee9f passes `(numeric_record+04,+1,1,2)`. Examples for tests: `(16,+1,1,16)→1`; `(1,−1,1,16)→16`; `(2,+1,1,2)→1`; `(1,+100,1,8)→1`. Preserve signed16-bit semantics if generalized.

## Name entry — verified instructions

Caller physical0x3eed4..0x3ef0b invokes resident overlay stub16da:004d, whose actual code entry is16da:0000 at physical0x5cfc0. It passes twelve16-bit words. Relevant callee parameter offsets from BP: far text pointer+06/+08; font mode+0a=1; width limit+10=0x73 (115); draw position+12=17,+14=168; destination buffer+16=0; other source coordinates+18=17,+1a=168; source buffer+1c=1. No explicit text-byte capacity is passed.

The previously recovered party serialization has a37-byte name field. **That does not establish a36-character editor limit.** This editor checks rendered width, not character count. Mode1 width helper16da:06b4 (physical0x5d674) returns accumulated advance minus1. Appending is blocked if current width minus cursor width is already≥115; after tentative insertion, total width including cursor must be≤115 or the insertion is reverted. The displayed cursor is `-`, appended from DS:8f5a; it is removed on successful return. The width therefore depends on the font and cursor, not merely the number of characters. No explicit maximum byte count/whitelist occurs on the generic insertion branch. Very long narrow/control-character inputs and their interaction with the37-byte field require runtime investigation; do not implement a guessed36-character rule or reproduce an unchecked write in safe Rust.

Entry copies the original string aside, appends `-`, draws it, then polls DOS keyboard status/read through1000:2e45 and1000:29d7. A four-key original CS table at physical0x5d664 contains:

|Input byte|Logical16da branch|Effect|
|---|---|---|
|00|017b|Reads/discards a second byte; skips extended key|
|08|0183|Backspace: if cursor-only length1, ignore; otherwise delete previous byte, restore cursor and redraw|
|0d|041f|Exit loop; remove cursor; return AL=1|
|1b|0315|Restore original string, redraw, return AL=0|

All other bytes reach generic insertion, width permitting. Escape differs from backing out of the complete character screen: here it cancels only the name edit. The caller redraws the name without branching on the editor's return value. Mouse polling occurs inside the editor, but no click-based insertion/cancel/confirm branch was found in this entry. Confirm through controlled runtime input before promising additional mouse behavior.

The keyboard data is transformed before storage by16da:0f84 at physical0x5df44. Its exact ASCII special substitutions are `C→87,G→a7,I→8d,O→94,S→9f,U→81` (hex output bytes), then it calls16da:09d1. That second helper converts ASCII A..Z except I to lowercase (implementation upper bound is5b inclusive); its exceptional lookup is `49→8d,80→87,98→69,99→94,9a→81,9e→9f,a6→a7`. These are original byte transforms, not a Unicode casing algorithm; Turkish glyph meanings require the font mapping. Other input bytes are retained. Uppercase keys thus can select alternate encoded glyphs, rather than simply preserve uppercase Latin letters.

### Width calculation

Mode1 references DS:8f65, physical0x22165, literal `T:ALTDUZEY\GRTEXT.L`. For ordinary printable glyphs it derives a glyph index, opens the corresponding data, seeks index×0x8f and adds first byte+2 to the advance. Resource/file helper internals and actual widths must be combined with parent font research. Verified index branches: `21..40→byte−21`, `61..7a→byte−41`, `5b..60→byte−21`, `7b..7f→byte−3b`. ASCII A..Z contributes fixed20. Twelve special encoded bytes use a CS lookup (full raw table in JSON and `width.asm`). Other bytes contribute3. The final return subtracts1. Mode2 instead returns4×strlen−1; the character editor selects mode1.

## RNG and scaled draws — verified instructions

Resident relative0000:1779 (analysis1000:1779, physical0x3b79) reads a32-bit little-endian state from original DS:94c4, multiplies it by0x015a4e35 via near helper16fe, adds1 with carry and stores the low32 bits. It returns `(new_state >> 16) & 0x7fff` in AX. This is now an exact deterministic recurrence, not merely an RNG-looking call:

```
state = state.wrapping_mul(0x015a4e35).wrapping_add(1)
r = (state >> 16) & 0x7fff
```

The file-backed initial state is1, but startup changes it: physical0x7ae4 calls relative0000:190e with a null far pointer, then passes its AX to setter1768 at0x7aed. Setter stores the supplied16-bit seed and zeroes the upper word. Helper190e gathers two DOS date/time-related structures and converts them; exact wall-clock/epoch conversion remains untraced here. Thus state1 vectors are deterministic transcription fixtures, **not observed startup values**. First five from state1:346,130,10982,1090,11656; complete12-call state/return vectors are in JSON.

Resident far1242 is low32-bit multiplication; far12df is signed32-bit quotient (truncation toward zero), with stack arguments. Positive creation draws push denominator32768, get r, multiply by an integer range and divide, giving `floor(range*r/32768)`, hence integers0..range−1. This differs from `r % range`. Recovered general arithmetic is sufficient for narrow deterministic tests, but do not implement the entire generator from unreliable decompilation.

One concrete initial formula at logical167c:0437/physical0x3d037: it calls167c:0000, then computes numeric offset24 (displayed Boy) as `150 + 10*trait_word[1] + draw(25) + draw(25)` (physical0x3d041..0x3d0b7; trait table base DS:9b72+slot*0x24). Next numeric offset26 (Kilo) is `Boy + 10*trait_word[2] −110 + draw(5)+draw(5) −10*(sex−1)` (through physical0x3d165). Trait/race/sex initialization and subsequent field modifiers still need a complete formula audit before claiming generation equivalence. Existing final clamp remains: word indices3..16 minimum50, except word6/Güç minimum3; Boy/Kilo outside that loop.

## Evidence and next tests

Original-byte listings: `original-16da.asm`, `editor-tail.asm`, `width.asm`, `conversion.asm`, `capitalconversion.asm`, `original-1694.asm`, `rng-original.asm`, `rng-multiply.asm`; existing `../character-original-focused.asm` and `../character-resident-original-focused.asm` cover caller and compiler arithmetic. Binary slices are read-only analysis copies; no wrappers were executed. JSON byte ranges can be checked directly against original IST, and SHA hashes identify the slices.

Recommended runtime cases: Tab versus numpad0 naming; C versus numpad5 sex; Enter versus Escape inside editor; extended arrow handling; uppercase C/G/I/O/S/U versus lowercase input; repeated narrow glyphs near width115; cursor width effect at the exact limit; name persistence after saving; identity wrap at endpoints; fixed-seed generation only in an isolated future harness. Manual PDF7 supports naming via numpad0 and sex via numpad5, whereas existing code checks BIOS scans0f and2e. The newly supplied recording may establish visual layout but cannot establish unpressed hotkeys or boundary cases. No runtime observations or full character implementation are claimed by this subtask.
