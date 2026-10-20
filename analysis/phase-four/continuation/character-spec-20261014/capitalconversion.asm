
analysis/phase-four/continuation/character-spec-20261014/original-16da.bin:     file format binary


Disassembly of section .data:

0005df44 <.data+0xf84>:
   5df44:	c8 02 00 00          	enter  0x2,0x0
   5df48:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   5df4d:	eb 75                	jmp    0x5dfc4
   5df4f:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5df52:	03 5e fe             	add    bx,WORD PTR [bp-0x2]
   5df55:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   5df58:	98                   	cbw
   5df59:	2d 43 00             	sub    ax,0x43
   5df5c:	8b d8                	mov    bx,ax
   5df5e:	83 fb 12             	cmp    bx,0x12
   5df61:	77 4d                	ja     0x5dfb0
   5df63:	d1 e3                	shl    bx,1
   5df65:	2e ff a7 22 10       	jmp    WORD PTR cs:[bx+0x1022]
   5df6a:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5df6d:	03 5e fe             	add    bx,WORD PTR [bp-0x2]
   5df70:	26 c6 07 8d          	mov    BYTE PTR es:[bx],0x8d
   5df74:	eb 3a                	jmp    0x5dfb0
   5df76:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5df79:	03 5e fe             	add    bx,WORD PTR [bp-0x2]
   5df7c:	26 c6 07 a7          	mov    BYTE PTR es:[bx],0xa7
   5df80:	eb 2e                	jmp    0x5dfb0
   5df82:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5df85:	03 5e fe             	add    bx,WORD PTR [bp-0x2]
   5df88:	26 c6 07 9f          	mov    BYTE PTR es:[bx],0x9f
   5df8c:	eb 22                	jmp    0x5dfb0
   5df8e:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5df91:	03 5e fe             	add    bx,WORD PTR [bp-0x2]
   5df94:	26 c6 07 87          	mov    BYTE PTR es:[bx],0x87
   5df98:	eb 16                	jmp    0x5dfb0
   5df9a:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5df9d:	03 5e fe             	add    bx,WORD PTR [bp-0x2]
   5dfa0:	26 c6 07 81          	mov    BYTE PTR es:[bx],0x81
   5dfa4:	eb 0a                	jmp    0x5dfb0
   5dfa6:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5dfa9:	03 5e fe             	add    bx,WORD PTR [bp-0x2]
   5dfac:	26 c6 07 94          	mov    BYTE PTR es:[bx],0x94
   5dfb0:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   5dfb3:	03 46 fe             	add    ax,WORD PTR [bp-0x2]
   5dfb6:	ff 76 08             	push   WORD PTR [bp+0x8]
   5dfb9:	50                   	push   ax
   5dfba:	0e                   	push   cs
   5dfbb:	e8 d3 f9             	call   0x5d991
   5dfbe:	83 c4 04             	add    sp,0x4
   5dfc1:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   5dfc4:	ff 76 08             	push   WORD PTR [bp+0x8]
   5dfc7:	ff 76 06             	push   WORD PTR [bp+0x6]
   5dfca:	9a cc 49 00 00       	call   0x0:0x49cc
   5dfcf:	83 c4 04             	add    sp,0x4
   5dfd2:	3b 46 fe             	cmp    ax,WORD PTR [bp-0x2]
   5dfd5:	76 03                	jbe    0x5dfda
   5dfd7:	e9 75 ff             	jmp    0x5df4f
   5dfda:	8b 56 08             	mov    dx,WORD PTR [bp+0x8]
   5dfdd:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   5dfe0:	c9                   	leave
   5dfe1:	cb                   	retf
