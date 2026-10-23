# Native audio — 2026-10-21

2026-10-23: original stair sounds21/22 are supported. The default DOS loader
plays the first min(member length,0xff00) raw PCM bytes; MERDUST's longer archive
extent is no longer rejected. This is not general streamed-event support.
[Navigation checkpoint and source evidence](../analysis/OTOPARK_NAVIGATION_CHECKPOINT_20261023.md).

From the project root on Fedora KDE:

```sh
./rust-port/play-native.sh
```

Audio is enabled by default. The existing SDL2 and `libopenmpt.so.0` runtime
libraries are used; no packages or global settings were changed. Host controls:

```sh
LALE_AUDIO_VOLUME=50 ./rust-port/play-native.sh
LALE_AUDIO_MUTE=1 ./rust-port/play-native.sh
```

Volume is 0–100, default100. Mute/zero volume keep sample clocks and original
combat sound RNG draws running. A device-open failure logs a message and uses a
silent sample clock, so supported voice waits still complete.

## Listening checklist — user acceptance pending

1. Reach the menu and create four characters: hear original `demo.amf` music.
   Separate menu click/speech effects have not been verified or added.
2. Complete creation: hear all five original SEQ tracks, synchronized with their
   pictures, with no prefetched sound tail leaking across film boundaries.
   Native film controls remain Space pause, Right step/pause, R restart,
   Esc leave, Q quit. F9 remains the independent silent-film inspection path;
   the standalone preview's `--debug-audio` uses the same sample-clock backend.
3. Explore Otopark: hear `3d.amf`, then the original selected door effect.
4. Enter combat: hear the source-selected `Savas.Amf` or `uni.amf`, turn voices,
   footsteps and physical hit/miss/death sounds. Play several turns without
   Escape. Arrows/keypad move or attack; Tab advances initiative. Escape remains
   an explicit fallback when the title identifies an unsupported voice event.
5. Win and continue exploring: Otopark music returns. Repeat with volume0 or
   mute and confirm gameplay still progresses.

The 2026-10-22 [battle UI/equipment increment](NATIVE_FIRST_BATTLE.md) replaces
the primary debug HP list and adds manual carried-item equipment. Pickup still
does not autoequip Sivri Daş. Complete action/speech effects remain later work.

## Implemented and remaining boundaries

Music replays original embedded AMF samples through libopenmpt; it is not a
recording or replacement soundtrack. Static sound IDs1–32 are decoded from the
original catalog and loaded as the source loader's unsigned8 mono bytes, except
text member ID10. ID22 now follows the verified default DOS segment cap. Only verified callers are connected:
turn speech, ordinary combat physical/step sounds, the world door selector and
the original stair guard sounds.
Unsupported dynamic IDs33–48, `.SND` event construction, additional world/UI
sounds and menu-specific effects remain isolated. The recovered menu selection
callback is graphical; this does not establish that every possible menu path is
silent. No synthetic click or generated speech was substituted.

DOS mixer gain, stereo/panning100 semantics, randomized channel-balance output,
100-unit music fades and complete source volume options are not reproduced.
Combat selection/panning RNG is still consumed by the verified initializer;
output does not draw again. The original door pitch draw is newly connected
once even while muted. Broader world music-entry/return RNG and channel commands
remain part of the outer-world lifecycle gap; native music restoration itself
makes no additional RNG calls. Host volume is separate from those original gates.

PCM resampling uses sample-and-hold; module rendering uses libopenmpt defaults.
The backend collapses the original duplicated reserved PCM channels into one
centered stereo contribution. Its amplitude/clipping and tracker mix have not
been certified waveform-equivalent to DOS. Films use one native sample cursor
for both pictures and sound; this replaces the inspection's independent clocks,
not a claim to reproduce the DOS PIT/ring-refill implementation. One512-frame
SDL handoff buffer is accounted for; external device/PipeWire latency still
requires desktop listening verification.

[Evidence, automated checks and continuation checkpoint](../analysis/NATIVE_AUDIO_CHECKPOINT_20261021.md).
