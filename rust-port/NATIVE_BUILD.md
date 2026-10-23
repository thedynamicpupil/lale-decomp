# Native Rust build — 2026-10-19

2026-10-23: playable post-dog Otopark navigation/search/key/exit now reaches
Mecidiyeköy in both party modes. See [Fedora route and remaining boundary](NATIVE_OTOPARK_NAVIGATION.md).
This continuation and the latest unconscious-panel fix await desktop acceptance.

2026-10-21 update: the first battle/victory/world return is user-passed on Fedora
KDE. Shared menu, film, world and combat audio is now enabled; see the
[native audio listening checklist and limits](NATIVE_AUDIO.md). The development
launch remains `./rust-port/play-native.sh`; release uses the command below.
SDL2 and `libopenmpt.so.0` must be available. Older capability notes below
are superseded by the current audio and battle checkpoints.

For room state inspection, pause and snapshot export, see [native debugging](NATIVE_DEBUG.md).

From the project root:

```sh
./rust-port/play-native-release.sh
```

The script builds the optimized native Linux application offline and launches it
with the original resources. It also works when called by absolute path from
another working directory. SDL2 must already be available. Nothing is installed.
`play-native.sh` retains the development build.

Choose **Yeni oyuna başla**. Create and name four characters to continue through
the five original film streams, Otopark and the opening party dialogue. Creation
checkpoints are new files under `runtime/native/parties/`; these are not complete
world saves. Escape can skip the completion film under the existing native policy.

In the room:

- Left/Right turns; Up/Down attempts a forward/backward step against the original
  directional state and synchronous event gates. These are native host bindings.
- At the starting north door, Up opens the Evet/Hayır choice. Evet leads through
  the stone dialogue and original acquisition interface.
- Select the upper-row stone, then a lower inventory slot. Portraits or F1–F4
  choose the recipient; selecting the reverse rows swaps back. Right click clears
  selection. Esc/the close control finishes acquisition and starts the timed door.
- The destination illustration and warning follow. **The build stops at the dog
  encounter. Combat, earning the key and continuous PC1/PC2 exploration are still
  incomplete.** Esc returns from that barrier. No victory or key is granted.

Shared walking, live-cell turns and the original PC1→PC2 area-load path are now
integrated. The latter has conditioned automated validation matching prior DOS
trials, not a normally reachable route past the unrecovered encounter/key events.
Unknown services, selectors and animated transitions remain explicit barriers.
F11 opens a room inspection without a live party; party-dependent events stop.

To reopen a previously created native party at the beginning of Otopark:

```sh
./rust-port/play-native-release.sh --native-party runtime/native/parties/party-EXAMPLE.dat
```

That restarts the room/event state; it does not restore an inventory or a battle.
Original music/mixing/fades, exact RNG polling, appearance13 and full save/load
remain incomplete. Prior desktop acceptance is preserved; the latest movement
integration still needs Fedora acceptance.

Validation commands:

```sh
cargo test --offline --workspace --manifest-path rust-port/Cargo.toml
cargo build --release --offline --workspace --manifest-path rust-port/Cargo.toml
cargo fmt --all --manifest-path rust-port/Cargo.toml -- --check
SDL_VIDEODRIVER=dummy SDL_AUDIODRIVER=dummy rust-port/target/release/lale-otopark-room --root . --check-door-choice
```
