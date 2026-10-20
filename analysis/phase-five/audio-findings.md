# Audio resource structure checkpoint

New read-only observations, 2026-10-14. Earlier Phase Three/Four research is
preserved. No playback conversion or audio rate was assumed.

## Verified observations

`tools/extractors/probe_audio_structure.py` reads original MUZIK.CKD and
SOUNDS.CKD, revalidates all directory/inline records and contiguous payload
boundaries, and records hashes independently in `audio-structure-evidence.json`.
It does not depend on the frozen member inventory. Run with a **new** output path:

```sh
python tools/extractors/probe_audio_structure.py --output /tmp/lale-audio-check-new.json
```

All 15 non-list MUZIK members start `41 4d 46 0e`. A reproducible structure
parser consumes every byte of every member through header, order records,
65-byte sample descriptors, track remapping, three-byte event triples and
indexed sample payloads. Every file ends exactly at the calculated sample end.
This is much stronger evidence for tracker music than its archive filename.
It is structural decoding, not yet rendered or aurally validated music.

Payload-relative layout, corroborated against IST.EXE assembly:

| Offset | Length | Observed structure |
|---|---:|---|
| 0x00 | 4 | AMF and version 0x0e |
| 0x04 | 32 | Title bytes |
| 0x24 | 1 | Sample descriptor count: 31 in all 15 |
| 0x25 | 1 | Order count |
| 0x26 | 2 | Logical track count, little endian |
| 0x28 | 1 | Channel count: 6, or 8 for ISTANBUL.AMF |
| 0x29 | 32 | Panning candidates, copied as 32 bytes by parser |
| 0x49 | 1 | Byte 125 in this corpus; tempo interpretation remains inference |
| 0x4a | 1 | Byte 6 in this corpus; speed interpretation remains inference |
| 0x4b | variable | Each order: row-count word plus one track-ID word/channel |
| after orders | 31 × 65 | Sample descriptors |
| after descriptors | 2 × track count | Logical-to-physical track remap |
| after remap | variable | Physical tracks: event-count u16, byte, 3 bytes/event |
| after tracks | variable | Sample blocks, indexed by descriptor index |

Within each 65-byte sample descriptor: type byte 0, label at 1..32,
second label at 33..45, index u32 at 46, length u32 at 50, word at 54,
byte at 56 and dwords at 57 and 61. The latter fields remain provisionally
named raw values. Each unique nonzero sample index has one consistent length;
indices are contiguous from one. Summing those lengths equals the complete
remaining payload for all 15 files.

Examples, all offsets in source MUZIK.CKD unless marked payload-relative:

| Member | Ordinal | Payload offset | Size | Sample data relative offset | Sample bytes |
|---|---:|---:|---:|---:|---:|
| 3.AMF | 0 | 77 | 50897 | 4401 | 46496 |
| DEMO.AMF | 8 | 476061 | 61369 | 9151 | 52218 |
| ISTANBUL.AMF | 9 | 537495 | 85640 | 10388 | 75252 |
| SAVAS.AMF | 13 | 741453 | 87793 | 10651 | 77142 |
| THEEND.AMF | 14 | 829311 | 147525 | 2371 | 145154 |

## Executable connections

`audio-amf-parser-physical.asm` retains objdump assembly with **physical
IST.EXE offsets**, not Ghidra linear addresses. The resident parser begins at
0x12a3a. MZ header size is 0x2400: its load-relative linear offset is 0x1063a,
and Ghidra's 0x1000 load-segment linear coordinate is 0x2063a. These are not
synthetic overlay coordinates; an exact original CS alias is not claimed here.

At 0x12ab9..0x12ac2 it requests four bytes through original far-call stub
16cd:002f. At 0x12ada onward it compares AMF version constants. Versions at
least 12 select 32 rather than 16 channel-map bytes. At 0x12b2b..0x12b5f it
reads sample count, order count and track count into internal object offsets
0x4a, 0x4f and 0x54. At 0x12bb7..0x12be2 versions at least 13 read two more
bytes. At 0x12cb5..0x12cd2 version 14 reads row-count words from the resource;
older versions synthesize 64. At 0x12de4..0x12df7 the parser reads 65-byte
sample descriptors. At 0x12ef5..0x12f0c it reads track event-count u16 and a
third byte; at 0x12f79..0x12f8a it requests three bytes per event for these
version-14 members. Full playback and event-opcode semantics remain unresolved.

Original IST.EXE contains case-insensitive archive literals `muzik.ckd` at
0x1ca4a and `sounds.ckd` at 0x1ca54. Code immediate candidates at physical
0x7b60 and 0x7b78 respectively match original DS offsets 0x384a and 0x3854.
These should be checked against the parent's FLiB initialization trace.

Executable references to member names are listed per member in the JSON.
The executable includes music names such as DEMO.AMF and SAVAS.AMF and music
error text; filename literals alone do not demonstrate which sequence runs.

## SOUNDS is heterogeneous: important counterexample

SOUNDS.CKD ordinal 8, BOSCH.PUR, payload source offset **87837 / 0x1571d**,
size **53**, is two CRLF-separated text lines. Its SHA-256 is
`4dd759add352e3b6db3e70856e762ab6c40528516bb020d37d9b6ae39ef18fe2`.
Do not interpret or play all PUR entries as uniform raw samples. Text bytes
are retained in the JSON; no soundtrack/audio conversion was made.

Many other PUR/SND streams have repeated 0x80 and smooth adjacent byte changes,
consistent with sample data but insufficient to establish PCM, rate or channels.
ADIM4.PUR also starts with eight conspicuous non-waveform bytes, so blindly
treating every byte as sample data remains unjustified.

The resident application has a 17-byte table stride linked to PUR names:
physical 0x1b4ea / original DS:0x22ea is a flags word; the next record's flags
are at 0x1b4fb. `audio-sfx-table-consumers-physical.asm` preserves consumers.
At 0x9970 it multiplies an index by 17, and at 0x9978 tests flags at ES:22ea.
Later code uses a separate 23-byte runtime-record stride based at DS:de34.
At physical 0x9d67..0x9daa it examines table flags and an existing runtime
pointer, then calls original db7:022f with that pointer. Whether this call
stops/frees/plays sound is not proven. Adjacent words resemble familiar sample
rates, but they must remain unlabelled until loader/mixer call use is traced.

## Status and next targets

Music structure hypothesis is strongly corroborated by complete byte accounting
and resident AMF parser instructions; audible decoding and runtime sequencing
remain open. Sound-effects hypothesis is supported by application table names
and sample-like structure but is not uniformly true for this archive.

Next: analyze Ghidra 0x2063a against these instructions; resolve its callers and
the 16cd:002f member-read dispatch; follow the 17-byte metadata table consumers
from physical 0x994d onward, and trace db7:022f before assigning playback fields.
No guessed-rate output, native mixer or game engine was built.
