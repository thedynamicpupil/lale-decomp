"""Read-only bounded PCS1 group/dialogue audit; run from project root.
Does not execute scripts, assign speakers, or infer item/event identifiers.
"""
from pathlib import Path
import json, hashlib
exe = Path('lale/IST.EXE').read_bytes()
archive = Path('lale/FRPOS.CKD').read_bytes()
pcs = archive[0x4d:0x4d + 1930]
pc = archive[0x14f8a:0x14f8a + 1543]
assert pcs[:4] == pc[:4] == b'AmBk'
assert exe[0x47d30:0x47d32] == bytes.fromhex('04 0a')
assert exe[0x484d3:0x484d6] == bytes.fromhex('55 8b ec')
cell = pc[43 + (1 * 10 + 2) * 15:43 + (1 * 10 + 2) * 15 + 15]
assert cell.hex() == '030202010201020102020001010106'
p = 22
rows = []
for i in range(int.from_bytes(pcs[20:22], 'big')):
    size = int.from_bytes(pcs[p:p + 2], 'big')
    rows.append({'index': i, 'payload': p + 2, 'bytes': size})
    p += 2 + size
assert p == len(pcs)
needle = b'nooluyo yaa? o neydi Oyle'
encoded = bytes((v - 10) & 255 for v in needle)
at = pcs.index(encoded)
assert at == 0x500
print(json.dumps({'PCS1_sha256': hashlib.sha256(pcs).hexdigest(),
                  'cell_decimal_key': ''.join(f'{n:02d}' for n in cell[11:15]),
                  'groups': rows, 'dialogue_member_offset': hex(at),
                  'decoded_bytes': repr(bytes((v + 10) & 255 for v in pcs[at:at + len(needle) + 1]))}, indent=2))
