# Lifecycle, manual and Otopark checkpoint — 2026-10-14

Read current `UpdateablePrompt.txt`, AGENTS.md and the three living docs first.
This follows INTEGRATION_CHECKPOINT_20261014; it does not overwrite that checkpoint
or repeat the numeric generator, party preparation/reader or pixel codec work.
New evidence lives under `phase-five/lifecycle-20261014/`.

## Completed bounded increment

`lale-assets::seq_timing` now exports original wrapping32-bit frame-index
arithmetic and signed16-bit refill-budget decision (>10). Two tests cover frame
boundaries, counter wraps, strict budget and invalid zero-fps refill. These are
pure integer helpers, not a host scheduler. Existing SEQ pixel decoder unchanged;
all2433 records still decode. No static-frame cinematic replacement, sound-format
guess, fresh stat UI, finalization IO or speculative gameplay was enabled.

**38 tests pass offline**, workspace formatting check and offline build pass.
Counts: assets8, AMF2, CMP1, original-assets2, core1, runtime24. Complete SEQ corpus,
independent title fixture and previous caller/party tests remain included. No new
user desktop acceptance or audiovisual runtime comparison is claimed. Earlier
eight accepted desktop checks remain valid historical acceptance.

## Character lifecycle: new controlled original evidence

Installed DOSBox-X debugger ran disposable original-file copies with scoped dummy
SDL/no-sound configuration. Watchpoint DS964c stopped inside resident memcpy during
menu initialization. Actual pointer was0e00:08f6, relocated05dc:08f6. Initializer
physical912c/9133 populates templateDS98d4/98d6; menu3fb1e copies72 bytes
DS98b4→962c, mapping template+20h to liveDS964c. Thus previous portrait1694:1935
and restored no-op05dc:00cd are not an exhaustive lifecycle model.

[Raw transcript/dumps, source ranges and limitations](phase-five/lifecycle-20261014/runtime/CALLBACK_INITIALIZATION_OBSERVATION.md).
REA corroborates the74-byte resident default callback and is closed; its indirect
export009d resolves to1670:837a. Audit transitive side effects before assuming
its RNG consumption. This run did **not** reach actual creation entry, record a
complete party/RNG snapshot, compare stat generation, or validate finalization.
A second exploratory run failed to reach its target; contaminated logs are
excluded. No original game code was patched. Both debugger sessions terminated.

## Cinematic progress and remaining boundary

[Sound/refill audit](phase-five/lifecycle-20261014/seq/SOUND_RING_REFILL_AND_CLOCK.md)
recovers44100-byte two-half sound ring, kind2 half selection, dynamic MCP calls,
position correction frontier, bounded C000/0800 refill and late-packet recovery.
All246 kind2 records are full64000-pixel keyframes without skips, at frameindices
multiple10 in the originals. This is corpus evidence, not a universal guarantee.
MCP pan argument0 is distinct from level64/frequency22050; two centered channel
starts do not prove stereo. Driver registration, sample signedness/encoding,
position units, complete refill/recovery, synchronization and original fades
remain unresolved. Raw sound remains raw.

## Otopark and item identity

[Event audit](phase-five/lifecycle-20261014/otopark/OTOPARK_DIALOGUE_AND_ACQUISITION.md)
traces original mode2 dispatch for initial(2,1), PCS1group5, ten opcode17 dialogues
and flag249 once-only guard. Speaker selectors1,2,1,2,3,1,3,4,1,3 are recovered;
actual names depend on the party. Initial line remains exact original encoded
text, includingB6, whose UI semantics need tracing.

The stone event is **separate**, adjacentcell(2,0)/group0: outside-noise warning,
choice, speaker5 stone suggestion, opcode9 atPCS1:197→pool[2,0,0]→46591 mode0.
Independent indexed-name consumers useDS0ce2+15*index, binding **item2 to Sivri
Daş** atphysical19f00. This is not inferred from manual list order. Acceptance,
cancel, ownership transfer and persistent inventory writes are not verified;
no native event/inventory execution was added. Cellfields8..10, directional
consumers, shared rendering/navigation and dog/combat dispatch remain research.

## Updated user manual assignment

[Manual-to-binary index](phase-five/lifecycle-20261014/manual/MANUAL_TO_BINARY_INDEX.md)
uses direct PDF6–29 text and page-image review. Attribute/item/combat references,
25 weapon-name cells and structured34-vecize catalog preserve spellings/page
numbers/binary offsets and independent evidence labels. Vecize name ordinals
are not runtimeIDs; intended effects/costs are manual claims, not executable
formulas. Güç is vitality/damage tolerance, distinct from Vuruş Gücü. Copies
0a→38 and0c→3a are only candidate currentDamak/Güç semantics until consumers
prove them. Sivri Daş melee and Daş ranged remain distinct. Hit and net damage
must be traced separately; no combat mechanics were implemented from prose.

## Exact next-session handoff

1. **M02/M11 first:** fresh unique disposable runtime/log directory, single
   debugger, external timeout. Capture before/after menu hookcopy and actual
   main creation-call entry (physical7dfc; runtime0d6a:059c only forL0824).
   Snapshot live hook, RNG, party/traits/animation state. Follow default callback
   transitive callees and subsequent portrait/no-op installation. Compare blank
   entry, named reentry, reroll, race/prior-sex ordering, no-input/restamp and
   held-mouse release loops against controlled original traces. Do not select
   an arbitrary native poll cadence or enable generation prematurely.
2. **M03:** controlled fourth-slot completion, auxiliary preparation,664-byte
   write and downstream re-read comparison. Preserve originals; creation party
   data is not general gameplay saves. Only then design native safe output IO.
3. **M04:** concrete104-byte MCP registration source and sample/start/position
   targets; validate sample interpretation and ring-position units, then full
   refill/recovery and synchronized timed playback/fades. Preserve pixel codec.
4. **M06/M07:** group0 candidate-cell mode1 choice path,46591 accept/cancel and
   per-character inventory mutation;15dc:2948 selector5 lifetime/B6 rendering.
   Avoid hardcoded automaticpickup atinitialcell or inferred combatIDs.
5. **M05 onward:** remaining15-cell schema/shared renderer/navigation, then
   opcode8/dog encounter and battle initialization. Use manual as search index;
   do not substitute manual narrative for algorithms.

## Preservation

[Final audit](phase-five/lifecycle-20261014/preservation-final.json):919 baseline
files checked; only three living docs and lale-assets export file intentionally
changed. All30 frozen artifacts and25 original distribution entries match.
New module/evidence/checkpoint are additive. Three new-only reports initially
written under the previous session directory were moved into this session's
`recovered-handoffs/`; no baseline file was moved or overwritten. Original DOS
files, GUI Ghidra project, bundled emulator/config, reference media, previous
checkpoints/tools and existing working source remain preserved. No packages,
global settings or dependencies changed. Phase Four is not declared complete.
