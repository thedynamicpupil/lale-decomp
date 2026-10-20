# Existing combat evidence audit — 2026-10-20

This is an additive inventory of retained evidence for Phase 1 of the first playable combat milestone. No live REA/DOS session was accessed, no original assets were changed, and no existing reports or frozen evidence were regenerated. Instructions read: AGENTS.md, UpdateablePrompt.txt, living project documentation and the 2026-10-19 walking/debug checkpoints. The current user request makes combat the immediate priority. This document does **not** establish that combat architecture is fully recovered.

## Highest-value executable leads

1. **Resolve the actual encoded combat stub `0110:0066`.** [Retained opcode8 instructions](../encounter-20261016/opcode8-after-groups.asm) at physical `0x44314` push `0x28`, call `0010:2dca` and then at `0x4431c` execute `lcall 0110:0066`. These are original file operand coordinates, not current relocated runtime addresses. The dispatcher wrapper's decompiler calls this `func_0x00026686`; that synthetic name is a lead, not an established combat body address. Resolve from overlay metadata/live stub before tracing the body. Do not assume another retained file named `b40a-entry.asm` is this entry.
2. **Capture state immediately before the call and immediately after its return.** Three original six-byte group records at `DS:5bd8 + 6*i`, i=1..3, are snapshotted into `DS:5bf0 + 6*i`, descending i=3..1, at physical `442c8..44312`. The words are copied offset+2, +4, +0. This is direct instruction evidence; the meaning of +0 is still unknown.
3. **Trace the result/party boundary instead of assigning a guessed bool return.** Retained instructions cover postcall compares, cleanup and status handling; full dispatcher pseudocode extends farther. Combat completion must reproduce persistent numeric-party mutations and original event continuation, not merely acknowledge opcode8.

The existing [illustration checkpoint](../../NATIVE_ILLUSTRATION_CHECKPOINT_20261016.md) records a controlled original illustration call and the last historical DOS pause. It does not record execution of combat. Confirm actual live registers/session before reuse.

## Opcode8 input and return model

[Navigation event control flow](../navigation-events-20261016/EVENT_NAVIGATION.md) establishes PC1(2,0), group0, mode2:

- With flag1 clear: illustration3 argument13, warning2, encounter8 bytes `00 0d 01 00 00 00 00`, dialogue17, setflag1, exit.
- With flag1 set: repeat text then exit. Flag1 is set by the following script command, not by inventing a victory reward inside combat.
- Key flag2 is earned at PC1(8,1), group1 through a separate search/acquisition event; no direct combat-key reward is established.

[Retained dispatcher REA result](../navigation-events-20261016/event-dispatch-rea.json), case8, has type-propagation/global-alias warnings. Its next details remain **static pseudocode leads requiring instruction confirmation** where not covered by the assembly slice:

- Consume one prefix byte, clear group +2/+4 for i1..3, consume six bytes into DS5be0,5be2,5be6,5be8,5bec,5bee. Hence explicit first request places13/1 in the first group pair, zero/zero in the other pairs. Do not identify group13 as a creature index solely from this pair.
- An all-six-zero branch obtains random groups/quantities through area-data reads around offsets0x1c onward; the first explicit request does not use that branch.
- After combat: compare original/snapshot group words; refresh status/presentation and handle conditional resource cleanup; call encoded `0138:0138`, then `0118:002a` and `0118:007a` (directly visible physical44517..44530).
- Clear DS:b9c8 at4453a, clear two word tables in nested loops, clear both group sets, scan party i1..4 for signed current-value >0 at expression `i*0x5c - 0x6620` (DS:99e0 +92*i). Decompiler checks DS:632e==2 **or** no surviving positive party field, invokes a termination helper, then follows common case16 veto/exit. Exact defeat UI/meaning of632e and termination helper still require tracing.

The first word scan address gives a strong candidate current-Güç consumer: with party1 baseDS:9a02, targetDS:9a3c is record+0x3a. This agrees with earlier preparation copies; it is corroboration, not yet damage/death rule verification. Manual's below−5 death claim still needs exact binary threshold evidence.

## Manual-described architecture and controls

Use retained [manual-to-binary index](../lifecycle-20261014/manual/MANUAL_TO_BINARY_INDEX.md) and original page images/text beneath that directory. Page numbers are one-based PDF pages. Everything in this section is **MANUAL-DOCUMENTED**, not a recovered formula or runtime trace.

| Pages | Documented behavior | Missing binary proof |
|---|---|---|
|16|Nine battlefield regions; each corresponds to an exploration step and contains144=12×12 cells. Initial sides depend on exploration positions; individual placement is random.|Actual grid ABI, topology/edge walls, placement range/order and random draw count. Do not assume a flat36×36 traversable rectangle.|
|16|Conscious party participates; temporary allies and converted creatures may also be controlled. White square marks active actor; walls hiding active actors become transparent.|Combatant capacity/record ABI, ownership/faction tests, current-actor and wall-visibility routines.|
|16|Lighter weapons, agility and luck affect ordering. Actors spend movement allowance within a turn.|Exact initiative/random order, allowance formula, turn exhaustion/switch policy.|
|16–17|Arrows/numpad move; walking onto adjacent enemy performs melee. One empty-cell step costs1.|Diagonal costs, collision, adjacency and attack input dispatch.|
|17|Melee requires remaining allowance greater than current right-hand weapon speed.|Actual signed/unsigned comparison and boundary equality; attack cost.|
|16–17|Enter enters aim mode/executes shot; S/O changes targets; Tab next actor; V vecizes; I nearby-item mode; Q/W/E releases held equipment; Space uses selected item.|Exact scan codes, availability, action costs and modes.|
|18|Five main action icons, eight arrow icons, tactical minimap (enemy blue, friendly red, active white), front-facing actor/target on pedestal, active portrait/name/race/sex/equipment information.|Asset/source rectangles, hitboxes, renderer order, camera logic, font/palette lifetime.|
|18–19|UI labels: Vuruş Olasılığı, Korunma, Kurtulma, HRK, SHZ, Damak. Hit randomization and damage randomization are separate; protection subtracts from damage; zero net damage can be a successful hit.|All exact formulas/random ranges/order and integer semantics.|

