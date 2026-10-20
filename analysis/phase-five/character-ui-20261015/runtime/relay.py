import pty,os,sys,select,subprocess,time,signal
from pathlib import Path
base=Path(sys.argv[1]).resolve()
master,slave=pty.openpty()
env=dict(os.environ,SDL_VIDEODRIVER="dummy",SDL_AUDIODRIVER="dummy",TERM="xterm",QT_QPA_PLATFORM="offscreen")
p=subprocess.Popen(["/usr/bin/dosbox-x","-conf",str(base/"controlled.conf"),"-defaultdir",str(base),"-defaultmapper","-savedir",str(base),"-time-limit","600"],stdin=slave,stdout=slave,stderr=slave,env=env,cwd=base,start_new_session=True)
os.close(slave)
start=time.monotonic()
try:
 with open(base/"debugger.typescript","wb") as log:
  while p.poll() is None and time.monotonic()-start<900:
   ready,_,_=select.select([master,sys.stdin],[],[],1)
   for fd in ready:
    if fd==master:
     try:b=os.read(master,65536)
     except OSError:break
     log.write(b);log.flush();sys.stdout.buffer.write(b);sys.stdout.buffer.flush()
    else:
     b=os.read(sys.stdin.fileno(),4096)
     if not b:raise KeyboardInterrupt
     if b.strip()==b"STOP_RELAY":raise KeyboardInterrupt
     os.write(master,b)
finally:
 os.killpg(p.pid,signal.SIGTERM) if p.poll() is None else None
 try:p.wait(timeout=1)
 except subprocess.TimeoutExpired:
  os.killpg(p.pid,signal.SIGKILL);p.wait()
