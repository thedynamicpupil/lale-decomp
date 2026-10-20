
analysis/phase-five/area-fields-20261015/area/selector-loader.bin:     file format binary


Disassembly of section .data:

00033bcd <.data>:
   33bcd:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   33bd0:	05 03 00             	add    ax,0x3
   33bd3:	99                   	cwd
   33bd4:	bb 88 01             	mov    bx,0x188
   33bd7:	8e c3                	mov    es,bx
   33bd9:	50                   	push   ax
   33bda:	52                   	push   dx
   33bdb:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   33be0:	26 a1 ec b9          	mov    ax,es:0xb9ec
   33be4:	59                   	pop    cx
   33be5:	5b                   	pop    bx
   33be6:	9a 77 14 00 00       	call   0x0:0x1477
   33beb:	8b d8                	mov    bx,ax
   33bed:	8e c2                	mov    es,dx
   33bef:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   33bf2:	b4 00                	mov    ah,0x0
   33bf4:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33bf7:	d1 e3                	shl    bx,1
   33bf9:	ba 88 01             	mov    dx,0x188
   33bfc:	8e c2                	mov    es,dx
   33bfe:	26 89 87 10 9f       	mov    WORD PTR es:[bx-0x60f0],ax
