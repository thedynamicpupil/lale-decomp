#!/usr/bin/env python3
"""Read-only index/history publication checks. Report paths/categories, never secrets.

Heuristics supplement provenance review. Requires local originals only for optional
byte-copy detection; missing originals do not make an asset-free checkout fail.
"""
import argparse
import gzip
import hashlib
import json
from pathlib import Path
import re
import subprocess
import sys

CHECKS = {
    "private key": rb"-----BEGIN (?:RSA |EC |OPENSSH |DSA )?PRIVATE KEY-----",
    "GitHub token": rb"\b(?:gh[pousr]_[A-Za-z0-9]{30,}|github_pat_[A-Za-z0-9_]{40,})\b",
    "AWS access key": rb"\b(?:AKIA|ASIA)[A-Z0-9]{16}\b",
    "service token": rb"\b(?:xox[baprs]-[A-Za-z0-9-]{20,}|sk-(?:proj-|svcacct-)?[A-Za-z0-9_-]{32,})\b",
    "credential URL": rb"https?://[^\s/:]+:[^\s/@]+@",
    "credential assignment": rb"(?im)(?:password|passwd|api[_-]?key|client[_-]?secret|access[_-]?token|secret[_-]?access[_-]?key)\s*[=:]\s*[\"']?[A-Za-z0-9_+/.-]{12,}",
}


def secret_findings(data):
    # Cheap prefix filters avoid applying token regexes to hundreds of MiB of
    # instruction-only traces. Values are never printed.
    lower = data.lower()
    needles = {
        "private key": (b"private key",),
        "GitHub token": (b"ghp_", b"gho_", b"ghu_", b"ghs_", b"ghr_", b"github_pat_"),
        "AWS access key": (b"akia", b"asia"),
        "service token": (b"xox", b"sk-"),
        "credential URL": (b"http:", b"https:"),
        "credential assignment": (b"password", b"passwd", b"api", b"client", b"access", b"secret"),
    }
    return [category for category, pattern in CHECKS.items()
            if any(needle in lower for needle in needles[category])
            and re.search(pattern, data)]


def git(*args, **kwargs):
    return subprocess.check_output(["git", *args], **kwargs)


def original_hashes():
    found = set()
    for folder in (Path("lale"), Path("DOSBox")):
        if folder.is_dir():
            for path in folder.rglob("*"):
                if path.is_file():
                    found.add(hashlib.sha256(path.read_bytes()).digest())
    for name in ("LALE.BAT", "OKUBENI.TXT", "Uninstall.exe", "dosbox.conf", "lale.pdf", "seyh48.ico"):
        path = Path(name)
        if path.is_file():
            found.add(hashlib.sha256(path.read_bytes()).digest())
    return found


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--history", action="store_true", help="also scan every reachable commit tree")
    parser.add_argument("--report", type=Path, help="write index paths, sizes and blob IDs as JSON")
    args = parser.parse_args()
    originals = original_hashes()
    errors, warnings, rows = [], [], []
    entries = []
    for entry in git("ls-files", "--stage", "-z").split(b"\0"):
        if entry:
            meta, path = entry.split(b"\t", 1)
            mode, oid, stage = meta.split()
            entries.append((mode.decode(), oid.decode(), path.decode(), stage.decode(), "index"))
    if args.history:
        for commit in git("rev-list", "--all").decode().splitlines():
            for entry in git("ls-tree", "-r", "-z", commit).split(b"\0"):
                if entry:
                    meta, path = entry.split(b"\t", 1)
                    mode, kind, oid = meta.split()
                    entries.append((mode.decode(), oid.decode(), path.decode(), "0", commit))
    paths = sorted({e[2] for e in entries})
    proc = subprocess.run(["git", "check-ignore", "--no-index", "-z", "--stdin"],
                          input=b"\0".join(p.encode() for p in paths)+b"\0", capture_output=True)
    if proc.returncode not in (0, 1):
        raise RuntimeError("git check-ignore failed")
    ignored = set(proc.stdout.decode().strip("\0").split("\0"))
    cache = {}
    for mode, oid, path, stage, origin in entries:
        label = f"{origin}:{path}"
        if path in ignored:
            errors.append((label, "excluded path"))
        if mode not in ("100644", "100755") or stage != "0":
            errors.append((label, "symlink, submodule or unresolved entry"))
            continue
        if oid not in cache:
            data = git("cat-file", "blob", oid)
            issues = []
            if len(data) > 100*1024**2:
                issues.append("exceeds GitHub ordinary Git 100 MiB limit")
            if hashlib.sha256(data).digest() in originals:
                issues.append("byte-identical original distribution file")
            scan = gzip.decompress(data) if data.startswith(b"\x1f\x8b") else data
            issues.extend(secret_findings(scan))
            if re.search(rb'data:image/[^;]+;base64,', scan):
                issues.append("embedded image payload requires provenance review")
            cache[oid] = (len(data), issues)
        size, issues = cache[oid]
        errors.extend((label, reason) for reason in issues)
        if size > 50*1024**2:
            warnings.append((label, "above GitHub 50 MiB warning threshold; consider LFS"))
        if origin == "index":
            rows.append({"path": path, "mode": mode, "git_blob": oid, "bytes": size})
    for label, reason in errors:
        print(f"FAIL {label}: {reason}", file=sys.stderr)
    for label, reason in warnings:
        print(f"WARN {label}: {reason}", file=sys.stderr)
    if args.report:
        args.report.write_text(json.dumps(rows, indent=2)+"\n")
    print(f"{'FAIL' if errors else 'PASS'}: {len(rows)} index files, {sum(r['bytes'] for r in rows)} bytes; "
          f"{len(cache)} unique blobs checked; {len(errors)} errors, {len(warnings)} size warnings. "
          f"Local original hashes: {len(originals)}. Provenance review still required.")
    return bool(errors)


if __name__ == "__main__":
    try:
        sys.exit(main())
    except (subprocess.CalledProcessError, UnicodeError, ValueError, OSError, RuntimeError) as exc:
        print(f"Audit could not complete: {type(exc).__name__}", file=sys.stderr)
        sys.exit(1)
