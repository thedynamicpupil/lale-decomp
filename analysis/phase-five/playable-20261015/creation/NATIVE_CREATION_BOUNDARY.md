# Operational native creation with explicit compatibility boundaries

Original formulas, trait initialization, identity/input ordering, signed minima,
nonempty-name checks and four-slot preparation are reused unchanged. Fresh zero
numeric/trait rows match the previously controlled original first-entry snapshot.
New CreationSession::fresh accepts a caller-owned RNG state; ordinary New Game
now invokes it using the recovered calendar seed conversion at native entry.
See ../seed/NATIVE_CALENDAR_SEED.md for source evidence and differences from a
DOS startup/menu RNG history. No arbitrary fixed seed/error fallback is used.

Body updates call the original helper with its150-unit wrapping counter threshold.
Name editing pauses body updates; processed naming/input restamps the counter.
The native presentation clock uses the previously accepted conditional no-audio
PIT model. No per-frame random gate burn is invented; automatic random-face
triggering and exact original CPU polling/reentry cadence remain incomplete.
Original arithmetic/rerolls still share one explicit RNG. Snapshot/F8 diagnostics
retain the prior frozen behavior and do not silently become timed sessions.

Fourth nonempty-name advancement produces the known original preparation:
0a→38,0c→3a, exact37-byte auxiliary literal, four text-pairs and four92-byte
numeric blocks,664 bytes. This follows existing original instruction evidence
and pure reader fixtures. **No new controlled original fourth-slot writer/re-read
runtime comparison completed in this increment.** The attempted elapsed-animation
probe retains before snapshots under disposable runtime; without a complete
trace it is not promoted to a runtime differential.

Native persistence is a new owned party-checkpoint policy: validate all four
identities/names/preparation, run the original-reader workspace roundtrip, create
a new unique file under runtime/native/parties with O_EXCL, sync and reread it.
Existing originals, runtime/lale saves and earlier native checkpoints are not
replaced. These664-byte files are creation parties, not full game saves. A loader
validates the same boundary before opening the starting view. Tests exercise
ordinary screen naming/rerolls/body changes/four-slot preparation, two distinct
filesystem writes with prior bytes unchanged, rejection of an empty fourth name,
and reread. No original world-state flags/inventory/encounter state are fabricated.

The application now connects successful native preparation/checkpoint→existing
SEQ1–5 playback→source-composed starting view. Default cinematic remains silent;
opt-in debug PCM is preserved. F9/F10 inspection behavior remains separate.
This is real visible native progress, not a claim that original creation timing,
random faces, general save/load or interactive Otopark are finished.
