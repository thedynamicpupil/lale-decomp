# Original SEQ PCM sound inspection — 2026-10-15

From project root:

```sh
rust-port/target/debug/lale-seq-preview --root . --debug-audio
```

The accepted silent preview remains the default, including F9. This opt-in mode
plays source-verified **unsigned8-bit mono PCM at22050Hz** using an SDL host queue.
The title says **DEBUG PCM SEQ (HOST SYNC)**. Controls remain Space pause/resume,
Right step/pause, R restart, Escape/Q close. Audio queues pause with the preview,
reposition when stepping/restarting, and clear at clip changes/end so buffered
source tails cannot spill into the next film.

Original SDISB16.DSD consumer instructions establish sample midpoint128, concrete
MCP registration/sample/start handlers and byte-cursor position units. Raw original
samples are extracted without an ADPCM decoder, compression guess, resampling or
sign-bit rotation. SDL may convert the requested source format for the host device.

This is audible debug inspection, not verified original mixing/synchronization.
It uses one host voice/default host gain and host frame deadlines. Original
centered-voice gain, driver amplification/clipping, ring buffering, audio/PIT clock
correction, seek recovery and fades remain incomplete. Device buffer size1024 is
host inspection policy. No user listening acceptance is claimed.

All five streams extract successfully, and full-film combined decoder/video/audio
SDL dummy smoke passes. That bypasses real-time deadlines and proves API integration,
not sound quality, drift or correct original audiovisual timing. Desktop feedback
should check intelligible sound/rate, segment changes, pause/restart and no stale
sound after Escape. Use the default silent mode for accepted visual comparisons.

Evidence: [driver audit](../analysis/phase-five/character-ui-20261015/audio/SEQ_PCM_DRIVER_BOUNDARY.md).
