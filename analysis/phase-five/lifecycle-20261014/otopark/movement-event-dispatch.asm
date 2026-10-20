
analysis/phase-five/lifecycle-20261014/otopark/movement-event-dispatch.bin:     file format binary


Disassembly of section .data:

0003ac19 <.data>:
   3ac19:	6a 02                	push   0x2
   3ac1b:	b8 88 01             	mov    ax,0x188
   3ac1e:	8e c0                	mov    es,ax
   3ac20:	26 a0 eb b9          	mov    al,es:0xb9eb
   3ac24:	b4 00                	mov    ah,0x0
   3ac26:	ba 88 01             	mov    dx,0x188
   3ac29:	8e c2                	mov    es,dx
   3ac2b:	50                   	push   ax
   3ac2c:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   3ac30:	5a                   	pop    dx
   3ac31:	f7 ea                	imul   dx
   3ac33:	ba 88 01             	mov    dx,0x188
   3ac36:	8e c2                	mov    es,dx
   3ac38:	26 8b 16 f3 b9       	mov    dx,WORD PTR es:0xb9f3
   3ac3d:	03 d0                	add    dx,ax
   3ac3f:	6b d2 0f             	imul   dx,dx,0xf
   3ac42:	52                   	push   dx
   3ac43:	9a 20 00 30 01       	call   0x130:0x20
   3ac48:	83 c4 04             	add    sp,0x4
   3ac4b:	0a c0                	or     al,al
   3ac4d:	75 c1                	jne    0x3ac10
