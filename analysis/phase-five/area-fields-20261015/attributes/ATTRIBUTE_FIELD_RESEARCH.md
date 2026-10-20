# Character fields and controlled distribution survey — 2026-10-15

New evidence only. Original IST.EXE SHA256 `9ba1640ae2ee33579cb1c914d0686346f53c4c7ef6520c7d92262b9c2f06b05e`; originals, old reports and working UI unchanged. PDF and reverse-engineer-anything skills applied. PDF6–7 images were directly re-inspected from preserved renders, without reprocessing the manual. Original record base DS:99a6 plus slot×92; offsets below are hexadecimal **bytes**, not word indices. Logical overlays are identities, not stable runtime segments. Original instructions and synthetic REA addresses are kept separate in source-ranges.json and derived provenance.

## Exact creation display mapping

MANUAL-DOCUMENTED: PDF6 says Boy is cm; Kilo is kg; Zeka relates to reasoning/recall, Vuruş Gücü to physical damage/hit chance, Kelime Dağarcığı to known/usable vecizeler and **Damak capacity**, Güç to resistance/survival (zero is fainting; below−5 is death in the manual), Çeviklik to movement/evasion, Dayanıklılık to slower Güç loss, Batıl İnanç to superstition, Yüzsüzlük to social brazenness, İstanbulluluk to city knowledge, Cesaret to fear, Etkileyicilik to influence, İnanç to belief. These descriptions do not establish coefficients or verified runtime death thresholds. PDF7's blanket minimum50 is contradicted by its own Güç4 screenshot and the original clamp exception3.

BINARY display consumers167c:0f4e, physical3db4e..3e249, ordered rows1..14:

|Row|Offset|Static/manual label|Exact original value PUSH physical|
|---:|---|---|---|
|1|24|Boy|3db9f|
|2|26|Kilo|3dbe1|
|3|0e|Zeka|3dc67|
|4|10|Vuruş Gücü|3dced|
|5|0a|Kelime Dağarcığı|3dd73|
|6|0c|Güç|3ddf9|
|7|14|Çeviklik|3de7f|
|8|12|Dayanıklılık|3df05|
|9|1a|Batıl İnanç|3df8b|
|10|16|Yüzsüzlük|3e011|
|11|18|İstanbulluluk|3e097|
|12|1c|Cesaret|3e11d|
|13|1e|Etkileyicilik|3e1a3|
|14|20|İnanç|3e229|

These match existing Rust STAT_NAMES/STAT_OFFSETS exactly; no remapping was required. Original source assembly is retained in creation-display-existing-original.asm; fresh actual REA result is ../area/creation-display-rea.json, Evidence `ev_82e3b710d34c3a8df6db8dc07310b5c8c03dbbc60f1e57ce3571070b41c18737`. The remaining generated destinations22,28,2c **do not have creation-screen rows** here and remain unnamed. Semantic plausibility cannot turn them into attributes.

## Base/current pairs recovered from consumers

BINARY-VERIFIED operations, independently checked original assembly and fresh actual REA:

* Party preparation copies0a→38 and0c→3a, physical3e465..3e4a8; existing Rust preparation already does this.
* Original world/detail UI1670 physical376e2..3776b formats3a, literal `/` at DS4459, then0c on row8; physical3776e..377f7 formats38, `/` at DS445b, then0a on row9. These are **current/base pairs**; creation displays only the base values.
*1694:6f5f physical50baf..50c9d increments3a by3, with signed comparison and base0c cap; it also updates a separate40-byte working record. REA synthetic0x46f5f Evidence `ev_b2851e9eea2a8dee2130d9a427a256f0f42ce78236cdb6b155b164d788e07d90`.
*1694:704e physical50c9e..50d8c increments38 by50, signed comparison and base0a cap; it also updates a separate40-byte working record. REA synthetic0x4704e Evidence `ev_a31e549baedef7c2503b59384695776273655e9b4d42232cc4f736b4d240d82c`.
* Rest consumer1670:4353 physical36263 onward measures0c−3a and `(0a−38)/30`, a further independent capacity/current dependency. Text DS4345 says camping here is dangerous; DS4367 says `yorgun deGiliz ki...`.

Semantic classification:0c base Güç /3a current Güç is strongly supported by creation label plus initialization/current-cap/display consumers.0a is explicitly creation Kelime Dağarcığı;38 is the **current Damak candidate**, with0a acting as the available Damak ceiling. This does **not** mean knowledge and current resource are interchangeable. A controlled original UI observation with deliberate depletion/refill and a vecize-cost consumer still must corroborate the semantic current-Damak name before promoting it to fully verified. No new original DOS run is claimed. No gameplay thresholds or effects are implemented from these inferences. Creation UI correctly remains0c, rather than being switched to an uninitialized current3a.

