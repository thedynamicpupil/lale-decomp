#!/usr/bin/env python3
"""Read-only assertions over the new original DOS transition captures."""
import hashlib,json,struct
from pathlib import Path

HERE=Path(__file__).resolve().parent
CAP=HERE/'capture'
def word(b,at):return struct.unpack_from('<H',b,at)[0]
def state(name):
    b=(CAP/name).read_bytes()
    assert len(b)==65536
    return dict(x=word(b,0xb9f3),y=word(b,0xb9f1),facing=b[0xb9f0],area=word(b,0xbb6b),
                choice=word(b,0xbb9e),veto=word(b,0xbba8),redraw=word(b,0xb9c8),guard=b[0x3b06])
def stack(name):
    b=(CAP/name).read_bytes();return struct.unpack('<'+'H'*(len(b)//2),b)

for n,h in json.loads((HERE/'capture-hashes.json').read_text()).items():
    assert hashlib.sha256((CAP/n).read_bytes()).hexdigest()==h,n
for n in ['STAIR-EVET-MODE3-ST.BIN','STAIR-R2-MODE3-ST.BIN']:
    assert stack(n)[2:4]==(765,3),n
for n in ['STAIR-EVENT2-ST.BIN','STAIR-EVET-MODE1-ST.BIN','STAIR-R2-MODE1-ST.BIN']:
    assert stack(n)[2:4]==(750,1),n
# The prematurely labeled first mode1 file is a loader re-stop at mode3.
assert stack('STAIR-MODE1-ST.BIN')[2:4]==(765,3)
h=state('STAIR-HAYIR-RETURN-DS.BIN')
assert (h['x'],h['y'],h['area'],h['choice'],h['veto'],h['redraw'])==(1,5,0,1,1,0)
for n in ['STAIR-EVET-RETURN-DS.BIN','STAIR-R2-FINAL-DS.BIN']:
    s=state(n)
    assert (s['x'],s['y'],s['facing'],s['area'],s['choice'],s['veto'],s['redraw'],s['guard'])==(3,22,3,1,0,1,0,0),n
assert stack('STAIR-R2-LOADER-ST.BIN')[2:4]==(1,1)
for n,ret in [('STAIR-R2-DIRECTION1-ST.BIN',0x1281),('STAIR-R2-UISTATE-ST.BIN',0x1293),('STAIR-R2-A7-ST.BIN',0x1298)]:
    assert stack(n)[0]==ret,n
assert stack('STAIR-R2-REDRAW-ST.BIN')[0:3]==(0x2086,0x45f0,1)
for n,pair in [('STAIR-R2-TAIL-FAIL1-DS.BIN',(1,0)),('STAIR-R2-TAIL-VETO1-DS.BIN',(1,1)),('STAIR-R2-REDRAW-DS.BIN',(1,1)),('STAIR-R2-OLDMOVE-FAIL0-DS.BIN',(0,1))]:
    s=state(n);assert(s['redraw'],s['veto'])==pair,n
    assert(s['x'],s['y'],s['area'],s['guard'])==(3,22,1,0),n
assert b'\xc7\x06\xc8\xb9\x00\x00\xb0\x00\xc9\xcb' in (CAP/'STAIR-R2-MOVEMENT-TAIL-CODE.BIN').read_bytes()
for n in ['STAIR-HAYIR-BIOS.BIN','STAIR-EVET-RETURN-BIOS.BIN','STAIR-R2-FINAL-BIOS.BIN']:
    b=(CAP/n).read_bytes();assert b[:2]==b[2:4],n
print('PASS: conditioned Hayir/Evet, original loader/presentation chain, veto and old-movement tail;54 capture hashes.')
