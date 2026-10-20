# Systematic area atlas and character-field research — 2026-10-15

Continues WALKTHROUGH_NATIVE_CHECKPOINT_20261015, preserving all earlier evidence.
Authority: latest user asks original data/code enumeration over further recordings,
MERDUST upward/MERDALT downward visual confirmation, exact displayed numeric
mapping and controlled generator statistics without arbitrary caps. Read
UpdateablePrompt and living docs. New entry point: [RESEARCH_INDEX](../docs/RESEARCH_INDEX.md).

## Bounded native implementation

Two native read-only tools added; neither changes normal creation/gameplay state:

```sh
rust-port/target/debug/lale-map-inspect --root . --output analysis/new-atlas
rust-port/target/debug/lale-generation-survey lale/IST.EXE analysis/new-survey 65536
```

Output directories must be new. Map output parent must exist. Existing output is
refused without modification. Survey reuses the existing verified initializer,
RNG and generator, not a second arithmetic implementation. No new dependencies,
packages, emulator/global configuration or original distribution edits.

F10 source inspector now identifies MERDUST as upward-stair visuals and MERDALT
as downward-stair visuals, explicitly **USER-CONFIRMED**. No pixels or accepted
UI/SEQ behavior changed. Stair elevation/action semantics are not assigned from
those images. Current38 is not substituted for the correct creation base0a.

## Complete structural atlas; incomplete gameplay semantics

Authoritative [atlas-release/INDEX.md](phase-five/area-fields-20261015/atlas-release/INDEX.md)
and [tool guide](../rust-port/NATIVE_MAP_ANALYSIS.md):

- 20 original29-byte area-table records;18 available PC/PCS banks, absent PC19/20
  recorded without substitutes.
- 3889 original cells and15556 directional pairs, with coordinates, raw fields,
  source member/archive offsets, metadata selector/literal/slot bindings.
- 266 PCS groups,1064 mode-target records,3670 structurally framed commands,
  782 cell→dialogue/illustration/acquisition/encounter/transition references,
  19 opcode11 static transitions. All266 groups frame completely except zero padding.
- 18 SVG coordinate data grids; blue entry/purple generic event, no invented
  walkability colors or room geometry. TSV tables preserve raw fields and unknowns.

Original skip-command helper4853b..486ca establishes all33 opcode argument
framing rules. Structural parsing does not execute conditions, section budgets,
choices or state mutation; do not treat sequentially listed branches as runtime.
Typed platform-independent assets APIs now expose directional selector/state,
metadata binding, byte-wrapped group candidate/special keys and PCS framing.
Tests reject malformed/truncated strings rather than searching later bytes for
plausible opcodes. This is reusable native engine foundation, not an enabled VM.

Selector1..4 indexes metadata3..6 through DS9f0e; selector0 dynamic state remains
unassigned. Odd bytes select movement branches, not a generic collision Boolean.
Ordinary state0 checks current mode3/candidate mode1 events and vetoDSbba8 before
coordinate commit; states2/3 are forward/door-dependent; metadata table9 has a
special stair visual/action path. The stair helper alone does not load another
area. Actual collision, door mutation/input order and vertical movement remain open.

Special keys bypass generic groups: zero, four shop/service keys, and31313131.
The last was isolated by27 out-of-range candidate cells; direct source43d35..43d5e
confirms mode2 sets DS3d5e bit4, all modes bypass PCS. Its gameplay meaning is
unknown. Final atlas classifies every original key as a valid group or a special
handler; this is not complete semantic knowledge.

## Otopark and Mecidiyeköy source connections

Area1 table record1c04eh literal `mecidiyekOy'Un` resolves PC2,30×30. Otopark
PC1 cell(0,5), group2, command PCS1:254 /FRPOS:2a1 is opcode11 operands
A2/P664/D3. Original target is zero-based area1/PC2, x3,y22,facing3. Exact
coordinate rule is y=P/width, x=(P%width)-1; do not normalize(P-1)/width.
This explicit position differs from PC2 stored default entry(23,0).
Conditional reachability and which player action reaches this event remain unexecuted.

Initial PC1(2,1)/group5 opening remains separate from adjacent(2,0)/group0.
That adjacent cell links item2 acquisition and opcode8 atPCS1:11c /FRPOS:169,
raw000d0100000000. Original handler consumes a discarded byte and three pairs,
uses map-driven RNG if all pairs are zero, calls encounter/battle preparation,
then reloads area flag0. Numeric13 as dog ID and exact pair ID/count semantics
are not verified. Full NPC/encounter identity/collision/event conditions remain open.

