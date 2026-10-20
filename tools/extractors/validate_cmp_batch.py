#!/usr/bin/env python3
"""Read-only original CMP packet audit; new outputs only, strict decodes only."""
import collections,hashlib,json,struct,subprocess
from pathlib import Path
from decode_cmp import members,decode
from PIL import Image
ROOT=Path(__file__).resolve().parents[2]
def sha(b): return hashlib.sha256(b).hexdigest()
def main():
 out=ROOT/'extracted/phase-five/batch-graphics-20261014';out.mkdir(exist_ok=False)
 report=ROOT/'analysis/phase-five';report.mkdir(exist_ok=True)
 rows=[];packages={};dependencies={};summaries={}
 for path in sorted((ROOT/'lale').glob('*.CKD')):
  data=path.read_bytes();pkg=members(data);packages[path.name]=(path,pkg,sha(data));dependencies[path.name]={}
  for name,(offset,b) in pkg.items():
   if name.endswith(('.RES','.BAK')):
    dependencies[path.name][name]={'offset':offset,'size':len(b),'sha256':sha(b),'ascii_runs':__import__('re').findall(rb'[\x20-\x7e]{4,}',b)}
    dependencies[path.name][name]['ascii_runs']=[v.decode('ascii') for v in dependencies[path.name][name]['ascii_runs']]
   if not name.endswith('.CMP'):continue
   w,h=struct.unpack_from('<HH',b);expected=w*h;c=4;n=0;packets=[];crossings=0;zero=0
   while c<len(b):
    start=c;v=b[c];c+=1;k=v if v<=128 else v-128;end=c+(k if v<=128 else 1)
    if end>len(b):raise ValueError((path,name,'truncated packet'))
    if w and n//w!=(n+k-1)//w and k:crossings+=1
    zero+=v==0
    packets.append({'payload_offset':start,'source_offset':offset+start,'control':v,'output_start':n,'output_end':n+k,'input_end':end,'value':b[c] if v>128 else None})
    c=end;n+=k
   exact=n==expected
   if exact:decode(b)
   r=dict(archive=path.name,archive_sha256=sha(data),member=name,offset=offset,payload_size=len(b),payload_sha256=sha(b),width=w,height=h,expected=expected,decoded=n,delta=n-expected,status='exact' if exact else 'dimension_mismatch',packet_count=len(packets),row_crossing_packets=crossings,zero_packets=zero,trailing_unparsed_bytes=len(b)-c)
   if not exact:
    r['last_packets']=packets[-8:];r['first_packet_reaching_expected']=next((p for p in packets if p['output_end']>=expected),None)
   rows.append(r)
  summaries[path.name]=dict(members=len(pkg),cmp=sum(n.endswith('.CMP') for n in pkg),palettes=[{'member':n,'offset':o,'size':len(b),'sha256':sha(b),'maximum':max(b)} for n,(o,b) in pkg.items() if n.endswith('.PAL')])
 selection={'IKON.CKD':['IKON0.CMP','IKON10.CMP','IKON50.CMP','IKON100.CMP'],'SAVAS.CKD':['AYI.CMP','LALE.CMP','DUVARIC1.CMP','TABLETUR.CMP','YERICON.CMP'],'IVIR.CKD':['ACILISC.CMP']}
 previews=[]
 for archive,names in selection.items():
  path,pkg,ash=packages[archive]
  for name in names:
   if name not in pkg:continue
   po=name[:-4]+'.PAL' if archive=='IKON.CKD' else 'PALBAT.PAL'
   if po not in pkg:continue
   offset,b=pkg[name];paloffset,pal=pkg[po];w,h,pixels=decode(b)
   if len(pal)!=768 or max(pal)>63:raise ValueError('palette')
   dest=out/(archive[:-4]+'-'+name[:-4]);dest.mkdir()
   (dest/'indices.bin').write_bytes(pixels);(dest/'palette6.bin').write_bytes(pal)
   im=Image.frombytes('P',(w,h),pixels);im.putpalette([(v<<2)|(v>>4) for v in pal]);im.save(dest/'preview.png')
   result=subprocess.run([str(ROOT/'rust-port/target/debug/lale-inspect'),'decode',str(path),name,po,str(dest/'rust.ppm')],capture_output=True,text=True)
   if result.returncode:raise ValueError(result.stderr)
   rust=Image.open(dest/'rust.ppm');match=rust.tobytes()==im.convert('RGB').tobytes()
   if not match:raise ValueError('Rust/Python disagreement')
   meta=dict(archive=archive,archive_sha256=ash,member=name,member_offset=offset,member_sha256=sha(b),width=w,height=h,palette=po,palette_offset=paloffset,palette_sha256=sha(pal),indices_sha256=sha(pixels),rust_rgb_equal=match,palette_binding='same-basename candidate' if archive=='IKON.CKD' else 'only archive PAL member; runtime association unverified',decoder='decode_cmp.py; literal <=128, repeat control-128; exact dimensions required',preview='Original size; six-bit RGB expansion (v<<2)|(v>>4); no transparency applied; no runtime calibration')
   (dest/'provenance.json').write_text(json.dumps(meta,indent=2)+'\n');previews.append(meta)
 evidence=dict(cmp_count=len(rows),counts=dict(collections.Counter(r['status'] for r in rows)),archives=summaries,cmp=rows,dependency_text=dependencies,previews=previews)
 (report/'graphics-batch-20261014.json').write_text(json.dumps(evidence,indent=2)+'\n')
 print(json.dumps({'counts':evidence['counts'],'previews':[(p['archive'],p['member'],p['width'],p['height']) for p in previews]}))
if __name__=='__main__':main()
