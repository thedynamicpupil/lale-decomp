#!/usr/bin/env python3
"""Read-only audit of the Git index. Never prints matched credential values."""
import re
import subprocess
import sys


def git(*args):
    return subprocess.check_output(["git", *args])


def main():
    policy = git("show", ":.gitignore").decode("utf-8")
    allowed = {
        line[2:] for line in policy.splitlines()
        if line.startswith("!/") and not line.endswith("/")
    }
    checks = {
        "private key": rb"-----BEGIN (?:RSA |EC |OPENSSH |DSA )?PRIVATE KEY-----",
        "GitHub token": rb"\b(?:gh[pousr]_[A-Za-z0-9]{30,}|github_pat_[A-Za-z0-9_]{40,})\b",
        "AWS access key": rb"\b(?:AKIA|ASIA)[A-Z0-9]{16}\b",
        "service token": rb"\b(?:xox[baprs]-[A-Za-z0-9-]{20,}|sk-(?:proj-|svcacct-)?[A-Za-z0-9_-]{32,})\b",
        "credential URL": rb"https?://[^\s/:]+:[^\s/@]+@",
        "credential assignment": rb"(?im)(?:password|passwd|api[_-]?key|client[_-]?secret|access[_-]?token|secret[_-]?access[_-]?key)\s*[=:]\s*[\"']?[A-Za-z0-9_+/.-]{12,}",
    }
    errors = []
    count = size = 0
    for entry in git("ls-files", "--stage", "-z").split(b"\0"):
        if not entry:
            continue
        metadata, raw_path = entry.split(b"\t", 1)
        mode, oid, stage = metadata.split()
        path = raw_path.decode("utf-8")
        if path not in allowed:
            errors.append((path, "outside reviewed file allowlist"))
        if mode not in (b"100644", b"100755") or stage != b"0":
            errors.append((path, "symlink, submodule or unresolved index entry"))
            continue
        length = int(git("cat-file", "-s", oid.decode("ascii")))
        if length > 1024 * 1024:
            errors.append((path, "larger than source-only 1 MiB limit"))
            continue
        data = git("cat-file", "blob", oid.decode("ascii"))
        count += 1
        size += len(data)
        try:
            data.decode("utf-8")
        except UnicodeDecodeError:
            errors.append((path, "non-UTF-8 content"))
        if b"\0" in data:
            errors.append((path, "binary content"))
        for label, pattern in checks.items():
            if re.search(pattern, data):
                errors.append((path, label))
    for path, reason in errors:
        print(f"FAIL {path}: {reason}", file=sys.stderr)
    if not count:
        errors.append(("index", "no source files staged"))
    if errors:
        return 1
    print(f"PASS: {count} staged text files, {size} bytes; allowlist, modes, size and credential checks passed.")
    return 0


if __name__ == "__main__":
    try:
        sys.exit(main())
    except (subprocess.CalledProcessError, UnicodeError, ValueError) as exc:
        print(f"Audit could not complete: {type(exc).__name__}", file=sys.stderr)
        sys.exit(1)
