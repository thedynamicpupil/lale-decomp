"""Static source-PC event plans plus prior concrete original numeric-instruction oracle.
No original machine code/DOS execution and no host polling rate. New outputs only.
"""
from pathlib import Path
import json,struct,hashlib
p=Path(__file__).parent;b=Path('lale/IST.EXE').read_bytes()
# Import only the retained oracle's function definitions; never run its output writer.
old=Path('analysis/phase-five/findings-1509-20261014/generation/instruction_fixtures.py');ns={'__file__':str(old)};exec(old.read_text().split('# Independently evaluate')[0],ns);numeric=ns['run']
callmap={0x3e859:0x3cc00,0x3e85d:0x3cd1f,0x3e881:0x3d037,0x3e893:0x3cf5d,0x3ec99:0x3cd1f,0x3ecda:0x3cd1f,0x3ed53:0x3d037,0x3ee02:0x3d037,0x3ed89:0x3cd1f,0x3ee38:0x3cd1f,0x3ee57:0x3d037,0x3eea3:0x3d037,0x3cf2a:0x3cf5d,0x3d03e:0x3cc00}
for pc,target in callmap.items():assert b[pc]==0xe8 and pc+3+int.from_bytes(b[pc+1:pc+3],'little',signed=True)==target,(pc,target)
fixtures=[]
for action in ['setup_blank','setup_named','race_plus','race_minus','sex','appearance_plus','appearance_minus','reroll']:
 for phase in range(4):
  before=bytearray(92);struct.pack_into('<HH',before,2,2,2);struct.pack_into('<H',before,0x42,1);before[0x50:0x54]=b'keep';record=bytearray(before);traits=[0xdead]+[0]*15;seed=0x12345678;state={'phase':phase,'body':3,'pose':3,'face':2};events=[]
  def word(at):return struct.unpack_from('<H',record,at)[0]
  def put(at,v):struct.pack_into('<H',record,at,v&65535)
  def take(n):
   global seed
   seed=(seed*0x015a4e35+1)&0xffffffff;return n*((seed>>16)&32767)//32768
  def init(pc):
   race=word(2);traits[1:16]=list(struct.unpack_from('<16H',b,0x19200+0x2778+32*race))[1:16];choice=take(5);traits[15]=struct.unpack_from('<H',b,0x19200+0xfe7+10*race+2*choice)[0];events.append(pc)
  def generate(pc):
   global seed,record
   events.append(pc);init(0x3d03e);seed,record_out,_=numeric(seed,record,traits);record=bytearray(record_out);events.append(0x3d041)
  def step(pc):
   state['pose']=state['body']+1;state['body']=state['pose']%4
   if state['phase']==1:state['face']=take(3);state['phase']=2
   elif state['phase']==2:state['face']=0;state['phase']=3
   events.append(pc)
  def appearance(pc):
   state['face']=0;state['body']=0;put(4,2 if word(0x42)in[6,13,14,16]else 1);events.append(pc);step(0x3cf2a)
  # These are source-ordered call plans, not Rust method calls.
  if action.startswith('setup'):
   init(0x3e859);appearance(0x3e85d)
   if action=='setup_blank':generate(0x3e881)
   else:events.append(0x3e887)
   step(0x3e893)
  elif action.startswith('race'):
   delta=1 if action=='race_plus'else-1;put(2,word(2)+delta);generate(0x3ed53 if delta==1 else 0x3ee02);put(0x42,2*(word(2)-1)+1);appearance(0x3ed89 if delta==1 else 0x3ee38)
  elif action=='sex':put(4,1);generate(0x3eea3)
  elif action.startswith('appearance'):
   delta=1 if action=='appearance_plus'else-1;put(0x42,2 if delta==1 else 16);appearance(0x3ec99 if delta==1 else 0x3ecda)
  elif action=='reroll':generate(0x3ee57)
  fixtures.append({'action':action,'phase_before':phase,'seed_before':0x12345678,'seed_after':seed,'record_before_hex':before.hex(),'record_after_hex':record.hex(),'traits_after':traits,'animation_after':state,'event_pcs':events})
(p/'caller-event-fixtures.json').write_text(json.dumps({'classification':'Static original-call plans plus independent instruction numeric oracle; no DOS runtime validation','original_sha256':hashlib.sha256(b).hexdigest(),'near_calls':[{ 'pc':pc,'target':target,'bytes':b[pc:pc+3].hex()}for pc,target in callmap.items()],'fixtures':fixtures},indent=2)+'\n')
(p/'caller-event-fixtures.tsv').write_text(''.join(f'{f["action"]}|{f["phase_before"]}|{f["seed_before"]}|{f["seed_after"]}|{f["record_before_hex"]}|{f["record_after_hex"]}|'+''.join(t.to_bytes(2,'little').hex()for t in f['traits_after'])+'|'+','.join(str(f['animation_after'][k])for k in['phase','body','pose','face'])+'|'+','.join(str(v)for v in f['event_pcs'])+'\n'for f in fixtures))
print('32 static event/record/RNG fixtures;14 original near-call targets verified.')
