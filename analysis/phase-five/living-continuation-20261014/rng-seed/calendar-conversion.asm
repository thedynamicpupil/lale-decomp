
analysis/phase-four/IST-resident-raw.bin:     file format binary


Disassembly of section .data:

00014a88 <.data+0x4a88>:
   14a88:	55                   	push   bp
   14a89:	8b ec                	mov    bp,sp
   14a8b:	83 ec 04             	sub    sp,0x4
   14a8e:	56                   	push   si
   14a8f:	90                   	nop
   14a90:	0e                   	push   cs
   14a91:	e8 22 03             	call   0x14db6
   14a94:	a1 d0 95             	mov    ax,ds:0x95d0
   14a97:	8b 16 ce 95          	mov    dx,WORD PTR ds:0x95ce
   14a9b:	81 c2 00 a6          	add    dx,0xa600
   14a9f:	15 ce 12             	adc    ax,0x12ce
   14aa2:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   14aa5:	89 56 fc             	mov    WORD PTR [bp-0x4],dx
   14aa8:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   14aab:	26 8b 37             	mov    si,WORD PTR es:[bx]
   14aae:	81 c6 44 f8          	add    si,0xf844
   14ab2:	8b c6                	mov    ax,si
   14ab4:	d1 f8                	sar    ax,1
   14ab6:	d1 f8                	sar    ax,1
   14ab8:	99                   	cwd
   14ab9:	50                   	push   ax
   14aba:	52                   	push   dx
   14abb:	ba 86 07             	mov    dx,0x786
   14abe:	b8 80 1f             	mov    ax,0x1f80
   14ac1:	59                   	pop    cx
   14ac2:	5b                   	pop    bx
   14ac3:	e8 38 cc             	call   0x116fe
   14ac6:	01 46 fc             	add    WORD PTR [bp-0x4],ax
   14ac9:	11 56 fe             	adc    WORD PTR [bp-0x2],dx
   14acc:	8b c6                	mov    ax,si
   14ace:	25 03 00             	and    ax,0x3
   14ad1:	99                   	cwd
   14ad2:	50                   	push   ax
   14ad3:	52                   	push   dx
   14ad4:	ba e1 01             	mov    dx,0x1e1
   14ad7:	b8 80 33             	mov    ax,0x3380
   14ada:	59                   	pop    cx
   14adb:	5b                   	pop    bx
   14adc:	e8 1f cc             	call   0x116fe
   14adf:	01 46 fc             	add    WORD PTR [bp-0x4],ax
   14ae2:	11 56 fe             	adc    WORD PTR [bp-0x2],dx
   14ae5:	f7 c6 03 00          	test   si,0x3
   14ae9:	74 09                	je     0x14af4
   14aeb:	81 46 fc 80 51       	add    WORD PTR [bp-0x4],0x5180
   14af0:	83 56 fe 01          	adc    WORD PTR [bp-0x2],0x1
   14af4:	33 c9                	xor    cx,cx
   14af6:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   14af9:	26 8a 47 03          	mov    al,BYTE PTR es:[bx+0x3]
   14afd:	98                   	cbw
   14afe:	48                   	dec    ax
   14aff:	8b f0                	mov    si,ax
   14b01:	eb 08                	jmp    0x14b0b
   14b03:	4e                   	dec    si
   14b04:	8a 84 a0 95          	mov    al,BYTE PTR [si-0x6a60]
   14b08:	98                   	cbw
   14b09:	03 c8                	add    cx,ax
   14b0b:	0b f6                	or     si,si
   14b0d:	7f f4                	jg     0x14b03
   14b0f:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   14b12:	26 8a 47 02          	mov    al,BYTE PTR es:[bx+0x2]
   14b16:	98                   	cbw
   14b17:	48                   	dec    ax
   14b18:	03 c8                	add    cx,ax
   14b1a:	26 80 7f 03 02       	cmp    BYTE PTR es:[bx+0x3],0x2
   14b1f:	7e 08                	jle    0x14b29
   14b21:	26 f7 07 03 00       	test   WORD PTR es:[bx],0x3
   14b26:	75 01                	jne    0x14b29
   14b28:	41                   	inc    cx
   14b29:	c4 5e 0a             	les    bx,DWORD PTR [bp+0xa]
   14b2c:	26 8a 47 01          	mov    al,BYTE PTR es:[bx+0x1]
   14b30:	b4 00                	mov    ah,0x0
   14b32:	50                   	push   ax
   14b33:	8b c1                	mov    ax,cx
   14b35:	ba 18 00             	mov    dx,0x18
   14b38:	f7 ea                	imul   dx
   14b3a:	5a                   	pop    dx
   14b3b:	03 c2                	add    ax,dx
   14b3d:	8b f0                	mov    si,ax
   14b3f:	83 3e d2 95 00       	cmp    WORD PTR ds:0x95d2,0x0
   14b44:	74 1d                	je     0x14b63
   14b46:	26 8a 47 01          	mov    al,BYTE PTR es:[bx+0x1]
   14b4a:	b4 00                	mov    ah,0x0
   14b4c:	50                   	push   ax
   14b4d:	51                   	push   cx
   14b4e:	33 c0                	xor    ax,ax
   14b50:	50                   	push   ax
   14b51:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   14b54:	26 8b 07             	mov    ax,WORD PTR es:[bx]
   14b57:	05 4e f8             	add    ax,0xf84e
   14b5a:	50                   	push   ax
   14b5b:	e8 44 04             	call   0x14fa2
   14b5e:	0b c0                	or     ax,ax
   14b60:	74 01                	je     0x14b63
   14b62:	4e                   	dec    si
   14b63:	8b c6                	mov    ax,si
   14b65:	99                   	cwd
   14b66:	50                   	push   ax
   14b67:	52                   	push   dx
   14b68:	33 d2                	xor    dx,dx
   14b6a:	b8 10 0e             	mov    ax,0xe10
   14b6d:	59                   	pop    cx
   14b6e:	5b                   	pop    bx
   14b6f:	e8 8c cb             	call   0x116fe
   14b72:	01 46 fc             	add    WORD PTR [bp-0x4],ax
   14b75:	11 56 fe             	adc    WORD PTR [bp-0x2],dx
   14b78:	c4 5e 0a             	les    bx,DWORD PTR [bp+0xa]
   14b7b:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   14b7e:	b4 00                	mov    ah,0x0
   14b80:	99                   	cwd
   14b81:	50                   	push   ax
   14b82:	52                   	push   dx
   14b83:	33 d2                	xor    dx,dx
   14b85:	b8 3c 00             	mov    ax,0x3c
   14b88:	59                   	pop    cx
   14b89:	5b                   	pop    bx
   14b8a:	e8 71 cb             	call   0x116fe
   14b8d:	c4 5e 0a             	les    bx,DWORD PTR [bp+0xa]
   14b90:	26 8a 5f 03          	mov    bl,BYTE PTR es:[bx+0x3]
   14b94:	b7 00                	mov    bh,0x0
   14b96:	50                   	push   ax
   14b97:	8b c3                	mov    ax,bx
   14b99:	52                   	push   dx
   14b9a:	99                   	cwd
   14b9b:	5b                   	pop    bx
   14b9c:	59                   	pop    cx
   14b9d:	03 c8                	add    cx,ax
   14b9f:	13 da                	adc    bx,dx
   14ba1:	01 4e fc             	add    WORD PTR [bp-0x4],cx
   14ba4:	11 5e fe             	adc    WORD PTR [bp-0x2],bx
   14ba7:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   14baa:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   14bad:	5e                   	pop    si
   14bae:	8b e5                	mov    sp,bp
   14bb0:	5d                   	pop    bp
   14bb1:	cb                   	retf
