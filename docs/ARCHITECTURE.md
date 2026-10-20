# Architecture and research boundary

This note is independently authored. It summarizes implementation behavior and
bounded research conclusions without reproducing original assets, instruction
dumps, decompiler output or dialogue.

## Native components

| Component | Responsibility |
| --- | --- |
| `lale-core` | Integer/RNG semantics, clocks, event and movement state machines, acquisition and transition logic, isolated shared world ticks. |
| `lale-assets` | Read-only resource parsing, indexed-image operations, scene layers, bank-aware scaling, cinematic decoding and combat-data readers. |
| `lale-runtime` | SDL2 window/input, native menu and character flow, cinematic presentation, Otopark event hosts, party checkpoints and room diagnostics. |

Game logic and resource parsing are separated from the native platform boundary.
The shared world-tick helper remains isolated until caller timing and state
synchronization are established. Parsing combat records does not constitute a
battle engine. Native party checkpoints are creation records, not world saves.

## Current playable boundary

The native path connects creation to the opening films, Otopark introduction,
stone acquisition/transfer, an animated door and the pending encounter. Shared
movement/event routing and room rendering exist, with explicit stops for
unsupported services and transitions. Broad normal map progression is incomplete.
Native combat and equipment use during combat are still absent.

Room rendering uses original resource banks and reusable layer consumers.
The fixed projection records are still privately captured data pending a faithful
generator implementation. Rendering tests compare palette indices, not just
approximate screenshots. See [private prerequisites](DEVELOPMENT.md).

## Combat research, 2026-10-20

Private DOS experiments now include a complete natural dog AI turn inside a
conditioned encounter: scheduler selection, target changes, movement, adjacency
reactions, physical attacks, resource changes, RNG consumption and next-input
return were captured. Real player attacks include hits and misses, protection,
HP effects and different action-cost branches.

The original inventory UI was used to wield the stone and observe derived
statistics and subsequent attacks. Item ownership was seeded for that comparison;
it does not establish a wholly natural acquisition-to-equipment playthrough.
A genuine attack-induced victory and bounded cleanup/world continuation were
observed. That trial included controlled encounter setup and restoration of a
retained world-poll boundary; it does not establish an unconditioned end-to-end
return call stack. A later last-survivor trial did not reach authentic defeat.

The remaining critical combat research is a natural fatal attack and defeat
handling, party writeback and return/load policy, followed by reconciliation of
the minimal shared state/input/render dependencies. Native implementation must
follow verified reusable behavior without guessed enemy logic or forced wins.
Detailed captures and continuation checkpoints remain in the private archive.

## Evidence discipline

Keep static interpretation, conditioned DOS experiments, natural execution within
those experiments, Rust automated comparisons and desktop user acceptance
separate. Prior menu/creation desktop acceptance does not certify the latest
walking changes or a future combat implementation. Audio fidelity, some character
appearance/timing behavior, general navigation and full save/load remain open.
