
lale/IST.EXE:     file format binary


Disassembly of section .data:

00047d1a <.data+0x47d1a>:
   47d1a:	55                   	push   bp
   47d1b:	8b ec                	mov    bp,sp
   47d1d:	83 ec 02             	sub    sp,0x2
   47d20:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   47d25:	eb 17                	jmp    0x47d3e
   47d27:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   47d2a:	03 5e fe             	add    bx,WORD PTR [bp-0x2]
   47d2d:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   47d30:	04 0a                	add    al,0xa
   47d32:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   47d35:	03 5e fe             	add    bx,WORD PTR [bp-0x2]
   47d38:	26 88 07             	mov    BYTE PTR es:[bx],al
   47d3b:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   47d3e:	ff 76 08             	push   WORD PTR [bp+0x8]
   47d41:	ff 76 06             	push   WORD PTR [bp+0x6]
   47d44:	9a cc 49 00 00       	call   0x0:0x49cc
   47d49:	83 c4 04             	add    sp,0x4
   47d4c:	3b 46 fe             	cmp    ax,WORD PTR [bp-0x2]
   47d4f:	77 d6                	ja     0x47d27
   47d51:	c9                   	leave
   47d52:	cb                   	retf