[Original consumer report](phase-five/area-fields-20261015/area/AREA_CONSUMER_FINDINGS.md)
and machine-readable verified-area-schema.json retain actual REA evidence IDs,
original instruction slices/offsets, limits and special-key addendum. Sessions closed.
Cross-checks use cached video1 room15s, door85s, dog120–125s/battle140s and video2
stairs140s/city300s. No new video processing or gameplay-observation request was needed.
Recordings corroborate presentation, not state rules or numeric creature identity.

## Character fields, semantic constraints and distributions

[Attribute report](phase-five/area-fields-20261015/attributes/ATTRIBUTE_FIELD_RESEARCH.md)
retains manual6–7 cross-reference, all17 generated destinations, original creation
UI push offsets, preparation/current/base/refill/rest consumers, race modifiers,
dependency graph and actual REA evidence.14 named creation fields match existing
Rust;22/28/2c have no creation rows and remain unnamed. No completed arithmetic
was retranscribed and no speculative remapping made.

Original preparation copies0c→3a and0a→38. World UI formats3a/0c and38/0a.
Signed refill consumers cap3a+3 to0c and38+50 to0a; rest measures the deficits.
Base/current Güç association is strongly supported by the creation label and
manual; current38 as Damak candidate still requires a controlled original world
UI/depletion/vecize-cost comparison before full semantic promotion. These binary
relationships are distinguished from a newly DOS-verified mapping: no new DOS run
was performed in this increment. Prior whole-record setup/reroll differentials stand.

Two reproducible surveys each sample2097152 generated records:8races×2sexes×
65536states×2 controlled state families. Outputs retain per-identity histogram,
mean, populationSD, pairwise correlations, exact modifiers and rare full records.
Artificial equally weighted state families are not observed startup probabilities.

Güç sampled3..17;3 occurs872308times,13 occurs19268,17 occurs108. No maximum10/15
is imposed.17 is a sampled extremum, not a proven maximum or new DOS observation.
Boy sampled140..208, Kilo0..96. Rare zero-weight cases are explicit anomalies,
not corrected by semantic plausibility. Exact original-comparison witnesses:

|Case|Race/sex|Input RNG before trait initializer|After trait draw|After numeric26|
|---|---|---|---|---|
|Güç17|3/1|00000619|3fa6e12e|42064b9c|
|Kilo0|2/2|00000390|d1b69cd1|17cd5487|

Full records in survey-confirmation/targeted-dos-candidates.tsv. They are
**RUST-SAMPLED**, pending original DOS comparison. Proven bounds are limited to
instruction-supported draw domains/floors (e.g.22 in50..200,28 in15..20); other
survey extrema remain empirical. Correlation alone does not establish causality.

## Validation, preservation and actual playable boundary

69 offline test executions pass; formatting and workspace build pass. New
coverage includes all18 PCS banks, every command-group boundary, marker domains,
truncated variable-length rejection, source selector/event/transition fixtures,
plus reused generator tests in survey binary. Atlas validation checks every
association is on a framed command boundary and existing-output refusal preserves
all bytes. Both deterministic large surveys agree byte-for-byte on common outputs.
SVGs were rendered and inspected; originals supply indices/resources. SDL dummy
source-sheet and standard/snapshot character smoke checks pass. Automated tests
are separate from prior user desktop acceptance; no new full-playable claim.

[Checks](phase-five/area-fields-20261015/checks/) and
[preservation audit](phase-five/area-fields-20261015/preservation-final.json)
record results. Baseline covers originals/emulator/media/historical analysis and
runtime/lale saves, which remain unchanged. Prior milestones, default silent film
and user-audible debug PCM retained. Normal seeded/timed creation, party IO,
composed room/navigation/events, item ownership and combat remain incomplete.
Phase Four remains incomplete. Scratch atlas-trial/atlas/atlas-final in this new
increment are superseded by atlas-release, not authoritative outputs.

## Next exact bounded work

1. Compare rare Güç17/Kilo0 witnesses against original generator using current
   resident RNG/stack and relocated creation CS, not assumed35a6. Preserve raw
   before/after records. Follow timed>=150 animation/reentry and fourth-party IO.
2. Trace vecize-cost/current38 depletion and original world UI, distinguishing
   vocabulary knowledge/capacity from available Damak before semantic promotion.
3. Use PC1(0,5)/group2 and(2,0)/group0 exact offsets to recover reachable movement,
   choice/veto/door mutations, original transfer ownership and encounter operand
   consumers. Do not fabricate a walkable graph from raw nonzero bytes.
4. Capture generated37×18-byte projections and scaled/keyed blit parameters;
   integrate a composed source-resource room before navigation. Keep stair image
   direction separate from event-driven elevation/area transition semantics.
5. Ask for a targeted gameplay observation only if an exact unresolved behavior
   cannot be established confidently from code/data. Existing cached references
   are adequate for the next bounded targets; later-city work must not delay first play.
