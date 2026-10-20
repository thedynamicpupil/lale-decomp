#!/usr/bin/env python3
"""Original data read-only: assembly-backed area pointers and PC record accounting."""
import hashlib,json,struct,sys
from pathlib import Path
ROOT=Path(__file__).resolve().parents[4]
sys.path.insert(0,str(ROOT/'tools/extractors'))
from decode_cmp import members
out=Path(__file__).parent
ex=(ROOT/'lale/IST.EXE').read_bytes();base=0x19200
fr=(ROOT/'lale/FRPOS.CKD').read_bytes();m=members(fr)
def sha(b):return hashlib.sha256(b).hexdigest()
def table_name(t,i):return ex[base+t+i*13:base+t+(i+1)*13].split(b'\0')[0].decode('ascii')
areas=[]
for i in range(20):
 at=base+0x2e31+29*i;raw=ex[at:at+29];ptrs=[]
 for j in range(7):
  off,seg=struct.unpack_from('<HH',raw,j*4);literal=ex[base+off:base+off+128].split(b'\0')[0] if seg==0x16e0 else None
  ptrs.append(dict(field_offset=j*4,offset=off,segment=seg,literal=literal.decode('ascii') if literal is not None else None))
 areas.append(dict(index=i,table_file_offset=at,raw_hex=raw.hex(),pointers=ptrs,tail_byte=raw[-1],map_present_FRPOS=ptrs[0]['literal'].upper() in m))
pcs=[]
for i in range(1,19):
 name='PC'+str(i);off,b=m[name];width,height=b[20:22];head=b[20:43];grid=b[43:]
 assert b[:4]==b'AmBk' and len(b)==43+width*height*15
 cells=[dict(x=j%width,y=j//width,payload_offset=43+j*15,source_offset=off+43+j*15,raw_hex=grid[j*15:(j+1)*15].hex()) for j in range(width*height)]
 row=dict(member=name,payload_offset=off,payload_sha256=sha(b),size=len(b),bank_header_hex=b[:20].hex(),metadata_hex=head.hex(),metadata_values=list(head),width=width,height=height,record_size=15,cell_count=width*height,grid_size=len(grid),total_accounting_exact=True)
 if i==1:
  row['all_cells']=cells;row['initial_xy_if_entry_flag_nonzero']=[head[7]-1,head[8]-1];row['initial_cell']=cells[(head[8]-1)*width+head[7]-1]
  row['four_graphic_selector_values']=list(head[3:7]);row['selector_names']=[dict(selector=v,wall_table=table_name(0x2978,v),door_table=table_name(0x29fa,v),overlay_table=table_name(0x2a7c,v)) for v in head[3:7]]
 pcs.append(row)
result=dict(original_exe_sha256=sha(ex),FRPOS_sha256=sha(fr),coordinate_classification='field7minus1->DSb9f3 x;field8minus1->DSb9f1 y, conditional secondarg!=0',areas=areas,map_members=pcs)
(out/'area-data-audit.json').write_text(json.dumps(result,indent=2)+'\n')
print('Validated18 PC streams =20bytebankheader+23bytemetadata+width*height*15;20tableentries,18presentmaps.')
if __name__=='__main__':pass
