#!/usr/bin/env python3
"""Original 16af:0390 packet transcription; no playback or guessed image crop."""
import argparse,hashlib,json,struct,zlib
from pathlib import Path
ROOT=Path(__file__).resolve().parents[2]
def sha(data):return hashlib.sha256(data).hexdigest()
def expand(c):
    n=c&15
    return [n,16+2*n,48+4*n,112+8*n][(c>>4)&3]
def decode(payload,frame):
    p=d=0;counts={'literal':0,'skip':0,'repeat':0}
    while p<len(payload) and d<64000:
        c=payload[p];p+=1
        if c&128:
            n=(c&127)+1;assert p+n<=len(payload),'truncated literal'
            assert d+n<=64000,'literal exceeds original buffer'
            frame[d:d+n]=payload[p:p+n];p+=n;counts['literal']+=1
        elif c&64:
            n=expand(c)+1;assert d+n<=64000,'skip exceeds original buffer';counts['skip']+=1
        else:
            n=expand(c)+3;assert p<len(payload),'truncated repeat'
            assert d+n<=64000,'repeat exceeds original buffer'
            frame[d:d+n]=bytes([payload[p]])*n;p+=1;counts['repeat']+=1
        d+=n
    assert p==len(payload),'unconsumed compressed bytes'
    # Original stops at either compressed end or framebuffer end. Short spans
    # retain remaining prior pixels, as do explicit skips; never pad/crop input.
    return {'consumed':p,'destination_advanced':d,'packets':counts}
def chunk(t,d):return struct.pack('>I',len(d))+t+d+struct.pack('>I',zlib.crc32(t+d)&0xffffffff)
def png(frame,palette):
    assert len(frame)==64000 and len(palette)==768 and max(palette)<=63
    # Same VGA preview expansion used by the existing asset inspector.
    rgb=bytes((x<<2)|(x>>4) for x in palette)
    rows=b''.join(b'\0'+frame[y*320:(y+1)*320] for y in range(200))
    return b'\x89PNG\r\n\x1a\n'+chunk(b'IHDR',struct.pack('>IIBBBBB',320,200,8,3,0,0,0))+chunk(b'PLTE',rgb)+chunk(b'IDAT',zlib.compress(rows))+chunk(b'IEND',b'')
def main():
    ap=argparse.ArgumentParser();ap.add_argument('--basename',default='SEQ1');ap.add_argument('--frames',type=int,default=100);ap.add_argument('--output',required=True,type=Path);args=ap.parse_args()
    assert not args.output.exists(),'exclusive new output directory required';args.output.mkdir(parents=True)
    data=(ROOT/'lale/0GFL.CKD').read_bytes();n,table=struct.unpack_from('<II',data,4);members={}
    for i in range(n):
        row=data[table+i*65:table+(i+1)*65];assert row[:4]==b'FiLE';name=row[4:36].split(b'\0')[0].decode();offset,size,size_b=struct.unpack_from('<III',row,53);assert size==size_b;members[name]=(offset,data[offset:offset+size])
    ho,h=members[args.basename+'.GHD'];go,g=members[args.basename+'.GFL'];count=struct.unpack_from('<H',h,3)[0];rate=struct.unpack_from('<H',h,6)[0];t=784+rate;assert len(h)==t+count*8
    frame=bytearray(64000);palette=h[16:784];records=[]
    chosen={0,1,2,5,10,20,30,40,50,60,75,99,args.frames-1}
    for i in range(min(count,args.frames)):
        row=h[t+i*8:t+(i+1)*8];kind=row[0];size=struct.unpack_from('<H',row,1)[0];offset=struct.unpack_from('<I',row,3)[0]
        if row[7]&128:
            assert offset>=768;palette=g[offset-768:offset];assert len(palette)==768 and max(palette)<=63
        else:palette=h[16:784]  # Original consumer restores baseline after a flagged frame.
        rec={'frame':i,'type':kind,'compressed_bytes':size,'record_stream_offset':offset,'palette_flag':bool(row[7]&128)}
        if kind!=1:
            start=offset+(rate if kind==2 else 0);payload=g[start:start+size];assert len(payload)==size
            rec.update(decode(payload,frame));rec['image_source_absolute_offset']=go+start;rec['compressed_sha256']=sha(payload)
        rec['indices_sha256']=sha(frame);rec['palette_sha256']=sha(palette)
        if i in chosen:
            stem=f'{args.basename.lower()}-{i:04d}'
            (args.output/(stem+'.indices')).write_bytes(frame);(args.output/(stem+'.pal6')).write_bytes(palette);(args.output/(stem+'.png')).write_bytes(png(frame,palette));rec['preview']=stem+'.png'
        records.append(rec)
    (args.output/'evidence.json').write_text(json.dumps({'method':'Instruction-backed16af0390packettranscription;pixels320x200fromoriginal64000bytebuffer;stateful;noaudio','GHD_source_offset':ho,'GFL_source_offset':go,'original_GHD_sha256':sha(h),'original_GFL_sha256':sha(g),'initial_audio_block_sha256':sha(h[784:t]),'records':records},indent=2)+'\n')
    print(args.basename,'decoded',len(records),'records','pixelupdates',sum('consumed'in r for r in records))
if __name__=='__main__':main()
