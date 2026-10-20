# Priorities continuation checkpoint — 2026-10-14

Authority: `prioritiesandfurtherinstructions.txt`. Phase Four remains incomplete;
this is a narrow native prototype milestone, not a playable reconstruction.
The user reports all seven preceding menu desktop checks passed. New behavior
below has not yet received a new visible KDE acceptance test.

## Implemented

- Automatic background fade, upper-logo and episode-title lookup blends, menu
  interaction, and separate menu-to-character/return palette fades.
- Recovered PIT counter model, source duration constants, thirteen presentation
  intervals per blend, and original low-word transition wrap behavior.
- Original face, masked body, KOR crop/anchor/mirror, race/sex symbol layers and
  four-pose cycling. Appearance 13 remains unsupported because strict CMP decoding
  fails; no substitute sprite or guessed truncation is used.
- Four character drafts, measured name editing and original casing, appearance,
  race and sex controls, recovered click rectangles, and previous/next behavior.
- Original party parsing and optional numeric reference rendering. Fresh numeric
  generation stays explicitly unavailable; final creation/gameplay cannot proceed.

Run instructions and controls: [native milestone guide](../rust-port/NATIVE_CHARACTER_MILESTONE.md).

## Comparison and evidence

New previews are in `phase-five/priorities-native-20261014/fresh-frames/` and
`party-reference-frames/`. Inspection shows original background labels, face/body,
symbols and embedded font aligned in the character panel. The fresh view leaves
numeric cells and name blank; the reference view renders GRP.DAT's genuine name
and colored numeric values. These are resource/code comparisons, not a claim
that an unknown original RNG seed or exact captured wall-clock timing matches.
The preceding menu's seven accepted desktop checks remain the visual baseline.

The recovered schedule reaches the interactive menu at 7440 logical counter
units in the 10-unit sampled timeline. Two initial 1000-unit waits are distinct.
Each source/eleven intermediates/destination blend occupies thirteen 90-unit
intervals. Native host pacing does not emulate VGA retrace or original CPU work;
clock calibration assumes the recovered no-audio PIT configuration. Audio timer
retuning can affect original timing. Startup preparation is outside native timing.

Source audit: `phase-four/continuation/priority-timing-20261014/`,
`phase-four/continuation/character-spec-20261014/`,
`phase-five/priority-appearance-20261014/`, and the new resident REA export in
`phase-five/priorities-native-20261014/`. Original filename meanings remain
hypotheses unless supported by loader references and decoded structures.

## Validation and preservation

All 21 Rust tests pass offline; build and formatting checks pass. The SDL dummy
driver completed a 900-frame automatic startup run with VGA aspect correction
and a three-frame original-party character run. Logs are in the new continuation
directory. Existing strict decoder behavior is retained, including all eleven
known CMP discrepancies. No packages or dependencies were installed.

The final hash audit checks 379 pre-existing files: only README and the three
intentionally extended runtime files changed. All 30 frozen reports/artifacts and
all 25 original distribution files match their baselines; reference media and
prior analysis are unchanged. See `preservation-final.json`. New evidence and
source modules were added separately. The REA session is closed; original Ghidra
project files and DOSBox configuration were not changed.

## Remaining boundaries

Full stat generation formulas, RNG call order/seed, unresolved manual keypad
mappings, random face blinking, appearance 13 decoding, final confirmation,
saving, gameplay, audio playback and Windows validation remain pending. Exact
VGA/capture timing and user-visible desktop validation of this new build remain
open. Continue with evidence-backed characterization rather than guessed stats.
