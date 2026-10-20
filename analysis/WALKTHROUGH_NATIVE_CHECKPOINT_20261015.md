# Walkthrough index, creation relocation and native source sheets — 2026-10-15

Continues [CHARACTER_UI_CHECKPOINT_20261015.md](CHARACTER_UI_CHECKPOINT_20261015.md).
Read UpdateablePrompt.txt and the three living documents first. This is a bounded
increment toward completed creation and the first playable path, not completion
of the full requested milestone. Historical checkpoints/evidence are unchanged.

## User acceptance retained

The eight native menu/character visual/input checks and silent/F9 all-five-SEQ
playback remain accepted. The user additionally confirms debug SEQ audio is
audible on Fedora. This accepts audibility, not original gain, synchronization,
ring-buffer behavior or fades. Diagnostic generated stats/rerolls still use
explicit imported original state; automatic character animation is not enabled.

## Native visible increment

F10 in the existing app, or:

```sh
rust-port/target/debug/lale-otopark-background --root .
```

now browses nine original **PC1 loader-linked source sheets**, with PAL3D:
UFUK1, DUVAR2, DUVAR3, MERDUST, KAPI2, KAPI3, MERDALT, YER2, TAV2A.
Left/Right selects, WASD pans at1:1, Home resets, Escape returns. Title identifies
exact member, archive payload offset, dimensions and PC1 selector/field/slot.
The initial UFUK1 page matches the previous preview byte-for-byte. Source indices
are shown opaquely; original projection/transparency is not simulated.

This is **DEBUG SOURCE INSPECTION**, not a composed room, movement, collision,
event execution, inventory transfer or combat. It makes the original walls,
doors/stairs/surfaces immediately testable while preserving accepted UI/films.
[Controls and limits](../rust-port/NATIVE_OTOPARK_RESOURCE.md).

Actual focused REA/Ghidra and direct original instruction analysis now confirms
resident keyed rectangular copy and horizontal reflection. PC1 metadata selectors
0,2,3,9 are traced through13-byte original literal tables to wall/door/stair
slots24+i/28+i. Prior initial field9/8 mapping links floor/ceiling slots37/57.
Sidecar allocation is29ah=37×18-byte projection records, with DS:b72a fallback.
Generated geometry, original transparent-key parameter, scaled stepping and full
five-layer composition remain unresolved. Do not copy source-sheet fragments into
an invented dungeon projection. [Evidence/REA IDs](phase-five/walkthrough-20261015/otopark/SOURCE_SHEETS_AND_BLITS.md).

## Creation lifecycle: two new controlled DOS differentials

Stable resident RNG1779 stops now prove the previously suspected overlay
relocation: consecutive saved creation returns are **35a6:1e61→3bef:1e61**.
Between those entries, shared RNG **ad02a081→8ccc88b6** advances exactly one
original LCG draw. Complete party/traits and raw body2/phase0 remain unchanged;
saved animation stamp remainsbce8 while observed counter advancesbce8→bcf2.
Both are below the150-unit animation threshold and no input was injected between.
The default callback pointer remains0e00:08f6 at the two captured boundaries.

The first new Rust differential reads retained raw DS/stack fixtures, verifies return
addresses and the one-draw/unchanged-state result. This validates a bounded
no-input gate, not the callback call graph or a native host poll rate. It resolves
why fixed35a6 breakpoints can miss subsequent creation handlers.
[Runtime report and fixture manifest](phase-five/walkthrough-20261015/character/CREATION_LIFECYCLE_RELOCATION.md).

A second controlled run directly catches default callback0e00:08f6 with saved
return35a6:1fe1. Across it, both the creation trampoline1ea0:0057 and RNG-return
stack change35a6→3bef; shared RNG remains85836d8e. BIOS Enter at the next gate
then reaches actual reroll generator3bef:0437 with return3bef:225a/physical3ee5a.
Generator-entry RNGc182f267→1290ab52, complete party, traits and raw body/phase
match Rust. A second differential test retains this independent actual reroll
comparison. The observed callback consumes no shared draws in this interval;
this is not proof of every possible callback invocation or poll cadence.

Ordinary creation remains gated: no fabricated seed, automatic idle RNG burn,
final party write or success→film→world transition was added. Named/blank reentry,
timed animation, held-button input and fourth-slot write/re-read still need
controlled original comparison. Existing formulas and first-slot setup need no
rediscovery. Normal animations remain a priority, not silently marked complete.

