# Native calendar seed boundary — 2026-10-15

## Binary-verified conversion

`rust-port/crates/lale-runtime/src/original_seed.rs` transcribes resident `1000:4a88` and the
month-zero calling path of `1000:4fa2`, using the existing original-instruction
[seed audit](../../living-continuation-20261014/rng-seed/SEED_PATH.md).
Fresh REA/Ghidra analysis of `0x14fa2` is retained in `dst-rea.json`, evidence
`ev_88548c8c1337d7d363afd1c14023acb0f4ea1db8ee195274f27be3ac5b7c9566`.
The temporary owned REA session is closed; no GUI project was accessed.

The original no/invalid `TZ` fallback is **18000 seconds west, DST enabled**.
This is the compiler's old EST/EDT fallback, even when the native machine is in
İstanbul. The module does not silently replace it with modern Turkish or US
timezone rules. Nondefault original DOS TZ string parsing is not implemented.
Source calendar tables at original physical `0x227a0..0x227de` are retained with
hashes in `calendar-tables.json`; synthetic resident DS is `26e0`, not a runtime
segment claim. Original `4a88` physical `0x6e88..0x6fb1` remains in prior audit.

Year blocks, leap addition, day/hour/minute/second terms and all 32-bit wrapping
follow instructions. `4fa2` changes its April boundary for year-since-1970 >16:
last Sunday in April through 1986, first Sunday in April from 1987. October ends
on the last Sunday at the original hour comparison. Before/after 02:00 boundaries
are preserved. Hundredths are ignored. The conversion is not a millisecond tick.
Startup passes AX only to `1768`, which clears the high RNG word.

## Native implementation policy, not a DOS runtime observation

`host_local_seed()` reads Linux64 host local **civil date/time** through
`localtime_r` once at native New Game entry, then applies the explicitly chosen
source fallback conversion. `DosDateTime::original_fallback_seed()` is the pure,
backend-independent function. Host UTC offset, `tm_isdst`, and host TZ names do
not override the recovered source fallback. This is a compatibility boundary:
it replaces DOS INT21 date/time; it does not emulate the unknown earlier shared
startup/menu RNG history or guarantee that a same-time DOS launch yields the
same first character. Native creation then owns and preserves the recovered
shared RNG. There is no arbitrary fixed seed and no random/error seed fallback.

Input is limited to 1980..2099 valid dates, so the source four-year leap rule
matches Gregorian calendar validity. Invalid clocks, unsupported platform
adapters, or conversion errors are reported, not normalized. Windows adapter is
not implemented. Linux64 struct-tm ABI is confined to the host adapter.

## Validation and limits

Four direct offline Rust tests pass: epoch/year blocks and low word,
ignored hundredths, April/October hour boundaries and rejection of March's
modern US rule, invalid date rejection, independent Python datetime fixtures
covering old April behavior, leap day, 2026 and unsigned late-2099 timestamp.
Python fixtures are transcription checks, **not controlled original DOS runs**.
No new DOS timestamp equivalence capture is claimed. Prior generator arithmetic
and full-record DOS differential acceptance remain unchanged.

Root integration owns choosing this explicit creation-entry compatibility
boundary; this module does not alter menu rendering, character draws, persistence,
cinematics, audio, original assets, runtime saves, or historical evidence.
