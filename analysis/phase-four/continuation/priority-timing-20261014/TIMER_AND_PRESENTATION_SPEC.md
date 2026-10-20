# Original timer and presentation scheduling audit

2026-10-14. Independent original-byte inspection, no shared REA session calls,
runtime launch, Rust edits or dependency changes. Earlier evidence preserved.
`source-byte-evidence.json` retains physical offsets, exact bytes and hashes.
New assembly listings use physical IST.EXE coordinates. Existing menu overlay
listing is reused for instruction interpretation; its raw far-segment words
are overlay relocation operands, not runtime addresses.

## Coordinate convention

Named segment addresses such as1db7:01f4 below use the existing analysis load
segment1000. Resident source offset is `(segment*16+offset)-10000+2400`.
Actual runtime DOS load segment may differ. Menu1682:0086 is an overlay logical
identity; its source starts at physical3f626, not a resident linear conversion.

## Callback, PIT and phase dispatcher: verified

1db7:01f4 / physical10164 saves registers, adds10 to **32-bit** DS:e74a and
returns IRET. Registration1db7:021e /1018e pushes callback pointer and a32-bit
value00002e9b to20ef:0178 /13468. The value is **11931 PIT input clocks**, not
milliseconds or frequency in Hz.

PIT setter20ef:0036 /13326 sends36h to43h and low/high AX to40h: channel0,
low/high reload, square-wave mode. Installation saves DOS vector8 and replaces
it with the dispatch ISR. The ISR at physical13338 sends PIC EOI, iterates
14-byte records, and for each active record:

```text
sum = phase_u16 + increment_u16
phase = low16(sum)
if sum carries: PUSHF; FAR CALL callback  // callback returns IRET
```

Record fields: callback at DS:85ce+14*i, target reload85d2, increment85d6,
phase85d8, active flag85da. Retune at13400 sets phaseffff and computes:

```text
if target_reload <= selected_reload: increment = 65535
else: increment = floor((selected_reload*65536 + 65535) / target_reload)
```

This is confirmed by AX=ffff, DX=selected_reload then unsigned16-bit DIV.
It must not be silently replaced by `65536*base/target`. Selected reload lives
at DS:86b2. Registration lowers it when a new smaller reload appears; removal
does not immediately raise it. A separate setter13553 can explicitly change
the selected reload. Therefore other subsystem timer registrations can change
the callback's exact rational rate.

For constant incrementS and initial phase65535, afterK IRQs the callback count
is `floor((65535+K*S)/65536)`. At base=target=11931, S=65535: almost every IRQ
invokes the counter, with one skipped carry per65536 IRQs.

