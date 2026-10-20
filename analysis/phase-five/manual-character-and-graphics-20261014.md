# Manual, character creation and screen graphics, 2026-10-14

New focused evidence only. Original manual and game bytes are unchanged. Existing Phase Three, Four and Five outputs remain unchanged. PDF skill applied for read-only rendering; PDF pages 6 and 7 rendered using system Poppler at 90 DPI and visually inspected. Outputs: `manual-visual-20261014/page-06.png` and `page-07.png`. Page references below are **PDF page indices**, not assumed printed booklet pagination.

## Documented behavior, not executable confirmation

PDF page 5 describes intro screens followed by the main menu, with left mouse button or ESC skipping intro screens. It mentions continuing an existing game and creating a new game without specifying all menu labels in the text.

PDF page 6, “Karakter Yaratma” and “Karakter Puanları”: party size four; “Çabuk Başla” uses a supplied group. Attributes are randomly regenerated on request or when race/sex changes; manual describes no direct point editing. Race, sex and other traits affect the generated values; blue/red display above/below-normal values. Listed attributes: Boy, Kilo, Zeka, Vuruş Gücü, Kelime Dağarcığı, Güç, Çeviklik, Dayanıklılık, Batıl İnanç, Yüzsüzlük, İstanbulluluk, Cesaret, Etkileyicilik, İnanç. These names are visually verified against the rendered table; text extraction drops some Turkish letters.

PDF page 7, “Karakter Yaratma Ekranı”: ESC returns to previous character or menu from first character; Space advances or starts after fourth. Numpad 4/6 changes portrait/body appearance; numpad 8/2 changes race; numpad 5 changes sex. ENTER rerolls attributes via dice icon. Numpad 0 invokes naming. Race/sex changes suggest an appearance. Body view occupies a gray left panel, portrait above race and sex symbols; attributes occupy right side.

PDF page 7 claims starting minimum attribute value 50 and values above 100 mean above-normal ability; recommends high Kelime Dağarcığı for a phrase-using character. These are manual descriptions, not verified numeric constraints/formulas. The same screenshot shows some displayed values below 50 (e.g. Güç 4), so “minimum 50” must not be generalized to every displayed quantity without code evidence.

Manual inconsistency: page 7 initially places next-character logo bottom-right, later calls it bottom-left. The rendered screenshot places it bottom-right. Preserve this discrepancy; do not implement coordinate behavior from the conflicting sentence.

## Visual evidence and candidate identification

Workspace image inventory found extracted previews and manual page renders, but no identifiable separately saved user main-menu/character-creation DOSBox screenshots. The task file documents their existence and labels; this is user-observation evidence, not a directly inspected screenshot in this subtask. Captured dimensions were not inferred as VGA dimensions.

Two additional **strict, complete original-size** decodes under `extracted/phase-five/batch-menu-candidates-20261014/`:

|Archive/member|Original payload offset|Dimensions|Candidate palette|
|---|---:|---:|---|
|IVIR.CKD / KARAKTER.CMP|493154|320×200|GRUP.PAL at 306715, unverified|
|IVIR.CKD / GRUP.CMP|251541|320×200|GRUP.PAL at 306715, same-basename candidate|

KARAKTER.CMP visibly reproduces the **static layout in manual page 7**: gray body panel left, portrait box above stacked race/sex boxes, dice/name buttons bottom-left, next-character logo bottom-right, textured background. It does not contain the composited character, attribute text or populated symbols from the manual screenshot. This strongly supports a character-creation background role. Actual call-site loading, palette and draw order remain unverified. The trial GRUP palette gives conspicuously noisy background coloration and must not be treated as correct; raw indices are preserved separately.

GRUP.CMP renders a group photograph with a “Nasıl?” button, so its filename does **not** establish a party-creation screen role. Visual decode refutes that naive priority assumption. No actual main-menu background has been verified by this subtask.

Stored menu REA bundle `analysis/phase-four/continuation/menu-overlay1682-rea.json` contains no literal CMP/PAL/CKD filename strings in nested string values. A read-only ASCII resource-name scan of IST.EXE found only `CHEAT.CMP` at file offset 119391. This does not prove absence of references: names may live elsewhere or be assembled/encoded, and loader IDs can be indirect. Scan results are retained as `manual-visual-20261014/executable-resource-strings.json`. No session mutation or new REA call was performed.

## CMP mismatches and output assumptions

See new prior graphics audit and its literal-list correction. 251 exact dimensions do not prove palette/transparency/orientation/frame handling, or correct runtime presentation. They only validate packet accounting against width×height.

Screen-like mismatches ACILISA, ACILISB, VIEWPC, RAKS and RPZ have 320×200 headers but 64001 indices; ISTB has 640×100 and likewise 64001. All are packet-valid and the overshoot occurs inside the final repeat packet. The evidence is consistent with a terminal-run fencepost issue, not a separate trailing-byte footer. It does not authorize silently dropping the final index. Caller allocation and copying must be traced.

SCW has 640×86 header but 55360 indices, +320. The entire unshaped decoded buffer and all packets are retained in the previous batch. Its arithmetic fits 173×320 but there is no supporting destination-stride/caller evidence for that reshape. No mismatched screen preview was created or cropped.

The parent reports original decoder loops on compressed length, so it may write the complete overshoot. Establish whether allocation includes padding, whether screen copying truncates/uses alternate dimensions, and whether header interpretation differs. Raster layout, VGA line stride and destination size are distinct facts to recover.

## Before a faithful menu prototype

Need executable-confirmed menu IDs/background and palette; character-screen KARAKTER loading and palette binding; composited body/portrait/symbol resource IDs; text font encoding/colors; input dispatch; four-character storage and race/sex/appearance association; RNG and attribute generation. Manual keybindings are valuable tests, not substitutes for formulas or memory-layout recovery. Phase Four remains incomplete and no full engine has been implemented.

## Subsequent executable-linked party palette verification

Parent original-assembly tracing subsequently connected main-menu value 1 to original resident stub `167c:0057`, actual overlay code offset `1aa2` (physical IST.EXE offset `0x3e6a2`). Entry loads `PALBAT.PAL` through DS:4a62, `SEMATIK.CMP` through DS:4a6d into image slot 0x45, and `KARAKTER.CMP` through DS:4a79 into slot 1. These addresses are parent-verified original-code evidence; see parent party-analysis bundle for instruction provenance. The entry allocates 64000 bytes and sets 320×200; that establishes its offscreen dimensions, not screenshot capture dimensions.

Inventory corrects one location hypothesis: **both KARAKTER.CMP and SEMATIK.CMP are in IVIR.CKD**, while PALBAT.PAL is in SAVAS.CKD. A new cross-archive palette preview uses the parent-confirmed binding, not a guessed same-archive association. Outputs `extracted/phase-five/batch-party-callsite-20261014/{KARAKTER,SEMATIK}/` preserve raw indices, palette and provenance. PALBAT payload offset 207230; KARAKTER offset 493154, 320×200; SEMATIK offset 1092589, 200×20. Both strictly match dimensions.

With correct PALBAT, KARAKTER shows the original textured brown layout matching manual page 7 and **static attribute labels**. This corrects the earlier candidate paragraph: labels were obscured in the unsuitable GRUP palette; only their numerical values, character/name, portrait and populated race/sex/body elements are absent from the background. SEMATIK is a strip of colored symbols on black, including gender-like signs, question mark and other icons. Exact individual symbol rectangles/meanings and black transparency remain unverified. No masking was applied.

This is now strong decoded/manual/code agreement for the character-screen background and symbol sheet. No main-menu background has yet been verified by this subtask.
