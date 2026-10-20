# Acquisition and normal north-door integration — 2026-10-16

The PC1+PC2 traversal objective remains active, IMPLEMENTING and incomplete.
This checkpoint supersedes the dialogue-only stop at opcode9. Preserve earlier
checkpoints as historical evidence. New evidence is in
`phase-five/acquisition-20261016/`.

## Proven against original DOS

Original acquisition mode0 is1689:2f21, source46591; pending icons296a,
party panel23c0, resources2d6f, caption51c7 and free exchange2b1a. REA evidence
JSON retains full pseudocode, provider identities and limitations. Critical
resource bindings and word stores were checked against original instructions.
Mode0 does not run shop pricing, RNG or equipment-reference clearing.

The original panel is320x62, at origin(0,0) in this captured run. TRADE.CMP is
image83, ITEMBANK.CMP75, original S portraits and DENEYX.CMP compose the panel.
All19,840 indices match native for INITIAL, VALID-TO-PARTY and VALID-BACK
captures. Every10 pending,10 inventory and4 party hitbox matches original DS.
The reverse transfer restores every panel byte, complete four92-byte numeric
records, pending words and RNG. Transfer into party1 slot1 changes only DS9a48
from0 to2; source uses raw word exchange. Native assets are always originals,
not the captured buffers used as differential references.

These are **controlled original helper calls**, not a physical mouse trial.
The actual input dispatch was additionally recovered from the original main
handler: mouse IDs1..10 inventory,11..20 temporary items,22..25 party faces;
nonempty source selection then opposite-row target invokes exchange. F1..F4
select party. Right event2 clears the current-row selection. Esc and close
region26 leave the panel; temporary resources/items are cleared on return.
Native initial fresh resources[10,10,10] are original initializer7f66..7f77,
also observed at ROOT-MAIN-DS; opcode9 adds resources once before input.

Accepted captures contain VALID in transfer names. Earlier ACQ-TO-PARTY
captures without VALID are excluded: debugger tokenAC was interpreted as a
flag rather than byteAC, creating an incorrect far selection pointer. Corrected
00AC parameters and original helper prologue were checked before the accepted
calls; the wrong attempt did not change the party/pool/RNG words. No originals
were modified.

## Implemented and running native

`lale-core::acquisition::Pool`: opcode9's three byte resources and three
big-endian item words, one-time resource credit, bounded raw word exchange,
and temporary-pool cleanup. No RNG or equipment mutation.

`lale-assets::acquisition_panel`: original panel/images/fonts, signed item icon
mapping, party highlighting, exact input rectangles, resource and initial
caption text; all three captured states match exactly.

The normal creation→film→Otopark live-party path now reaches acquisition after
the ten opening dialogues and accepted north warning/suggestion dialogue.
Click the stone in the upper item row, then a slot in the lower inventory row.
Clicking an inventory item then an upper temporary slot swaps back. Party face
clicks/F1..F4 select the character; right click clears selection; Esc or the
original close rectangle returns. Unclaimed temporary items are discarded,
as the original return does. Transferred items remain in the live numeric party.

The pending movement then plays all four original door frames with150-unit
minimum waits, commits automatically from(2,1) to(2,0), renders the destination
through the general renderer, and dispatches its mode2 event. No second Up.
This guard0 behavior and source guard lifetime were already DOS-proven in
`phase-five/door-20261015/DOOR_RUNTIME.md`;3b06 is not a persistent door-open flag.
Destination illustration opcode3 remains pending. Dog flag1 and key flag2 stay
clear; no encounter victory is invented. Ordinary map traversal remains gated.

## Validation and limits

Offline workspace tests, build and formatting pass. The native main-thread SDL
check additionally performs original dialogue RNG comparison, all19,840 initial
and transfer panel comparisons, real timed door presentation and automatic
destination commit in0.64s, then all ten opening dialogues in6.25s. Command:

```
SDL_VIDEODRIVER=dummy SDL_AUDIODRIVER=dummy ./rust-port/target/debug/lale-otopark-room --root . --check-door-choice
cd rust-port
cargo test --offline --workspace
cargo build --offline --workspace
cargo fmt --all -- --check
```

Source coverage of all4000 PC1+PC2 views is unchanged; it is not full DOS/Fedora
navigation acceptance. New user desktop acceptance is pending. Acquisition
hover descriptions, custom item cursor, keyboard arrows/selection/discard and
dead-party overlays remain incomplete. Exact panel comparisons certify the
initial and helper-composed states; they do not certify every input-loop overlay
or caption change. Shop/trade modes are not enabled. Existing menu, creation,
party checkpoints, film and turning tests remain passing.

Preservation:233 navigation baseline hashes and30 frozen hashes unchanged;
`phase-five/acquisition-20261016/preservation-verified.json` and capture hashes.

## Exact continuation

1. Read this checkpoint and living docs. Native normal Up now reaches(2,0);
   do not reimplement acquisition or require a second movement command.
2. Recover and DOS-compare destination illustration3 handler1689:4b57,
   source481c7: formats `ikon%d.cmp` from DS6235, loads slot85, derives `.pal`
   from DS6240, draws through viewport65 and calls50-counter wait. Full REA
   evidence is `destination-illustration-rea.json`. Group0 opcode3 argument is
   13 (0x0d), not illustration3; opcode3 is the operation number.
3. Implement source-verified illustration/palette/restore, then warning2 and
   encounter8 `[00,0d,01,00,00,00,00]`. Keep encounter pending until its real
   host completes. This remains the main blocker to authentic traversal.
4. Acquire actual DOS input-loop evidence for caption/item cursor/keyboard
   behavior; `item-info-rea.json` maps helper513f→2694:013d→caption51c7.
5. Extend shared movement/area event hosts to PC1 key/stair path and PC2,
   retaining dedicated-service barriers and reverse-connection veto.

DOS session64818 was originally restored at0824:2e45/SP0b46/BP0b9a before
the acquisition input poll. A subsequent Esc injection and RUN produced an
emulator reboot, not the requested acquisition return breakpoint. This new
trial is excluded and its cause is unproven (long-running owned session had
time-limit3600). The session is now at a fresh loader/startup pause. **Do not
resume the old acquisition registers/stack or treat that process as the prior
world state.** Earlier accepted VALID captures and prior door DOS proof remain
valid. New runtime evidence needs a fresh explicitly prepared world run.
