# Original area consumers — 2026-10-15

This bounded static investigation extends prior evidence without editing original
files, historical research or the GUI Ghidra project. The latest user firsthand
confirmation identifies MERDUST.CMP as upward-stair imagery and MERDALT.CMP as
downward-stair imagery. Those visual names do not themselves prove movement rules.

## Reusable schema and evidence

`verified-area-schema.json` is the machine-consumable ledger: original opcode
handler addresses, all 33 command framing rules, event group arithmetic and
special keys, directional branch behavior, transition opcode11 and encounter
opcode8. Numeric addresses there are physical offsets in the original IST.EXE.
Each focused `.bin` is an unmodified byte slice; `.asm` is objdump i8086 output.
No DOS binary or analysis wrapper was executed.

Actual REA/Ghidra movement analysis of the existing owned static overlay wrapper
returned `ev_22381b35412566d043ee95a2757073e2eb0f83762abaad0a6393180aa589e1e7`.
It is retained in `movement-rea.json`. Synthetic linear0x40000 corresponds to
original overlay1670:0000 / original physical0x31f10. Ghidra body ranges omit
part of the door animation because Borland emulated floating-point instructions
confuse disassembly. The original instruction slices are authoritative for
branch selection, byte reads and coordinate writes. The ephemeral session was
closed. For the parallel character investigation a separate wrapper was opened,
queried at synthetic0x40f4e, and closed; `creation-display-rea.json` records
`ev_82e3b710d34c3a8df6db8dc07310b5c8c03dbbc60f1e57ce3571070b41c18737`.

## Coordinate and selector semantics

The existing29-byte area table, now cross-checked with its literal bytes, maps
area0 to PC1/Otopark and area1 to PC2/`mecidiyekOy'Un`. Preserve the literal's
original byte spelling separately from a human-facing name. The area-table
record for index1 begins original file114766. These are table identities, not
an assertion that all cells are reachable.

Loader33bcd..33bfe copies metadata[i+3] to word DS:9f10+2*i for i0..3.
Movement31f6e..31f7c indexes this with DS:9f0e+2*directional_selector.
Thus selectors1..4 select metadata3..6. A selector is an index, not a direct
DUVAR or stair resource number. Original DS:9f0e image word is zero, but its
complete dynamic write history is unverified; do not generalize raw selector0.

The current cell is `(y*width+x)*15`; its directional pair begins2*(dir%4).
Dir0=(0,-1),1=(1,0),2=(0,+1),3=(-1,0), from1662:0235 already retained in
the previous checkpoint. The second byte drives movement dispatch:

- For a visual selector whose table value is not9, state0 invokes current-cell
  mode3 and candidate-cell mode1, checking DS:bba8 after each; only then does it
  commit x+=dx,y+=dy and return AL=1 (32117..321b4).
- State2 requires requested delta to equal the current facing vector, excludes
  facing visual table value8, checks current/candidate events, then calls
 1662:00bb with facing selector minus1 (321ba..3230d). State3 likewise requires
  forward direction, checks both events, performs an animation, temporarily
  writes current paired state0 then3, and updates coordinates (32313..325e8).
- Other ordinary states fall through without successful movement. If the visual
  table value is9 and its paired state is nonzero, forward-only special handling
  runs current/candidate events and calls1662:00c0(2) for paired1 or(1) for
  paired2. This helper uses slots21/22 and render calls; it contains no explicit
  second-map loading in its retained range. Exact stair elevation semantics
  remain unresolved.

These are recovered branches, not a ready collision engine. Door helper details,
runtime mutable state, event vetoes and original input call order still matter.
Raw nonzero bytes must not be rendered as uniformly impassable walls.

## Complete structural event framing

Original1689 skip-commands helper4853b..486ca has its own33-entry jump table at
486cb. It advances by the arguments of each command even when conditional control
flow skips execution. This provides reliable structural command boundaries
without interpreting unknown opcodes, unlike searching raw bank bytes for11.
The execution dispatch at43f6f subtracts1 before indexing table456fc. Command0
is invalid dispatch/trailing storage, not an invented executable no-op.

The schema records all fixed lengths and variable length-prefix forms directly
from this skip helper. The parser can enumerate original commands, raw operands
and source offsets while leaving most effects unknown. Conditional branches are
not evaluated by structural parsing, so a found transition is a static reference,
not a proven reachable action.

The generic event group is computed in AL with byte wrapping:
`u8(((field13-header39)<<5)-sign(field13-header39)+field14-header40)`.
The comparison determining sign uses the zero-extended field/header values.
Header39/40 are metadata19/20. All-zero event key returns without dispatch.
Keys31313129,31313130,31313128,31313127 invoke dedicated seller/service paths
before generic group handling. Do not falsely label those as ordinary PCS groups.

## Transitions and encounter boundary

Opcode11 at4475c reads A:u8,P:big-endian-u16,D:u8. A<100 means areaA-1;
different areas reload with flag1. The exact destination calculation is
`y=P/width; x=(P%width)-1`, and facingD%4. This is not interchangeable with
conventional one-based linear index conversion when P is a multiple of width.
A==100 calls1670:0089; larger values do not enter either area branch.

Opcode8 at44184 consumes seven bytes: first discarded, then six zero-extended
values into DS5be0/5be2,5be6/5be8,5bec/5bee. If all six are zero, the handler
draws random values using map fields at original PC bank offsets28..31. It
calls1662:0066 and1694:0138 then reloads the current area with flag0. This is an
encounter/battle preparation boundary; the exact six-value ID/count meanings,
enemy resource associations and combat effects require downstream consumers.
The cached video1 dog at120–125s and separate battle by140s corroborate the
phenomenon, not the numeric dog ID or exact event condition.

## Remaining unknowns

Cell10 is still unassigned; complete direction-state writes, NPC field bindings,
stair transitions and all event effects remain research. Prior field8/9 slot
consumers and generated geometry blockers remain in force. No gameplay runtime,
collision implementation, fabricated vertical map or new recording processing
was introduced by this subtask. Use the reusable structural index to choose the
next exact handler and cells rather than reprocessing walkthroughs.

## Atlas cross-check addendum — key31313131

The new atlas exposed27 out-of-range candidate groups, all with event bytes
[31,31,31,31] (eight in PC2). Targeted inspection confirms this is another
dedicated key, not a generic group: original43d35 compares against literal
`31313131` at DS:5e37 / physical1f037. For equality and mode2 it ORs word
DS:3d5e with4 at43d55 and returns without reading PCS; equality in other modes
also returns. The unequal generic path43d61 clears this bit with AND fffb.
The exact gameplay meaning of this flag is unverified. Export this precise
special-state operation, not an invented encounter or transition label.
The earlier special-key list above omitted this last comparison; the machine
schema now includes it. `special-key-31313131.bin/.asm` retains its exact source.
