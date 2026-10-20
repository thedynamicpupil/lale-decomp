# Walkthrough reference index — 2026-10-15

## Cache and timestamp contract

Authoritative visual cache: [visual-index/INDEX.md](visual-index/INDEX.md), with
per-video JSON, ffprobe metadata, retained sampling logs, 125 coarse JPEGs and
20 targeted PNGs. `tools/extractors/index_walkthroughs.py` reads recordings only;
SHA256 binds each cache to its source. Reuse the same output directory to inspect
cached sheets or add targeted frames. Source PTS labels are recording positions,
not DOS timer ticks, input events or proof of animation cadence. Coarse spacing is
10 seconds for videos1/2 and20 seconds for videos3–5. Full-resolution targeted
frames use accurate input seeking; filenames identify requested recording time.

The initial exploratory `video-index/` cache is superseded: its ffmpeg fps filter
selected frames within sampling windows, so nominal labels could differ by up to
half an interval. Its INDEX explicitly redirects here. No conclusions below use
those nominal coarse labels. The authoritative cache uses `select` and retained
`showinfo` source presentation timestamps. No repeated full-video processing is
needed to continue; only requested new frames are decoded on cache reuse.

## Priority recordings — visual observations only

All times below refer to the authoritative source-PTS contact sheets or named
targeted frames. These are samples, not asserted exact scene boundaries.

| Recording/time | Visible observation | Cross-reference / limits |
|---|---|---|
|1,00:00 and00:10|Last dark live-action footage is still visible.|Existing SEQ1–5 native decode/playback accepted. This recording begins near the film end, not party creation.|
|1,00:12 /00:15 targeted|Black transition at12; at15 an enclosed brick-walled room, gray ceiling, wooden floor, compass-hand overlay and four-character right panel.|Main success→reader→SEQ→area0 is prior executable evidence. The15s room view is retained in authoritative cache. Black12s alone does not establish the fade algorithm.|
|1,00:20|Opening line `Nooluyo yaa? o neydi öyle` with first party portrait.|Corroborates prior PCS1 group5 decoded payload1280, speaker selector1. Full ten-line order remains prior executable evidence; this sparse index does not measure every line.|
|1,00:30–01:10|Different party portraits accompany opening dialogue; room remains behind text.|Prior ten selectors1,2,1,2,3,1,3,4,1,3 and flag249 retained. Video timing is user-dependent dialogue/input timing.|
|1,01:20|Room before door-facing event.|No input logging: no claim about exact turn/movement command.|
|1,01:25 targeted|Front wooden door; outside-growl yes/no prompt is visible.|Prior binary mapping places this offer in separate adjacent(2,0)/group0, not initial(2,1)/group5. Recording alone does not establish grid coordinates.|
|1,01:30|Stone suggestion line with fourth portrait in this party.|Prior selector5 reuses speaker state; not a fixed named/fourth speaker rule.|
|1,01:35 targeted|Acquisition panel expands at bottom, room/right panel shifts upward; tooltip reads `Sivri daş (1)` and a stone icon is in lower-left pool.|Item2 is proved by prior opcode9 and indexed-name lookup, **not** this `(1)` display suffix. No transfer/owner byte claim.|
|1,01:45 /01:54 targeted|Panel remains open; stone icon still in first lower pool cell; tooltip no longer present.|Mouse hovering/selection and ownership are not recoverable from sparse stills. Must trace46591 transfer writes.|
|1,01:57 targeted|Panel closed and front door remains.|Closing panel does not independently prove acceptance or inventory ownership.|
|1,02:00 /02:05 targeted|Large snarling dog sprite over room; line `Hırıltılar bundan geliyormuş !!!` visible at125s.|Encounter display confirmed visually; trigger/collision/battle operands still require executable trace.|
|1,02:10 /02:20|Black sample at130; separate isometric battle view by140.|Useful transition bracket, not exact cut timing or recovered battle rules.|
|1,02:20–03:20|Party and dogs on isometric tiled battlefield; camera orientation changes.|Manual16–19 describes combat; no formula, geometry or camera algorithm inferred from video.|
|1,03:30–04:30|Returns to room, open doors/corridors, then staircase.|Battle return observed. Outcome bytes, rewards and navigation not implemented.|
|2,00:00|Staircase view at start of second recording.|Continuation supports multi-storey route; recording filename alone is not geometry evidence.|
|2,00:10–01:10|Doors, long perspective corridor, prone-person interaction and acquisition panel.|Future bounded renderer/event reference; no guessed NPC/item semantics.|
|2,02:20 targeted|Stairs with `Otoparktan çıkmak istediğine emin misin?` choice.|An Otopark exit prompt is now visually anchored; exact bank transition still must be traced.|
|2,02:25 targeted|Enclosed room now has orange wooden ceiling and gray floor.|Shows need for cell-dependent surfaces; not a single UFUK bitmap room.|
|2,02:30–03:00|Upper route, large hooded/skeletal figure, dialogue.|Do not infer handler/NPC ID from appearance.|
|2,04:46 targeted /05:00 targeted|Orange-ceiling passage leads to open sky above stone walls/arches; exit/city dialogue.|UFUK remains a candidate distant background. Which UFUK bank/palette is used here is not proved by resemblance.|
|2,05:20–08:30|City-facing corridor/exterior, illustrated NPCs, party information screen, more doors/arches.|Reference for later Mecidiyeköy increment; not complete map adjacency.|

