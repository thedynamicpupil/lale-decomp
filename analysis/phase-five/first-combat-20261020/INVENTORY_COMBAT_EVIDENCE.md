# Inventory and combat equipment evidence — 2026-10-20

Phase 1 supporting investigation only. No Rust implementation, live DOS trial,
REA session operation, original-file modification or historical-report rewrite
was performed for this report. Existing retained REA results and original-byte
listings were reviewed; targeted listed instructions and item data were checked
against the current read-only `lale/IST.EXE`.

## Evidence classification and preservation

- **A:** direct original instructions/data, with semantic interpretation stated
  separately where incomplete.
- **R (retained):** prior controlled DOS helper-call observations, not new runtime
  evidence or physical mouse input.
- **M:** original manual descriptions, not numeric formula verification.
- **I:** inference to test through original consumers/runtime.

Original IST SHA256 remains
`9ba1640ae2ee33579cb1c914d0686346f53c4c7ef6520c7d92262b9c2f06b05e`.
678 instruction lines in retained overlay1694 listing ranges
`50154..507c8`, `51bd0..51d25` match original bytes. A further 513 lines across
overlay1670 `38c9a..39018` and overlay1694 `56e44..5711e` also match.
These checks establish bytes at those offsets; they do not establish execution,
complete function boundaries or every printed disassembler target.

Source coordinates below are hexadecimal **physical IST.EXE file offsets**.
Original overlay1694 starts `49c50`, size `d7cc`; its logical offset is
`file_offset - 49c50`. Overlay1670 starts `31f10`. Logical overlay segments are
loader identities, not measured live DOS CS values. Resident DS data in this
report uses the existing proven mapping `file_offset = 19200 + DS_offset`.

**Disassembly caution:** retained objdump near-call/jump text sometimes differs
by `10000` because the displayed adjusted file address does not preserve the
original 16-bit displacement semantics. For example `50663: e8 ca b6` is a
signed near call to physical `4bd30` / original1694:20e0, not displayed `5bd30`.
Validate displacement and overlay bounds before importing a printed target.

## Existing acquisition remains the correct ownership boundary

The original group0 opcode9 at PCS1 member offset `c5` takes
`00 00 00 00 02 00 00 00 00`. Handler physical `44643` loads three resource
bytes followed by three big-endian item words into DS:bb57/bb59/bb5b, then
invokes original1689:2f21 / physical46591 in mode0.

Item2's name is proven independently by indexed consumers using
`DS:0ce2 + 15*item_id`; item2 is DS:0d00 / file19f00:
`73 69 76 72 69 20 64 61 9f 00`, original `sivri daş`.
The displayed quantity suffix `(1)` is not item ID1.

Original1689:2b1a / file4618a exchanges a raw item WORD with one inventory slot.
Retained controlled DOS transfers into party1/slot1 change DS:9a48 from0 to2,
with the reverse transfer restoring the panel, all four numeric records,
temporary pool and RNG. Mode0 bypasses shop pricing and equipment-ref clearing;
it **does not automatically equip the stone**. Do not interpret acquiring item2
as wielding it.

Sources: `analysis/NATIVE_ACQUISITION_DOOR_CHECKPOINT_20261016.md`;
`analysis/phase-five/acquisition-20261016/item-transfer-rea.json`
(retained REA evidence
`ev_1208bd1fdfa5b73abe103961f5140f125cf4402864ad8dd729564f6e5c7d10d6`);
`analysis/phase-five/lifecycle-20261014/otopark/OTOPARK_DIALOGUE_AND_ACQUISITION.md`.
Current Rust `lale-core/src/acquisition.rs` preserves this raw-word exchange.

## Original numeric record inventory/equipment layout

For original one-based character index `p`, numeric record base is
`B = DS:99a6 + 92*p` (party1 begins9a02). The following are direct addressing
relationships, not modern RPG slot assumptions:

