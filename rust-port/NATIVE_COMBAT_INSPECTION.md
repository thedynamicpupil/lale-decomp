# Native prepared-state combat inspection — 2026-10-21

This connects the shared combat kernel to native SDL input and the original-resource
battle renderer. It is **not a playable battle or a live-world encounter host**.
Normal creation→films→Otopark still stops at pending opcode8.

From the project root:

```bash
./rust-port/play-native.sh --combat-snapshot \
  analysis/phase-five/combat-runtime-20261020/capture/P01-BEFORE-DS.BIN
```

The explicit input is a retained original 64KiB DS state, never a screenshot or
native default. Sprites, terrain graphics, background and palette are decoded
from the original resources. Creature identity, party appearances, actors,
occupancy, equipment-derived fields and RNG come from the supplied state.
The diagnostic accepts other compatible prepared states; no dog action sequence
or encounter-specific outcome is scripted.

- Arrows/keypad/Home/End/PageUp/PageDown request original directional actions.
  On the P01 input above, **PageUp** attacks the occupied diagonal square:
  raw3, roll1, net damage2, enemy HP3→1, allowance10→9.
- Tab selects the next eligible original initiative actor and stops before its
  turn presentation. It does not grant free actor selection or skip enemy turns.
- F7 writes a fresh directory under `runtime/native/combat/` with clean indexed
  pixels, six-bit palette, PPM and diagnostic state. These are not game saves.
- Esc/window-close exits this inspection.

After an action, the window title identifies its pending original boundary.
Further gameplay keys are deliberately ignored. Movement reactions, action/turn
presentation, sound-pitch RNG ownership, effects, equipment UI, round scheduling
and world return cannot be silently skipped. The title provides diagnostics;
the original bottom status text and action animations remain incomplete.

To inspect the earlier independently verified player Down step instead:

```bash
./rust-port/play-native.sh --combat-snapshot \
  analysis/phase-five/first-combat-20261020/capture/BATTLE-INPUT0-DS.BIN
```

Press Down once. This updates actor25 from(15,2) to(15,3) and allowance10→9,
then stops before the later presentation-owned RNG draw.

The automated native check calls the same key handler and presents its result
through SDL; it does not prove physical desktop keyboard input or Fedora user
acceptance:

```bash
SDL_VIDEODRIVER=dummy SDL_AUDIODRIVER=dummy \
  ./rust-port/play-native.sh --combat-snapshot \
  analysis/phase-five/combat-runtime-20261020/capture/P01-BEFORE-DS.BIN \
  --check-combat
```

`combat_session::CombatSession::new` accepts a `PreparedBattle` independently of
the diagnostic reader. This is the reusable native integration point for future
live-party initialization. Unsupported action errors leave simulation state
unchanged. Redraw never consumes RNG or repeats progress awards.

The subsequent entry milestone adds `PreparedBattle::from_live_party`, backed by
the tested original64f5/6345 conversion and source-owned music/terrain/placement
chronology. It takes caller-owned records/state/settings and stops at the initial
turn presentation boundary. It does not enable ordinary opcode8 or alter the
inspection controls above. See
[entry checkpoint](../analysis/LIVE_PARTY_COMBAT_ENTRY_CHECKPOINT_20261021.md).
