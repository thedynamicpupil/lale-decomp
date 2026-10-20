
analysis/phase-five/world-ui-20261016/case-helpers.bin:     file format binary


Disassembly of section .data:

0005d8e3 <.data>:
   5d8e3:	c8 02 00 00          	enter  0x2,0x0
   5d8e7:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d8ea:	26 80 3f 61          	cmp    BYTE PTR es:[bx],0x61
   5d8ee:	72 22                	jb     0x5d912
   5d8f0:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d8f3:	26 80 3f 7a          	cmp    BYTE PTR es:[bx],0x7a
   5d8f7:	77 19                	ja     0x5d912
   5d8f9:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d8fc:	26 80 3f 69          	cmp    BYTE PTR es:[bx],0x69
   5d900:	74 10                	je     0x5d912
   5d902:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d905:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   5d908:	04 e0                	add    al,0xe0
   5d90a:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d90d:	26 88 07             	mov    BYTE PTR es:[bx],al
   5d910:	eb 61                	jmp    0x5d973
   5d912:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d915:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   5d918:	b4 00                	mov    ah,0x0
   5d91a:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   5d91d:	b9 07 00             	mov    cx,0x7
   5d920:	bb b5 09             	mov    bx,0x9b5
   5d923:	2e 8b 07             	mov    ax,WORD PTR cs:[bx]
   5d926:	3b 46 fe             	cmp    ax,WORD PTR [bp-0x2]
   5d929:	74 07                	je     0x5d932
   5d92b:	83 c3 02             	add    bx,0x2
   5d92e:	e2 f3                	loop   0x5d923
   5d930:	eb 41                	jmp    0x5d973
   5d932:	2e ff 67 0e          	jmp    WORD PTR cs:[bx+0xe]
   5d936:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d939:	26 c6 07 80          	mov    BYTE PTR es:[bx],0x80
   5d93d:	eb 34                	jmp    0x5d973
   5d93f:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d942:	26 c6 07 a6          	mov    BYTE PTR es:[bx],0xa6
   5d946:	eb 2b                	jmp    0x5d973
   5d948:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d94b:	26 c6 07 98          	mov    BYTE PTR es:[bx],0x98
   5d94f:	eb 22                	jmp    0x5d973
   5d951:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d954:	26 c6 07 49          	mov    BYTE PTR es:[bx],0x49
   5d958:	eb 19                	jmp    0x5d973
   5d95a:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d95d:	26 c6 07 99          	mov    BYTE PTR es:[bx],0x99
   5d961:	eb 10                	jmp    0x5d973
   5d963:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d966:	26 c6 07 9e          	mov    BYTE PTR es:[bx],0x9e
   5d96a:	eb 07                	jmp    0x5d973
   5d96c:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d96f:	26 c6 07 9a          	mov    BYTE PTR es:[bx],0x9a
   5d973:	c9                   	leave
   5d974:	cb                   	retf
   5d975:	69 00 81 00          	imul   ax,WORD PTR [bx+si],0x81
   5d979:	87 00                	xchg   WORD PTR [bx+si],ax
   5d97b:	8d 00                	lea    ax,[bx+si]
   5d97d:	94                   	xchg   sp,ax
   5d97e:	00 9f 00 a7          	add    BYTE PTR [bx-0x5900],bl
   5d982:	00 88 09 ac          	add    BYTE PTR [bx+si-0x53f7],cl
   5d986:	09 76 09             	or     WORD PTR [bp+0x9],si
   5d989:	91                   	xchg   cx,ax
   5d98a:	09 9a 09 a3          	or     WORD PTR [bp+si-0x5cf7],bx
   5d98e:	09 7f 09             	or     WORD PTR [bx+0x9],di
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
   5da3e:	0a c8                	or     cl,al
   5da40:	02 00                	add    al,BYTE PTR [bx+si]
   5da42:	00 c4                	add    ah,al
   5da44:	5e                   	pop    si
   5da45:	06                   	push   es
   5da46:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   5da49:	b4 00                	mov    ah,0x0
   5da4b:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   5da4e:	b9 0c 00             	mov    cx,0xc
   5da51:	bb 13 0b             	mov    bx,0xb13
   5da54:	2e 8b 07             	mov    ax,WORD PTR cs:[bx]
   5da57:	3b 46 fe             	cmp    ax,WORD PTR [bp-0x2]
   5da5a:	74 07                	je     0x5da63
   5da5c:	83 c3 02             	add    bx,0x2
   5da5f:	e2 f3                	loop   0x5da54
   5da61:	eb 6e                	jmp    0x5dad1
   5da63:	2e ff 67 18          	jmp    WORD PTR cs:[bx+0x18]
   5da67:	c4                   	.byte 0xc4
