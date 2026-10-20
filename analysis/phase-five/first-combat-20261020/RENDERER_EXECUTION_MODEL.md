# Tactical renderer execution model — 2026-10-20

Additive Phase1 **static original-instruction evidence**, no DOS runtime comparison or native implementation. Read against [terrain/setup audit](TERRAIN_RENDER_ARCHITECTURE.md). Original overlay1694 base physical49c50 and retained bytes are verified there. Main source is [retained assembly](../area-fields-20261015/attributes/overlay-1694.asm); instruction ranges below are original executable physical offsets. Any displayed objdump64K target wrap must be corrected using original16-bit IP.

## Main compositor1694:2721 / physical4c371

Entry physically begins55 at4c371; the retained linear disassembly mistakenly combines it with a preceding ES prefix at4c370. Real entry must be decoded independently when importing a function. The source gate at4c377..4c38c compares resident bytesDS9672 andDS9792; unequal skips drawing. Meaning/cadence of these counters is not proven here.

When permitted, physical4c38f..4c3b2 invokes encoded0020:068a with descriptorsDS:e2a7/e2a9 (image1) andDS:e2cf/e2d1 (image6). Thus image1 ANAKES is the base copied into the image6 compositor target. This descriptor relationship uses the already established8-byte image table beginningDSe29f. Confirm resident helper copy direction against a frame capture before pixel acceptance.

### Painter order and projection

The earlier camera-window inference is now instruction-confirmed as a **7×7 tactical-cell render window**:

- Outer coordinate A=DSd5c8 starts cameraA=DSd57e and increases throughcameraA+6.
- Inner coordinate B=DSd5ca startscameraB=DSd580+6 and decreases throughcameraB.
- Each current square renders its ground, optional target highlight, wall, then actor before advancing. This is source ordering, not an interchangeable list of draw calls.
- Terrain reads `DSc8ee+56*B+2*A`; occupancy reads`DSc2ce+56*B+2*A` (4c3ca..4c3f1). Do not transpose native arrays inadvertently.

Define local a=A−cameraA and b=B−cameraB. The ordinary ground anchor is:

`x=30*b +14*a +10`, `y=14*a +24`.

Source instructions4c6c0..4c6f0 call helper02d1 using these x/y and terrain type1..9. Highlight type10 uses same x and y−1 (4c70c..4c73b), whenDSd57c==1 and square matchesDSd578/d57a. Terrain0 draws no ordinary tile; it may draw highlight10 and renders an occupant with vertical adjustment20 (4c4bf..4c51f). Ordinary occupied squares use adjustment0 (4c73e..4c74c). This adjustment is original presentation behavior, not a movement cost.

Terrain>9 first draws a base tile using wordDS2616+2*terrain (4c52b..4c567), then high wall type`terrain+6`, at x=30*b+14*a+7 and y=14*a−12. If wall-transparency tests pass, use type15 instead (4c675..4c6bc). Those tests include active entityDSd576 occurring in one of five neighboring occupancy positions and target-coordinate proximity while targetingDSd57c==1. The exact five nearby occupancy offsets are c306,c304,c2cc,c302,c300 relative to56*B+2*A (4c3f4..4c460); retain their raw offsets before naming screen sides. This is specific original wall-replacement logic; blanket alpha-transparency would be inaccurate.

After all49 squares, the compositor draws a front-facing actor/target on the pedestal (anchor142,75, direction3) using0387, calls0d1b/physical4a96b for minimap, branch-selected panel helpers (physical510c0/511c4), action-highlight candidate (physical4bd9e), damage text and speech. Final present calls0be1(6) at4c8ad..4c8b3. Optional source wait10 followsDS6318 (4c8b4..4c8c3).

## Tile/wall primitive1694:02d1 / physical49f21

Arguments are x,y,type. Encoded0028:0430 is the established rectangular copy wrapper with explicit keyed callback3599:0341. Destination is image6.

| Type | Source image | Source rectangle | Destination |
|---|---|---|---|
|type<14|2=YERICON|sx=50*(type−1),sy0,w43,h35|x,y|
|type>=14|18=assembled wall atlas|sx=50*(type−14),sy0,w50,h60|x,y, with clipping below|

