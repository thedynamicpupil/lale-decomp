#!/usr/bin/env python3
"""Inspect this IST.EXE overlay layout and build explicitly synthetic analysis MZs.

Never execute the derived artifacts. They bind one overlay at analysis segment
0x4000, preserve resident bytes except that overlay's dispatch stubs, and resolve
observed segment-table indices. They are not reconstructed DOS runtime images.
"""
from pathlib import Path
import argparse
import hashlib
import json
import struct
import subprocess

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / 'analysis' / 'phase-four'

def digest(b):
    return hashlib.sha256(b).hexdigest()

def inspect(data):
    words=struct.unpack_from('<14H',data)
    header=words[4]*16
    declared=(words[2]-1)*512+(words[1] or 512)
    if data[declared:declared+4]!=b'FBOV':
        raise ValueError('No FBOV at declared MZ boundary')
    extent,table,count=struct.unpack_from('<III',data,declared+4)
    payload_base=declared+16
    if payload_base+extent!=len(data) or table+8*count>declared:
        raise ValueError('FBOV bounds mismatch')
    descriptors=[]
    overlays=[]
    for i in range(count):
        segment,size,flags,extra=struct.unpack_from('<4H',data,table+8*i)
        descriptors.append(dict(index=i,file_offset=table+8*i,relative_segment=segment,
                                size_field=size,flags=flags,extra=extra))
    for d in descriptors:
        if d['flags']!=3:
            continue
        segment=d['relative_segment'];stub=header+segment*16
        if data[stub:stub+4]!=b'\xcd\x3f\0\0':
            raise ValueError('Unexpected overlay descriptor prefix')
        offset,size,rel_bytes,exports=struct.unpack_from('<IHHH',data,stub+4)
        code=payload_base+offset
        if rel_bytes%2 or code+size+rel_bytes>len(data):
            raise ValueError('Invalid code/relocation bounds')
        relocations=[]
        for at in range(code+size,code+size+rel_bytes,2):
            word_offset=struct.unpack_from('<H',data,at)[0]
            if word_offset+2>size:
                raise ValueError('Relocation word outside code')
            value=struct.unpack_from('<H',data,code+word_offset)[0]
            if value%8 or value//8>=count:
                raise ValueError('Relocation is not a descriptor-byte index')
            relocations.append(dict(table_file_offset=at,code_offset=word_offset,
                                    original_value=value,descriptor_index=value//8,
                                    target_relative_segment=descriptors[value//8]['relative_segment']))
        entries=[]
        for ordinal in range(exports):
            at=stub+32+ordinal*5
            if data[at:at+2]!=b'\xcd\x3f' or data[at+4]!=0:
                raise ValueError('Unexpected export stub')
            entry=struct.unpack_from('<H',data,at+2)[0]
            if entry>=size:
                raise ValueError('Export outside code')
            entries.append(dict(ordinal=ordinal,stub_relative_offset=32+ordinal*5,
                                stub_file_offset=at,code_offset=entry,code_file_offset=code+entry))
        overlays.append(dict(descriptor_index=d['index'],relative_segment=segment,
                             analysis_stub_segment=segment+0x1000,stub_file_offset=stub,
                             payload_relative_offset=offset,code_file_offset=code,
                             code_size=size,relocation_bytes=rel_bytes,
                             code_sha256=digest(data[code:code+size]),entries=entries,
                             relocations=relocations))
    return dict(original_sha256=digest(data),header_bytes=header,declared_file_bytes=declared,
                fbov_offset=declared,fbov_extent=extent,payload_base=payload_base,
                descriptor_table_offset=table,descriptor_count=count,
                descriptors=descriptors,overlays=overlays)

def derive(data,layout,segment,entry):
    o=next(x for x in layout['overlays'] if x['relative_segment']==segment)
    if not 0<=entry<o['code_size']:
        raise ValueError('Entry outside overlay')
    resident=data[layout['header_bytes']:layout['declared_file_bytes']]
    # A synthetic 0x4000 analysis segment (relative 0x3000 at load 0x1000).
    code_module_offset=0x30000
    module=bytearray(resident)
    module.extend(b'\0'*(code_module_offset-len(module)))
    module.extend(data[o['code_file_offset']:o['code_file_offset']+o['code_size']])
    relocations=[struct.unpack_from('<HH',data,62+i*4)
                 for i in range(struct.unpack_from('<H',data,6)[0])]
    patches=[]
    for r in o['relocations']:
        at=code_module_offset+r['code_offset']
        struct.pack_into('<H',module,at,r['target_relative_segment'])
        relocations.append((r['code_offset'],0x3000))
        patches.append(dict(kind='overlay-segment-index-resolution',module_offset=at,
                            source_file_offset=o['code_file_offset']+r['code_offset'],
                            before=r['original_value'],after=r['target_relative_segment']))
    for e in o['entries']:
        at=segment*16+e['stub_relative_offset']
        module[at:at+5]=b'\xea'+struct.pack('<HH',e['code_offset'],0x3000)
        relocations.append((e['stub_relative_offset']+3,segment))
        patches.append(dict(kind='synthetic-own-overlay-far-jump',module_offset=at,
                            source_file_offset=e['stub_file_offset'],
                            target_code_offset=e['code_offset']))
    trampoline=(len(module)-code_module_offset+15)&~15
    module.extend(b'\0'*(code_module_offset+trampoline-len(module)))
    # Loader observes first MOV DX for DS context. No execution is authorized.
    jump=(entry-(trampoline+8))&0xffff
    module.extend(b'\xba'+struct.pack('<H',0x16e0)+b'\x8e\xda\xe9'+struct.pack('<H',jump))
    relocations.append((trampoline+1,0x3000))
    header_bytes=(62+4*len(relocations)+15)&~15
    h=bytearray(header_bytes)
    length=header_bytes+len(module)
    values=[0x5a4d,length%512,(length+511)//512,len(relocations),header_bytes//16,
            0,0xffff,0x2588,0x80,0,trampoline,0x3000,62,0]
    struct.pack_into('<14H',h,0,*values)
    for i,(offset,seg) in enumerate(relocations):
        struct.pack_into('<HH',h,62+i*4,offset,seg)
    artifact=bytes(h)+bytes(module)
    folder=OUT/'derived';folder.mkdir(exist_ok=True)
    stem=f'IST-overlay-{segment:04x}-entry-{entry:04x}'
    path=folder/(stem+'.mz')
    if path.exists():
        raise FileExistsError(path)
    path.write_bytes(artifact)
    metadata=dict(classification='synthetic-static-analysis-only-do-not-execute',
                  path=str(path.relative_to(ROOT)),derived_sha256=digest(artifact),
                  source_path='lale/IST.EXE',source_sha256=layout['original_sha256'],
                  logical_overlay_segment=segment,synthetic_analysis_segment=0x4000,
                  original_overlay_file_offset=o['code_file_offset'],overlay_size=o['code_size'],
                  derived_header_bytes=header_bytes,derived_overlay_file_offset=header_bytes+code_module_offset,
                  patches=patches,trampoline_offset=trampoline,entry_code_offset=entry,
                  limitations=['Synthetic segment assignment, not observed DOS placement.',
                               'Only this overlay is materialized; other INT 3F dispatches remain unresolved.',
                               'Resident bytes contain historical file pointers that do not refer to this artifact.',
                               'Near calls retain original offsets; data/ABI/control-flow recovery remains fallible.'])
    (folder/(stem+'.provenance.json')).write_text(json.dumps(metadata,indent=2)+'\n')
    print(path)

parser=argparse.ArgumentParser()
parser.add_argument('--derive',type=lambda x:int(x,16))
parser.add_argument('--entry',type=lambda x:int(x,16),default=0)
args=parser.parse_args()
data=(ROOT/'lale/IST.EXE').read_bytes()
layout=inspect(data)
if args.derive is not None:
    derive(data,layout,args.derive,args.entry)
else:
    dest=OUT/'overlay-layout.json'
    if dest.exists():
        raise FileExistsError(dest)
    dest.write_text(json.dumps(layout,indent=2)+'\n')
    print(f"{layout['descriptor_count']} descriptors, {len(layout['overlays'])} overlay slots,")
    print(f"{sum(len(x['entries']) for x in layout['overlays'])} export stubs and "
          f"{sum(len(x['relocations']) for x in layout['overlays'])} validated relocation indices.")