Manual page13 inventory: main hand, secondary hand, clothing; two-handed equipment requires main hand plus empty secondary; Terlik is a clothing exception usable as weapon. I selects items; F1–F4 transfers to party; F5 discard; Q/W/E unequips. This remains descriptive until the actual equipment mutations/derived-stat consumers are recovered. Do not implement modern slot assumptions from terminology alone.

Manual page20 describes Sivri Daş as one-handed/light/fast melee with weak damage; distinct Daş is a ranged item on page22. No numeric speed/damage value or equipment flag is verified by prose.

## Existing asset and renderer evidence

The immutable older [archive member inventory](../../evidence/flib-members.json) contains the following provenance. Ordinals are archive directory order, **not creature/image/gameplay IDs**:

| SAVAS.CKD member | Ordinal | Decimal payload offset | Bytes |
|---|---:|---:|---:|
|KOPEK.CMP|72|151216|2166|
|KOPEK.KOR|73|153447|72|
|PALBAT.PAL|108|207230|768|
|SAVAS.RES|109|208063|1469|
|SAVAS.BAK|110|209597|1471|
|SAVDEM.RES|111|211133|262|
|TABLETUR.CMP|118|219430|12633|
|YERICON.CMP|121|233594|13105|
|DUVARIC1.CMP|27|85970|1970|

KOPEK naming prioritizes tracing but does not bind group13 or verify its combat data. Existing decoded previews for TABLETUR, YERICON, DUVARIC1, AYI and LALE are under `extracted/phase-five/batch-graphics-20261014/`; reuse them for inspection without broad re-extraction. Actual renderer consumers must establish use/slots.

[Screen resource map](../SCREEN_RESOURCE_MAP_20261014.md) proves body atlases use six-word/12-byte KOR records via original1694:0387, physical49fd7, and explicit254-key copies through3599:0341/03c4. This is a reusable original primitive, already used by character creation. It does not yet establish combat animation selection, direction/camera or terrain renderer.

[Literal dependency correction](../graphics-dependency-literal-addendum-20261014.md): SAVAS.BAK literally contains absent `-MAGA1.CMP`/`-MAGA2.CMP`; SAVDEM.RES contains absent DUVARIC0.CMP. Do not use normalized filenames as proof of loader behavior.

## Recording evidence already cached

Authoritative [visual cache index](../walkthrough-20261015/visual-index/INDEX.md) and [findings](../walkthrough-20261015/VISUAL_REFERENCE_FINDINGS.md) bind video1 to SHA256 `f34bdc51c52b60127d0fa0ccb81a1c812e2db7fcf99cb409e911ae973263c509`.

I inspected existing video1 contact-01: source samples140..200s show isometric terrain, party/dog-like actors, camera changes, bottom equipment/stat panel and battle commands;130s is black. Existing report observes room return by210s. These are **recorded visual observations**, not exact transition timing, enemy counts or verified combat outcomes. Contact-sheet resolution does not establish numeric UI values. Request targeted full frames/short windows around140..200 only for concrete ambiguities after tracing code. The initial video's lossy RGB cannot certify exact palette indices.

## Already implemented inventory boundary and current native frontier

[Acquisition/door checkpoint](../../NATIVE_ACQUISITION_DOOR_CHECKPOINT_20261016.md) proves mode0 helper1689:2b1a raw exchange into party inventory (party1 slot1 DS9a48 becomes2); no equipment mutation occurs. Original item2 is linked by15-byte-name stride to DS0d00 / physical19f00, bytes `73 69 76 72 69 20 64 61 9f 00`, sivri daş. This is actual ID proof, not manual order.

`rust-port/crates/lale-core/src/acquisition.rs` stores four92-byte numeric records; inventory slots1..10 are byte offsets `0x44 + 2*slot` (0x46..0x58). Native creation/room carries real numeric party and RNG. Current gate leaves encounter8 pending. The debug tool reads room/event state without acknowledgement; its F7 bundle optionally writes368-byte party-numeric.bin. Full equipment references, combat stats, ground items, HP/result persistence, defeat and save lifetime are not implemented merely because acquisition works.

## Exact next actions

1. Main-owned REA/DOS: resolve0110:0066 through actual overlay stub/metadata; retain original offsets and relocated coordinates separately. Trace entry and identify combat data setup/terrain derivation and UI loads before implementing screen.
2. Original runtime: enter genuine request with earned acquisition and clean dog/key flags; trap entry, post-setup/input poll and return. Capture numeric party, RNG, group/terrain/actor tables and authentic indexed screen/palette. A conditioned helper trial must be labeled separately from the continuous original path.
3. Recover actor renderer and initial-placement table; compare one tactical frame before native battle screen integration. Trace scheduler/move/attack and one enemy decision from the same state, keeping manual claims separate.
4. Trace character-information/equipment handler from item2 inventory through main-hand assignment and derived speed/hit/damage consumers; preserve mode0 acquisition behavior.
5. Prove termination/result branches and exploration continuation before acknowledging native8. Keep flag1 progression after authentic battle host completion and key2 event separate.

No combat math, enemy AI, initiative formula, battle dimensions ABI or authentic equipment-cost model is yet established by this existing-evidence audit. Phase1 remains open.
