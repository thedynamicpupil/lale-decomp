# Original distribution inventory — Phase Three

Date: 2026-10-13. Scope: all twenty original game files in `lale/` and five
supporting root distribution files. Total: **25 files, 239,098,766 bytes**.
Nothing was executed as a native DOS/Windows program, and no original was edited.

## Evidence and reproduction

- `FILE_MANIFEST.sha256`: SHA-256 for every original file, paths relative to the
  project root. Run `sha256sum -c analysis/FILE_MANIFEST.sha256` from that root.
- `evidence/distribution-inventory.json`: complete file sizes, hashes, first
  128/last 64 bytes, full-file entropy, string counts/previews, container and MZ
  observations. Local Python/file observations, not REA Evidence.
- `evidence/flib-members.json`: all 790 member names, source offsets, sizes,
  SHA-256 hashes, entropy and byte previews; no payload extraction.
- `evidence/resource-probes.json`, `small-file-structures.json`: further byte
  observations, palette limits, candidate image words, text lists and small files.
- `evidence/*.strings.json`: all ASCII runs of at least five bytes for each
  executable and driver. High-bit text and shorter strings are outside that scan.
- `evidence/rea-phase-three.json`: a successful REA static PE resource inspection
  of Uninstall.exe, Evidence
  `ev_29823e606072e42ff8fe4bac6ddbb773870178d1d884de33a47d6984c20606e1`.
  It reports 15 resources and complete bounded coverage of 34 directory entries.
- Reproduce the local observations with `python3 tools/inventory_distribution.py`
  then `python3 tools/probe_resource_inventory.py`. They write under analysis/.

## Distribution versus workspace

| Category | Paths | Treatment |
|---|---|---|
| Original game | Twenty files in lale/ listed below | Read-only analysis targets; all included in manifest |
| Supporting distribution | LALE.BAT, OKUBENI.TXT, lale.pdf, seyh48.ico, Uninstall.exe | Original supporting files, included in manifest |
| Emulator | DOSBox/ and root dosbox.conf | Protected; configuration inspected; hashes retained separately in STAGE_A_PRESERVATION.json |
| Existing Ghidra workspace | lale/IstanbulEfsaneleriDOS.gpr, .rep/, .lock, .lock~ | Excluded from resource inventory; not opened, locked, or modified |
| Project instructions | promptlale.txt, generated AGENTS.md | Instructions, not game resources |
| Agent output | launch-lale.sh, analysis/, tools/, runtime/ | Generated; runtime is a persistent game copy, not the original distribution |
| Environment metadata | .agents/, .aws/, .codex/, .git/ | Outside game inventory; not searched for resources |

## File-by-file inventory

The magic column contains observed initial bytes, not a filename-based guess.
Interpretations below are qualified where parsers or runtime evidence are absent.
Full checksums are in the manifest and JSON evidence rather than abbreviated here.

| Path | Bytes | First 12 bytes (hex) | Entropy (bits/byte) | Observation / role |
|---|---:|---|---:|---|
| lale/0GFL.CKD | 218,306,786 | `464c6942460000001c07030d` | 7.3656 | FLiB; 35 paired GFL/GHD streams; payload semantics unknown |
| lale/3D.CKD | 1,465,361 | `464c6942470000000a4a1600` | 6.7622 | FLiB; image/palette/coordinate candidates and CRLF lists |
| lale/BOSCH.KOR | 72 | `000000000000000000000000` | -0.0000 | 72 zero bytes; metadata candidate, no magic |
| lale/FRPOS.CKD | 148,452 | `464c694224000000c03a0200` | 4.5970 | FLiB; 36 AmBk-signature data banks |
| lale/GRP.DAT | 664 | `63617968616e000000000000` | 2.3111 | 664-byte binary data; character state candidate |
| lale/GRPHAZIR.DAT | 664 | `67817263616e690000000000` | 2.4521 | 664-byte binary data; character template candidate |
| lale/IKON.CKD | 2,038,202 | `464c6942bc000000fee91e00` | 7.0647 | FLiB; 94 CMP/PAL name pairs |
| lale/IST.EXE | 385,328 | `4d5a100043010f0840020000` | 6.7955 | DOS MZ; Borland string; trailing FBOV area |
| lale/IVIR.CKD | 1,416,520 | `464c694251000000b7881500` | 7.5263 | FLiB; image/palette candidates, RIX, lists, log and credits |
| lale/KUR.EXE | 45,974 | `4d5a96015a000c02c0007800` | 6.7595 | DOS MZ; documented sound setup, other roles unresolved |
| lale/MUZIK.CKD | 1,224,475 | `464c6942100000000bab1200` | 7.2115 | FLiB; 15 AMF-signature members and a resource list |
| lale/SAVAS.CKD | 254,629 | `464c69427a000000abc30300` | 6.0691 | FLiB; image/coordinate candidates, palette and lists |
| lale/SDIGUS16.DSD | 13,147 | `44535b011a00ae002e002f00` | 6.7481 | DS-signature load module; Gravis UltraSound text |
| lale/SDIPAS16.DSD | 21,341 | `44535d012a00880024001100` | 5.4372 | DS-signature load module; Pro Audio Spectrum 16 text |
| lale/SDISB16.DSD | 29,581 | `44538d013a003a0151001200` | 5.7279 | DS-signature load module; Sound Blaster family text |
| lale/SDIWSS16.DSD | 25,107 | `445313003200bc0031001200` | 5.6262 | DS-signature load module; Windows Sound System text |
| lale/SES.CFG | 107 | `534449534231362e44534400` | 2.5526 | Binary settings candidate; starts SDISB16.DSD |
| lale/SONPAL.PAL | 768 | `000000000000000000000000` | 2.8520 | 768 bytes in 0–63 range; palette candidate |
| lale/SOUNDS.CKD | 11,772,928 | `464c6942ce000000b26fb300` | 6.6585 | FLiB; PUR/SND raw-audio candidates |
| lale/TRDOS.DAT | 4,096 | `000000000000000000000000` | 3.6805 | 4096 bytes; visually coherent 8×16 bitmap glyphs |
| LALE.BAT | 63 | `446f73426f785c646f73626f` | 4.3710 | ASCII CRLF Windows host launch command |
| OKUBENI.TXT | 6,738 | `5554462d3820444f530d0a0d` | 5.3583 | UTF-8 CRLF distribution documentation |
| lale.pdf | 1,862,265 | `255044462d312e340a25e2e3` | 7.9601 | PDF 1.4; 31-page unencrypted manual |
| seyh48.ico | 7,358 | `000001000100303000000100` | 3.5730 | ICO; one 48×48 24-bit DIB image entry |
| Uninstall.exe | 68,140 | `4d5a90000300000004000000` | 6.7524 | PE32 Windows distribution helper; REA resource inventory |

