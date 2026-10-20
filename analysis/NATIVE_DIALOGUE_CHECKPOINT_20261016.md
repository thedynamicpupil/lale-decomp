# Native opening and north-door dialogue — 2026-10-16

The persistent PC1 Otopark + PC2 Mecidiyeköy navigation objective remains active
and incomplete. This milestone connects required original dialogues to the native
application. It does not acknowledge acquisition, encounters or native walking.

## New actual DOS proof

The root-owned fresh run in phase-five/world-dialogue-runtime-20261016 continues
the preceding DIALOGUE_DOS.md capture. Original Evet selected party2, matching
the signed field15 maximum. Four portrait sourceXs1,97,1,129 and ALL resulting
32-bit RNG states match the shared native RNG/helper. Source arguments remain
30x30,sourceY1,destination9,111,slot72,callback2dbd:02d0. Budget38 corresponds to
three explicit text lines. Retained DS/SS/stacks are native test fixtures only.

**New execution observation:** actual BIOS Space word3920 was injected BEFORE
the fourth portrait copy. Original execution reached0e00:2d68, the32x32 saved
portrait restoration call, without consuming a fifth RNG frame. Its arguments
are0,0,32,32,8,110,88,0,02d0,2dbd and RNG remains41fa0539. Source code and this
observation corroborate keyboard completion after four draws. Original execution
then reached acquisition2eaf:2f21 mode0. Coordinates are still(2,1), dog/key bits
remain clear, pending resources0/0/0 and temporary items2,0,0,0,0,0,0,0,0,0.
No stone transfer or arrival/encounter has occurred at that entry.

Original after-key helper0db7:01e3 drains every remaining BIOS key after the first
read, including an early key that cannot finish the dialogue. Correct physical
offset is10153 (MZ header2400 + segmentdb7*16 + offset1e3). The first newly saved
file after-key-0db7-01e3.bin incorrectly extracted101d3 and is excluded; the
`-corrected.bin` file contains10153's status/read loop. Native queue now preserves
that drain and skips keyboard reads on the timed-exit branch. Generic line source
e636/e6b4 signed JGE confirms inclusive portrait outline endpoints8..39/110..141.

New captures are retained with capture-hashes-after-space.json; earlier manifests
and reports remain unchanged. Full packed original dialogue pixel equality is
still unproven; raw A000 bytes are not accepted as a logical framebuffer fixture.

## Implemented and playable in native

- `world_ui` now provides original dialogue text plans, IREM62 prefix selection,
  inclusive white32x32 portrait border and keyed30x30 S-appearance frames.
  Original pixels remain live between transparent copies. Saved32x32 pixels AND
  native colors are restored when the dialogue returns.
- The original150-counter wait precedes each draw; a second draw cannot start
  before presentation completes. The following wait starts after draw/present/input
  processing. Low-word wrapping, four-draw keyboard threshold, three-draw mouse
  threshold and budget+2 timed completion are retained. The host queues BIOS-like
  keys, drains remaining queued keys after a read, and does not consume keys when
  the source timed-exit branch precedes keyboard processing. Mouse click threshold
  is implemented; held/released mouse timing remains a runtime comparison gap.
- Fresh creation supplies its actual party records and shared RNG. Speaker5 uses
  verified speaker selection. Positive-HP checks and original range4+1 retries
  choose a living speaker if needed. No-alive/invalid-speaker cases remain pending
  for the separate original handler; no fabricated living actor is substituted.
- Ordinary creation→film→room now dispatches PC1 starting-cell **mode2**: all TEN
  original opening dialogues play, then original script sets249. Until completion
  the script/input remains modal. A repeated arrival with249 set skips the entire
  sequence without RNG use. Earlier silent normal room entry is superseded.
- Afterwards, north Up presents original warning/choice. Hayır vetoes unchanged.
  Evet selects the live speaker and runs the original stone-suggestion dialogue.
  Its actual return advances the script to **pending acquisition9**, still at(2,1).
  No item, guard, dog flag1, key flag2, door animation or position commit is skipped.
  Standalone/debug entries without party/RNG correctly remain pending23/17.

