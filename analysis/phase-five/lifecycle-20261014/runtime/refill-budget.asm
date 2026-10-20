
analysis/phase-five/lifecycle-20261014/runtime/refill-budget.bin:     file format binary


Disassembly of section .data:

000595bf <.data>:
   595bf:	a0 25 d6             	mov    al,ds:0xd625
   595c2:	b4 00                	mov    ah,0x0
   595c4:	50                   	push   ax
   595c5:	b8 e8 03             	mov    ax,0x3e8
   595c8:	99                   	cwd
   595c9:	5b                   	pop    bx
   595ca:	f7 fb                	idiv   bx
   595cc:	ba 88 01             	mov    dx,0x188
   595cf:	8e c2                	mov    es,dx
   595d1:	26 8b 16 4a e7       	mov    dx,WORD PTR es:0xe74a
   595d6:	2b 16 12 d6          	sub    dx,WORD PTR ds:0xd612
   595da:	2b c2                	sub    ax,dx
   595dc:	3d 0a 00             	cmp    ax,0xa
   595df:	7e 03                	jle    0x595e4
   595e1:	e9 6b ff             	jmp    0x5954f
   595e4:	c9                   	leave
