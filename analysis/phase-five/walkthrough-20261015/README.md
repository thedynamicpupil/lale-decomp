# Walkthrough/native increment — 2026-10-15

Start with [visual findings and code/manual cross-reference](VISUAL_REFERENCE_FINDINGS.md).
Use [cached contact sheets and targeted frames](visual-index/INDEX.md), with exact
source hashes/timestamps in `visual-index/index.json`. The older `video-index/`
is explicitly superseded exploratory fps sampling, not the timestamp authority.

Re-use cache (no full video decode):

```sh
python3 tools/extractors/index_walkthroughs.py \
  --output analysis/phase-five/walkthrough-20261015/visual-index
```

Add one full-resolution frame by recording number and seconds:

```sh
python3 tools/extractors/index_walkthroughs.py \
  --output analysis/phase-five/walkthrough-20261015/visual-index \
  --target 1 92.5
```

Already sampled:125 coarse frames, eight contact-sheet pages,20 targeted frames.
Inspect the cache first before asking for more. These are reference-only video
positions, not engine input/animation timing. Protected source videos are read-only.
The script refuses protected source output paths and changed-source cache reuse.

New original/native evidence: [source sheets and keyed/mirrored blits](otopark/SOURCE_SHEETS_AND_BLITS.md).
Native use: [F10 source-sheet guide](../../../rust-port/NATIVE_OTOPARK_RESOURCE.md).
`native-checks/` also retains independent original MERDUST/DUVAR2 asset exports;
these are complete source sheets, not composed native scene screenshots.

`baseline.json` records pre-increment hashes of existing evidence, source/docs,
originals, emulator and reference material. Final preservation report lists any
intentional changes; original/protected/historical changes must be zero.
