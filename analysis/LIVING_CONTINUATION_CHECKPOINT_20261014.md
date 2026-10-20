# Living continuation checkpoint — 2026-10-14

Authority: UpdateablePrompt.txt, now the living instruction source to reread at
future continuations. This session establishes the living documentation and a
bounded generator increment. It does not attempt the whole first-playable path.

## Reconciled baseline

The latest user instructions report all eight native desktop acceptance checks
passed. This supersedes pending desktop acceptance in the historical priorities
checkpoint; the old checkpoint remains unchanged. The existing automatic menu,
transitions, sprites/symbols, controls, names, four drafts and aspect handling are
accepted, and were not rebuilt as new milestones.

Living documents are `docs/PROJECT_STATE.md`, `docs/ROADMAP.md` and
`docs/FIRST_PLAYABLE_PATH.md`; AGENTS.md points to them and the living prompt.
The first-playable ledger distinguishes user recollection from assembly/runtime
confirmation, preserves **Sivri Daş**, and does not invent item IDs or speakers.

## New verified work

- Original generator's final signed minimum pass implemented in character_data.rs:
  words3..16 inclusive, word6 minimum3, others50. Negative signed values are
  handled; all bytes outside the original loop remain unchanged. This stage is
  isolated, not applied to loaded saves or used to fabricate fresh stats.
- Startup seed path traced with REA plus original instructions: DOS date/time,
  library calendar/TZ/DST conversion, low16 seed with zero highword. Hundredths
  are unused. Shared RNG sequence and environment still prevent reproducing an
  arbitrary captured roll. Original date conversion has not been replaced by a
  guessed host seed.
- Face animation recovered: scaled draws, not remainder; RNG gate every idle
  poll before the timer test; separate counter reads and phase behavior. Native
  cadence/shared RNG integration remains unresolved; no arbitrary blink timing
  was connected. This corrects the earlier modulo interpretation while preserving
  its historical report.

Evidence: `phase-five/living-continuation-20261014/`, including original physical
bytes/hashes and resident-time REA export. Synthetic analysis coordinates and
logical overlay identifiers remain distinct from runtime addresses. REA closed.

## Validation

22 Rust tests pass offline, build passes, formatting applied, SDL dummy-driver
character smoke passes. The added signed-boundary/untouched-field test covers the
new arithmetic stage. Face-model checks exhaust the gate's32768 possible returns
and exercise scaling/phase/wrap edges. Automated checks are distinct from the
user's desktop acceptance of the preceding functional build.

Full character generation, finalization, post-creation scenes, inventory and
battle remain incomplete. No original files, historical evidence, media,
emulator configuration or GUI Ghidra project were intentionally changed.

Further trace findings and precise next action are recorded below before handoff.

Original-data search found `sivri daş` (final DOS byte9f) at
physical19f00h and opening text beginning at1df61h with “elli billah kadar
önceydi.” A resident `otopark` literal is at1eb65h. These are source-string findings,
not proof of a specific acquisition event, speaker, item ID or scene dispatch.
The living first-playable ledger records that distinction.

Preservation audit: all545 existing evidence/tool/media/Rust non-target files
checked; only the intentionally extended character_data.rs changed. All30 frozen
outputs and25 original distribution entries match. New living documents and
new evidence are separate. No package/global configuration changes were made.

## Final trace findings and handoff

[Generator/finalization report](phase-five/living-continuation-20261014/character-generation/GENERATION_AND_FINALIZATION.md)
confirms the trait-row initialization and one random choice, followed by26
straight-line stat draws. This per-function27-call count is not the global UI
sequence. Fourth-slot nonempty-name acceptance fades3200, writes, cleans up and
returns success1 with no added confirmation modal. Auxiliary text preparation
still needs recovery before native serialization.

[Opening-path report](phase-five/living-continuation-20261014/opening-path/OPENING_PATH_BOUNDED_FINDINGS.md)
records PC1/UFUK1 and INTRO.GFL/GHD as provisional resource leads, not established
scene dependencies. The remembered dialogue remains unidentified. No item ID,
inventory transfer, dog encounter or combat behavior was invented.

**Next session:** reread UpdateablePrompt.txt, PROJECT_STATE and ROADMAP. Prioritize
M02: transcribe physical3d16a..3d9fe by destination with exact16-bit arithmetic and
ordered draws; audit entry/reroll/animation RNG consumption. Then inspect writer
auxiliary preparation3e465..3e4f5. Independently continue M04 from the main switch
return and DS4d61 xrefs, then validate original1670:1927 area-loader instructions.
Keep native final creation disabled until the necessary state is faithful. A
pure trait initializer is another bounded increment if full formulas need longer.
