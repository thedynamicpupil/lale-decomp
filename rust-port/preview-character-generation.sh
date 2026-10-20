#!/usr/bin/env bash
# Graphical diagnostic using an observed original pre-setup state, not a new game.
set -euo pipefail
port_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
project_root="$(cd -- "$port_dir/.." && pwd)"
binary="$port_dir/target/debug/lale-menu-reference"
snapshot="$project_root/analysis/phase-five/character-ui-20261015/character/dos-run6/FIRST-SETUP-BEFORE-DS.BIN"
if [[ ! -x "$binary" ]]; then
    printf '%s\n' 'Build first: cargo build --workspace --offline --manifest-path rust-port/Cargo.toml' >&2
    exit 1
fi
exec "$binary" --root "$project_root" --creation-snapshot "$snapshot" "$@"
