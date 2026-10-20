# SEQ PCM driver boundary — 2026-10-15

New evidence only; prior sound audit and accepted silent preview preserved.
No DOS driver was executed. Source byte ranges and hashes are retained in
`driver-source-evidence.json`, with focused physical-offset disassembly.

## Observed original implementation

REA resident registration function evidence
`ev_59c643938b84c8e622317c3b9509c86d884c74ed4e403f8becdd3251fa18ed05`
(`registration-rea.json`) corroborates physical IST.EXE10f16..10f6d:
copies104bytes from a supplied far pointer into the per-class dispatch table.
It has no resolved static incoming references. Raw objdump remains necessary:
Ghidra's presentation reverses some segment-register MOV direction here.

The original SDISB16.DSD resolves the name `cdiRegister` from its DS:30b8
(file72f8) into DS:3154 at physical1a1f..1a27. At154b..1554 it passes
DS:088f through that pointer and stores the returned first channel atDS:31f6.
Thus this supplies the concrete104-byte registration source.

The source is file4acf..4b36. Its first pointers are3189:0000,
327a:0000,334b:0000,33a2:0000. Code-file displacement510h maps them
to3699,378a,385b,38b2, each an instruction-aligned far entry with the
same argument cleanup as its resident wrapper. Data address mapping is
file4240+DS offset, corroborated independently by resolver strings and table.
These are **unrelocated driver coordinates**, not original runtime segment
addresses. General DSD loading/relocation is not implemented or certified.

At3699..3702 the sample entry copies19bytes from the caller descriptor;
at3705..3789 the driver consumes pointer+0, length+4, loop boundaries+8/+12,
flags+16 and virtual handle+17. At378a..37ce the start entry takes frequency
fromBP+10, level fromBP+6, channelBP+14. Its internal37d1..385a computes
frequency/output-rate stepping, starts byte position0, and maps64 level to32.
Position setting3941..39af writes the supplied position directly into the same
byte cursorDS:a73. Mixer2871..287d adds that cursor directly to the sample far
pointer. The position unit is therefore **sample bytes** for this driver.

Unsigned8-bit offset-binary PCM is now consumer-proved, rather than inferred
from waveform shape or descriptor type0. At30df..310c the driver builds256
lookup entries from signed values-128 through127, in ascending raw-index order.
At1d66..1d70 a sample byteES:[SI] directly selects that table entry; no sign-bit
rotation or alternate decoder intervenes. Byte128 selects zero, byte0 negative
full excursion. Mixer arithmetic accumulates lookup values. Output conversion,
amplification, clipping and multiple voices are separate from this encoding.

## Narrow native increment

`seq_pcm.rs` extracts the initial GHD block followed by kind2GFL prefixes,
retaining source bytes and rate. It restricts the refill schedule to the
corpus-verified frame0,fps,2*fps... pattern, and rejects unknown kinds/truncation.
The existing audit establishes all five originals have header word6=22050 and
246kind2 records at their respective second boundaries. Source byte decoding
is mono: each byte advances one sample cursor. Two centered MCP voices play the
same ring; that does not make the resource stereo.

`seq_debug_audio.rs` is an optional SDL queue adapter accepting original unsigned
mono bytes at their verified rate. It is explicitly an **inspection output**:
one host voice, default host gain and SDL conversion, no emulation of the DOS
two-voice gain, ring refills, position corrections, counter scheduling or fades.
The accepted silent preview remains the default. Host queue replacement/pause
must follow debug controls and clear at scene end; never let buffered tail audio
play into the next clip. The original stop point may discard prefetched bytes.

SDL ABI was checked against the official SDL2 `SDL_audio.h`:
https://raw.githubusercontent.com/libsdl-org/SDL/SDL2/include/SDL_audio.h
Device choice/buffer1024 are host inspection policy, not recovered DOS values.

## Remaining limits

This is direct static proof for the preserved Sound Blaster driver, selected by
the preserved SES.CFG filename. Actual runtime selected driver and gain need
DOS comparison. GUS/PAS/WSS equivalents were not analyzed here. Final native
sync requires the exact ring-phase mismatch corrections, seek/recovery and stop
behavior; it must not be labeled faithful cinematic playback yet. No original
audio reference or user listening acceptance is claimed.

CLI REA failed JDK admission under the restricted shell; its exact rejection is
saved. Shared MCP succeeded, used the immutable original plus existing owned
snapshot, and was closed before handoff to the renderer investigation.
