# Silent native SEQ preview — 2026-10-15

From the project root:

```sh
rust-port/target/debug/lale-seq-preview --root .
```

The original SEQ1–5 footage now advances in an SDL window. All five GHD headers
specify 10 fps; the debug preview uses monotonic host deadlines at that rate.
The complete sequence is nominally 243.3 seconds. The title bar explicitly says
**SILENT DEBUG SEQ** and shows stream, frame count and playback state.

- Space: pause/resume.
- Right arrow: advance one record and pause.
- R: restart all five films from their inspection baseline.
- Escape: return to the caller (close in the standalone application).
- Q or window close: quit the application.

Default standalone display is 4:3 with nearest sampling and letterboxing.
`--square-pixels` selects the 320:200 pixel ratio. Native palette expansion is
still the established inspection convention, not a calibrated VGA comparison.

The existing menu application also exposes this same preview with **F9** from
an interactive menu or character screen, outside name editing:

```sh
rust-port/target/debug/lale-menu-reference --root .
```

Escape returns to the previous screen with drafts retained. The parent's host
presentation clock is suspended during preview. F9 is a debug shortcut, not an
original menu choice or successful party creation. It uses the caller's aspect
setting (add `--vga-aspect` to the menu command for 4:3). At film end the last
frame remains visible with END in the title; R restarts and Escape returns.

Pixels, palettes, skips, repeats and hold records use the existing verified
SEQ decoder unchanged. Late presentation decodes every intermediate record in
order; catch-up work is bounded per input poll. It may omit intermediate host
uploads when behind. It never seeks directly onto a delta frame. Sound blocks
are parsed but never sent to an audio device. Each stream starts with zeroed
inspection pixels, as in the existing decoder corpus tests.

This preview does **not** reproduce original PIT/audio clock coupling, sample
encoding, ring refill/seek recovery, segment fades or original interrupt/input
semantics. It does not finalize a party, write a save, enter Otopark or represent
a continuous playable game path.

## Validation and desktop checks

Automated tests cover all 2433 records, stream boundaries, title indices/RGB
against the independent fixture, exact 100 ms deadlines, bounded catch-up,
end-frame hold, restart and paused host-clock behavior. SDL dummy-driver smoke
covers all records and retains the existing character-screen smoke.

```sh
SDL_VIDEODRIVER=dummy rust-port/target/debug/lale-seq-preview --root . --smoke-frames 2433
```

`--smoke-frames` deliberately bypasses wall-clock deadlines and exits after the
requested decoded-record count (or stream end). Some intermediate uploads are
omitted; this checks SDL upload and decoder integration, not real-time playback.

User desktop acceptance remains pending. Check advancing footage/title; Space
freezing/resuming without a time jump; Right stepping; R returning to SEQ1;
resizing/aspect; and F9/Escape returning to unchanged character drafts. The
previous eight desktop checks remain historical acceptance of the prior build.

Native party completion now invokes the same decoded SEQ1–5 player and proceeds
to the original starting view after the final frame duration. F9 and standalone
debug playback retain their accepted END hold. New completion playback can opt
into the existing PCM debug output with the app's `--debug-audio` option; this
does not establish original gain/synchronization/fades.
