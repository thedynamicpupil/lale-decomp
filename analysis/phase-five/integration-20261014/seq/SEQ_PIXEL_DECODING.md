# Authentic SEQ pixel decoding and inspection

Original16af:0390 /physical58850..5898f is the pixel decoder called by frame
consumer16af:0996 /58e56. Refill16af:0de8 /592a8 is captured alongside the consumer;
full runtime buffer/seek/audio synchronization remains incomplete. Source ranges,
bytes and hashes are in codec-source-and-corpus-evidence.json. Originals and
historical evidence are unchanged; no footage was recreated or substituted.

The decoder updates a persistent320×200 indexed framebuffer, initially zero.
For control c, let n=c&15. Expanded length is n (mode00),16+2n (10),48+4n (20),
or112+8n (30), selecting with c&30h. Bit80 means literal(c&127)+1 pixels;
otherwise bit40 means skip expanded+1 destination pixels (retain old indices);
otherwise repeat the next byte expanded+3 times. Source-end or64000 destination
end terminates the original loop. A short update retains trailing old pixels;
the safe Rust parser rejects overflow, truncated packets and unconsumed input.
Do not independently decode a later delta frame onto black state.

GHD record kind0 decodes pixels, kind1 holds pixels, kind2 places header.word6
sound bytes before its compressed pixel packet. Original sound bytes are exposed
unchanged; sample format/output and synchronization are not yet implemented.
The initial sound-associated block is also retained.22050 alone is not treated
as sufficient proof of PCM format or a WAV specification.

When record.flags bit80 is set,768 palette bytes immediately preceding that
record's GFL offset are used. Importantly, a following unflagged record restores
the original GHD baseline palette: consumer physical58fa7..58fc0 checks active
flag state and uploads DSd630 baseline before clearing that state. It does not
permanently inherit the flagged palette. Kind1 holds still follow palette logic.
The safe known-format header parser requires exact GFL signature, stricter than
the original character-sum test, and bounds the complete table.

All2433 records acrossSEQ1–5 were decoded chronologically in independent Python
and Rust:2396 pixel updates consume every compressed byte and advance exactly64000
positions; SEQ5 also has37 kind1 holds. Palette flag counts are0,0,0,20,58. Rust
packet tests cover all repeat/skip expansion modes, literal extremes, malformed
input, overflow and baseline restoration, plus the complete original corpus.
No film scheduler, arbitrary seeking or audio output is implied by these checks.
The earlier10fps counter formula remains the playback timing lead, not a new
native sleep loop.

SEQ1 frame50 visibly contains filmed city footage and the embedded title pixels:
`İSTANBUL` and `Bosfor Savaşı'ndan Elli Billah Sonra...` (apostrophe glyph shape
is visually interpreted). **Sonra is visible in the decoded pixels.** This resolves
the conflict with the user's later Önce recollection while keeping DS4d61 prose
(önceydi) separate. Exact original bytes of an embedded bitmap title are pixel
indices, not a newly invented resident text string.

The native inspector exports chronologically reconstructed frame50. Its320×200
RGB bytes exactly match the independent Python PNG (SHA256
1236549a3e869768694914d845250ae404890553c1fae13d1eb0932793fcd1f8).
See native-export-comparison.json, native-seq1-0050.ppm and seq1-trial/seq1-0050.png.
This is decoded source output, not an original DOS runtime capture.

Run from project root, with a new output path:

    rust-port/target/debug/lale-inspect seq-frame lale/0GFL.CKD SEQ1 50 /tmp/lale-seq1-50.ppm

The inspector reads all dependent frames0..50 and refuses replacement of an
existing output. It does not replace film playback in the native menu application.

Next: recover exact sound format/mixer dispatch, stream refill/seek recovery and
clock/audio synchronization, then implement a stateful chronological player with
original transitions. Keep the pixel decoder isolated from platform/audio code.
