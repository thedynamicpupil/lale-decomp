
analysis/phase-five/character-ui-20261015/otopark/crop-primitive.original.bin:     file format binary


Disassembly of section .data:

0002ba2f <.data>:
   2ba2f:	55                   	push   bp
   2ba30:	8b ec                	mov    bp,sp
   2ba32:	83 ec 02             	sub    sp,0x2
   2ba35:	83 7e 06 09          	cmp    WORD PTR [bp+0x6],0x9
   2ba39:	74 1e                	je     0x2ba59
   2ba3b:	83 7e 06 0a          	cmp    WORD PTR [bp+0x6],0xa
   2ba3f:	74 18                	je     0x2ba59
   2ba41:	83 7e 06 13          	cmp    WORD PTR [bp+0x6],0x13
   2ba45:	74 12                	je     0x2ba59
   2ba47:	83 7e 06 14          	cmp    WORD PTR [bp+0x6],0x14
   2ba4b:	74 0c                	je     0x2ba59
   2ba4d:	83 7e 06 19          	cmp    WORD PTR [bp+0x6],0x19
   2ba51:	74 06                	je     0x2ba59
   2ba53:	83 7e 06 1a          	cmp    WORD PTR [bp+0x6],0x1a
   2ba57:	75 2a                	jne    0x2ba83
   2ba59:	a0 f0 b9             	mov    al,ds:0xb9f0
   2ba5c:	b4 00                	mov    ah,0x0
   2ba5e:	bb 04 00             	mov    bx,0x4
   2ba61:	99                   	cwd
   2ba62:	f7 fb                	idiv   bx
   2ba64:	0b d2                	or     dx,dx
   2ba66:	74 10                	je     0x2ba78
   2ba68:	a0 f0 b9             	mov    al,ds:0xb9f0
   2ba6b:	b4 00                	mov    ah,0x0
   2ba6d:	bb 04 00             	mov    bx,0x4
   2ba70:	99                   	cwd
   2ba71:	f7 fb                	idiv   bx
   2ba73:	83 fa 03             	cmp    dx,0x3
   2ba76:	75 07                	jne    0x2ba7f
   2ba78:	c7 46 fe eb 00       	mov    WORD PTR [bp-0x2],0xeb
   2ba7d:	eb 09                	jmp    0x2ba88
   2ba7f:	eb 02                	jmp    0x2ba83
   2ba81:	eb 05                	jmp    0x2ba88
   2ba83:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   2ba88:	8a 46 08             	mov    al,BYTE PTR [bp+0x8]
   2ba8b:	b4 00                	mov    ah,0x0
   2ba8d:	0b c0                	or     ax,ax
   2ba8f:	75 03                	jne    0x2ba94
   2ba91:	e9 88 01             	jmp    0x2bc1c
   2ba94:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2ba97:	6b c0 12             	imul   ax,ax,0x12
   2ba9a:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2ba9d:	03 d8                	add    bx,ax
   2ba9f:	26 83 7f 10 00       	cmp    WORD PTR es:[bx+0x10],0x0
   2baa4:	74 03                	je     0x2baa9
   2baa6:	e9 80 00             	jmp    0x2bb29
   2baa9:	68 e0 01             	push   0x1e0
   2baac:	68 41 03             	push   0x341
   2baaf:	8a 46 0a             	mov    al,BYTE PTR [bp+0xa]
   2bab2:	50                   	push   ax
   2bab3:	8a 46 08             	mov    al,BYTE PTR [bp+0x8]
   2bab6:	50                   	push   ax
   2bab7:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2baba:	6b c0 12             	imul   ax,ax,0x12
   2babd:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2bac0:	03 d8                	add    bx,ax
   2bac2:	26 8b 47 02          	mov    ax,WORD PTR es:[bx+0x2]
   2bac6:	03 06 0b 3b          	add    ax,WORD PTR ds:0x3b0b
   2baca:	50                   	push   ax
   2bacb:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2bace:	6b c0 12             	imul   ax,ax,0x12
   2bad1:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2bad4:	03 d8                	add    bx,ax
   2bad6:	26 8b 07             	mov    ax,WORD PTR es:[bx]
   2bad9:	03 06 09 3b          	add    ax,WORD PTR ds:0x3b09
   2badd:	50                   	push   ax
   2bade:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2bae1:	6b c0 12             	imul   ax,ax,0x12
   2bae4:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2bae7:	03 d8                	add    bx,ax
   2bae9:	26 ff 77 06          	push   WORD PTR es:[bx+0x6]
   2baed:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2baf0:	6b c0 12             	imul   ax,ax,0x12
   2baf3:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2baf6:	03 d8                	add    bx,ax
   2baf8:	26 ff 77 04          	push   WORD PTR es:[bx+0x4]
   2bafc:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2baff:	6b c0 12             	imul   ax,ax,0x12
   2bb02:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2bb05:	03 d8                	add    bx,ax
   2bb07:	26 ff 77 0a          	push   WORD PTR es:[bx+0xa]
   2bb0b:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2bb0e:	6b c0 12             	imul   ax,ax,0x12
   2bb11:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2bb14:	03 d8                	add    bx,ax
   2bb16:	26 8b 47 08          	mov    ax,WORD PTR es:[bx+0x8]
   2bb1a:	03 46 fe             	add    ax,WORD PTR [bp-0x2]
   2bb1d:	50                   	push   ax
   2bb1e:	9a 30 04 28 00       	call   0x28:0x430
   2bb23:	83 c4 14             	add    sp,0x14
   2bb26:	e9 f3 00             	jmp    0x2bc1c
   2bb29:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2bb2c:	6b c0 12             	imul   ax,ax,0x12
   2bb2f:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2bb32:	03 d8                	add    bx,ax
   2bb34:	26 f7 47 10 02 00    	test   WORD PTR es:[bx+0x10],0x2
   2bb3a:	74 17                	je     0x2bb53
   2bb3c:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2bb3f:	6b c0 12             	imul   ax,ax,0x12
   2bb42:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2bb45:	03 d8                	add    bx,ax
   2bb47:	26 f7 47 10 01 00    	test   WORD PTR es:[bx+0x10],0x1
   2bb4d:	74 04                	je     0x2bb53
   2bb4f:	6a 01                	push   0x1
   2bb51:	eb 34                	jmp    0x2bb87
   2bb53:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2bb56:	6b c0 12             	imul   ax,ax,0x12
   2bb59:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2bb5c:	03 d8                	add    bx,ax
   2bb5e:	26 f7 47 10 01 00    	test   WORD PTR es:[bx+0x10],0x1
   2bb64:	74 09                	je     0x2bb6f
   2bb66:	68 e0 01             	push   0x1e0
   2bb69:	68 c4 03             	push   0x3c4
   2bb6c:	e9 40 ff             	jmp    0x2baaf
   2bb6f:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2bb72:	6b c0 12             	imul   ax,ax,0x12
   2bb75:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2bb78:	03 d8                	add    bx,ax
   2bb7a:	26 f7 47 10 02 00    	test   WORD PTR es:[bx+0x10],0x2
   2bb80:	75 03                	jne    0x2bb85
   2bb82:	e9 97 00             	jmp    0x2bc1c
   2bb85:	6a 00                	push   0x0
   2bb87:	8a 46 0a             	mov    al,BYTE PTR [bp+0xa]
   2bb8a:	50                   	push   ax
   2bb8b:	8a 46 08             	mov    al,BYTE PTR [bp+0x8]
   2bb8e:	50                   	push   ax
   2bb8f:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2bb92:	6b c0 12             	imul   ax,ax,0x12
   2bb95:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2bb98:	03 d8                	add    bx,ax
   2bb9a:	26 ff 77 06          	push   WORD PTR es:[bx+0x6]
   2bb9e:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2bba1:	6b c0 12             	imul   ax,ax,0x12
   2bba4:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2bba7:	03 d8                	add    bx,ax
   2bba9:	26 ff 77 04          	push   WORD PTR es:[bx+0x4]
   2bbad:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2bbb0:	6b c0 12             	imul   ax,ax,0x12
   2bbb3:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2bbb6:	03 d8                	add    bx,ax
   2bbb8:	26 8b 47 02          	mov    ax,WORD PTR es:[bx+0x2]
   2bbbc:	03 06 0b 3b          	add    ax,WORD PTR ds:0x3b0b
   2bbc0:	50                   	push   ax
   2bbc1:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2bbc4:	6b c0 12             	imul   ax,ax,0x12
   2bbc7:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2bbca:	03 d8                	add    bx,ax
   2bbcc:	26 8b 07             	mov    ax,WORD PTR es:[bx]
   2bbcf:	03 06 09 3b          	add    ax,WORD PTR ds:0x3b09
   2bbd3:	50                   	push   ax
   2bbd4:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2bbd7:	6b c0 12             	imul   ax,ax,0x12
   2bbda:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2bbdd:	03 d8                	add    bx,ax
   2bbdf:	26 ff 77 0e          	push   WORD PTR es:[bx+0xe]
   2bbe3:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2bbe6:	6b c0 12             	imul   ax,ax,0x12
   2bbe9:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2bbec:	03 d8                	add    bx,ax
   2bbee:	26 ff 77 0c          	push   WORD PTR es:[bx+0xc]
   2bbf2:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2bbf5:	6b c0 12             	imul   ax,ax,0x12
   2bbf8:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2bbfb:	03 d8                	add    bx,ax
   2bbfd:	26 ff 77 0a          	push   WORD PTR es:[bx+0xa]
   2bc01:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2bc04:	6b c0 12             	imul   ax,ax,0x12
   2bc07:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2bc0a:	03 d8                	add    bx,ax
   2bc0c:	26 8b 47 08          	mov    ax,WORD PTR es:[bx+0x8]
   2bc10:	03 46 fe             	add    ax,WORD PTR [bp-0x2]
   2bc13:	50                   	push   ax
   2bc14:	9a 5a 0c 28 00       	call   0x28:0xc5a
   2bc19:	83 c4 16             	add    sp,0x16
   2bc1c:	c9                   	leave
   2bc1d:	cb                   	retf
