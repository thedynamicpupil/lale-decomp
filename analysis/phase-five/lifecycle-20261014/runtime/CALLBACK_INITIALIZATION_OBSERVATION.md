# Controlled original DOS callback initialization — 2026-10-14

## DOS-RUNTIME-OBSERVED, bounded to menu initialization

Installed `/usr/bin/dosbox-x` debugger executed a disposable copy of the original
20-file lale distribution under `/tmp/lale-dos-controlled/game`. No original or
normal launcher/runtime directory was mounted for writes. Configuration and PTY
relay are retained here; dummy SDL audio/video, normal CPU core, fixed10000 cycles,
no sound and disabled MIDI were used. These choices affect timing; this is not a
visual/audio acceptance run or representative poll-frequency measurement.

The canonical first-run transcript and three raw memory dumps are in `run1/`.
Load base L=0824, initial PSP DS0814; actual game DS1f04=L+16e0. A memory-change
breakpoint at1f04:964c stopped in resident memcpy at0824:1289 (physical3689).
Observed registers include ESI98dc, EDI9654, ES/DS1f04, SS2dac, ESP0f4e.
`HOOKS-INIT.BIN`, dumped from DS9640, contains far pointer **0e00:08f6** at
relative12. This is relocated **05dc:08f6**, not either previously recovered
portrait1694:1935 or restored no-op05dc:00cd target. `HOOK-TEMPLATE.BIN`, dumped
from DS98a0, corroborates the template pointer atDS98d4. The watchpoint stops
inside a bulk copy; it is not a complete application/creation-entry snapshot.

## BINARY-VERIFIED mapping

Original physical912c/9133 writes segment05dc and offset08f6 toDS98d6/98d4.
Menu1682:054d calls the resident copy helper from physical3fb1e..3fb31:
72 bytes DS98b4→DS962c. Callback member+20h therefore maps98d4→964c.
The saved stack contains return0592:2f78, consistent with this loaded1682 menu
copy call. File-backed template/live pointer bytes were zero before runtime
initialization, explaining why direct-write-only searches missed the lifecycle.

Target05dc:08f6 is physical8ab6..8aff. REA evidence is retained in the parent
`resident-callback-rea.json`: analysis0x166b6 /synthetic15dc:08f6 is a74-byte
function. It calls16d3 export0039, conditionally export0034 withffff,ffff,0,
handlesff through an error helper, then passes its two incoming words to1670
export009d. The latter resolves to1670:837a /physical3a28a. Direct source
ranges are retained; do not claim absence of shared RNG effects across its
whole transitive call tree without further tracing. REA session was closed.

## Limits and exact next experiment

This run reached menu initialization, not character creation. Actual creation
entry/reentry party/trait/RNG snapshots, subsequent callback transitions, idle
polling and mouse-release scheduling remain unvalidated. No stat-generation
comparison or finalization/save test was completed. Native generation remains gated.

A second exploratory run attempted BIOS-buffer Escape injection and main return
breakpoints, but did not reach the intended creation breakpoint. Its transcript
was contaminated by overlapping log writers and is excluded from evidence.
Both debugger sessions were terminated; no original code was patched. The
headless interruption caused an emulator GUI crash dialog, not evidence that
the user's working desktop launcher is broken.

For the next run use a fresh uniquely named log/runtime directory, a bounded
external timeout and only one debugger process. Break before/after the72-byte
menu copy and at main creation call0d6a:059c for this load base (physical7dfc).
Record RNG, party, trait/animation and live hook bytes at actual entry; follow
all indirect calls and input/release iterations with controlled inputs. Audit
05dc:08f6's transitive callees rather than substituting no-op or portrait timing.
