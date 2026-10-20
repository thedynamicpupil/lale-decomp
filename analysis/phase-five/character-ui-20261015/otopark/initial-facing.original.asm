
analysis/phase-five/character-ui-20261015/otopark/initial-facing.original.bin:     file format binary


Disassembly of section .data:

00033a88 <.data>:
   33a88:	b8 88 01             	mov    ax,0x188
   33a8b:	8e c0                	mov    es,ax
   33a8d:	26 83 3e f1 b9 03    	cmp    WORD PTR es:0xb9f1,0x3
   33a93:	7d 0d                	jge    0x33aa2
   33a95:	b8 88 01             	mov    ax,0x188
   33a98:	8e c0                	mov    es,ax
   33a9a:	26 c6 06 f0 b9 02    	mov    BYTE PTR es:0xb9f0,0x2
   33aa0:	eb 4c                	jmp    0x33aee
   33aa2:	b8 88 01             	mov    ax,0x188
   33aa5:	8e c0                	mov    es,ax
   33aa7:	26 83 3e f3 b9 03    	cmp    WORD PTR es:0xb9f3,0x3
   33aad:	7d 0d                	jge    0x33abc
   33aaf:	b8 88 01             	mov    ax,0x188
   33ab2:	8e c0                	mov    es,ax
   33ab4:	26 c6 06 f0 b9 01    	mov    BYTE PTR es:0xb9f0,0x1
   33aba:	eb 32                	jmp    0x33aee
   33abc:	b8 88 01             	mov    ax,0x188
   33abf:	8e c0                	mov    es,ax
   33ac1:	26 a0 ea b9          	mov    al,es:0xb9ea
   33ac5:	b4 00                	mov    ah,0x0
   33ac7:	05 fd ff             	add    ax,0xfffd
   33aca:	ba 88 01             	mov    dx,0x188
   33acd:	8e c2                	mov    es,dx
   33acf:	26 3b 06 f1 b9       	cmp    ax,WORD PTR es:0xb9f1
   33ad4:	7d 0d                	jge    0x33ae3
   33ad6:	b8 88 01             	mov    ax,0x188
   33ad9:	8e c0                	mov    es,ax
   33adb:	26 c6 06 f0 b9 00    	mov    BYTE PTR es:0xb9f0,0x0
   33ae1:	eb 0b                	jmp    0x33aee
   33ae3:	b8 88 01             	mov    ax,0x188
   33ae6:	8e c0                	mov    es,ax
   33ae8:	26 c6 06 f0 b9 03    	mov    BYTE PTR es:0xb9f0,0x3
