# Otopark opening dialogue and Sivri Daş acquisition — bounded recovery

New lifecycle continuation follows UpdateablePrompt and the parent task. No Rust/shared REA/original/frozen/historical changes. Earlier area layout was reused, not regenerated. Original1670/1689 consumer copies remain under integration-20261014/otopark; this new directory preserves targeted, correctly aligned original-byte listings and a reproducible bounded script extractor.

## Initial event dispatch and exact remembered line

World path physical3ac19..3ac43 computes `(y*width+x)*15` and calls original1689 export0020→actual0000 /physical43670 with **mode2**. Initial PC1 coordinates(2,1) yield cell byte offset180; full member offset223, FRPOS offset86121. Exact15 bytes:

`03 02 02 01 02 01 02 01 02 02 00 01 01 01 06`

Dispatcher436c2 reads four bytes11..14 and produces two-digit decimal fields: `01010106`. Generic group selection uses the final two relative to map-header bytes39/40 (both1): `(1−1)*32−sign(1−1)+(6−1)=5`. Thus initial cell selects **zero-based PCS1 group5**, not a guessed initial dialogue string address.

PCS bank reader1689:4e63 /physical484d3 reads handleDS:e34f at cursorDS:bb98 and increments cursor. Original string helper1689:46aa /47d1a adds10 to each byte with8-bit wrapping after a counted copy at4870d. This validates decoding; it is not a heuristic Caesar-shift guess.

Group5 starts PCS1 offset1259, length671. Mode2's encoded offset11 selects marker14 at1270; its section contains a conditional flag test and ten dialogue operations. Exact opening line is at encoded-text payload1280,26bytes, speaker selector1:

`nooluyo yaa? o neydi Oyle<B6>`

`<B6>` represents the exact decoded byteB6, not editorial punctuation. Source casing/substitutions are preserved; the game's glyph mapping interprets the Turkish text. This directly corroborates the user's remembered words while recovering the actual stored spelling. The specific character's name depends on party slot1; no invented named protagonist is assigned.

## Dialogue order and once-only flag

Opcode17 /physical44ae8 consumes speaker byte and counted encoded string, obtains decoded text through4870d, then calls original text/speaker routine15dc:2948. Fixed speaker selectors are passed through. Selector0 uses random party selection; selector5 reuses DS:bb9c if≤4. Their broader validation belongs to the UI consumer; only fixed selectors1..4 occur in this opening group.

|Order|Party selector|Exact byte-display prefix|
|---:|---:|---|
|1|1|`nooluyo yaa? o neydi Oyle<B6>`|
|2|2|`ne biliyim be! ellemeyecektik<B6>o Seye...`|
|3|1|`ne lan. iyi ki garip bir Seye...`|
|4|2|`oolum bak, eminim garip bir Sey...`|
|5|3|`lan sus! saCmalamayIn be! top nerde...`|
|6|1|`kim ulan yeniliyordu? kesin goldU...`|
|7|3|`hadi lan!<B6>`|
|8|4|`eee, rahatsIz edicem ama, hani...`|
|9|1|`dooru valla...<B6>`|
|10|3|`doGru... hadi bakalIm.<B6>`|

Full strings, decoded/encoded hex, lengths and archive offsets are in JSON. Table prefixes are abbreviated for reading, not replacements for source text.

Group5 opcode1 checks event flag249. If clear, it skips the next opcode4 exit and reaches dialogue. If set, that exit stops the script. After dialogue, opcode7 sets flag249 then opcode4 exits. Flag helper4811c reads a bit inDS:b9ca+(id/8); setter48149 ORs its mask. For249 the mask isbit1 in byte31, DS:b9e9. Thus opening dialogue is guarded against repetition by explicit original state. Initial clearing/carry-over across save load still belongs to party/world initialization research.

## Acquisition is a separate nearby-cell script

The stone suggestion and inventory interface are **not in group5**. PC1 cell(2,0), directly above initial grid cell, contains event key`01010101`, selecting **group0**. Original movement branches call the same dispatcher with mode1 on candidate cells before committing movement and mode3 on current cells; mode2 is called after coordinate changes. Exact direction/UI reachability still needs input-path validation; do not hardcode a fake automatic pickup at initial cell.

Group0 contains the decoded warning:

`dISarIdan garip hIrIltIlar geliyor...<B6>gerCekten dISarI CIkacak MIYIZ ?<B6>`

and an evet/hayIr choice. Later opcode17 atPCS1 offset132 uses speaker selector5 and text offset135,length62:

`ooolum dISarda biSey olmasIn? daS<B6>falan yok mu buralarda yav.<B6>`

Then opcode9 atPCS1 offset197 (FRPOS offset274) has nine exact parameters:

`00 00 00 00 02 00 00 00 00`

Original handler44643 reads three resource-addition bytes (all0), then three big-endian words intoDS:bb57,bb59,bb5b: **2,0,0**. It calls actual1689:2f21 /physical46591 with **mode0**, the acquisition/loot interface. That mode adds the three resource quantities and enters original item-pool/UI handling. Accept/decline/input and final per-character transfer remain separate routines and are not implemented here.

## Binary identity of the offered item

Original name consumers physical37bf9/37bfc and51bff/51c02 compute `name=DS:0ce2+15*index`. Therefore pool item2 resolves toDS:0d00, physical19f00, fixed15-byte cell beginning:

`73 69 76 72 69 20 64 61 9f 00`

This is the original **sivri daş** name. The identity is established by original pool word and independent indexed-name consumers, **not manual list order**. Manual description of Sivri Daş as one-handed melee and distinct Daş as ranged is supporting terminology; weapon damage/equipment fields and numeric combat formulas remain unverified here.

Do not confuse opcode3's illustration helper481c7 (`ikon%d.cmp`) with opcode9 acquisition handler46591. This distinction was checked against instruction targets before reporting the item link.

## Evidence, parsing limits and next actions

`selected-script-evidence-with-item-binding.json` preserves all six PCS1 length-delimited group extents, complete selected-group raw bytes, bounded opcode framing, all ten decoded lines, matching cell coordinates, acquisition parameters and indexed item-name proof. `audit_selected_scripts.py` reproduces the bounded extraction and original targeted disassemblies. It deliberately rejects unknown selected opcodes rather than pretending to implement a full33-opcode VM.

Group header's original command budget and event-mode offset handling are preserved but not normalized into a complete invented grammar. Inactive section markers, early exits and conditional command skipping mean a sequential listing is not an execution trace. The current report validates the identified branch behavior from assembly; it does not simulate all shop/combat/area cases.

No Rust PCS module was added: complete command grammar, UI results, event-state initialization and safe interpreter bounds remain insufficiently recovered. A partial parser should not silently skip unknown commands and accidentally advance gameplay. Parent can later add a bounded, typed parser for the independently verified subset while keeping execution disabled.

Next precise targets: candidate-cell mode1 path and choice result through group0; acquisition46591 accept/cancel loop and writes into party inventory; body of15dc:2948 for selector5 lifetime andB6 line marker; PCS opcode8 battle setup after dog text; all15 cell fields/general renderer remain an independent coverage frontier. The recovered first-room dialogue and item link are substantial but do not declare Otopark or combat playable.
