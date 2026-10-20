# Phase Four / Five checkpoint — 2026-10-14

Authority: beforephase5.txt. Safe research continued autonomously; no full playable engine was started. Phase Three remains frozen. This checkpoint extends earlier research without replacing it.

## Phase Four — incomplete

Verified progress: original-byte six-target CS switch; independently bounded main analysis; FBOV manager assembly; all8,538 relocation mappings corroborated; archive open/name lookup/member read traced; menu and credits resource calls mapped; AMF loader/parser identified. Synthetic overlay segments are explicitly distinguished from runtime addresses.

Limits: main pseudocode still contains analysis artifacts; LEAVE/RETF reachability is unknown. Overlay allocation/eviction, complete game-loop behavior, save/load, graphics compositing and audio scheduling remain unresolved. Static call targets establish a frontier, not recovered gameplay mechanics.

## Phase Five — resource validation underway

All262 CMP streams tested:251 exact dimensions and11 explicit discrepancies. Eight additional original-size previews match independent Python/native Rust RGB output. All15 AMF modules parse exactly; a narrow Rust structural reader preserves uninterpreted fields. SOUNDS contains at least one text member, so archive labels are not treated as uniform format guarantees.

Validation: cargo fmt --check, cargo check --offline, cargo test --offline and cargo build --offline pass with existing toolchain and no new dependencies. Eight tests pass, including corpus checks for262 CMPs and15 AMFs. Native inspector remains an asset tool, with no playback or gameplay engine. DOSBox runtime comparison remains outstanding after the prior SDL display failure; user visual confirmation is recorded separately.

Correction: the initial dependency token scanner stripped leading hyphens. The literal addendum establishes SAVAS.BAK -MAGA1.CMP/-MAGA2.CMP rather than identical literal dependency sets. Their control meaning is unknown.

## Next investigation targets

1. Trace overlay1670 code2521 and1927 to recover game-loop initialization and state transitions.
2. Trace resource-list consumers and save/load references to GRP.DAT/GRPHAZIR.DAT.
3. Resolve CMP excess-output handling and actual blitter transparency/palette lifetime.
4. Trace sound-table records into driver calls; recover sample representation and AMF event/mixer semantics.
5. Obtain a working DOSBox display for controlled original-game comparisons before claiming runtime fidelity.

See [executable layout](EXECUTABLE_LAYOUT.md), [function map](FUNCTION_MAP.md), [loading map](ASSET_LOADING_MAP.md), [graphics](GRAPHICS_SYSTEM.md), [audio](AUDIO_SYSTEM.md), and ../rust-port/README.md. No percentage-complete estimate is justified while gameplay systems remain unmapped.
