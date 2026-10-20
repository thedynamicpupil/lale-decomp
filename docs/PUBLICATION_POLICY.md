# Public repository inclusion policy

The current user-approved policy includes all project development and research
artifacts wherever technically feasible: Rust, tools, tests, assembly, pseudocode,
reports, maps, manifests, logs and historical checkpoints. It supersedes the
previous source-only file allowlist. Historical reports retain their original
wording; their assertions that research is private/excluded are superseded here.

Exclude original proprietary distribution files and every copy, including original
assets/executables, decoded artwork/audio/fonts, bulk manual text, raw memory/code
images and databases embedding those bytes. A renamed or serialized copy remains
original content. Preserve all such files locally. Assembly interpretation,
annotated pseudocode, numeric observations and derived research maps are included;
they are research, not replacement game resources. Copyright review of research
excerpts remains a maintainer responsibility; this preparation grants no rights.

Exclude all development prompt `.txt` files (including the named historical
continuation prompts), credentials, tokens and machine-specific secrets. Ordinary
research `.txt` files are included. `AGENTS.md` is public workflow documentation.
Do not upload secrets even in logs or compressed archives.

`.gitignore` includes by default. It uses protected original/copy directories,
credential paths, prompt names and reviewed exact paths for existing captured
assets. It deliberately has no blanket `analysis/`, `runtime/`, `extracted/`,
`.bin`, `.txt`, `.log`, media or archive exclusion. New files require provenance
review: ignore rules cannot recognize a future renamed asset or unknown secret.
The staged checker compares bytes with local originals in addition to path rules.

Technical omissions are the reproducible, machine-specific Cargo `target/`, Python
bytecode caches and two compiled research tools. These exceed practical source
repository scope and are regenerated from retained source; they are identified
in the audit, not silently deleted. Existing >100 MiB CPU traces are retained
locally and published as new lossless gzip copies with SHA-256 verification.
No research report or functional source was removed or rewritten.

GitHub warns above 50 MiB and blocks ordinary Git files above 100 MiB. See
[GitHub file limits](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-large-files-on-github)
and [Git LFS](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage).
Use LFS for future eligible large research artifacts that remain too large after
lossless compression; do not use it to publish excluded game content. LFS has not
been installed or configured by this task. Consult the exact size inventory in
`analysis/public-development-20261020/large-files.json` before publication.

Before committing:

```sh
git add <reviewed-paths>
python3 tools/audit_staged.py
git diff --cached --check
git diff --cached --name-status
```

The checker scans the index, not just working files. It is a heuristic, not proof
of license clearance or absence of arbitrary secrets. `.gitignore` does not untrack
files or remove historical blobs. If excluded content is discovered in history,
stop publication, revoke exposed credentials where applicable and plan an
explicitly approved history cleanup with collaborators. No history rewrite,
force-push, remote change or visibility change is authorized by preparation.
