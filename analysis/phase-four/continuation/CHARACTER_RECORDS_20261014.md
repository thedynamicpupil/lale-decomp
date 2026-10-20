# Character creation mechanics and records — 2026-10-14

## Documented versus recovered

Manual PDF6–7 describes four characters, random attributes, race/sex/appearance changes, blue/red comparison colors, name entry and next/previous navigation. The four-slot loop and input operations are now corroborated by original code; naming and sex hotkeys disagree with the manual (see MENU_TO_CHARACTER_CREATION_20261014.md). Full RNG and generated-value formulas are not yet safe to implement from pseudocode.

Current character index is at original DS:2898; its file-backed initial value is1. Code indexes numeric records with stride0x5c (92) and text records with stride0x94 (148). Indices1..4 are active party slots. Original DS:99a6 is the numeric table base before the slot displacement; DS:9c26 and9c95 are two37-byte serialized text fields within the text record. These are logical original data offsets, not runtime host pointers.

Observed numeric record offsets (u16 little-endian): race+02, sex+04, appearance+42. These identity fields are instruction-backed. Attribute names below are corroborated by the display routine's ordered value calls and static/manual row labels; use them as strong display-field mappings rather than a complete game-state ABI.

|Offset|Displayed attribute|
|---|---|
|24|Boy|
|26|Kilo|
|0e|Zeka|
|10|Vuruş Gücü|
|0a|Kelime Dağarcığı|
|0c|Güç|
|14|Çeviklik|
|12|Dayanıklılık|
|1a|Batıl İnanç|
|16|Yüzsüzlük|
|18|İstanbulluluk|
|1c|Cesaret|
|1e|Etkileyicilik|
|20|İnanç|

All offsets are hexadecimal bytes within the92-byte record. Many remaining words are unknown or have only provisional interpretations. Do not infer every field from party-file values.

Generation helper167c:0437 calls initialization0000 and repeated arithmetic/RNG-looking helpers. At original0x3daa9..0x3db44 it clamps word indices3..16 to at least50, **except word6 (offset0c/Güç), whose minimum is3**. Boy/Kilo at offsets24/26 are outside this clamp loop. This explains why the manual's blanket minimum50 is unsafe and why its screenshot can display strength4. Exact RNG range, seed, arithmetic rounding and trait modifiers remain unresolved.

Race change selects1..8 and sets suggested appearance `2*(race-1)+1`. Appearance change selects1..16. Portrait/body helper011f sets sex2 for appearance6,13,14,16, otherwise sex1; original CS table bytes can corroborate those cases. Sex changes regenerate values but the complete relationship among user choice, race and appearance is not yet fully characterized.

## Party file serialization

Save helper167c:182e, originalphysical0x3e42e, opens grp.dat with mode4. The existing file-mode pointer table DS:8ed8 has six cells: rb,rt,rb,rt,wb,wt. Mode4 therefore requests wb. It writes two37-byte text blocks per character for slots1..4 (296 bytes), then four92-byte numeric blocks (368 bytes), totaling664. Read helper167c:1932 mirrors the layout with mode2/rb. Archive write wrapper16cd:06f7 delegates to the file wrapper for loose files; packed-member writes are rejected.

Both originals GRP.DAT and GRPHAZIR.DAT are exactly664 bytes. New party-record-byte-evidence.json preserves every block and offset without modifying originals. The name field contains null-terminated encoded text; the second field is initialized by the save helper from a digit-string template, but its gameplay meaning is unverified. This is party serialization, not proof that the complete savegame format has been recovered.

Evidence: character167c-rea.json, party-write16cd-rea.json (ev_6f6d2b92487b2919c6d171895b7da98044cdb2edfad325d08dd3236a457c95e2), character-original-focused.asm, party-record-byte-evidence.json and character-menu-data-bytes.json. Original IST SHA256 remains9ba1640ae2ee33579cb1c914d0686346f53c4c7ef6520c7d92262b9c2f06b05e. Synthetic analysis CS4000 is never treated as a runtime load segment.
