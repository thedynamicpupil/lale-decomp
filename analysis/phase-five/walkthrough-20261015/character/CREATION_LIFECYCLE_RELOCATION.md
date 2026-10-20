# Controlled creation idle lifecycle — 2026-10-15

## DOS-RUNTIME-OBSERVED

A fresh copy of the original game ran under installed `/usr/bin/dosbox-x`, normal
core, fixed50000 cycles, SDL dummy video/audio and the retained owned config.
Only `runtime/walkthrough-20261015-character/run1/game` was mounted. BIOS Enter
was injected after resident menu initialization at0e00:133e. No instruction or
original game file was patched. This is numeric execution evidence, not desktop
acceptance or representative timing/poll cadence.

The first idle gate at runtime35a6:1e57 (original167c:1e57 / physical3ea57)
retains RNG **ad02a081** and body2/phase0. The resident RNG function0824:1779
stops before updating shared DS94c4. Its first captured return atSS0f5c is
**35a6:1e61**. At the next resident RNG entry the corresponding saved return is
**3bef:1e61**, while the main creation return0d6a:05a1 remains atSS0f74.
These are raw little-endian stack words, not decompiler interpretations.

The second RNG-entry DS contains RNG **8ccc88b6**. Exactly one original LCG
update `(ad02a081 *015a4e35 +1) &ffffffff` produces this value. Thus between
these two gate entries exactly the first gate consumed a draw; no extra shared
RNG draw occurred in this bounded interval. Full party records, traits, body2 and
phase0 remain equal. The caller's saved animation stamp atSS0f66 remainsbce8;
DS:e74a isbce8 first,bcf2 second (10 counter units). No input was injected between
the stops. This does not establish all transitive callback paths or the long-run
native idle schedule.

**Resolved prior frontier:** the creation overlay really relocates during this
observed first loop:35a6 becomes3bef. Therefore persistent35a6 reroll/idle
breakpoints are invalid after this boundary. This is now runtime-observed,
superseding the earlier explanation's hypothesis status only to this extent.
The callback pointerDS964c stays0e00:08f6 at both captured DS boundaries.

## Rust differential

`character_creation::tests::original_dos_consecutive_idle_gate_survives_overlay_relocation`
reads the new retained DS and stack fixtures, verifies both return identities and
the changed segment, replays one explicit idle operation below150 units, and
compares RNG, all party records, all traits, raw body/face phase and saved stamp.
The comparison/stamp counter is supplied as the observed next-entry value: since
both observations are below150, this does not claim the exact intermediate
instruction counter read. Presentation-only drawn pose/face pixels were not
captured and are not compared. Six character_creation tests pass offline after the second experiment below.

No normal UI seed, automatic polling/callback timing, finalized party IO, or
success-to-film progression is enabled from this narrow observation. The already
accepted native behavior is preserved. Character F10 titles now say source sheets
to match the independently improved resource inspector.

## Raw evidence and limits

`dos-run1/` retains the original full terminal transcript, config, two65535-byte
DS dumps, initial4096-byte stack, resident RNG stack slices and four-byte RNG
capture; `manifest.json` records byte lengths and SHA256. Source instructions
remain in the earlier integration character setup-and-poll.asm, unchanged.

The first exploratory run later deleted breakpoint index0 after installing
several breakpoints; index ordering was not recorded. Its subsequent continuous
RUNWATCH activity is **not** callback/reroll evidence. Runs2/3 are excluded
exploratory control attempts. Avoid deriving game behavior from their failure to
reach a desired breakpoint. Their logs/configs are retained under disposable
runtime paths. No protected paths or prior evidence were changed.

Next capture should enumerate BPLIST before deletion, retain resident RNG1779,
and use its current return segment before adding creation input/reroll stops.
Capture current stub1ea0:0057 and stacks around callback08f6; validate a complete
reroll and named/blank reentry, then fourth-slot write/re-read. Shared startup seed
selection and a justified native polling boundary remain open.


## Follow-up run4: callback relocation and actual Enter reroll

The fresh run4 used the same controlled config and explicit menu BIOS Enter.
All breakpoints were cleared with `BPDEL *` before installing the next bounded
stop, avoiding index ambiguity. Default callback entry0e00:08f6 was directly
observed and captured before its first instruction. Its saved return atSS0f5c is
**35a6:1fe1**, matching the original indirect call atphysical3ebdc.

The entry trampoline at1ea0:0057 begins `ea a2 1a a6 35` (jump35a6:1aa2).
After the callback, the very next resident RNG entry has saved return
**3bef:1e61** and the trampoline begins `ea a2 1a ef 3b` (jump3bef:1aa2).
The original overlay manager therefore changed both the active return segment
and trampoline across this actual callback interval. Callback-entry RNG and
post-callback/next-gate RNG both equal **85836d8e**: no shared RNG update occurred
through this observed callback invocation. DS964c remained0e00:08f6.

At that next resident RNG stop, BIOS Enter was injected (same explicitly recorded
buffer writes as menu). With the newly resolved overlay segment, generator entry
**3bef:0437** was reached. Its saved return is **3bef:225a**, originalphysical
**3ee5a**, proving the actual Enter/reroll callsite rather than first-slot setup.
Generator-entry RNG **c182f267** differs from85836d8e by exactly the one pending
idle gate draw. Before display3bef:0f4e, RNG is **1290ab52**. Rust's `Reroll`
produces exactly this state, the complete four-character party and all working
traits; raw body2/phase0 are retained. Original26 numeric draws plus initializer
are now validated on actual reroll after the default callback and relocation.

`original_dos_enter_reroll_matches_after_default_callback` is the second new
regression differential. It verifies the saved return and all the states above.
The after dump is at display entry, preceding processed-input counter restamping;
the test deliberately does not equate that earlier saved stamp with the semantic
API's post-action stamp. This does not validate timed body/face update branches,
named/blank slot reentry, race/prior-sex lifecycle, held-button release, startup
seed choice or final write/re-read. Normal creation remains gated.

`dos-run4/` retains new DS/stack/trampoline snapshots, config, complete terminal
transcript and hash manifest. All four interactive probe sessions are closed;
run2/3 remain excluded exploratory control attempts. No source edits beyond the
two differential tests and F10 title labels were made by this investigation.

Next step: reuse `BPDEL *` then one purpose-specific breakpoint and capture
resident RNG return stacks, resolving overlay segments after each callback. For
automatic character animation, compare a deliberately elapsed>=150 no-input
iteration against body/face source changes and assess poll cadence independently
from rendering; do not replace the missing schedule with frame-rate RNG burns.
Then capture named/blank reentry and fourth-slot original write/re-read.
