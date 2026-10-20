# Party serialization and downstream re-read boundary

Original167c:1932, physical IST3e532..3e619, audited from direct original
instructions and REA on the existing static-only wrapper. REA CS4000 coordinates
are synthetic, not observed DOS placement. No protected project/file was changed.

The known creation-success path calls this reader with grp.dat before the film
(main physical7e91..7e99, prior cinematic report). This report adds the reader's
actual working-memory effects, not a repeated writer investigation.

The reader opens its supplied name using mode2. Slots1..4 read name37 into
DS9c26+148*slot and auxiliary37 intoDS9c95+148*slot. It then reads numeric92 into
DS99a6+92*slot, closes the stream, and derives a race label per slot using
DS2638+11*numeric_word02. This label is strcpy-copied intoDS9c70+148*slot.
Relative to each working text record, offsets are name0, derivedrace74,
auxiliary111. Offsets37..73 and bytes following the derived label's NUL are not
cleared. The on-disk74-byte pairs therefore do not represent contiguous text
buffers in the original workspace.

The reader does not call RNG, trait initialization or stat generation. It does
not repeat writer preparation0a→38/0c→3a, normalize numeric values or interpret
the auxiliary digits. Exact664-byte serialization (296 text+368 numeric) is
compatible with the existing strict Party parser. The DOS function lacks the
host parser's explicit length/race safety checks; corrupt/short-file behavior is
not reproduced as unchecked memory access.

New pure Rust `party_workspace.rs` models this boundary. It takes existing raw
workspace bytes, copies the serialized records and derives original race strings,
leaving all unassigned text gaps/tails intact. `serialized_snapshot` takes only
the persisted fields; there is no file IO, automatic pre-write mutation or UI
finalization. Invalid host input is rejected before partial mutation.

Tests cover both original parties, pre-write prepared copies, exact664-byte
roundtrip through workspace, derived original labels, preserved gaps/tails,
unchanged numeric blocks and atomic invalid-race rejection. This verifies the
local in-memory bridge; full game save/load and creation completion remain gated.

Evidence: adjacent original reader listing and exact bytes/hash/label table JSON;
REA ev_f8ab06e7afcfdbdc6299b6a0691c3f4a7218255f48d5b55782694c3384ebeace.
The new full REA export is party-reread-rea.json. Session closed after export.

Next: integrate a verified caller snapshot and native output policy only after
full creation state is validated. Distinguish party creation's grp.dat from
broader gameplay save/load; this reader alone does not establish all save formats.
