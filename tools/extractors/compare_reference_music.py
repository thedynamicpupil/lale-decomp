#!/usr/bin/env python3
"""Offline library rendering/envelope screening; no device or DOS execution.

8000 Hz is an analysis output choice, not an inferred original playback rate.
Uses libopenmpt defaults; correlation does not establish mixing equivalence.
"""
import array
import ctypes as C
import hashlib
import json
import math
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
OUT = ROOT/'analysis/phase-five/audio-reference-20261014'
RATE=8000
BLOCK=800

def features(data):
    result=[]
    for start in range(0,len(data)-BLOCK+1,BLOCK):
        b=data[start:start+BLOCK]
        result.append(math.sqrt(sum(x*x for x in b)/BLOCK))
    return result

def corr(a,b):
    n=len(a)
    sa=sum(a);sb=sum(b)
    cov=sum(x*y for x,y in zip(a,b))-sa*sb/n
    va=sum(x*x for x in a)-sa*sa/n
    vb=sum(x*x for x in b)-sb*sb/n
    return cov/math.sqrt(va*vb) if va>1e-15 and vb>1e-15 else 0

lib=C.CDLL('/lib64/libopenmpt.so.0')
lib.openmpt_module_create_from_memory2.argtypes=[C.c_void_p,C.c_size_t,C.c_void_p,C.c_void_p,C.c_void_p,C.c_void_p,C.POINTER(C.c_int),C.POINTER(C.c_void_p),C.c_void_p]
lib.openmpt_module_create_from_memory2.restype=C.c_void_p
lib.openmpt_module_destroy.argtypes=[C.c_void_p]
lib.openmpt_module_read_float_mono.argtypes=[C.c_void_p,C.c_int32,C.c_size_t,C.POINTER(C.c_float)]
lib.openmpt_module_read_float_mono.restype=C.c_size_t

reference_raw=(OUT/'reference-mono-8000.f32').read_bytes()
reference=array.array('f');reference.frombytes(reference_raw)
ref_features=features(reference)
evidence=json.load(open(ROOT/'analysis/phase-five/audio-structure-evidence.json'))
archive=(ROOT/'lale/MUZIK.CKD').read_bytes()
result={'method':'Pearson correlation of 100ms mono RMS windows; libopenmpt defaults, no time scaling',
        'output_rate':RATE,'render_seconds':85,'block_samples':BLOCK,
        'reference_sha256':hashlib.sha256(reference_raw).hexdigest(),
        'reference_rms_100ms':ref_features,'candidates':[]}
for m in evidence['archives'][0]['members']:
    if 'amf_structure' not in m:continue
    raw=archive[m['payload_offset']:m['payload_offset']+m['size']]
    buf=C.create_string_buffer(raw);error=C.c_int();message=C.c_void_p()
    mod=lib.openmpt_module_create_from_memory2(buf,len(raw),None,None,None,None,C.byref(error),C.byref(message),None)
    assert mod,m['name']
    pcm=(C.c_float*(RATE*85))()
    count=lib.openmpt_module_read_float_mono(mod,RATE,len(pcm),pcm)
    lib.openmpt_module_destroy(mod)
    candidate=features(pcm[:count])
    windows=[]
    for ref_start in [0,10,20,30,40,50,60]:
        segment=ref_features[ref_start*10:(ref_start+10)*10]
        ranked=sorted(((corr(segment,candidate[i:i+len(segment)]),i/10) for i in range(len(candidate)-len(segment)+1)),reverse=True)
        if not ranked:
            windows.append({'reference_start_seconds':ref_start,'window_seconds':len(segment)/10,
                            'best_correlation':0,'candidate_start_seconds':None,'limit':'render shorter than window'})
            continue
        windows.append({'reference_start_seconds':ref_start,'window_seconds':len(segment)/10,
                        'best_correlation':ranked[0][0],'candidate_start_seconds':ranked[0][1]})
    result['candidates'].append({'name':m['name'],'rendered_frames':count,
                                'rendered_float_sha256':hashlib.sha256(bytes(pcm)[:count*4]).hexdigest(),
                                'rms_100ms':candidate,'window_matches':windows})
with (OUT/'module-envelope-comparison.json').open('x') as f:json.dump(result,f,indent=2);f.write('\n')
for t in range(7):
    scores=sorted([(c['window_matches'][t]['best_correlation'],c['name'],c['window_matches'][t]['candidate_start_seconds']) for c in result['candidates']],reverse=True)
    print(t*10,scores[:3])
