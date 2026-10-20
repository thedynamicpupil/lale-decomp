# Shared tick and turn-selection DOS trial — 2026-10-20

New owned runtime: `runtime/first-combat-20261020/run2/`. Original20 files were
copied and checked against `runtime-copy-manifest.json`; only this fresh GRP.DAT
was seeded from original GRPHAZIR.DAT. Protected originals, old runtime saves,
bundled DOSBox/config and GUI Ghidra were not changed. Installed DOSBox-X used
normal/fixed50000 and SDL dummy video/audio, with the same launch policy as the
preceding first-combat trial. `dos-00..26.json` retains terminal responses and
explicit commands; captures retain full65536-byte DS snapshots.

## Controlled shared-helper differential

The menu/party/film skip boundaries follow the previous checkpoint. At original
0d6a:0706, observed DS1f04/SS2dac/SP0f74/BP0fea, SIbb43/DI8700,
AX2/BXbb3b/CX0/DX0. `TICK-BASE-DS.BIN` precedes conditioning. At this stop:

- Set clock DS3d64/66/68 to59/23/359.
- Set numeric party1 timer words DS9a30..38 and actor25 timer words DSa488..90
  independently to `[50,250,150,0,500]`.
- Capture `TICK-BEFORE-DS.BIN`.
- Write far return0d6a:0706 plus argument1 at unused SS0c00; call actual resident
  **1e94:0048**, original1670:0048→body39fd. Trap the unique return without
  executing its instruction on the temporary stack.
- Capture `TICK-AFTER-DS.BIN`, returned SP0c04.

Actual original result: clock `[0,0,0]`, BOTH conditioned arrays
`[250,50,500,0,0]`. All four arrays of each kind are retained, including the
other unconditioned party records. This confirms carry, negative-to-zero expiry,
left compression and the source's skip-after-compression behavior. In particular,
the250 shifted into slot1 is not decremented in that same call.

This is a **conditioned helper call**, not a naturally elapsed combat round or
world step. The meanings of individual effect IDs and ownership synchronization
are separate questions. No hit/AI/victory claim follows from this experiment.

Before continuing, all three counters and all eight five-word timer arrays were
restored from BASE. `TICK-RESTORED-DS.BIN` differs from BASE at exactly11 bytes,
all DSf672/f678/f67a/f67c/f67e..f684. These alias unused temporary SS0bf2..0c04
stack scratch, not game fields; full restoration is not claimed. Restore the
listed original registers/SP before running the area caller. Only then set
flag249 (DSb9e9=02) to skip opening dialogue and reach shared keyboard poll
0824:2e45. This is a poll helper, **not** the world outer-loop entry.

## Original encounter and Tab selection

Condition world x2/y0/facing0 and invoke original1662:006b to derive vectors.
Then call original1689:0020 with **cell byte offset30 decimal =1e hexadecimal**,
mode2. An earlier call accidentally supplied30 hex and returned without entering
combat; no accepted combat result comes from that call (see dos-15/16). Keep this
distinction when reading the preceding checkpoint's ambiguous prose.

Original mode2 warning/illustration/preparation reached resident1eb8:0138.
After original overlay resolution the stub was `EA0AB4AF2E`→2eaf:b40a. Capture
COMBAT-PRE-DS precedes battle initialization. Break at universal inputbff5,
not conditionalbff4. `INPUT0-DS.BIN` establishes this trial's initial live actors:

|Actor|HP|Damak|Facing|Class|Coordinates|Side|
|---|---:|---:|---:|---:|---|---:|
|1|3|0|3|5|(11,5)|2|
|25|6|81|1|1|(14,4)|1|
|26|6|110|1|2|(13,1)|1|
|27|5|101|1|3|(12,5)|1|
|28|3|196|1|4|(15,0)|1|

Current28, allowance10, round0, cursor1, result0. Sorted live entries:
28/key2,25/key4,27/key4,26/key6,1/key15. This differs from run1 because original
seed/call chronology differs; do not hardcode its positions or initiative.

Inject BIOS Tab0f09 using head1e/tail20. Original host reached
**2eaf:1caa**, physical4b8fa, the eligible-actor path after live/status tests,
before allowance reload/presentation. `TAB-SELECTED-DS.BIN` confirms current25,
cursor2, round0/result0, same order/live HP/positions. Allowance is still10 at
this particular pre-reload stop; it is not evidence of Tab's action cost.
`turn-capture-summary.json` gives full live actor words and exact order keys.

This confirms actual keyboard-driven next-actor selection. It does not confirm
the entire turn presentation or a later enemy action. Continuing from1caa toward
1de3 (physical4ba33, after camera/recenter and1d1b, before speech branch) produced
no confirmed stop during bounded polls. No speech/voice cause, relocation cause
or original failure has been established. The unresolved interval is more precise
than the earlier scheduler-entry→bff5 trial, but is still unresolved.

The owned emulator was terminated with Ctrl-C (exit1, dos-26.json). **No live
DOS session remains.** No AI, physical attack, victory/defeat or return-to-world
result is claimed. No stone was transferred/equipped in this trial.

## Safe next trace

Create run3, repeat startup using this log, and trap eligible selection1caa.
Before RUN, inspect debugger HELP for its bounded `LOG/LOGS/LOGL/LOGC [num]`
commands (these names are present in installed binary help strings). Establish
their stop/log behavior on a small budget, then trace the camera/recenter interval
with a bounded instruction budget, capturing original return stack, current stub
bytes and timer state. Do not repeat another unbounded RUN to an assumed dynamic
overlay address. Resolve whether execution is in14ea camera pan,2721 redraw,
15dc:1e5e wait,1d1b, a relocated continuation or elsewhere from actual CS:IP.
Then complete Tab→input and AI9668→movement2d39/physical3f5b comparisons.
