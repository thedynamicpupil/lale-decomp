
analysis/phase-five/new-reference-20261014/original-overlay-16ba.bin:     file format binary


Disassembly of section .data:

0005a6b0 <.data>:
   5a6b0:	55                   	push   bp
   5a6b1:	8b ec                	mov    bp,sp
   5a6b3:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   5a6b6:	cd 10                	int    0x10
   5a6b8:	5d                   	pop    bp
   5a6b9:	cb                   	retf
   5a6ba:	55                   	push   bp
   5a6bb:	8b ec                	mov    bp,sp
   5a6bd:	8a 66 06             	mov    ah,BYTE PTR [bp+0x6]
   5a6c0:	b0 02                	mov    al,0x2
   5a6c2:	ba c4 03             	mov    dx,0x3c4
   5a6c5:	ef                   	out    dx,ax
   5a6c6:	5d                   	pop    bp
   5a6c7:	cb                   	retf
