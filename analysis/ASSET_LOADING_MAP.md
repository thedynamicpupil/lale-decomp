# Asset loading map

Verified from original structure plus relocated overlay analysis; synthetic 4000 addresses are not runtime addresses. Full dossiers: phase-four/overlay16cd-rea.json, overlay16cd-lookup-rea.json, overlay16c8-rea.json and overlay16b5-rea.json.

| Operation | Relative overlay code | Original physical offset |
|---|---|---|
| Open FLiB package | 16cd:0047 | 0x5c147 |
| Case-insensitive member lookup | 16cd:0342 | 0x5c442 |
| ASCII uppercase helper | 16cd:002f (near helper) | 0x5c12f |
| Read member | 16cd:053c | 0x5c63c |
| File wrapper | 16c8:003a | 0x5bbea |
| CMP loader | 16b5:052a | 0x59e3a |
| CMP packet decoder | 16b5:043b | 0x59d4b |

The opener reads FLiB/header and FiLE directory records, constructs 56-byte internal records and maintains eight package slots at DS:e86c. On-disk directory records are 65 bytes; the executable uses the low 16-bit count. Lookup scans packages and records in order, uppercases ASCII a–z for comparison, copies a matched internal record, and falls back to a loose DOS filename if no archive match exists. Do not confuse exported stub offsets with actual overlay code offsets.

Startup slot order is MUZIK, SOUNDS, FRPOS, IKON, IVIR, SAVAS, 3D, 0GFL. Member names are the verified lookup key; archive ordinals and physical offsets are provenance identifiers, not established gameplay IDs.

Menu overlay1682:054d references acilisa.pal/acilisa.cmp, acilisb.cmp, comp4a.pal/comp4a.cmp, comp4b.cmp and istb.pal (IVIR members). Its music call references demo.amf. Credits code1682:217c opens thanx.doc and grup.pal/grup.cmp. See phase-four/continuation/menu-overlay1682-rea.json. Per-member batch offsets and source hashes are retained in phase-five/graphics-batch-20261014.json and extracted/phase-five provenance files.

Unknown: most resource-to-gameplay IDs, palette lifetime, animation frame selection and resource-list control syntax. Literal SAVAS.BAK -MAGA1.CMP/-MAGA2.CMP spellings are absent members; whether the hyphen disables them is unverified. SAVDEM.RES references absent DUVARIC0.CMP. See the literal dependency addendum rather than the earlier normalized scanner claim.
