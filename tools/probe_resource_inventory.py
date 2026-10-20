#!/usr/bin/env python3
"""Supplement the byte inventory without extracting or executing resources."""
from pathlib import Path
from collections import Counter
import hashlib
import json
import re
import struct

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / 'analysis' / 'evidence'
members = json.loads((OUT / 'flib-members.json').read_text())
observations = []
list_edges = []
for container in sorted(set(m['container'] for m in members)):
    with (ROOT / container).open('rb') as f:
        selected = [m for m in members if m['container'] == container]
        for m in selected:
            f.seek(m['payload_offset'])
            b = f.read(m['size'])
            assert hashlib.sha256(b).hexdigest() == m['sha256']
            ext = Path(m['name']).suffix.upper()
            obs = dict(container=container, name=m['name'], payload_offset=m['payload_offset'])
            if ext == '.PAL':
                obs.update(kind='palette-candidate', size=len(b), minimum=min(b), maximum=max(b),
                           triplets=len(b)//3, evenly_divisible_by_three=len(b)%3==0)
            elif ext == '.CMP':
                a, c = struct.unpack_from('<HH', b)
                obs.update(kind='image-candidate', first_u16=a, second_u16=c,
                           remaining_bytes=len(b)-4, candidate_pixel_count=a*c,
                           bytes_per_candidate_pixel=round((len(b)-4)/(a*c),4) if a*c else None)
            elif ext == '.KOR':
                obs.update(kind='coordinate-candidate', size=len(b),
                           first_u16s=list(struct.unpack_from('<'+str(min(36,len(b)//2))+'H',b)),
                           nonzero_bytes=sum(c!=0 for c in b))
            elif ext == '.GHD':
                obs.update(kind='gfl-companion', prefix=b[:12].hex(), signature=b[:3].decode('ascii'),
                           matching_gfl=any(x['name'].upper()==Path(m['name']).with_suffix('.GFL').name.upper()
                                            for x in selected))
            elif ext == '.AMF':
                obs.update(kind='amf-signature', prefix=b[:4].hex(),
                           title_bytes=b[4:36].hex(), title_ascii=b[4:36].split(b'\0')[0].decode('ascii',errors='backslashreplace'))
            elif container.endswith('FRPOS.CKD'):
                obs.update(kind='ambk-signature', prefix=b[:24].hex(),
                           ascii_runs=[dict(relative_offset=x.start(), text=x.group()[:120].decode('ascii'))
                                       for x in list(re.finditer(rb'[\x20-\x7e]{8,}',b))[:6]])
            elif ext in ('.RES','.BAK','.LOG','.DOC'):
                obs.update(kind='text-candidate', raw_hex=b.hex(),
                           cp857_candidate=b.decode('cp857',errors='replace'))
                if ext in ('.RES','.BAK'):
                    for line in b.splitlines():
                        name=line.strip().decode('ascii',errors='backslashreplace')
                        if not name:
                            continue
                        same=[x for x in selected if x['name'].upper()==name.upper()]
                        all_matches=[dict(container=x['container'],name=x['name'],payload_offset=x['payload_offset'])
                                     for x in members if x['name'].upper()==name.upper()]
                        list_edges.append(dict(container=container,list_member=m['name'],referenced_name=name,
                                               present_in_same_container=bool(same),all_name_matches=all_matches))
            else:
                continue
            observations.append(obs)

small = {}
for name in ('GRP.DAT','GRPHAZIR.DAT','SES.CFG','BOSCH.KOR','SONPAL.PAL','TRDOS.DAT'):
    b=(ROOT/'lale'/name).read_bytes()
    small[name]=dict(size=len(b),sha256=hashlib.sha256(b).hexdigest(),hex=b.hex())
a=(ROOT/'lale/GRP.DAT').read_bytes();b=(ROOT/'lale/GRPHAZIR.DAT').read_bytes()
small['grp_comparison']=dict(different_offsets=[i for i,(x,y) in enumerate(zip(a,b)) if x!=y],
                            length_equal=len(a)==len(b))
icon=(ROOT/'seyh48.ico').read_bytes()
reserved,kind,count=struct.unpack_from('<HHH',icon)
icons=[]
for i in range(count):
    width,height,colors,res,planes,bits,size,offset=struct.unpack_from('<BBBBHHII',icon,6+i*16)
    payload=icon[offset:offset+size]
    assert len(payload)==size
    icons.append(dict(width=width or 256,height=height or 256,colors=colors,planes=planes,bits=bits,
                      size=size,offset=offset,payload_sha256=hashlib.sha256(payload).hexdigest(),
                      payload_header_hex=payload[:40].hex()))
small['seyh48.ico']=dict(reserved=reserved,type=kind,count=count,images=icons)

(OUT/'resource-probes.json').write_text(json.dumps(observations,indent=2,ensure_ascii=False)+'\n')
(OUT/'resource-list-dependencies.json').write_text(json.dumps(list_edges,indent=2)+'\n')
(OUT/'small-file-structures.json').write_text(json.dumps(small,indent=2)+'\n')
print('Palette byte maxima:',Counter(x['maximum'] for x in observations if x['kind']=='palette-candidate'))
print('AMF prefixes:',Counter(x['prefix'] for x in observations if x['kind']=='amf-signature'))
print('Resource list references:',len(list_edges),'same-container misses:',sum(not x['present_in_same_container'] for x in list_edges))
print('ICO images:',icons)
