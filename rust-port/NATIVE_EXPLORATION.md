Current continuation,2026-10-23: exploration and world inventory/equipment are
user-accepted. [K short camping](NATIVE_REST.md) is now implemented within its
explicit support boundary and awaits desktop acceptance. Earlier exclusions below
are historical where superseded by that guide.

# Native exploration display — 2026-10-22

Run from the project root:

```sh
./rust-port/play-native.sh
```

Create/reload a native party and enter Otopark using the existing route. The
original exploration artwork now surrounds the cropped room view. Four right-hand
rows show names/portraits, three equipped items, Güç/Damak and two original raw-word
gauges. The original compass follows turning. The clock reads the shared game
clock; it does not tick with host wall time.

Desktop checks for this new display remain pending:

1. Check four rows, Turkish text, portraits, gauges, compass and clock visibility.
2. Turn Left/Right; check the cropped view and compass without panel corruption.
3. Play opening/north-door dialogues and acquisition; check their full-screen
   overlays and restoration after closing. Let the door/illustration run.
4. Equip/release the stone in battle using the accepted I/Enter/Enter and Q flow.
   Win and check that exploration reflects live HP and equipped icons afterward.
5. F12 toggles developer observations; F7 exports the composed clean display and
   separate debug pixels without changing game state.

Movement/combat controls are unchanged. World party-information/inventory controls
and clicking the background control icons remain unfinished. Nonliving portrait
transitions, movement jolts and gauge heights outside the supported idle range
retain the earlier canvas. These are explicit gaps in the new display, not
implemented status mechanics. Battle/audio desktop acceptance from the previous
session is retained; this new display has only automated/native preview checks.

[Evidence and next work](../analysis/WORLD_EXPLORATION_PANEL_CHECKPOINT_20261022.md).
