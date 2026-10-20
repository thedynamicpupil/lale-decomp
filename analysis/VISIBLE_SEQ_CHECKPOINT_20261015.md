# Visible silent SEQ integration checkpoint — 2026-10-15

Continuation of LIFECYCLE_MANUAL_CHECKPOINT_20261014. The latest user message
prioritizes visible, testable native increments while preserving evidence gates.
Read UpdateablePrompt.txt and living docs before continuing. Existing evidence,
original files, user-passed desktop milestones and Phase Four status are retained.

## Completed working increment

The native Rust application now presents the original moving SEQ1–5 footage in
SDL, using the existing verified pixel decoder without changes. New standalone
binary `lale-seq-preview` and F9 modal entry from the interactive menu/character
screen share one implementation. F9 is unavailable during name editing. Escape
returns with character drafts retained; the parent host presentation clock is
suspended across the preview. Q/window close quits the application. Original menu
choices and fourth-character completion are not repurposed.

Title bar explicitly says SILENT DEBUG SEQ and displays current stream/frame and
PLAYING/PAUSED/END state. Space pauses/resumes, Right advances one chronological
record and pauses, R restarts. All five streams run in order at their GHD10fps
using monotonic host deadlines; nominal duration243.3s. The final record remains
visible for its full period, then holds at END until restart/return. Default
standalone aspect is4:3, nearest sampling and letterboxing; `--square-pixels`
selects320:200. F9 preserves the parent's chosen aspect setting.

All intermediate records are decoded, including hold records and palette
changes. At most eight records catch up per input poll; redundant intermediate
host uploads may be omitted when behind, without discarding delta dependencies.
Restart/stream entry use the existing zeroed inspection baseline. Each frame's
palette converts through the established six-bit RGB inspection convention.
The original sound blocks remain parsed but unused; no audio device is opened.

This is **RUST-IMPLEMENTED DEBUG PREVIEW**, not original DOS playback validation.
Host deadlines, pause/step controls and stream baseline are inspection choices;
original PIT/audio coupling, late-packet recovery/refill, sample format, original
fades and interrupt/input semantics remain unresolved. Native game progression
is unchanged. No new executable, REA or DOS-runtime observation is claimed.
The archive is read-only and loaded into memory (218306786 bytes, bounded at
256MiB); streaming resource IO remains future work.

## What is playable versus implemented

- Existing original-resource menu/character visual/input subset: working; prior
  eight user desktop checks remain historical acceptance.
- Advancing silent cinematic: working native debug preview, desktop acceptance
  pending. It is accessible from the existing application without party success.
- Stat generation/shared RNG caller/party workspace: implemented headlessly;
  fresh UI values and final creation remain gated on original lifecycle evidence.
- Otopark/resources/dialogue and item2=Sivri Daş: verified findings retained;
  no room navigation, event execution or inventory ownership mutation implemented.
- Continuous completed-party→film→Otopark→pickup/dog battle path: incomplete.

## Checks

44 Rust test executions pass offline (41 distinct tests: three new preview tests
compile/run in both menu and standalone binary targets). New tests cover:

- all2433 chronological records and all five stream boundaries;
- independent SEQ1 frame50 index and RGB identity;
- exact100ms deadline boundaries, bounded catch-up and end-frame period;
- restart and frozen paused/stepped host-clock behavior.

Formatting check and offline workspace build pass without warnings. SDL dummy
preview smoke decoded through all2433 records with framebuffer uploads per batch;
timing is bypassed explicitly in this smoke mode. Existing dummy character
smoke presents three frames successfully. No graphical desktop acceptance or
original audiovisual runtime comparison is claimed. Tests do not resolve the
creation callback/RNG gates.

Logs and validation: [new increment directory](phase-five/visible-preview-20261015/).
Usage and pending desktop checks: [native preview guide](../rust-port/NATIVE_SEQ_PREVIEW.md).

## Launch / desktop feedback

From project root:

```sh
rust-port/target/debug/lale-seq-preview --root .
rust-port/target/debug/lale-menu-reference --root . --vga-aspect
```

In the menu application, F9 opens the preview once the menu is interactive, or
from character creation outside name editing. Verify moving footage/title;
pause/resume without a jump; Right stepping; restart; resize/aspect; and Escape
returning to unchanged character drafts. Full sequence should progress through
SEQ1–5; END remains a debug stop rather than entering an invented room.

## Exact next bounded actions

1. M02/M03: preserve this visual increment while obtaining actual original
   creation-entry/reentry hook/RNG/raw state snapshots and controlled fourth-slot
   completion/re-read evidence. Follow previous runtime handoff addresses and
   create new disposable copies/logs. Then connect existing generation/workspace
   to the graphical UI using an explicit evidence-backed scheduling boundary.
   Do not seed an arbitrary RNG, guess callbacks or enable premature saves.
2. M05: trace shared PC1/UFUK1 rendering and remaining cell consumers, then add
   the next original-resource native visual increment. Navigation must wait for
   actual movement/collision/event ordering; a debug resource view must say so.
3. M06/M07: trace46591 acquisition accept/cancel/owner writes and speaker5/B6;
   implement verified item state independently of unresolved UI behavior. Item2
   and group0 offer are already verified; do not invent transfers or auto-pickup
   at the initial group5 cell.
4. M04/audio: retain the functioning silent preview while recovering concrete
   MCP sample/start/position targets, sample interpretation, ring units, recovery
   and fades. Replace debug scheduling with faithful playback incrementally;
   do not block all visible work until audio is complete.

## Preservation

1069 pre-increment files hashed. Only six intended existing files changed:
three living docs, runtime Cargo manifest, menu entry and SDL adapter. New source,
preview guide and checkpoint/evidence are additive. All30 frozen artifacts match;
no original-distribution, bundled emulator/configuration, reference-media or
historical evidence change was found. Existing GUI Ghidra project was not opened
or edited. No new packages, dependencies or global settings. Phase Four remains
incomplete. [Audit](phase-five/visible-preview-20261015/preservation-final.json).
