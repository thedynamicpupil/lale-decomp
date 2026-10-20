# Exact creation-face state transitions and remaining cadence boundary

Continuation authority: `UpdateablePrompt.txt`. Current baseline includes the user's eight successful native desktop checks, implemented appearance/body-pose controls and four drafts/name editing. The current `character_screen.rs` advances body poses on150 recovered counter units but supplies face0 to the compositor. This investigation adds source evidence, not a repeat of accepted milestones. No Rust, living documents, original binaries, reference media, GUI project or historical evidence was edited. Parent owns REA; no REA call occurred.

## Correction to earlier descriptions

Earlier appearance notes called the expression draw `random %3`. **That is incorrect.** Both expression selection and trigger testing use scaled draws through original long multiply/divide helpers:

```
rand15(): state=state*0x015a4e35+1 (wrapping u32)
          return (state>>16)&0x7fff
scaled(n): floor(n*rand15()/32768)
```

The original expression selector is `scaled(3)`, not `rand15()%3`; its boundaries are0..10922→face0,10923..21845→face1,21846..32767→face2. Prior evidence is retained; this new specification supersedes only its modulo-expression interpretation. No existing implementation is silently altered.

## Original state and addresses

Logical identifiers below refer to original overlay167c; physical offsets are original IST.EXE positions, not synthetic Ghidra wrappers or live observed DOS segments.

- DS:48e8 body-pose remainder and DS:48ea face phase; file-backed initial words both0 (physical0x1dae8..0x1daeb). Appearance loading resets body remainder but does not reset face phase in the traced helper.
- Entry167c:1aa2 /physical0x3e6a2 sets body/face update interval local BP−0xe to150 at0x3e6b2.
- Idle poll loop167c:1e57 /0x3ea57 performs the trigger draw before its timer comparison.
- Animation helper167c:035d /0x3cf5d advances body and conditionally updates face.
- Counter is original DS:e74a, with low16-bit subtraction/comparison in this loop. Prior timer evidence establishes10-unit callbacks; no frame-rate inference is needed.
- RNG relative resident1779 /physical0x3b79 stores state DS:94c4/94c6. Existing seed audit shows startup overrides file seed1; this task does not recover startup seed or complete game-wide RNG call order.

Direct original byte slices, objdump listings and SHA256 are stored alongside this report in `source-evidence.json` and named `.bin/.asm` files. Existing arithmetic audit verifies resident1242 low32-bit multiply and12df signed32-bit quotient. All values in these scaling calls are nonnegative, so truncation equals floor.

## Poll-level algorithm: exact ordering matters

At **every idle poll**, before checking whether150 timer units elapsed:

1. Call rand15 and compute `scaled(1000)`.
2. Only if that value equals0, test whether face phase equals0; if so set phase1.
3. Read low16(counter), subtract previous low16 animation stamp with wrapping16-bit subtraction, compare unsigned against150. If not due, continue input polling without drawing.
4. When due, read low16(counter) **again** and store that as new stamp. The second read may differ if an interrupt occurs; no global catch-up schedule or multi-tick replay is performed.
5. Call animation helper: restore body background, increment pose, draw direction1..4, reduce body remainder modulo4.
6. Apply face phase rules below, then copy relevant screen rectangles and reduce nonzero phase modulo3.

The gate draw happens even when phase is already1 or2. It is **not** conditional RNG consumption on an inactive phase. Its possible triggering rand15 values are0..32 inclusive:33 of32768 returns. Calling this exactly1/1000 per second, per timer tick or per capture frame would be wrong. The original code samples this gate at CPU/input poll cadence, potentially many times between150-unit updates.

Source evidence: gate0x3ea57..0x3ea82; wrapped elapsed/two stamp reads0x3ea88..0x3eaa5; helper invocation0x3eaa8; face rectangle/presentation and modulo0x3eb37..0x3eba9. Input callback/polling follows at0x3ebc8..0x3ec34; no-input path returns to the RNG gate.

## Face phase machine

