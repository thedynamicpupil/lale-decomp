# Reference media observations, 2026-10-14

Read `newfindings_phase5continiues.txt`, current checkpoints, graphics/loading maps and Rust inspector status. This report extends prior evidence; it does not change protected originals or earlier outputs. No REA session, emulator instance or Rust source was used or modified.

## Actual supplied media

Exactly two files were present: annotated `reference media/menu_context.png` and `reference media/2026-10-14 02-39-52.mp4`. Both were inspected. Original SHA-256 and byte sizes are in `sources.json`; `ffprobe.json` preserves container/stream metadata. A separately unannotated screenshot was **not present**. Full unannotated frames from the recording supply appearance references instead.

The video is a 73.533333-second OBS H264 recording, 640×360 at nominal60fps, with AAC stereo48kHz. These are **recording properties only**, not the game mode or internal timing. The DOSBox window size and position visibly vary during the recording. Its title reports 7000cycles/ms, which records the capture configuration rather than a recovered simulation speed.

Standalone `frame-SSS.SS.png` files preserve entire capture frames without crop/resize. Sampling uses `ffmpeg -v error -ss SECONDS -i INPUT -frames:v 1 OUTPUT.png`. JSON inventories requested seek times and PNG hashes. Contact sheets are labeled inspection aids; their display may be scaled by the viewer. Menu fades sampled every0.25s from40.00 through50.75; creation transition every0.1s from62.00 through64.00. Coarse whole-video samples every3s establish overall order. No repaired CMP or substituted screenshot was generated.

## Recorded sequence and sampled time brackets

|Video time|Observed presentation|
|---|---|
|0–6s|Animated red emblem, then RAKS NEW MEDIA wordmark visible by6s|
|9–24s|Blue3D **SILICON** wordmark animation, including moving light/projection effect|
|27–33s|Compuphiliacs circular emblem with wordmark, fading in and out|
|36–39s|Turkish disclaimer about fictional characters/events, then dimming|
|40.00s|Game area black|
|40.25–42.00s|Background artwork emerges darkly and brightens; full-looking by~42s|
|45.00 /45.25 /45.75s|Upper İstanbul Efsaneleri logo absent /partial /near full|
|48.00 /48.25 /48.75s|Central Birinci Bölüm /Lale Savaşçıları title absent /partial /near full|
|49.50 /49.75s|Four options absent /all present; no intermediate option fade in these samples|
|~50–61s|Interactive menu remains visible; different rows become white|
|62.00–62.90s|Options already absent; artwork/logo/title progressively darken|
|63.00–63.20s|Black game area|
|63.30–64.00s|Character creation emerges darkly and brightens|
|64–72s|Creation screen remains; body pose and face expression change|

These are visual sample brackets, not exact start/end events or reconstructed durations. Input, capture scheduling and emulator speed may affect them. The upper/logo/title reveal ordering is clearly separable; they must not be flattened into one static startup frame. Visual fades alone do not prove whether implementation changes palette, pixel indices or copies/blends; parent executable tracing owns that determination.

## Annotated screenshot and interactive highlighting

The green outline identifies upper logo, purple/blue identifies episode title, and red outline encloses four options. These strokes are user annotations and are absent from unannotated recording frames. The underlying appearance agrees with the final video menu. No annotation is a game asset or prototype layer.

Four visible options read `yeni oyuna başla`, `eski oyuna devam et`, `çabuk başla`, `dos'a çık`. Normal rows appear orange/red and highlighted row white in the recording. Exact RGB must not be inferred from H264 chroma subsampling or annotated still strokes.

**Selection persistence nuance:** at49.75 first row is white while pointer is far left outside the text. At54.00 DOS exit is white with pointer below it; at57.00 the same white row remains while pointer is far right. Thus the recording supports retained selection/highlight, not a rule that white can occur only while pointer is currently inside a hitbox. Mouse movement and row changes correlate, but exact hitboxes, keyboard sharing and pointer-leave rules require code. A click event itself is not encoded; subsequent fade and creation appearance support activation of new-game selection around61–62s without establishing exact input timestamp.

## Character screen agreement

At64.00 the layout strongly matches decoded IVIR/KARAKTER.CMP with parent-confirmed SAVAS/PALBAT.PAL and manual PDF page7: textured background, left gray body-view box, face above race/sex indicators, dice/check buttons and bottom-right logo. Visible live text/numerics and populated portraits/body are composited over the static background; no guessed composite was authored here.

Character #1 is shown as `erkek`, `insan`. Recorded values at64s: Boy176, Kilo70, Zeka79, Vuruş Gücü79, Kelime Dağarcığı135, Güç3, Çeviklik86, Dayanıklılık50, Batıl İnanç176, Yüzsüzlük50, İstanbulluluk92, Cesaret50, Etkileyicilik50, İnanç123. **Güç3** directly supports the previously code-identified exception to the manual's generalized minimum50. No reroll, name-edit, race or sex change was demonstrated by these samples; do not infer key mappings from them.

Body and face appearance agree with the earlier SINSAN1/INSAN1 family decodes; precise selected frame indices need the code's KOR/face selector. Motion in the recording corroborates multiple rendered poses, not any guessed frame timing or sequencing.

## Consequences and limits

Confirmed presentation order now has firsthand runtime support. Resource identities and functions still require parent assembly evidence; visual matching is separate from executable proof. Menu artwork likely involving ACILISA/B remains subject to the preserved +1-index discrepancy. This media task did not crop those streams or change strict decoder behavior.

Next comparison should use the authentic recovered layers, palette operations and original logical dimensions from code; compare matching stage frames while allowing for capture resampling/compression. Recover actual fade counters and waits rather than implementing these recorded seconds as hardcoded timings. Retained highlighting and black-separated transition should guide verification tests. No full engine or native menu implementation was begun by this subtask.
