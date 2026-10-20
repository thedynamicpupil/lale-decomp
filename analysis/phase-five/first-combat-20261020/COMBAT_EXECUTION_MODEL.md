# First Otopark encounter: combat execution model — 2026-10-20

Phase1 synthesis for the active first-playable-combat objective. This is the dependency map for implementation, not a declaration that all five user phases are complete. Reports below preserve exact instructions, arithmetic, raw fields and limitations. No new Rust gameplay implementation is claimed here.

Evidence classes:

- **VERIFIED STATIC:** original instructions/data checked against original bytes; may still need runtime comparison for context, timing and edge cases.
- **RUNTIME OBSERVED:** original DOS emulator evidence, with trial conditioning explicitly stated.
- **PENDING:** unresolved source consumer, missing controlled differential, or native/desktop acceptance still required.

## Current original-runtime boundary

Root's controlled original run entered PC1(2,0), facing0, mode2 through original1689:0020. It reached combat stub runtime1eb8:0138, then loaded body2eaf:b40a (original1694:b40a, physical5505a). Actual battle input paused at2eaf:bff4. Root visually inspected the original tactical screen.

This trial skipped creation/film at startup, set opening flag249 and directly established world(2,0). It is **a controlled original dispatcher-to-combat trial**, not the full earned dialogue/acquisition/animated-door sequence. Do not cite it as continuous-route or native desktop acceptance.

Retained [initial capture](capture/BATTLE-INPUT0.png), [64K resident DS](capture/BATTLE-INPUT0-DS.BIN), [64000 indexed framebuffer](capture/BATTLE-INPUT0-IMAGE6.BIN), [768-byte palette](capture/BATTLE-INPUT0-PAL.BIN) and [capture log](dos-battle-input-capture.json). The synthesis independently read retained DS bytes (no live runtime access):

|Actor|Class|Side|Current HP|Battle coordinate pair|
|---|---:|---:|---:|---|
|1, dog group13|5|2|3|(9,7)|
|25, party1|1|1|6|(15,2)|
|26, party2|2|1|6|(13,1)|
|27, party3|3|1|5|(10,6)|
|28, party4|4|1|3|(9,0)|

Current actorDSd5de=25, remainingDSd54c=10, resultDS632e=0, difficulty/input byteDSbb39=0. Actor data are20 signed words at`A(i)=DSa08a+40*i`. Other actors were not certified absent by this table alone. Capture's exact party values/placements are one RNG-dependent trial, not hardcoded native defaults.

Root's first actual Down key reached original movement runtime2eaf:2d39, then returned to input2eaf:bff5: actor25 moved(15,2)→(15,3), allowance10→9 and facing1→3. Between helper entry and after-action state, RNG changed7bdd5bcd→29de7772 (one original LCG step). Movement2d39 itself has no direct RNG call; original redraw/message side effects must explain and retain that draw. No battle flags were granted. See [movement entry](dos-down-movement-entry.json) and [run log](dos-down-movement-run.json). These new observations were communicated by the main runtime investigator; its detailed report will own capture chronology and before/after artifacts.

Descriptor ABI correction: image i has widthDSe29b+8*i, heightDSe29d+8*i, pointerDSe29f/e2a1+8*i. Image6 is320×200. In this run its handle1f04:db29 resolves to direct pixels6acc:0004, lengthfa00; palette671a:0004. These are **dynamic runtime coordinates**, never asset constants.

## Phase1 question/dependency table

