#!/usr/bin/env bash
set -euo pipefail
project_root="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
if [[ "${1:-}" == "--dump" ]]; then
    shift
    cargo build --release --offline --manifest-path "$project_root/rust-port/Cargo.toml" --bin lale-otopark-room
    exec "$project_root/rust-port/target/release/lale-otopark-room" --root "$project_root" --debug-dump "$@"
fi
LALE_WORLD_DEBUG=1 exec "$project_root/rust-port/play-native-release.sh" "$@"
