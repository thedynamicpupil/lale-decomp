
analysis/phase-five/reusable-loops-20261020/actor-effect-original.bin:     file format binary


Disassembly of section .data:

0004b71e <.data>:
   4b71e:	55                   	push   bp
   4b71f:	8b ec                	mov    bp,sp
   4b721:	83 7e 06 00          	cmp    WORD PTR [bp+0x6],0x0
   4b725:	7f 0a                	jg     0x4b731
   4b727:	83 3e 9c d5 00       	cmp    WORD PTR ds:0xd59c,0x0
   4b72c:	7f 03                	jg     0x4b731
   4b72e:	e9 8a 00             	jmp    0x4b7bb
   4b731:	8b 5e 08             	mov    bx,WORD PTR [bp+0x8]
   4b734:	6b db 28             	imul   bx,bx,0x28
   4b737:	b8 88 01             	mov    ax,0x188
   4b73a:	8e c0                	mov    es,ax
   4b73c:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   4b741:	6b db 2e             	imul   bx,bx,0x2e
   4b744:	b8 88 01             	mov    ax,0x188
   4b747:	8e c0                	mov    es,ax
   4b749:	26 83 bf 2c 9f 00    	cmp    WORD PTR es:[bx-0x60d4],0x0
   4b74f:	7e 6a                	jle    0x4b7bb
   4b751:	8b 5e 08             	mov    bx,WORD PTR [bp+0x8]
   4b754:	6b db 28             	imul   bx,bx,0x28
   4b757:	b8 88 01             	mov    ax,0x188
   4b75a:	8e c0                	mov    es,ax
   4b75c:	26 c7 87 ae a0 01 00 	mov    WORD PTR es:[bx-0x5f52],0x1
   4b763:	8b 5e 08             	mov    bx,WORD PTR [bp+0x8]
   4b766:	6b db 28             	imul   bx,bx,0x28
   4b769:	b8 88 01             	mov    ax,0x188
   4b76c:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   4b76f:	8e c0                	mov    es,ax
   4b771:	26 29 97 8a a0       	sub    WORD PTR es:[bx-0x5f76],dx
   4b776:	c7 06 66 d5 09 00    	mov    WORD PTR ds:0xd566,0x9
   4b77c:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   4b77f:	a3 76 d5             	mov    ds:0xd576,ax
   4b782:	c7 06 74 d5 04 00    	mov    WORD PTR ds:0xd574,0x4
   4b788:	ff 76 08             	push   WORD PTR [bp+0x8]
   4b78b:	0e                   	push   cs
   4b78c:	e8 01 f1             	call   0x4a890
   4b78f:	59                   	pop    cx
   4b790:	8b 5e 08             	mov    bx,WORD PTR [bp+0x8]
   4b793:	6b db 28             	imul   bx,bx,0x28
   4b796:	b8 88 01             	mov    ax,0x188
   4b799:	8e c0                	mov    es,ax
   4b79b:	26 83 bf 8a a0 01    	cmp    WORD PTR es:[bx-0x5f76],0x1
   4b7a1:	7d 18                	jge    0x4b7bb
   4b7a3:	c7 06 66 d5 02 00    	mov    WORD PTR ds:0xd566,0x2
   4b7a9:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   4b7ac:	a3 76 d5             	mov    ds:0xd576,ax
   4b7af:	c7 06 74 d5 02 00    	mov    WORD PTR ds:0xd574,0x2
   4b7b5:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   4b7b8:	a3 6c d5             	mov    ds:0xd56c,ax
   4b7bb:	5d                   	pop    bp
   4b7bc:	cb                   	retf
