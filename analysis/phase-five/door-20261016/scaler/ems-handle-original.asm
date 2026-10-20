
analysis/phase-five/door-20261016/scaler/ems-handle-original.bin:     file format binary


Disassembly of section .data:

00011541 <.data>:
   11541:	c8 04 00 00          	enter  0x4,0x0
   11545:	a1 f2 86             	mov    ax,ds:0x86f2
   11548:	8b 16 f0 86          	mov    dx,WORD PTR ds:0x86f0
   1154c:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   1154f:	89 56 fc             	mov    WORD PTR [bp-0x4],dx
   11552:	83 7e 06 00          	cmp    WORD PTR [bp+0x6],0x0
   11556:	75 28                	jne    0x11580
   11558:	eb 33                	jmp    0x1158d
   1155a:	eb 24                	jmp    0x11580
   1155c:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   1155f:	26 8b 07             	mov    ax,WORD PTR es:[bx]
   11562:	3b 46 06             	cmp    ax,WORD PTR [bp+0x6]
   11565:	75 08                	jne    0x1156f
   11567:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   1156a:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   1156d:	eb 22                	jmp    0x11591
   1156f:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   11572:	26 8b 47 0c          	mov    ax,WORD PTR es:[bx+0xc]
   11576:	26 8b 57 0a          	mov    dx,WORD PTR es:[bx+0xa]
   1157a:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   1157d:	89 56 fc             	mov    WORD PTR [bp-0x4],dx
   11580:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   11583:	26 8b 47 0a          	mov    ax,WORD PTR es:[bx+0xa]
   11587:	26 0b 47 0c          	or     ax,WORD PTR es:[bx+0xc]
   1158b:	75 cf                	jne    0x1155c
   1158d:	33 d2                	xor    dx,dx
   1158f:	33 c0                	xor    ax,ax
   11591:	c9                   	leave
   11592:	cb                   	retf
   11593:	c8 06 00 00          	enter  0x6,0x0
   11597:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   1159c:	eb 15                	jmp    0x115b3
   1159e:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   115a1:	6b c0 12             	imul   ax,ax,0x12
   115a4:	c4 1e b4 e7          	les    bx,DWORD PTR ds:0xe7b4
   115a8:	03 d8                	add    bx,ax
   115aa:	26 83 3f 00          	cmp    WORD PTR es:[bx],0x0
   115ae:	74 0c                	je     0x115bc
   115b0:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   115b3:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   115b6:	3b 06 a8 e7          	cmp    ax,WORD PTR ds:0xe7a8
   115ba:	7c e2                	jl     0x1159e
   115bc:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   115bf:	3b                   	.byte 0x3b
