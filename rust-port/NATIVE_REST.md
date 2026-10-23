# Native camping — Fedora, 2026-10-23

From the project directory:

```sh
./rust-port/play-native.sh
```

After returning to normal exploration, press **K**. A supported camp shows the
original fixed party illustration in the navigation viewport for approximately
**3.0 real seconds**, then automatically returns to exploration. No extra Escape
is required. The original “Kamp yapıyoruz...” text appears during camp; afterwards
“Huzur içinde bir kamp geçirdik” appears as a nonblocking notice. It clears on the
next action or expires automatically using the same configured interval. Press **F1–F4** afterwards to inspect recovery and equipment.

**Escape/right click during camp** still cancels and returns directly. Recovery
is the original prefix of camping steps, including its cancellation tick. A
refusal message also disappears automatically after the configured interval;
Escape/right click can dismiss it sooner. F5/F7/F12 remain optional debug controls.

## Change the presentation duration in one place

Edit **only this setting** in
[`crates/lale-runtime/src/world_rest.rs`](crates/lale-runtime/src/world_rest.rs):

```rust
pub const CAMP_PRESENTATION_DURATION_MS: u64 = 3000;
```

For five seconds change3000 to5000, then launch normally; the launcher rebuilds
offline. No mechanics, renderer or other timing setting needs changing. This is
a user-requested native presentation preference, not original DOS timing. The
interval starts after the first successful frame presentation. Slow rendering
can make the observed return slightly later than the configured value.

The presentation distributes the same ordered camping steps across that real
interval. A completed camp retains exactly the same game-time advancement,
Güç/Damak recovery, hunger/fatigue, timer expiry, item ownership/equipment and RNG
for different presentation durations. Early cancellation retains the steps
already reached plus the original input-check tick. It does not grant full rest.

Current gameplay limits remain: Otopark rate0 camps up to120 game minutes, without
permanently dead members. Long/risky/dead-member cases are unavailable before
mutation. Afakan combat is not implemented. K is supported; the camp icon is not
yet clickable. Full-health/full-Damak characters can receive the original not-tired
refusal even with high fatigue. Rest can increase hunger; it does not resurrect
permanent deaths.

The fixed image is **IKON.CKD / IKON79.CMP**, paired with **IKON79.PAL**, never
character-dependent or generated. Its transparency retains the current room and
its palette changes only the first128 colors during presentation. The original
scene/UI palette returns automatically. Full original DOS camping-interface
pixel/timing parity is not claimed; the accepted native viewport framing is used.
The main exploration panel now stays visible for unconscious/dead members, with
original indexed portrait shading. This applies to both Çabuk Başla and created
parties; no rest is required merely to restore the panel.

The user accepted the preceding basic camping gameplay on Fedora KDE. The new
illustration/automatic three-second presentation awaits desktop acceptance.
[Checkpoint](../analysis/CAMP_PRESENTATION_CHECKPOINT_20261023.md).