Source instructions49f27..49f41 distinguish classes,49f44 subtracts13 from type so the common `(type−1)*50` produces wall striptype−14. Keyed callback and image slots are direct push arguments. Wall clipping with y<0 changes source sy=−y, destination y0 and height60+y (49f48..49f70). Other wall width is min(50,image6_width−x) using **unsigned compare** (49f72..49fab); preserve16-bit arithmetic rather than silently introducing a generic modern clip policy. Bounds beyond this branch remain the copy wrapper's responsibility.

## Actor sprite helper1694:0387 / physical49fd7

Shared with character creation; no standalone combat sprite format is invented. Inputs include mutable x/y anchor pointers, image slot, direction/pose. DescriptorDSe337 is the seven-set KOR storage populated by0570.

1. Normalize direction by subtracting100 if>=100, then byte−1. Map index3→1 with mirror; indices4..6 decrement; index7→4 with mirror (4a008..4a044). Thus eight caller directions map onto six source records, with two reflected orientations. For input>=100 the routine computes bounds/anchor outputs but skips final image copy (4a184..4a1be).
2. KOR address is `base +12*(6*(imageSlot−11)+normalizedIndex)` (4a058..4a0b3). Handle-backed and direct-pointer variants are explicit. Each record holds x0,y0,x1,y1,anchorX,anchorY as six words.
3. Width=x1−x0+1; height=y1−y0+1. Normal destX=inputX−(anchorX+4−x0); reflected destX=inputX−(x1+4−anchorX). DestY=inputY−(anchorY+8−y0) (4a0c1..4a136).
4. Mutable input anchor pointers receive `(destX+signed(width/2)−13,destY+signed(height/2)−13)` before clipping, with explicit negative-y adjustments (4a139..4a181). These output values are not the original input origin; callers use them later for effects/text.
5. Final masked copy into image6 chooses3599:0341 forward or03c4 horizontal reversal, source imageSlot, rectanglex0/y0/width/height and adjusted destination (4a184..4a1bb). Existing primitive evidence establishes transparent index254.

### Actor dispatch1694:3955 / physical4d5a5

Generic idle branch4db42..4dba6 computes input anchor:

`x=30*b+14*a+34`, `y=14*a+40+verticalAdjustment`.

Image slot is actor fieldDSa090+40*entity +10; direction isDSa08e+40*entity. It invokes0387. Image-slot group5 means slot15, matching first encounter KOPEK loader group.

**This helper is not pure rendering.** If current occupancy entity equalsDSd576, action-mode branches modify fields, effects and animation state. E.g. physical4d61a..4d683 mutates numeric party fields;4dae4..4db05 consumes RNG; other branches updateDS6318/631e and speech fields. Native host must separate verified simulation scheduling from repeatable redraw; blindly calling this routine's mutations every SDL frame would change gameplay. Full active-action transcription and timing remain missing.

##0be1 presentation and0b80 text wrapper

1694:0be1 /physical4a831 calls encoded0030:0204, then0020:068a from selected image descriptor to image0 descriptor, followed by0030:0069 using resident palette/status byteDSe5e3. It presents/copies image6; it does not define battle projection.

1694:0b80 /physical4a7d0 is a **text helper**, not the battlefield blitter. It clamps negative second/third positional arguments to0; mode1 calls encoded0180:0034 with an extra5, otherwise0180:0039, always destination6. In2721 it renders damage text at coordinates derived fromDSd5d0/d5d2 and changes flagDS631c. Exact font/color/mode semantics of0180 helpers must be recovered before recreating text effects.

## Missing callees and limits

These findings suffice to identify source assets,49-square ordering, tile/wall rectangles, actor anchors and KOR indexing. They do not certify complete tactical visuals or authentic initial state. Remaining concrete dependencies:

-02d1's resident0028:0430 descriptor clipping/bank behavior in this320×200 target; reuse proven primitives only where signatures agree.
-3955 active action/movement/attack/hurt branches and source scheduling, including side effects described above.
-0d1b /physical4a96b minimap's complete colors, party/target marker selection and output rectangle.
-Original image1 ANAKES background copy semantics, exact frame compared to DOS indexed target/palette.
-Physical510c0/511c4 character/enemy panel selection; physical4bd9e action highlight; physical4b33b speech text;0180:0034/0039 fonts/effects.
-Camera setters0c40/physical4a890 and any manual camera input/reorientation paths; current mapping does not establish whether orientation changes mutate grid representation.
-The meaning/update frequency of gateDS9672/9792 and state-change-driven redraw.

No native tactical screen should be accepted solely because these primitive outputs look plausible. Root-owned targeted runtime capture remains the verification boundary.
