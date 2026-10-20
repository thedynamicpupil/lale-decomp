# Post-creation cinematic: verified SEQ chain

New bounded investigation of UpdateablePrompt.txt's3:09 findings. Original game,
reference media and historical reports remain unchanged. No shared REA calls,
Rust changes, dependencies or DOS execution. Exact original bytes and physical
assembly are retained alongside this report.

## Firsthand observation versus recovered code

The user observed live-action filmed footage after party creation and recalls
titles “İSTANBUL” and “Bosfor Savaşından Elli Billah Önce.” That observation is
accepted, but the precise displayed titles and whether they are encoded into
frames remain unverified here. The source narrative at DS:4d61 is not identified
as a cinematic title.

**The post-creation film sequence is statically connected to SEQ1–SEQ5, rather
than to INTRO.GFL simply because of its filename.** This establishes the actual
loading/playback path; it does not yet visually decode or identify individual
filmed shots.

## Success creation → film → first area

All physical addresses below refer directly to IST.EXE. Resident analysis-linear
coordinates are physical−2400+10000; overlay identities are descriptor/export
resolved code offsets, not resident arithmetic.

1. Physical7dfc calls original resident stub167c:0057, resolving to creation
   overlay167c:1aa2 /physical3e6a2. Physical7e01 tests AX; zero branches back to
   menu, while nonzero continues.
2. After audio fading/cleanup, physical7e8b calls16d3:002f. Physical7e91 pushes
   DS:3a90 (`grp.dat` in existing evidence), and7e94 calls167c:004d, resolving
   to party reader167c:1932 /physical3e532.
3. Physical7e9c calls1682:0025. Descriptor/export mapping resolves it to
   **1682:3790 /physical42d30**, the cinematic sequencer examined here.
4. After its return, the caller resets several party-related arrays/resources.
   Physical7f49 writes original **DS:bb6b=0**. Physical7f55 pushes1,7f5c
   pushes DS:bb6b and7f61 calls1670:002a. That export resolves to the known
   common area loader **1670:1927 /physical33837**. Therefore this path calls
   it with area argument0 and additional flag1.
5. Further state initialization follows, then the1670:2521 loop via its export.
   The area investigation independently maps area-table entry0 to PC1/Otopark;
   this report supplies the verified zero-valued caller argument.

## Five original stream pairs and Escape behavior

1682:3790 first loads original DS:5b8c=`buun.pur` through a resource helper.
It initializes audio-level state and conditionally starts an effect. The five
subsequent playback call sites are:

| Physical call | DS basename pointer | Exact basename |
|---|---:|---|
|42da3|5b95|seq1|
|42de0|5b9a|seq2|
|42e1d|5b9f|seq3|
|42eeb|5ba4|seq4|
|42f25|5ba9|seq5|

Each returns AL; comparison with1b routes Escape to cleanup. Palette-black
state is applied between segments; some audio fade/stop handling occurs
between seq3 andseq4, followed by final fade/cleanup. Do not concatenate these
as a single uninterrupted PCM/video stream without recovering those boundaries.

The on-disk CALLF segment0140 is a **relocation descriptor operand**, not a
runtime segment. Descriptor40 resolves to relative resident stub16af; export
0057 resolves to **16af:1270 /physical59730**. The wrapper builds filenames
using DS:6c29=`%s.GHD` and DS:6c30=`%s.GFL`, calls GHD loader16af:04d0
/58990 and GFL loader16af:06aa /58b6a, then playback16af:1126 /595e6.

## Resource layout corroborated by loader instructions

All five pairs reside in original0GFL.CKD:

| Pair | GFL ordinal / payload / bytes | GHD ordinal / payload / bytes | Frames |
|---|---|---|---:|
|SEQ1|13 /2f2cb52 /16317168|42 /cf88641 /27922|636|
|SEQ2|14 /3ebc683 /7885528|43 /cf8f394 /24978|268|
|SEQ3|15 /464199c /18108055|44 /cf95567 /27810|622|
|SEQ4|16 /5786874 /12154301|45 /cf9c24a /26154|415|
|SEQ5|17 /631de72 /12911242|46 /cfa28b5 /26770|492|

Offsets are hexadecimal; lengths/counts decimal. Source JSON retains hashes,
all frame records, palette hashes and complete original header bytes.

The GHD loader reads exactly0310h=784 bytes into its header object. It checks
the sum of its first three bytes against217 (the bytes `GFL` sum to217); this
is weaker than an exact three-character magic comparison. Layout:

| Payload-relative offset | Length | Verified use |
|---|---:|---|
|0|3|Observed ASCII GFL; loader checks character sum|
|3|2|Frame count, used for8-byte table allocation and playback limit|
|5|1|Frames per1000 counter units,10 for all five|
|6|2|22050; passed to sound allocation/playback and additional-block handling|
|8|4|Observed100000; exact semantics unresolved|
|12|4|Raw preserved header values; semantics unresolved|
|16|768|256 RGB palette triplets copied to original palette buffer|
|784|22050|Additional sound-associated block read or skipped according to sound enable|
|22834|8 × frame count|Frame table, consuming the exact remaining GHD bytes|

All palettes have maximum component63. The22050-byte block is structurally
proved, but its precise sample encoding and relationship to streamed per-frame
audio remain incomplete. The shared22050 value is strongly suggestive of an
audio rate/buffer convention, not evidence sufficient for a WAV conversion.

The8-byte record fields preserved by the parser are byte0, word1, dword3 and
byte7. Code reads dword3 as a GFL stream position, byte7 high bit as a768-byte
palette-change flag, and low byte7 bits in sound-related processing. Positions
are monotonic and in bounds for all examined pairs. Type/size fields and delta
frame behavior are not fully decoded. For example SEQ5 record0 begins at GFL
offset768 with byte7=80h, consistent with preceding palette data; exact picture
decoding still requires its consumer.

## Timing and presentation evidence

Physical58e1e computes the current frame index from the shared counter:

`frame_index = floor(header_byte5 * (counter_now - counter_start) /1000)`.

The1000 denominator and byte5 multiplier are instruction-backed; low word is
stored as the frame index. All five have byte5=10. Their nominal unskipped
frame-count durations are63.6,26.8,62.2,41.5 and49.2 counter-seconds, totaling
243.3. This excludes sequencer fades/loading and assumes the established
approximately millisecond counter; it is not measured film duration.

Playback allocates/clears a64000-byte destination and uploads the GHD palette.
It polls keyboard, stops on Escape, updates the time-derived frame index and
calls frame/audio processing plus stream refill helpers. The time-derived
index and recovery branches mean “decode every frame at a fixed sleep” is not
yet an adequate faithful specification.

No decoded film frame or audio artifact was produced in this bounded milestone:
the codec's frame types, pixel update rules, audio packing, title composition,
seek/recovery behavior and resource-buffer ownership require another focused
pass. The existing INTRO pair remains a separate startup-resource candidate;
its name no longer justifies treating it as the post-creation film.

## Next bounded investigation

Analyze frame consumer16af:0996 /physical58e56 and refill16af:0de8 /592a8
with the firstSEQ1/SEQ5 records. Recover one complete keyframe plus its palette
without truncation or guessed dimensions. Verify whether filmed titles occur
in those pixels, then recover audio block format and segment transitions.
Keep the DS:4d61 text/narration path separate until its own call references
establish where it belongs.
