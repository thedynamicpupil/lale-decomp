#!/usr/bin/env python3
"""Coarse STFT identity screening, not a fidelity or tempo measurement."""
import array,cmath,ctypes as C,json,math
from pathlib import Path
ROOT=Path(__file__).resolve().parents[2]
OUT=ROOT/'analysis/phase-five/audio-reference-20261014'
N=256
ROOTS=[cmath.exp(-2j*math.pi*k/N) for k in range(N//2)]
def spectrum(samples):
    values=[complex(samples[i]*(.5-.5*math.cos(2*math.pi*i/(N-1)))) for i in range(N)]
    j=0
    for i in range(1,N):
        bit=N>>1
        while j&bit:j^=bit;bit>>=1
        j^=bit
        if i<j:values[i],values[j]=values[j],values[i]
    size=2
    while size<=N:
        for start in range(0,N,size):
            for k in range(size//2):
                a=values[start+k];b=values[start+k+size//2]*ROOTS[k*N//size]
                values[start+k]=a+b;values[start+k+size//2]=a-b
        size*=2
    bounds=[1,2,3,4,6,9,13,19,28,42,63,94,129]
    bands=[sum(abs(v)**2 for v in values[a:b]) for a,b in zip(bounds,bounds[1:])]
    bands=[math.log(1e-9+x) for x in bands]
    avg=sum(bands)/len(bands);bands=[x-avg for x in bands];norm=math.sqrt(sum(x*x for x in bands))
    return [x/norm for x in bands] if norm else bands
def features(data):
    return [spectrum(data[i:i+N]) for i in range(0,len(data)-800+1,800)]
lib=C.CDLL('/lib64/libopenmpt.so.0')
lib.openmpt_module_create_from_memory2.argtypes=[C.c_void_p,C.c_size_t,C.c_void_p,C.c_void_p,C.c_void_p,C.c_void_p,C.POINTER(C.c_int),C.POINTER(C.c_void_p),C.c_void_p]
lib.openmpt_module_create_from_memory2.restype=C.c_void_p
lib.openmpt_module_destroy.argtypes=[C.c_void_p]
lib.openmpt_module_read_float_mono.argtypes=[C.c_void_p,C.c_int32,C.c_size_t,C.POINTER(C.c_float)]
lib.openmpt_module_read_float_mono.restype=C.c_size_t
ref=array.array('f');ref.frombytes((OUT/'reference-mono-8000.f32').read_bytes())
ref=features(ref)
evidence=json.load(open(ROOT/'analysis/phase-five/audio-structure-evidence.json'))
archive=(ROOT/'lale/MUZIK.CKD').read_bytes();results=[]
for member in evidence['archives'][0]['members']:
    if 'amf_structure' not in member:continue
    raw=archive[member['payload_offset']:member['payload_offset']+member['size']];buf=C.create_string_buffer(raw)
    mod=lib.openmpt_module_create_from_memory2(buf,len(raw),None,None,None,None,None,None,None);assert mod
    pcm=(C.c_float*680000)();count=lib.openmpt_module_read_float_mono(mod,8000,len(pcm),pcm);lib.openmpt_module_destroy(mod)
    candidate=features(pcm[:count]);windows=[]
    for start in [0,10,20,43,53,63]:
        segment=ref[start*10:(start+10)*10];rank=[]
        for pos in range(0,len(candidate)-len(segment)+1,2):
            score=sum(sum(x*y for x,y in zip(a,b)) for a,b in zip(segment,candidate[pos:pos+len(segment)]))/len(segment)
            rank.append((score,pos/10))
        windows.append({'reference_start':start,'ranked':sorted(rank,reverse=True)[:3]})
    results.append({'name':member['name'],'windows':windows})
with (OUT/'spectral-screening.json').open('x') as f:json.dump({'method':'256-point Hann FFT at8kHz,12 log-energy bands,100ms hop; per-frame centered unit spectral vector dot-product; candidate offset200ms grid; default library rendering; no time stretch','modules':results},f,indent=2)
for i,start in enumerate([0,10,20,43,53,63]):
    ranked=sorted([(m['windows'][i]['ranked'][0][0],m['name'],m['windows'][i]['ranked'][0][1]) for m in results if m['windows'][i]['ranked']],reverse=True)
    print(start,ranked[:3])
