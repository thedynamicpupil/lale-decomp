# Living research index

Updated2026-10-15. Read PROJECT_STATE and ROADMAP for accepted implementation
status. This index distinguishes source relationships, runtime comparisons,
manual claims, firsthand visuals and unresolved semantics. Historical reports
remain unchanged; later evidence supersedes only the stated gaps.

| Question | Current evidence/classification | Reusable inspection / next unresolved step |
|---|---|---|
| Original coordinate maps and event associations | **BINARY/DATA:**18 PC/PCS banks,3889 cells,266 groups,3670 commands; full original framing accounted | [Atlas](../analysis/phase-five/area-fields-20261015/atlas-release/INDEX.md), [tool](../rust-port/NATIVE_MAP_ANALYSIS.md). Four directional branches exported per cell; runtime permissions not evaluated. |
| Otopark→Mecidiyeköy | **BINARY/DATA:** area1=PC2, group2 opcode11; cell(0,5)→PC2(3,22),facing3 | [Transitions](../analysis/phase-five/area-fields-20261015/atlas-release/transitions.tsv). Conditional execution/actual stair elevation remains open. |
| Walls/doors/stairs | **BINARY:** selector indexes metadata, paired state selects movement branch. **USER:** MERDUST upward/MERDALT downward visuals. **DOS/RUST:** four starting-cell facings and turning | [Consumers](../analysis/phase-five/area-fields-20261015/area/AREA_CONSUMER_FINDINGS.md), [four-facing captures/pixel comparisons](../analysis/phase-five/turning-20261015/FOUR_FACINGS.md). General layer dispatch/scaler remain open; no inferred collision. |
| Special cell keys | **BINARY:** zero bypass, four service keys,31313131 mode2 sets DS3d5e bit4 and bypasses PCS | Original key/offsets in schema. Gameplay meaning of bit4 unknown; do not assign an NPC/building meaning. |
| Acquisition/dog association | **BINARY/DATA:** cell(2,0)/group0 links item2 and opcode8 raw000d0100000000 | [Cell associations](../analysis/phase-five/area-fields-20261015/atlas-release/cell-event-references.tsv). Creature numeric meaning, ownership/accept/cancel and encounter conditions remain open. |
|14 displayed creation fields | **BINARY:** source display pushes match existing Rust offsets/names. Prior controlled DOS whole-record generator/reroll comparisons retained | [Attribute evidence](../analysis/phase-five/area-fields-20261015/attributes/ATTRIBUTE_FIELD_RESEARCH.md). Semantic plausibility guides tests; no remapping or clamp fabricated. |
| Remaining3 generated destinations | **BINARY:**22,28,2c generated without creation rows; semantics unassigned | Survey covers all17 offsets. Proven draw bounds22=50..200,28=15..20;2c table-derived, not a named scalar attribute. |
| Base/current Güç | **BINARY relationship:**0c→3a initialization, UI3a/0c, signed refill capped to0c | Semantic Güç linkage strongly supported by creation label/manual; new current/depletion DOS comparison still needed before full mapping promotion. |
| Damak vs Kelime Dağarcığı | **BINARY relationship:**0a→38, UI38/0a, signed refill+50 capped0a. **MANUAL:** vocabulary determines Damak capacity | Current38 as Damak is a supported candidate, pending controlled world UI/depletion and vecize-cost consumers. Do not rename vocabulary/current resource interchangeably. |
| Ranges/rare values | **RUST SAMPLED:**2097152 controlled generations,8races×2sexes×2state families. Güç3..17,13 occurs19268times; Boy140..208,Kilo0..96 | [Summary](../analysis/phase-five/area-fields-20261015/attributes/sampled-extrema.md), [witnesses](../analysis/phase-five/area-fields-20261015/attributes/survey-confirmation/targeted-dos-candidates.tsv). Sampled maxima are not bounds or actual startup probabilities. Kilo0 is an anomaly requiring exact DOS differential, not a correction. |
| Reference gameplay | **FIRSTHAND VISUAL:** existing indexed opening dialogue/item/dog/stairs/city sequence | [Cached index](../analysis/phase-five/walkthrough-20261015/visual-index/INDEX.md). No new video processing this increment. Request more observations only for an exact remaining code/resource ambiguity. |

