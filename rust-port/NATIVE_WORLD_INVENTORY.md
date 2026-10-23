# Native world inventory — Fedora controls, 2026-10-22

Launch from the project directory:

```sh
./rust-port/play-native.sh
```

The previous exploration panel is user-accepted on Fedora KDE. The world
information/inventory interactions are also user-accepted on Fedora KDE.

- **F1–F4** opens the original character information screen for that party member.
  In its overview, F1–F4 switches members. Clicking the exploration portraits also
  opens it when the world is idle. Hover over carried/equipped icons to inspect names.
- **I**, **Left/Right** selects a carried slot; **Enter** chooses an equipment
  destination, **Left/Right** changes destination, and **Enter** equips. The default
  destination is the primary hand. Alternatively click the carried icon, then the
  leftmost equipment box under the portrait.
- **Q/W/E** in the overview releases primary hand/secondary hand/clothing.
  Release an equipped item before transferring it. New secondary-hand assignments
  remain unsupported; supported assignments are primary items1–25 and clothing27–32.
- With a carried item selected, **F1–F4** or a small portrait transfers it to that
  member's first empty slot. The giver stays selected; press the recipient's F-key
  again to inspect them. Full inventories and worn items reject transfer.
- **Escape/right click** cancels item/destination selection to the overview, then
  closes the overview. The original **X** also closes it.

## Test the complete early route

Create/choose the party, watch the opening, and acquire Sivri Daş into the desired
member's inventory. Close acquisition with Escape. **Press F1–F4 during the door
opening** to suspend it and open information. Select Sivri Daş with I/Left/Right,
then Enter, Enter to equip it in the primary hand. Inspect or release/re-equip it,
then Escape back to exploration. The door/encounter resumes. Fight the dog using
the accepted combat controls. After victory, open F1–F4 and inspect the retained
item/equipment and updated character values.

The door access window is a native host accommodation for the currently automatic
route, not verified original DOS access timing. No item is automatically equipped.
Information presentation suspends event/clock progression and consumes no RNG.

Original use/consume, discard, spells, settings/save and other unimplemented
buttons are not enabled. F5 remains the existing optional debugger pause; F7/F12
remain optional debug export/overlay controls. Hunger, fatigue and camping are outside
this milestone. See [checkpoint](../analysis/WORLD_INVENTORY_CHECKPOINT_20261022.md)
for source evidence and validation limits.

For the new K short-camping foundation, see [rest controls](NATIVE_REST.md).
