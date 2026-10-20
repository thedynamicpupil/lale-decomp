# Conditioned original PC1→PC2 exit — 2026-10-16

**Observed result:** from PC1(1,5),facing3, original mode3/current then
mode1/candidate reaches the exit warning. Hayır vetoes and stays in PC1.
Evet loads PC2(3,22),facing3 and vetoes the old westward step. No second
coordinate delta is applied. This is a controlled postcondition test, not a
natural dog/key playthrough or stairs-animation acceptance.

## Preservation and controlled setup

Original distribution files were copied into NEW runtime/stairs-20261016/run1/game;
GRP was seeded from original GRPHAZIR only there. Installed Linux DOSBox-X ran
normal core/fixed50000, dummy video/audio, IRQ5. Only that owned copy was mounted.
The original GUI Ghidra project/emulator/config/reference media were untouched.
All20 copied source distribution hashes remain equal (`preservation.json`).

An initial startup lacking the established launch flags was terminated at the
original0824:0000 debugger stop before RUN. No accepted capture comes from it.
The successful session70097 used the retained controlled.conf plus -defaultdir,
-defaultmapper,-savedir pointing into the owned run and -time-limit3600.
It was terminated cleanly after final capture at the synthetic return sentinel.

Creation and film were explicitly skipped at original boundaries: menu0e00:133e,
BIOS Enter→main0d6a:059c; AX1/IP05a1→063c; IP0641→loader return0706. Original
party reader and area initialization ran. DS1f04,SS2dac were observed. Initial
main SPf74/BPfea were recorded. Subsequent calls used unused lower original
stack space SS:0c00 with explicit far return0d6a:0706; that sentinel was always
trapped before its main instruction executed. The ordinary main loop was not
resumed with this temporary stack.

The test explicitly set PC1 x1/y5/facing3, live dxFFFF/dy0, event bits1+2
(DS:b9ca=06) and opening-dialogue bit249 (DS:b9e9=02). Those flags establish
the requested post-dog/key conditions without claiming that the events were
played. Original compositor1662 resident1e86:0070 rendered that conditioned
view into slot66 before the movement attempt. BIOS input was emptied before
invoking original movement via resident1670 **0034** (1e94:0034), args
dxFFFF,dy0,facing3. Offset0020 is a different function and was never used.

## Actual warning, rejection and accepted transition

Resident event stub1ead:0020 stopped at current `(cell offset765,mode3)` and
candidate `(offset750,mode1)`. The actual modal keyboard poll0e00:2584 displayed
the warning while coordinates remained(1,5),facing3,area0,guard0.
Warning VGA/DS/stack snapshots are retained.

Hayır was actual BIOS word2368 (h), injected into the normal BIOS buffer.
Original movement returned to the sentinel with AX1f00 (AL0), choicebb9e=1,
veto bba8=1, b9c8=0 and unchanged PC1 coordinates. The subsequent independent
attempt supplied Evet word1265 (e) at the same original warning. It returned
AL0,choice0,veto1,b9c8=0,PC2 area1 width30,x3,y22,facing3.

A second accepted trial (R2) first reloaded PC1 through the original area
loader with area0/flag1 and reestablished the same explicit test conditions.
It observed the complete transition tail with memory-change breakpoints and
resident call sites; this avoids relying on a stale relocated-body breakpoint.

## R2 state and call chain

1. Memory watch bb6b00→01 stopped actual event body45f0:11df immediately before
   loader call. DS still had old width10/x1/y5 but area index1; choice0/veto0.
   The event's original arguments select area2/position0298/facing3.
2. Resident1670:002a was called with `(area index1,entry flag1)`; its original
   body is1927. After loading,1662:006b/0235 updated vectors for PC2(3,22),facing3.
   This call's retained return IP1281 corresponds to original event file448f1.
3. Original1670:0052/3cce then00a7/276c were called (return IP1293/1298).
   These are UI-state/sky-selection maintenance, not8197's turn animation.
4. Memory watch b9c800→01 stopped45f0:12a4. DS already PC2(3,22),facing3,
   choice0,guard0,redraw word1,veto still0.
5. Watch bba800→01 stopped45f0:12aa, retaining redraw word1. This is opcode11's
   explicit veto of the OLD movement; it does not undo the new area/position.
6. Event common cleanup then called resident1670:002f/body07b6 with argument1;
   retained return45f0:2086 identifies event original file456f6. Live3d5e=0022.
   Its original argument1 branch composes/presents the current PC2 view directly.
   Runtime renderer bytes are retained. The source argument table selects07dc,
   which clears/composes slot66, merges/presents and returns.
7. After that redraw, original old movement's failure tail changed b9c801→00,
   stopping at2eaf:0711 immediately before MOV AL,0 /LEAVE/RETF. Final return
   to0d6a:0706 retained PC2(3,22),facing3,area1,choice0,veto1,b9c8=0,guard0.

8197 resident1e86:0020 and graphics9 guard-wrapper80d0 resident1e86:00c0 were
armed throughout the bounded accepted movement invocation and never stopped.
The observed current-cell event therefore changed areas and vetoed before the
graphics9 helper. This route uses event cleanup's plain renderer argument1;
it is not evidence of running the separate animated graphics9 stairs sequence
or8197 viewport100/200 transition. Guard remained0 at every retained state.

## Retained evidence and capture quality

54 raw captures and hashes are retained in capture/ and capture-hashes.json.
state-summary.json gives exact fields for every important before/after boundary.
debug-001..043 retain debugger output as returned; debug010/debug023 were client
truncated and do not independently establish all their requested commands.
Complete raw DS/stack captures and later memory-watch logs establish the claims.

The first file named STAIR-MODE1-ST.BIN is actually a repeated mode3 stop while
the dispatcher stub was loading/patching itself. It is retained, excluded as a
candidate event, and superseded by STAIR-EVENT2-ST.BIN plus the correctly labeled
EVET/R2 mode1 stacks. INT3F stubs can stop once before load and again after being
patched; do not count those stops as two event invocations.

The first accepted attempt's45f0:10ec direct-body breakpoint became stale during
modal return because the event overlay relocated to3854. It did NOT establish
opcode11 execution. R2's memory-watch and actual loader/return chains supply that
proof. Every RUN completed at a confirmed stop before the next commands were sent.

No original framebuffer equality or natural PC2 ordinary-step comparison is
claimed here. The retained PC2 VGA is diagnostic; root's renderer comparisons
and the next fresh ordinary movement trial cover those independently.
