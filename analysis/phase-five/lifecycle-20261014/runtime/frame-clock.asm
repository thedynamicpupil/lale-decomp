
analysis/phase-five/lifecycle-20261014/runtime/frame-clock.bin:     file format binary


Disassembly of section .data:

00058e1e <.data>:
   58e1e:	55                   	push   bp
   58e1f:	8b ec                	mov    bp,sp
   58e21:	6a 00                	push   0x0
   58e23:	68 e8 03             	push   0x3e8
   58e26:	a0 25 d6             	mov    al,ds:0xd625
   58e29:	b4 00                	mov    ah,0x0
   58e2b:	33 c9                	xor    cx,cx
   58e2d:	ba 88 01             	mov    dx,0x188
   58e30:	8e c2                	mov    es,dx
   58e32:	26 8b 16 4c e7       	mov    dx,WORD PTR es:0xe74c
   58e37:	50                   	push   ax
   58e38:	26 a1 4a e7          	mov    ax,es:0xe74a
   58e3c:	2b 06 0e d6          	sub    ax,WORD PTR ds:0xd60e
   58e40:	1b 16 10 d6          	sbb    dx,WORD PTR ds:0xd610
   58e44:	5b                   	pop    bx
   58e45:	9a 42 12 00 00       	call   0x0:0x1242
   58e4a:	52                   	push   dx
   58e4b:	50                   	push   ax
   58e4c:	9a e6 12 00 00       	call   0x0:0x12e6
   58e51:	a3 f2 d5             	mov    ds:0xd5f2,ax
   58e54:	5d                   	pop    bp
   58e55:	cb                   	retf
