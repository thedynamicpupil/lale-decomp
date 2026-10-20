# Bounded character generation/finalization audit — 2026-10-14

Latest authority: UpdateablePrompt.txt. Existing native appearance/name/four-slot behavior is user-verified; this investigation does not reopen those milestones. New evidence only, no original/earlier report/shared REA session/Rust source modified by this subtask. Direct objdump at known logical167c boundaries is retained alongside exact original IST bytes/hashes in `source-evidence.json`. Physical addresses below refer to original IST; logical offsets = physical−0x3cc00. Dynamic DOS overlay load segments remain unknown.

## Generator structure and known call sequence

Logical167c:0437, physical0x3d037..0x3db4d, calls near167c:0000 at0x3d03e, then performs straight-line arithmetic with26 direct calls to resident0000:1779 before the final minimum loop. There are no conditional jumps among those26 call sites. Their scaled ranges, in executable order, are:

`25,25,5,5,150,150,50,50,100,100,6,70,80,100,200,200,150,150,150,150,151,201,201,251,151,6`.

Each site uses the verified positive draw `floor(range*rand15/32768)`, through compiler multiply1242 and signed quotient12df. JSON records all exact physical/logical call offsets and range immediates. Initialization0000 makes one additional draw(5), so this routine consumes27 direct RNG updates before the final minimum/display pass. This does **not** establish global UI RNG order: entry167c:1aa2 separately calls0000 before choosing generation versus display based on name presence; appearance loading/animation and other callers must also be audited. Parent's new `../rng-seed/SEED_PATH.md` supersedes older seed-unknown statements and traces startup date/time/TZ conversion to the original16-bit seed.

### Trait initialization, newly isolated pure increment

167c:0000, physical0x3cc00..0x3cd1e:

1. For i=1..15 inclusive, reads u16 at original DS:`2778+32*race+2*i` and copies to DS:`9b72+36*slot+2*i`. The loop uses signed JLE15; valid known races1..8 are the intended domain.
2. Copies race description text from DS:`2638+11*race` and sex-dependent text into working strings. These are not copied into numeric stats by this code; exact semantics/encoding remain separate.
3. Performs draw(5) at physical0x3ccc3, scales result×2, reads u16 from DS:`0fe7+10*race+2*draw`, and stores it at working trait offset30 (word15) DS:`9b90+36*slot`.

The last step overwrites the copied fifteenth trait. JSON preserves all eight raw16-word race rows and eight five-word choice rows. These are source data, not inferred RPG meanings. A next bounded Rust increment can be a pure `initialize_traits(race, rng, tables)` returning the15 trait words; it should consume exactly one RNG value and retain word15 override. Do not connect it as full creation until all following field formulas and global invocation order are validated.

### Already verified first formulas

With T[1],T[2] indexing the copied working traits and all intermediate original16-bit arithmetic preserved:

- Numeric offset24 (Boy): `150+10*T[1]+draw(25)+draw(25)`; physical0x3d041..0x3d0b7.
- Numeric offset26 (Kilo): `Boy+10*T[2]−110+draw(5)+draw(5)−10*(sex−1)`; physical0x3d0bc..0x3d165.
- Numeric offset22: `50+draw(151)`; physical0x3d9ff..0x3da34.
- Numeric offset28: `15+draw(6)`; physical0x3da39..0x3da6e.
- Numeric offset2c copies T[15]; physical0x3da73..0x3da9c.

Offsets22/28/2c are not assigned invented gameplay names. Remaining large formula slice0x3d16a..0x3d9fe still needs systematic destination/trait/sex dependency transcription and integer-width audit. Its26-call inventory is an aid to that audit, not proof that all formulas are implemented. No fresh numeric results are synthesized here.

## Minimum pass — narrow increment independently confirmed

Logical167c:0ea1, physical0x3daa1..0x3db46, iterates word index3..16 inclusive. For index6 it compares with3 using signed JGE at0x3daf8; other indices compare with50 using signed JGE at0x3dace. Values below their limit are replaced; others are preserved. Signed comparison means0x8000..0xffff are negative and are raised. The loop increments and checks signed index>16 at0x3db42, then calls display167c:0f4e at0x3db49.

Thus numeric byte offsets06..20 inclusive are affected; offset0c has minimum3; other covered fields minimum50. Identity fields00/02/04, Boy/Kilo24/26, and all offsets beyond20 are untouched by this pass. Parent implemented this isolated pure pass with boundary/untouched-field tests and reported22 total passing tests; it remains unconnected to fresh/loaded UI generation. That scoped increment matches the original instructions and does not claim full stat recovery.

## Final party confirmation — verified direct path

167c:1aa2 entry sets its local result to1 at physical0x3e6ad. Input handling near167c:2312 (0x3ef12) checks BIOS scan39 (Space) or logical mouse region8/button1. It calls original strlen for the current slot name and ignores advance if empty.

- If current slot<4 and name nonempty: increments slot and enters previous/next transition path at0x3eff4.
- If current slot==4 and name nonempty: increments current index to5 at0x3efa2; calls resident1c7f:073f at0x3efb8 with pushed arguments `(0xc80,−DS:7318,0)`; calls near167c:182e writer at0x3efc1 (physical target0x3e42e); calls near167c:1a1a cleanup at0x3efc5 (target0x3e61a); jumps common exit0x3f05f. Common exit calls resident1c7f:06b6 and returns the local result in AX (success1).

No extra confirmation-dialog call occurs on this direct branch. Only the current/fourth name is checked here; earlier names are gated as each slot is advanced. It does not iterate and revalidate all four names or scan stat minima at final confirmation. Do not add an invented modal confirmation screen.

Cancel scan01 or region7/button1: from slots>1 decrement current slot then transition; from slot1 cleanup, transition with0x320 argument, set local result0 at0x3f055 and common return. Branch shapes and original bytes are in `party-confirm-cancel.asm`.

Writer167c:182e is the already mapped grp.dat mode4/wb serialization: two37-byte text blocks per slot then four92-byte numeric blocks, total664. It also prepares auxiliary text from other data, so a future save operation must preserve/verify that preparation, not simply dump currently incomplete drafts. Initial open failure follows error helper at0x3e455. Finalization is therefore still blocked in native flow by complete faithful generation/initialization, auxiliary-field preparation and safe output policy, rather than an unknown extra user-confirmation prompt.

## Recommended next audit

1. Implement/test only the pure trait-row/one-choice primitive if another isolated increment is desired; preserve table provenance and original draw consumption.
2. Transcribe0x3d16a..0x3d9fe by numeric destination, recording original16-bit operations and all sex/trait dependencies. Compare a fixed-seed isolated harness against original execution before enabling fresh stats.
3. Audit caller invocation sequence: initial entry0000, generation0000, race/sex rerolls, appearance/animation calls. The per-function27 direct RNG calls do not establish first-screen state.
4. Recover writer's auxiliary preparation0x3e465..0x3e4f5 before enabling final party serialization. Keep originals read-only; parent chooses native save-path architecture separately.

No implementation of guessed mechanics, fresh stats, party-file writes or gameplay was performed in this bounded subtask.
