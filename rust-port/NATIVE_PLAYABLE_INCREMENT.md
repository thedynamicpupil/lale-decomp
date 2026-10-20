# Native creation → cinematic → Otopark starting view

## Current optimized build — 2026-10-19

Use [NATIVE_BUILD.md](NATIVE_BUILD.md) for current launch instructions, controls
and limits. Shared walking/area loading now uses live coordinates and original
event gates; normal progression still stops at the dog encounter. The older
sections below retain milestone history and are superseded by that guide.

## Latest destination increment — 2026-10-16

After the acquisition/door path below, original illustration13 now appears over
the destination room with its correct partial palette update. The source wait
runs50 cycles of20 counter units; Esc/Space/Enter can shorten it after21 completed
cycles. Original warning text follows, then the native build stops at pending
encounter8. Dog victory, key and further traversal remain unavailable. Fresh
Fedora testing is still pending. [Latest checkpoint](../analysis/NATIVE_ILLUSTRATION_CHECKPOINT_20261016.md).

## Latest controls — mode0 acquisition and north door (2026-10-16)

Use `./rust-port/play-native.sh` and complete normal party creation→film→opening.
Turn north, press Up and choose Evet. After the suggestion dialogue, the original
acquisition panel appears. Click the upper-row stone then a lower-row inventory
slot; select party portraits or F1..F4 for another recipient. Click inventory then
an upper-row slot to swap back. Right click clears current selection. Esc or the
panel's top-right close control returns; unclaimed temporary items are discarded.
Four timed door frames then carry the party automatically to(2,0). The correct
destination view appears, paused at the unimplemented illustration/encounter
frontier. No second Up, dog victory or key flag is synthesized. Other walking is
still gated. Hover descriptions/custom item cursor/extra keyboard controls remain
unfinished. Full Fedora PC1+PC2 acceptance remains pending.
[Current checkpoint](../analysis/NATIVE_ACQUISITION_DOOR_CHECKPOINT_20261016.md).
Older guidance below describes prior builds where superseded.

From any working directory:

```sh
./rust-port/play-native.sh
```

Choose **Yeni oyuna başla**. The normal character interface now generates original
stats and advances original body poses automatically. Enter/dice rerolls; arrows
change appearance/race, C changes sex, Tab/name button edits the name, Space/next
advances a named slot. Escape goes back. Editing a name suspends body movement.
Blank names cannot complete a slot.

Completing the fourth named character prepares the original records, validates
an original-reader roundtrip, writes a new664-byte creation-party checkpoint
under `runtime/native/parties/`, then plays SEQ1–5 and displays the original
Otopark starting view. Every checkpoint gets a new filename; originals and prior
runtime saves are never replaced. These are **party checkpoints, not full game saves**.

F9 retains the accepted silent cinematic preview. F10 retains source-sheet
inspection. **F11** opens the composed starting view directly for testing.
Escape returns from these inspections. In completion playback, Escape is a native
skip-to-starting-view control; it is not claimed as recovered original skip behavior.
In the room, **Left/Right arrows turn in place** through the four original facings.
Escape returns to the menu. Movement is not enabled.

```sh
./rust-port/play-native.sh --creation-seed 12345
./rust-port/play-native.sh --debug-audio
./rust-port/play-native.sh --native-party runtime/native/parties/party-EXAMPLE.dat
rust-port/target/debug/lale-otopark-room --root .
```

The first command is reproducible native creation. Default seeds use the recovered
original calendar conversion on host local civil time, with the original absent-TZ
fallback. This is an explicit **native creation-entry boundary**: prior DOS startup/
menu RNG draws are not emulated, so it does not promise a same-time DOS party match.
The second enables the existing source PCM debug audio for completion playback;
F9 stays silent. The third validates an existing native party checkpoint and opens
the starting view; it does not resume world flags, inventory events or combat.

Body timing uses the recovered150 source-counter threshold and the existing
conditional no-audio PIT clock model. The original CPU-bound random face gate
has no defensible native poll cadence yet. Automatic face triggering is still
incomplete; waiting/rendering does not consume invented RNG draws. Existing
explicit snapshot mode/F8 remains available and unchanged.

