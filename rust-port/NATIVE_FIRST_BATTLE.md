# First native battle: UI and equipment — 2026-10-22

The preceding battle/victory/exploration build was user-passed on Fedora KDE.
This increment replaces its primary debug HP list with the original combat
panel and connects carried inventory to equipment. **New desktop acceptance is
pending.** [Dated checkpoint](../analysis/BATTLE_UI_EQUIPMENT_CHECKPOINT_20261022.md).

## Fedora route

From the project root:

```sh
./rust-port/play-native.sh
```

1. Choose **Yeni oyuna başla**, create and name four characters. Tab edits a
   name; Enter accepts; Space advances each named character. Watch the films.
2. In Otopark, advance dialogue with Space after the portrait wait. Turn with
   Left/Right until north, press Up at the door, then choose E/Evet.
3. In acquisition, click Sivri Daş in the found-item row, then a carried slot in
   the selected character's row. F1–F4 change the recipient. Remember that
   character. Esc closes acquisition; allow the door/illustration to play.
4. In battle, use Tab until the stone's owner is active. The bottom portrait,
   character name, equipment and ten inventory slots identify the active member;
   the minimap's white marker and pedestal also follow selection. Supported
   voices finish automatically. Esc is only a fallback for unsupported voice waits.
5. Press **I**. Left/Right moves through ten slots; Up/Down switches rows. The
   selected slot is outlined and its original encoded item name/weight appears
   above the panel. Select Sivri Daş, then **Enter, Enter**: the first Enter
   chooses an equipment destination (main hand by default), the second confirms.
   Alternatively click the carried stone, then the main-hand box immediately
   right of the portrait. Inventory is modal; its arrows and Tab do not move the
   actor or pass the turn. Esc backs out of a destination, then closes inventory.
6. Check that the stone icon now occupies the main-hand box and **SHZ becomes
   2**. The carried icon remains: equipment stores a reference to that slot.
   Press **Q** to release the main hand; the stone stays carried and SHZ returns
   to 0 (the original attack code normalizes bare-hand cost to 1). Equip again
   with I, Enter, Enter. Equipped stone attacks use the real derived attack
   parameters and cost 2 allowance before hit/miss handling; a miss can consume
   the rest of the allowance. A changed weapon does not guarantee a hit or
   greater damage on every attack.
7. Move toward a dog using arrows/keypad; a direction into an adjacent enemy
   attacks. Play several player/enemy turns, win, finish the postbattle dialogue,
   and confirm exploration resumes. The equipped reference/item must survive.

## Controls and acceptance checks

| Input | Supported action |
|---|---|
| Arrows / keypad8,6,2,4 | N/E/S/W movement or adjacent physical attack |
| Home, PageUp, End, PageDown / keypad7,9,1,3 | NW/NE/SW/SE |
| Original eight arrow buttons | Same directional actions as keyboard |
| Tab / original first bottom action icon | Advance initiative; enemies act automatically |
| I / carried-item click | Inspect current character's inventory |
| Enter, Enter | Select carried item, then equip in main hand |
| Left/Right after first Enter | Choose main hand, offhand or clothing destination |
| Q / W / E | Release main-hand / offhand / clothing reference; retain ownership |
| Click an occupied equipment box outside item selection | Release that reference |
| Hover battlefield | Original target-tile feedback plus native target HP text |
| Click adjacent battlefield square | Same movement/attack path; distant clicks do not pathfind |
| Esc / right click during inventory | Back out or close; never cancels the encounter |
| F12 | Toggle developer HP overlay; off by default |
| F7 | Export clean frame, palette, records, RNG and pending host/input state |
| Window close | Quit |

Please check: panel/name selection; HP changes; HRK reduction after movement and
attacks; item selection/cancel; repeated equip/release; no unintended movement
while inventory is open; dog AI/turn progression/audio; victory/world return.
Native status/help and attack-result lines at the top are native equivalents,
not a claimed reproduction of original speech bubbles or action animations.
F7 exports exclude the F12 overlay; a separate debug-indexed.bin retains it.

## Evidence and limits

Original STATIC-BINARY + retained CONDITIONED-DOS-RUNTIME: item refs, hand-count
restriction, clothing category, Q/W/E release, no equip allowance/RNG cost,
7574 panel coordinates, icons, portrait and GOCUK small-font dispatch. A complete
64,000-index idle frame now matches retained EQUIP-AFTER-IMAGE6.BIN when composing
the battlefield and panel without native prompts/highlights. This is one captured
state, not all combat screens or a new DOS trial. Equipment output matches all
retained numeric/class words; actor-cached hit/evasion values remain unchanged.

Rust supports reusable primary-weapon references1..25 and clothing27..32, with
transactional rejection and the existing derived-stat conversion. The opening
item2 takes this generic path. Secondary weapon equipment/attacks, alias43/34,
use/consume/drop/transfer during combat and advanced actions remain unsupported;
the UI rejects them without mutation. Later equipment legality beyond the
transcribed subset is not certified. Acquiring a stone never autoequips it.

Existing verified movement, physical attacks/reactions, dog AI, audio and
victory writeback/script return are retained. Defeat still stops at the
unverified loss/load boundary; full world saves, complete world maintenance,
all speech/death/action effects and ranged/vecize controls remain incomplete.
Original unsupported action icons do not enable guessed mechanics. Phase Four
remains open. General inventory management outside this early combat subset is
not claimed complete.

## Reproduce automated validation

```sh
cargo fmt --all --check --manifest-path rust-port/Cargo.toml
cargo check --offline --manifest-path rust-port/Cargo.toml
cargo test --offline --manifest-path rust-port/Cargo.toml
cargo build --offline --manifest-path rust-port/Cargo.toml
SDL_VIDEODRIVER=dummy SDL_AUDIODRIVER=dummy \
  LALE_EQUIPMENT_COMBAT_CHECK=1 LALE_AUDIO_COMBAT_CHECK=1 \
  ./rust-port/play-native.sh --check-live-combat
```

The explicit check generates a fresh party, performs opening dialogue,
acquisition and door events, sends real SDL key events to equip/release/equip,
then fights through victory and verifies equipped ownership after script return.
It never injects HP, equipment refs, battle flags or outcomes. Its tactical input
and advancing test clock are diagnostic only. Films have separate existing
validation; this driver starts at Otopark. Headless checks do not establish
Fedora desktop visual/input/audio acceptance.
