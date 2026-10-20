
analysis/phase-five/area-fields-20261015/area/stair-call-frontier.bin:     file format binary


Disassembly of section .data:

00030470 <.data>:
   30470:	06                   	push   es
   30471:	04 20                	add    al,0x20
   30473:	50                   	push   ax
   30474:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30477:	6b db 0e             	imul   bx,bx,0xe
   3047a:	b8 88 01             	mov    ax,0x188
   3047d:	8e c0                	mov    es,ax
   3047f:	26 ff b7 5e b4       	push   WORD PTR es:[bx-0x4ba2]
   30484:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30487:	6b db 0e             	imul   bx,bx,0xe
   3048a:	b8 88 01             	mov    ax,0x188
   3048d:	8e c0                	mov    es,ax
   3048f:	26 ff b7 5c b4       	push   WORD PTR es:[bx-0x4ba4]
   30494:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30497:	6b db 0e             	imul   bx,bx,0xe
   3049a:	b8 88 01             	mov    ax,0x188
   3049d:	8e c0                	mov    es,ax
   3049f:	26 ff b7 62 b4       	push   WORD PTR es:[bx-0x4b9e]
   304a4:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   304a7:	6b db 0e             	imul   bx,bx,0xe
   304aa:	b8 88 01             	mov    ax,0x188
   304ad:	8e c0                	mov    es,ax
   304af:	26 ff b7 60 b4       	push   WORD PTR es:[bx-0x4ba0]
   304b4:	6a 00                	push   0x0
   304b6:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   304b9:	6b db 0e             	imul   bx,bx,0xe
   304bc:	b8 88 01             	mov    ax,0x188
   304bf:	53                   	push   bx
   304c0:	50                   	push   ax
   304c1:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   304c4:	07                   	pop    es
   304c5:	5b                   	pop    bx
   304c6:	26 f7 af 60 b4       	imul   WORD PTR es:[bx-0x4ba0]
   304cb:	50                   	push   ax
   304cc:	9a 30 04 28 00       	call   0x28:0x430
   304d1:	83 c4 14             	add    sp,0x14
   304d4:	6a 34                	push   0x34
   304d6:	6a 30                	push   0x30
   304d8:	6a 41                	push   0x41
   304da:	0e                   	push   cs
   304db:	e8 fa 7f             	call   0x384d8
   304de:	83 c4 06             	add    sp,0x6
   304e1:	a0 06 3b             	mov    al,ds:0x3b06
   304e4:	b4 00                	mov    ah,0x0
   304e6:	0b c0                	or     ax,ax
   304e8:	75 14                	jne    0x304fe
   304ea:	a1 f3 b9             	mov    ax,ds:0xb9f3
   304ed:	03 06 c6 b9          	add    ax,WORD PTR ds:0xb9c6
   304f1:	a3 f3 b9             	mov    ds:0xb9f3,ax
   304f4:	a1 f1 b9             	mov    ax,ds:0xb9f1
   304f7:	03 06 c4 b9          	add    ax,WORD PTR ds:0xb9c4
   304fb:	a3 f1 b9             	mov    ds:0xb9f1,ax
   304fe:	c9                   	leave
   304ff:	cb                   	retf
