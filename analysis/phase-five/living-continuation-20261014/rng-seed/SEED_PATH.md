# Startup RNG seed path — 2026-10-14

Original IST.EXE SHA256 9ba1640ae2ee33579cb1c914d0686346f53c4c7ef6520c7d92262b9c2f06b05e.
REA uses synthetic resident load segment1000; physical offset = analysis linear
−10000h+2400h. Logical overlay IDs elsewhere are not runtime load segments.

Confirmed by original instructions and REA, rather than pseudocode types:

1. Startup physical7ae4 (analysis156e4) calls1000:190e with a null far pointer,
   then pushes returned AX into1000:1768 at physical7aed. This selects the low
   sixteen bits of the converted timestamp and clears the high seed word.
2. 1000:190e calls1296 (INT21/AH2a, date CX/DX), then12a9 (AH2c, time CX/DX).
   Each saves both words into a four-byte stack object and passes both to4a88.
3. 4a88 calls4db6 to initialize timezone/DST information. It combines year
   blocks, month lengths, day, hour, minute and second using wrapping32-bit
   multiplication/addition. In DOS time storage byte0=minute, byte1=hour,
   byte2=hundredths, byte3=second. The conversion uses bytes0,1,3; hundredths
   are not included. The seed is therefore not an arbitrary millisecond tick.
4. 4db6 inspects an environment variable named atDS95d4 (bytes `TZ\0`),
   initializes fallback offset DS95ce=4650h/18000seconds and DSTenabled=1
   when absent/invalid, or parses a supplied zone string.4fa2 applies the
   original calendar/DST branch. These are compiler-library rules; do not
   replace them with the host timezone database without an equivalence audit.

The fixed assembly adds epoch constant12cea600h, then year−1980 signed block
products (four-year block7861f80h and annual1e13380h), leap adjustments, timezone,
day/hour/minute/second terms. This is an observed arithmetic decomposition,
not yet a complete safe host-date API. No new automatic native seed is connected.
Original startup environment and all prior/shared RNG consumers still matter for
matching a captured character; a timestamp alone cannot establish its RNG state.

REA evidence IDs:
- setter1768: ev_74982cf8d93c1bb63a3aa0283657c65d07e2faee6e9d6042487fdbf52b6c23b4
- date1296: ev_e3ca81adc9ec593a0885133e2b0039ae4484c4cc656cebc9738aa610877a2fe6
- time12a9: ev_59d84d873ee6fe50acf65da1dad3fc7b4d6c4e4ec577365c5093e136f2db29c4
- conversion4a88: ev_075df2f5b03e7b07b39b92e721129cd4f59c4554d69d2a5653edc2e92d6859e0
- timezone4db6: ev_e1f4adfc8a95153114699470219822981694cdd7ed3fd8453fdacf23108afe44
- DST4fa2: ev_39b0aa508e5ed0f73fed3292fbf714b111f73ea9aaf4bbe448a6a855d3c44156

Full REA export is resident-time-rea.json; focused direct assembly and original
physical byte slices/hashes are adjacent. Ghidra misrepresents timestamp arithmetic
as string pointers because code shares DOS data segments; assembly is authoritative.
Next: transcribe timezone/calendar semantics only if seed equivalence is needed,
and preserve a caller-owned deterministic RNG for generation and animation.
