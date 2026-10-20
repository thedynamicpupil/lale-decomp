# Actual north-door dialogue calls and RNG — 2026-10-16

Fresh owned DOSBox-X session64818 uses runtime/world-dialogue-20261016/run1.
All20 copied originals were checked against the retained source manifest before
launch; only the owned GRP was seeded from original GRPHAZIR.DAT. Normal CPU,
fixed50000, dummy SDL/audio, IRQ5. No protected files were modified.

Original menu/party-read/loader boundaries ran through0d6a:0706. Creation and
cinematic were skipped at the documented debugger boundaries. Opening flag249
was explicitly set to skip that already separate opening dialogue; dog/key flags
were left clear. The normal main loop reached0824:2e45 before controlled calls.
Original full DS before/after startup and current stub bytes are retained.

Controlled calls use unused SS2dac:0c00 with return0824:2e45, always trapped
before executing the sentinel instruction. The first direction-helper attempt
incorrectly assumed006b accepted a direction argument. Its actual0235 body reads
DSb9f0; an initial north call therefore returned AL0 for forward mismatch while
still facing2. This attempt is excluded. No unrelated DS bytes were modified.
The corrected setup explicitly set only b9f0=0, then called original006b to
derive vectors, and1670:002f argument1 to render. ROOT-NORTH-PRE-DS records it.
Original movement1670:0034 then received dx0,dyffff,direction0.

Original warning05dc:2948 was reached, then actual choice poll05dc:2584. Evet
was supplied through BIOS word1265 at40:1e with proper head/tail. The next2948
entry is actual dialogue mode0/speaker2, reached by the original event script.
ROOT-DIALOGUE-ST has far return2eaf:1521, text6534:0004, mode0,speaker2.
DSbb9c=2 and choicebb9e=0. The four signed field15 values are50,131,50,50;
the native maximum helper predicts the original selected speaker2 exactly.

Four original portrait draw calls were stopped immediately BEFORE resident
0ac6:0430 at actual0e00:2ca1, with SP0b6e/BP0b94. Exact arguments are:

| Draw | sourceX | sourceY | size | destination | source slot | callback |
|---|---:|---:|---|---|---:|---|
|0|1|1|30x30|9,111|72|2dbd:02d0|
|1|97|1|30x30|9,111|72|2dbd:02d0|
|2|1|1|30x30|9,111|72|2dbd:02d0|
|3|129|1|30x30|9,111|72|2dbd:02d0|

Starting from original entry DS94c4..94c7, native shared RNG and the original
one-or-two range2 call order predict EVERY sourceX and resulting32-bit state:
cc84695c,83e9b0b2,53cbd0db,41fa0539. The original local initial budget is38
(20+6*3 explicit text lines); pre-draw remaining values38,37,36,35 also match.
The new assets test reads all retained raw DS/SS/stacks and checks those exact
draw words, speaker selection and RNG states. It passes. This proves execution
arguments/call order, not complete original screen pixels or all dialogue inputs.

Raw captures and SHA-256 manifest are additive. JSON logs retain the original
tool output; previews can be truncated, so assertions use full binary captures.
No opaque VGA read is certified as a packed logical framebuffer.

## Exact live continuation

Session64818 is confirmed paused at0e00:2ca1 BEFORE the FOURTH portrait copy.
SP0b6e, BP0b94, DS1f04, SS2dac; only breakpoint0e00:2ca1 is armed. Three portrait
copies completed; the fourth's RNG was already consumed. Do not overwrite the
pending stack or execute another original movement call here. Reconfirm handle
and registers before proceeding; paused timing is not native CPU/VGA timing.

To test original four-draw key acceptance, inject BIOS Space word3920 before
letting this fourth copy return, and trap the eventual event/acquisition boundary
using a verified live segment. Event overlay can relocate across modal calls;
do not assume stale segment2eaf remains valid without checking return stacks.
Alternatively capture logical screen pixels through original screen→owned-image
copy before readback. Existing raw A000 dumps are not packed framebuffer proof.

Next native work: exact dialogue text/prefix/portrait renderer with saved32x32
restoration, original150-counter wait per portrait draw, source key/mouse gates
and live RNG. Native fresh creation now passes its actual numeric records AND
actual generator state into the room. `LaleRng` moved unchanged to lale-core and
character_data reexports it, so world and creation share one implementation.
No new seed is introduced. Automatic DOS idle RNG history remains unclaimed.
Native accepted gate currently remains pending17; acquisition still cannot be
silently acknowledged. The PC1+PC2 navigation objective is incomplete.