|Question|Established execution model|Evidence/status|Required before faithful native completion|
|---|---|---|---|
|How opcode8 enters combat|Opcode8 consumes prefix plus three group/count pairs; first request00,13,1,0,0,0,0. Snapshots group records; preparation1662:0066 is distinct from actual1694:0138→b40a. Return cleans temporary groups/tables and handles result/party viability.|**VERIFIED STATIC + RUNTIME OBSERVED entry.** [Existing evidence](EXISTING_COMBAT_EVIDENCE.md), [terrain/setup correction](TERRAIN_RENDER_ARCHITECTURE.md), root capture logs.|Complete input-to-result trial; do not mistake preparation for battle body.|
|Enemy identity/quantity|Group13 resolves through9-byte name tableDS2185+9*13 to`kopek`; group1 uses class5 and actors1..8. Request count1. Descriptor13 supplies HP3+2*byteDSbb39, damage401, protection1, allowance6, speed3.|**VERIFIED STATIC; RUNTIME OBSERVED actor1 HP3/class5/side2 in this trial.** [AI model](INITIATIVE_DOG_AI_MODEL.md).|Verify loaded resource/state equivalence and preserve shared descriptor architecture.|
|Battle terrain|Current-area3×3 cell window, each9×9; active27×27 terrain, padded28-word row stride. PC directional fields generate wall/obstacle codes; origin clamps to area bounds.|**VERIFIED STATIC.** [Terrain architecture](TERRAIN_RENDER_ARCHITECTURE.md). Manual12×12 claim conflicts with binary.|Full terrain/window comparison against captured original DS. Never build36×36 from prose.|
|Party/foe positions|Party actors25..28/classes1..4, enemy classes5..7. Side regions derive from exploration facing/walls. Placement draws random coordinates within9-wide regions, rejecting occupied and terrain6/8/>9.|**STATIC traced; initial coordinates RUNTIME OBSERVED.** Main REA and AI report.|Validate exact random bound/call order and terrain before native initialization. Preserve actor0 sentinel.|
|Renderer/UI|ANAKES background1, YERICON2, TABLETUR7, PALBAT full256. Image6 compositor.7×7 painter order, original affine anchors,43×35 ground tiles and50×60 wall strips, six-record KOR actors and masked mirrors.|**VERIFIED STATIC; authentic screen RUNTIME OBSERVED.** [Renderer model](RENDERER_EXECUTION_MODEL.md).|Pixel/palette differential; status/equipment panel, minimap, action icons/hitboxes, transparency, fonts, callbacks.|
|Turn/initiative|Every actor1..28 consumes initiative probe RNG, sometimes second draw; stable ascending key sort. Scheduler skips dead/status-disabled actors, sets allowance from shared class and effects. Round rollover calls1670:0048.|**VERIFIED STATIC.** [Initiative/AI model](INITIATIVE_DOG_AI_MODEL.md).|Runtime order/RNG differential, per-round effect/time helper, party-turn speech/callback consumption.|
|Player actions/targets|Main owns key/mouse modes; movement2d39, attack3f5b, inventory region handlers. Turn selection is scheduler-driven; targeting has separate cursor/probe state.|**STATIC entry points; first Down reaches2d39 RUNTIME OBSERVED.** [Main pseudocode](combat-main.pseudo.c).|Complete scan-code/hitbox table, Tab semantics, target mode/Enter/Esc, viewport input, equipment UI and action-cost rules.|
|Movement/collision|Ordinary candidate clamps0..26; terrain<10 except6/8 and empty occupancy permits step, cost1. Opposed occupied destination for side1 invokes attack. Old/new neighbor scans can cause original reaction attacks with override cost context.|**VERIFIED STATIC; RUNTIME OBSERVED Down step/delta/cost/facing plus one RNG step.** [Movement addendum](INITIATIVE_DOG_AI_MODEL.md).|Explain extra original draw; compare clamp, blocked, diagonal and engagement/disengagement reactions, occupancy updates0c27 and terrain-message helper2c7b.|
|Target visibility/range|0f86 uses dominant-axis100-scaled signed integer sampling, blocks terrain10..13; target terrain0 clears line. Distance=dominant delta+1 when clear.|**VERIFIED STATIC.** AI-model helper addendum.|Runtime line-cell differential, overflow/sentinel cases; no replacement Bresenham or floating-point path.|
|Hit/damage/resources|Both hands use encoded speed and damage; enough allowance includes equality. Damage RNG precedes hit RNG; overwritten draws still consumed. Signed hit roll<=threshold; damage=max(0,raw−protection). Miss/zero-damage distinct.|**VERIFIED STATIC.** [Attack/writeback](ATTACK_WRITEBACK_ARCHITECTURE.md).|Original no-effect bare-hand and Sivri Daş attack differentials, equal allowance, miss/zero-damage, counterattack globals/effects.|
|Dog AI|Verified unchanged descriptor reduces to original target/approach/adjacent-attack branch. Includes remembered opponent, weighted/random retargeting, original stale-neighbor quirk; desired movement then two bounded direction alternatives.|**VERIFIED STATIC.** [Initiative/dog AI](INITIATIVE_DOG_AI_MODEL.md).|Compare distant/blocked approach, diagonal attack, reactions/retarget, after-action9490 and effect flags; preserve RNG for discarded decisions.|
|Inventory/equipment bridge|Acquisition raw inventory item2 does not equip. Main/secondary/clothing refs are numeric-record word indexes, slot1 ref23h. Stone row201,2,1,3,1,2,0; primary equip checks hand-count and occupied offhand. Weapons feed derived attack and speed.|**VERIFIED STATIC; acquisition already retained DOS helper-verified and native-implemented.** [Inventory evidence](INVENTORY_COMBAT_EVIDENCE.md).|Actual equip/drop/transfer input and costs/scheduler effects, native UI, raw quantity/quality handling. Do not auto-equip item2.|
|Incapacitation and results|HP<=0 removes occupancy; permanent death threshold remains separate. Side absence sets632e and scheduler returnsffff; absent enemy side→result1, absent friendly side→result2. Attack also triggers termination scan.|**VERIFIED STATIC.** Attack/initiative reports.|Win/lose runtime, below−5 distinction, defeat presentation and persistent route handling.|
|Persistent writeback/world return|8111 explicitly copies current/max HP/Damak, auxiliary/effect fields into numeric party; inventory/equipment already live. Main cleans battle; opcode8 caller checks result/positive party, then script continuation may set dog flag1.|**VERIFIED STATIC; full outcome runtime PENDING.** [Attack/writeback](ATTACK_WRITEBACK_ARCHITECTURE.md).|Full368-byte party/RNG/event/world delta on victory and defeat, authentic resumed input. Keyflag2 belongs to later independent search/acquisition, not fabricated combat reward.|