|Phase entering animation helper|Action|Phase after helper|Visible face copy in caller|Phase after caller|
|---|---|---|---|---|
|0|Keep current face|0|No|0|
|1|Consume another rand15, choose scaled(3), copy selected cell|2|Yes|2|
|2|Copy cell0|3|Yes|0 (`3 %3`)|
|3|No further face change|3|Yes|0 (`3 %3`)|

Physical0x3cfb4 gates nonzero phases;0x3cfbb distinguishes1;0x3cfd8..0x3cff6 performs scaled(3), x=32×choice;0x3d002 sets2. Physical0x3d00a tests phase2;0x3d011..0x3d027 copies cell0;0x3d02f sets3. Caller0x3eba0..0x3eba9 does signed remainder by3, with reachable values2/3 nonnegative.

Phase3 is transient in the normal idle sequence but may survive a helper call made outside that caller; preserve this distinction on appearance/slot transitions. Helper035d is also called during appearance loading atphysical0x3cf2a and screen setup0x3e893. Those direct calls do not by themselves execute the idle caller's modulo3/presentation step. The appearance loader explicitly resets body counter0 then invokes the helper; the subsequent setup call advances it again. This task does not alter the already accepted native body animation.

Every face copy uses32×32 from image slot0x47, y0, x0/32/64 into offscreen slot6 at(68,53), opaquely. Caller copies the face rectangle to display only when phase remains nonzero after helper. Its configured rectangle is(68,53) through(100,85) as extent-difference32×32. Five cells exist in the atlas, but this screen path chooses only0..2.

Selecting face0 is a valid phase1 outcome: the cycle can visibly look unchanged while still consuming RNG and progressing phase1→2→0. Therefore “always close eyes then reopen” is too narrow; this is random facial-expression behavior. On a normal cycle, the chosen expression persists from one150-unit update to the next, then cell0 is restored. An already-active phase cannot retrigger from a successful gate on the restoration poll, because the gate executes before phase returns0.

## Narrow deterministic Rust recommendation

A pure state machine is sufficiently verified **with explicit poll/RNG/counter inputs**:

```
CreationAnimation { pose_remainder:u16, face_phase:u16,
                    visible_face:usize, last_stamp:u16 }
poll_once(&mut self, rng:&mut SharedOriginalRng,
          clock:&mut impl FnMut()->u16) -> DrawActions
```

Consume gate RNG on every represented original idle poll. Read the clock only after gate evaluation; if threshold passes read it again for stamp, advance body, and conditionally consume the expression RNG. Return separate body/face-dirty flags so no unnecessary face redraw is misclassified as original behavior. Reuse current compositor face-cell argument. Seed/call-order ownership belongs to shared game state, not an independently seeded visual RNG.

**Safe now:** implement and test this deterministic kernel without pretending its invocation cadence is recovered. **Not yet justified:** sampling once per native frame, inventing a blink interval, converting33/32768 into a per-second probability, or burning an arbitrary number of RNG calls per150-unit tick. Those choices change visible trigger frequency and advance the RNG differently before later stat generation.

Original poll cadence depends on CPU work, input callback and other subsystem activity. Captured video FPS is insufficient to recover it. Runtime trace or a specified compatibility approach is still required before automatic blinking can claim original seed/call-order fidelity. Face phase persistence during appearance/slot changes and blocking name editing should be preserved or separately tested, not reset ad hoc.

## Reproducible analysis checks

`python face_poll_model.py` exhaustively checks all32768 gate-return values, scaled-expression boundaries, explicit two-call phase1 behavior, phase2 restoration without immediate retrigger, phase0-expression choice, separate counter stamp reads and16-bit rollover. `transcription-test-vectors.json` retains controlled state/RNG traces. This is an analysis transcription fixture, not a newly executed DOS program or a native implementation.

The bounded task is complete: local algorithm/counters/scaling are assembly-backed; automatic native polling cadence and original shared seed/call order remain unresolved. No source changes were made.
