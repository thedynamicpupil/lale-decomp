# Original manual → binary research index — 2026-10-14

Read-only PDF skill applied. Source: original root `lale.pdf`,31 pages; all references below are **one-based PDF page numbers**, not inferred booklet pagination. Relevant pages6–29 were extracted directly and rendered/visually inspected, including Turkish glyphs, screenshots and table boxes. New page images, extraction and catalogs are retained exclusively in this directory. Originals, historical evidence and Rust source remain unchanged in this manual subtask.

Evidence labels are intentionally independent:

- **MANUAL-DOCUMENTED**: printed intended behavior, terminology or screenshot; not an executable formula.
- **BINARY-VERIFIED**: original literal bytes, instruction/data offsets or previously audited instruction behavior. A literal match alone does not verify a mechanic or numeric ID.
- **DOS-RUNTIME-OBSERVED**: repeatable original runtime observation. None of the new manual rules below acquires this status merely from a manual screenshot.
- **RUST-IMPLEMENTED**: existing bounded implementation, independent of original runtime acceptance. No gameplay code was added from manual prose here.

## Character attributes and terminology

All14 names below are directly visible in PDF6's table and PDF7's creation screenshot. Record offsets and display associations come from earlier original-code display/generator analysis, not from ordering this manual table. Exact original generator stores listed here provide a concrete entry into that evidence; see findings-1509-20261014/generation/GENERATOR_IMPLEMENTATION.md and phase-four/continuation/CHARACTER_RECORDS_20261014.md.

|PDF6 printed attribute|Record byte offset hex|Original generator store physical|Manual role, concise|Status|
|---|---|---|---|---|
|Boy|24|3d0b7|Height in cm|MANUAL-DOCUMENTED; BINARY-VERIFIED field/display; RUST-IMPLEMENTED pure record/generator|
|Kilo|26|3d165|Weight in kg|Same|
|Zeka|0e|3d231|Understanding/recall|Same|
|Vuruş Gücü|10|3d2fc|Physical attacking power; affects hit/damage|Same; combat formula unverified|
|Kelime Dağarcığı|0a|3d3b5|Capability and upper Damak/vecize strength|Same; current Damak field remains a separate question|
|Güç|0c|3d46a|Damage tolerance/vitality; damage lowers it;0 faints, below−5 dies|Same field name; death/faint mechanics are MANUAL-DOCUMENTED only|
|Çeviklik|14|3d539|Agility, hit/evasion relevance|Same; combat coefficients unverified|
|Dayanıklılık|12|3d622|Fatigue resistance and Güç growth|Same; growth/fatigue math unverified|
|Batıl İnanç|1a|3d6ba|Susceptibility to superstition|Same; effect algorithms unverified|
|Yüzsüzlük|16|3d76e|Resistance to insults/vecizes|Same; resistance math unverified|
|İstanbulluluk|18|3d7e2|Knowledge of İstanbul|Same; event consumers unverified|
|Cesaret|1c|3d8b9|Courage and fear behavior|Same; event/combat effects unverified|
|Etkileyicilik|1e|3d965|Persuasion/influence|Same; dialogue algorithm unverified|
|İnanç|20|3d9fa|Faith|Same; event effects unverified|

**Do not translate Güç simply as physical strength.** PDF6 explicitly describes vitality/damage tolerance, whereas Vuruş Gücü is attacking physical power. PDF23 distinguishes current Güç (Simit restores only up to maximum) and maximum Güç (Padişah macunu on PDF24 increases it). PDF25 distinguishes Kelime Dağarcığı from currently available Damak; Su on PDF23 restores Damak only up to Kelime Dağarcığı. These give useful *proposed* semantics for pre-write copies0a→38 and0c→3a, but the copy instructions alone do not prove38=current Damak or3a=current Güç. Trace damage/casting/consumption consumers before assigning those names.

PDF7 says normal starting minimum50, while its screenshot displays Güç4. Original signed final pass3daa1..3db46 proves word6/offset0c minimum3, other words3..16 minimum50; Boy/Kilo lie outside. The manual cannot override that exact rule. PDF7 also recommends Kelime Dağarcığı150/200 for a vecize specialist; these are recommendations, not executable starting minima.

Manual controls: PDF7 appearance numpad4/6, race8/2, sex5, name0, Enter reroll, Space advance, Esc previous/menu. Actual scan checks2e/0f for sex/name differ; see existing MENU_TO_CHARACTER_CREATION_20261014.md. Manual's later bottom-left next-character description conflicts with its screenshot/bottom-right description. Preserve rather than silently reconcile these discrepancies.

