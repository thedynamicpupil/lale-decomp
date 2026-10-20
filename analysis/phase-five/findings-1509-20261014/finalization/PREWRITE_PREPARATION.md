# Original party pre-write preparation

Original IST SHA2569ba1640ae2ee33579cb1c914d0686346f53c4c7ef6520c7d92262b9c2f06b05e.
Logical overlay167c code base physical3cc00; REA wrapper CS4000 is synthetic,
static-only. The original bytes and direct disassembly accompany this report.

Verified writer167c:182e (physical3e42e..3e531) loops slots1..4:

- Copy raw numeric word atoffset0a intooffset38 (physical3e465..3e480).
- Copy raw numeric word atoffset0c intooffset3a (3e485..3e4a0).
- Copy the36-byte ASCII literal `1` followed by35 `0` bytes and its NUL from
  originalDS499a/physical1db9a into the auxiliary37-byte field (3e4a5..3e4b7).
- Write name37 and auxiliary37 for each slot, then four numeric records92,
  totaling664 bytes. The in-memory text stride is148 while on-disk pairs are74;
  do not confuse working-buffer layout with serialization layout.

Raw base numericDS99a6+92*slot; text buffersDS9c26+148*slot andDS9c95+148*slot.
The copied numeric fields' known display labels are Kelime Dağarcığı and Güç;
the destination fields' downstream gameplay meanings are not established here.
The auxiliary string is preserved as bytes, not invented inventory semantics.
Both supplied original parties contain exactly this auxiliary37-byte string.

New Rust `prepare_original_creation_records` clones a supplied Party and performs
only these copies. It provides no file IO, no generation validation, and no UI
finalization. A test covers all four slots, rawnegative bitpatterns, exactliteral,
untouchedname/unknownnumericbytes, idempotence and unchanged input. Existing
`Party::original_bytes` remains the exact parser roundtrip; preparation is explicit.
Fresh generation/final creation remains disabled.

REA writer ev_a55ff48837c08e8b4afb98ec0c2f68bb1b3d2d6b7a49bb8c2aa0e07b87626ed6;
resident string-copy ev_62c9434e67675d94a819ba41a111e06dae7ee0de719cdde895eda1444c597bba.
The wrapper's relocated segment operands are not original DOS placement. The direct
original3e465..3e4f5 instructions establish the copies independently of pseudocode.
Full new REA export is ../party-writer-rea.json. Session closed after export.
