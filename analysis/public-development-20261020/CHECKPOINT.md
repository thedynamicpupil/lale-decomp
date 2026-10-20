# Public development preparation — 2026-10-20

## Scope and authority

The new task supersedes the earlier source-only allowlist: include development
and reverse-engineering artifacts wherever feasible, excluding original game
content/copies, development prompt TXT files and secrets. Preserve originals,
research, functional code, historical reports and frozen evidence. Combat research
remains paused. No new gameplay or desktop acceptance is claimed.

## Audit

`tree-audit.json` inventories 17,656 regular files at the initial audit boundary,
including ignored trees and build output, excluding Git internals. Subsequent
preparation documents and regenerated build caches are later additions.
`exclusions.json` records each omitted path and reason. `large-files.json` records
all 29 files above 50 MiB at that boundary and each disposition. No files were
removed, moved or altered in protected distribution/runtime-copy directories.

Original/distribution copies were compared by size and SHA-256 against local
`lale/`, bundled `DOSBox/` and original root files. Existing decoded media, binary
memory captures, original-loaded Ghidra databases and manual transcriptions remain
local through exact exclusions. Original assets in reference recordings remain
excluded. Retained research includes assembly, pseudocode, reports, tool exports,
maps, logs, manifests, numeric observations and generated native party checkpoints.
Provenance checking is heuristic and does not confer copyright clearance.

Technical omissions: machine-specific Cargo build output, Python caches and two
compiled research tools are reproducible from source. Two 234,881,024-byte CPU
traces remain untouched locally; new deterministic gzip copies under
`large-traces/` preserve their full bytes (SHA-256 checked after decompression).
These copies are 1,513,352 and 1,551,068 bytes. No eligible staged file needs LFS.
For future eligible large research, use LFS after provenance review; LFS is not a
way to publish excluded originals. No LFS installation/configuration was changed.

## Git configuration and history

At entry, the working tree/index were clean. There was one reachable commit,
`df8c5a9` (`Initial LALE native Rust port`), with 100 tracked files, on `main`.
Local `origin/main` pointed to the same commit. The existing origin URL is
`https://github.com/thedynamicpupil/lale-decomp.git`; `main` tracks `origin/main`.
The repository is non-bare, filemode and reflog recording are enabled; the standard
origin branch fetch refspec is configured. Only sample hooks are present. Global configuration key names show GitHub/gist
credential helpers and user identity fields; their values were not exported or
changed. No local custom hook or LFS setup is introduced. No network fetch was performed, so remote-only/unfetched refs and
server-side visibility are outside the audit.

All locally reachable historical trees are checked by `tools/audit_staged.py
--history` against current exclusions, original file hashes and credential
signatures. The original 100-file commit passes; no excluded tracked or historical
file has been identified, so no history cleanup is currently required. Ignore
rules never remove old blobs. If excluded content is later found, separately
approve a coordinated history cleanup and revoke any exposed credentials before
publication. No history rewrite, commit, push, visibility or remote change was made.

## Changes

- Replaced the default-deny file allowlist with default inclusion and targeted
  provenance exclusions. Ordinary research TXT/BIN/log/media extensions are not
  banned globally.
- Added CONTRIBUTING, public policy, issue/PR templates; updated README,
  development guidance and living-doc notices. Historical checkpoints stay intact.
- Replaced the old text-only 1 MiB staged checker with an index/history checker
  that supports research binaries/compressed traces, GitHub limits, original
  byte-copy matching, secret heuristics and per-blob index reports.
- Preserved licensing as an explicit maintainer decision; no license was invented.

## Validation and review artifacts

`checks.json` records formatting, offline workspace check/build and all 180 test
executions passing, Python tool AST checks, shell syntax and all 30 frozen hashes.
Cargo tests use the existing private preservation workspace; this does not mean
all fixture tests run without originals. The full staged whitespace check flags pre-existing formatting in historical
evidence; it is retained byte-for-byte. New authored files pass the scoped
whitespace check. `whitespace-summary.json` records the affected paths.
No runtime/source logic changed. No new
DOS or native desktop validation was needed or claimed for documentation/policy.

`staged-files.txt` lists the complete staged change set. `staged-index.json` records
all index paths, modes, blob IDs and sizes. These generated inventories exclude
themselves from recursive listing where necessary; use `git diff --cached
--name-status` and the checker for authoritative current index state. Review
`git diff --cached` before committing. Audit logs and validation outputs accompany
this checkpoint. A public source license remains unresolved. The remaining Git
operations are user review, commit and ordinary push; no automatic publication.

The full index/history audit passed with zero exclusion/credential errors and
zero size warnings at the recorded audit boundary (1,875 index files,
343,646,975 bytes). Final manifests/logs added after that boundary are checked
again before handoff. The largest retained file is a 15,459,070-byte REA snapshot.
Exact final change counts are in the final handoff and staged path listing.

Original distribution verification: all 25 entries in the historical
`analysis/FILE_MANIFEST.sha256` still match. Ignore-policy positive/negative
probes and credential-filter positive/negative probes passed. The final index
manifest intentionally omits its own blob to avoid a recursive hash definition;
the complete path listing includes it.
