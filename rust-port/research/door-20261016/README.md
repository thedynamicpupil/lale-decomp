# Unwired door render candidate

This experiment is deliberately outside Cargo targets. It is **not** a new
playable feature or a certified animated transition. Frame0 matched40000 original
indices, but final-aperture and destination comparisons failed. The production
renderer/input changes were withdrawn; existing native turning remains intact.

Read [runtime report](../../../analysis/phase-five/door-20261015/DOOR_RUNTIME.md)
and [comparison](../../../analysis/phase-five/door-20261015/comparison-20261016/comparison.json).
The source retains the attempted integration for review/recovery; its module
paths assume the earlier runtime parent and are not a standalone Cargo target.
Do not wire it in or weaken its pixel comparisons to make it pass. The isolated
`original_scale.rs` requires actual bank call/fraction inputs before integration.
