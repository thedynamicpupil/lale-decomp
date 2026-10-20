# Original area-data inspector

From the project root, after an offline workspace build:

```sh
rust-port/target/debug/lale-map-inspect --root . --output analysis/my-new-area-atlas
```

The output directory must not exist; its parent must exist. Protected source
locations are rejected. Inputs are original IST.EXE and FRPOS.CKD, read-only.
Current [generated atlas](../analysis/phase-five/area-fields-20261015/atlas-release/INDEX.md)
includes all18 available PC/PCS banks and records missing PC19/20 without substitutes.

- `areas.tsv`:20 original area records, literal names, resource and executable offsets.
- `cells.tsv`:3889 original cells, coordinates,15 raw bytes, directional pairs,
  surface fields, unknown10 and generic/special event references.
- `graphics.tsv`: exact PC metadata selector→original literal/slot bindings.
- `edges.tsv`: four directional records per cell, selector/state, geometric
  candidate coordinate and assembly-backed movement branch. This is **not** a
  collision permission result: facing, scripts, mutable doors and vetoes matter.
- `event-groups.tsv`:266 length-delimited groups, original offsets and mode targets.
- `event-commands.tsv`:3670 structurally framed commands, raw operands and decoded
  dialogue byte-display. Original conditional flow is not executed.
- `cell-event-references.tsv`:782 static cell→dialogue/illustration/acquisition/
  encounter/transition links; an association is not proof of execution or ownership.
- `transitions.tsv`:19 opcode11 records with actual destination arithmetic.
- `framing.tsv`: coverage/remainders; malformed or unknown commands stop framing,
  rather than searching later bytes for a plausible opcode.
- `pc*.svg`: inspectable coordinate data grids with raw pairs/fields/offsets.
  Blue marks stored entry, purple a generic PCS reference. G:- means no event,
  G:SP special handler, G:? unresolved. These are not rendered rooms or walkability maps.

Area0/PC1 is Otopark; area1/PC2 is Mecidiyeköy (30×30). Otopark cell(0,5)
references PCS1 group2's transition at member254h, which targets PC2 cell(3,22),
facing3. That differs from PC2's stored default entry(23,0): the transition
position is explicit. Cell(2,0) links the acquisition and encounter preparation;
creature ID/count meanings are not yet established. Initial(2,1)/group5 dialogue
remains separate. Reachability, conditions and vertical movement are not assumed.

Source-of-truth [consumer evidence/schema](../analysis/phase-five/area-fields-20261015/area/AREA_CONSUMER_FINDINGS.md).
Stair images MERDUST/MERDALT are user-confirmed upward/downward visuals. Their
corresponding movement branches still require event/state recovery before native
navigation. F10 continues original-sheet inspection; no guessed room is enabled.
