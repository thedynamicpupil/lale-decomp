# Native movement/event boundary checkpoint — 2026-10-15

Continues NATIVE_OTOPARK_TURNING_CHECKPOINT_20261015. The latest user confirms
the starting-room facings look correct. Their visual acceptance is now recorded
in the living documents; no unreported creation/movement checks are inferred.

Implemented `rust-port/crates/lale-core/src/movement.rs`: original branch
classification and ordinary step with explicit current-mode3/candidate-mode1
event execution, vetoes, live-state rereads, original16-bit arithmetic and
failure-word clearing. A read-only PC adapter resolves original selectors;
unknown words remain explicit. Unknown event execution is an error, not an
automatic allow. Door/stair/animated execution is still unsupported.

New original assembly/REA inspection shows why this ordinary path cannot enable
walking out of the starting room: north is state2/door, the other sides are
state1/blocked. Stub1662:00bb resolves to body798c/file2fdbc. Its final position
commit at304e1..304fb depends on DS3b06==0 and uses live facing vectors. Original
event/animation/guard lifetimes still need runtime validation, and destination
view rendering is missing. No fresh DOS runtime observation is claimed.

[Full evidence, addresses, tests, limitations and handoff](phase-five/navigation-20261015/MOVEMENT_BOUNDARY.md).
[Raw REA evidence](phase-five/navigation-20261015/rea-evidence.json).

Offline format/build pass and95 test executions pass (eight new). The existing
room pixel comparisons pass. This increment changes no graphical behavior or
native key bindings. `./rust-port/play-native.sh` still runs the existing flow;
F11 and Left/Right retain accepted facing visuals. Up/Down still do not walk.

Living PROJECT_STATE, ROADMAP and FIRST_PLAYABLE_PATH were updated. Existing
checkpoints, protected files and prior evidence remain unchanged; preservation
audit is under the new evidence directory. No packages/global settings changed.
Phase Four and first playable remain incomplete.

Next session: trace north-door DS3b06/event/animation lifetime and capture the
adjacent(2,0) view using the original renderer. Verify the candidate event's
choice/acquisition veto before connecting movement. Extend needed layer/scaling
consumers rather than reusing fixed starting-cell commands as arbitrary geometry.