The `file` utility calls MUZIK.CKD `GLS_BINARY_LSB_FIRST`. That identification is
not adopted: its complete byte layout validates as the same FLiB container as
the other seven packages. The generic `data` result for most resources says
nothing about whether they contain executable logic or game state.

## Package contents

| Package | Members | Directory offset | Member families |
|---|---:|---|---|
| 0GFL.CKD | 70 | 0xd03071c | .GFL: 35, .GHD: 35 |
| 3D.CKD | 71 | 0x164a0a | .RES: 2, .CMP: 54, .KOR: 6, .PAL: 9 |
| FRPOS.CKD | 36 | 0x23ac0 | (none): 36 |
| IKON.CKD | 188 | 0x1ee9fe | .PAL: 94, .CMP: 94 |
| IVIR.CKD | 81 | 0x1588b7 | .CMP: 48, .PAL: 25, .LOG: 1, .RES: 2, .DOC: 1, .RIX: 4 |
| MUZIK.CKD | 16 | 0x12ab0b | .AMF: 15, .RES: 1 |
| SAVAS.CKD | 122 | 0x3c3ab | .CMP: 66, .KOR: 52, .PAL: 1, .RES: 2, .BAK: 1 |
| SOUNDS.CKD | 206 | 0xb36fb2 | .PUR: 196, .SND: 10 |

Across packages: 262 CMP, 129 PAL, 58 KOR, 196 PUR, ten SND, fifteen AMF, 35 GFL,
35 GHD, 36 extensionless members, seven RES, four RIX, one LOG, one DOC and one BAK.
Common **container** structure does not imply common **payload** structure.

Notable retained artifacts include IVIR.CKD's DEBUG.LOG, THANX.DOC, resource-name
lists, and SAVAS.CKD's SAVAS.BAK. Their names and text support historical
development context, but do not establish that the current program loads them.
DEBUG.LOG mentions `ALTDUZEY\KONTROL.L`, a heap check, and historical segment
addresses. Those are recorded historical text, not this session's runtime state.

## Supporting documentation

OKUBENI.TXT is UTF-8 and describes the 2005 release with 2009 packaging notes. It
says this release requires no CD, uses DOSBox on Unix, needs EMS for DOS, and
uses KUR.EXE for sound setup. It advises leaving sound setup alone under the
emulator. These are distribution claims, not measurements of execution.

The PDF is an unencrypted 31-page PDF 1.4 manual. Full extracted text is in
`evidence/lale-manual.txt`. Poppler extraction omits some Turkish letters and
introduces control characters, so it is not a canonical transcription. PDF
pages 5 and 14 were rendered and inspected as images to confirm key statements.
Page 5 refers installation details to a separate technical support guide not
present here; intro screens can be skipped with left mouse or Escape. Page 12
documents T preferences, S save, K camp, and F1–F4 character pages. Page 14
describes door/walking animation options, battle speed, main/battle music,
sound effects including speech, and difficulty. The current PDF itself does
not supply the technical system requirements referred to on page 5.

OKUBENI.TXT also documents numpad movement (8/2 forward/back, 7/9 turn, 4/6
strafe), N district map, V character sayings, arrow/Enter map travel and combat,
Tab next combat character, Alt+Enter fullscreen and Ctrl+F11/F12 cycles. These
remain documentation claims until graphical validation becomes possible.

## Completion boundary

Phase Three inventory and binary baseline are complete. Payload algorithms,
runtime necessity, loader functions, audio rates, save structures, compression,
and proprietary member formats remain unresolved. See RESOURCE_FORMATS.md and
FILE_DEPENDENCIES.md. REA verification was explicitly accepted as complete by
the user; it was not repeated. Stage B graphical gameplay verification remains
unavailable in this executor.
