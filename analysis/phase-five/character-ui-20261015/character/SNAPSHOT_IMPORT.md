# Original creation DS snapshot import — 2026-10-15

`character_runtime_snapshot.rs` adds a read-only parser for original65535/65536
byte DS captures. It accepts an explicit `SnapshotStage::BeforeFirstSlotSetup`:
the caller must establish that the original selected index has been initialized
and execution has not yet entered physical3e753. The enum records a caller
assertion; bytes alone cannot authenticate execution stage.

## Source-derived offsets

All slot expressions below use original slots1..4. Host selected=slot−1.

|Content|Original DS expression|Extent|
|---|---|---|
|selected original index|2898|word|
|numeric records|99a6+92*slot|92bytes|
|text workspace|9c26+148*slot|148bytes|
|name|text+0|37bytes|
|serialized auxiliary|text+111|37bytes|
|working traits|9b72+36*slot|16words|
|working trait tail|traits+32|4uninterpreted bytes|
|body remainder|48e8|word|
|face phase|48ea|word|
|shared RNG|94c4(low),94c6(high)|dword|
|current counter low word|e74a|word|

Source references are the existing preserved
`integration-20261014/character/original-caller-evidence.json`,
`setup-and-poll.asm` (3e758 index/stride,3e865 text stride,
3ea50/3ea8d/3eaa1 counter reads), and
`appearance-and-step.asm` (3cf8b..3cfb0 body,3cfb4 onward phase).
RNG load/store proof is preserved in
`phase-four/continuation/character-spec-20261014/rng-original.asm`
physical11779..1179e. Text auxiliary placement is corroborated by the existing
`party_workspace.rs` and original writer/re-reader evidence.

## Parsing and limits

`CreationRuntimeSnapshot::parse(ds, stage)` returns Party, full148-byte text
rows, per-slot traits and uninterpreted4-byte row tails, original/host indices,
raw body remainder/face phase, exact32-bit RNG and current counter low16.
It rejects other lengths, selected values outside1..4 and unterminated names.
Identity lower bounds remain the original SetupSlot operation's responsibility.
Raw animation words are preserved, including values outside the headless
caller's supported domain; parsing is not certification of reachable state.

The parser **does not supply** drawn_pose, face_cell or last_counter. A DS
dump cannot recover callerBP−0c stamp or pixels currently copied into a face
rectangle. At this explicit stage, slot setup's appearance operation replaces
face cell/body state before subsequent animation steps, and setup later reads
its own counter stamp at3ea50. UI/session code must model that ordering rather
than silently treating current counter as saved last_counter. No constructor
converts arbitrary post-setup captures into runnable caller state.

Tests use marker-filled synthetic DS bytes to distinguish all four one-based
strides, auxiliary placement, trait gaps, RNG endianness, raw animation retention,
both accepted capture extents and rejected selected5. These are parser fixtures,
not observed original runtime states. Parent owns actual captured-entry validation
and export into its native session; no host seed or poll schedule is introduced.
