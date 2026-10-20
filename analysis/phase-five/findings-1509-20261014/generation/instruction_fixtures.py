"""Concrete restricted execution of original objdump instructions, independent of AST formulas.
Compiler far multiply/divide and RNG use separately recovered instruction semantics.
No original machine code is executed. Not a DOS runtime comparison.
"""
from pathlib import Path
import re,json,struct,hashlib
base=Path(__file__).parent
raw=Path('lale/IST.EXE').read_bytes()
listing=Path('analysis/phase-five/living-continuation-20261014/character-generation/generator.asm').read_text()
ins=[]
for l in listing.splitlines():
 m=re.match(r'\s*([0-9a-f]+):\s+(?:[0-9a-f]{2} )+\s*(\w+)\s*(.*)',l)
 if m and int(m[1],16)<0x3daa1:ins.append((int(m[1],16),m[2],m[3]))
def signed(n,bits):return n-(1<<bits)if n&(1<<(bits-1))else n
def trunc(a,b):return(abs(a)//abs(b))*(-1 if(a<0)!=(b<0)else 1)
def run(seed,record,traits):
 regs={k:0 for k in ['ax','bx','cx','dx','bp','sp','es','cs']};mem={0x2898:0};mem.update({0x99a6+i:struct.unpack_from('<H',record,i)[0]for i in range(0,92,2)});mem.update({0x9b72+2*i:v for i,v in enumerate(traits)});stack=[];draws=[]
 def addr(s):
  s=s.removeprefix('WORD PTR ').removeprefix('es:').removeprefix('ds:')
  if s.startswith('['):
   match=re.fullmatch(r'bx([+-]0x[0-9a-f]+)?',s[1:-1]);assert match,s;return(regs['bx']+int(match[1]or'0',16))&65535
  return int(s,16)
 def get(s):
  if s in regs:return regs[s]
  if 'PTR' in s or s.startswith(('es:','ds:')):return mem[addr(s)]
  return int(s,0)&65535
 def put(s,v):
  if s in regs:regs[s]=v&65535
  else:mem[addr(s)]=v&65535
 for pc,m,arg in ins:
  p=[s.strip()for s in arg.split(',')]
  if m=='mov':put(p[0],get(p[1]))
  elif m=='push':stack.append(get(p[0]))
  elif m=='pop':put(p[0],stack.pop())
  elif m=='add':put(p[0],get(p[0])+get(p[1]))
  elif m=='sub':put(p[0],get(p[0])-get(p[1]))
  elif m=='xor':put(p[0],get(p[0])^get(p[1]))
  elif m=='dec':put(p[0],get(p[0])-1)
  elif m=='imul':put(p[0],signed(get(p[1]),16)*signed(get(p[2]),16))
  elif m=='shl':put(p[0],get(p[0])<<get(p[1]))
  elif m=='cwd':regs['dx']=65535 if regs['ax']&32768 else 0
  elif m=='idiv':
   num=signed((regs['dx']<<16)|regs['ax'],32);den=signed(get(p[0]),16);q=trunc(num,den);assert-32768<=q<=32767;regs['ax']=q&65535;regs['dx']=(num-q*den)&65535
  elif m=='call':
   if arg=='0x3cc00':stack.pop() # already supplied caller-owned initialized traits
   elif arg=='0x0:0x1779':
    regs['bx']=seed&65535;regs['cx']=seed>>16;seed=(seed*0x015a4e35+1)&0xffffffff;regs['dx']=65535 if seed&0x80000000 else 0;regs['ax']=(seed>>16)&32767;draws.append(regs['ax'])
   elif arg=='0x0:0x1242':
    n=(((regs['dx']<<16)|regs['ax'])*((regs['cx']<<16)|regs['bx']))&0xffffffff;regs['ax']=n&65535;regs['dx']=n>>16
   elif arg=='0x0:0x12df':
    nlo,nhi,dlo,dhi=[stack.pop()for _ in range(4)];n=signed(nlo|(nhi<<16),32);d=signed(dlo|(dhi<<16),32);q=trunc(n,d)&0xffffffff;regs['ax']=q&65535;regs['dx']=q>>16
   else:raise ValueError((pc,arg))
  else:raise ValueError((pc,m))
 for i in range(3,17):mem[0x99a6+2*i]=max(signed(mem[0x99a6+2*i],16),3 if i==6 else 50)&65535
 out=bytearray(record)
 for i in range(0,92,2):struct.pack_into('<H',out,i,mem[0x99a6+i])
 return seed,bytes(out),draws
# Independently evaluate generated formula AST only to cross-check transcription.
ast=json.load(open(base/'formulas-ast.json'))
def formulas(seed,record,traits):
 env={f'v{i:02x}':struct.unpack_from('<H',record,i)[0]for i in range(0,92,2)};env['sex']=env['v04'];env.update({f't{i}':v for i,v in enumerate(traits)})
 for d in ast['draws']:
  seed=(seed*0x015a4e35+1)&0xffffffff;env[f'd{d["ordinal"]}']=((seed>>16)&32767)*d['range']//32768
 def ev(x):
  if isinstance(x,int):return x
  if isinstance(x,str):return env[x]
  o,a,b=x;a,b=ev(a),ev(b)
  if o=='add':return(a+b)&65535
  if o=='sub':return(a-b)&65535
  if o=='mul':return(a*b)&65535
  if o=='div':return trunc(signed(a,16),b)&65535
  raise ValueError(o)
 for w in ast['writes']:env[f'v{w["offset"]:02x}']=ev(w['expression'])
 out=bytearray(record)
 for i in range(0,92,2):
  n=env[f'v{i:02x}'];n=max(signed(n,16),3 if i==12 else 50)if 6<=i<=32 else n;struct.pack_into('<H',out,i,n)
 return seed,bytes(out)
fixtures=[]
# Original table realistic inputs plus deliberately wrapped arithmetic extremes.
for case in range(32):
 seed=[1,0,0xffff,0x80000000,0xffffffff,0x12345678,0xdeadbeef,42][case%8];race=1+case%8;sex=1+(case//8)%2;record=bytearray((i*17+case)&255 for i in range(92));struct.pack_into('<HH',record,2,race,sex)
 if case<16:traits=list(struct.unpack_from('<16H',raw,0x19200+0x2778+32*race));traits[15]=struct.unpack_from('<H',raw,0x19200+0xfe7+10*race+2*(case%5))[0]
 else:traits=[(case*7919+i*13007)&65535 for i in range(16)]
 state,out,draws=run(seed,record,traits);assert formulas(seed,record,traits)==(state,out),case
 fixtures.append({'case':case,'seed_before':seed,'seed_after':state,'record_before_hex':record.hex(),'record_after_hex':out.hex(),'traits':traits,'rand15_outputs':draws})
(base/'instruction-fixtures.json').write_text(json.dumps({'original_ist_sha256':hashlib.sha256(raw).hexdigest(),'classification':'Independent restricted instruction transcription vs formula AST, not DOS runtime evidence','fixtures':fixtures},indent=2)+'\n')
print('32 instruction/formula cases agree,26 draws each.')
