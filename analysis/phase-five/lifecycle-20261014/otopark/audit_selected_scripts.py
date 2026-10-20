#!/usr/bin/env python3
"""Bounded PCS1 extraction; explicit supported opcode grammar, not a game VM."""
import sys,json,hashlib
from pathlib import Path
ROOT=Path(__file__).resolve().parents[4]
sys.path.insert(0,str(ROOT/'tools/extractors'));from decode_cmp import members
out=Path(__file__).parent;fr=(ROOT/'lale/FRPOS.CKD').read_bytes();bank=members(fr);off,b=bank['PCS1'];pc_off,pc=bank['PC1'];ex=(ROOT/'lale/IST.EXE').read_bytes()
# Length index is read in original dispatcher from cursor20; preserve all offsets.
count=int.from_bytes(b[20:22],'big');cur=22;groups=[]
for i in range(count):
 length=int.from_bytes(b[cur:cur+2],'big');start=cur+2;end=start+length
 assert end<=len(b)
 groups.append(dict(index=i,length_word_offset=cur,start=start,end_exclusive=end,length=length,header_hex=b[start:start+8].hex(),raw_hex=b[start:end].hex()));cur=end
assert cur==len(b)

def text(at,n):
 raw=b[at:at+n];decoded=bytes((v+10)&255 for v in raw)
 return dict(text_payload_offset=at,text_archive_offset=off+at,length=n,encoded_hex=raw.hex(),decoded_hex=decoded.hex(),byte_display=''.join(chr(v) if 32<=v<127 else f'<{v:02X}>' for v in decoded))
# Complete original group5 sequential framing. Do not pretend to execute branches.
g=groups[5];cur=g['start']+8;commands=[]
while cur<g['end_exclusive']:
 at=cur;op=b[cur];cur+=1;r=dict(payload_offset=at,archive_offset=off+at,opcode=op)
 if op in [13,14,15]:r['argument']=b[cur];cur+=1
 elif op==1:
  assert b[cur]==1;r.update(kind=1,flag=b[cur+1],skip_commands_if_false=b[cur+2]);cur+=3
 elif op==4:r['meaning']='stop current script execution'
 elif op==7:r['set_flag']=b[cur];cur+=1
 elif op==17:
  r['speaker_selector']=b[cur];n=b[cur+1];r.update(text(cur+2,n));cur+=2+n
 elif op==0:
  r['classification']='trailing zero after terminating section';commands.append(r);break
 else:raise ValueError((at,op,'unsupported opcode in bounded group5 parser'))
 r['end_exclusive']=cur;r['raw_hex']=b[at:cur].hex();commands.append(r)
# Exact group0 bytes independently identified through opcode handlers.
g0=groups[0];stone_text=text(135,62) # original opcode17 at132,speaker5,len62
assert b[132:135]==bytes([17,5,62]) and b[197]==9
params=b[198:207];assert len(params)==9
acquisition=dict(opcode_offset=197,archive_offset=off+197,opcode=9,raw_parameters_hex=params.hex(),three_resource_additions=list(params[:3]),three_pool_words=[int.from_bytes(params[3+i*2:5+i*2],'big') for i in range(3)],called_mode=0,handler_physical=0x46591)
# All four shared event-byte cell matches, not conjectured room adjacency.
matching={}
for group in [0,5]:
 target=bytes([1,1,1,group+1]);matching[str(group)]=[]
 for i in range(100):
  c=pc[43+i*15:43+(i+1)*15]
  if c[11:15]==target:matching[str(group)].append(dict(x=i%10,y=i//10,cell_payload_offset=43+i*15,cell_archive_offset=pc_off+43+i*15,raw_hex=c.hex()))
evidence=dict(FRPOS_sha256=hashlib.sha256(fr).hexdigest(),PCS1_payload_offset=off,PCS1_sha256=hashlib.sha256(b).hexdigest(),PC1_payload_offset=pc_off,groups=groups,group5_commands=commands,group5_mode2_start=g['start']+int.from_bytes(b[g['start']+2:g['start']+4],'big'),group0_stone_suggestion=dict(speaker_selector=5,**stone_text),group0_acquisition=acquisition,matching_cells=matching)
(out/'selected-script-evidence.json').write_text(json.dumps(evidence,indent=2)+'\n')
for a,z,name in [(0x43670,0x43889,'event-cell-dispatch'),(0x43d61,0x43e99,'pcs-group-index'),(0x43f49,0x44061,'condition-and-control'),(0x4414e,0x44184,'set-event-bit'),(0x44643,0x446c8,'acquisition-opcode9'),(0x44ae8,0x44b97,'dialogue-opcode17'),(0x47d1a,0x47d53,'decode-plus10'),(0x4811c,0x481a1,'event-bit-storage'),(0x484d3,0x4853b,'pcs-byte-reader')]:
 raw=ex[a:z];(out/(name+'.bin')).write_bytes(raw)
 import subprocess
 s=subprocess.check_output(['objdump','-D','-b','binary','-m','i8086','-M','intel','--adjust-vma='+hex(a),str(out/(name+'.bin'))]);(out/(name+'.asm')).write_bytes(s)
print('Exact selectedgroup5 dialogue andgroup0 acquisition extracted with original byte offsets.')
