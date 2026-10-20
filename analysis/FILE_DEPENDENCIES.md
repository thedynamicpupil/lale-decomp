# File dependencies — observed strings, not recovered call paths

This map separates literal references from proven file-opening behavior. No
function has yet been tied to an open/read/write syscall. Access modes,
necessity, lookup ordering, parsing routines and dynamically generated filenames
require Phase Four/Five analysis.

## Launch chain

Original root LALE.BAT invokes the bundled Windows DOSBox binary with root
dosbox.conf and DOSBox/Turkish.lang. Configuration mounts `lale` as T:, changes
to T:, executes IST.EXE, then exits. Thus IST.EXE's original working directory
is the root of the emulated T: drive, not the host project root. The Linux
launcher reproduces this using runtime/lale, preserving the original files.

## Executable filename references

Offsets below are physical file offsets of ASCII case-insensitive literal
matches across each complete physical executable, including IST's trailing
area. `—` means no matching literal in this specific scan, not “unused”. A
match can appear in messages, installation code or historical strings.

| Original game file | IST.EXE literal offsets | KUR.EXE literal offsets |
|---|---|---|
| 0GFL.CKD | 0x1ca41 | — |
| 3D.CKD | 0x1ca85 | 0xa510 |
| BOSCH.KOR | — | 0xa570 |
| FRPOS.CKD | 0x1ca5f | 0xa51a |
| GRP.DAT | 0x1cc90, 0x1ccb5, 0x1db5b, 0x1db86, 0x1dbe2 | — |
| GRPHAZIR.DAT | 0x1cc83 | — |
| IKON.CKD | 0x1ca69 | 0xa527 |
| IST.EXE | — | — |
| IVIR.CKD | 0x1ca72 | 0xa533 |
| KUR.EXE | 0x1c6b4, 0x1c74a | — |
| MUZIK.CKD | 0x1ca4a | 0xa53f |
| SAVAS.CKD | 0x1ca7b | 0xa54c |
| SDIGUS16.DSD | — | — |
| SDIPAS16.DSD | — | — |
| SDISB16.DSD | — | — |
| SDIWSS16.DSD | — | — |
| SES.CFG | 0x1c698, 0x21fdc | 0xa2a1 |
| SONPAL.PAL | — | 0xa586 |
| SOUNDS.CKD | 0x1ca54 | 0xa559 |
| TRDOS.DAT | 0x21faa | 0xa8de |

The adjacent eight CKD filenames at IST 0x1ca41–0x1ca85 are a strong starting
point for initialization/loader tracing. KUR's literals around 0xa504 include
`e:\*.dsd`, CKD paths, `e:\*.dat`, BOSCH.KOR and SONPAL.PAL. These look like
installation/copy or setup inputs, but their control flow has not been recovered.
In particular, documentation identifying sound setup does not establish that
KUR has no additional functions.

IST also contains SDIInitDevice, SDIStartOutput and SDIStopOutput at
0x22041/0x2204f/0x2205e. The absence of an embedded concrete DSD filename is
consistent with choosing it through SES.CFG, but that mechanism is not proven.
SES.CFG directly names SDISB16.DSD at offset zero. Each DSD exposes SDI API-name
strings. No driver was loaded or executed during this inventory.

## Member references

Full member IDs and ranges are in flib-members.json. `resource-list-dependencies.json`
records 495 nonempty lines from seven RES lists and one BAK list, interpreted as
name candidates. All 16 lines in MUZIK.RES match members in MUZIK.CKD, including
the list itself. Case-insensitive filename matching does not imply content or
identity matching across containers; duplicate names can denote different bytes.

Seventeen lines have no match in their own container. Eight of those match
members in other packages; nine have no matching name among the 790 entries.
The count includes two names prefixed `-` in SAVAS.BAK; these could be directives
or stale annotations, not necessarily requested files. Full unresolved cases:

| List | Missing in own container | Other-container name candidates |
|---|---|---|
| IVIR/IDEM.RES | ACILISC.CMP, ACILISC.PAL, II.CMP, MOUSE.CMP, XII.RIX | None in this inventory |
| IVIR/IDEM.RES | DISDUNYA.CMP, GOTY0.CMP, GOTY1.CMP, PCMAINTH.CMP, TRADE.CMP, VIEWBUYU.CMP, VIEWPC.CMP | 3D.CKD |
| IVIR/IDEM.RES | TABLETUR.CMP | SAVAS.CKD |
| IVIR/IVIR.RES | HARBAK | None in this inventory |
| SAVAS/SAVAS.BAK | -MAGA1.CMP, -MAGA2.CMP | None under these literal spellings |
| SAVAS/SAVDEM.RES | DUVARIC0.CMP | None in this inventory |

These are bounded inventory discrepancies, not established damaged resources.
Names in historical/demo lists may not be used by this build.

IKON.CKD has 94 same-basename PAL/CMP pairs. All 35 GHD members in 0GFL.CKD have
same-basename GFL companions. These are observed naming relationships; how they
are indexed or jointly loaded remains unknown. IST contains named AMF/PAL/CMP
strings beyond the outer-package literals; complete strings are available for
focused code cross-references in the next phase.

## Documentation and distribution helpers

OKUBENI.TXT refers to LALE.BAT, IST.EXE, KUR.EXE, lale.pdf, DOSBox configuration
and a Unix `lale_dosbox.sh` absent from the actual distribution. The manual
refers installation details to a separate technical support guide. These are
documentation edges, not executable file dependencies. Uninstall.exe and
seyh48.ico support the Windows package; no literal reference to either was
observed in the DOS executable scan.

## Next tracing targets

Trace IST's CKD filename block, SES.CFG/TRDOS.DAT opens, GRP/GRPHAZIR reads and
writes, member-name lookup, and overlay loader before assigning functions to
resources. Trace KUR separately, particularly its E: wildcard/path literals.
Preserve original segment:offset addresses and convert source offsets only
through validated load mappings; appended overlays need separate mappings.
