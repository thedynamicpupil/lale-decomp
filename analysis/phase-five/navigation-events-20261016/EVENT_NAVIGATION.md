# Navigation event control flow — 2026-10-16

This additive investigation implements a bounded PCS control-flow machine. It does
not enable movement or replace any original UI, item, encounter or area-loading
operation with an assumed success. The original distribution and earlier evidence
are unchanged. Source slices and hashes are in `source-manifest.json`.

## Evidence and implementation

Fresh REA/Ghidra query on the separate owned1689 wrapper, synthetic0x40000 =
original1689:0000 = physical43670, returned
`ev_c3794a031a2c5bc529c07f19cc8fe4ebd4f62a21b404c29be8e378a016dd3f56`.
Full result is `event-dispatch-rea.json`. Its type-propagation/global-alias warnings
make the original instruction slices authoritative for memory offsets and arithmetic.
The ephemeral session was closed; the GUI project was untouched.

`lale-core::events` now executes opcode1 conditions (kind1 event-bit truth,
kind2 choice equality), opcode6 command skipping, opcode7 setting event bits,
opcode4 exit, markers13–15 argument consumption and opcode16 movement veto/exit.
The complete skip-helper framing was moved from assets into this core module;
`lale-assets::pcs` uses that same grammar. External commands yield raw opcode,
arguments and group-relative byte offset. A pending operation blocks subsequent
execution until explicitly acknowledged. The host must not acknowledge an
unimplemented acquisition, battle or transition. No native host invokes it yet.

Original43e1e..43e2f retains only the low byte of the group command count. The
selected section marker and its following byte are consumed before entering the
common decrement/test tail456ce. Skip48541..48550 subtracts the skip count from
both byte counters then structurally advances exactly that many commands. This
machine retains the operative total counter with wrapping arithmetic and bounded
slice reads. It rejects bad modes, mismatched markers, unsupported condition kinds,
unknown command framing and truncated input rather than inventing an allowed step.
Event bits use DS:b9ca+id/8 and bit(id%8), from4811c/48149; caller owns their
initialization/load lifetime. Choice DS:bb9e persists between invocations; caller
owns world-veto reset, as original movement does.

**Newly completed transition tail:** original44908..44923 sets b9c8=1,
bba8=1, local running=0 and return-success=1 after opcode11's area/destination
work. Thus completing opcode11 stops this event and vetoes the *old* movement.
Do not apply its requested movement delta after loading the destination. The core
implements that control tail only after the host explicitly completes opcode11.
Typed `transition_target` preserves original `y=P/width,x=(P%width)-1` wrapping,
facing%4, A100 exit-handler and A>100 no-area-change branches; A0 remains area-1,
which the loader must reject rather than turn into a valid map.

## PC1 gates needed for a faithful route

All offsets here are PCS member-relative. These are assembly/data-backed control
flows, not new original-runtime observations. `event-cell-bindings.json` links the
existing atlas's complete event-bearing PC1/PC2 cells and dedicated keys.

- PC1(2,1), group5, mode2: flag249 set -> exit; clear -> ten dialogue17 operations,
  then set249. Original runtime previously skipped these deliberately with249 set.
- PC1(2,0), group0, mode1: flag1 set -> exit; clear -> warning2, choice5.
  Choice1 -> veto16. Choice0 -> opcode23 `[01,0f]` (effect unresolved), speaker5
  dialogue17 and acquisition9 pool2. This is exactly why a movement path cannot
  silently acknowledge all script effects. Existing DOS evidence separately proves
  Hayır veto and Evet/acquisition/Esc reaching the north-door helper.
- Same group0, mode2: flag1 set -> repeat text then exit. Clear -> illustration3,
  text2, encounter8 `[00,0d,01,00,00,00,00]`, dialogue17, setflag1, exit. Setting
  flag1 before the encounter handler successfully completes would bypass gameplay.
- PC1(8,1), group1, mode2: flag2 clear skips the repeat illustration/dialogue/exit,
  presents illustration32 and a search choice. Choice1 exits; choice0 invokes
  acquisition9 `[05,00,01,00,03,00,00,00,00]` (resources5/0/1 and pool3/0/0).
  If flag2 is still clear after acquisition, says a key was found, sets2 and exits.
  This proves the event dependency, **not** that possession is checked by script:
  ownership/transfer/UI semantics remain in opcode9. There is no direct flag1
  condition in group1. Physical reachability after the dog is a separate question.
- PC1(0,5), group2, mode1: flag2 set -> exit confirmation2/choice5; choice1
  vetoes; choice0 opcode11 `[02,02,98,03]` loads PC2(3,22), facing3 and terminates
  with veto on the old movement. Flag2 clear skips all five commands and checks240.
  Flag240 clear -> reconnaissance dialogue17×3, text2, dialogue17, set240, veto16.
  Later attempts with240 set say the key is still missing and veto. This is an
  event-bearing stair/cell gate, not permission to treat all selector9 pairs alike.

Other PC1 events: group3(1,2) mode2 is a smell remark; group4 has flag81/exit-choice
logic. Its event-cell association is in the JSON even if it has no commands selected
by the atlas's narrower event-reference table. PC1 has only one opcode11 transition.

## PC2 restrictions and remaining handler coverage

PC2(4,22), group0, mode1 unconditionally says `inermiyiz bi daha o deliGe biz be!`
then veto16. The original static PCS2 has **no opcode11**; an authentic connection
must preserve this refusal rather than adding an invented reverse transition.
Confirm original runtime facing/entry direction when visiting this cell.
PC2(3,20), group1, mode2 is once-only flag82 dialogue with opcode25 `[09]` effect
unresolved; this is near the PC1 arrival and cannot be silently bypassed.

Across PC1 and PC2, static command opcodes are:
1,2,3,4,5,7,8,9,10,11,13,14,15,16,17,18,23,25,26,27,28.
The core now supports the verified control subset; the remainder yield external
requests. PC2's sellers/service/dedicated31313131 keys precede PCS dispatch and
must remain explicit in the host adapter. Unknown handlers must block the action.
The six encounter values, victory/failure effects, opcode23 position-facing/mutation
semantics, opcode25/26/28 and inventory-transfer semantics remain unresolved.

## Tests and continuation

`cargo test --offline --manifest-path rust-port/Cargo.toml -p lale-assets --test event_execution`
passes four tests loading actual original PCS1/PCS2 through strict archive/bank
parsers: north-door Evet/Hayır branches and pending barrier; first/repeated/key-held
stair branches; opening once-only dialogue and PC2 return veto; exact transition
arithmetic including remainder0 wrapping and invalid area-1 preservation.

A wider core+assets test run passed all preceding tests but encountered the
concurrent renderer task's new `scene_geometry::projected_calls_match_original_dos_arguments`
failure, facing2 call21 return37e9. That module was not changed by this task. Parent
was notified. Run the full workspace tests after renderer corrections.

Next integration: a world event adapter resolves generic/dedicated cell keys and
selects `EventMachine::new(group,mode)`; persistent EventState belongs to world state,
not each step. Suspend host movement while a yielded external effect is pending.
For a transition resolve/load the target map first to obtain its width, apply the
exact target and reload behavior, then acknowledge11 and abandon the old move.
Do not enable a global allow-all event adapter. Verify original opcode23 and9,
then connect the north-door accepted path and destination mode2; encounter8 must
remain a visible explicit blocker until its authentic path is implemented.