DOSBox-X upstream defines the IBM input clock as1193182Hz. Using that
**conditional clock model**, IRQ rate is1193182/11931 and callback rate is
`1193182*65535/(11931*65536) =100.005346868...Hz`; counter rate is therefore
1000.053468684...units/s. This confirms approximately millisecond units,
quantized in10-unit updates, with a small nonzero drift.
[Official DOSBox-X timer header](https://raw.githubusercontent.com/joncampbell123/dosbox-x/master/include/timer.h).

This is not a measurement of the bundled emulator or proof that11931 remains
the selected reload after audio initialization. JSON includes alternative
reload examples and rational-derived durations. Native sequencing can preserve
the verified counter-unit constants without claiming capture-exact wall time.

## Generic wait1682:0000

Physical3f5a0 reads the32-bit counter, adds its unsigned16-bit duration to form
a32-bit absolute deadline, polls keyboard/mouse, and exits when counter>=deadline
by unsigned high-word then low-word comparisons. It can return early for input.
It does not use a wrap-safe elapsed comparison. A32-bit rollover is a separate
rare limitation; the paired16-bit reads are not an atomic32-bit snapshot.

## Eleven intermediate buffers: duration is not the parameter alone

1682:0086 /physical3f626 divides its duration argument by11, **unsigned integer
division**. For1000, interval=90. Preparation allocates/builds all intermediate
buffers before the scheduled portion; CPU/allocation duration is additional.
After the initial input check:

1. Deadline=`low16(counter)+interval` modulo65536. If source differs from the
   current screen, synchronize/copy source. Wait while unsigned now16<deadline.
2. For each of eleven intermediate buffers0..10, recompute deadline from the
   current low16 counter, synchronize/copy that buffer, then wait for deadline.
3. Recompute deadline again, synchronize/copy the destination, wait for deadline.

Thus a complete uninterrupted transition has **13 intervals**, not11:
source hold +11 intermediate holds +destination hold. At1000 the timer budget
is13*90=1170 units, approximately1.16994s in the conditional baseline model.
The source interval remains even when no source copy is necessary.

Every relevant copy waits VGA port3da bit3 to become1 and then become0 before
copying: the **trailing edge of vertical retrace**. Do not describe this as
copying at retrace start. Deadline is computed **before** retrace wait/copy,
so that time overlaps the interval rather than adding a full extra interval.
If retrace/copy exceeds the deadline, the subsequent timer wait is skipped.
Successive deadlines are relative to the current counter, not a single global
start; slow operations do not cause frames to be skipped to catch up.

There is a low16 deadline bug: `now16 < deadline16` is a plain unsigned test,
not modular elapsed arithmetic. Near the~65.536s low-word rollover an interval
can collapse early. Preserve/document this distinction; do not accidentally
claim that a wrap-safe native timeline duplicates that edge-case behavior.

The menu caller retains1000-unit pre-transition wait and500-unit final wait
constants (physical4023f and40469 in the retained source listing), with1000-unit
transition arguments at40306/403cb. These use the counter, not video-frame count.

## Palette fade1c7f:073f: scaling, pacing and exact endpoint

Physicalf32f takes durationu16, signed brightness delta, signed audio-level
delta. It clamps each resulting endpoint into0..its corresponding maximum.
Brightness state is DS:7318, maximum731e (64 in the established path);
audio-level state731a, maximum7320. It saves low16(counter) and initially
sets elapsed=0. While unsigned elapsed<duration:

Original resident data confirms7318=0,731a=0,731e=64,7320=64 at physical
20518,2051a,2051e,20520 respectively before application changes.

```text
brightness = initial_brightness + trunc_toward_zero(delta*elapsed/duration)
DAC_component = trunc_toward_zero(original_component*brightness/max_brightness)
upload all768 palette bytes
// optional audio-level interpolation when enabled
elapsed = low16(now16 - start16)
```

The signed division distinction matters when darkening:64+trunc(-64*t/d)
differs from floor(64*(1-t/d)) at intermediate times. Preserve integer order.
Source palette is the preserved buffer at DS:e5ef; output is DS:e5eb.

**The upload is retrace paced.** f3f7 calls ec40, which calls ebfc with
count256 and subdivision1. ebfc waits bit3 high then low and sends768 bytes
to VGA DAC3c9. The loop therefore does not present every possible10-unit timer
sample; its palette steps depend on retrace opportunities and CPU work.
Do not implement this as exactly64 equally spaced video frames.

After the timed loop, the routine explicitly recomputes and uploads:

```text
final_component = original_component*(initial_brightness+clamped_delta)/64
```

It also explicitly sets the final audio-level endpoint, then commits brightness
and audio-level state deltas. The exact-final upload itself waits another
trailing retrace edge. This final pass is essential; sampling only elapsed times
less than duration never guarantees endpoint brightness.

For0→64 over1600 units, intermediate brightness isfloor(64*elapsed/1600),
with the final palette exactly restored. For64→0 it is
64−floor(64*elapsed/1600), followed by exact black. Elapsed subtraction wraps
modulo65536, unlike the transition's absolute16-bit comparisons. Short fades
therefore tolerate a low-word rollover. Duration0 skips interpolation but
still commits the exact final palette.

## Safe actionable implementation boundary

Use verified constants1000,500,1600 and intervalfloor(1000/11)=90, preserving
source/intermediates/destination order and explicit final palette endpoints.
Keep10-unit counter sampling separate from a retrace/presentation clock.
No fixed60Hz timing follows from these instructions or the capture frame rate.
The actual VGA refresh, selected PIT reload after initialization, original CPU
copy/preparation latency and input-skipping semantics remain validation targets.
They need not block automatic presentation of the recovered stage order, but
the native schedule must identify its host-clock/retrace approximation honestly.