## Shared state and reusable implementation boundaries

Keep these original structures distinct:

- Four92-byte numeric party records, base`B(p)=DS99a6+92*p`, p1..4. Existing acquisition/creation live data.
- Combat actors`A(i)=DSa08a+40*i`, i1..28 plus evidenced sentinel0. Current HP/resource/facing/class/coords/remembered opponent/side and effects remain per actor.
- Shared combat class records`T(c)=DS9f1a+46*c`,23 words. Party classes1..4; enemy groups use5..7. Creature descriptor records remain source data.
- Terrain wordsDSc8ee, occupancyDSc2ce, stride28; window/projection stateDSd57e/d580 and action stateDSd54c/d5de etc.
- Persistent event bitsDSb9ca onward; flags1/2/249 keep existing source script lifetime.

Pure source parsing/word access, deterministic simulation and platform input/presentation should remain separate. Original redraw2721 calls actor3955, which includes some action mutations and RNG; arbitrary SDL repaint must not repeat those side effects. Recovered model should explicitly schedule original action steps before pure frame composition.

Do not collapse encoded weapon201 to final damage201, equipment refs to item IDs, class/shared HP to actor current HP, or temporary battle buffers to persistent party serialization. Preserve signed wrapping math and RNG call order even when values are overwritten. Retained pseudocode uses relocated aliases; direct DS/instruction maps in reports are authoritative.

## Required sequence from current evidence to five-phase delivery

1. **Finish Phase1 validation:** compare one ordinary movement, one player attack, one dog approach/attack, one equip operation and one victory/defeat return against original captures. Recover required missing consumers in the table. Normal no-effect subset can be bounded explicitly; effects cannot silently disappear from a supposedly reusable engine.
2. **Phase2:** build original-data tactical frame with exact initialized actors/terrain and original UI/input boundaries, then compare full indexed framebuffer/palette. Preserve all existing exploration/cinematic/creation tests and debug behavior.
3. **Phase3:** connect scheduler, movement/reactions, target/attack/RNG and dog AI with differential tests. No free party selection, invented pathfinding, autoattack or automatic win.
4. **Phase4:** wire verified inventory/equipment input and action costs to the same numeric party/derived-stat pipeline. Demonstrate acquired stone access, authentic equip and meaningful attack effect.
5. **Phase5:** run the earned native creation→film→Otopark dialogue→stone acquisition→door→dog fight→result→exploration route. Test victory and defeat, preserve source flags and all persistent writes. Fedora desktop acceptance remains a separate requirement.

The present deliverable is a substantial source-backed combat dependency model with an authentic original initial-screen capture. It is **not** a complete native combat implementation, not a full DOS outcome comparison, and not milestone completion. Continue the same objective from the current root-owned runtime boundary; do not restart completed research.
