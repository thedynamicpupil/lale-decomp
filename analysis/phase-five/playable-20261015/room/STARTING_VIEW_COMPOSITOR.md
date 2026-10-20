# Original Otopark starting-view integration — 2026-10-15

## Original execution evidence

Disposable `runtime/playable-20261015-room/run1` mounted only its own game copy
under installed DOSBox-X, normal core/fixed50000 cycles, dummy video/audio. Its
GRP was seeded from original GRPHAZIR in that disposable copy. Debugger control
skipped creation return/cinematic to reach the original area loader; this is
**not** evidence of original four-character completion or a played route.
Original world initialization and starting-view compositor then executed.

Retained `capture/` contains WORLD-LOADED-DS, ROOM-ENTRY-DS/STACK, ROOM-DRAWN-DS,
render stub and42 DRAWxx raw64-byte stack dumps. Hashes in capture-hashes.json.
DS confirms PC1(2,1), facing2, viewport200×200. Generated DS:b72a supplies37×18
projection records, retained separately verbatim and as signed-word display.
Runtime return CS357e is an observation, not a stable original segment.

Original1662 code starts at physical28430h. Every captured return IP matches an
original far call immediately before that return: rectangular target descriptor
0028:0430 or scaled0028:0c5a (relocated logical0ac6). Tests check original call
bytes and every compiled command argument against these raw captures.
No synthetic wrapper or DOS binary was run directly on Linux.

A subsequent root-controlled emulator run independently reached menu resident
0e00:133e, main creation call0d6a:059c, reader/film call0d6a:063c and original
loader return0d6a:0706. It used explicit BIOS Enter and register control to skip
creation/film. It did not yield a separate final-frame dump and is not a pixel
comparison. The emulator was stopped; no source file was patched.

## Native draw implementation and precise limits

`otopark_start_commands.rs` retains the42 observed call argument tuples.
`otopark_room.rs` resolves original image slots using loader literal identities
and descriptor-pointer aliases retained in DS:
25 DUVAR2,30 KAPI3,37/47 YER2,39/49 YER5,57/61 TAV2A,79 UFUK1.
All alias descriptors are checked byte-for-byte against captured DS.

Rectangular call parameters are sx,sy,width,height,dx,dy,source slot,destination
slot,callback far pointer. Destination66 is the200×200 viewport. Source
0ac6:0430 at original physicald490 loads descriptor strides and pushes transparent
key254 atd61e; callbacks0341/03c4 copy normally/horizontally reflected, as
previously REA/instruction verified. Native clipping preserves source indices.

There are three scaled calls (indices21/23/25). The native starting-view path
**does not approximate their scaler**. Before omitting each, it replays all later
exact rectangles into a coverage mask and requires every possible affected
pixel to be overwritten by non-key original pixels. A failure rejects rendering.
This is valid for the captured view only and cannot justify general navigation.

39997 of40000 viewport pixels are established by the captured command/resources.
Pixels(194,199),(195,199),(196,199) remain untouched by all commands and their
prior bank bytes were not captured. They are displayed as host black and remain
explicitly unverified. This is not a claim of original framebuffer pixel equality.
The native export was inspected against the indexed original enclosed room:
brick walls, gray ceiling and wooden floor match the visible structure. Lossy
recording pixels are not used as exact palette/index fixtures.

The200×200 viewport is centered in a320×200 native inspection canvas; no guessed
HUD/compass/party panel is introduced. No moving camera, turns, collision, dialogue
execution, pickup ownership or battle is simulated. General five-layer cell
selection/generated projection/scaled drawing remains the next engine extension.
The room is accessible at F11, standalone, and after new native party/film completion.
