#!/usr/bin/env python3
"""Analysis transcription fixture. Explicit poll/timer/RNG inputs, no host cadence."""
from dataclasses import dataclass, asdict
import json
from pathlib import Path
@dataclass
class State:
    phase:int=0
    face:int=0
    pose:int=1
    last_tick:int=0

def draw15(r, scale):
    assert 0<=r<=32767
    return scale*r//32768

def poll(s, now, random15, stamp_now=None):
    draws=[]
    def take():
        v=next(random15);draws.append(v);return v
    # RNG evaluated first even when phase is already nonzero.
    if draw15(take(),1000)==0 and s.phase==0:s.phase=1
    tick=((now-s.last_tick)&65535)>=150
    copied_face=False
    if tick:
        s.last_tick=(now if stamp_now is None else stamp_now)&65535
        s.pose=s.pose%4+1
        if s.phase==1:
            s.face=draw15(take(),3);s.phase=2
        elif s.phase==2:
            s.face=0;s.phase=3
        if s.phase!=0:
            copied_face=True;s.phase%=3
    return dict(state=asdict(s),rng_draws=draws,body_tick=tick,face_rectangle_copied=copied_face)

def main():
    assert [r for r in range(32768) if draw15(r,1000)==0]==list(range(33))
    assert [(r,draw15(r,3)) for r in [0,10922,10923,21845,21846,32767]]==[(0,0),(10922,0),(10923,1),(21845,1),(21846,2),(32767,2)]
    s=State();trace=[]
    # Gate starts cycle before timer is due. Active phase still consumes gate RNG.
    trace.append(poll(s,10,iter([0])))
    trace.append(poll(s,149,iter([32767])))
    trace.append(poll(s,150,iter([32767,21846])))
    assert s.face==2 and s.phase==2
    trace.append(poll(s,300,iter([0])))
    assert s.face==0 and s.phase==0
    assert trace[-1]['rng_draws']==[0]  # Phase2 cannot retrigger despite gate success.
    wrap=State(last_tick=65500)
    before=poll(wrap,113,iter([32767]));after=poll(wrap,114,iter([32767]))
    assert not before['body_tick'] and after['body_tick']
    fresh=State(); later_stamp=poll(fresh,150,iter([32767]),stamp_now=160);assert fresh.last_tick==160
    s=State(phase=1);zero=poll(s,150,iter([32767,0]));assert s.face==0 and s.phase==2
    result=dict(exhaustive_gate_count=33,scaled_face_boundaries=[dict(r=r,face=draw15(r,3)) for r in [0,10922,10923,21845,21846,32767]],controlled_trace=trace,wrapping_timer=[before,after],zero_expression_still_advances=zero,separate_stamp_read=later_stamp)
    dest=Path(__file__).with_name('transcription-test-vectors.json');dest.write_text(json.dumps(result,indent=2)+'\n');print('Verified controlled poll model, exhaustive gate threshold, scaled face boundaries, phase call order and u16 timer wrap.')
if __name__=='__main__':main()
