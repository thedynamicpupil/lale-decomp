
analysis/phase-four/IST-resident-raw.bin:     file format binary


Disassembly of section .data:

00011296 <.data+0x1296>:
   11296:	55                   	push   bp
   11297:	8b ec                	mov    bp,sp
   11299:	b4 2a                	mov    ah,0x2a
   1129b:	cd 21                	int    0x21
   1129d:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   112a0:	26 89 0f             	mov    WORD PTR es:[bx],cx
   112a3:	26 89 57 02          	mov    WORD PTR es:[bx+0x2],dx
   112a7:	5d                   	pop    bp
   112a8:	cb                   	retf
   112a9:	55                   	push   bp
   112aa:	8b ec                	mov    bp,sp
   112ac:	b4 2c                	mov    ah,0x2c
   112ae:	cd 21                	int    0x21
   112b0:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   112b3:	26 89 0f             	mov    WORD PTR es:[bx],cx
   112b6:	26 89 57 02          	mov    WORD PTR es:[bx+0x2],dx
   112ba:	5d                   	pop    bp
   112bb:	cb                   	retf
