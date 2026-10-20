# SEQ pixel codec and authentic cinematic frames

Original16af:0390 /physical58850..5898f is now transcribed in the new Python
tool `tools/extractors/decode_seq_trial.py` and Rust `lale-assets/src/seq.rs`.
Original files and earlier research remain unchanged. Physical assembly and
exact source-byte hashes are retained here.

## Embedded filmed title: decoded evidence

`seq1-trial/seq1-0050.png` decodes original frame50 at320×200 with its original
palette. It shows filmed night-city footage and the embedded pixel titles:

**İSTANBUL**

**Bosfor Savaşı’ndan Elli Billah Sonra...**

The apostrophe's exact typographical identity is a visual transcription; the
word **Sonra** is clear. These words are encoded into the filmed image pixels,
not drawn from the separate DS:4d61 narrative string. This corrects the recalled
“Önce” title while preserving that recollection historically. The unscaled
palette and64000 raw indices accompany the PNG. PNG preview expands six-bit
channels by `(x<<2)|(x>>4)`, an inspection convention, not a calibrated capture.
Frame99 shows another live-action shot, confirming this is a moving filmed
sequence rather than a single illustration.

## Instruction-backed packet rules

For commandC, letN=C&15 and expanded lengthE be:

|Bits5..4|E|
|---|---:|
|00|N|
|01|16+2N|
|10|48+4N|
|11|112+8N|

Command priority is bit7, then bit6:

- Bit7 set: copy `(C&127)+1` literal bytes.
- Bit7 clear, bit6 set: skip `E+1` destination indices, retaining prior pixels.
- Both clear: repeat the next byte `E+3` times.

The original decoder stops at compressed-end or64000-byte destination-end.
It never clears the destination before each update. The playback initializer
clears it once. Therefore packets must be applied chronologically to retained
frame state; arbitrary frame seeking is not implemented by this transcription.
The safe Rust decoder rejects packet overflow, truncated literal/repeat data
and unexplained compressed tail instead of reproducing memory corruption.

## Record and palette semantics

Consumer16af:0996 /58e56 uses record byte0:

- Kind0: pixel packet begins at record dword+3.
- Kind2: a `header_word6`-byte sound block precedes that pixel packet.
- Kind1: no pixel update; previous image is retained.

Record word+1 is the compressed pixel byte count. Record byte7 bit7 selects
a768-byte six-bit RGB palette immediately **before** record dword+3. Otherwise
the original baseline GHD palette applies. This baseline restoration is
explicit:58fa7 tests DS:d61a,58fae pushes DS:d630 (GHD header+16),58fb2 uploads
it and58fba clears the active flag. Consecutive flagged frames select their own
preceding palettes; an unflagged hold frame also restores baseline as needed.

This is not an indefinitely persistent last-palette convention. The decoder's
palette result is the palette applicable to the selected chronological frame.

## Complete five-sequence verification

All2433 records were processed from original GFL/GHD resources. All2396 pixel
updates consumed **every compressed byte** and advanced **exactly64000 indices**;
there was no cropping, truncation, padding, leftover compressed input or
destination overflow. SEQ5 contains37 kind1 hold records. Counts:

|Sequence|Records|Pixel updates|Flagged palettes|
|---|---:|---:|---:|
|SEQ1|636|636|0|
|SEQ2|268|268|0|
|SEQ3|622|622|0|
|SEQ4|415|415|20|
|SEQ5|492|455|58|

Per-frame source offsets, compressed/index/palette hashes and packet counts
are retained under each `seqN-complete/evidence.json`; selected authentic PNG,
indices and pal6 artifacts accompany them. `codec-source-and-corpus-evidence.json`
summarizes byte-accounting results and original source ranges. Visual inspection
covered selected SEQ1 frames; complete byte accounting is not equivalent to
visual validation of every shot.

Rust API: `SeqHeader::parse(ghd)`, then `apply_frame(index,gfl,&mut[64000])` in
chronological order. It exposes original palettes and uninterpreted sound blocks.
`decode_packet` is independently callable. Tests cover all command-mode boundary
lengths, malformed packets, palette restoration, all five original sequences,
and differential comparison with the independently transcribed Python frame50
indices/palette fixture. Parent integration owns export wiring/build execution.

## Remaining timing, sound and refill work

Type2 records occur64/27/63/42/50 times respectively, consistent with roughly
one sound block per10fps-second. Original code computes a two-half destination
offset using `((frame_index/fps+1)%2)*header_word6`; it is therefore not safe
to equate every compressed frame with an independent sound clip. Audio format,
sample interpretation, two-channel playback and synchronization still require
driver/mixer tracing. No sound was converted or played here.

Refill16af:0de8 /592a8 uses a circular stream buffer, record positions, palette
prefix allowances, C000h transfer caps and0800h read chunks. It can reposition
past missed data and stops background refill when the frame's time budget has
10counter units or less remaining. Its exact recovery/state behavior is not
implemented by the complete-resource offline decoder. A faithful player must
keep these timing/recovery questions separate from the now-tested pixel format.
