
lale/IST.EXE:     file format binary


Disassembly of section .data:

0003e532 <.data+0x3e532>:
   3e532:	55                   	push   bp
   3e533:	8b ec                	mov    bp,sp
   3e535:	83 ec 04             	sub    sp,0x4
   3e538:	ff 76 08             	push   WORD PTR [bp+0x8]
   3e53b:	ff 76 06             	push   WORD PTR [bp+0x6]
   3e53e:	6a 02                	push   0x2
   3e540:	9a 25 00 70 01       	call   0x170:0x25
   3e545:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   3e548:	83 7e fc ff          	cmp    WORD PTR [bp-0x4],0xffff
   3e54c:	75 15                	jne    0x3e563
   3e54e:	6a ff                	push   0xffff
   3e550:	1e                   	push   ds
   3e551:	68 d1 49             	push   0x49d1
   3e554:	68 16 01             	push   0x116
   3e557:	1e                   	push   ds
   3e558:	68 bf 49             	push   0x49bf
   3e55b:	9a 2a 00 58 01       	call   0x158:0x2a
   3e560:	83 c4 0c             	add    sp,0xc
   3e563:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   3e568:	eb 37                	jmp    0x3e5a1
   3e56a:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3e56d:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3e570:	69 c0 94 00          	imul   ax,ax,0x94
   3e574:	05 26 9c             	add    ax,0x9c26
   3e577:	68 88 01             	push   0x188
   3e57a:	50                   	push   ax
   3e57b:	6a 00                	push   0x0
   3e57d:	6a 25                	push   0x25
   3e57f:	9a 2f 00 70 01       	call   0x170:0x2f
   3e584:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3e587:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3e58a:	69 c0 94 00          	imul   ax,ax,0x94
   3e58e:	05 95 9c             	add    ax,0x9c95
   3e591:	68 88 01             	push   0x188
   3e594:	50                   	push   ax
   3e595:	6a 00                	push   0x0
   3e597:	6a 25                	push   0x25
   3e599:	9a 2f 00 70 01       	call   0x170:0x2f
   3e59e:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   3e5a1:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   3e5a5:	7e c3                	jle    0x3e56a
   3e5a7:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   3e5ac:	eb 1c                	jmp    0x3e5ca
   3e5ae:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3e5b1:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3e5b4:	6b c0 5c             	imul   ax,ax,0x5c
   3e5b7:	05 a6 99             	add    ax,0x99a6
   3e5ba:	68 88 01             	push   0x188
   3e5bd:	50                   	push   ax
   3e5be:	6a 00                	push   0x0
   3e5c0:	6a 5c                	push   0x5c
   3e5c2:	9a 2f 00 70 01       	call   0x170:0x2f
   3e5c7:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   3e5ca:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   3e5ce:	7e de                	jle    0x3e5ae
   3e5d0:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3e5d3:	9a 2a 00 70 01       	call   0x170:0x2a
   3e5d8:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   3e5dd:	eb 33                	jmp    0x3e612
   3e5df:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   3e5e2:	6b db 5c             	imul   bx,bx,0x5c
   3e5e5:	b8 88 01             	mov    ax,0x188
   3e5e8:	8e c0                	mov    es,ax
   3e5ea:	26 8b 87 a8 99       	mov    ax,WORD PTR es:[bx-0x6658]
   3e5ef:	6b c0 0b             	imul   ax,ax,0xb
   3e5f2:	05 38 26             	add    ax,0x2638
   3e5f5:	68 88 01             	push   0x188
   3e5f8:	50                   	push   ax
   3e5f9:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3e5fc:	69 c0 94 00          	imul   ax,ax,0x94
   3e600:	05 70 9c             	add    ax,0x9c70
   3e603:	68 88 01             	push   0x188
   3e606:	50                   	push   ax
   3e607:	9a a3 49 00 00       	call   0x0:0x49a3
   3e60c:	83 c4 08             	add    sp,0x8
   3e60f:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   3e612:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   3e616:	7e c7                	jle    0x3e5df
   3e618:	c9                   	leave
   3e619:	cb                   	retf
