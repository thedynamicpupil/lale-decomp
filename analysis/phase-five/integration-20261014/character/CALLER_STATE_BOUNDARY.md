# Explicit character caller state and RNG boundary

New bounded continuation of167c:0437's recovered formulas. This models original
caller order; it does not reconnect fresh numeric UI or finalize a party.
Original physical listings and exact source bytes/near-call targets are retained
in this directory. Logical167c code base is physical3cc00; no synthetic wrapper
is executed. Parent owns/closed its separate REA reader investigation.

`character_creation.rs` takes explicit Party, per-slot traits, selected slot,
animation phase/pose/face and counter snapshot. The shared LaleRng is passed into
each operation; the module owns no host clock, seed, independent visual RNG or
native polling schedule. File-backed zeroes are not asserted to be a complete
runtime entry snapshot. Unsupported table/index domains are safe host errors.

Verified source-order operations:

- Setup lower-bounds identity words using signed comparisons, calls0000 (one
  trait-choice draw), loads appearance011f (forces sex, resets body/face image
  but preserves phase, then calls035d). Empty name calls0437 (another trait
  choice plus26 draws); named slot displays retained numbers instead. Setup
  calls035d again atphysical3e893. These are two distinct animation steps.
- Race change generates using the previous sex, then assigns suggested appearance
  and runs appearance/sex effects. Sex change first changes sex then generates.
- Appearance changes never call0437, but their animation helper can consume a
  phase-dependent face draw. Reroll invokes initializer plus26 numeric draws.
- Next/previous reenter slot setup. Nonempty current name gates advancement;
  fourth-next emits FinalizationRequired only. This is an intentional headless
  boundary, not the original writer/exit side effects. Cancellation likewise
  emits an outcome rather than performing native fades or cleanup.

One explicit idle_poll consumes scaled(1000) even when phase is active, before
its unsigned wrapping150-unit comparison. A due update uses a separately supplied
stamp read; helper phase1 consumes scaled(3), phase2 restores face0, and only the
idle caller reduces nonzero phase modulo3. Direct appearance/setup calls do not
silently perform that caller's modulo step.

Additional input-loop boundaries: no-input branch physical3ec34 returns3ea57
without replacing the timer stamp; processed input returns through3ea4b with a
new counter read. The held-mouse-button release loop3ec3d..3ec58 polls without
returning to the RNG gate. An indirect DS964c callback at3ebdc occurs before BIOS
and mouse polling. Its effects and native CPU/input scheduling are not fabricated.
Name-editor blocking and complete application-entry lifecycle remain integration
work. A semantic dispatch API is not a claim that every host event is one DOS poll.

Validation:32 action×phase fixtures check whole numeric records, traits, event
physical PCs, RNG state and animation against source-ordered call plans plus the
independent original numeric register/stack interpreter.14 near-call targets are
checked against original bytes. Additional tests cover timer rollover, two counter
reads, phase persistence, navigation boundaries and supplied GRP named-slot state
retention with its entry trait draw. This is static transcription validation, not
observed original DOS execution or new desktop acceptance.

Reproduce `python caller_fixtures.py` from project root (new outputs only; the
prior numeric oracle is loaded without running its writer), then Cargo tests.

Remaining: obtain/control original entry snapshots and shared callback/poll
behavior; compare repeatable original traces; decide a documented native scheduling
boundary without arbitrary RNG burns. Only then connect numeric generation and
full record state to existing character UI. No final creation or save writes enabled.

## Additional callback narrowing

A bounded direct-byte search found pointer stores atphysical4bf25/4bf2c and
4c17e/4c185. The first installs relocation descriptor0138:007a, resolved through
retained descriptor39/export007a to original1694:1935 /physical4b585. The second
restores descriptor0010:00cd, mapping to resident05dc:00cd /physical828d, whose
five bytes are a no-op far function. Exact bytes, mappings and focused listings
are in callback-candidate-source.json and adjacent callback listings.

The active candidate reads a supplied configuration pointer, gates on150 wrapping
counter units (DSbbc4), and draws a portrait-region update. At4b6cb it consumes
scaled(2); when that returns0, another scaled(2) at4b6e9 selects an alternate
cell. Thus this possible callback can add shared RNG consumption independently
of the creation face-phase machine. Install helper4bf03 is near-called at4c15d;
its surrounding conditional eventually restores the no-op and frees its context.

This does not prove that the active candidate is installed during initial creation.
The file-backed DS964c pointer is zero, so a complete runtime entry snapshot and
startup/default initialization still need tracing. The known target candidates
narrow the frontier; the headless model does not silently omit an assumed-noop
or execute a guessed active callback. Native UI hookup remains gated.
