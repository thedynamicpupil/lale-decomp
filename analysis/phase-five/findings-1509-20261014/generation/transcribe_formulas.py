"""Restricted symbolic transcription of retained original i8086 listing; not an emulator."""
import re,json
from pathlib import Path
base=Path(__file__).parent
listing=Path('analysis/phase-five/living-continuation-20261014/character-generation/generator.asm').read_text()
items=[]
for line in listing.splitlines():
 m=re.match(r'\s*([0-9a-f]+):\s+((?:[0-9a-f]{2} )+)\s*(\w+)\s*(.*)',line)
 if m and int(m[1],16)<0x3daa1:items.append((int(m[1],16),m[3],m[4].strip()))
r={k:0 for k in ['ax','bx','cx','dx','bp','sp','es','cs']};stack=[];writes=[];draws=[];skip=0
# Node constants are integers; symbols are strings; operations are [operator,args...].
def op(o,a,b=None):
 if isinstance(a,int) and isinstance(b,int):
  if o=='add':return(a+b)&65535
  if o=='sub':return(a-b)&65535
  if o=='mul':return(a*b)&65535
  if o=='div':return int((a if a<32768 else a-65536)/b)&65535
 return [o,a] if b is None else [o,a,b]
def address(s):
 s=s.removeprefix('WORD PTR ').removeprefix('es:').removeprefix('ds:')
 if s.startswith('['):
  a=s[1:-1];m=re.fullmatch(r'bx([+-]0x[0-9a-f]+)?',a)
  assert m and isinstance(r['bx'],int),(s,r['bx'])
  return(r['bx']+int(m[1]or'0',16))&65535
 return int(s,16)
def get(s):
 if s in r:return r[s]
 if 'PTR' in s or s.startswith(('es:','ds:')):
  a=address(s)
  if a==0x2898:return 0
  if 0x99a6<=a<0x9a02:
   o=a-0x99a6
   return 'sex' if o==4 else f'v{o:02x}'
  if 0x9b72<=a<=0x9b94:return f't{(a-0x9b72)//2}'
  raise ValueError(('unknown memory',hex(a)))
 return int(s,0)&65535
def put(s,v,pc):
 if s in r:r[s]=v
 elif 'PTR' in s:
  a=address(s);assert 0x99a6<=a<0x9a02,hex(a)
  writes.append({'physical':pc,'offset':a-0x99a6,'expression':v})
 else:raise ValueError(('put',s,v))
for pc,m,args in items:
 if pc<skip:continue
 p=[a.strip()for a in args.split(',')]
 if m=='call':
  if args=='0x3cc00':stack.pop();continue
  assert args=='0x0:0x1779',(hex(pc),args)
  # Pattern cwd/pushax/pushdx/xordx/movax,range/popcx/popbx/multiply/pushdx/pushax/divide.
  source=Path('lale/IST.EXE').read_bytes();assert source[pc+10]==0xb8
  n=int.from_bytes(source[pc+11:pc+13],'little');draws.append({'ordinal':len(draws),'physical':pc,'range':n});stack.pop();stack.pop();r['ax']=f'd{len(draws)-1}';r['dx']=0;r['bx']='clobbered';r['cx']=0;skip=pc+27;continue
 if m=='mov':put(p[0],get(p[1]),pc)
 elif m=='push':stack.append(get(p[0]))
 elif m=='pop':put(p[0],stack.pop(),pc)
 elif m in ['add','sub']:put(p[0],op(m,get(p[0]),get(p[1])),pc)
 elif m=='imul':put(p[0],op('mul',get(p[1]),get(p[2])),pc)
 elif m=='xor':assert p[0]==p[1];put(p[0],0,pc)
 elif m=='cwd':r['dx']=0 if isinstance(r['ax'],int)and r['ax']<32768 else ['sign',r['ax']]
 elif m=='idiv':r['ax']=op('div',r['ax'],get(p[0]));r['dx']='remainder'
 elif m=='dec':put(p[0],op('sub',get(p[0]),1),pc)
 elif m=='shl':put(p[0],op('mul',get(p[0]),1<<get(p[1])),pc)
 else:raise ValueError((pc,m,args))
(base/'formulas-ast.json').write_text(json.dumps({'draws':draws,'writes':writes},indent=2)+'\n')
def fmt(x):
 if isinstance(x,(str,int)):return str(x)
 o,a,b=x;return f'({fmt(a)} {dict(add="+",sub="-",mul="*",div="/s")[o]} {fmt(b)})'
for w in writes:print(hex(w['physical']),f'v{w["offset"]:02x}', '=',fmt(w['expression']))
