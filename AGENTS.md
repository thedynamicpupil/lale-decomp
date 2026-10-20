# İstanbul Efsaneleri: Lale Savaşçıları

Read `promptlale_rust.txt` for the current full instructions and stage order.
It supersedes `promptlale.txt`; retain the latter as historical instructions.
This is faithful DOS game preservation and reverse engineering, not a remake.

- Never modify, rename, delete, patch, or reorganize original game files in
  `lale/` or the original root distribution files.
- `DOSBox/` and `dosbox.conf` are protected; inspect only.
- The existing `lale/IstanbulEfsaneleriDOS.gpr`, `.rep/`, `.lock`, and `.lock~`
  are protected. Never bypass locks or modify this GUI project. REA uses a
  separate owned workspace; GUI annotations are not automatically shared.
- Never run unknown DOS/Windows binaries directly on Linux. Use emulation on
  runtime copies. Never access other partitions or the Windows installation.
- Keep new work outside protected directories: `analysis/`, `tools/extractors/`,
  `extracted/`, `reconstruction/`, `tests/`, and `runtime/`.
- Preserve original bytes, hashes, offsets, segment:offset addresses, palette
  indices, and timing. Separate observations, inferences, hypotheses, and limits.
- Investigate the entire original `lale/` distribution. Extensions are hints,
  not proof of format. Validate critical decompilation against instructions.
- Use REA + existing Ghidra; do not install packages or change global settings
  without approval. Do not build a new engine before original systems are known.
- Stage order: launcher, observed launch validation, REA/Ghidra verification,
  distribution inventory, executable/resource loading, decoders, feasibility.
- Read `analysis/INITIAL_REPORT.md` for the current checkpoint. Preserve runtime
  saves; the launcher seeds missing files only and mounts only `runtime/lale`.

## Updated decisions and preservation boundary

- The fixed implementation target is a native Rust/Cargo port, Linux first and
  Windows later. Keep deterministic game logic and asset parsing independent of
  the platform backend. Recovered C-like pseudocode is analysis, not source.
- Incremental Rust modules are allowed for sufficiently understood, testable
  subsystems. Do not implement guessed mechanics or substitute invented assets.
  New implementation belongs exclusively under `rust-port/`.
- All existing Phase Three reports, evidence, manifests and tools are unreviewed
  provisional results and frozen pending user approval. Do not regenerate,
  normalize, certify or overwrite them. New observations belong in new files.
- `analysis/phase-four/prior-output-preservation.json` records their current
  byte hashes. Use new Phase Four checkpoints rather than editing old reports.
- REA verification was accepted by the user; do not repeat setup. Use actual
  analysis calls and a separate agent-owned Ghidra session.
- Use IKON/icons, MUZIK/music, SOUNDS/sound effects and SAVAS/combat as semantic
  hypotheses to prioritize tracing. Verify with structure, executable references
  and decoded output; filenames alone do not establish resource semantics.

## Current continuation instructions

Read `beforephase5.txt` as the latest task-specific guidance. It authorizes safe
autonomous analysis and narrow, evidence-backed decoder/test extensions without
per-step approval pauses. Protected files, destructive operations and system-level
changes still need approval. Preserve all Phase Three files and earlier evidence.
Track Phase Four and Five separately; do not mark Phase Four complete yet.
The user reports the first two PNG previews visually correct. This is not a
DOSBox runtime comparison. Continue main/overlay assembly analysis, resource-to-code
mapping and modular Rust asset support; do not start a full playable engine.

Read `duringphase4and5.txt` for the newest continuation priorities: trace the
menu-to-character-creation interaction, cross-check the original manual, identify
screen resources, investigate CMP discrepancies and assess existing AMF playback.
It supersedes earlier task-specific priorities while retaining preservation rules.

`newfindings_phase5continiues.txt` is the latest continuation authority. Use the
read-only `reference media/` recording and annotation, preserve prior evidence,
and prioritize verified menu layers/interactions. A narrow native visual Rust
prototype is now authorized when supported by evidence; full gameplay is not.

`prioritiesandfurtherinstructions.txt` is now the latest continuation authority.
The user passed all seven desktop checks for the preceding native menu build.
Continue automatic source-timed presentation and original character layers/input;
keep fresh numeric generation explicitly incomplete until formulas are verified.
See `analysis/PRIORITIES_NATIVE_CHECKPOINT_20261014.md` for this milestone and gaps.

## Living workflow authority

Read `UpdateablePrompt.txt` for the latest user instructions at each continuation;
the user will update that file. Older prompt files are historical context where
superseded. Start with `docs/PROJECT_STATE.md` and `docs/ROADMAP.md`; maintain these
and `docs/FIRST_PLAYABLE_PATH.md` after bounded milestones. All eight latest native
prototype desktop checks are now user-passed. The scope now includes incremental
faithful development toward a complete native port, with evidence-backed party
completion first, then the opening cutscene/Otopark path. Do not guess mechanics
or overwrite historical checkpoints; all preservation boundaries remain active.
