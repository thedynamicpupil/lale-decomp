# Correction: literal SAVAS dependency lines

The earlier graphics batch scanner matched filename tokens with `[A-Za-z0-9_]+\.(?:CMP|KOR|PAL)`. This excludes a preceding hyphen. Consequently its claim of equal RES/BAK reference sets is true only for token-normalized names, and the statement that neither contains absent references is incorrect when interpreting exact list lines.

A new raw-byte/CRLF-line comparison confirms two differences: SAVAS.RES contains `MAGA1.CMP` and `MAGA2.CMP`; corresponding SAVAS.BAK lines contain `-MAGA1.CMP` and `-MAGA2.CMP`. The literal hyphen-prefixed spellings are not present archive members. This agrees with frozen `analysis/evidence/resource-list-dependencies.json`. All other corresponding lines are equal. Whether '-' disables a list entry or serves another purpose remains unverified until the consumer is traced.

`graphics-dependency-literal-addendum-20261014.json` preserves all raw list bytes, exact spellings, per-line payload/original offsets and exact member-presence results. Earlier reports/evidence are retained unchanged and must be read with this correction. SAVDEM.RES still contains the literal absent `DUVARIC0.CMP`.
