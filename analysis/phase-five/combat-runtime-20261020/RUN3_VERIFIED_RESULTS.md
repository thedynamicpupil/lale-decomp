# Run3 combat results — 2026-10-20

New evidence, not native combat acceptance. All original files remain protected.
Owned run3 copied20 original files, GRP seeded from GRPHAZIR, installed DOSBox-X
normal/fixed50000/dummy SDL/audio. Creation and film skipped, opening flag249 set;
world position(2,0),facing0 conditioned. Original direction helper then original
1689:0020(cell-offset1e hex, mode2) on unused SS0c00 entered the encounter. This
is a conditioned encounter, not an earned normal launch/acquisition/door trial.

## Runtime control recovered

LOGC10 means16 instructions (all debugger values hex), logs CS:IP and stops at
its budget. Retained initial-logc-10.txt proves it. CPU logging is extremely slow
for original waits; it changes presentation/virtual-time cadence, so do not use
its host duration as original timing. No game instructions were patched/skipped.
Bounded traces tab-log01..09 locate camera pan and original voice wait15dc:1d1b,
runtime0e00:1d1b, physical9edb..a01d. Its original Escape branch reads key1b and
returns1. Injecting BIOS Escape at confirmed voice-poll0e00:1dca passed the wait.
Later verified RUN boundaries complete quickly without per-instruction logging.
No cause for the audio driver's uncompleted progress is certified here.

Filename input-flush-rea.json is a discovery label: its actual function is the
voice-completion wait, NOT input flushing. voice-start-rea.json resolved178e
(reset), not192d; use voice-play192d-rea.json for actual192d. Likewise
equipment-actor-sync-rea.json is7250's UI hitbox setup, NOT actor synchronization.
Preserve the actual returned procedure identities and original bytes.

## Natural AI within conditioned encounter

Original initiative1e75 consumed56 draws across all28 slots. All sorted keys,
order and final seed match independent source replay exactly:
20dbb23e→3d0c9906. initiative-comparison.json retains all entries.
Initial live order27/key2,26/key3,28/key3,25/key5,1/key17; empty actors also sort.

Actual Tab inputs pass party turns; Escape is used ONLY at original voice wait.
No actor/stat/HP/RNG/position changes were injected during the complete AI trial.
At AI9668 entry: current1,6 allowance, round0,cursor28, dogHP3,pos(13,3), target0;
party25(12,6),26(13,6),27(10,5),28(16,2). All four party HP initially6,6,5,3.

Original AI retargets to26 and moves(13,3)→(13,4)→(13,5), spending1 per step.
Before second move, destination is originally empty/legal; entering adjacency
triggers party25 and26 reactions with override1. Party25 misses, party26 hits for
zero net damage. Dog then attacks26 with override0, misses, allowance becomes0.
It returns through originalAA0B, scheduler advances round, and original next-input
BFF5 is reached with current25,round1. Full actor/terrain/occupancy/clock/RNG DS
captures before/after and at every RNG boundary are retained.

AI entry7b8742e2→8c21607c is EXACTLY14 original RNG advances. Per-call stack,
seed and actor/allowance state are in natural-ai-rng-ledger.json. Calls1,2 choose
target;3 is original192d sound pitch;4 retarget test;5,6 reaction damage/hit;
7 sound pitch;8,9 second reaction damage/hit;10 sound pitch;11 retarget test;
12,13 dog damage/hit;14 sound pitch. Original lookup/gating, not arbitrary added
AI randomness, owns these presentation draws. No casting/surrender/blocked-side
fallback occurs in this trial; their source branches remain separately bounded.

## Real player and weapon observations

P01: keyboard scan49 moves toward the occupied diagonal dog square and invokes
3f5b with current/attacker25,target1,override0. Bare-hand derived encoded201,
primary speed0 normalizes to1. Damage draw2 yields raw3; hit roll1<=cachedH1;
protection1 gives damage2, dog3→1 HP, allowance10→9. Player does not step into
the occupied cell. Three RNG draws include the original sound-pitch draw.

At BFF5, condition ONLY inventory party1/slot1 raw word2 (DS9a48), matching the
already independently verified mode0 acquisition transfer result. This ownership
was debugger-seeded, NOT earned/acquired in run3. No equipment ref was injected.
Original I(1769)→item-pollCCE9→Enter→hand-pollCF35(default region11)→Enter
writes mainhand ref23h and calls7574. Return to BFF5 preserves allowance9 and RNG.
EQUIP-* captures and original framebuffer/palette preview retain this operation.

Party1 numeric3c0→23h, carried5a0→1; derivedT1 changes02:201→202,04:1→2,
06:9→8,0c:0→2. Actor25's cached words do NOT change in this refresh. Physical
first-hand H uses actor+12 (still1), while status redraw can overwrite global
D5DA with the newly computed display2. Use the pre-hit R2 snapshot for the hit
comparison, not the global after rendering. Do not silently unify actor/stat UI.

P02 stone: raw2, roll2>cachedH1, misses; allowance9→7 before roll, then0 on failure.
P03/P04 also miss. Original missed-no-offhand path4e204..4e21e clears remaining
allowance unless override; a miss is NOT universally only a speed deduction.
P05: naturally waiting original party turns and retrying stone attack gives
raw2,roll1<=H1,damage1; dogHP1→0, allowance10→8, occupancy clears, result632e1.
No HP, RNG, enemy stats or result was injected to obtain victory.

## Victory return and limits

Actual cleanup0000 and actor-field clearing precede8111. Captured8111 entry and
8268 return retain all368 numeric party bytes; this particular writeback changes
none because the dog caused no party HP/resource damage and timers were empty.
Experience/progress writes already occurred directly during attacks. Equipment
and raw item persist in live numeric records. No claim that8111 is generally a
no-op follows from this particular trial.

Original caller reloads1670:002a→1927, stack args0(area indexPC1),0(entryflag).
Loader stub CD3F271900 resolvesEA2719AF2E. Original script sets dogflag1 (byte
B9CA02), keyflag2 remainsclear. Controlled mode2 returns to trapped0d6a:0706,
AL0,SP0c04; no fabricated reward or key. Restore saved original paused world-poll
context/SPf3c/BPf72 only after this script return. This explicit restoration is
part of the conditioned trial, NOT proof of a fully natural world→battle callstack.

World polling resumes, actual PC1 north-wall VGA/party UI captured in
VICTORY-WORLD.png (inspection only, never a native runtime asset). At pollSPf40,
stack return420e:8569 belongs to original outer8524. Current x2,y0 differed from
rememberedBB51/4f3,2. Original outer then calls mode2 with1e,2 (actual return
3472:8d38); flag1 skips the encounter, and a real BPM record in dos-246.json
observes remembered X3→2 at3472:8ded, followed by source Y store. This validates
arrival re-entry/control after return, but the subsequent world DS dump did NOT
complete: queued commands were sent while RUN continued into ordinary idle.
Do not claim WORLD-RESUMED-DS exists or that its full state was captured.

BPM initializes its cached byte to0: first0→existing3 stop is initialization,
not an original game write. Distinguish it from the later actual3→2 store.
Run3 terminated Ctrl-C, exit1 at dos-249.json; no live run3 remains. All124 run3
BIN artifacts were copied into capture/ with run3-capture-sha256.json. New run4
is separate; its evidence must use unique D-/DEFEAT-prefixed names.

Remaining: original fatal defeat→writeback→caller/world/game-over contract;
successful weapon attack is verified but restrictions/unequip still bounded by
source; AI blocked fallback not exercised. After essential outcome/state contracts
are verified, begin reusable Rust combat increment and DOS differential tests.
