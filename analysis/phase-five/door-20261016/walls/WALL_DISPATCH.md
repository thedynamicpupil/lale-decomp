# Shared wall dispatch increment — 2026-10-16

`scene_walls.rs` translates original1662:3969, IST.EXE file2bd99..2c0f4,
with original bytes retained as wall3969-original.bin and the following24-byte
jump table retained independently. Existing original instruction listing and
REA geometry-consumer evidence are reused; no shared REA session was opened.

The dispatcher reads a cell's directional selector/state pair. Zero state emits
nothing; selectors1..4 index live DS:9f10 words. A zero selector word emits
nothing. State1 selects resource selector-1; state2 adds4; state3 uses the
original selector-1 and the nondirectional3471 geometry consumer. Source slots
are24+resource. Nonzero unsupported states produce no draw as in the source.

For states1/2, descriptor word DS:b3ec+14*resource selects35ff if nonzero and3471
otherwise. Geometry records are explicitly provided per resource, corresponding
to each descriptor's far pointer+6/+8. Shared fallback pointers must be resolved
from actual DS, not assumed universally.

When the descriptor is directional, direction>1 and direction==live facing,
the dispatcher temporarily replaces the chosen record's source x/y from its
partner (13↔17,22↔24; other records select themselves), ORs flagbit0, draws via
35ff, then restores source x/y and flags. State3 temporarily sets flagbit0 only
for geometry23 and calls3471. Actual projection arithmetic is shared with
scene_geometry::project, including the source235-column adjustment.

The implementation copies a record locally, so normal temporary mutations never
escape. A source nuance is explicit: the original saves flags BYTE+16 but restores
WORD+16 from the zero-extended byte. For any temporary-save/restore path with
nonzero flag high byte, the bounded API returns an error rather than silently
omit that persistent source mutation. Malformed/out-of-range selectors, cell
offsets, directions and tables likewise return errors. These limits do not
invent additional game behavior.

Five targeted Cargo tests pass: state2 resource offset, remapped/reflected
back direction, state3 geometry23, original235-column adjustment, and exact
original remap jump-table words. This is branch/consumer validation, not yet a
claim that all117 room calls match; root's layer integration supplies that next
comparison. No source resource or original file was changed.
