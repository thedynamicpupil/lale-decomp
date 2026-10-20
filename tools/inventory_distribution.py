#!/usr/bin/env python3
"""Read-only distribution inventory. Writes observations only under analysis/."""
from pathlib import Path
from collections import Counter
import hashlib
import json
import math
import re
import struct
import subprocess

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / 'analysis'
EVIDENCE = OUT / 'evidence'
EVIDENCE.mkdir(parents=True, exist_ok=True)

def sha(data):
    return hashlib.sha256(data).hexdigest()

def entropy(data):
    counts = Counter(data)
    return round(-sum((n / len(data)) * math.log2(n / len(data))
                      for n in counts.values()), 4) if data else 0

def cstr(data):
    return data.split(b'\0', 1)[0].decode('ascii', errors='backslashreplace')

paths = sorted(p for p in (ROOT / 'lale').iterdir()
               if p.is_file() and not p.name.startswith('IstanbulEfsaneleriDOS'))
paths += [ROOT / n for n in ('LALE.BAT', 'OKUBENI.TXT', 'lale.pdf',
                             'seyh48.ico', 'Uninstall.exe')]
records = []
members = []
literal_hits = []
for path in paths:
    if path.is_symlink():
        raise ValueError(f'Refusing symlink: {path}')
    data = path.read_bytes()
    rel = str(path.relative_to(ROOT))
    strings = list(re.finditer(rb'[\x20-\x7e]{5,}', data))
    r = dict(path=rel, size=len(data), sha256=sha(data),
             file_identification=subprocess.check_output(
                 ['file', '--brief', '--', str(path)], text=True).strip(),
             head_hex=data[:128].hex(), tail_hex=data[-64:].hex(),
             entropy_bits_per_byte=entropy(data),
             ascii_runs_min5=len(strings),
             string_preview=[dict(offset=m.start(), text=m.group()[:200].decode('ascii'))
                             for m in strings[:40]])
    if path.suffix.upper() in ('.EXE', '.DSD'):
        (EVIDENCE / (path.name + '.strings.json')).write_text(json.dumps(
            [dict(offset=m.start(), text=m.group().decode('ascii')) for m in strings],
            indent=2) + '\n')
    if data[:4] == b'FLiB':
        count, table = struct.unpack_from('<II', data, 4)
        assert table + count * 65 == len(data), rel
        cursor = 12
        entries = []
        for i in range(count):
            at = table + i * 65
            row = data[at:at + 65]
            magic, longname, shortname, offset, size_a, size_b = struct.unpack('<4s32s17sIII', row)
            assert magic == b'FiLE' and size_a == size_b, (rel, i)
            assert offset == cursor + 65, (rel, i, offset, cursor)
            assert data[cursor:offset] == row, (rel, i, 'header differs')
            assert offset + size_a <= table, (rel, i)
            assert cstr(longname) == cstr(shortname), (rel, i)
            payload = data[offset:offset + size_a]
            entry = dict(container=rel, ordinal=i, name=cstr(longname),
                         inline_header_offset=cursor, directory_entry_offset=at,
                         payload_offset=offset, size=size_a, size_field_b=size_b,
                         sha256=sha(payload), head_hex=payload[:64].hex(),
                         tail_hex=payload[-16:].hex(), entropy_bits_per_byte=entropy(payload))
            entries.append(entry)
            members.append(entry)
            cursor = offset + size_a
        assert cursor == table, (rel, cursor, table)
        r['flib'] = dict(count=count, directory_offset=table, record_bytes=65,
                         validation='all records, duplicate headers, sizes and contiguous ranges pass',
                         member_extensions=dict(Counter(Path(e['name']).suffix.upper() or '(none)'
                                                        for e in entries)),
                         payload_bytes=sum(e['size'] for e in entries))
    if data[:2] == b'MZ' and path.parent.name == 'lale':
        fields = struct.unpack_from('<14H', data)
        names = 'magic cblp cp crlc cparhdr minalloc maxalloc ss sp csum ip cs lfarlc ovno'.split()
        h = dict(zip(names, fields))
        declared = (h['cp'] - 1) * 512 + (h['cblp'] or 512)
        header = h['cparhdr'] * 16
        relocations = [dict(offset=o, segment=s,
                            image_linear=s * 16 + o,
                            source_file_offset=header + s * 16 + o)
                       for o, s in struct.iter_unpack('<HH', data[h['lfarlc']:h['lfarlc'] + 4 * h['crlc']])]
        r['mz'] = dict(header=h, header_bytes=header, declared_file_bytes=declared,
                       declared_load_image_bytes=declared-header,
                       trailing_bytes=len(data)-declared,
                       relative_entry=f"{h['cs']:04x}:{h['ip']:04x}",
                       entry_file_offset=header+h['cs']*16+h['ip'],
                       relocations_fit_header=h['lfarlc']+h['crlc']*4 <= header,
                       relocation_targets_fit_image=all(x['source_file_offset']+2<=declared for x in relocations),
                       declared_boundary_hex=data[declared:declared+128].hex())
        (EVIDENCE / (path.name + '.relocations.json')).write_text(json.dumps(relocations, indent=2)+'\n')
        for target in paths:
            name = target.name.encode('ascii')
            offsets = [m.start() for m in re.finditer(re.escape(name), data, re.I)]
            literal_hits.append(dict(executable=rel, filename=target.name, offsets=offsets,
                                     scope='complete physical executable, ASCII case-insensitive literal'))
    if path.name in ('GRP.DAT', 'GRPHAZIR.DAT', 'SES.CFG', 'BOSCH.KOR', 'SONPAL.PAL', 'TRDOS.DAT'):
        r['small_data'] = dict(distinct_byte_values=len(set(data)), minimum=min(data), maximum=max(data),
                               zero_bytes=data.count(0))
    records.append(r)

(EVIDENCE / 'distribution-inventory.json').write_text(json.dumps(records, indent=2)+'\n')
(EVIDENCE / 'flib-members.json').write_text(json.dumps(members, indent=2)+'\n')
(EVIDENCE / 'executable-filename-literals.json').write_text(json.dumps(literal_hits, indent=2)+'\n')
(OUT / 'FILE_MANIFEST.sha256').write_text(''.join(f"{r['sha256']}  {r['path']}\n" for r in sorted(records,key=lambda r:r['path'])))
print(f'{len(records)} original distribution files; {len(members)} validated FLiB member records.')
for r in records:
    print(r['path'], r['size'], r.get('flib', r.get('mz', r.get('small_data',{}))))
