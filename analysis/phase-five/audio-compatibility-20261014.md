# AMF compatibility and native audio recommendation — 2026-10-14

## Result

Use an existing tracker playback library for the first native music trial,
with **libopenmpt as the preferred initial candidate**. The installed library
already accepts all 15 original music payloads without reported warnings.
This proves loading compatibility, not audibly identical DOS playback.
No library was installed, audio rendered, device opened, or engine implemented.

## Exact variant and embedded samples

The files match **DSMI Advanced Music Format revision 14 / AMF 1.4**. They have
the regular `AMF` signature, 32-byte titles, 65-byte sample descriptors and
variable row counts. They do not match Asylum AMF or compact Webfoot DMF.
The official OpenMPT loader accepts revision 14 and matches our recovered
layout; it interprets ordinary AMF samples as unsigned 8-bit mono, descriptor
word54 as base sample frequency, byte56 as volume capped at 64, and the final
two dwords as sample-loop bounds. Its initialization reads tempo then speed
and signed panning bytes. These interpretations are upstream corroboration,
not independent proof of the DOS mixer's exact handling.
[OpenMPT loader, lines 192–303, 562–617 and 682–705](https://raw.githubusercontent.com/OpenMPT/openmpt/master/soundlib/Load_amf.cpp).

Our original-byte structural evidence independently accounts for every sample
byte after each module's events. Instrument/sample labels are embedded metadata,
not an external sample dependency: all 15 modules load directly from their
archive-member bytes, without reading files named by those labels.

New `audio-compatibility-local-evidence-20261014.json` records original payload
offsets, command counts, initial bytes and sample metadata:

- All initial tempo/speed candidates are 125/6; timing is not fixed throughout.
- Speed opcode 0x81 occurs with values 4, 6, 7 or 8.
- ISTANBUL.AMF includes tempo opcode 0x95 value 144; UNI.AMF includes value 120.
- UNI.AMF includes position-jump opcode 0x8d value 2, relevant to repetition.
- All 465 descriptors have volume candidates between 0 and 64. There are
  91 nonzero indexed samples and 26 descriptors meeting valid sample-loop bounds.
- Sample frequency candidates are 8252 or 8368; these are tuning/base-pitch
  metadata, **not host output rates**.

These opcode names follow upstream interpretation. Original event execution,
timer tick formulas, game-level repeating, fades and master volume still need
assembly/runtime confirmation. No guessed durations or loop splice points
were used for output.

## Real compatibility check

The existing `/lib64/libopenmpt.so.0` reports `0.8.9+r25652.pkg`. Through its
C memory-loading API, all 15 original payloads loaded successfully, each
identified as `DSMI Advanced Music Format v14`, with empty warning metadata.
Module handles were destroyed immediately after metadata/duration inspection.
No rendering API was called. Results, including **library-estimated** durations,
are in `audio-openmpt-load-check-20261014.json`; those durations are not observed
original-game timing.

The C API provides memory construction, PCM rendering, position inspection,
repeat counts and rendering controls. Repeat defaults to zero additional repeats;
infinite repetition is explicit. A port must choose repeat/stop behavior from
game evidence rather than inheriting a library default.
[Official libopenmpt C API](https://lib.openmpt.org/doc/group__libopenmpt__c.html).

libxmp also explicitly accepts revision 14 and reads corresponding structures.
It has some distinct command/loop interpretations; notably opcode 0x87 is
treated differently from OpenMPT. That opcode is absent from these originals,
as are unsupported/ambiguous 0x85 and 0x8e. Both remain candidates for an eventual
DOS reference comparison; libxmp was not locally loaded or tested here.
[Official libxmp AMF loader](https://raw.githubusercontent.com/libxmp/libxmp/master/src/loaders/amf_load.c).

## Original drivers and separate effects path

Read-only original-driver evidence is retained in the new local JSON. The
four DSD files expose the same SDI device lifecycle strings: detect/query,
initialize, start output, get buffer position, stop output and close. Device
text names Sound Blaster, Pro Audio Spectrum, Gravis Ultrasound and Windows
Sound System. Literal presence does not identify the selected runtime driver.

Original IST.EXE contains `GetDSMITime` at physical 0x218c4, SDI initialization
at 0x22041, start at 0x2204f and stop at 0x2205e. These are useful resolver/import
seeds, not confirmed direct calls. DOS driver modules belong to the preserved
runtime; a native port should feed decoded PCM to a native backend rather than
attempt to execute these DOS hardware modules.

Earlier sound-table evidence establishes a separate application path indexed
by 17-byte metadata records, with flags at original DS:22ea and a separate
23-byte runtime-record stride. PUR/SND decoding, frequency, channel count,
prefix handling, allocation and play/stop parameters remain unresolved.
`BOSCH.PUR` is text, so no whole-archive uniform PCM decoder is justified.

## Smallest justified approach and tradeoffs

1. Keep Rust resource validation independent. Feed intact AMF member bytes to
   a small safe ownership wrapper around libopenmpt's C API when implementation
   is authorized. Put the library boundary in the platform/audio adapter.
2. Keep music selection, start order, repeat, stop and volume commands in
   recovered game logic. Do not derive them solely from module duration.
3. Compare representative rendered tracks against DOSBox recordings made with
   known original sound configuration: startup, tempo-changing ISTANBUL and
   looping UNI, including transition boundaries. Match interpolation, panning,
   gain and fades empirically before calling playback faithful.
4. Resolve sound effects independently; reuse a native PCM playback facility
   only after encoding and rate parameters are demonstrated.

This avoids writing a tracker interpreter/mixer while retaining embedded samples
and dynamic playback. It adds a native library dependency and may differ from
the original resampler, clipping, ramping and hardware mix. Host library version
must eventually be pinned for reproducibility.

Pre-rendered music is a practical fallback after loop boundaries and game-level
transitions are recovered. It trades the tracker dependency for larger assets
and fixed rendering, but complicates exact looping, seeks and dynamic timing.
An emulator recording can capture one original configuration; it cannot itself
establish which sound configuration is canonical. No pre-rendering was done.

Priority blockers: DOS reference audio; event timing/mixer fidelity; music
selection/restart/repeat call sites; master volume/fade handling; SDI resolver
bindings and settings; and separate SFX encoding/rates. Phase Four remains open.