## Reusable firsthand video reference

All five new original recordings are hashed and indexed. Authoritative
[source-PTS index](phase-five/walkthrough-20261015/visual-index/INDEX.md) contains
125 coarse frames on eight contact sheets and20 full-resolution targeted frames.
First two recordings are sampled every10s, later recordings every20s. Exact
recording PTS and filenames are retained in JSON and sampling logs. A cache-reuse
check confirms155 existing images are reused with unchanged mtimes.

`tools/extractors/index_walkthroughs.py` reads sources only; reusing its output
adds only requested targeted frames and rejects changed-source caches. See
[reuse commands](phase-five/walkthrough-20261015/README.md). Initial exploratory
`video-index/` is explicitly superseded because nominal fps sampling labels
could differ from actual selected PTS by half an interval; do not use it as the
coarse timestamp authority. The corrected `visual-index/` retains source PTS.

Visual anchors: video1 enclosed room15s, opening line20s, door choice85s,
Sivri Daş panel95–114s, closed panel117s, dog120–125s, battle140s, room return330s.
Video2 stairs0/140s with exit confirmation, changed upper floor/ceiling145s,
arch286s and open sky300s. This supports multi-storey presentation, not an
inferred navigation graph. Source item2 remains separately proved by original
PCS1 opcode9 and indexed name lookup; the visible `(1)` suffix is not its ID.
A closed panel does not prove inventory ownership.

All five recordings have future-scene references without advancing later gameplay
scope. Manual pages12/13 were directly reviewed for item/portrait/input behavior;
this does not establish the acquisition handler's actual owner writes. Video3
illustrated text matches the separate resident prose endingönceydi as a candidate
consumer association; opening SEQ title pixels still endSonra. See the
[observation/assembly/manual/Rust cross-reference](phase-five/walkthrough-20261015/VISUAL_REFERENCE_FINDINGS.md).

## Validation and playable boundary

56 test executions/51 distinct tests pass offline, formatting and workspace build
pass without warnings. New tests cover actual DOS idle/relocation and Enter-reroll boundaries
and every displayed source-sheet index at both pan extremes with original palette,
resource identity and UFUK regression. SDL dummy smoke passes for three source
presentations and both normal/diagnostic character views. Automated/source checks
are distinct from desktop acceptance. Existing silent-film/all-stream tests pass;
original sound fidelity and Windows remain unvalidated.

Native usable now: accepted menu/character visuals, explicit-state stat/reroll/
four-slot in-memory preparation diagnostic, all-five-SEQ silent preview plus
user-audible opt-in debug PCM, and source-sheet browsing. Missing: normal completed
creation, persistence/scene progression, actual room compositor/navigation/events,
Sivri Daş ownership, dog encounter execution and combat. Full playable milestone
and Phase Four remain incomplete.

Logs: [native checks](phase-five/walkthrough-20261015/native-checks/).
Living PROJECT_STATE/ROADMAP/FIRST_PLAYABLE_PATH updated. Original distribution,
reference recordings, emulator/config and all pre-existing analysis artifacts
must match [baseline/final audit](phase-five/walkthrough-20261015/preservation-final.json).
Only intended native source/guides and living docs changed; no package/global
configuration changes. Owned REA sessions close after analysis. Disposable DOS
runs use only their owned game directory; main runtime saves are not reset.

## Next bounded increment

1. M02/M03 first: retain resident RNG1779/current-return and enumerate breakpoints
   before changing them; use BPDEL * for a clean controlled stop. Re-resolve
   loaded creation CS after each callback. Validate elapsed>=150 animation and named/blank reentry,
   prior-sex/race ordering and fourth-slot write/re-read. Then choose an evidenced
   native scheduling/seed/persistence boundary. No arbitrary per-render RNG burns.
2. For Otopark, capture the generated37×18-byte projection tables after world
   setup and verify scaled/keyed draw inputs. Compare a real composed starting
   room against video1 target15s before adding navigation. UFUK alone is no room.
3. Trace acquisition46591 accept/cancel/owner mutation, then inspect only the
   indexed90–117s window for matching input behavior. Keep original selector5/
   flag249/event conditions; do not script a fake initial pickup.
4. Preserve accepted silent playback and audible debug PCM while recovering
   gain/ring/refill/synchronization/fades. Later fight/travel videos are indexed
   for future milestones and should not delay the first playable path.
