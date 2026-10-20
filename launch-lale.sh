#!/usr/bin/env bash
# Run the preserved distribution using an isolated, persistent runtime copy.
set -euo pipefail
project_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)
fail() { printf 'Lale: %s\n' "$*" >&2; exit 1; }
prepare_only=false
case "${1:-}" in
    '') ;;
    --prepare-only) prepare_only=true; shift ;;
    *) fail 'Usage: launch-lale.sh [--prepare-only]' ;;
esac
[[ $# == 0 ]] || fail 'Unexpected arguments.'
command -v python3 >/dev/null || fail 'Python 3 is required to prepare the runtime.'
command -v flock >/dev/null || fail 'flock is required to protect runtime saves.'
emulator=${DOSBOX_BIN:-}
if [[ -z "$emulator" ]]; then
    emulator=$(command -v dosbox-x || command -v dosbox || true)
else
    emulator=$(command -v -- "$emulator" || true)
fi
[[ -n "$emulator" && -x "$emulator" ]] || fail 'Install Linux DOSBox-X or DOSBox, or set DOSBOX_BIN to its executable.'
python3 - "$emulator" <<'PY'
import sys
with open(sys.argv[1], 'rb') as f:
    if f.read(4) != b'\x7fELF':
        sys.exit('Lale: DOSBOX_BIN must be a Linux ELF executable.')
PY
runtime_dir="$project_dir/runtime"
[[ ! -L "$runtime_dir" ]] || fail 'runtime must not be a symbolic link.'
mkdir -p -- "$runtime_dir"
[[ ! -L "$runtime_dir/.launch.lock" ]] || fail 'Runtime lock must not be a symbolic link.'
exec 9>"$runtime_dir/.launch.lock"
flock -n 9 || fail 'Another launcher is using this runtime. Close it first.'
python3 - "$project_dir" <<'PY'
from pathlib import Path
import os
import shutil
import sys
import tempfile

root = Path(sys.argv[1])
runtime = root / 'runtime'
# Explicit distribution list excludes the protected Ghidra workspace.
names = '''0GFL.CKD 3D.CKD BOSCH.KOR FRPOS.CKD GRP.DAT GRPHAZIR.DAT
IKON.CKD IST.EXE IVIR.CKD KUR.EXE MUZIK.CKD SAVAS.CKD SDIGUS16.DSD
SDIPAS16.DSD SDISB16.DSD SDIWSS16.DSD SES.CFG SONPAL.PAL SOUNDS.CKD
TRDOS.DAT'''.split()

def directory(p):
    if p.is_symlink():
        sys.exit(f'Lale: Refusing runtime directory symlink: {p}')
    p.mkdir(exist_ok=True)

def seed(src, dst):
    if not src.is_file() or src.is_symlink():
        sys.exit(f'Lale: Missing or unsafe distribution file: {src}')
    if dst.is_symlink() or (dst.exists() and not dst.is_file()):
        sys.exit(f'Lale: Unsafe runtime file: {dst}')
    if dst.exists():
        return  # Preserve saves and configuration on subsequent launches.
    fd, temporary = tempfile.mkstemp(prefix='.seed-', dir=dst.parent)
    try:
        with os.fdopen(fd, 'wb') as out, src.open('rb') as inp:
            shutil.copyfileobj(inp, out)
        os.chmod(temporary, 0o600)
        os.replace(temporary, dst)
    finally:
        if os.path.exists(temporary):
            os.unlink(temporary)

for name in ('lale', 'capture', 'config'):
    directory(runtime / name)
for name in names:
    seed(root / 'lale' / name, runtime / 'lale' / name)
seed(root / 'DOSBox' / 'Turkish.lang', runtime / 'Turkish.lang')
# Keep the distribution's attribution with the runtime copy.
seed(root / 'OKUBENI.TXT', runtime / 'OKUBENI.TXT')
config = (root / 'dosbox.conf').read_text(encoding='ascii')
before, marker, after = config.partition('[autoexec]')
if not marker:
    sys.exit('Lale: Original configuration has no [autoexec] section.')
# Original autoexec uses a relative mount; emulator CWD is runtime, not root.
config = before + '[autoexec]\nmount t lale\nt:\nIST.EXE\nexit\n'
config = config.replace('language=\n', 'language=Turkish.lang\n')
dest = runtime / 'launch.conf'
if dest.is_symlink():
    sys.exit('Lale: Refusing runtime configuration symlink.')
fd, temporary = tempfile.mkstemp(prefix='.conf-', dir=runtime)
try:
    with os.fdopen(fd, 'w', encoding='ascii') as out:
        out.write(config)
    os.replace(temporary, dest)
finally:
    if os.path.exists(temporary):
        os.unlink(temporary)
print(f'Lale runtime: {runtime}')
PY
if "$prepare_only"; then
    printf 'Prepared; emulator: %s\n' "$emulator"
    exit 0
fi
[[ -n "${DISPLAY:-}${WAYLAND_DISPLAY:-}" ]] || fail 'No graphical session detected. Run this launcher from a KDE terminal.'
cd -- "$runtime_dir"
export XDG_CONFIG_HOME="$runtime_dir/config"
exec "$emulator" -conf "$runtime_dir/launch.conf" -lang "$runtime_dir/Turkish.lang"
