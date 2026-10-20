# M02 bounded deterministic generator — 2026-10-14, 15:09 findings

Authority: UpdateablePrompt.txt active15:09 section. The existing native milestone remains user-verified. This increment recovers and implements original numeric generation without connecting fresh UI, inventing a seed or enabling finalization. Original binaries, previous checkpoints, reference media and shared REA session remain unchanged by this subtask.

## Address and evidence boundary

Original overlay logical167c:0437 = physical IST.EXE0x3d037; code base0x3cc00. Analysis uses the original slice and GNU objdump at known function boundaries, never executes DOS code on Linux and does not treat a synthetic load segment as runtime. `original-source-evidence.json` contains original file SHA256, exact bytes and hashes for generator, trait initializer and caller branches. Four new `.asm` listings preserve those observations. Every one of26 full27-byte RNG/multiply/divide macros was cross-checked byte-for-byte against original IST.

Recovered numeric part extends through final minimum pass (0x3db46), before display call at0x3db49. The original0437 prologue calls initializer0000; the Rust numeric API deliberately requires already initialized caller-owned traits, and excludes text copies, display, cadence and implicit initialization.

## Exact formulas

`vXX` is u16 numeric record word at hexadecimal byte offsetXX; `sex` is raw offset04. `t1..t15` are the working trait words indexed from DS:9b72+36×slot. `d0..d25` are ordered **scaled** draws, each floor(range×rand15/32768). Ranges:

`25,25,5,5,150,150,50,50,100,100,6,70,80,100,200,200,150,150,150,150,151,201,201,251,151,6`.

**Every +,−,× node in the following parenthesized expressions wraps to16 bits immediately.** `/s` sign-extends its already wrapped16-bit numerator and divides by the positive constant, truncating toward zero. The result is again stored as a16-bit word. This applies particularly to sums such as `(v24+v26)` before division; computing in wide host integers until the final store is incorrect. Dependencies use intermediate **unclamped** values; the minimum pass runs only after all17 stores.

|Record offset hex|Original store physical|Expression|
|---|---|---|
|24|0x3d0b7|`(((d0+d1)+(t1×10))+150)`|
|26|0x3d165|`(((((d2+d3)+v24)+(t2×10))+-110)−((sex−1)×10))`|
|0e|0x3d231|`((((d4+d5)+((sex−1)×25))−((v24+v26) /s 5))+(t3×10))`|
|10|0x3d2fc|`((((d6+d7)−(sex×25))+((v24+v26) /s 3))+(t4×10))`|
|0a|0x3d3b5|`((((d8+d9)+(v0e /s 4))−(v10 /s 4))+(t5×10))`|
|0c|0x3d46a|`((((d10+(v10 /s 40))−(v0a /s 30))+(v26 /s 20))+(t6×2))`|
|14|0x3d539|`(((((d11+d12)+d13)+150)−(v24+v26))+(t7×10))`|
|12|0x3d622|`(((((d14+d15)−(v26+v24))−(v0a /s 4))+(v10 /s 4))+(t8×10))`|
|1a|0x3d6ba|`(((d16+d17)−(v0e /s 2))+(t9×10))`|
|16|0x3d76e|`((((d18+d19)−(sex×50))−(v1a /s 4))+(t10×10))`|
|18|0x3d7e2|`((d20+(v0e /s 4))+(t11×10))`|
|1c|0x3d8b9|`(((((d21+(v10 /s 4))+(v12 /s 4))−(v1a /s 4))−(v0e /s 4))+(t12×10))`|
|1e|0x3d965|`((((d22+((sex−1)×50))−(v26×2))+(v24 /s 4))+(t13×20))`|
|20|0x3d9fa|`(((d23−(v1a /s 4))−(v0e /s 4))+(t14×10))`|
|22|0x3da34|`(d24+50)`|
|28|0x3da6e|`(d25+15)`|
|2c|0x3da9c|`t15`|

Display mappings remain those in CHARACTER_RECORDS_20261014.md:24 Boy,26 Kilo,0e Zeka,10 Vuruş Gücü,0a Kelime Dağarcığı,0c Güç,14 Çeviklik,12 Dayanıklılık,1a Batıl İnanç,16 Yüzsüzlük,18 İstanbulluluk,1c Cesaret,1e Etkileyicilik,20 İnanç. Offsets22/28/2c are deliberately unnamed.

Final signed minimum pass raises word indices3..16 to50, except index6/offset0c to3. It does not normalize identities, Boy/Kilo, age-like quantities or unrelated unknown words. The generator writes only the17 listed destinations plus the minimum pass's affected words; all other original record bytes survive. It does not reset the record to zero internally: caller record preparation remains a separate verified boundary.

## Trait initialization

Logical167c:0000 / physical0x3cc00..0x3cd1e copies words1..15 from DS:`2778+32*race+2*i` into the current working trait record. It preserves working word0. Then exactly one scaled(5) selects a word from DS:`0fe7+10*race+2*choice`, replacing word15. This override subsequently becomes numeric offset2c. The working record's unused words16/17 are outside the returned16-word Rust interface and are neither read nor overwritten by that interface.