|Record byte offset|Original addressing|Recovered meaning and limit|
|---|---|---|
|3c|DS:99e2 + 92*p|First equipped-object reference, used by primary attack computation|
|3e|DS:99e4 + 92*p|Second equipped-object reference, separate attack/protection handling|
|40|DS:99e6 + 92*p|Third equipped-object reference, clothing/protection consumers|
|46..58, step2|DS:99ea + 92*p + 2*slot, slot1..10|Ten raw inventory WORDs|
|5a|DS:9a00 + 92*p|Derived carried-item quantity/weight accumulator written by1694:6ac2; not an inventory slot|

An equipment reference is a **WORD index into the numeric record**, not an item
ID and not a copied item. For inventory slot `s`, the stored ref is `s + 22h`;
slot1 therefore stores23h, resolving `B + 2*23h = B + 46h`.
Zero is the unequipped sentinel. Original code dereferences
`WORD[B + 2*ref]`, then signed-divides by100: remainder is item identity,
quotient is a separate item component whose full combat semantics remain open.
Keep the full raw WORD; dropping the quotient would change original behavior.

Primary examples: physical5021c..5023c,50408..50428,50497..504dc.
The acquisition helper's shop-only loop compares equipment refs against
`slot + 22h` before clearing a ref; this independently supports the reference
interpretation. Its mode0 branch deliberately bypasses that loop.

## Weapon table and Sivri Daş raw parameters

Direct consumers multiply normalized weapon identity by14 and index resident
DS:0e79, giving a seven-WORD record. DS:0e79 is file1a079. This report retains
raw fields until their complete consumers settle their names.

|ID|File offset|Seven signed LE WORD values|
|---|---|---|
|0|1a079|0,0,0,0,0,0,0|
|1|1a087|601,0,3,13,2,4,0|
|2, Sivri Daş|1a095|201,2,1,3,1,2,0|
|3|1a0a3|401,0,2,4,1,3,0|
|26|1a1e5|1205,0,5,37,2,4,23|

Item2's exact14 bytes:
`c9 00 02 00 01 00 03 00 01 00 02 00 00 00`.

Useful source-backed fields:

- `+0`, DS0e79: physical50516 loads this into DS:d5aa in primary/secondary
  attack-stat helper original1694:6828 / file50478. No-weapon fallback is200.
  It splits quotient/remainder by100 and combines those with signed character
  statistics, raw item's quotient, specialist comparison and active effects.
  Calling this value simply "damage201" would be wrong.
- `+4`, DS0e7d: file51c22 copies it to DS:d5ee for the selected item description.
  Item2 field=1; manual describes weight/handling, but this display alone does
  not establish the complete physical damage distribution.
- `+8`, DS0e81: equip branches compare this field to2 and reject a primary
  weapon when the secondary ref is occupied. Item2 field=1. Together with
  manual13 this is strong evidence for hand-count handling.
- `+10`, DS0e83: file50269/5032b caches this separately for first/second hand
  in the temporary combat record. File514fa reads it for a status display and
  later divides by100. Item2 field=2. The manual's SHZ label is an important
  next cross-check; this report does not certify an action-cost formula.
- `+2`, `+6`, `+12` still need full consumer mapping; preserve values verbatim.

**Alias caution:** combat-side consumers normalize item43 to table row26
(5023f..50245,504df..504e5,51bf1..51bf7). World/UI1670 uses item34 in corresponding
special branches (38cd8..38ce5 and38ea9..38eaf), with another branch mapping34
to27. This discrepancy is present in original bytes. Do not globally normalize
34 and43 to the same semantic identity without tracing callers and displays.
It does not affect opening item2's direct table row.

## Already retained equipment handlers

There are equipment writes in both exploration-side1670 and combat-side1694.
They share record refs and table layout, so a reusable core with verified host
differences is plausible; do not assume the two complete handlers are identical.

Exploration-side physical38c9a..39018:

- First-hand branch reads weapon table+8, rejects a selection already referenced
  in either hand, checks secondary empty for hand-count2, then writes
  `slot+22h` to DS:99e2+92*p at38dae.
- Second-hand path38db9..38fa9 checks item categories, primary weapon hand count
  and currently equipped refs before writing DS:99e4+92*p. Its special cases
  require a full branch transcript, not a blanket "main hand must be occupied".
