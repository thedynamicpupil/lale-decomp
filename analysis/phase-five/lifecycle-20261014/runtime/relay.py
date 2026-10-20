import pty,os
args=['/usr/bin/dosbox-x','-conf','/tmp/lale-dos-controlled/controlled.conf','-defaultdir','/tmp/lale-dos-controlled','-defaultmapper','-savedir','/tmp/lale-dos-controlled','-time-limit','180']
os.environ.update(SDL_VIDEODRIVER='dummy',SDL_AUDIODRIVER='dummy',TERM='xterm')
with open('/tmp/lale-dos-controlled/debugger.typescript','wb') as log:
 def read(fd):
  b=os.read(fd,65536);log.write(b);log.flush();return b
 pty.spawn(args,master_read=read)