`GenerationTables::from_original_ist` reads all eight16-word race rows and eight five-word choice rows at these fixed addresses from the original385328-byte MZ image. It checks image size/magic and known RNG call bytes; the preservation manifest remains the authoritative full-file identity check. It is not a general MZ parser or a claim that arbitrary modified executables share these offsets. Labels/string copies in initializer0000 are excluded from this pure numeric operation.

## Caller order, rerolls and shared RNG limits

Entry167c:1aa2 setup runs the following at physical0x3e858..0x3e888:

1. Calls0000 at0x3e859: one trait-choice RNG update even for a named character.
2. Calls appearance helper011f at0x3e85d. It invokes animation035d at0x3cf2a, which can consume a face scaled(3) when persistent face phase==1.
3. Reads current name length. Empty calls0437 at0x3e881, which **again** calls0000 (one choice), then26 stat draws. Nonempty instead calls numeric display0f4e at0x3e887, retaining existing numeric values.

Thus a blank-slot setup has28 deterministic trait/stat draws *before accounting for face-phase-dependent animation consumers*, while named setup still consumes the first trait choice. Do not replace this with a single27-draw call or derive seed solely from a screenshot.

- Appearance increment/decrement: branches0x3ec77/0x3ecb8 update cyclic appearance, call011f (0x3ec99/0x3ecda) then164a symbol update. No0437 generation call. Appearance may force sex, and face helper may consume a phase-dependent random update.
- Race increment/decrement: branches0x3ecf9/0x3eda8 first update race. Calls0437 at0x3ed53/0x3ee02 use the **previous sex** still in the numeric record. Only afterwards set appearance=`2*(race−1)+1`, then call011f (0x3ed89/0x3ee38), which may change sex. Reordering suggested appearance/sex before generation would change original stats.
- Enter/reroll:0x3ee51..0x3ee69 calls0437 at0x3ee57, consuming initializer choice+26 stats.
- Sex branch scan2e: changes cyclic sex, then calls0437 at0x3eea3 and164a. It does not call011f on that branch.
- Slot navigation returns to setup0x3e753 and preserves stored names/numeric records; empty/name branch chooses regeneration versus display. This can consume RNG even when no visible stat change occurs.

The original idle loop consumes scaled(1000) at every poll *before* its timer comparison, and face phase1 consumes scaled(3) when animation runs. See `../../living-continuation-20261014/face-animation/FACE_ANIMATION_SPEC.md` for exact phase and cadence evidence. That global CPU/input poll cadence is not recovered as a native scheduling boundary. Startup seed conversion is documented in the parent's seed report; the module never substitutes a host seed or independently seeds face animation. Global invocation order/cadence and runtime differential comparison remain blockers before UI integration.

## Implemented Rust boundary

New file only: `rust-port/crates/lale-runtime/src/character_generation.rs`.

- `initialize_traits(previous, race, tables, rng)` copies original rows and consumes one shared draw; invalid race returns error without consuming RNG.
- `generate_numeric_from_traits(record, traits, rng)` performs26 ordered scaled draws,17 exact wrapped formulas and the existing minimum pass. It returns before/after RNG state and the26 scaled results. Original straight-line numeric portion contains no callbacks or conditional random consumers, so collecting those draws before pure formula evaluation preserves its isolated output/state semantics.
- Input record, traits and RNG are all caller-owned. No UI, time source, file writes, new saved-party source or finalization is connected. This does not turn optional fresh stats into fabricated values.

## Validation and reproducibility

Two independent restricted transcriptions are retained:

1. `transcribe_formulas.py` symbolically follows the original register/stack listing, emitting the formula AST. Its draw shortcut is checked separately against all full original macros.
2. `instruction_fixtures.py` concretely executes the original listed16-bit register operations and stack arguments, including CWD/IDIV, full helper multiply/divide semantics and each RNG update. It does **not** call the formula evaluator when producing instruction outputs; it separately compares them afterwards.

32 cases agree: sixteen realistic original race-table/choice inputs across both sexes and varied32-bit RNG states, plus sixteen extreme trait/raw-record cases exercising signed division and wrapping. Whole92-byte outputs, all26 raw rand15 returns and post-call RNG states are retained in JSON; TSV contains the instruction-produced inputs/outputs used by Rust. Deliberately extreme traits are synthetic arithmetic stress inputs, not claimed legal characters. Fixture outputs are static transcription evidence, **not observed original DOS runtime states**.

Three new Rust tests verify all32 instruction-produced record/state fixtures and untouched bytes, original trait initialization across all eight races with exactly one RNG update, and signed division boundaries. Isolated harness including existing character_data passed9 tests; parent owns final workspace integration/tests/build. No fresh stat UI acceptance is claimed.

Reproduce in project root: run `python analysis/phase-five/findings-1509-20261014/generation/transcribe_formulas.py`, then `python .../instruction_fixtures.py`. `build_rust_transcription.py` records how the new formula code was generated; do not casually rerun it over reviewed implementation. Ordinary Cargo tests consume the retained TSV without running Python or executing DOS code.

Remaining steps: audit complete caller shared-RNG scheduling/phase ownership; perform controlled original fixed-seed or extracted-function differential observation when feasible; integrate original record preparation/traits/stat generation with explicit caller ordering; preserve race-before-appearance sex timing; audit auxiliary serialization/finalization before enabling completion. The pure bounded numeric formulas are recovered; full faithful character creation is not yet enabled.
