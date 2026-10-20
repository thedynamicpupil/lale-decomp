
lale/IST.EXE:     file format binary


Disassembly of section .data:

0004870d <.data+0x4870d>:
   4870d:	55                   	push   bp
   4870e:	8b ec                	mov    bp,sp
   48710:	83 ec 04             	sub    sp,0x4
   48713:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   48716:	40                   	inc    ax
   48717:	99                   	cwd
   48718:	52                   	push   dx
   48719:	50                   	push   ax
   4871a:	9a d6 25 00 00       	call   0x0:0x25d6
   4871f:	83 c4 04             	add    sp,0x4
   48722:	89 56 fe             	mov    WORD PTR [bp-0x2],dx
   48725:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   48728:	1e                   	push   ds
   48729:	68 d3 62             	push   0x62d3
   4872c:	68 6d 07             	push   0x76d
   4872f:	68 88 01             	push   0x188
   48732:	68 26 de             	push   0xde26
   48735:	9a 81 0a 20 00       	call   0x20:0xa81
   4873a:	83 c4 0a             	add    sp,0xa
   4873d:	ff 76 06             	push   WORD PTR [bp+0x6]
   48740:	ff 76 fe             	push   WORD PTR [bp-0x2]
   48743:	ff 76 fc             	push   WORD PTR [bp-0x4]
   48746:	b8 88 01             	mov    ax,0x188
   48749:	8e c0                	mov    es,ax
   4874b:	26 c4 1e 4f e3       	les    bx,DWORD PTR es:0xe34f
   48750:	26 ff 37             	push   WORD PTR es:[bx]
   48753:	a1 98 bb             	mov    ax,ds:0xbb98
   48756:	99                   	cwd
   48757:	52                   	push   dx
   48758:	50                   	push   ax
   48759:	b8 88 01             	mov    ax,0x188
   4875c:	8e c0                	mov    es,ax
   4875e:	26 c4 1e 4f e3       	les    bx,DWORD PTR es:0xe34f
   48763:	26 8b 47 04          	mov    ax,WORD PTR es:[bx+0x4]
   48767:	2b 06 98 bb          	sub    ax,WORD PTR ds:0xbb98
   4876b:	50                   	push   ax
   4876c:	9a 88 06 98 00       	call   0x98:0x688
   48771:	52                   	push   dx
   48772:	50                   	push   ax
   48773:	9a 06 00 20 00       	call   0x20:0x6
   48778:	83 c4 0a             	add    sp,0xa
   4877b:	68 88 01             	push   0x188
   4877e:	68 26 de             	push   0xde26
   48781:	9a 22 0b 20 00       	call   0x20:0xb22
   48786:	83 c4 04             	add    sp,0x4
   48789:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   4878c:	03 5e 06             	add    bx,WORD PTR [bp+0x6]
   4878f:	26 c6 07 00          	mov    BYTE PTR es:[bx],0x0
   48793:	ff 76 fe             	push   WORD PTR [bp-0x2]
   48796:	ff 76 fc             	push   WORD PTR [bp-0x4]
   48799:	0e                   	push   cs
   4879a:	e8 7d f5             	call   0x47d1a
   4879d:	83 c4 04             	add    sp,0x4
   487a0:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   487a3:	01 06 98 bb          	add    WORD PTR ds:0xbb98,ax
   487a7:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   487aa:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   487ad:	c9                   	leave
   487ae:	cb                   	retf
