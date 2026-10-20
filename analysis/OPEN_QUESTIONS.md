# Evidence ledger and remaining questions — Phase Three checkpoint

## Verified observations

- 25 original distribution files hashed; twenty game files plus five root
  supporting files. Reproducible manifest and complete byte observations retained.
- All eight CKD packages validate one FLiB container layout across 790 members.
  Member hashes and exact source ranges are retained without extraction.
- Every PAL member has values ≤63; sizes are 768 or 48, not uniformly 768.
- TRDOS.DAT produces a coherent 256-glyph 8×16 MSB-left bitmap rendering.
- Music members uniformly start AMF + 0x0e; FRPOS members uniformly start AmBk.
- Both game executables have valid bounded MZ/relocation layouts; IST has an
  additional 220,448-byte area beginning FBOV; KUR has no extra trailing bytes.
- REA's Uninstall.exe resource inspection succeeded and is retained, with
  Evidence ID recorded in ASSET_INVENTORY.md. No native helper was executed.

## Strongly supported interpretations

- CMP/PAL pairs are compressed-image and palette candidates; DSD modules are
  sound drivers with internal SDI APIs and named device families.
- GRP/GRPHAZIR relate to character/party information; SES.CFG selects a sound
  driver. Exact schemas remain unverified.
- IST's trailing FBOV area is likely related to Borland overlays. No overlay
  loader or target function mapping recovered yet.

## Unresolved questions and evidence needed

| Question | Next evidence |
|---|---|
| How does IST find/read member records? | Cross-references from CKD filename block, file I/O and seek operations |
| What do the duplicate size fields and second name padding mean? | Record-reading instructions, historical format source if available |
| How are CMP pixels decoded and transparency represented? | Decoder instruction flow, exact bounded decode and DOSBox comparison |
| Which PAL order/range is sent to VGA? | Palette upload routines and port writes |
| What are GFL/GHD, and how are they related? | Loader branches and complete companion-header/table validation |
| What do AmBk banks contain? | FRPOS consumers, field endianness, command/data interpreter tracing |
| How are AMF events and samples played? | Music loader and mixer routines |
| What are PUR/SND rates, channels and encoding? | Audio dispatch and playback parameters, observed sound |
| What are KOR schemas (10,72,528 bytes)? | Consumers and indexing arithmetic |
| What fields are in GRP, GRPHAZIR and SES.CFG? | Exact read/write ranges and structure uses |
| How are the FBOV area and real-mode segments mapped? | Overlay layout and loader code; independent Ghidra workspace |
| What does KUR do beyond sound setup? | Separate function/control-flow analysis of E: paths and driver detection |
| Are resource list mismatches historical or active dependencies? | List consumers, lookup fallback and DOSBox behavior |
| Does the launcher work visually and preserve real saves? | Manual KDE test; executor SDL/X11 unavailable |

## Explicit limits

Static filenames are not file-open proof. High entropy is not compression proof.
Documentation and archived DEBUG.LOG are not current execution evidence.
No resource decoder, reconstructed gameplay, actual audio playback or recovered
function boundary is claimed. No existing GUI Ghidra project was accessed.
The user accepted REA verification and directed Phase Three; do not redo setup
or readiness checks before normal analysis. Next research phase is executable
layout/decompilation and resource-loading cross-references.