### Race labels

Manual headings: Maganda PDF8; Lavuk, İrospa, Memur PDF9; Öğretmen, Öğrenci, Siliconian PDF10. PDF8 treats normal human as comparison baseline. The original initializer167c:0000 uses `DS:2638+11*race` for its race-label copy; new raw label records below are corroborating label/index data, not IDs inferred from manual order:

|Numeric selector|Original label (CP857 rendering)|Physical offset|Manual page|
|---|---|---|---|
|1|insan|1b843|8 baseline prose|
|2|öğrenci|1b84e|10|
|3|öğretmen|1b859|10|
|4|maganda|1b864|8|
|5|lavuk|1b86f|9|
|6|memur|1b87a|9–10|
|7|irospa|1b885|9|
|8|siliconian|1b890|10|

Raw bytes and original instruction reference are in source-provenance.json. Manual racial descriptions can guide trait-table review but do not provide numeric modifiers.

## Items, equipment and the opening acquisition

[Structured25-weapon cross-reference](item-name-cross-reference.json) records exact manual headings, PDF pages, properties, original15-byte literal cells and readable binary spelling. **Observed cell order is not a runtime item ID.** All handling/speed/effectiveness properties remain MANUAL-DOCUMENTED until corresponding binary consumers are traced.

|Priority reference|Manual page|Original IST name literal|Useful manual distinction|
|---|---|---|---|
|Sivri Daş|20|19f00 (`sivri daş`)|Light/fast/low damage, one-handed melee; throwing it is described as ineffective. Opening item must retain Daş spelling.|
|Daş|22|1a01d (`daş`)|Separate ranged/throwing weapon; described two-handed handling. Do not merge with Sivri Daş.|
|Zopa|20|19ef1|Two-handed; effective against animals including dogs.|
|Kısa Zopa|20|19f0f|One-handed; maganda effectiveness.|
|Terlik|21–22|19f96|Clothing exception usable as weapon; fast/one-handed; dog effectiveness.|
|Tüftüf|22|1a02c|Originally developed against dogs; Siliconian expertise.|
|Fıstık|23|1a059|Animals including dogs can stop to eat; exact status/duration not established.|
|Levrek|21|19f4b|Two-handed/heavy/slow; irospa effectiveness.|
|Cetvel|21|19f5a|One-handed/light/fast; student effectiveness.|
|Lale|20|19f1e|One-handed/light/fast; fanatic effectiveness.|
|Çötek|23|Not independently located in this subtask|Off-hand shield-like equipment; manual says1 protection. No numeric item ID assigned.|

New original-byte observations:25 reviewed weapon names occupy15-byte NUL-padded cells beginning19ef1. Following cell1a068 contains `kılıçartıbeş`, without a matching heading in reviewed weapon pages; this is an unmatched literal, not permission to invent its behavior. Other manual/binary spelling differences include T-Cetveli versus `t-cetvel`, Yıldız tornavida versus abbreviated `yıldız torn.`, İngiliz/Fransız anahtarı versus `ing./fra. anahtarı`.

Inventory cross-reference targets:

|Manual concept|PDF|Manual behavior / exact terminology|Current binary/implementation status and next target|
|---|---|---|---|
|Şahsiyet Bilgi Ekranı|12–13|F1–F4 opens/selects character; I enters item selection; click/Enter select and place|Handler not mapped here; do not confuse creation slot navigation with inventory transfer|
|Equipment slots|13|Main hand, secondary hand, clothing; two-handed item requires main hand and empty secondary; Terlik clothing exception|Candidate equipment flag tests and two-hand branch audit; no bit values assigned|
|Transfer/discard/consume|13|F1–F4 transfer, F5 discard, Q/W/E release equipped objects; right-click consumables disappear after use|Trace actual mutation/removal/ownership handlers before Rust inventory|
|Alış-Veriş Ekranı|14|Shared loot/shop UI; selected found item transfers into chosen character slot; money automatically collected|Strong UI-level guide for automatic Sivri Daş interface, not proof of its event trigger/item ID|
|Korunma / Kurtulma|13|Equipment/shield protection vs agility/carried-weight evasion|Separate candidate numeric fields/derived functions; coefficients unverified|
|İfsar|13|Carried-weight unit; manual jokes1–4kg variability|Preserve original integer weight values; do not invent kg conversion|
|Kayıt / Kamp / Şehir Haritası|15|General saves, rest restores Güç/Damak, world-map travel|Gameplay save format is not the664-byte party-creation serialization; exact mechanics unverified|

