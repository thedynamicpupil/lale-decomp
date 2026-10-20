
analysis/phase-four/continuation/character-spec-20261014/original-1694.bin:     file format binary


Disassembly of section .data:

00049e52 <.data+0x202>:
   49e52:	55                   	push   bp
   49e53:	8b ec                	mov    bp,sp
   49e55:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   49e58:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   49e5b:	26 01 07             	add    WORD PTR es:[bx],ax
   49e5e:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   49e61:	26 8b 07             	mov    ax,WORD PTR es:[bx]
   49e64:	3b 46 0c             	cmp    ax,WORD PTR [bp+0xc]
   49e67:	7d 09                	jge    0x49e72
   49e69:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   49e6c:	8b 46 0e             	mov    ax,WORD PTR [bp+0xe]
   49e6f:	26 89 07             	mov    WORD PTR es:[bx],ax
   49e72:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   49e75:	26 8b 07             	mov    ax,WORD PTR es:[bx]
   49e78:	3b 46 0e             	cmp    ax,WORD PTR [bp+0xe]
   49e7b:	7e 09                	jle    0x49e86
   49e7d:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   49e80:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
   49e83:	26 89 07             	mov    WORD PTR es:[bx],ax
   49e86:	5d                   	pop    bp
   49e87:	cb                   	retf
