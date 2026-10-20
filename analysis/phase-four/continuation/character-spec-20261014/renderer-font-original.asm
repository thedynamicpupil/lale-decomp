
analysis/phase-four/continuation/character-spec-20261014/original-16da.bin:     file format binary


Disassembly of section .data:

0005db03 <.data+0xb43>:
   5db03:	c8 14 00 00          	enter  0x14,0x0
   5db07:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   5db0a:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   5db0d:	c7 46 f4 01 00       	mov    WORD PTR [bp-0xc],0x1
   5db12:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   5db17:	e9 40 02             	jmp    0x5dd5a
   5db1a:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   5db1d:	03 5e fa             	add    bx,WORD PTR [bp-0x6]
   5db20:	26 80 3f 21          	cmp    BYTE PTR es:[bx],0x21
   5db24:	72 31                	jb     0x5db57
   5db26:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   5db29:	03 5e fa             	add    bx,WORD PTR [bp-0x6]
   5db2c:	26 80 3f 40          	cmp    BYTE PTR es:[bx],0x40
   5db30:	77 25                	ja     0x5db57
   5db32:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   5db35:	03 5e fa             	add    bx,WORD PTR [bp-0x6]
   5db38:	26 80 3f 2a          	cmp    BYTE PTR es:[bx],0x2a
   5db3c:	74 19                	je     0x5db57
   5db3e:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   5db41:	03 5e fa             	add    bx,WORD PTR [bp-0x6]
   5db44:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   5db47:	b4 00                	mov    ah,0x0
   5db49:	05 df ff             	add    ax,0xffdf
   5db4c:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   5db4f:	c7 46 f8 01 00       	mov    WORD PTR [bp-0x8],0x1
   5db54:	e9 31 01             	jmp    0x5dc88
   5db57:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   5db5a:	03 5e fa             	add    bx,WORD PTR [bp-0x6]
   5db5d:	26 80 3f 61          	cmp    BYTE PTR es:[bx],0x61
   5db61:	72 1c                	jb     0x5db7f
   5db63:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   5db66:	03 5e fa             	add    bx,WORD PTR [bp-0x6]
   5db69:	26 80 3f 7a          	cmp    BYTE PTR es:[bx],0x7a
   5db6d:	77 10                	ja     0x5db7f
   5db6f:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   5db72:	03 5e fa             	add    bx,WORD PTR [bp-0x6]
   5db75:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   5db78:	b4 00                	mov    ah,0x0
   5db7a:	05 bf ff             	add    ax,0xffbf
   5db7d:	eb cd                	jmp    0x5db4c
   5db7f:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   5db82:	03 5e fa             	add    bx,WORD PTR [bp-0x6]
   5db85:	26 80 3f 5b          	cmp    BYTE PTR es:[bx],0x5b
   5db89:	72 0e                	jb     0x5db99
   5db8b:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   5db8e:	03 5e fa             	add    bx,WORD PTR [bp-0x6]
   5db91:	26 80 3f 60          	cmp    BYTE PTR es:[bx],0x60
   5db95:	77 02                	ja     0x5db99
   5db97:	eb a5                	jmp    0x5db3e
   5db99:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   5db9c:	03 5e fa             	add    bx,WORD PTR [bp-0x6]
   5db9f:	26 80 3f 7b          	cmp    BYTE PTR es:[bx],0x7b
   5dba3:	72 1c                	jb     0x5dbc1
   5dba5:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   5dba8:	03 5e fa             	add    bx,WORD PTR [bp-0x6]
   5dbab:	26 80 3f 7f          	cmp    BYTE PTR es:[bx],0x7f
   5dbaf:	77 10                	ja     0x5dbc1
   5dbb1:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   5dbb4:	03 5e fa             	add    bx,WORD PTR [bp-0x6]
   5dbb7:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   5dbba:	b4 00                	mov    ah,0x0
   5dbbc:	05 c5 ff             	add    ax,0xffc5
   5dbbf:	eb 8b                	jmp    0x5db4c
   5dbc1:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   5dbc4:	03 5e fa             	add    bx,WORD PTR [bp-0x6]
   5dbc7:	26 80 3f 41          	cmp    BYTE PTR es:[bx],0x41
   5dbcb:	72 20                	jb     0x5dbed
   5dbcd:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   5dbd0:	03 5e fa             	add    bx,WORD PTR [bp-0x6]
   5dbd3:	26 80 3f 5b          	cmp    BYTE PTR es:[bx],0x5b
   5dbd7:	77 14                	ja     0x5dbed
   5dbd9:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   5dbdc:	03 5e fa             	add    bx,WORD PTR [bp-0x6]
   5dbdf:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   5dbe2:	b4 00                	mov    ah,0x0
   5dbe4:	05 bf ff             	add    ax,0xffbf
   5dbe7:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   5dbea:	e9 80 00             	jmp    0x5dc6d
   5dbed:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   5dbf0:	03 5e fa             	add    bx,WORD PTR [bp-0x6]
   5dbf3:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   5dbf6:	b4 00                	mov    ah,0x0
   5dbf8:	89 46 ec             	mov    WORD PTR [bp-0x14],ax
   5dbfb:	b9 0e 00             	mov    cx,0xe
   5dbfe:	bb b2 0d             	mov    bx,0xdb2
   5dc01:	2e 8b 07             	mov    ax,WORD PTR cs:[bx]
   5dc04:	3b 46 ec             	cmp    ax,WORD PTR [bp-0x14]
   5dc07:	74 07                	je     0x5dc10
   5dc09:	83 c3 02             	add    bx,0x2
   5dc0c:	e2 f3                	loop   0x5dc01
   5dc0e:	eb 6e                	jmp    0x5dc7e
   5dc10:	2e ff 67 1c          	jmp    WORD PTR cs:[bx+0x1c]
   5dc14:	c7 46 fe 45 00       	mov    WORD PTR [bp-0x2],0x45
   5dc19:	e9 33 ff             	jmp    0x5db4f
   5dc1c:	c7 46 fe 46 00       	mov    WORD PTR [bp-0x2],0x46
   5dc21:	e9 2b ff             	jmp    0x5db4f
   5dc24:	c7 46 fe 47 00       	mov    WORD PTR [bp-0x2],0x47
   5dc29:	e9 23 ff             	jmp    0x5db4f
   5dc2c:	c7 46 fe 48 00       	mov    WORD PTR [bp-0x2],0x48
   5dc31:	e9 1b ff             	jmp    0x5db4f
   5dc34:	c7 46 fe 49 00       	mov    WORD PTR [bp-0x2],0x49
   5dc39:	e9 13 ff             	jmp    0x5db4f
   5dc3c:	c7 46 fe 4a 00       	mov    WORD PTR [bp-0x2],0x4a
   5dc41:	e9 0b ff             	jmp    0x5db4f
   5dc44:	c7 46 fe 4b 00       	mov    WORD PTR [bp-0x2],0x4b
   5dc49:	e9 03 ff             	jmp    0x5db4f
   5dc4c:	c7 46 fe 1a 00       	mov    WORD PTR [bp-0x2],0x1a
   5dc51:	eb 1a                	jmp    0x5dc6d
   5dc53:	c7 46 fe 1b 00       	mov    WORD PTR [bp-0x2],0x1b
   5dc58:	eb 13                	jmp    0x5dc6d
   5dc5a:	c7 46 fe 1c 00       	mov    WORD PTR [bp-0x2],0x1c
   5dc5f:	eb 0c                	jmp    0x5dc6d
   5dc61:	c7 46 fe 1d 00       	mov    WORD PTR [bp-0x2],0x1d
   5dc66:	eb 05                	jmp    0x5dc6d
   5dc68:	c7 46 fe 1e 00       	mov    WORD PTR [bp-0x2],0x1e
   5dc6d:	c7 46 f8 02 00       	mov    WORD PTR [bp-0x8],0x2
   5dc72:	eb 14                	jmp    0x5dc88
   5dc74:	83 46 0a 0a          	add    WORD PTR [bp+0xa],0xa
   5dc78:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   5dc7b:	e9 d6 00             	jmp    0x5dd54
   5dc7e:	c7 46 fc 02 00       	mov    WORD PTR [bp-0x4],0x2
   5dc83:	c7 46 f8 00 00       	mov    WORD PTR [bp-0x8],0x0
   5dc88:	83 7e f8 01          	cmp    WORD PTR [bp-0x8],0x1
   5dc8c:	74 03                	je     0x5dc91
   5dc8e:	e9 82 00             	jmp    0x5dd13
   5dc91:	1e                   	push   ds
   5dc92:	68 79 8f             	push   0x8f79
   5dc95:	68 21 01             	push   0x121
   5dc98:	68 88 01             	push   0x188
   5dc9b:	68 26 de             	push   0xde26
   5dc9e:	9a 81 0a 20 00       	call   0x20:0xa81
   5dca3:	83 c4 0a             	add    sp,0xa
   5dca6:	c7 46 f2 00 00       	mov    WORD PTR [bp-0xe],0x0
   5dcab:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   5dcae:	69 c0 8f 00          	imul   ax,ax,0x8f
   5dcb2:	6a 00                	push   0x0
   5dcb4:	50                   	push   ax
   5dcb5:	16                   	push   ss
   5dcb6:	8d 46 f2             	lea    ax,[bp-0xe]
   5dcb9:	50                   	push   ax
   5dcba:	16                   	push   ss
   5dcbb:	8d 46 f4             	lea    ax,[bp-0xc]
   5dcbe:	50                   	push   ax
   5dcbf:	16                   	push   ss
   5dcc0:	8d 46 ee             	lea    ax,[bp-0x12]
   5dcc3:	50                   	push   ax
   5dcc4:	68 88 01             	push   0x188
   5dcc7:	68 b7 e2             	push   0xe2b7
   5dcca:	9a b4 0b 20 00       	call   0x20:0xbb4
   5dccf:	83 c4 14             	add    sp,0x14
   5dcd2:	c4 5e ee             	les    bx,DWORD PTR [bp-0x12]
   5dcd5:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   5dcd8:	98                   	cbw
   5dcd9:	40                   	inc    ax
   5dcda:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   5dcdd:	68 88 01             	push   0x188
   5dce0:	68 26 de             	push   0xde26
   5dce3:	9a 22 0b 20 00       	call   0x20:0xb22
   5dce8:	83 c4 04             	add    sp,0x4
   5dceb:	8a 46 10             	mov    al,BYTE PTR [bp+0x10]
   5dcee:	50                   	push   ax
   5dcef:	68 ff 00             	push   0xff
   5dcf2:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   5dcf5:	50                   	push   ax
   5dcf6:	6a 03                	push   0x3
   5dcf8:	ff 76 0a             	push   WORD PTR [bp+0xa]
   5dcfb:	ff 76 08             	push   WORD PTR [bp+0x8]
   5dcfe:	6a 0b                	push   0xb
   5dd00:	ff 76 fc             	push   WORD PTR [bp-0x4]
   5dd03:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   5dd06:	6b c0 0b             	imul   ax,ax,0xb
   5dd09:	50                   	push   ax
   5dd0a:	6a 00                	push   0x0
   5dd0c:	9a 0b 07 28 00       	call   0x28:0x70b
   5dd11:	eb 37                	jmp    0x5dd4a
   5dd13:	83 7e f8 02          	cmp    WORD PTR [bp-0x8],0x2
   5dd17:	75 34                	jne    0x5dd4d
   5dd19:	c7 46 fc 13 00       	mov    WORD PTR [bp-0x4],0x13
   5dd1e:	68 e0 01             	push   0x1e0
   5dd21:	68 d0 02             	push   0x2d0
   5dd24:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   5dd27:	50                   	push   ax
   5dd28:	8a 46 12             	mov    al,BYTE PTR [bp+0x12]
   5dd2b:	50                   	push   ax
   5dd2c:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   5dd2f:	05 fb ff             	add    ax,0xfffb
   5dd32:	50                   	push   ax
   5dd33:	ff 76 08             	push   WORD PTR [bp+0x8]
   5dd36:	6a 13                	push   0x13
   5dd38:	ff 76 fc             	push   WORD PTR [bp-0x4]
   5dd3b:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   5dd3e:	6b c0 14             	imul   ax,ax,0x14
   5dd41:	40                   	inc    ax
   5dd42:	50                   	push   ax
   5dd43:	6a 01                	push   0x1
   5dd45:	9a 30 04 28 00       	call   0x28:0x430
   5dd4a:	83 c4 14             	add    sp,0x14
   5dd4d:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   5dd50:	03 46 08             	add    ax,WORD PTR [bp+0x8]
   5dd53:	40                   	inc    ax
   5dd54:	89 46 08             	mov    WORD PTR [bp+0x8],ax
   5dd57:	ff 46 fa             	inc    WORD PTR [bp-0x6]
   5dd5a:	ff 76 0e             	push   WORD PTR [bp+0xe]
   5dd5d:	ff 76 0c             	push   WORD PTR [bp+0xc]
   5dd60:	9a cc 49 00 00       	call   0x0:0x49cc
   5dd65:	83 c4 04             	add    sp,0x4
   5dd68:	3b 46 fa             	cmp    ax,WORD PTR [bp-0x6]
   5dd6b:	76 03                	jbe    0x5dd70
   5dd6d:	e9 aa fd             	jmp    0x5db1a
   5dd70:	c9                   	leave
   5dd71:	cb                   	retf
   5dd72:	0a 00                	or     al,BYTE PTR [bx+si]
   5dd74:	80 00 81             	add    BYTE PTR [bx+si],0x81
   5dd77:	00 87 00 8d          	add    BYTE PTR [bx-0x7300],al
   5dd7b:	00 94 00 98          	add    BYTE PTR [si-0x6800],dl
   5dd7f:	00 99 00 9a          	add    BYTE PTR [bx+di-0x6600],bl
   5dd83:	00 9e 00 9f          	add    BYTE PTR [bp-0x6100],bl
   5dd87:	00 a6 00 a7          	add    BYTE PTR [bp-0x5900],ah
   5dd8b:	00 b6 00 b4          	add    BYTE PTR [bp-0x4c00],dh
   5dd8f:	0c 8c                	or     al,0x8c
   5dd91:	0c 84                	or     al,0x84
   5dd93:	0c 5c                	or     al,0x5c
   5dd95:	0c 6c                	or     al,0x6c
   5dd97:	0c 74                	or     al,0x74
   5dd99:	0c 93                	or     al,0x93
   5dd9b:	0c 9a                	or     al,0x9a
   5dd9d:	0c a8                	or     al,0xa8
   5dd9f:	0c a1                	or     al,0xa1
   5dda1:	0c 7c                	or     al,0x7c
   5dda3:	0c 54                	or     al,0x54
   5dda5:	0c 64                	or     al,0x64
   5dda7:	0c b4                	or     al,0xb4
   5dda9:	0c                 	or     al,0xc8