## Vecizeler

Complete34-entry [Markdown catalog](VECIZE_CATALOG.md) and [structured JSON](vecize-catalog-34.json) retain manual name, page, Damak, category, shape, range and concise intended effect, alongside each original31-byte name cell. All34 manual entries have corresponding observed literal cells physical19580..1999d; literal identities/bytes are BINARY-VERIFIED, effects/costs are MANUAL-DOCUMENTED, runtime numeric IDs/consumers remain null. No effect implementation was added.

PDF17: every starting character knows Pis regardless of Kelime Dağarcığı. This is a useful hypothesis for the pre-write auxiliary literal beginning`1` followed by zeroes, but that string's position/consumer must prove the interpretation; do not call it a learned-spell bitset solely from the manual.

PDF18 explicitly says reversed names appear when the character knows the vecize and has sufficient Kelime Dağarcığı but insufficient current Damak. It prints `Anabab Leg, Raaalanpi Nal` and refers to Gel Babana/Lan Hipinelaaar. Do not implement ordinary host string reversal yet: the printed examples/casing are not a byte-perfect algorithm specification. Trace the name-list builder and affordability condition.

Spelling discrepancies matter: PDF28 title `Lan Hipinelaar` versus PDF18 `Lan Hipinelaaar` and binary `lan hipinelaaar`; manual `Piştoğli!` versus binary `piştogli`; manual `Bi Korsun, Bi de Yer Kor` versus binary `bi korsun bir de yer kor`; manual `Iaaarghh...` versus binary `iaaarggghh`; manual `Susun Laaan !!` versus binary `susun laaaan`. Catalog preserves both rather than normalizing them.

## Combat research index

|Manual concept|PDF|MANUAL-DOCUMENTED claim|Binary match / next investigation|
|---|---|---|---|
|Battlefield partition|16|Nine main regions; each144=12×12 cells; one cell movement costs1 point|Search grid indexing/stride12/144 against actual room→battle initialization; no recovered battle array ABI claimed|
|Turn/initiative order|16|Lighter weapons, agility and luck affect ordering; each turn lasts until actors spend allowance|Trace scheduler/weapon speed/current movement fields; no conventional RPG initiative formula substituted|
|Melee|17|Adjacent enemy; remaining movement must exceed current right-hand weapon speed|Find exact signed/unsigned compare and inequality; manual alone does not settle boundary arithmetic|
|Ranged targeting|17|Enter targets/attacks; S/O changes targets; obstacle/range rejection; multiple attacks if allowance remains|Trace visibility/range/cost and targeting handler; no accepted damage model yet|
|Vecize targeting|17–18|V list; some need friend/enemy target; others execute directly|Bind34 literal records to dispatch and target-shape data before assigning IDs|
|Hit determination|18–19|Random roll, character/weapon/race matchup, effects and target evasion|Separate from damage; exact random ranges/coefficient/order unknown|
|Net damage|19|Damage separately randomized then protection subtracted; successful hit can yield no displayed damage and no miss sound|Trace hit-result and protection path separately. Never interpret every zero-damage event as a miss|
|Combat UI labels|18|`Vuruş Olasılığı`, `Korunma`, `Kurtulma`, `Hareket hakkı (HRK)`, `Silah Hızı (SHZ)`, `Damak Puanı`|Exact terminology for locating string users/number formatting; runtime numeric offsets not assigned here|

Manual dog-specific weapon references prioritize Zopa, Terlik and Tüftüf effectiveness tables, and Fıstık's distraction status. They do not prove which weapon the first encounter requires, whether an attack always hits, or any numeric item/creature identifier.

## Scope and next evidence

No new DOS runtime or native desktop acceptance evidence is introduced; manual illustrations are printed reference images. Native character visual/input acceptance remains the user's prior milestone; it does not validate inventory, vecize or combat calculations. Existing Rust record/generator modules remain isolated from these unverified systems.

Recommended bounded next tasks: (1) trace consumers of the original25-weapon/34-vecize name blocks and their actual runtime indices; (2) distinguish derived maxima from current Güç/Damak using3a/38 copy consumers; (3) recover the affordability/reversed-name routine; (4) connect the actual Otopark event to inventory mutation and Sivri Daş identity; (5) locate separate attack-hit and net-damage branches with manual19 as descriptive checklist. Preserve source bytes, manual spellings and each evidence classification.