- Clothing branch38fb4..39013 allows selected IDs strictly26<id<33 and writes
  DS:99e6+92*p. Manual's Terlik exception is corroborating intent; exact identity
  and all exceptions require consumer validation.

Combat-side physical56e44..5711e (original1694:d1f4 onward):

- Input region11 enters first-hand branch, region12 second hand, region13 third.
- Event gating includes DS:e5e5==1 or a local input code1c, plus nonzero selected
  item. Exact keyboard/mouse dispatch preceding these predicates remains to trace.
- First-hand selection43 maps to26; table+8==2 requires secondary empty.
  Successful store at56f23 writes `selected_inventory_slot + 22h`.
- Equivalent secondary and clothing stores are570ce and57119.
- Do not infer action costs from these stores: follow success57208 and
  rejection5722b back into the battle scheduler before implementing Phase4.

## Combat stat bridge and next exact analysis targets

Physical50145..50477 = original1694:64f5 is a major bridge from live party
records to temporary battle state. It selects party p in DS:2898, calls
50478 (attack-stat helper),50712 (carried-item accumulator),507c9,50926,50a9d,
then populates a46-byte-stride table at DS:9f1a+46*p.
Among direct writes: first/second weapon table+10 go to
DS:9f26+46*p /9f28+46*p, with explicit zero fallback. This is the most useful
next entry for distinguishing weapon speed from total movement allowance.

Physical51d61..51eb8 = original1694:8111 copies temporary battle results back
into the four party numeric records, including original record offsets0c,
0a,16, other auxiliary fields and offset44. Exact meanings and call timing
require the battle termination path; copying the entire temporary record would
be incorrect. This is a concrete candidate for victory/defeat persistence.

Priority traces for the main investigator, in dependency order:

1. Confirm battle initialization calls50145 and identify all46-byte table fields
   through the renderer/scheduler consumers; distinguish p1..4 from enemies.
2. Decompile/correct original1694:6828 (50478) and6ac2 (50712), then related
   507c9/50926/50a9d. Check signed division, repeated expressions, effect calls
   and integer widths directly against instructions. Do not add RNG if absent.
3. Follow first/second hand speed caches9f26/9f28 into legal-attack comparison
   and action deduction; cross-check DOS SHZ/HRK displays.
4. Trace combat equipment input56e44 onward,5711e..5722b and enclosing handler.
   Observe one DOS equip operation and inventory ref/state before/after; verify
   resource/action cost and whether the panel consumes a turn.
5. Observe original raw item2 ownership/equip sequence, execute an attack, then
   compare hit and damage independently. Bare-hand200 and stone201 are encoded
   attack parameters, not certified final damage numbers.
6. Trace51d61 callers at actual result branches and compare all368 party bytes
   before/after battle, then validate exploration flags and return lifecycle.

## Manual corroboration and unresolved limits

Manual PDF12–13 documents F1–F4 character panel, I item selection, Enter/mouse
selection, main/secondary/clothing positions, Q/W/E release, transfer/discard,
two-handed restrictions and one-use right-click consumables. PDF20 describes
Sivri Daş as light, fast, one-handed melee; PDF22's Daş is a separate ranged item.
PDF17 says melee requires adjacency and enough movement relative to right-hand
weapon speed; exact strictness and subtraction are still executable questions.
Manual18–19 distinguishes hit chance from randomized net damage minus protection.

These remain **M**, not new runtime proof. Source:
`analysis/phase-five/lifecycle-20261014/manual/MANUAL_TO_BINARY_INDEX.md` and
`page-12-compact.txt`, `page-13-compact.txt`. Prior manual renders and source PDF
were preserved. No fresh numeric combat formula, AI, complete inventory UI,
combat victory/defeat result or action-cost behavior was implemented here.

The next safe Rust increment is a data/record accessor only after main Phase1
architecture validation, with any later equipment UI waiting for Phase4. The
existing acquisition remains valid and must not be replaced with auto-equipping.
