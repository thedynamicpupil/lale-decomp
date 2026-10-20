# Recorded audio comparison and original control seeds

This is new Priority D research under `newfindings_phase5continiues.txt`.
Original reference media, original game files and previous evidence remain
unchanged. Audio does not block the visual prototype.

## Recording and extraction: observed facts

`reference media/2026-10-14 02-39-52.mp4` contains AAC-LC stereo audio at
48000 Hz, nominal192kbps, duration73.515s, in addition to its video track.
Metadata identifies OBS Studio32.1.1. These are capture/codec properties,
not the original DOS mixer settings.

`audio-reference-20261014/media-probe.json` retains full ffprobe output.
`reference-audio-48000.wav` is a new decoded PCM16 stereo reference; converting
AAC to WAV does not restore lost codec information. A second analysis-only
mono8000Hz float stream supports comparison. Their hashes and source-media
hash are in `provenance-level-summary.json`.

## Bounded matching experiment

Existing libopenmpt0.8.9 rendered at most85s from all15 original AMF members,
offline, using its defaults. The8000Hz mono output is an explicit analysis
choice, **not a recovered original rate**. No audio device, custom tracker,
new dependency or system installation was involved.

Two reproducible tools preserve complementary results:

- `tools/extractors/compare_reference_music.py`:100ms RMS envelope correlation.
  Results: `audio-reference-20261014/module-envelope-comparison.json`.
- `tools/extractors/screen_reference_music_spectrum.py`:256-point Hann FFT,
  twelve log-energy bands, per-frame centered/unit-normalized spectral vectors,
  100ms hop and200ms candidate offset grid. Results: `spectral-screening.json`.

DEMO.AMF is the leading **menu-region candidate** in both comparisons and is
also supported by the earlier static menu member reference. It ranks first
spectrally at reference43–53s,53–63s and63–73s, with scores approximately
0.789,0.770 and0.673. The corresponding coarse candidate offsets are2.0,7.2
and16.4s. These offsets do not establish a consistent exact alignment.
RMS matching also favors DEMO in the later recording, but less decisively.

**Conclusion: DEMO identification is strongly supported jointly with static
evidence; original-versus-library mix and exact timing are not validated.**
Spectral similarity is not a statistical identity probability, and broad
instrument spectra can yield high scores for unrelated tracks. The first
0–30s does not provide a reliable unique AMF identification: different metrics
choose different candidates. It may use intro/media-specific sound, but that
is a hypothesis requiring a resource/playback trace.

Five-second reference mono RMS blocks fall from roughly−20dBFS around20s
to−79/−81dBFS around30/35s, then rise around40s and settle near−22dBFS later.
This documents a quiet interval and restart in the recording; it does not
establish whether the cause is game-controlled silence, fades or capture.

Additional bounded envelope rate searches are retained in
`menu-rate-screening.json` and `demo-fine-rate-screening.json`. Several rates
produce similarly moderate correlations. **Do not derive a tempo correction,
DOS tick-rate mismatch, sample-rate adjustment or gain setting from those fits.**
No spliced/resampled soundtrack was created to force a match.

## New assembly-backed original controls

`audio-reference-20261014/menu-music-retained-assembly.json` extracts exact
instructions from the already-retained REA menu evidence, preserving its
Evidence ID. Menu addresses40xxx are **synthetic overlay coordinates**;
resident call-target linear aliases assume Ghidra load segment1000.

At synthetic menu0x40ab4 the loader call targets resident0x20da3 and passes
the DS:4c26 member-name pointer used for demo.amf in existing analysis.
At0x40b20 the menu calls resident0x2017f with the module pointer and dword1.
Direct original-byte objdump at physicalIST.EXE0x1257f confirms it supplies
order start0 and object order-count byte+0x4f to the shared core at physical
0x12392. The core stores the caller parameter at originalDS:7c51; whether
that parameter means loop/repeat mode remains unresolved.

At synthetic0x40b2d the menu calls resident0x20585 with dword64 and selector
0xffffffff. Original physical0x12985 explicitly recognizes selector−1 and
fills all32 entries at originalDS:8571 with low byte64. This verifies a
game-controlled per-channel level initialization; downstream scaling and
overall gain are not yet recovered. A native wrapper must not assume its
default gain equals this original setting.

The start core's physical0x1243a..0x12446 computes integer
`50 * tempo_byte / 125` and stores it at originalDS:85a0. At tempo125 the
result is50. This is a verified timing-related arithmetic seed, not yet proof
of actual interrupt cadence or complete tracker timing rules.
New original-physical assembly captures retain both start and level routines.

## Fidelity limits and next actions

The recording's AAC loss, OBS gain, desktop downmix/resampling, possible
background sound, unknown DOS driver/device configuration and library default
interpolation/panning/ramping prevent a waveform-equivalence claim. Correlation
search also encounters repeated musical sections. Absolute level difference,
loop boundary, start latency and long-term drift remain unmeasured.

Keep libopenmpt as the leading native candidate. Before tuning it, trace
DS:7c51 and the DS:8571 level consumers; recover original fades/restart and
selected sound-driver parameters; identify intro sound sources; then compare
one clean known original track from a known start position and configuration.
SFX parsing/playback remains a separate unresolved subsystem, including the
known text counterexample BOSCH.PUR. No audio engine implementation is required
for the first visual milestone.
