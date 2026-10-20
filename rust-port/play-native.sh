#!/usr/bin/env bash
set -euo pipefail
project_root="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
cargo build --offline --manifest-path "$project_root/rust-port/Cargo.toml" --bin lale-menu-reference
exec "$project_root/rust-port/target/debug/lale-menu-reference" --root "$project_root" "$@"
