# Opening path: bounded original-byte findings

Authority: UpdateablePrompt.txt, 2026-10-14. This independently investigates
post-creation leads without changing originals, Rust, prior checkpoints or
the shared REA session. The current native milestone is already user-accepted;
these findings do not reopen completed menu/creation work.

## Literal evidence, not yet event behavior

`literal-and-resource-evidence.json` retains original IST.EXE hash, exact bytes,
physical offsets, analysis-linear and original DS-relative coordinates.

| Original literal | Physical IST.EXE | Original DS offset | Classification |
|---|---:|---:|---|
| `sivri da` followed by9f | 19f00 | 0d00 | Exact lowercase `sivri daş` in CP857 |
| `otoparkIn` | 1c279 | 3079 | Room-description/name-table clue |
| `otopark` | 1eb65 | 5965 | Area-name list clue |
| `nooluyor yaahuu!!` | 1d58e | 438e | Distinct text; not confirmed recalled opening line |
| `bosfor savaSIndan elli billah kadar\nOnceydi.` | 1df61 | 4d61 | Exact beginning of resident narrative text |

The item literal confirms **Daş**, preserving the user's correction. It sits
among padded item-like names (`zopa`, `kısa zopa`, etc.); its numeric item ID,
event handler and inventory transfer are not established by that placement.

The narrative continues `o zamanlar rIdvan ve\nadamlarI istanbul'a kol kanat
gerer,`. This original byte text says **before** (`Onceydi` under the game's
ASCII/Turkish mapping), differing from the recalled “sonra.” Preserve literal
bytes and do not normalize capital letters such asS/I/O before the recovered
font mapping is applied. The string alone cannot establish whether its scene
uses scrolling text, static pages, a cinematic stream or another mechanism.

The remembered phrase “Nooluyo ya o neydi öyle” was not found as an exact
resident literal. `nooluyor yaahuu!!` is a bounded near-match in a camping-text
neighborhood; it must **not** be substituted for the recalled opening dialogue
or assigned a speaker. Compressed/encoded text, generated dialogue and extended
spelling variants remain possible.

## Resource leads

The frozen inventory is used only as provisional indexing evidence:

- FRPOS.CKD ordinal18, `PC1`, payload14f8a,1543bytes, has an AmBk header in
  earlier structural research. Resident `pc1` immediately precedes `otoparkIn`;
  this makes it a focused initial-room candidate, not a decoded room specification.
- 3D.CKD ordinal60, `UFUK1.CMP`, payload144d0e,9968bytes. `ufuk1.cmp` follows
  that room-name clue; exact loading/usage still needs executable tracing.
- 0GFL.CKD ordinal12, `INTRO.GFL`, payload2e5a275,862364bytes, and ordinal41,
  `INTRO.GHD`, payloadcf82a56,23466bytes, are a paired-name cinematic lead.
  The word INTRO does not prove this pair implements the post-creation narrative.

A bounded case-insensitive search of all eight original CKD byte streams found
none of the longer ASCII prefixes `bosfor sava`, `sivri da`, `nooluyo`,
`neydi ` or `otopark`. This excludes only those literal spellings in stored
bytes; it does not exclude encoded strings or speech represented as samples.
Short `nool` matches in smooth audio bytes were discarded as non-language
coincidences rather than treated as dialogue evidence.

## Execution path and limits

The character investigator independently reports final nonempty fourth name
leading to index5, fade3200, party writer167c:182e (physical3e42e), cleanup
167c:1a1a (physical3e61a) and exit at physical3f05f. That is upstream evidence
reported by the collaborator; this bounded pass did not independently validate
all instructions in that chain.

Retained `game-init1670-rea.json` analyzes synthetic overlay4000:1927, mapped
to original1670:1927 in the existing artifact provenance. It references an
area-indexed table using stride29 and original DS:2e31/2e33, then calls the
resource-opening path. This is a useful common-area loader seed. Its decompiler
also shows runtime room/grid bounds and per-party resource loops, but those
mechanics require assembly validation before documentation as verified behavior.

No uninterrupted **party finalization → narrative → PC1/Otopark initialization**
call chain was established in this pass. No automatic stone acquisition,
dialogue trigger, speaker identity, first-exit adjacency, dog encounter or battle
transition is claimed. These remain genuine first-playable-path research tasks.

## Next bounded trace

Follow the existing resident six-case switch's return from the creation overlay;
resolve the next cutscene call and xrefs to DS:4d61; independently inspect the
area-table entry and original1670:1927 call with area index0; then parse PC1
using the actual consumer. Follow DS:0d00 item-name indexing only after recovering
the inventory/event API. The exact original dialogue remains an open search.
