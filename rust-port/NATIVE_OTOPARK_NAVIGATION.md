# Native Otopark continuation — 2026-10-23

From the project directory on Fedora KDE:

```sh
./rust-port/play-native.sh
```

Both **Çabuk Başla** and normal party creation use the same navigation/event host.
Play the existing opening, collect/equip Sivri Daş and win the dog battle.
The latest postbattle unconscious-party panel fix still awaits desktop confirmation.

- Left/Right: quarter-turn. Up: forward one cell. Down: backward one cell.
- Doors open and move through automatically after their original event allows it.
- Stairs are forward-only. Face them and press Up; backward attempts stay blocked.
- Space advances supported dialogue/illustrations after their original input gate.
- E/H answer the original Evet/Hayır questions. Inventory and F1–F4 work as before.
- Optional F12 shows native debugging; ordinary play does not need it.

Directions below are absolute: N=north/facing0, E=east/facing1, S=south/facing2,
W=west/facing3, as shown in the window title. For each direction, turn with
Left/Right, then press Up the indicated number of times. A number counts cells,
including automatic door/stair passage. Finish any intervening dialogue/choice
before continuing. These are testing directions, not a route built into gameplay.

## Fainted man and exit key

After victory you are at PC1(2,0). One original-map route to the man at PC1(8,1):

```text
W, S2, E, S2, E2, N4, E, S3, E, S, E, N4, E2, S, W
```

This includes the smell dialogue at(1,2), doors and the stair passage(4,0)→(5,0).
The man appears in original IKON32.CMP. Advance the illustration, answer **E**
to search him, then use the familiar loot window: click the offered item and an
empty carried slot; F1–F4 choose a recipient. Escape closes the loot window.
Let the original key-found dialogue finish.

The original script records the **exit key as story flag2**, separately from the
visible carried loot, item3 **Kısa Zopa**. It also grants its original resource
quantities. Do not look for an invented key inventory icon. Hayır declines the
search; returning later offers it again. After a completed search, revisits show
the original repeat illustration/dialogue without duplicating loot.

One route from the man to the exit approach PC1(1,5):

```text
E, S6, W, S2, W3, N4, W3, S4, W2, N2, E, N2
```

Answer intervening original confirmations as desired. From(1,5), face **west**
and press Up. Without the key event, the party refuses and remains in Otopark.
With it, **H** stays; **E** loads Mecidiyeköy PC2(3,22), facing west. No second
step is applied. You can turn north and pass the next door to PC2(3,21).

## Current boundary

Stairs use the original **animation-disabled**73d8/6f18 branches: an immediate
single coordinate commit and authentic destination redraw, plus the original
stair sound. This is the native presentation choice for this increment, not a
claim that these are the default DOS settings. Animated stair zooms remain pending.
Normal doors retain their existing four-stage original animation.

The next northward cell PC2(3,20) reaches original event opcode25 `[09]`, whose
side effect is not yet hosted. It remains explicitly pending; no result or
flag82 is fabricated. Mecidiyeköy services/random encounters and general save/load
are outside this increment. Esc returns from an unsupported host to the menu.

K remains the existing short safe camp command; no camping rules or presentation
preferences changed. F1–F4 during a door remains an accepted native accommodation.

## Automated native route

```sh
SDL_VIDEODRIVER=dummy SDL_AUDIODRIVER=dummy \
LALE_AUDIO_COMBAT_CHECK=1 LALE_WORLD_INVENTORY_CHECK=1 LALE_NAVIGATION_CHECK=1 \
./rust-port/target/release/lale-menu-reference --root . --check-quick-start
```

For a created-party route use `--check-live-combat`; optionally add
`LALE_REST_CHECK=1` to exercise its supported60-minute postvictory camp first.
Do not add that rest check to the ready-party route: its135-minute camp is outside
the existing short-camp boundary. `LALE_NAVIGATION_FRAME=EXISTING_DIRECTORY`
exports native indexed/palette frames. The test driver computes paths from PC
edges and sends SDL direction keys; normal play never runs that driver.
