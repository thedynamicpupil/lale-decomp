#!/usr/bin/env python3
"""Read original audio candidates; emit structural evidence, never play/convert.

AMF layout follows IST.EXE's resident parser at physical 0x12a3a onward.
Field names for sample metadata are provisional until playback use is traced.
"""
import argparse
from collections import Counter
import hashlib
import json
from pathlib import Path
import re
import struct

ROOT = Path(__file__).resolve().parents[2]

def u16(data, off):
    return struct.unpack_from('<H', data, off)[0]

def u32(data, off):
    return struct.unpack_from('<I', data, off)[0]

def sha(data):
    return hashlib.sha256(data).hexdigest()

def members(path):
    data = path.read_bytes()
    assert data[:4] == b'FLiB'
    count, directory = struct.unpack_from('<II', data, 4)
    assert directory + 65 * count == len(data)
    cursor = 12
    for ordinal in range(count):
        at = directory + ordinal * 65
        row = data[at:at+65]
        magic, name, second, offset, size, size_b = struct.unpack('<4s32s17sIII', row)
        assert magic == b'FiLE' and size == size_b
        assert offset == cursor + 65 and data[cursor:offset] == row
        assert name.split(b'\0')[0] == second.split(b'\0')[0]
        assert offset + size <= directory
        payload = data[offset:offset+size]
        yield dict(ordinal=ordinal, name=name.split(b'\0')[0].decode('ascii'),
                   directory_entry_offset=at, payload_offset=offset, size=size,
                   sha256=sha(payload)), payload
        cursor = offset + size
    assert cursor == directory

def amf(data):
    assert data[:4] == b'AMF\x0e'
    sample_count, order_count, track_count, channels = data[36], data[37], u16(data,38), data[40]
    pos = 75
    orders = []
    for _ in range(order_count):
        rows = u16(data,pos)
        tracks = list(struct.unpack_from('<'+'H'*channels,data,pos+2))
        assert all(t <= track_count for t in tracks)
        orders.append(dict(relative_offset=pos, rows=rows, track_ids=tracks))
        pos += 2 + 2*channels
    sample_records = []
    for i in range(sample_count):
        row = data[pos:pos+65]
        assert len(row) == 65
        sample_records.append(dict(ordinal=i,relative_offset=pos,type_byte=row[0],
            label=row[1:33].split(b'\0')[0].decode('ascii',errors='backslashreplace'),
            source_label=row[33:46].split(b'\0')[0].decode('ascii',errors='backslashreplace'),
            index=u32(row,46), length=u32(row,50), word54=u16(row,54),
            byte56=row[56], dword57=u32(row,57), dword61=u32(row,61)))
        pos += 65
    remap_offset = pos
    remap = list(struct.unpack_from('<'+'H'*track_count,data,pos))
    pos += 2*track_count
    tracks = []
    for i in range(max(remap,default=0)):
        events = u16(data,pos)
        end = pos + 3 + 3*events
        assert end <= len(data)
        triples = data[pos+3:end]
        tracks.append(dict(physical_track_id=i+1,relative_offset=pos,event_count=events,
                           third_header_byte=data[pos+2],event_bytes_sha256=sha(triples),
                           first_events_hex=triples[:24].hex()))
        pos = end
    sample_start = pos
    lengths = {}
    for s in sample_records:
        if s['index']:
            assert s['index'] not in lengths or lengths[s['index']] == s['length']
            lengths[s['index']] = s['length']
    assert sorted(lengths) == list(range(1,max(lengths,default=0)+1))
    samples = []
    for idx,length in sorted(lengths.items()):
        end = pos + length
        assert end <= len(data)
        samples.append(dict(index=idx,relative_offset=pos,length=length,sha256=sha(data[pos:end])))
        pos = end
    assert pos == len(data)
    return dict(version=data[3],title=data[4:36].split(b'\0')[0].decode('ascii',errors='backslashreplace'),
        sample_count=sample_count,order_count=order_count,track_count=track_count,channels=channels,
        panning_bytes_hex=data[41:73].hex(),byte73=data[73],byte74=data[74],orders=orders,
        sample_records=sample_records,track_remap_offset=remap_offset,track_remap=remap,
        tracks=tracks,sample_data_offset=sample_start,samples=samples,
        complete_byte_accounting=True,remaining_bytes=0)

def main():
    ap=argparse.ArgumentParser()
    ap.add_argument('--output',required=True,type=Path)
    args=ap.parse_args()
    exe=(ROOT/'lale/IST.EXE').read_bytes()
    result={'method':'Read-only original FLiB revalidation and assembly-guided AMF v14 structure parsing',
            'limitations':['No audio playback or guessed sample rate','AMF event semantics and mixer behavior unresolved',
                           'Executable literals establish references, not runtime execution'],
            'ist_sha256':sha(exe),'archives':[]}
    for name in ['MUZIK.CKD','SOUNDS.CKD']:
        path=ROOT/'lale'/name
        archive={'path':str(path.relative_to(ROOT)),'sha256':sha(path.read_bytes()),'members':[]}
        for info,payload in members(path):
            info['head_hex']=payload[:32].hex()
            info['executable_name_literal_offsets']=[m.start() for m in re.finditer(re.escape(info['name'].encode().lower()),exe.lower())]
            if payload[:4]==b'AMF\x0e':info['amf_structure']=amf(payload)
            else:
                c=Counter(payload)
                info['fraction_0x80']=c[128]/len(payload) if payload else 0
                info['mean_absolute_adjacent_difference']=sum(abs(a-b) for a,b in zip(payload,payload[1:]))/(len(payload)-1) if len(payload)>1 else 0
                if len(payload)<256 and b'\r\n' in payload:
                    info['short_crlf_text_candidate_hex']=payload.hex()
            archive['members'].append(info)
        result['archives'].append(archive)
    # Exclusive creation preserves earlier research if rerun accidentally.
    with args.output.open('x') as f:json.dump(result,f,indent=2);f.write('\n')

if __name__=='__main__':main()
