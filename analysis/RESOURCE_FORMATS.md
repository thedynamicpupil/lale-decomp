# Resource formats — byte evidence and hypotheses

All offsets are physical source-file offsets unless explicitly marked relative.
Sources: distribution-inventory.json, flib-members.json, resource-probes.json,
small-file-structures.json and original bytes under `lale/`. No format was
inferred solely from a file extension. No decoder or gameplay reconstruction has
been implemented in this phase.

## FLiB container: observed and validated across all eight CKD files

| Container offset | Bytes | Observed interpretation |
|---|---:|---|
| 0x00 | 4 | Exact ASCII `FLiB` |
| 0x04 | 4 | Little-endian member count N |
| 0x08 | 4 | Little-endian absolute trailing-directory offset D |
| 0x0c | variable | Sequence of 65-byte inline records, each followed by its payload |
| D | N × 65 | Copies of the inline records, in the same order |

Each 65-byte record has this measured layout:

| Relative offset | Bytes | Observation |
|---|---:|---|
| 0x00 | 4 | `FiLE` |
| 0x04 | 32 | First NUL-terminated member-name region |
| 0x24 | 17 | Second name/padding region; same decoded name in this corpus |
| 0x35 | 4 | Little-endian absolute payload offset |
| 0x39 | 4 | Little-endian length A |
| 0x3d | 4 | Little-endian length B |

The boundary of the second region is operationally measured; its final padding
may conceal reserved fields. Do not treat it as a proven source-language struct
declaration. In every observed record A equals B. Whether they are intended as
stored versus expanded lengths is unknown.

For **every one of the 790 records**, the inventory checks:

1. `D + 65*N == physical file size`.
2. Both name regions decode identically and magic is FiLE.
3. Payload begins immediately after the inline record, starting at 0x4d for
   the first member.
4. Inline record equals its trailing-directory copy byte for byte.
5. Both length values agree and each payload is bounded before D.
6. The next inline header immediately follows the previous payload; the final
   payload ends exactly at D. No gaps, overlaps or unexplained trailing bytes.

Thus the member ranges are sufficiently established for an eventual deterministic
container extractor. Compression *inside* those ranges is a separate question.
Equal length fields are not proof that a payload is uncompressed. Full-file and
member entropy values are descriptive, not compression identification.

## Payload families: observations, interpretation, remaining work

| Family | Verified byte observations | Supported interpretation and limits |
|---|---|---|
| CMP (262) | First two LE u16 words commonly 200×200 (97 members), 320×200 (29), 160×32 (17); subsequent bytes vary and often use repeated control/value-looking patterns | Image dimension and compressed pixel-stream candidates. Dimensions, control rules, transparency and row boundaries are not proven; no decoded image claimed |
| PAL (129 embedded) | 125 have 768 bytes; four have 48 bytes; every byte is ≤63 | 256- or 16-entry RGB triplet palette candidates compatible with six-bit channel values. RGB order and actual hardware upload remain unverified |
| SONPAL.PAL | 768 bytes, min 0/max 63, final bytes include 3f 3f 3f | Same palette candidate; standalone role not established |
| KOR (58 embedded) | 52 members are 72 bytes, four are ten, two are 528; small LE words, many signed-looking values | Coordinate/frame-placement metadata candidate; different sizes disallow one uniform record assumption |
| BOSCH.KOR | All 72 bytes are zero | Zero-filled member-sized metadata candidate, not disposable empty data; KUR contains its filename |
| GHD (35) | Each begins ASCII GFL; each has a same-basename GFL member | Companion header/index candidate. Example SON.GHD at 0x1a6a546 in 0GFL.CKD begins `47 46 4c bd 03 0a 22 56 a0 86 01 00`; fields unknown |
| GFL (35) | No shared three-byte payload magic established; sizes vary greatly; SON.GFL is 27,698,360 bytes | Large paired data streams; do not assume animation, audio, map or video based on extension. GHD/GFL relation needs parser tracing |
| Extensionless FRPOS (36) | Every member begins `AmBk`; header includes `Data    ` at relative 0x0c | Structured bank/data family, possibly script/gameplay information; format provenance, endianness and semantics unresolved |
| AMF (15) | Every member begins `41 4d 46 0e`; title-like ASCII follows, such as `istanbul 3d2` | AMF-signature music/module candidates with header byte 0x0e. Specific standard/version, instruments, events and sample data not parsed |
| PUR (196) / SND (10) | No RIFF/WAV header at the sampled member starts; SND members inspected begin repeated 0x80, PUR streams vary | Raw audio candidates, especially plausible with music/audio documentation; rate, channel count, signedness and encoding not recovered |
| RES (7) / BAK (1) | CRLF-separated filename lists; complete text bytes retained | Text inventories and historical subsets. Some names missing/cross-package; lists are not proof of active runtime dependencies |
| LOG / DOC | DEBUG.LOG contains readable diagnostic text; THANX.DOC decodes intelligibly under candidate CP857 | Historical debug log and credits text, not execution evidence |
| RIX (4) | Each is 32,640 bytes; XD.RIX begins zeros, XDEMO.RIX varies | Opaque image/data candidates. No standard RIX parser or dimensions confirmed |