## Reusable Rust survey

`cargo run --offline --release --bin lale-generation-survey -- ORIGINAL_IST.EXE NEW_OUTPUT_DIR 65536` invokes the existing exact Rust initializer (one draw), numeric generator (26 draws), and minimum pass. It does **not** reimplement arithmetic, make a startup seed, emulate callback scheduling, or mutate game files. All17 generated destinations are sampled for all8races×2sexes. Family `low16` enumerates every initial state0..65535; `stratified32` evenly spans high words with reproducibly scrambled low words. Families are artificial controlled samples, not probabilities of real startup/play. Each starts from a zero92-byte record containing race/sex. Rerolls, previous traits and animation RNG consumption are deliberately outside this boundary.

`survey/` is the initial2,097,152-case run. `survey-confirmation/` repeats the same deterministic corpus after adding explicit Güç17/Kilo0 witness output; summary/histogram/correlation outputs agree byte-for-byte between these two runs. Both retain full histogram, mean, population SD, pairwise Pearson correlation, per-identity extrema and Güç13 witnesses. Pearson values describe associations, not causal dependence. `race-modifiers.tsv` retains exact signed original trait-row values and file offsets. `sampled-extrema.md` provides the compact17-field table. Probe9 reused module tests pass offline; release build passes.

Across the equally weighted artificial corpus, Güç sampled3..17;3 occurs872,308times (41.60%),13 occurs19,268 (0.919%),17 occurs108 (0.00515%). These support the user's common-low/occasional13 observation, but **are not original gameplay frequencies**. No upper clamp10/15 exists in the recovered minimum pass. Sampled17 refutes imposing either cap in Rust, but17 is not a proven mathematical maximum or newly observed DOS value.

Observed Boy140..208cm and Kilo0..96kg. **Kilo0 is an unresolved anomaly**, not sanitized: low16 race2sex2 has three witnesses; the stratified family has another. It follows exact current verified formulas/tables and lies outside minimum-pass range. Most samples remain ordinary human magnitudes. Plausibility guides targeting a DOS comparison, never a fabricated correction or a new bound.

Concrete original-DOS comparison candidates in survey-confirmation/targeted-dos-candidates.tsv (full92-byte outputs retained):

|Case|Race|Sex|Input RNG before initializer|After one trait draw|After26 numeric draws|
|---|---:|---:|---|---|---|
|Güç17|3|1|00000619|3fa6e12e|42064b9c|
|Kilo0|2|2|00000390|d1b69cd1|17cd5487|

These are **RUST-SAMPLED**, not DOS-RUNTIME-OBSERVED. Existing prior DOS comparisons validate whole numeric-generator/caller boundaries, but did not exercise these exact rare inputs. A future controlled run should stop the real current relocated creation overlay at0437, set selected record race/sex and resident RNG to those exact values, let original initializer+generator run, then compare generated17 destinations and RNG at0f4e; preserve other record bytes and callback state. Do not assume a fixed35a6 overlay segment or alter distribution files.

## Bounds and dependencies, without rediscovering arithmetic

BINARY-VERIFIED: final signed clamp floors0c at3 and offsets06..20 at50 (except0c); Boy24/Kilo26 and22/28/2c lie outside. Draw domains yield proven22∈[50,200] and28∈[15,20];2c is selected from original race-choice tables, not an arbitrary scalar stat. Current38/3a are not generation destinations. Sampled extrema for every other field remain **sampled**, not proven mathematical bounds.

Dependencies below refer to **unclamped intermediates**, because minimum pass runs after every numeric store. From the already verified generator: Boy depends on race t1; Kilo on Boy,t2,sex; Zeka on Boy,Kilo,t3,sex; VuruşGücü on Boy,Kilo,t4,sex; KelimeDağarcığı on Zeka,VuruşGücü,t5; Güç on VuruşGücü,KelimeDağarcığı,Kilo,t6; Çeviklik on Boy,Kilo,t7; Dayanıklılık on Boy,Kilo,KelimeDağarcığı,VuruşGücü,t8; Batılİnanç on Zeka,t9; Yüzsüzlük on Batılİnanç,t10,sex; İstanbulluluk on Zeka,t11; Cesaret on VuruşGücü,Dayanıklılık,Batılİnanç,Zeka,t12; Etkileyicilik on Kilo,Boy,t13,sex; İnanç on Batılİnanç,Zeka,t14. Shared RNG makes statistical correlation alone insufficient to infer this graph. Clamping inputs first would break these proven dependencies.

Next bounded validation: exact rare-input original DOS differential, then actual world UI label/resource and vecize depletion consumers for38. Keep callbacks, seed lifecycle, fourth-party completion and ordinary-native integration separate; none is completed merely by this survey.
