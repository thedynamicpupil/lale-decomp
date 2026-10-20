# SEQ sound ring, dynamic dispatch and refill recovery

New bounded follow-up to the complete pixel-codec audit. No previous files,
protected originals, shared REA session or audio devices were changed/used.
`sound-refill-source-evidence.json` retains exact original code ranges/hashes
and independent corpus observations. The earlier pixel-codec report is now
`analysis/phase-five/lifecycle-20261014/recovered-handoffs/seq/VERIFIED_PIXEL_CODEC.md`.

## Verified sound buffer construction

Original16af:0241 /physical58701 receives resource slot48, header word+6
(22050 in these five sequences), and multiplier2. It multiplies the latter
two values and allocates44100 bytes. It clears a19-byte descriptor region
and populates a23-byte runtime record at originalDS:de34+23*slot:

|Record offset|Width|Observed assignment|
|---|---:|---|
|0|4|allocated object/handle pointer|
|4|2|allocator-derived sample handle/value|
|6|2|ffff|
|8|4|2 × header word6|
|12|4|0|
|16|4|2 × header word6|
|20|1|0|
|21|2|cached allocator-derived handle/value|

Fields8/12/16 are consistent with sample length and loop boundaries, but exact
MCP structure semantics are still incomplete. **Type byte0 alone does not prove
unsigned8-bit PCM.** No rate/signedness conversion was performed.

The GHD's initial word6-byte block is copied into the beginning of this sound
allocation by the existing loader. Kind2 records provide another word6 bytes
at GFL record offset, before compressed pixels. Consumer5902c..59048 computes
the destination-half offset:

`((frame_index / header_fps +1) %2) * header_word6`.

Thus frame0 fills half1, frame10 fills half0 and so on for10fps sources.
The pixel packet begins at `record.stream_offset + header_word6` for kind2;
kind0 packets begin directly at stream_offset. This is a streaming sound ring,
not one separate audio effect per displayed frame.

Across all five originals, all246 kind2 records occur at frame indices divisible
by10. Every such image packet overwrites all64000 indices with **zero skip
commands**, giving independently decoded keyframes at roughly one counter-second
intervals. Other kinds may retain pixels through skips. These are corpus-verified
properties; an arbitrary file's kind2 marker alone is not a validation that its
packet contains no skips.

The initial GHD block plus kind2 prefixes give65/28/64/43/51 raw sound blocks
for SEQ1..SEQ5. Those byte totals are not a proof of playable audio duration or
sample format, and the movie stop point may discard buffered sound.

## Playback arguments and indirect mixer boundary

At physical59666..596a1 the player starts the same sample slot48 on two channels,
selected as originalDS:73d7−1 and−2. The stack supplied to the shared routine
physicalf96f (original0d42:014f, analysis1d42:014f) resolves as:

|Argument at BP|Value|
|---|---|
|6|resource slot48|
|8/0a|header word6, high word0|
|0c/0e|64, high word0|
|10/12|0, high word0|
|14|selected channel byte|

The wrapper selects DS:de38+23*slot through original0eae:008f, sends the
BP10/12 value through0eae:01b4, and sends BP0c/0e plus BP8/0a through0eae:00b8.
The established music pan-setting call sites independently identify01b4 as a
pan-like operation, so this sequence requests centered0 rather than treating
that argument as volume.64 and header word6 occupy the subsequent start-call
argument positions consistent with level and frequency. Their final driver
interpretation still needs the indirect targets.

All three wrappers select a68h-byte vtable using
`class = byte[DS:7696+channel]`, `table=DS:7796+class*68h`.
008f calls table+0,00b8 calls table+4 and01b4 calls table+18h.
Initialization zeros these tables. Registration at physical10f16 copies104
bytes from a caller-supplied function table and assigns32 channels per class.
The table's concrete runtime registration source is not resolved here.

This is the actual accuracy boundary: the sequence supplies raw bytes and
frequency/level/pan arguments to a dynamic MCP interface. Neither smooth bytes
around80h nor the numerical22050 value establishes final sample encoding,
stereo arrangement, interpolation, clipping or selected hardware driver.
Two simultaneous centered channels do not alone prove the stored data is stereo.

Physical591e4 onward computes an expected position from counter elapsed time,
header word6 and a modulo2*word6 ring, compares a half index against the MCP
reported playback position, and issues position corrections to both channels
when the halves disagree. The exact backend sample-position units and signed
division overflow edge cases remain unresolved; no native synchronizer was
implemented from this partial interpretation.

## Refill and late-frame behavior

Original16af:0de8 /physical592a8 operates on a circular byte buffer with capacity
DS:d600/d602 and an absolute loaded/read cursor DS:d608/d60a. It prepares the
next relevant record, allowing a768-byte prefix when its palette flag is set.
The consumer separately checks that required palette, sound and image extents
are actually within the buffered region before reading them.

When time advances past an undecoded ordinary kind0 record, consumer58edf..
58efb can return without applying that dependent packet. Recovery/refill scans
forward for a nonzero record kind rather than blindly treating a later delta
as independently drawable. It can reposition the resource stream through
the FLiB member seek stub and update the absolute cursor. Kind2 packets' complete
keyframe property is corroborated by all246 original samples.

Refill limits transfers by remaining file bytes, circular contiguous room and
C000h maximum. The inner read loop uses chunks up to0800h bytes. It yields
when its per-frame time allowance falls to10counter units or less. It does
not simply read every outstanding byte before returning, and a modern fully
cached decoder need not emulate DOS storage latency to inspect original pixels.
Exact ring-wrap/cursor and all recovery branch semantics remain research work;
this pass does not provide a complete standalone DOS stream-planner replacement.

## Narrow verified Rust increment

New `lale-assets/src/seq_timing.rs` implements only two independently useful
integer decisions:

- `frame_index(start,now,fps)`: wrapping32-bit elapsed subtraction and multiply,
  unsigned division by1000, then original low16-bit frame index.
- `refill_has_time(frame_entry_low16,now_low16,fps)`: signed16-bit test
  `(1000/fps - wrapping_elapsed_low16) >10`; zero fps returns an explicit error.

Tests cover99/100-unit frame boundaries,32-bit counter rollover, strict10-unit
budget exhaustion and low-word rollover. Parent owns export wiring/builds.
The functions intentionally do not synthesize host timing, play audio, guess
sample format, seek dependent image packets or claim full stream recovery.

Next focused target: identify the caller of the104-byte MCP class registration
and decode its concrete sample/start/position functions, then validate signedness
and output against a known original cinematic recording. Native visual/movie
inspection can proceed independently using the already verified pixel format.
