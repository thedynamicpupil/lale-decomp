# PC1 initial-cell event and PCS1 text frontier

Continues the recovered PC1 grid/area loader without repeating that structural
survey. Original logical1689 code begins physical43670; original1670 begins31f10.
Raw overlays, whole direct disassemblies and provenance are retained here; focused
listings were added at verified function boundaries. Whole linear listings cross
inline tables and must not be treated as reliable function boundaries by themselves.
No game script was executed and no new room/inventory/combat implementation is claimed.

Initial cell(2,1) bytes from original FRPOS/PC1 are:

    03 02 02 01 02 01 02 01 02 02 00 01 01 01 06

Dispatcher1689:0000 /physical43670 loops over cell offsets11..14 (436c2..43790),
formats each value as at least two decimal digits, and concatenates an8-digit
key. Values exceeding32 have an error path. For this cell the key is01010106.
Special-case keys such as31313129/31313130 are separate branches; they must not
be attributed to the starting cell merely because they share the dispatcher.

Offsets13/14 are also used with bank-relative map bytes39/40. Physical43851..43886
compares the former, derives a sign and computes an8-bit relative selector from
32*(field13−map39)−sign(field13−map39)+(field14−map40), with byte wrapping.
This is arithmetic/data evidence, not a fully recovered coordinate or event name.
For PC1 initial data it yields5. The general PCS scan starts cursor20 at43d6c,
reads big-endian count and length fields through the byte reader, and skips length
blocks to the selected group. Later branches additionally depend on the function's
second argument and game state; automatic first-entry execution is not established.

PCS1's exact1930bytes account as20-byte AmBk header, count6 and six length blocks:

|Group index|Payload member offset|Bytes|
|---|---:|---:|
|0|24|310|
|1|336|184|
|2|522|553|
|3|1077|50|
|4|1129|128|
|5|1259|671|

The byte reader1689:4e63 /484d3 obtains the bank using DSe34f, maps at signed
cursorDSbb98 and increments the cursor by1. String readerphysical4870d allocates
length+1, copies a specified span, appendsNUL, then calls physical47d1a. That helper
adds10 with byte wrapping to each non-NUL character (47d30), checking strlen.
These source consumers establish an actual text decoding mechanism; printable
runs alone are not used to invent script execution.

A matching decoded span in group5 is at PCS1 member offset**500h** (original
FRPOS physical54dh):

    nooluyo yaa? o neydi Oyle [byte b6]

Exact encoded/decoded bytes and hashes are in opening-dialogue-source.json.
`Oyle` is retained as source ASCII mapping; rendering it as “öyle” follows the
known Turkish text convention, not normalization of the stored bytes. Byteb6's
precise display/control semantics still need the text-renderer consumer. This
matches the user's words more closely than the unrelated resident camping line.
It establishes authentic resource text, not speaker identity, dialogue order,
conditional reachability, automatic acquisition or an item ID.

## Cell-field coverage, not a complete schema

|Offsets|Current evidence|Remaining|
|---|---|---|
|0..7|Existing1670:0000 directional access uses2*(direction%4), within the15-byte row-major record|Exact per-byte graphics/collision meaning and writes|
|8..10|Raw bytes retained (2,2,0 for initial cell)|Consumers and semantics not yet mapped|
|11..12|First two decimal components of event key|All conditions/other uses|
|13..14|Remaining key components and relative selector arithmetic above|Full state interpretation and writes|

Shared scene drawing, all field semantics, complete PCS opcode dispatch and entry
trigger remain open. The code after43f6f dispatches a read byte through a33-case
jump table; that table and the group5 action stream are the next concrete trace.
Sivri Daş's acquisition interface/identifier, first exit/dog encounter and battle
remain unimplemented and must not be inferred from nearby script bytes.

Reproduce `python analysis/phase-five/integration-20261014/otopark/audit_pcs1.py`
from root: read-only original archive audit, exact group extent, key and dialogue
span. Preserve this as static source decoding rather than a runtime observation.