The starting room is a **bounded source-command compositor** for all four facings
of original PC1 cell(2,1). It replays117 captured original draw calls using the
original CMP resources and PAL3D. Scaled draws are skipped only after proving
later opaque rectangles overwrite their entire destination. Controlled DOS bank
reads match all40000 indexed viewport bytes for each facing in native turn tests.
Untouched pixels preserve previous contents; three key254 pixels remain host
black in the inspection canvas. The original HUD/background is not implemented.
The200×200 viewport stays centered in320×200. The existing accepted facing2 RGB
image is unchanged. This is not yet a general renderer for other cells.

Standalone inspection can start at any facing (0..3), or export a new PPM:

```sh
rust-port/target/debug/lale-otopark-room --root . --facing 0
rust-port/target/debug/lale-otopark-room --root . --facing 3 --dump /tmp/otopark-facing3.ppm
```

These host controls select instantaneous quarter-turns. Original physical turn
key bindings, animation and repeat cadence are not claimed to be reproduced.

Still incomplete: random face scheduling/exact DOS idle RNG cadence, controlled
original fourth-slot writer/re-read runtime comparison, general room dispatch,
movement/collision, opening dialogue execution, item ownership, encounters,
combat, original audio gain/synchronization/fades and full save/load. Appearance13
retains its existing strict CMP discrepancy without substituted artwork.

## Desktop checks for creation integration (retain earlier unreported checks)

1. Normal New Game shows generated stats without importing a DS snapshot.
2. Body poses advance; name editing pauses them; rerolls and identities work.
3. Four nonempty names advance and fourth completion reports a new native checkpoint.
4. Film plays, then the stone-walled starting view appears; native Escape can skip film.
5. F11 shows the same room; F9/F10 retain accepted behavior and return with drafts.
6. Relaunch with `--native-party` and the printed checkpoint path opens the starting view.
7. Optional completion `--debug-audio` remains audible; original fidelity is not claimed.

Automated checks cover creation inputs, persistence/re-read, original call-site
provenance, complete occlusion of skipped scales, room pixels and prior SEQ tests.
The user accepted the prior Otopark starting perspective/facing side on Fedora.
Prior analysis tools, eight menu/character checks, all-five silent films and PCM
audibility acceptance stands. Creation checks not explicitly reported stay pending.

## Turning checks — facing visuals user-accepted

1. Run the normal application and press F11, or complete creation→film as before.
2. Left/Right arrows rotate in place. Facing0 shows the door ahead; facing1 the
   door at the left edge; facing2 the accepted wall; facing3 the door at the right.
3. Four turns in either direction return to the same view. Opposite turns cancel.
4. Up/Down leave the position unchanged; Escape returns. F9/F10 still work.
5. A loaded native party checkpoint opens at facing2 with the same turning controls.

[Four-facing preview](../analysis/phase-five/turning-20261015/checks/four-facings.png).
Offline tests and SDL dummy checks passed. The user now confirms the starting-room
facing visuals are correct. Other unreported checks remain pending. The new
ordinary movement/event core is tested separately; walking remains unavailable
until the original north-door transition, event vetoes and adjacent view are ready.



## 2026-10-16 opening and north-door dialogue increment

Run the existing `./rust-port/play-native.sh` launcher. A normally created party
now passes its actual numeric records and RNG through the film into Otopark.
All ten original opening dialogues play automatically. Space/Enter/Esc can end
the current dialogue after four portrait draws; they do not skip the whole event.
After all ten complete, flag249 is set and ordinary room controls return.

Turn north with Left/Right and press Up. The original warning and Evet/Hayır
choice appears. H/Hayır restores the starting cell. E/Evet selects the original
live-party speaker and runs the stone-suggestion dialogue. Its return currently
pauses at the unfinished acquisition9 host. The party stays at(2,1); no stone
transfer, dog/key flag, door animation or movement is fabricated. Esc at that
explicit pending-host boundary returns from the prototype.

Standalone/debug room entry without a supplied party/RNG still stops at23/17;
it does not silently load reference stats or invent a new RNG seed.
`--door-sequence` remains a separate rendering inspection, not gameplay.

The automated SDL main-thread check is:

```
SDL_VIDEODRIVER=dummy SDL_AUDIODRIVER=dummy ./rust-port/target/debug/lale-otopark-room --root . --check-door-choice
```

It checks choices, original DOS-matched dialogue RNG frames and restoration, then
plays all ten opening dialogues with real source-counter waits (6.25s in the
latest run under repeated Space). New Fedora desktop acceptance of these dialogue
changes is pending. Full PC1/PC2 traversal is still incomplete. See
[the checkpoint](../analysis/NATIVE_DIALOGUE_CHECKPOINT_20261016.md).
