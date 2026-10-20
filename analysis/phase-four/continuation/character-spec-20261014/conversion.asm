
analysis/phase-four/continuation/character-spec-20261014/original-16da.bin:     file format binary


Disassembly of section .data:

0005d991 <.data+0x9d1>:
   5d991:	c8 02 00 00          	enter  0x2,0x0
   5d995:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d998:	26 80 3f 41          	cmp    BYTE PTR es:[bx],0x41
   5d99c:	72 22                	jb     0x5d9c0
   5d99e:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d9a1:	26 80 3f 5b          	cmp    BYTE PTR es:[bx],0x5b
   5d9a5:	77 19                	ja     0x5d9c0
   5d9a7:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d9aa:	26 80 3f 49          	cmp    BYTE PTR es:[bx],0x49
   5d9ae:	74 10                	je     0x5d9c0
   5d9b0:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d9b3:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   5d9b6:	04 20                	add    al,0x20
   5d9b8:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d9bb:	26 88 07             	mov    BYTE PTR es:[bx],al
   5d9be:	eb 61                	jmp    0x5da21
   5d9c0:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d9c3:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   5d9c6:	b4 00                	mov    ah,0x0
   5d9c8:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   5d9cb:	b9 07 00             	mov    cx,0x7
   5d9ce:	bb 63 0a             	mov    bx,0xa63
   5d9d1:	2e 8b 07             	mov    ax,WORD PTR cs:[bx]
   5d9d4:	3b 46 fe             	cmp    ax,WORD PTR [bp-0x2]
   5d9d7:	74 07                	je     0x5d9e0
   5d9d9:	83 c3 02             	add    bx,0x2
   5d9dc:	e2 f3                	loop   0x5d9d1
   5d9de:	eb 41                	jmp    0x5da21
   5d9e0:	2e ff 67 0e          	jmp    WORD PTR cs:[bx+0xe]
   5d9e4:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d9e7:	26 c6 07 87          	mov    BYTE PTR es:[bx],0x87
   5d9eb:	eb 34                	jmp    0x5da21
   5d9ed:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d9f0:	26 c6 07 a7          	mov    BYTE PTR es:[bx],0xa7
   5d9f4:	eb 2b                	jmp    0x5da21
   5d9f6:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d9f9:	26 c6 07 69          	mov    BYTE PTR es:[bx],0x69
   5d9fd:	eb 22                	jmp    0x5da21
   5d9ff:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5da02:	26 c6 07 8d          	mov    BYTE PTR es:[bx],0x8d
   5da06:	eb 19                	jmp    0x5da21
   5da08:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5da0b:	26 c6 07 94          	mov    BYTE PTR es:[bx],0x94
   5da0f:	eb 10                	jmp    0x5da21
   5da11:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5da14:	26 c6 07 9f          	mov    BYTE PTR es:[bx],0x9f
   5da18:	eb 07                	jmp    0x5da21
   5da1a:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5da1d:	26 c6 07 81          	mov    BYTE PTR es:[bx],0x81
   5da21:	c9                   	leave
   5da22:	cb                   	retf
   5da23:	49                   	dec    cx
   5da24:	00 80 00 98          	add    BYTE PTR [bx+si-0x6800],al
   5da28:	00 99 00 9a          	add    BYTE PTR [bx+di-0x6600],bl
   5da2c:	00 9e 00 a6          	add    BYTE PTR [bp-0x5a00],bl
   5da30:	00 3f                	add    BYTE PTR [bx],bh
   5da32:	0a 24                	or     ah,BYTE PTR [si]
   5da34:	0a 36 0a 48          	or     dh,BYTE PTR ds:0x480a
   5da38:	0a 5a 0a             	or     bl,BYTE PTR [bp+si+0xa]
   5da3b:	51                   	push   cx
   5da3c:	0a 2d                	or     ch,BYTE PTR [di]
   5da3e:	0a                 	or     cl,al
