# Repository update policy — 2026-10-23

The current user instruction is to publish the files needed to build, test and run
the native port, ignoring new analysis and untracking previously committed
`analysis/` files from the current tree. This supersedes the previous
include-research-by-default policy for new updates.

Include reviewed Rust source, Cargo manifests/lockfile, test source, launch/build
scripts and relevant build, setup, controls and contribution documentation. Tests
may refer to private local fixtures; do not embed original game bytes to make a
public checkout appear self-contained.

New `analysis/`, `runtime/`, `extracted/`, `reconstruction/` and reference media
files are ignored, including reports, checkpoints, captures, generated frames,
DOS test copies and personal saves. Previously tracked `analysis/` files are
explicitly removed from the index with `git rm -r --cached -- analysis`; their
local bytes and older commits remain intact. `.gitignore` alone cannot untrack
files. This update does not rewrite history or force-push. Other historical
tracked paths are unaffected by this analysis-specific removal.

Original game distribution files and copies, decoded graphics/audio/fonts, raw
memory/code images, protected Ghidra databases, development prompts, credentials,
secrets and machine-specific build/cache products remain local. Preserve their
bytes and all local saves. Original game content belongs to its rights holders;
users must supply their own legally obtained distribution and private projection
fixture as described in [development setup](DEVELOPMENT.md). No source-code
license choice or repository-visibility change is made by this update.

Before committing a source-focused update:

```sh
git rm -r --cached --ignore-unmatch -- analysis
git add <reviewed-source-and-documentation-paths>
python3 tools/audit_staged.py --staged-only
git diff --cached --check
git diff --cached --name-status
```

The changed-index audit checks exactly the added/modified paths for ignored
content, secret patterns, copied originals and oversized blobs. It does not
certify the historical tree. The existing full-index audit and `--history` option
remain available for a separate review; they can flag unchanged historical paths
that are now ignored. Never suppress a finding on a newly staged path by treating
it as historical. No audit substitutes for provenance review.
