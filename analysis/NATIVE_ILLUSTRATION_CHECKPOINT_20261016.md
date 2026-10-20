# North destination illustration integrated — 2026-10-16

Continue the same active PC1+PC2 traversal objective. It remains incomplete.
This extends [acquisition/door](NATIVE_ACQUISITION_DOOR_CHECKPOINT_20261016.md).
The latest pending native effect is now **encounter8**, not illustration3.

## Original DOS proof and implementation

A fresh startup within owned DOS session64818 ran the original party reader and
world initialization. Creation/film were explicitly skipped at the established
0d6a:059c/063c boundaries; opening flag249 alone was set. Dog/key flags remained
clear. The fresh main status poll was0824:2e45, SP0f3c/BP0f72.

Original1689:4b57/source481c7 was invoked via resident1ead:0039 on an owned
temporary stack, arguments13 and1. This is a **controlled illustration helper
comparison at the starting south-facing room**, not a second complete door/input
trial. Original helper code, full REA evidence and raw logs are retained under
`phase-five/acquisition-20261016/`.

Source formats `ikon%d.cmp` using DS6235, loads image85, derives `.pal` using
DS6240 and loads first128 colors (pushes128,0). For this200x200 image it renders
the current room then keyed-copies85→65 with key254. Of40000 source pixels,
33605 are transparent. Every6395 non-key pixel matches the live original;
the native room-plus-illustration result matches **all40000** captured slot65
indices, including retained room pixels and three key borders.

The original screen-present wrapper was trapped first in the room renderer,
then at original return2eaf:4d0c for illustration presentation. Resident
12ea:0430 copy args are sx6,sy4,w186,h192,dx5,dy4,source65,screen0,callback
2dbd:02d0. At that original callback, sourceE000:0e36 is the clipped source,
stride200. Subtracting4*200+6 gives logical slot65 baseE000:0b10. The retained
full EMS window therefore establishes the40000-byte logical image independently
of raw VGA memory. Original screen cropping/presentation remains distinct from
the native prototype's existing200x200 viewport framing.

DS:e5ef points to live palette671a:0004. All768 bytes match original
IKON13.PAL[0..384] plus PAL3D.PAL[384..768]. The upper128 colors survive; loading
the entire illustration palette would produce wrong room/UI colors. Native
`world_illustration` implements these verified keyed-copy and palette operations.
This module is used immediately by the normal Gate opcode3 host.

## Wait correction and native progression

Original05dc:2dca/sourceaf8a..b0ab takes **cycles**, not source-counter units.
Argument50 runs50 separate minimum20-counter waits, with input processing after
each. It flushes keys on entry and after reading one; Esc/Space/Enter can finish
only after more than20 prior completed cycles (earliest22nd check,440 units).
Late polling does not skip cycles. Native `lale-core::modal_wait::ModalWait`
implements this scheduling and keyboard gate; source slices/assembly retained.
The initial experimental direct50-counter wait was corrected before final build.
Mouse-change/enable handling and source callback costs are not yet modeled.

Normal native flow is now opening→north choice→suggestion dialogue→real mode0
acquisition→four timed door stages→automatic(2,0)→keyed illustration13 with
correct palette→original warning2→**pending encounter8**. The illustration wait
starts after presentation. Dog flag1 and key flag2 remain clear. No battle result
or subsequent map traversal is silently authorized. Opcode8 arguments are
`00 0d 01 00 00 00 00`; the original sets enemy-group13/count1 before combat.
Combat initialization/result logic and full navigation are still incomplete.

## Validation and continuation

All offline workspace tests/build/fmt pass, including the original acquisition
panels, all40000 illustration indices, all768 palette bytes, modal-wait input/
wrap/late-poll boundaries and normal acquisition→door→encounter barrier.
The final native SDL check is recorded in
`phase-five/acquisition-20261016/native-runtime-illustration-final.log`.
User Fedora desktop acceptance of these increments remains pending. Original
233 baseline and30 frozen hashes are unchanged; final preservation and capture
hash manifests are in the same directory. All earlier protections remain active.

Commands from project root:

```
./rust-port/play-native.sh
SDL_VIDEODRIVER=dummy SDL_AUDIODRIVER=dummy ./rust-port/target/debug/lale-otopark-room --root . --check-door-choice
cargo test --offline --workspace --manifest-path rust-port/Cargo.toml
cargo build --offline --workspace --manifest-path rust-port/Cargo.toml
cargo fmt --all --manifest-path rust-port/Cargo.toml -- --check
```

Next work: follow actual opcode8 combat entry (`func_0x00026686` in retained
dispatcher pseudocode; resolve its original stub), recover startup battle
presentation/inputs/state and original victory/failure return. Source copies
enemy groups before entry and checks party HP/result afterward; do not autoack
encounter or set flag1. Expand shared world movement/area hosts toward key/stair
and PC2 once those required effects are available. Acquisition hover/cursor/
keyboard extras and dead-party panel remain explicit gaps from the prior report.

## Exact live DOS pause — supersedes reboot checkpoint

The fresh controlled illustration call returned to **unique sentinel0d6a:0706**
with SP0c04 before any sentinel instruction executed. The earlier0824:2e45
sentinel also occurs inside the original modal wait and was correctly treated
as a nested pause, not helper completion. Its temporary return was changed to
0d6a:0706 before continuing. Logs retain both facts.

Original main registers were restored: **CS0824:IP2e45, SS2dac:SP0f3c,
BP0f72, SIde2e, DI8700, DS1f04**. Only BP0824:2e45 is armed. Session64818 is
paused there, now the **fresh** world run at starting(2,1), facing2, with the
controlled illustration visible and low128 illustration palette installed.
No synthetic stack is active. Original party/pool came from fresh GRP reader;
the earlier acquisition helper captures belong to the preceding run. Do not
reuse its old SP0b46/BP0b9a state. Before another trial confirm registers and
live stub targets. For north-direction preparation, preserve DSb9f1 and write
only facing byteDSb9f0=0, then invoke original1662:006b and1670:002f(1) as in
the prior verified setup, each with a unique trapped return and restored main
stack. Prefer actual original movement/input after preparation.