Video1's first-room composition is a useful future pixel-comparison target:
320×200 original view is embedded in a640×360 encoded recording with margins and
lossy compression. Do not use video RGB as exact palette indices or assume a
resize reproduces source pixels. Exact crop/scale must be established before
pixel assertions. Original CMP/PC1/PCS1 bytes remain the implementation source.

## Later recordings indexed for future milestones

- Video3 (285.68s): illustrated history panels and overlaid prose (20–240s), then
  hooded elder dialogue (260s). At20s the prose begins `bosfor savaşından elli
  billah kadar önceydi`, consistent with the separate resident1df61h text. This
  is a **candidate consumer association**, not a newly traced executable call.
  It differs from the opening live-action embedded title ending **Sonra**.
- Video4 (334.63s): room/character information; acquisition around80s; illustrated
  opponent at100s; separate isometric fight120–280s; room return300s and stairs320s.
- Video5 (248.42s): live-action ending0s; city travel map20–120s with day/night
  changes. At120s the visible prompt names Beşiktaş. Room entry140s and further
  room/door/dialogue views through240s. Travel time/rules are not inferred.

## Manual and Rust cross-reference

Direct PDF page images12/13 were reviewed (new renderings under `manual/`).
Page12 says party portraits/F1–F4 open character information and describes item
selection via mouse/Enter and equipment placement. Page13 describes transferring
to another portrait/F1–F4 and trash/F5; it does not prove the opening acquisition
handler's owner/accept/cancel mutation. Existing manual index identifies20 as
Sivri Daş melee and22 as distinct ranged Daş. These remain **MANUAL-DOCUMENTED**.

Existing Rust:
- `character_generation.rs` and `creation_session.rs`: formula/explicit-state
  diagnostic, not automatic lifecycle. None of these five videos records creation.
- `seq_preview.rs`: original SEQ pixel streams; video1 supplies an independent
  end-of-film/room comparison opportunity, not original audio-ring validation.
- `pc_map.rs`: PC1 initial(2,1), facing2 are prior executable-verified. Videos
  supply surface/door/stair appearance targets, not missing cell-field meanings.
- `otopark_background.rs`: UFUK inspection was background-only. No view from this
  index licenses replacing actual room composition with UFUK.

## Next targeted use

Creation is still highest priority: use controlled original DOS observations,
because no new recording covers the callback/RNG/name/four-slot lifecycle.
For Otopark, compare the15s initial room against generated projection records,
floor/ceiling slots and five layer consumers before claiming a scene renderer.
For item ownership, inspect a short90–117s window only after recovering transfer
writes, rather than repeatedly scanning all video1. Preserve the distinction
between observed presentation and executable-confirmed state changes.
