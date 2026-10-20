# Verified screen resource map — 2026-10-14

Archive ordinals and physical payload offsets identify originals; they are not global gameplay IDs. Actual image slot numbers come from call-site arguments. Member lookup is case-insensitive and searches all open packages, so cross-archive palette use is expected.

## Character creation: code, decoded output and manual agreement

|Resource|Archive ordinal / payload offset|Dimensions or size|Verified use|
|---|---|---|---|
|KARAKTER.CMP|IVIR33 /493154|320×200|Entry167c:1aa2 loads slot1; static background/attribute labels match manual PDF7|
|SEMATIK.CMP|IVIR50 /1092589|200×20|Same entry loads slot0x45;20×20 source cells selected for race and sex symbols|
|PALBAT.PAL|SAVAS108 /207230|768 bytes|Same entry explicitly loads palette entries0..255|
|SINSAN1.CMP|IVIR51 /1094408|160×32|Appearance helper builds prefixed name and loads slot0x47; five32×32 face-expression cells visible|
|INSAN1.CMP|SAVAS54 /124354|149×39|Helper loads bare name into slot0x0b; body-pose atlas visible|
|INSAN1.KOR|SAVAS55 /127646|See inventory|Companion coordinate data opened by same helper; sprite routine consumes12-byte records|

All16 prefixed face members exist in IVIR at160×32; all corresponding bare body CMP/KOR members exist in SAVAS. Exact identifiers and hashes are in appearance-members-addendum-20261014.json. This screen's verified resources do not require an IKON member; no conclusion about IKON's other uses follows.

Original167c:011f first copies13 bytes from DS:48ec (`s` followed by zeros) into a local name buffer via resident1000:127a, then concatenates the appearance-table name via1000:48f7. The table atDS:269b has13-byte cells. Appearance1 yields sinsan1.cmp /insan1.cmp /insan1.kor. Code selects appearance1..16. It copies a32×32 face cell to(68,53); body drawing begins from anchor(42,120) and coordinate records. No guessed full-screen compositing was done.

Background and symbol/face copies use resident3599:02d0, analysislinear35c60 /original physical0x28060. This copies every pixel: it has no transparent-index test. Sprite helper relative1694 code0387, original0x49fd7, reads a12-byte coordinate record (six words), computes crop/anchor dimensions and chooses forward or mirrored masked copy.

Masked routines3599:0341 and03c4 (original physical0x280d1 and0x28154) compare each pixel to an explicit key and skip writes for a match; the latter reverses destination traversal for horizontal mirroring. Wrapper1ac6:0430 passes key0xfe. **Index254 transparency is verified for this sprite path**, not a universal CMP property. Black/index0 must not be treated as globally transparent. KOR extent/anchor semantics and clipping require further validation.

New full-size previews with explicit caller-bound PALBAT: extracted/phase-five/batch-party-callsite-20261014 and batch-appearance-callsite-20261014. Raw indices, palette and provenance remain available. Parent visually inspected the KARAKTER and SEMATIK previews; the manual screenshot corroborates static layout. There is no direct pixel comparison with the user's separately captured screenshots.

## Main menu

Overlay1682:054d explicitly loads ACILISA.PAL plus ACILISA.CMP/ACILISB.CMP from IVIR. It first prepares/copies ACILISA, loads ACILISB for a transition, builds two320×50 strip buffers and invokes transition helpers before rendering the four labels through the selector callbacks. Both images have320×200 headers and64001 decoded indices, so no strict PNG or silent crop was produced. Original offsets: ACILISA77 ordinal0, ACILISA.PAL44171 ordinal1, ACILISB45004 ordinal2. Music DEMO.AMF is loaded from MUZIK.

The same routine's earlier intro sequence references COMP4A.PAL/COMP4A.CMP, COMP4B.CMP and ISTB.PAL/ISTB.CMP. Those are intro/transition dependencies, not automatically the steady menu background. XDINTRO.RIX is referenced as a rendering resource; its font/glyph interpretation remains pending. Code establishes screen dependencies but exact final raster composition remains unverified.

Evidence: character-menu-data-bytes.json; menu-overlay1682-rea.json; character167c-rea.json; character-sprite1694-rea.json. Relative paths refer to analysis/phase-four/continuation. REA sprite evidence ev_adaa342a3e2db40f7e68b909bd3741e4d0b5a412b204821a1764eef89c441add; masked-copy evidence ev_846be6e567bec64852d4ad06dbaf9ca1a70dd694e29b53e266848070fa16b931 and ev_791efded8b169b4b31e7a71ac3b5f6b266cdce49b42b8348781cb826c09d0144.
