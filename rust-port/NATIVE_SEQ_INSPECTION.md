# Original SEQ frame inspection — 2026-10-14

The native asset inspector can reconstruct original footage frames. From project root:

```sh
rust-port/target/debug/lale-inspect seq-frame lale/0GFL.CKD SEQ1 50 /tmp/lale-seq1-50.ppm
```

Use a new output path; existing files are never replaced. Frame numbers are
zero-based. The decoder applies every dependent frame from0 to the requested
frame with original palette rules. It handles indexed literal/repeat/skip updates
and hold records, rather than decoding a delta frame onto a guessed background.
SEQ1 frame50 contains the filmed İstanbul/Bosfor title. Its visible wording ends
“Elli Billah Sonra...”; the resident prose ending“önceydi” is separate.

All five original SEQ streams are covered by native decoder tests. This command
exports an inspection image; it does not replace the native application's film
with a static image. Chronological video playback, original sound interpretation,
stream recovery and clock/audio synchronization remain pending. The decoder
exposes original sound blocks without claiming a sample format or playing them.

The existing `list` and strict `decode` commands retain their behavior. The menu
prototype still keeps fresh numeric UI generation and final creation gated while
caller/state integration is validated. New headless caller and party workspace
modules are separate from that accepted desktop flow.
