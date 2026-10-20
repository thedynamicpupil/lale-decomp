
analysis/phase-five/scene-layers-20261016/door-geometry-37ee.bin:     file format binary


Disassembly of section .data:

0002bc1e <.data>:
   2bc1e:	55                   	push   bp
   2bc1f:	8b ec                	mov    bp,sp
   2bc21:	83 ec 06             	sub    sp,0x6
   2bc24:	a1 ff 3a             	mov    ax,ds:0x3aff
   2bc27:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   2bc2a:	a1 01 3b             	mov    ax,ds:0x3b01
   2bc2d:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   2bc30:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   2bc35:	e9 1f 01             	jmp    0x2bd57
   2bc38:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   2bc3b:	c1 e3 03             	shl    bx,0x3
   2bc3e:	b8 88 01             	mov    ax,0x188
   2bc41:	8e c0                	mov    es,ax
   2bc43:	26 8b 87 9b e3       	mov    ax,WORD PTR es:[bx-0x1c65]
   2bc48:	bb 04 00             	mov    bx,0x4
   2bc4b:	99                   	cwd
   2bc4c:	f7 fb                	idiv   bx
   2bc4e:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   2bc51:	6b db 0e             	imul   bx,bx,0xe
   2bc54:	ba 88 01             	mov    dx,0x188
   2bc57:	8e c2                	mov    es,dx
   2bc59:	26 89 87 60 b4       	mov    WORD PTR es:[bx-0x4ba0],ax
   2bc5e:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   2bc61:	c1 e3 03             	shl    bx,0x3
   2bc64:	b8 88 01             	mov    ax,0x188
   2bc67:	8e c0                	mov    es,ax
   2bc69:	26 8b 87 9d e3       	mov    ax,WORD PTR es:[bx-0x1c63]
   2bc6e:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   2bc71:	6b db 0e             	imul   bx,bx,0xe
   2bc74:	ba 88 01             	mov    dx,0x188
   2bc77:	8e c2                	mov    es,dx
   2bc79:	26 89 87 62 b4       	mov    WORD PTR es:[bx-0x4b9e],ax
   2bc7e:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   2bc81:	6b db 0e             	imul   bx,bx,0xe
   2bc84:	b8 88 01             	mov    ax,0x188
   2bc87:	53                   	push   bx
   2bc88:	50                   	push   ax
   2bc89:	a1 ff 3a             	mov    ax,ds:0x3aff
   2bc8c:	07                   	pop    es
   2bc8d:	5b                   	pop    bx
   2bc8e:	26 f7 af 60 b4       	imul   WORD PTR es:[bx-0x4ba0]
   2bc93:	99                   	cwd
   2bc94:	f7 7e fc             	idiv   WORD PTR [bp-0x4]
   2bc97:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   2bc9a:	6b db 0e             	imul   bx,bx,0xe
   2bc9d:	ba 88 01             	mov    dx,0x188
   2bca0:	8e c2                	mov    es,dx
   2bca2:	26 89 87 58 b4       	mov    WORD PTR es:[bx-0x4ba8],ax
   2bca7:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   2bcaa:	6b db 0e             	imul   bx,bx,0xe
   2bcad:	b8 88 01             	mov    ax,0x188
   2bcb0:	53                   	push   bx
   2bcb1:	50                   	push   ax
   2bcb2:	a1 01 3b             	mov    ax,ds:0x3b01
   2bcb5:	07                   	pop    es
   2bcb6:	5b                   	pop    bx
   2bcb7:	26 f7 af 62 b4       	imul   WORD PTR es:[bx-0x4b9e]
   2bcbc:	99                   	cwd
   2bcbd:	f7 7e fa             	idiv   WORD PTR [bp-0x6]
   2bcc0:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   2bcc3:	6b db 0e             	imul   bx,bx,0xe
   2bcc6:	ba 88 01             	mov    dx,0x188
   2bcc9:	8e c2                	mov    es,dx
   2bccb:	26 89 87 5a b4       	mov    WORD PTR es:[bx-0x4ba6],ax
   2bcd0:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   2bcd3:	6b db 0e             	imul   bx,bx,0xe
   2bcd6:	b8 88 01             	mov    ax,0x188
   2bcd9:	53                   	push   bx
   2bcda:	50                   	push   ax
   2bcdb:	a1 cc b8             	mov    ax,ds:0xb8cc
   2bcde:	07                   	pop    es
   2bcdf:	5b                   	pop    bx
   2bce0:	26 2b 87 58 b4       	sub    ax,WORD PTR es:[bx-0x4ba8]
   2bce5:	bb 02 00             	mov    bx,0x2
   2bce8:	99                   	cwd
   2bce9:	f7 fb                	idiv   bx
   2bceb:	8b 16 c8 b8          	mov    dx,WORD PTR ds:0xb8c8
   2bcef:	03 d0                	add    dx,ax
   2bcf1:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   2bcf4:	6b db 0e             	imul   bx,bx,0xe
   2bcf7:	b8 88 01             	mov    ax,0x188
   2bcfa:	8e c0                	mov    es,ax
   2bcfc:	26 89 97 5c b4       	mov    WORD PTR es:[bx-0x4ba4],dx
   2bd01:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   2bd04:	6b db 0e             	imul   bx,bx,0xe
   2bd07:	b8 88 01             	mov    ax,0x188
   2bd0a:	53                   	push   bx
   2bd0b:	50                   	push   ax
   2bd0c:	a1 ff 3a             	mov    ax,ds:0x3aff
   2bd0f:	07                   	pop    es
   2bd10:	5b                   	pop    bx
   2bd11:	26 2b 87 58 b4       	sub    ax,WORD PTR es:[bx-0x4ba8]
   2bd16:	bb 02 00             	mov    bx,0x2
   2bd19:	99                   	cwd
   2bd1a:	f7 fb                	idiv   bx
   2bd1c:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   2bd1f:	6b db 0e             	imul   bx,bx,0xe
   2bd22:	b8 88 01             	mov    ax,0x188
   2bd25:	8e c0                	mov    es,ax
   2bd27:	26 89 97 64 b4       	mov    WORD PTR es:[bx-0x4b9c],dx
   2bd2c:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   2bd2f:	6b db 0e             	imul   bx,bx,0xe
   2bd32:	b8 88 01             	mov    ax,0x188
   2bd35:	8b 16 ca b8          	mov    dx,WORD PTR ds:0xb8ca
   2bd39:	03 16 ce b8          	add    dx,WORD PTR ds:0xb8ce
   2bd3d:	8e c0                	mov    es,ax
   2bd3f:	26 2b 97 5a b4       	sub    dx,WORD PTR es:[bx-0x4ba6]
   2bd44:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   2bd47:	6b db 0e             	imul   bx,bx,0xe
   2bd4a:	b8 88 01             	mov    ax,0x188
   2bd4d:	8e c0                	mov    es,ax
   2bd4f:	26 89 97 5e b4       	mov    WORD PTR es:[bx-0x4ba2],dx
   2bd54:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   2bd57:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   2bd5b:	7d 03                	jge    0x2bd60
   2bd5d:	e9 d8 fe             	jmp    0x2bc38
   2bd60:	c9                   	leave
   2bd61:	cb                   	retf
