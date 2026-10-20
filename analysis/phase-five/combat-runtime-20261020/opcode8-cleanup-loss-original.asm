
analysis/phase-five/combat-runtime-20261020/opcode8-cleanup-loss-original.bin:     file format binary


Disassembly of section .data:

00044590 <.data>:
   44590:	00 ff                	add    bh,bh
   44592:	46                   	inc    si
   44593:	fc                   	cld
   44594:	83 7e fc 08          	cmp    WORD PTR [bp-0x4],0x8
   44598:	7c de                	jl     0x44578
   4459a:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   4459d:	83 7e fe 14          	cmp    WORD PTR [bp-0x2],0x14
   445a1:	7c a5                	jl     0x44548
   445a3:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   445a8:	eb 43                	jmp    0x445ed
   445aa:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   445ad:	6b db 06             	imul   bx,bx,0x6
   445b0:	33 c0                	xor    ax,ax
   445b2:	89 87 dc 5b          	mov    WORD PTR [bx+0x5bdc],ax
   445b6:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   445b9:	6b db 06             	imul   bx,bx,0x6
   445bc:	89 87 da 5b          	mov    WORD PTR [bx+0x5bda],ax
   445c0:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   445c3:	6b db 06             	imul   bx,bx,0x6
   445c6:	89 87 d8 5b          	mov    WORD PTR [bx+0x5bd8],ax
   445ca:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   445cd:	6b db 06             	imul   bx,bx,0x6
   445d0:	33 c0                	xor    ax,ax
   445d2:	89 87 f4 5b          	mov    WORD PTR [bx+0x5bf4],ax
   445d6:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   445d9:	6b db 06             	imul   bx,bx,0x6
   445dc:	89 87 f2 5b          	mov    WORD PTR [bx+0x5bf2],ax
   445e0:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   445e3:	6b db 06             	imul   bx,bx,0x6
   445e6:	89 87 f0 5b          	mov    WORD PTR [bx+0x5bf0],ax
   445ea:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   445ed:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   445f1:	7c b7                	jl     0x445aa
   445f3:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   445f8:	eb 16                	jmp    0x44610
   445fa:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   445fd:	6b db 5c             	imul   bx,bx,0x5c
   44600:	b8 88 01             	mov    ax,0x188
   44603:	8e c0                	mov    es,ax
   44605:	26 83 bf e0 99 00    	cmp    WORD PTR es:[bx-0x6620],0x0
   4460b:	7f 09                	jg     0x44616
   4460d:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   44610:	83 7e fe 05          	cmp    WORD PTR [bp-0x2],0x5
   44614:	7c e4                	jl     0x445fa
   44616:	b8 88 01             	mov    ax,0x188
   44619:	8e c0                	mov    es,ax
   4461b:	26 83 3e 2e 63 02    	cmp    WORD PTR es:0x632e,0x2
   44621:	74 09                	je     0x4462c
   44623:	83 7e fe 05          	cmp    WORD PTR [bp-0x2],0x5
   44627:	74 03                	je     0x4462c
   44629:	e9 a2 10             	jmp    0x456ce
   4462c:	9a 2f 00 28 01       	call   0x128:0x2f
   44631:	b8 88 01             	mov    ax,0x188
   44634:	8e c0                	mov    es,ax
   44636:	26 c7 06 c8 b9 00 00 	mov    WORD PTR es:0xb9c8,0x0
   4463d:	e9 9f 04             	jmp    0x44adf
   44640:	e9 8b 10             	jmp    0x456ce