IREM62.CMP is a known strict-CMP discrepancy:12401 emitted indices versus original
20x620 geometry. The native font host explicitly uses decode_cmp_stream ONLY for
this named atlas, retaining ALL12401 bytes. No byte is discarded and generic
decode_cmp remains strict. Original live slot84 dimensions at DSe53b/e53d confirm
20x620; font glyph accesses remain within that declared geometry. Potential
original allocation overflow effects are not generally emulated or certified.
Appearance13 body decoding and other corpus discrepancies remain unchanged.

## Validation

All workspace offline tests pass; native bins build without warnings. Six assets
UI tests cover actual DOS DS hitboxes, original draw/RNG states, Space restoration
and acquisition boundary, exact prefix geometry/complete stream preservation,
source conditions, timer wrapping and presentation completion. Native gate tests
check all ten opening dialogues/249/repeat skip, early Space, queue drain, correct
speaker and no position/party/dog-key mutation before pending acquisition.

```
cargo test --workspace --offline --manifest-path rust-port/Cargo.toml
cargo build --offline --bins --manifest-path rust-port/Cargo.toml
cargo fmt --manifest-path rust-port/Cargo.toml --all -- --check
SDL_VIDEODRIVER=dummy SDL_AUDIODRIVER=dummy ./rust-port/target/debug/lale-otopark-room --root . --check-door-choice
```

The native SDL main-thread check presents original warning/choices, four portrait
frames with every RNG state matching DOS, restoration and pending9. It also runs
all ten opening dialogues with REAL native source-counter waits and actual SDL
presentation, completing after6.25s under repeated Space in the latest run. Only
then is249 set; numeric records, position and dog/key bits stay unchanged. This
is native runtime validation, not new Fedora user acceptance or all-scene pixel
equivalence. Existing menu/creation/checkpoint/films/turns/door inspection remain.

## Exact live DOS continuation and next actions

Session64818 is confirmed stopped at **2eaf:2f21, BEFORE acquisition entry**.
SP0b9c, BP0bf0, DS1f04, SS2dac. Active breakpoints are2eaf:2f21 and0824:1f3f.
Original live prologue was compared against physical46591 before accepting the
stop; do not reuse a stale overlay segment after future allocation/modal calls.
It has temporary item2 prepared by opcode9, resources0, coordinates2,1, facing0,
dog/key bitsclear, guard0. See ROOT-ACQUISITION-ENTRY-DS/ST and entry logs.

1. Recover initial acquisition mode0 screen/resource binding and controls, then
   implement authentic Esc/transfer and cleanup. Original44643..446c5 reads three
   byte resources and three big-endian item words into pending slots1..3, then
   calls2f21 mode0. Other temporary slots are not implicitly reinitialized there.
   Entry calls1662:00ca(15), restores bottom text, configures UI, adds resources
   before input, draws helper463df, then enters the main acquisition UI loop.
   Actual live slots80=320x200,81=400x200,83=320x62,84=20x620; identities/consumers
   must be traced, not inferred from dimensions. Source5c0c's50-byte template is
   zero-initialized at entry and mode0 formats the original6218 string into it.
2. Acquisition Esc keeps entry resource additions, discards untransferred pending
   items, clears temporary/pending state and returns. It is not an undo-all action.
   Do not automatically acknowledge9 or replace its screen with invented UI.
3. Once actual candidate mode1 returns, connect the already exact animated door
   composition/clock and automatic guard0 commit, destination PC1(2,0), then mode2.
   Encounter8 must remain pending until the authentic encounter/battle host returns;
   never set flag1 in advance. Preserve key2 and authentic PC1→PC2 opcode11/veto.
4. Continue PC2 original movement/pixel checks. Earlier worker run2 remains excluded
   after unrelated DS00c4 vector typo; no certified run3 result exists. Use current
   authoritative handles/evidence. All4000 native views have source coverage, but
   whole-map original pixel and Fedora traversability acceptance are still open.


Preservation recheck after this milestone: navigation baseline233 hashes and
frozen PhaseThree30 hashes are unchanged. Exact report:
phase-five/world-dialogue-runtime-20261016/preservation-verified.json. This is the
scope of this new pass; the older243-entry preservation result is not recertified
by silently changing its ledger. No protected original, bundled emulator/config,
GUI project/lock, reference media or ordinary runtime save was modified.
