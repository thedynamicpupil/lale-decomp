# Original DOS creation differential and graphical boundary — 2026-10-15

## DOS-RUNTIME-OBSERVED

Fresh disposable copies under runtime/character-ui-20261015 were used. Only the
copy's game directory was mounted. Original files and runtime instruction logic were not manually patched; debugger
breakpoints and explicitly recorded BIOS-buffer/ADDKEY test input were used.
Neither normal runtime saves nor protected GUI Ghidra/emulator/config/media were
changed. DOSBox-X controlled configs use normal core, SDL dummy video/audio,
SB16 port220/IRQ5/DMA1/HDMA5, no MIDI. Runs6/7 use50000 cycles. This is a controlled
numeric trace, not a desktop or representative CPU/poll-cadence measurement.

Canonical source identity: IST.EXE SHA256
9ba1640ae2ee33579cb1c914d0686346f53c4c7ef6520c7d92262b9c2f06b05e.
Load baseL0824, PSP0814, gameDS1f04. Main creation call at runtime0d6a:059c
is original physical7dfc. Main/stub/entry snapshots corroborate the actual path.
Resident export1ea0:0057 is loaded/patched by the original overlay manager; its
loader observes target35a6:1aa2, corresponding to original167c:1aa2 /physical3e6a2.
Those runtime segments are observations for these runs, not universal addresses.

### Run6: complete first-slot setup

- Before physical3e753 (runtime35a6:1b53): selected1, numeric/trait rows zero,
  body remainder0, face phase0; RNGd1f0aee5; live callback0e00:08f6.
- After setup, before processed-input counter stamp at physical3ea4b
  (runtime35a6:1e4b): RNGecd597d9, body remainder2, phase0.
- Exactly28 original RNG updates connect those states. Rust dispatch SetupSlot
  matches **the complete four-character Party, all live traits, RNG, body
  remainder and phase** from the observed after dump. Original displayed values
  include Boy179/Kilo72. No missing stack stamp or previous drawn pixels are
  claimed observed merely from DS.

### Run7: independent generator boundary

First setup begins with a different actual RNG301d0a20. Its initial trait draw
produces7e58d8a1 before original167c:0437 /physical3d037 (runtime35a6:0437).
Before display167c:0f4e, RNG56b4b584 and full numeric record/traits match Rust's
initializer+26 numeric draws. This is an actual DOS27-draw differential, in
addition to the earlier32 instruction-derived fixtures.

The captured first idle boundary (physical3ea57, runtime35a6:1e57) retains
RNG56b4b584, body2/phase0 and the relocated default callback. Thus the setup's
remaining presentation work did not consume additional RNG in this observation.
This does not establish every callback/idle/reentry path.

Raw dumps, configs and full terminal transcripts are under dos-run6/ and dos-run7/;
runtime-snapshot-summary.json records hashes and decoded raw fields. Source
instructions remain the previously preserved caller/generator evidence, unchanged.

## RUST-IMPLEMENTED GRAPHICAL DIAGNOSTIC

character_runtime_snapshot.rs parses an explicitly staged DS dump and preserves
numeric/name/auxiliary rows, text gaps, trait tails, RNG and raw animation words.
It does not fabricate missing stack stamp/drawn-pose/face-cell fields. At the
verified zero-phase first setup, setup overwrites those presentation placeholders
and the action restamps its counter. The runtime differential verifies this
specific setup boundary, not arbitrary imported states.

creation_session.rs imports the observed pre-setup state, invokes the existing
verified caller and synchronizes the real character screen. Stats, rerolls,
source-ordered race/sex/appearance handlers, names, four slots and in-memory
preparation now work in optional --creation-snapshot mode. F8 advances one explicit
150-unit poll. No render-frame or host-time RNG burns are introduced; automatic
body/face updates and callbacks are suspended in this diagnostic. Fourth-next
prepares664 bytes in memory and changes the window title; no file or gameplay
success is produced. Default ordinary creation retains its previous gate.

This is usable graphical integration with explicit research controls, not faithful
new-game scheduling. It imports an actual RNG state rather than inventing an
automatic seed. Repeated launches deliberately start at that same state.

## Limits / next experiment

Runs1–5 explored console/debugger control; they are not creation-validation
fixtures. Their owned runtime logs remain preserved. Run4 reached the menu and
showed early Enter injection can be consumed by the selector's initial buffer
clear. Successful runs6/7 break at resident0e00:133e (physical94fe) after rendering
and clearing, then inject BIOS Enter. This reaches the main creation call.

The post-setup reroll attempt in run7 did not yield the requested handler
snapshot. After indirect callbacks, other overlay activity and long-arithmetic
helpers were visible, while assumed fixed creation-segment breakpoints did not
provide the planned stop. This is an unresolved control/overlay-lifetime frontier,
not proof that reroll input failed or that callback RNG effects are absent.
A relocation/lifetime explanation is a hypothesis requiring stub/stack evidence.
Do not present this attempt as validated original reroll or finalization.

Next: use stable resident RNG1779/return or DS94c4 watchpoints, capture caller
stack and current loaded stub before/after the default callback, and re-resolve
creation addresses rather than assuming35a6 forever. Trace blank/named reentry,
reroll, race/prior-sex, no-input/restamp, mouse release and fourth-slot writer/
downstream reader. Only then select a justified native scheduling/seed boundary
and enable ordinary completion/IO. The initial setup and isolated numeric
transcription do not need rediscovery.

All interactive trace sessions were closed. No source/game code patch, system
package/configuration change or claim of complete Phase Four occurred.
