# Automatic menu and character milestone — 2026-10-14

Run from the project root:

```sh
rust-port/target/debug/lale-menu-reference --root . --vga-aspect
```

Startup now runs automatically: background palette fade, upper logo lookup blend,
episode title lookup blend, then interactive menu. Company intros are excluded.
New Game fades into the character screen; cancelling the first character fades
back to the menu. `--manual` and `--stage 0..31` retain the resource study controls.
`--dump NEW_DIRECTORY` writes indexed frames, PPM previews and a logical counter timeline.

The schedule follows executable counter constants, including the two initial
1000-unit holds and thirteen 90-unit presentations per lookup blend. The native
clock models the recovered PIT registration. It does not emulate VGA retrace,
original preparation costs or audio-driven PIT retuning; capture-exact wall-clock
pacing remains unverified. Palette interpolation and lookup composition remain
separate operations.

The character screen uses original face strips, masked body sprites, KOR anchors,
mirrored poses, race/sex symbols, font and palette. Fifteen body sets decode;
appearance 13 retains its strict CMP error and shows the original background
without a replacement body. Pose cycling is implemented; random face blinking is pending.

Character controls:

- Left/right (keypad 4/6): appearance; up/down (keypad 8/2): race.
- C: sex; Tab: edit name; Enter accepts a name, Escape restores it.
- Space: advance to the next named slot; Escape: previous slot, or leave slot one.
- Mouse controls use the recovered body, face, race, sex, name, dice and navigation rectangles; right-click reverses applicable choices.

C and Tab follow recovered BIOS key codes. The manual's keypad 5/0 descriptions
remain unresolved. Names use recovered glyph measurements and DOS casing with
explicit Turkish input conversion. Four drafts are retained in memory.

Fresh numeric generation is deliberately incomplete: numeric cells stay blank,
reroll requests report the missing generator, and final confirmation cannot enter
gameplay. The recovered RNG primitive is available, but the full stat formulas,
call order and seed relationship have not been established. No party file is written.

For inspecting genuine saved numeric data instead:

```sh
rust-port/target/debug/lale-menu-reference --root . --party-reference lale/GRP.DAT --stage 31 --vga-aspect
```

These are loaded original party values, not newly rolled characters. Identity
changes invalidate dependent values where the verified handler requires it.
Saving, gameplay, audio playback, Windows validation and complete character
creation remain pending. The user's seven successful KDE checks apply to the
preceding menu build; this milestone has automated and SDL dummy-driver validation,
not a new user desktop acceptance result.