Next investigations should start from these coordinate/offset tables. Preserve the
accepted menu, diagnostic generation, cinematic playback and audible debug PCM.
Creation timing/reentry/fourth-slot persistence, composed room/collision/events,
item ownership and first combat remain unfinished. No Phase Four completion.


## Latest visible integration — 2026-10-15

[Native creation/room checkpoint](../analysis/NATIVE_CREATION_ROOM_CHECKPOINT_20261015.md)
and [launch guide](../rust-port/NATIVE_PLAYABLE_INCREMENT.md) supersede older
ordinary-UI/persistence/starting-view gates. Normal native creation/body motion,
four-character checkpoint writes/re-read and film→room view are implemented.
Calendar conversion is source-backed, but its native entry and no-idle-burn policy
are explicit compatibility boundaries; automatic random faces remain incomplete.
Source room draw captures and37×18 geometry enable a bounded starting-view renderer,
not general navigation. Keep next research tied to extending this visible app.


## Four-facing native increment — 2026-10-15

Latest [checkpoint](../analysis/NATIVE_OTOPARK_TURNING_CHECKPOINT_20261015.md).
The user accepted the previous Otopark starting perspective/facing side. All four
facings of PC1(2,1) now render from original DOS draw traces; native Left/Right
turns in place in the existing shared room path.117 calls and controlled original
viewport reads support the implementation;87 offline test executions pass.
New facings/turning await Fedora desktop acceptance. Existing creation→film→room,
silent films, debug PCM and event research are preserved. No broad new research
or recording processing was needed.

Development order now follows the latest user request: original room rendering/
turning → verified map movement/collision/doors/stairs → inventory/Sivri Daş →
encounter triggers → tactical battle/combat. Broader dialogue presentation can
wait; retain original event dispatch/veto semantics for items and encounters.
Next bounded work: use existing coordinate/consumer evidence to choose one
verified adjacent view and movement branch, generalize original cell/layer
selection as needed, then connect only the verified state change. Do not turn
these four captured command streams into invented geometry for other cells.


## North-door result — 2026-10-16

[Runtime/source report](../analysis/phase-five/door-20261015/DOOR_RUNTIME.md):
original Up→e/h warning→accepted stone dialogue/acquisition→guard0 automatic
(2,0) commit observed in controlled DOS. No second Up is needed in that path;
h/Hayır vetoes. KAPIAN3 is the four-frame source. Native frame0 reconstruction
passes40000-byte comparison, but full preview was not promoted after remaining
pixel differences and instrumentation limits. Next actual core/bank and complete
destination lifetime capture is specified in the report; preserve ordinary native
turning until those and event integration are verified.


- [Native shared renderer/door checkpoint20261016](../analysis/NATIVE_GENERAL_RENDERER_CHECKPOINT_20261016.md): five-layer native source generation, exact4doorframes, complete11-call destination, PC2arrival4facings and allocation-independent bounded scaling; gameplay gates remain incomplete.


## 2026-10-16 event gate continuation

- [Native event gate and whole-map source coverage](../analysis/NATIVE_EVENT_GATE_CHECKPOINT_20261016.md)
- [Original world UI boundaries](../analysis/phase-five/world-ui-20261016/WORLD_UI.md)
- [Conditioned original PC1→PC2 transition](../analysis/phase-five/stairs-runtime-20261016/PC1_TO_PC2_DOS.md)


Fresh dialogue DOS continuation: [report](../analysis/phase-five/world-dialogue-runtime-20261016/DIALOGUE_DOS.md)
proves original speaker2, four portrait call argument sets and exact native RNG
state progression. Creation now carries its actual RNG state into room entry
through the shared core RNG; no new seed. Dialogue host remains pending17.
Root DOS session64818 is paused before the fourth portrait copy at0e00:2ca1;
read the report's exact stack/register checkpoint before continuing.


- [Native opening/north dialogue, actual DOS Space return and acquisition continuation](../analysis/NATIVE_DIALOGUE_CHECKPOINT_20261016.md)

- [Native acquisition and normal door checkpoint](../analysis/NATIVE_ACQUISITION_DOOR_CHECKPOINT_20261016.md): original panel pixel/word exchange comparisons, real SDL timing, destination barrier and DOS restart boundary.

- [Native destination illustration checkpoint](../analysis/NATIVE_ILLUSTRATION_CHECKPOINT_20261016.md): fresh DOS logical buffer/palette equality, corrected modal wait, encounter barrier and exact restored live pause.