Examples of small PAL exceptions are IVIR.CKD/COMP4A.PAL at source offset
0x273ab (48 bytes) and its other 16-entry palettes. Assuming every palette is
256 entries would lose information.

## DAT, CFG and drivers

**TRDOS.DAT:** exactly 4,096 bytes. A direct interpretation as 256 sequential
glyphs × 16 rows × eight MSB-left bits produces coherent letters, digits,
punctuation, Turkish glyphs and box drawing. The visually inspected rendering
is `evidence/TRDOS-bitmap-hypothesis.png`. This establishes a coherent bitmap
font representation; the actual loader, active code-page mapping, bit-order use
and character substitutions remain unverified. Glyph byte offset is `code*16`.
The PNG is an inspection rendering, not a converted replacement game asset.

**GRP.DAT / GRPHAZIR.DAT:** both 664 bytes. Start with NUL-terminated names
(`cayhan` and byte spelling `67 81 72 63 61 6e 69`) and contain binary values
and long ASCII 0/1 sequences. The full differing-byte offsets are retained in
small-file-structures.json. IST contains their filenames and nearby character
information messages. Party/character state and a prepared template are strongly
supported candidates; record layout and save behavior are unknown. The size
alone is not evidence for four equal character records.

**SES.CFG:** 107 bytes; starts with `SDISB16.DSD\0`, followed by binary fields.
At 0x15 a little-endian u32 is 0x220; at 0x19 a u32 is 5; at 0x21 a u32 is 7.
These align with plausible sound-card settings but are not an established
port/DMA/IRQ schema. Other values resemble segmented addresses. Do not rewrite
or sanitize fields based on that resemblance. Original hex is retained.

**DSD drivers:** all start `44 53` (DS), followed by varying u16 values and
offset-like tables. They are not MZ files. All retain SDI API-name strings,
including SDIDetectDevices, SDIQueryDeviceCount, SDIQueryDevice, SDIInitDevice,
SDIStartOutput, SDIStopOutput and SDICloseDevice. Full strings with offsets are
retained. Driver roles are strongly supported by internal text:

| File | Internal device text / physical offset |
|---|---|
| SDIGUS16.DSD | Gravis UltraSound GF1 driver text at 0x2c78 |
| SDIPAS16.DSD | Pro Audio Spectrum 16 at 0x4c42 |
| SDISB16.DSD | Sound Blaster at 0x62e4, Pro at 0x67de, 16 at 0x6ccc |
| SDIWSS16.DSD | Windows Sound System at 0x556c; UltraSound MAX CODEC at 0x5b78 |

The load-module header, relocation rules, dispatch table and driver ABI are not
recovered. Common DS magic does not establish identical driver internals.

## Executable baseline

| Observation | IST.EXE | KUR.EXE |
|---|---:|---:|
| Physical file bytes | 385,328 | 45,974 |
| MZ declared file bytes, including header | 164,880 | 45,974 |
| Header bytes | 9,216 (0x2400) | 3,072 (0x0c00) |
| Declared load image bytes, excluding header | 155,664 | 42,902 |
| Relocations | 2,063 | 524 |
| Initial relative CS:IP | 0000:0000 | 0000:0000 |
| Entry source file offset | 0x2400 | 0x0c00 |
| Bytes beyond declared MZ file | 220,448 | 0 |

All relocation records fit their respective headers; each measured relocation
word target fits the declared load image. Complete original segment/offset pairs
and source mappings are retained in the two `.relocations.json` files.
Initial relative addresses are not relocated runtime segment addresses.

Both contain the Borland copyright string: IST at 0x19204, KUR at 0x9a54.
IST's trailing area begins at 0x28410 with `FBOV`; following bytes include
instruction-looking sequences. A Borland-related overlay structure is a
strong lead, not yet a reconstructed overlay directory or code-loading model.
No LZEXE or PKLITE literal was found in either full executable; that bounded
negative search does not rule out other packing/compression.

## Root supporting binaries and text

seyh48.ico: observed ICO header type 1, one directory entry, 48×48, 24-bit image,
payload at offset 22 with 7,336 bytes. Its DIB header declares width 48 and height
96, consistent with a combined image/mask payload; transparency not decoded.

Uninstall.exe: Windows PE32 helper, not the DOS game. REA inspected its bounded
resource tree without execution; 15 resources, with offsets/hashes retained in
rea-phase-three.json. Uninstall behavior was not decompiled or run.

LALE.BAT is ASCII CRLF host-launch text. OKUBENI.TXT is UTF-8 CRLF documentation.
lale.pdf begins `%PDF-1.4`, has 31 pages, and contains documentation/screenshots;
it is not a resource container used by the DOS executable in observed evidence.
