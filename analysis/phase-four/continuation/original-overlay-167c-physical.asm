
analysis/phase-four/continuation/original-overlay-167c.bin:     file format binary


Disassembly of section .data:

0003cc00 <.data>:
   3cc00:	55                   	push   bp
   3cc01:	8b ec                	mov    bp,sp
   3cc03:	83 ec 02             	sub    sp,0x2
   3cc06:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   3cc0b:	eb 4c                	jmp    0x3cc59
   3cc0d:	b8 88 01             	mov    ax,0x188
   3cc10:	8e c0                	mov    es,ax
   3cc12:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3cc17:	6b db 5c             	imul   bx,bx,0x5c
   3cc1a:	b8 88 01             	mov    ax,0x188
   3cc1d:	8e c0                	mov    es,ax
   3cc1f:	26 8b 9f a8 99       	mov    bx,WORD PTR es:[bx-0x6658]
   3cc24:	c1 e3 05             	shl    bx,0x5
   3cc27:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3cc2a:	d1 e0                	shl    ax,1
   3cc2c:	03 d8                	add    bx,ax
   3cc2e:	b8 88 01             	mov    ax,0x188
   3cc31:	8e c0                	mov    es,ax
   3cc33:	26 8b 87 78 27       	mov    ax,WORD PTR es:[bx+0x2778]
   3cc38:	ba 88 01             	mov    dx,0x188
   3cc3b:	8e c2                	mov    es,dx
   3cc3d:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3cc42:	6b db 24             	imul   bx,bx,0x24
   3cc45:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   3cc48:	d1 e2                	shl    dx,1
   3cc4a:	03 da                	add    bx,dx
   3cc4c:	ba 88 01             	mov    dx,0x188
   3cc4f:	8e c2                	mov    es,dx
   3cc51:	26 89 87 72 9b       	mov    WORD PTR es:[bx-0x648e],ax
   3cc56:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   3cc59:	83 7e fe 0f          	cmp    WORD PTR [bp-0x2],0xf
   3cc5d:	7e ae                	jle    0x3cc0d
   3cc5f:	b8 88 01             	mov    ax,0x188
   3cc62:	8e c0                	mov    es,ax
   3cc64:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3cc69:	6b db 5c             	imul   bx,bx,0x5c
   3cc6c:	b8 88 01             	mov    ax,0x188
   3cc6f:	8e c0                	mov    es,ax
   3cc71:	26 8b 87 a8 99       	mov    ax,WORD PTR es:[bx-0x6658]
   3cc76:	6b c0 0b             	imul   ax,ax,0xb
   3cc79:	05 38 26             	add    ax,0x2638
   3cc7c:	68 88 01             	push   0x188
   3cc7f:	50                   	push   ax
   3cc80:	1e                   	push   ds
   3cc81:	68 7c bb             	push   0xbb7c
   3cc84:	9a a3 49 00 00       	call   0x0:0x49a3
   3cc89:	83 c4 08             	add    sp,0x8
   3cc8c:	b8 88 01             	mov    ax,0x188
   3cc8f:	8e c0                	mov    es,ax
   3cc91:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3cc96:	6b db 5c             	imul   bx,bx,0x5c
   3cc99:	b8 88 01             	mov    ax,0x188
   3cc9c:	8e c0                	mov    es,ax
   3cc9e:	26 83 bf aa 99 01    	cmp    WORD PTR es:[bx-0x6656],0x1
   3cca4:	75 06                	jne    0x3ccac
   3cca6:	1e                   	push   ds
   3cca7:	68 f9 48             	push   0x48f9
   3ccaa:	eb 04                	jmp    0x3ccb0
   3ccac:	1e                   	push   ds
   3ccad:	68 00 49             	push   0x4900
   3ccb0:	68 88 01             	push   0x188
   3ccb3:	68 0a 9f             	push   0x9f0a
   3ccb6:	9a a3 49 00 00       	call   0x0:0x49a3
   3ccbb:	83 c4 08             	add    sp,0x8
   3ccbe:	6a 00                	push   0x0
   3ccc0:	68 00 80             	push   0x8000
   3ccc3:	9a 79 17 00 00       	call   0x0:0x1779
   3ccc8:	99                   	cwd
   3ccc9:	50                   	push   ax
   3ccca:	52                   	push   dx
   3cccb:	33 d2                	xor    dx,dx
   3cccd:	b8 05 00             	mov    ax,0x5
   3ccd0:	59                   	pop    cx
   3ccd1:	5b                   	pop    bx
   3ccd2:	9a 42 12 00 00       	call   0x0:0x1242
   3ccd7:	52                   	push   dx
   3ccd8:	50                   	push   ax
   3ccd9:	9a df 12 00 00       	call   0x0:0x12df
   3ccde:	d1 e0                	shl    ax,1
   3cce0:	ba 88 01             	mov    dx,0x188
   3cce3:	8e c2                	mov    es,dx
   3cce5:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3ccea:	6b db 5c             	imul   bx,bx,0x5c
   3cced:	ba 88 01             	mov    dx,0x188
   3ccf0:	8e c2                	mov    es,dx
   3ccf2:	26 8b 9f a8 99       	mov    bx,WORD PTR es:[bx-0x6658]
   3ccf7:	6b db 0a             	imul   bx,bx,0xa
   3ccfa:	03 d8                	add    bx,ax
   3ccfc:	b8 88 01             	mov    ax,0x188
   3ccff:	8e c0                	mov    es,ax
   3cd01:	26 8b 87 e7 0f       	mov    ax,WORD PTR es:[bx+0xfe7]
   3cd06:	ba 88 01             	mov    dx,0x188
   3cd09:	8e c2                	mov    es,dx
   3cd0b:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3cd10:	6b db 24             	imul   bx,bx,0x24
   3cd13:	ba 88 01             	mov    dx,0x188
   3cd16:	8e c2                	mov    es,dx
   3cd18:	26 89 87 90 9b       	mov    WORD PTR es:[bx-0x6470],ax
   3cd1d:	c9                   	leave
   3cd1e:	cb                   	retf
   3cd1f:	55                   	push   bp
   3cd20:	8b ec                	mov    bp,sp
   3cd22:	83 ec 12             	sub    sp,0x12
   3cd25:	8d 46 ee             	lea    ax,[bp-0x12]
   3cd28:	16                   	push   ss
   3cd29:	50                   	push   ax
   3cd2a:	1e                   	push   ds
   3cd2b:	68 ec 48             	push   0x48ec
   3cd2e:	b9 0d 00             	mov    cx,0xd
   3cd31:	9a 7a 12 00 00       	call   0x0:0x127a
   3cd36:	9a 04 02 30 00       	call   0x30:0x204
   3cd3b:	b8 88 01             	mov    ax,0x188
   3cd3e:	8e c0                	mov    es,ax
   3cd40:	26 c4 1e f7 e2       	les    bx,DWORD PTR es:0xe2f7
   3cd45:	26 80 7f 08 01       	cmp    BYTE PTR es:[bx+0x8],0x1
   3cd4a:	75 28                	jne    0x3cd74
   3cd4c:	1e                   	push   ds
   3cd4d:	68 06 49             	push   0x4906
   3cd50:	6a 32                	push   0x32
   3cd52:	68 88 01             	push   0x188
   3cd55:	68 f7 e2             	push   0xe2f7
   3cd58:	9a 2f 02 40 00       	call   0x40:0x22f
   3cd5d:	83 c4 0a             	add    sp,0xa
   3cd60:	1e                   	push   ds
   3cd61:	68 18 49             	push   0x4918
   3cd64:	6a 32                	push   0x32
   3cd66:	68 88 01             	push   0x188
   3cd69:	68 d7 e4             	push   0xe4d7
   3cd6c:	9a 2f 02 40 00       	call   0x40:0x22f
   3cd71:	83 c4 0a             	add    sp,0xa
   3cd74:	b8 88 01             	mov    ax,0x188
   3cd77:	8e c0                	mov    es,ax
   3cd79:	26 a1 37 e3          	mov    ax,es:0xe337
   3cd7d:	26 0b 06 39 e3       	or     ax,WORD PTR es:0xe339
   3cd82:	74 14                	je     0x3cd98
   3cd84:	1e                   	push   ds
   3cd85:	68 2a 49             	push   0x492a
   3cd88:	6a 33                	push   0x33
   3cd8a:	68 88 01             	push   0x188
   3cd8d:	68 37 e3             	push   0xe337
   3cd90:	9a 2f 02 40 00       	call   0x40:0x22f
   3cd95:	83 c4 0a             	add    sp,0xa
   3cd98:	b8 88 01             	mov    ax,0x188
   3cd9b:	8e c0                	mov    es,ax
   3cd9d:	26 a1 f7 e2          	mov    ax,es:0xe2f7
   3cda1:	26 0b 06 f9 e2       	or     ax,WORD PTR es:0xe2f9
   3cda6:	74 03                	je     0x3cdab
   3cda8:	e9 ff 00             	jmp    0x3ceaa
   3cdab:	68 e0 01             	push   0x1e0
   3cdae:	68 d0 02             	push   0x2d0
   3cdb1:	6a 06                	push   0x6
   3cdb3:	6a 01                	push   0x1
   3cdb5:	6a 35                	push   0x35
   3cdb7:	6a 11                	push   0x11
   3cdb9:	6a 48                	push   0x48
   3cdbb:	6a 30                	push   0x30
   3cdbd:	6a 35                	push   0x35
   3cdbf:	6a 11                	push   0x11
   3cdc1:	9a 30 04 28 00       	call   0x28:0x430
   3cdc6:	83 c4 14             	add    sp,0x14
   3cdc9:	6a 47                	push   0x47
   3cdcb:	b8 88 01             	mov    ax,0x188
   3cdce:	8e c0                	mov    es,ax
   3cdd0:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3cdd5:	6b db 5c             	imul   bx,bx,0x5c
   3cdd8:	b8 88 01             	mov    ax,0x188
   3cddb:	8e c0                	mov    es,ax
   3cddd:	26 8b 87 e8 99       	mov    ax,WORD PTR es:[bx-0x6618]
   3cde2:	6b c0 0d             	imul   ax,ax,0xd
   3cde5:	05 9b 26             	add    ax,0x269b
   3cde8:	68 88 01             	push   0x188
   3cdeb:	50                   	push   ax
   3cdec:	16                   	push   ss
   3cded:	8d 46 ee             	lea    ax,[bp-0x12]
   3cdf0:	50                   	push   ax
   3cdf1:	9a f7 48 00 00       	call   0x0:0x48f7
   3cdf6:	83 c4 08             	add    sp,0x8
   3cdf9:	52                   	push   dx
   3cdfa:	50                   	push   ax
   3cdfb:	6a 01                	push   0x1
   3cdfd:	9a 20 00 48 01       	call   0x148:0x20
   3ce02:	83 c4 08             	add    sp,0x8
   3ce05:	6a 0b                	push   0xb
   3ce07:	b8 88 01             	mov    ax,0x188
   3ce0a:	8e c0                	mov    es,ax
   3ce0c:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3ce11:	6b db 5c             	imul   bx,bx,0x5c
   3ce14:	b8 88 01             	mov    ax,0x188
   3ce17:	8e c0                	mov    es,ax
   3ce19:	26 8b 87 e8 99       	mov    ax,WORD PTR es:[bx-0x6618]
   3ce1e:	6b c0 0d             	imul   ax,ax,0xd
   3ce21:	05 9b 26             	add    ax,0x269b
   3ce24:	68 88 01             	push   0x188
   3ce27:	50                   	push   ax
   3ce28:	6a 01                	push   0x1
   3ce2a:	9a 20 00 48 01       	call   0x148:0x20
   3ce2f:	83 c4 08             	add    sp,0x8
   3ce32:	6a 00                	push   0x0
   3ce34:	6a 00                	push   0x0
   3ce36:	6a 48                	push   0x48
   3ce38:	9a 64 01 20 00       	call   0x20:0x164
   3ce3d:	83 c4 06             	add    sp,0x6
   3ce40:	bb 88 01             	mov    bx,0x188
   3ce43:	8e c3                	mov    es,bx
   3ce45:	26 89 16 39 e3       	mov    WORD PTR es:0xe339,dx
   3ce4a:	26 a3 37 e3          	mov    es:0xe337,ax
   3ce4e:	b8 88 01             	mov    ax,0x188
   3ce51:	8e c0                	mov    es,ax
   3ce53:	26 ff 36 39 e3       	push   WORD PTR es:0xe339
   3ce58:	26 ff 36 37 e3       	push   WORD PTR es:0xe337
   3ce5d:	1e                   	push   ds
   3ce5e:	68 3c 49             	push   0x493c
   3ce61:	b8 88 01             	mov    ax,0x188
   3ce64:	8e c0                	mov    es,ax
   3ce66:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3ce6b:	6b db 5c             	imul   bx,bx,0x5c
   3ce6e:	b8 88 01             	mov    ax,0x188
   3ce71:	8e c0                	mov    es,ax
   3ce73:	26 8b 87 e8 99       	mov    ax,WORD PTR es:[bx-0x6618]
   3ce78:	6b c0 0d             	imul   ax,ax,0xd
   3ce7b:	05 9b 26             	add    ax,0x269b
   3ce7e:	68 88 01             	push   0x188
   3ce81:	50                   	push   ax
   3ce82:	9a 34 00 48 01       	call   0x148:0x34
   3ce87:	83 c4 08             	add    sp,0x8
   3ce8a:	89 56 fe             	mov    WORD PTR [bp-0x2],dx
   3ce8d:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   3ce90:	52                   	push   dx
   3ce91:	50                   	push   ax
   3ce92:	6a 00                	push   0x0
   3ce94:	9a 2f 00 48 01       	call   0x148:0x2f
   3ce99:	83 c4 0a             	add    sp,0xa
   3ce9c:	ff 76 fe             	push   WORD PTR [bp-0x2]
   3ce9f:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3cea2:	9a c2 24 00 00       	call   0x0:0x24c2
   3cea7:	83 c4 04             	add    sp,0x4
   3ceaa:	68 e0 01             	push   0x1e0
   3cead:	68 d0 02             	push   0x2d0
   3ceb0:	6a 06                	push   0x6
   3ceb2:	6a 47                	push   0x47
   3ceb4:	6a 35                	push   0x35
   3ceb6:	6a 44                	push   0x44
   3ceb8:	6a 20                	push   0x20
   3ceba:	6a 20                	push   0x20
   3cebc:	6a 00                	push   0x0
   3cebe:	6a 00                	push   0x0
   3cec0:	9a 30 04 28 00       	call   0x28:0x430
   3cec5:	83 c4 14             	add    sp,0x14
   3cec8:	c7 06 e8 48 00 00    	mov    WORD PTR ds:0x48e8,0x0
   3cece:	b8 88 01             	mov    ax,0x188
   3ced1:	8e c0                	mov    es,ax
   3ced3:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3ced8:	6b db 5c             	imul   bx,bx,0x5c
   3cedb:	b8 88 01             	mov    ax,0x188
   3cede:	8e c0                	mov    es,ax
   3cee0:	26 8b 9f e8 99       	mov    bx,WORD PTR es:[bx-0x6618]
   3cee5:	83 eb 06             	sub    bx,0x6
   3cee8:	83 fb 0a             	cmp    bx,0xa
   3ceeb:	77 22                	ja     0x3cf0f
   3ceed:	d1 e3                	shl    bx,1
   3ceef:	2e ff a7 47 03       	jmp    WORD PTR cs:[bx+0x347]
   3cef4:	b8 88 01             	mov    ax,0x188
   3cef7:	8e c0                	mov    es,ax
   3cef9:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3cefe:	6b db 5c             	imul   bx,bx,0x5c
   3cf01:	b8 88 01             	mov    ax,0x188
   3cf04:	8e c0                	mov    es,ax
   3cf06:	26 c7 87 aa 99 02 00 	mov    WORD PTR es:[bx-0x6656],0x2
   3cf0d:	eb 19                	jmp    0x3cf28
   3cf0f:	b8 88 01             	mov    ax,0x188
   3cf12:	8e c0                	mov    es,ax
   3cf14:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3cf19:	6b db 5c             	imul   bx,bx,0x5c
   3cf1c:	b8 88 01             	mov    ax,0x188
   3cf1f:	8e c0                	mov    es,ax
   3cf21:	26 c7 87 aa 99 01 00 	mov    WORD PTR es:[bx-0x6656],0x1
   3cf28:	90                   	nop
   3cf29:	0e                   	push   cs
   3cf2a:	e8 30 00             	call   0x3cf5d
   3cf2d:	6a 06                	push   0x6
   3cf2f:	9a 5c 00 38 01       	call   0x138:0x5c
   3cf34:	59                   	pop    cx
   3cf35:	b8 88 01             	mov    ax,0x188
   3cf38:	8e c0                	mov    es,ax
   3cf3a:	26 a0 e3 e5          	mov    al,es:0xe5e3
   3cf3e:	50                   	push   ax
   3cf3f:	9a 69 00 30 00       	call   0x30:0x69
   3cf44:	59                   	pop    cx
   3cf45:	c9                   	leave
   3cf46:	cb                   	retf
   3cf47:	f4                   	hlt
   3cf48:	02 0f                	add    cl,BYTE PTR [bx]
   3cf4a:	03 0f                	add    cx,WORD PTR [bx]
   3cf4c:	03 0f                	add    cx,WORD PTR [bx]
   3cf4e:	03 0f                	add    cx,WORD PTR [bx]
   3cf50:	03 0f                	add    cx,WORD PTR [bx]
   3cf52:	03 0f                	add    cx,WORD PTR [bx]
   3cf54:	03 f4                	add    si,sp
   3cf56:	02 f4                	add    dh,ah
   3cf58:	02 0f                	add    cl,BYTE PTR [bx]
   3cf5a:	03 f4                	add    si,sp
   3cf5c:	02 55 8b             	add    dl,BYTE PTR [di-0x75]
   3cf5f:	ec                   	in     al,dx
   3cf60:	83 ec 04             	sub    sp,0x4
   3cf63:	68 e0 01             	push   0x1e0
   3cf66:	68 d0 02             	push   0x2d0
   3cf69:	6a 06                	push   0x6
   3cf6b:	6a 01                	push   0x1
   3cf6d:	6a 35                	push   0x35
   3cf6f:	6a 11                	push   0x11
   3cf71:	6a 48                	push   0x48
   3cf73:	6a 30                	push   0x30
   3cf75:	6a 35                	push   0x35
   3cf77:	6a 11                	push   0x11
   3cf79:	9a 30 04 28 00       	call   0x28:0x430
   3cf7e:	83 c4 14             	add    sp,0x14
   3cf81:	c7 46 fe 2a 00       	mov    WORD PTR [bp-0x2],0x2a
   3cf86:	c7 46 fc 78 00       	mov    WORD PTR [bp-0x4],0x78
   3cf8b:	ff 06 e8 48          	inc    WORD PTR ds:0x48e8
   3cf8f:	a1 e8 48             	mov    ax,ds:0x48e8
   3cf92:	50                   	push   ax
   3cf93:	6a 0b                	push   0xb
   3cf95:	16                   	push   ss
   3cf96:	8d 46 fc             	lea    ax,[bp-0x4]
   3cf99:	50                   	push   ax
   3cf9a:	16                   	push   ss
   3cf9b:	8d 46 fe             	lea    ax,[bp-0x2]
   3cf9e:	50                   	push   ax
   3cf9f:	9a 39 00 38 01       	call   0x138:0x39
   3cfa4:	83 c4 0c             	add    sp,0xc
   3cfa7:	bb 04 00             	mov    bx,0x4
   3cfaa:	a1 e8 48             	mov    ax,ds:0x48e8
   3cfad:	99                   	cwd
   3cfae:	f7 fb                	idiv   bx
   3cfb0:	89 16 e8 48          	mov    WORD PTR ds:0x48e8,dx
   3cfb4:	83 3e ea 48 00       	cmp    WORD PTR ds:0x48ea,0x0
   3cfb9:	74 7a                	je     0x3d035
   3cfbb:	83 3e ea 48 01       	cmp    WORD PTR ds:0x48ea,0x1
   3cfc0:	75 48                	jne    0x3d00a
   3cfc2:	68 e0 01             	push   0x1e0
   3cfc5:	68 d0 02             	push   0x2d0
   3cfc8:	6a 06                	push   0x6
   3cfca:	6a 47                	push   0x47
   3cfcc:	6a 35                	push   0x35
   3cfce:	6a 44                	push   0x44
   3cfd0:	6a 20                	push   0x20
   3cfd2:	6a 20                	push   0x20
   3cfd4:	6a 00                	push   0x0
   3cfd6:	6a 00                	push   0x0
   3cfd8:	68 00 80             	push   0x8000
   3cfdb:	9a 79 17 00 00       	call   0x0:0x1779
   3cfe0:	99                   	cwd
   3cfe1:	50                   	push   ax
   3cfe2:	52                   	push   dx
   3cfe3:	33 d2                	xor    dx,dx
   3cfe5:	b8 03 00             	mov    ax,0x3
   3cfe8:	59                   	pop    cx
   3cfe9:	5b                   	pop    bx
   3cfea:	9a 42 12 00 00       	call   0x0:0x1242
   3cfef:	52                   	push   dx
   3cff0:	50                   	push   ax
   3cff1:	9a df 12 00 00       	call   0x0:0x12df
   3cff6:	c1 e0 05             	shl    ax,0x5
   3cff9:	50                   	push   ax
   3cffa:	9a 30 04 28 00       	call   0x28:0x430
   3cfff:	83 c4 14             	add    sp,0x14
   3d002:	c7 06 ea 48 02 00    	mov    WORD PTR ds:0x48ea,0x2
   3d008:	eb 2b                	jmp    0x3d035
   3d00a:	83 3e ea 48 02       	cmp    WORD PTR ds:0x48ea,0x2
   3d00f:	75 24                	jne    0x3d035
   3d011:	68 e0 01             	push   0x1e0
   3d014:	68 d0 02             	push   0x2d0
   3d017:	6a 06                	push   0x6
   3d019:	6a 47                	push   0x47
   3d01b:	6a 35                	push   0x35
   3d01d:	6a 44                	push   0x44
   3d01f:	6a 20                	push   0x20
   3d021:	6a 20                	push   0x20
   3d023:	6a 00                	push   0x0
   3d025:	6a 00                	push   0x0
   3d027:	9a 30 04 28 00       	call   0x28:0x430
   3d02c:	83 c4 14             	add    sp,0x14
   3d02f:	c7 06 ea 48 03 00    	mov    WORD PTR ds:0x48ea,0x3
   3d035:	c9                   	leave
   3d036:	cb                   	retf
   3d037:	55                   	push   bp
   3d038:	8b ec                	mov    bp,sp
   3d03a:	83 ec 02             	sub    sp,0x2
   3d03d:	0e                   	push   cs
   3d03e:	e8 bf fb             	call   0x3cc00
   3d041:	6a 00                	push   0x0
   3d043:	68 00 80             	push   0x8000
   3d046:	9a 79 17 00 00       	call   0x0:0x1779
   3d04b:	99                   	cwd
   3d04c:	50                   	push   ax
   3d04d:	52                   	push   dx
   3d04e:	33 d2                	xor    dx,dx
   3d050:	b8 19 00             	mov    ax,0x19
   3d053:	59                   	pop    cx
   3d054:	5b                   	pop    bx
   3d055:	9a 42 12 00 00       	call   0x0:0x1242
   3d05a:	52                   	push   dx
   3d05b:	50                   	push   ax
   3d05c:	9a df 12 00 00       	call   0x0:0x12df
   3d061:	50                   	push   ax
   3d062:	6a 00                	push   0x0
   3d064:	68 00 80             	push   0x8000
   3d067:	9a 79 17 00 00       	call   0x0:0x1779
   3d06c:	99                   	cwd
   3d06d:	50                   	push   ax
   3d06e:	52                   	push   dx
   3d06f:	33 d2                	xor    dx,dx
   3d071:	b8 19 00             	mov    ax,0x19
   3d074:	59                   	pop    cx
   3d075:	5b                   	pop    bx
   3d076:	9a 42 12 00 00       	call   0x0:0x1242
   3d07b:	52                   	push   dx
   3d07c:	50                   	push   ax
   3d07d:	9a df 12 00 00       	call   0x0:0x12df
   3d082:	5a                   	pop    dx
   3d083:	03 d0                	add    dx,ax
   3d085:	b8 88 01             	mov    ax,0x188
   3d088:	8e c0                	mov    es,ax
   3d08a:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d08f:	6b db 24             	imul   bx,bx,0x24
   3d092:	b8 88 01             	mov    ax,0x188
   3d095:	8e c0                	mov    es,ax
   3d097:	26 8b 87 74 9b       	mov    ax,WORD PTR es:[bx-0x648c]
   3d09c:	6b c0 0a             	imul   ax,ax,0xa
   3d09f:	03 d0                	add    dx,ax
   3d0a1:	81 c2 96 00          	add    dx,0x96
   3d0a5:	b8 88 01             	mov    ax,0x188
   3d0a8:	8e c0                	mov    es,ax
   3d0aa:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d0af:	6b db 5c             	imul   bx,bx,0x5c
   3d0b2:	b8 88 01             	mov    ax,0x188
   3d0b5:	8e c0                	mov    es,ax
   3d0b7:	26 89 97 ca 99       	mov    WORD PTR es:[bx-0x6636],dx
   3d0bc:	6a 00                	push   0x0
   3d0be:	68 00 80             	push   0x8000
   3d0c1:	9a 79 17 00 00       	call   0x0:0x1779
   3d0c6:	99                   	cwd
   3d0c7:	50                   	push   ax
   3d0c8:	52                   	push   dx
   3d0c9:	33 d2                	xor    dx,dx
   3d0cb:	b8 05 00             	mov    ax,0x5
   3d0ce:	59                   	pop    cx
   3d0cf:	5b                   	pop    bx
   3d0d0:	9a 42 12 00 00       	call   0x0:0x1242
   3d0d5:	52                   	push   dx
   3d0d6:	50                   	push   ax
   3d0d7:	9a df 12 00 00       	call   0x0:0x12df
   3d0dc:	50                   	push   ax
   3d0dd:	6a 00                	push   0x0
   3d0df:	68 00 80             	push   0x8000
   3d0e2:	9a 79 17 00 00       	call   0x0:0x1779
   3d0e7:	99                   	cwd
   3d0e8:	50                   	push   ax
   3d0e9:	52                   	push   dx
   3d0ea:	33 d2                	xor    dx,dx
   3d0ec:	b8 05 00             	mov    ax,0x5
   3d0ef:	59                   	pop    cx
   3d0f0:	5b                   	pop    bx
   3d0f1:	9a 42 12 00 00       	call   0x0:0x1242
   3d0f6:	52                   	push   dx
   3d0f7:	50                   	push   ax
   3d0f8:	9a df 12 00 00       	call   0x0:0x12df
   3d0fd:	5a                   	pop    dx
   3d0fe:	03 d0                	add    dx,ax
   3d100:	b8 88 01             	mov    ax,0x188
   3d103:	8e c0                	mov    es,ax
   3d105:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d10a:	6b db 5c             	imul   bx,bx,0x5c
   3d10d:	b8 88 01             	mov    ax,0x188
   3d110:	8e c0                	mov    es,ax
   3d112:	26 03 97 ca 99       	add    dx,WORD PTR es:[bx-0x6636]
   3d117:	b8 88 01             	mov    ax,0x188
   3d11a:	8e c0                	mov    es,ax
   3d11c:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d121:	6b db 24             	imul   bx,bx,0x24
   3d124:	b8 88 01             	mov    ax,0x188
   3d127:	8e c0                	mov    es,ax
   3d129:	26 8b 87 76 9b       	mov    ax,WORD PTR es:[bx-0x648a]
   3d12e:	6b c0 0a             	imul   ax,ax,0xa
   3d131:	03 d0                	add    dx,ax
   3d133:	83 c2 92             	add    dx,0xff92
   3d136:	b8 88 01             	mov    ax,0x188
   3d139:	8e c0                	mov    es,ax
   3d13b:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d140:	6b db 5c             	imul   bx,bx,0x5c
   3d143:	b8 88 01             	mov    ax,0x188
   3d146:	8e c0                	mov    es,ax
   3d148:	26 8b 87 aa 99       	mov    ax,WORD PTR es:[bx-0x6656]
   3d14d:	48                   	dec    ax
   3d14e:	6b c0 0a             	imul   ax,ax,0xa
   3d151:	2b d0                	sub    dx,ax
   3d153:	b8 88 01             	mov    ax,0x188
   3d156:	8e c0                	mov    es,ax
   3d158:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d15d:	6b db 5c             	imul   bx,bx,0x5c
   3d160:	b8 88 01             	mov    ax,0x188
   3d163:	8e c0                	mov    es,ax
   3d165:	26 89 97 cc 99       	mov    WORD PTR es:[bx-0x6634],dx
   3d16a:	6a 00                	push   0x0
   3d16c:	68 00 80             	push   0x8000
   3d16f:	9a 79 17 00 00       	call   0x0:0x1779
   3d174:	99                   	cwd
   3d175:	50                   	push   ax
   3d176:	52                   	push   dx
   3d177:	33 d2                	xor    dx,dx
   3d179:	b8 96 00             	mov    ax,0x96
   3d17c:	59                   	pop    cx
   3d17d:	5b                   	pop    bx
   3d17e:	9a 42 12 00 00       	call   0x0:0x1242
   3d183:	52                   	push   dx
   3d184:	50                   	push   ax
   3d185:	9a df 12 00 00       	call   0x0:0x12df
   3d18a:	50                   	push   ax
   3d18b:	6a 00                	push   0x0
   3d18d:	68 00 80             	push   0x8000
   3d190:	9a 79 17 00 00       	call   0x0:0x1779
   3d195:	99                   	cwd
   3d196:	50                   	push   ax
   3d197:	52                   	push   dx
   3d198:	33 d2                	xor    dx,dx
   3d19a:	b8 96 00             	mov    ax,0x96
   3d19d:	59                   	pop    cx
   3d19e:	5b                   	pop    bx
   3d19f:	9a 42 12 00 00       	call   0x0:0x1242
   3d1a4:	52                   	push   dx
   3d1a5:	50                   	push   ax
   3d1a6:	9a df 12 00 00       	call   0x0:0x12df
   3d1ab:	5a                   	pop    dx
   3d1ac:	03 d0                	add    dx,ax
   3d1ae:	b8 88 01             	mov    ax,0x188
   3d1b1:	8e c0                	mov    es,ax
   3d1b3:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d1b8:	6b db 5c             	imul   bx,bx,0x5c
   3d1bb:	b8 88 01             	mov    ax,0x188
   3d1be:	8e c0                	mov    es,ax
   3d1c0:	26 8b 87 aa 99       	mov    ax,WORD PTR es:[bx-0x6656]
   3d1c5:	48                   	dec    ax
   3d1c6:	6b c0 19             	imul   ax,ax,0x19
   3d1c9:	03 d0                	add    dx,ax
   3d1cb:	b8 88 01             	mov    ax,0x188
   3d1ce:	8e c0                	mov    es,ax
   3d1d0:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d1d5:	6b db 5c             	imul   bx,bx,0x5c
   3d1d8:	b8 88 01             	mov    ax,0x188
   3d1db:	8e c0                	mov    es,ax
   3d1dd:	26 8b 87 ca 99       	mov    ax,WORD PTR es:[bx-0x6636]
   3d1e2:	bb 88 01             	mov    bx,0x188
   3d1e5:	8e c3                	mov    es,bx
   3d1e7:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d1ec:	6b db 5c             	imul   bx,bx,0x5c
   3d1ef:	b9 88 01             	mov    cx,0x188
   3d1f2:	8e c1                	mov    es,cx
   3d1f4:	26 03 87 cc 99       	add    ax,WORD PTR es:[bx-0x6634]
   3d1f9:	bb 05 00             	mov    bx,0x5
   3d1fc:	52                   	push   dx
   3d1fd:	99                   	cwd
   3d1fe:	f7 fb                	idiv   bx
   3d200:	5a                   	pop    dx
   3d201:	2b d0                	sub    dx,ax
   3d203:	b8 88 01             	mov    ax,0x188
   3d206:	8e c0                	mov    es,ax
   3d208:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d20d:	6b db 24             	imul   bx,bx,0x24
   3d210:	b8 88 01             	mov    ax,0x188
   3d213:	8e c0                	mov    es,ax
   3d215:	26 8b 87 78 9b       	mov    ax,WORD PTR es:[bx-0x6488]
   3d21a:	6b c0 0a             	imul   ax,ax,0xa
   3d21d:	03 d0                	add    dx,ax
   3d21f:	b8 88 01             	mov    ax,0x188
   3d222:	8e c0                	mov    es,ax
   3d224:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d229:	6b db 5c             	imul   bx,bx,0x5c
   3d22c:	b8 88 01             	mov    ax,0x188
   3d22f:	8e c0                	mov    es,ax
   3d231:	26 89 97 b4 99       	mov    WORD PTR es:[bx-0x664c],dx
   3d236:	6a 00                	push   0x0
   3d238:	68 00 80             	push   0x8000
   3d23b:	9a 79 17 00 00       	call   0x0:0x1779
   3d240:	99                   	cwd
   3d241:	50                   	push   ax
   3d242:	52                   	push   dx
   3d243:	33 d2                	xor    dx,dx
   3d245:	b8 32 00             	mov    ax,0x32
   3d248:	59                   	pop    cx
   3d249:	5b                   	pop    bx
   3d24a:	9a 42 12 00 00       	call   0x0:0x1242
   3d24f:	52                   	push   dx
   3d250:	50                   	push   ax
   3d251:	9a df 12 00 00       	call   0x0:0x12df
   3d256:	50                   	push   ax
   3d257:	6a 00                	push   0x0
   3d259:	68 00 80             	push   0x8000
   3d25c:	9a 79 17 00 00       	call   0x0:0x1779
   3d261:	99                   	cwd
   3d262:	50                   	push   ax
   3d263:	52                   	push   dx
   3d264:	33 d2                	xor    dx,dx
   3d266:	b8 32 00             	mov    ax,0x32
   3d269:	59                   	pop    cx
   3d26a:	5b                   	pop    bx
   3d26b:	9a 42 12 00 00       	call   0x0:0x1242
   3d270:	52                   	push   dx
   3d271:	50                   	push   ax
   3d272:	9a df 12 00 00       	call   0x0:0x12df
   3d277:	5a                   	pop    dx
   3d278:	03 d0                	add    dx,ax
   3d27a:	b8 88 01             	mov    ax,0x188
   3d27d:	8e c0                	mov    es,ax
   3d27f:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d284:	6b db 5c             	imul   bx,bx,0x5c
   3d287:	b8 88 01             	mov    ax,0x188
   3d28a:	8e c0                	mov    es,ax
   3d28c:	26 8b 87 aa 99       	mov    ax,WORD PTR es:[bx-0x6656]
   3d291:	6b c0 19             	imul   ax,ax,0x19
   3d294:	2b d0                	sub    dx,ax
   3d296:	b8 88 01             	mov    ax,0x188
   3d299:	8e c0                	mov    es,ax
   3d29b:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d2a0:	6b db 5c             	imul   bx,bx,0x5c
   3d2a3:	b8 88 01             	mov    ax,0x188
   3d2a6:	8e c0                	mov    es,ax
   3d2a8:	26 8b 87 ca 99       	mov    ax,WORD PTR es:[bx-0x6636]
   3d2ad:	bb 88 01             	mov    bx,0x188
   3d2b0:	8e c3                	mov    es,bx
   3d2b2:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d2b7:	6b db 5c             	imul   bx,bx,0x5c
   3d2ba:	b9 88 01             	mov    cx,0x188
   3d2bd:	8e c1                	mov    es,cx
   3d2bf:	26 03 87 cc 99       	add    ax,WORD PTR es:[bx-0x6634]
   3d2c4:	bb 03 00             	mov    bx,0x3
   3d2c7:	52                   	push   dx
   3d2c8:	99                   	cwd
   3d2c9:	f7 fb                	idiv   bx
   3d2cb:	5a                   	pop    dx
   3d2cc:	03 d0                	add    dx,ax
   3d2ce:	b8 88 01             	mov    ax,0x188
   3d2d1:	8e c0                	mov    es,ax
   3d2d3:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d2d8:	6b db 24             	imul   bx,bx,0x24
   3d2db:	b8 88 01             	mov    ax,0x188
   3d2de:	8e c0                	mov    es,ax
   3d2e0:	26 8b 87 7a 9b       	mov    ax,WORD PTR es:[bx-0x6486]
   3d2e5:	6b c0 0a             	imul   ax,ax,0xa
   3d2e8:	03 d0                	add    dx,ax
   3d2ea:	b8 88 01             	mov    ax,0x188
   3d2ed:	8e c0                	mov    es,ax
   3d2ef:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d2f4:	6b db 5c             	imul   bx,bx,0x5c
   3d2f7:	b8 88 01             	mov    ax,0x188
   3d2fa:	8e c0                	mov    es,ax
   3d2fc:	26 89 97 b6 99       	mov    WORD PTR es:[bx-0x664a],dx
   3d301:	6a 00                	push   0x0
   3d303:	68 00 80             	push   0x8000
   3d306:	9a 79 17 00 00       	call   0x0:0x1779
   3d30b:	99                   	cwd
   3d30c:	50                   	push   ax
   3d30d:	52                   	push   dx
   3d30e:	33 d2                	xor    dx,dx
   3d310:	b8 64 00             	mov    ax,0x64
   3d313:	59                   	pop    cx
   3d314:	5b                   	pop    bx
   3d315:	9a 42 12 00 00       	call   0x0:0x1242
   3d31a:	52                   	push   dx
   3d31b:	50                   	push   ax
   3d31c:	9a df 12 00 00       	call   0x0:0x12df
   3d321:	50                   	push   ax
   3d322:	6a 00                	push   0x0
   3d324:	68 00 80             	push   0x8000
   3d327:	9a 79 17 00 00       	call   0x0:0x1779
   3d32c:	99                   	cwd
   3d32d:	50                   	push   ax
   3d32e:	52                   	push   dx
   3d32f:	33 d2                	xor    dx,dx
   3d331:	b8 64 00             	mov    ax,0x64
   3d334:	59                   	pop    cx
   3d335:	5b                   	pop    bx
   3d336:	9a 42 12 00 00       	call   0x0:0x1242
   3d33b:	52                   	push   dx
   3d33c:	50                   	push   ax
   3d33d:	9a df 12 00 00       	call   0x0:0x12df
   3d342:	5a                   	pop    dx
   3d343:	03 d0                	add    dx,ax
   3d345:	b8 88 01             	mov    ax,0x188
   3d348:	8e c0                	mov    es,ax
   3d34a:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d34f:	6b db 5c             	imul   bx,bx,0x5c
   3d352:	b8 88 01             	mov    ax,0x188
   3d355:	8e c0                	mov    es,ax
   3d357:	26 8b 87 b4 99       	mov    ax,WORD PTR es:[bx-0x664c]
   3d35c:	bb 04 00             	mov    bx,0x4
   3d35f:	52                   	push   dx
   3d360:	99                   	cwd
   3d361:	f7 fb                	idiv   bx
   3d363:	5a                   	pop    dx
   3d364:	03 d0                	add    dx,ax
   3d366:	b8 88 01             	mov    ax,0x188
   3d369:	8e c0                	mov    es,ax
   3d36b:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d370:	6b db 5c             	imul   bx,bx,0x5c
   3d373:	b8 88 01             	mov    ax,0x188
   3d376:	8e c0                	mov    es,ax
   3d378:	26 8b 87 b6 99       	mov    ax,WORD PTR es:[bx-0x664a]
   3d37d:	bb 04 00             	mov    bx,0x4
   3d380:	52                   	push   dx
   3d381:	99                   	cwd
   3d382:	f7 fb                	idiv   bx
   3d384:	5a                   	pop    dx
   3d385:	2b d0                	sub    dx,ax
   3d387:	b8 88 01             	mov    ax,0x188
   3d38a:	8e c0                	mov    es,ax
   3d38c:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d391:	6b db 24             	imul   bx,bx,0x24
   3d394:	b8 88 01             	mov    ax,0x188
   3d397:	8e c0                	mov    es,ax
   3d399:	26 8b 87 7c 9b       	mov    ax,WORD PTR es:[bx-0x6484]
   3d39e:	6b c0 0a             	imul   ax,ax,0xa
   3d3a1:	03 d0                	add    dx,ax
   3d3a3:	b8 88 01             	mov    ax,0x188
   3d3a6:	8e c0                	mov    es,ax
   3d3a8:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d3ad:	6b db 5c             	imul   bx,bx,0x5c
   3d3b0:	b8 88 01             	mov    ax,0x188
   3d3b3:	8e c0                	mov    es,ax
   3d3b5:	26 89 97 b0 99       	mov    WORD PTR es:[bx-0x6650],dx
   3d3ba:	6a 00                	push   0x0
   3d3bc:	68 00 80             	push   0x8000
   3d3bf:	9a 79 17 00 00       	call   0x0:0x1779
   3d3c4:	99                   	cwd
   3d3c5:	50                   	push   ax
   3d3c6:	52                   	push   dx
   3d3c7:	33 d2                	xor    dx,dx
   3d3c9:	b8 06 00             	mov    ax,0x6
   3d3cc:	59                   	pop    cx
   3d3cd:	5b                   	pop    bx
   3d3ce:	9a 42 12 00 00       	call   0x0:0x1242
   3d3d3:	52                   	push   dx
   3d3d4:	50                   	push   ax
   3d3d5:	9a df 12 00 00       	call   0x0:0x12df
   3d3da:	ba 88 01             	mov    dx,0x188
   3d3dd:	8e c2                	mov    es,dx
   3d3df:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d3e4:	6b db 5c             	imul   bx,bx,0x5c
   3d3e7:	ba 88 01             	mov    dx,0x188
   3d3ea:	8e c2                	mov    es,dx
   3d3ec:	50                   	push   ax
   3d3ed:	26 8b 87 b6 99       	mov    ax,WORD PTR es:[bx-0x664a]
   3d3f2:	bb 28 00             	mov    bx,0x28
   3d3f5:	99                   	cwd
   3d3f6:	f7 fb                	idiv   bx
   3d3f8:	5a                   	pop    dx
   3d3f9:	03 d0                	add    dx,ax
   3d3fb:	b8 88 01             	mov    ax,0x188
   3d3fe:	8e c0                	mov    es,ax
   3d400:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d405:	6b db 5c             	imul   bx,bx,0x5c
   3d408:	b8 88 01             	mov    ax,0x188
   3d40b:	8e c0                	mov    es,ax
   3d40d:	26 8b 87 b0 99       	mov    ax,WORD PTR es:[bx-0x6650]
   3d412:	bb 1e 00             	mov    bx,0x1e
   3d415:	52                   	push   dx
   3d416:	99                   	cwd
   3d417:	f7 fb                	idiv   bx
   3d419:	5a                   	pop    dx
   3d41a:	2b d0                	sub    dx,ax
   3d41c:	b8 88 01             	mov    ax,0x188
   3d41f:	8e c0                	mov    es,ax
   3d421:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d426:	6b db 5c             	imul   bx,bx,0x5c
   3d429:	b8 88 01             	mov    ax,0x188
   3d42c:	8e c0                	mov    es,ax
   3d42e:	26 8b 87 cc 99       	mov    ax,WORD PTR es:[bx-0x6634]
   3d433:	bb 14 00             	mov    bx,0x14
   3d436:	52                   	push   dx
   3d437:	99                   	cwd
   3d438:	f7 fb                	idiv   bx
   3d43a:	5a                   	pop    dx
   3d43b:	03 d0                	add    dx,ax
   3d43d:	b8 88 01             	mov    ax,0x188
   3d440:	8e c0                	mov    es,ax
   3d442:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d447:	6b db 24             	imul   bx,bx,0x24
   3d44a:	b8 88 01             	mov    ax,0x188
   3d44d:	8e c0                	mov    es,ax
   3d44f:	26 8b 87 7e 9b       	mov    ax,WORD PTR es:[bx-0x6482]
   3d454:	d1 e0                	shl    ax,1
   3d456:	03 d0                	add    dx,ax
   3d458:	b8 88 01             	mov    ax,0x188
   3d45b:	8e c0                	mov    es,ax
   3d45d:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d462:	6b db 5c             	imul   bx,bx,0x5c
   3d465:	b8 88 01             	mov    ax,0x188
   3d468:	8e c0                	mov    es,ax
   3d46a:	26 89 97 b2 99       	mov    WORD PTR es:[bx-0x664e],dx
   3d46f:	6a 00                	push   0x0
   3d471:	68 00 80             	push   0x8000
   3d474:	9a 79 17 00 00       	call   0x0:0x1779
   3d479:	99                   	cwd
   3d47a:	50                   	push   ax
   3d47b:	52                   	push   dx
   3d47c:	33 d2                	xor    dx,dx
   3d47e:	b8 46 00             	mov    ax,0x46
   3d481:	59                   	pop    cx
   3d482:	5b                   	pop    bx
   3d483:	9a 42 12 00 00       	call   0x0:0x1242
   3d488:	52                   	push   dx
   3d489:	50                   	push   ax
   3d48a:	9a df 12 00 00       	call   0x0:0x12df
   3d48f:	50                   	push   ax
   3d490:	6a 00                	push   0x0
   3d492:	68 00 80             	push   0x8000
   3d495:	9a 79 17 00 00       	call   0x0:0x1779
   3d49a:	99                   	cwd
   3d49b:	50                   	push   ax
   3d49c:	52                   	push   dx
   3d49d:	33 d2                	xor    dx,dx
   3d49f:	b8 50 00             	mov    ax,0x50
   3d4a2:	59                   	pop    cx
   3d4a3:	5b                   	pop    bx
   3d4a4:	9a 42 12 00 00       	call   0x0:0x1242
   3d4a9:	52                   	push   dx
   3d4aa:	50                   	push   ax
   3d4ab:	9a df 12 00 00       	call   0x0:0x12df
   3d4b0:	5a                   	pop    dx
   3d4b1:	03 d0                	add    dx,ax
   3d4b3:	52                   	push   dx
   3d4b4:	6a 00                	push   0x0
   3d4b6:	68 00 80             	push   0x8000
   3d4b9:	9a 79 17 00 00       	call   0x0:0x1779
   3d4be:	99                   	cwd
   3d4bf:	50                   	push   ax
   3d4c0:	52                   	push   dx
   3d4c1:	33 d2                	xor    dx,dx
   3d4c3:	b8 64 00             	mov    ax,0x64
   3d4c6:	59                   	pop    cx
   3d4c7:	5b                   	pop    bx
   3d4c8:	9a 42 12 00 00       	call   0x0:0x1242
   3d4cd:	52                   	push   dx
   3d4ce:	50                   	push   ax
   3d4cf:	9a df 12 00 00       	call   0x0:0x12df
   3d4d4:	5a                   	pop    dx
   3d4d5:	03 d0                	add    dx,ax
   3d4d7:	81 c2 96 00          	add    dx,0x96
   3d4db:	b8 88 01             	mov    ax,0x188
   3d4de:	8e c0                	mov    es,ax
   3d4e0:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d4e5:	6b db 5c             	imul   bx,bx,0x5c
   3d4e8:	b8 88 01             	mov    ax,0x188
   3d4eb:	8e c0                	mov    es,ax
   3d4ed:	26 8b 87 ca 99       	mov    ax,WORD PTR es:[bx-0x6636]
   3d4f2:	bb 88 01             	mov    bx,0x188
   3d4f5:	8e c3                	mov    es,bx
   3d4f7:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d4fc:	6b db 5c             	imul   bx,bx,0x5c
   3d4ff:	b9 88 01             	mov    cx,0x188
   3d502:	8e c1                	mov    es,cx
   3d504:	26 03 87 cc 99       	add    ax,WORD PTR es:[bx-0x6634]
   3d509:	2b d0                	sub    dx,ax
   3d50b:	b8 88 01             	mov    ax,0x188
   3d50e:	8e c0                	mov    es,ax
   3d510:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d515:	6b db 24             	imul   bx,bx,0x24
   3d518:	b8 88 01             	mov    ax,0x188
   3d51b:	8e c0                	mov    es,ax
   3d51d:	26 8b 87 80 9b       	mov    ax,WORD PTR es:[bx-0x6480]
   3d522:	6b c0 0a             	imul   ax,ax,0xa
   3d525:	03 d0                	add    dx,ax
   3d527:	b8 88 01             	mov    ax,0x188
   3d52a:	8e c0                	mov    es,ax
   3d52c:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d531:	6b db 5c             	imul   bx,bx,0x5c
   3d534:	b8 88 01             	mov    ax,0x188
   3d537:	8e c0                	mov    es,ax
   3d539:	26 89 97 ba 99       	mov    WORD PTR es:[bx-0x6646],dx
   3d53e:	6a 00                	push   0x0
   3d540:	68 00 80             	push   0x8000
   3d543:	9a 79 17 00 00       	call   0x0:0x1779
   3d548:	99                   	cwd
   3d549:	50                   	push   ax
   3d54a:	52                   	push   dx
   3d54b:	33 d2                	xor    dx,dx
   3d54d:	b8 c8 00             	mov    ax,0xc8
   3d550:	59                   	pop    cx
   3d551:	5b                   	pop    bx
   3d552:	9a 42 12 00 00       	call   0x0:0x1242
   3d557:	52                   	push   dx
   3d558:	50                   	push   ax
   3d559:	9a df 12 00 00       	call   0x0:0x12df
   3d55e:	50                   	push   ax
   3d55f:	6a 00                	push   0x0
   3d561:	68 00 80             	push   0x8000
   3d564:	9a 79 17 00 00       	call   0x0:0x1779
   3d569:	99                   	cwd
   3d56a:	50                   	push   ax
   3d56b:	52                   	push   dx
   3d56c:	33 d2                	xor    dx,dx
   3d56e:	b8 c8 00             	mov    ax,0xc8
   3d571:	59                   	pop    cx
   3d572:	5b                   	pop    bx
   3d573:	9a 42 12 00 00       	call   0x0:0x1242
   3d578:	52                   	push   dx
   3d579:	50                   	push   ax
   3d57a:	9a df 12 00 00       	call   0x0:0x12df
   3d57f:	5a                   	pop    dx
   3d580:	03 d0                	add    dx,ax
   3d582:	b8 88 01             	mov    ax,0x188
   3d585:	8e c0                	mov    es,ax
   3d587:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d58c:	6b db 5c             	imul   bx,bx,0x5c
   3d58f:	b8 88 01             	mov    ax,0x188
   3d592:	8e c0                	mov    es,ax
   3d594:	26 8b 87 cc 99       	mov    ax,WORD PTR es:[bx-0x6634]
   3d599:	bb 88 01             	mov    bx,0x188
   3d59c:	8e c3                	mov    es,bx
   3d59e:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d5a3:	6b db 5c             	imul   bx,bx,0x5c
   3d5a6:	b9 88 01             	mov    cx,0x188
   3d5a9:	8e c1                	mov    es,cx
   3d5ab:	26 03 87 ca 99       	add    ax,WORD PTR es:[bx-0x6636]
   3d5b0:	2b d0                	sub    dx,ax
   3d5b2:	b8 88 01             	mov    ax,0x188
   3d5b5:	8e c0                	mov    es,ax
   3d5b7:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d5bc:	6b db 5c             	imul   bx,bx,0x5c
   3d5bf:	b8 88 01             	mov    ax,0x188
   3d5c2:	8e c0                	mov    es,ax
   3d5c4:	26 8b 87 b0 99       	mov    ax,WORD PTR es:[bx-0x6650]
   3d5c9:	bb 04 00             	mov    bx,0x4
   3d5cc:	52                   	push   dx
   3d5cd:	99                   	cwd
   3d5ce:	f7 fb                	idiv   bx
   3d5d0:	5a                   	pop    dx
   3d5d1:	2b d0                	sub    dx,ax
   3d5d3:	b8 88 01             	mov    ax,0x188
   3d5d6:	8e c0                	mov    es,ax
   3d5d8:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d5dd:	6b db 5c             	imul   bx,bx,0x5c
   3d5e0:	b8 88 01             	mov    ax,0x188
   3d5e3:	8e c0                	mov    es,ax
   3d5e5:	26 8b 87 b6 99       	mov    ax,WORD PTR es:[bx-0x664a]
   3d5ea:	bb 04 00             	mov    bx,0x4
   3d5ed:	52                   	push   dx
   3d5ee:	99                   	cwd
   3d5ef:	f7 fb                	idiv   bx
   3d5f1:	5a                   	pop    dx
   3d5f2:	03 d0                	add    dx,ax
   3d5f4:	b8 88 01             	mov    ax,0x188
   3d5f7:	8e c0                	mov    es,ax
   3d5f9:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d5fe:	6b db 24             	imul   bx,bx,0x24
   3d601:	b8 88 01             	mov    ax,0x188
   3d604:	8e c0                	mov    es,ax
   3d606:	26 8b 87 82 9b       	mov    ax,WORD PTR es:[bx-0x647e]
   3d60b:	6b c0 0a             	imul   ax,ax,0xa
   3d60e:	03 d0                	add    dx,ax
   3d610:	b8 88 01             	mov    ax,0x188
   3d613:	8e c0                	mov    es,ax
   3d615:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d61a:	6b db 5c             	imul   bx,bx,0x5c
   3d61d:	b8 88 01             	mov    ax,0x188
   3d620:	8e c0                	mov    es,ax
   3d622:	26 89 97 b8 99       	mov    WORD PTR es:[bx-0x6648],dx
   3d627:	6a 00                	push   0x0
   3d629:	68 00 80             	push   0x8000
   3d62c:	9a 79 17 00 00       	call   0x0:0x1779
   3d631:	99                   	cwd
   3d632:	50                   	push   ax
   3d633:	52                   	push   dx
   3d634:	33 d2                	xor    dx,dx
   3d636:	b8 96 00             	mov    ax,0x96
   3d639:	59                   	pop    cx
   3d63a:	5b                   	pop    bx
   3d63b:	9a 42 12 00 00       	call   0x0:0x1242
   3d640:	52                   	push   dx
   3d641:	50                   	push   ax
   3d642:	9a df 12 00 00       	call   0x0:0x12df
   3d647:	50                   	push   ax
   3d648:	6a 00                	push   0x0
   3d64a:	68 00 80             	push   0x8000
   3d64d:	9a 79 17 00 00       	call   0x0:0x1779
   3d652:	99                   	cwd
   3d653:	50                   	push   ax
   3d654:	52                   	push   dx
   3d655:	33 d2                	xor    dx,dx
   3d657:	b8 96 00             	mov    ax,0x96
   3d65a:	59                   	pop    cx
   3d65b:	5b                   	pop    bx
   3d65c:	9a 42 12 00 00       	call   0x0:0x1242
   3d661:	52                   	push   dx
   3d662:	50                   	push   ax
   3d663:	9a df 12 00 00       	call   0x0:0x12df
   3d668:	5a                   	pop    dx
   3d669:	03 d0                	add    dx,ax
   3d66b:	b8 88 01             	mov    ax,0x188
   3d66e:	8e c0                	mov    es,ax
   3d670:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d675:	6b db 5c             	imul   bx,bx,0x5c
   3d678:	b8 88 01             	mov    ax,0x188
   3d67b:	8e c0                	mov    es,ax
   3d67d:	26 8b 87 b4 99       	mov    ax,WORD PTR es:[bx-0x664c]
   3d682:	bb 02 00             	mov    bx,0x2
   3d685:	52                   	push   dx
   3d686:	99                   	cwd
   3d687:	f7 fb                	idiv   bx
   3d689:	5a                   	pop    dx
   3d68a:	2b d0                	sub    dx,ax
   3d68c:	b8 88 01             	mov    ax,0x188
   3d68f:	8e c0                	mov    es,ax
   3d691:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d696:	6b db 24             	imul   bx,bx,0x24
   3d699:	b8 88 01             	mov    ax,0x188
   3d69c:	8e c0                	mov    es,ax
   3d69e:	26 8b 87 84 9b       	mov    ax,WORD PTR es:[bx-0x647c]
   3d6a3:	6b c0 0a             	imul   ax,ax,0xa
   3d6a6:	03 d0                	add    dx,ax
   3d6a8:	b8 88 01             	mov    ax,0x188
   3d6ab:	8e c0                	mov    es,ax
   3d6ad:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d6b2:	6b db 5c             	imul   bx,bx,0x5c
   3d6b5:	b8 88 01             	mov    ax,0x188
   3d6b8:	8e c0                	mov    es,ax
   3d6ba:	26 89 97 c0 99       	mov    WORD PTR es:[bx-0x6640],dx
   3d6bf:	6a 00                	push   0x0
   3d6c1:	68 00 80             	push   0x8000
   3d6c4:	9a 79 17 00 00       	call   0x0:0x1779
   3d6c9:	99                   	cwd
   3d6ca:	50                   	push   ax
   3d6cb:	52                   	push   dx
   3d6cc:	33 d2                	xor    dx,dx
   3d6ce:	b8 96 00             	mov    ax,0x96
   3d6d1:	59                   	pop    cx
   3d6d2:	5b                   	pop    bx
   3d6d3:	9a 42 12 00 00       	call   0x0:0x1242
   3d6d8:	52                   	push   dx
   3d6d9:	50                   	push   ax
   3d6da:	9a df 12 00 00       	call   0x0:0x12df
   3d6df:	50                   	push   ax
   3d6e0:	6a 00                	push   0x0
   3d6e2:	68 00 80             	push   0x8000
   3d6e5:	9a 79 17 00 00       	call   0x0:0x1779
   3d6ea:	99                   	cwd
   3d6eb:	50                   	push   ax
   3d6ec:	52                   	push   dx
   3d6ed:	33 d2                	xor    dx,dx
   3d6ef:	b8 96 00             	mov    ax,0x96
   3d6f2:	59                   	pop    cx
   3d6f3:	5b                   	pop    bx
   3d6f4:	9a 42 12 00 00       	call   0x0:0x1242
   3d6f9:	52                   	push   dx
   3d6fa:	50                   	push   ax
   3d6fb:	9a df 12 00 00       	call   0x0:0x12df
   3d700:	5a                   	pop    dx
   3d701:	03 d0                	add    dx,ax
   3d703:	b8 88 01             	mov    ax,0x188
   3d706:	8e c0                	mov    es,ax
   3d708:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d70d:	6b db 5c             	imul   bx,bx,0x5c
   3d710:	b8 88 01             	mov    ax,0x188
   3d713:	8e c0                	mov    es,ax
   3d715:	26 8b 87 aa 99       	mov    ax,WORD PTR es:[bx-0x6656]
   3d71a:	6b c0 32             	imul   ax,ax,0x32
   3d71d:	2b d0                	sub    dx,ax
   3d71f:	b8 88 01             	mov    ax,0x188
   3d722:	8e c0                	mov    es,ax
   3d724:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d729:	6b db 5c             	imul   bx,bx,0x5c
   3d72c:	b8 88 01             	mov    ax,0x188
   3d72f:	8e c0                	mov    es,ax
   3d731:	26 8b 87 c0 99       	mov    ax,WORD PTR es:[bx-0x6640]
   3d736:	bb 04 00             	mov    bx,0x4
   3d739:	52                   	push   dx
   3d73a:	99                   	cwd
   3d73b:	f7 fb                	idiv   bx
   3d73d:	5a                   	pop    dx
   3d73e:	2b d0                	sub    dx,ax
   3d740:	b8 88 01             	mov    ax,0x188
   3d743:	8e c0                	mov    es,ax
   3d745:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d74a:	6b db 24             	imul   bx,bx,0x24
   3d74d:	b8 88 01             	mov    ax,0x188
   3d750:	8e c0                	mov    es,ax
   3d752:	26 8b 87 86 9b       	mov    ax,WORD PTR es:[bx-0x647a]
   3d757:	6b c0 0a             	imul   ax,ax,0xa
   3d75a:	03 d0                	add    dx,ax
   3d75c:	b8 88 01             	mov    ax,0x188
   3d75f:	8e c0                	mov    es,ax
   3d761:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d766:	6b db 5c             	imul   bx,bx,0x5c
   3d769:	b8 88 01             	mov    ax,0x188
   3d76c:	8e c0                	mov    es,ax
   3d76e:	26 89 97 bc 99       	mov    WORD PTR es:[bx-0x6644],dx
   3d773:	6a 00                	push   0x0
   3d775:	68 00 80             	push   0x8000
   3d778:	9a 79 17 00 00       	call   0x0:0x1779
   3d77d:	99                   	cwd
   3d77e:	50                   	push   ax
   3d77f:	52                   	push   dx
   3d780:	33 d2                	xor    dx,dx
   3d782:	b8 97 00             	mov    ax,0x97
   3d785:	59                   	pop    cx
   3d786:	5b                   	pop    bx
   3d787:	9a 42 12 00 00       	call   0x0:0x1242
   3d78c:	52                   	push   dx
   3d78d:	50                   	push   ax
   3d78e:	9a df 12 00 00       	call   0x0:0x12df
   3d793:	ba 88 01             	mov    dx,0x188
   3d796:	8e c2                	mov    es,dx
   3d798:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d79d:	6b db 5c             	imul   bx,bx,0x5c
   3d7a0:	ba 88 01             	mov    dx,0x188
   3d7a3:	8e c2                	mov    es,dx
   3d7a5:	50                   	push   ax
   3d7a6:	26 8b 87 b4 99       	mov    ax,WORD PTR es:[bx-0x664c]
   3d7ab:	bb 04 00             	mov    bx,0x4
   3d7ae:	99                   	cwd
   3d7af:	f7 fb                	idiv   bx
   3d7b1:	5a                   	pop    dx
   3d7b2:	03 d0                	add    dx,ax
   3d7b4:	b8 88 01             	mov    ax,0x188
   3d7b7:	8e c0                	mov    es,ax
   3d7b9:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d7be:	6b db 24             	imul   bx,bx,0x24
   3d7c1:	b8 88 01             	mov    ax,0x188
   3d7c4:	8e c0                	mov    es,ax
   3d7c6:	26 8b 87 88 9b       	mov    ax,WORD PTR es:[bx-0x6478]
   3d7cb:	6b c0 0a             	imul   ax,ax,0xa
   3d7ce:	03 d0                	add    dx,ax
   3d7d0:	b8 88 01             	mov    ax,0x188
   3d7d3:	8e c0                	mov    es,ax
   3d7d5:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d7da:	6b db 5c             	imul   bx,bx,0x5c
   3d7dd:	b8 88 01             	mov    ax,0x188
   3d7e0:	8e c0                	mov    es,ax
   3d7e2:	26 89 97 be 99       	mov    WORD PTR es:[bx-0x6642],dx
   3d7e7:	6a 00                	push   0x0
   3d7e9:	68 00 80             	push   0x8000
   3d7ec:	9a 79 17 00 00       	call   0x0:0x1779
   3d7f1:	99                   	cwd
   3d7f2:	50                   	push   ax
   3d7f3:	52                   	push   dx
   3d7f4:	33 d2                	xor    dx,dx
   3d7f6:	b8 c9 00             	mov    ax,0xc9
   3d7f9:	59                   	pop    cx
   3d7fa:	5b                   	pop    bx
   3d7fb:	9a 42 12 00 00       	call   0x0:0x1242
   3d800:	52                   	push   dx
   3d801:	50                   	push   ax
   3d802:	9a df 12 00 00       	call   0x0:0x12df
   3d807:	ba 88 01             	mov    dx,0x188
   3d80a:	8e c2                	mov    es,dx
   3d80c:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d811:	6b db 5c             	imul   bx,bx,0x5c
   3d814:	ba 88 01             	mov    dx,0x188
   3d817:	8e c2                	mov    es,dx
   3d819:	50                   	push   ax
   3d81a:	26 8b 87 b6 99       	mov    ax,WORD PTR es:[bx-0x664a]
   3d81f:	bb 04 00             	mov    bx,0x4
   3d822:	99                   	cwd
   3d823:	f7 fb                	idiv   bx
   3d825:	5a                   	pop    dx
   3d826:	03 d0                	add    dx,ax
   3d828:	b8 88 01             	mov    ax,0x188
   3d82b:	8e c0                	mov    es,ax
   3d82d:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d832:	6b db 5c             	imul   bx,bx,0x5c
   3d835:	b8 88 01             	mov    ax,0x188
   3d838:	8e c0                	mov    es,ax
   3d83a:	26 8b 87 b8 99       	mov    ax,WORD PTR es:[bx-0x6648]
   3d83f:	bb 04 00             	mov    bx,0x4
   3d842:	52                   	push   dx
   3d843:	99                   	cwd
   3d844:	f7 fb                	idiv   bx
   3d846:	5a                   	pop    dx
   3d847:	03 d0                	add    dx,ax
   3d849:	b8 88 01             	mov    ax,0x188
   3d84c:	8e c0                	mov    es,ax
   3d84e:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d853:	6b db 5c             	imul   bx,bx,0x5c
   3d856:	b8 88 01             	mov    ax,0x188
   3d859:	8e c0                	mov    es,ax
   3d85b:	26 8b 87 c0 99       	mov    ax,WORD PTR es:[bx-0x6640]
   3d860:	bb 04 00             	mov    bx,0x4
   3d863:	52                   	push   dx
   3d864:	99                   	cwd
   3d865:	f7 fb                	idiv   bx
   3d867:	5a                   	pop    dx
   3d868:	2b d0                	sub    dx,ax
   3d86a:	b8 88 01             	mov    ax,0x188
   3d86d:	8e c0                	mov    es,ax
   3d86f:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d874:	6b db 5c             	imul   bx,bx,0x5c
   3d877:	b8 88 01             	mov    ax,0x188
   3d87a:	8e c0                	mov    es,ax
   3d87c:	26 8b 87 b4 99       	mov    ax,WORD PTR es:[bx-0x664c]
   3d881:	bb 04 00             	mov    bx,0x4
   3d884:	52                   	push   dx
   3d885:	99                   	cwd
   3d886:	f7 fb                	idiv   bx
   3d888:	5a                   	pop    dx
   3d889:	2b d0                	sub    dx,ax
   3d88b:	b8 88 01             	mov    ax,0x188
   3d88e:	8e c0                	mov    es,ax
   3d890:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d895:	6b db 24             	imul   bx,bx,0x24
   3d898:	b8 88 01             	mov    ax,0x188
   3d89b:	8e c0                	mov    es,ax
   3d89d:	26 8b 87 8a 9b       	mov    ax,WORD PTR es:[bx-0x6476]
   3d8a2:	6b c0 0a             	imul   ax,ax,0xa
   3d8a5:	03 d0                	add    dx,ax
   3d8a7:	b8 88 01             	mov    ax,0x188
   3d8aa:	8e c0                	mov    es,ax
   3d8ac:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d8b1:	6b db 5c             	imul   bx,bx,0x5c
   3d8b4:	b8 88 01             	mov    ax,0x188
   3d8b7:	8e c0                	mov    es,ax
   3d8b9:	26 89 97 c2 99       	mov    WORD PTR es:[bx-0x663e],dx
   3d8be:	6a 00                	push   0x0
   3d8c0:	68 00 80             	push   0x8000
   3d8c3:	9a 79 17 00 00       	call   0x0:0x1779
   3d8c8:	99                   	cwd
   3d8c9:	50                   	push   ax
   3d8ca:	52                   	push   dx
   3d8cb:	33 d2                	xor    dx,dx
   3d8cd:	b8 c9 00             	mov    ax,0xc9
   3d8d0:	59                   	pop    cx
   3d8d1:	5b                   	pop    bx
   3d8d2:	9a 42 12 00 00       	call   0x0:0x1242
   3d8d7:	52                   	push   dx
   3d8d8:	50                   	push   ax
   3d8d9:	9a df 12 00 00       	call   0x0:0x12df
   3d8de:	ba 88 01             	mov    dx,0x188
   3d8e1:	8e c2                	mov    es,dx
   3d8e3:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d8e8:	6b db 5c             	imul   bx,bx,0x5c
   3d8eb:	ba 88 01             	mov    dx,0x188
   3d8ee:	8e c2                	mov    es,dx
   3d8f0:	26 8b 97 aa 99       	mov    dx,WORD PTR es:[bx-0x6656]
   3d8f5:	4a                   	dec    dx
   3d8f6:	6b d2 32             	imul   dx,dx,0x32
   3d8f9:	03 c2                	add    ax,dx
   3d8fb:	ba 88 01             	mov    dx,0x188
   3d8fe:	8e c2                	mov    es,dx
   3d900:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d905:	6b db 5c             	imul   bx,bx,0x5c
   3d908:	ba 88 01             	mov    dx,0x188
   3d90b:	8e c2                	mov    es,dx
   3d90d:	26 8b 97 cc 99       	mov    dx,WORD PTR es:[bx-0x6634]
   3d912:	d1 e2                	shl    dx,1
   3d914:	2b c2                	sub    ax,dx
   3d916:	ba 88 01             	mov    dx,0x188
   3d919:	8e c2                	mov    es,dx
   3d91b:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d920:	6b db 5c             	imul   bx,bx,0x5c
   3d923:	ba 88 01             	mov    dx,0x188
   3d926:	8e c2                	mov    es,dx
   3d928:	50                   	push   ax
   3d929:	26 8b 87 ca 99       	mov    ax,WORD PTR es:[bx-0x6636]
   3d92e:	bb 04 00             	mov    bx,0x4
   3d931:	99                   	cwd
   3d932:	f7 fb                	idiv   bx
   3d934:	5a                   	pop    dx
   3d935:	03 d0                	add    dx,ax
   3d937:	b8 88 01             	mov    ax,0x188
   3d93a:	8e c0                	mov    es,ax
   3d93c:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d941:	6b db 24             	imul   bx,bx,0x24
   3d944:	b8 88 01             	mov    ax,0x188
   3d947:	8e c0                	mov    es,ax
   3d949:	26 8b 87 8c 9b       	mov    ax,WORD PTR es:[bx-0x6474]
   3d94e:	6b c0 14             	imul   ax,ax,0x14
   3d951:	03 d0                	add    dx,ax
   3d953:	b8 88 01             	mov    ax,0x188
   3d956:	8e c0                	mov    es,ax
   3d958:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d95d:	6b db 5c             	imul   bx,bx,0x5c
   3d960:	b8 88 01             	mov    ax,0x188
   3d963:	8e c0                	mov    es,ax
   3d965:	26 89 97 c4 99       	mov    WORD PTR es:[bx-0x663c],dx
   3d96a:	6a 00                	push   0x0
   3d96c:	68 00 80             	push   0x8000
   3d96f:	9a 79 17 00 00       	call   0x0:0x1779
   3d974:	99                   	cwd
   3d975:	50                   	push   ax
   3d976:	52                   	push   dx
   3d977:	33 d2                	xor    dx,dx
   3d979:	b8 fb 00             	mov    ax,0xfb
   3d97c:	59                   	pop    cx
   3d97d:	5b                   	pop    bx
   3d97e:	9a 42 12 00 00       	call   0x0:0x1242
   3d983:	52                   	push   dx
   3d984:	50                   	push   ax
   3d985:	9a df 12 00 00       	call   0x0:0x12df
   3d98a:	ba 88 01             	mov    dx,0x188
   3d98d:	8e c2                	mov    es,dx
   3d98f:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d994:	6b db 5c             	imul   bx,bx,0x5c
   3d997:	ba 88 01             	mov    dx,0x188
   3d99a:	8e c2                	mov    es,dx
   3d99c:	50                   	push   ax
   3d99d:	26 8b 87 c0 99       	mov    ax,WORD PTR es:[bx-0x6640]
   3d9a2:	bb 04 00             	mov    bx,0x4
   3d9a5:	99                   	cwd
   3d9a6:	f7 fb                	idiv   bx
   3d9a8:	5a                   	pop    dx
   3d9a9:	2b d0                	sub    dx,ax
   3d9ab:	b8 88 01             	mov    ax,0x188
   3d9ae:	8e c0                	mov    es,ax
   3d9b0:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d9b5:	6b db 5c             	imul   bx,bx,0x5c
   3d9b8:	b8 88 01             	mov    ax,0x188
   3d9bb:	8e c0                	mov    es,ax
   3d9bd:	26 8b 87 b4 99       	mov    ax,WORD PTR es:[bx-0x664c]
   3d9c2:	bb 04 00             	mov    bx,0x4
   3d9c5:	52                   	push   dx
   3d9c6:	99                   	cwd
   3d9c7:	f7 fb                	idiv   bx
   3d9c9:	5a                   	pop    dx
   3d9ca:	2b d0                	sub    dx,ax
   3d9cc:	b8 88 01             	mov    ax,0x188
   3d9cf:	8e c0                	mov    es,ax
   3d9d1:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d9d6:	6b db 24             	imul   bx,bx,0x24
   3d9d9:	b8 88 01             	mov    ax,0x188
   3d9dc:	8e c0                	mov    es,ax
   3d9de:	26 8b 87 8e 9b       	mov    ax,WORD PTR es:[bx-0x6472]
   3d9e3:	6b c0 0a             	imul   ax,ax,0xa
   3d9e6:	03 d0                	add    dx,ax
   3d9e8:	b8 88 01             	mov    ax,0x188
   3d9eb:	8e c0                	mov    es,ax
   3d9ed:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d9f2:	6b db 5c             	imul   bx,bx,0x5c
   3d9f5:	b8 88 01             	mov    ax,0x188
   3d9f8:	8e c0                	mov    es,ax
   3d9fa:	26 89 97 c6 99       	mov    WORD PTR es:[bx-0x663a],dx
   3d9ff:	6a 00                	push   0x0
   3da01:	68 00 80             	push   0x8000
   3da04:	9a 79 17 00 00       	call   0x0:0x1779
   3da09:	99                   	cwd
   3da0a:	50                   	push   ax
   3da0b:	52                   	push   dx
   3da0c:	33 d2                	xor    dx,dx
   3da0e:	b8 97 00             	mov    ax,0x97
   3da11:	59                   	pop    cx
   3da12:	5b                   	pop    bx
   3da13:	9a 42 12 00 00       	call   0x0:0x1242
   3da18:	52                   	push   dx
   3da19:	50                   	push   ax
   3da1a:	9a df 12 00 00       	call   0x0:0x12df
   3da1f:	05 32 00             	add    ax,0x32
   3da22:	ba 88 01             	mov    dx,0x188
   3da25:	8e c2                	mov    es,dx
   3da27:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3da2c:	6b db 5c             	imul   bx,bx,0x5c
   3da2f:	ba 88 01             	mov    dx,0x188
   3da32:	8e c2                	mov    es,dx
   3da34:	26 89 87 c8 99       	mov    WORD PTR es:[bx-0x6638],ax
   3da39:	6a 00                	push   0x0
   3da3b:	68 00 80             	push   0x8000
   3da3e:	9a 79 17 00 00       	call   0x0:0x1779
   3da43:	99                   	cwd
   3da44:	50                   	push   ax
   3da45:	52                   	push   dx
   3da46:	33 d2                	xor    dx,dx
   3da48:	b8 06 00             	mov    ax,0x6
   3da4b:	59                   	pop    cx
   3da4c:	5b                   	pop    bx
   3da4d:	9a 42 12 00 00       	call   0x0:0x1242
   3da52:	52                   	push   dx
   3da53:	50                   	push   ax
   3da54:	9a df 12 00 00       	call   0x0:0x12df
   3da59:	05 0f 00             	add    ax,0xf
   3da5c:	ba 88 01             	mov    dx,0x188
   3da5f:	8e c2                	mov    es,dx
   3da61:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3da66:	6b db 5c             	imul   bx,bx,0x5c
   3da69:	ba 88 01             	mov    dx,0x188
   3da6c:	8e c2                	mov    es,dx
   3da6e:	26 89 87 ce 99       	mov    WORD PTR es:[bx-0x6632],ax
   3da73:	b8 88 01             	mov    ax,0x188
   3da76:	8e c0                	mov    es,ax
   3da78:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3da7d:	6b db 24             	imul   bx,bx,0x24
   3da80:	b8 88 01             	mov    ax,0x188
   3da83:	8e c0                	mov    es,ax
   3da85:	26 8b 87 90 9b       	mov    ax,WORD PTR es:[bx-0x6470]
   3da8a:	ba 88 01             	mov    dx,0x188
   3da8d:	8e c2                	mov    es,dx
   3da8f:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3da94:	6b db 5c             	imul   bx,bx,0x5c
   3da97:	ba 88 01             	mov    dx,0x188
   3da9a:	8e c2                	mov    es,dx
   3da9c:	26 89 87 d2 99       	mov    WORD PTR es:[bx-0x662e],ax
   3daa1:	c7 46 fe 03 00       	mov    WORD PTR [bp-0x2],0x3
   3daa6:	e9 95 00             	jmp    0x3db3e
   3daa9:	83 7e fe 06          	cmp    WORD PTR [bp-0x2],0x6
   3daad:	74 2a                	je     0x3dad9
   3daaf:	b8 88 01             	mov    ax,0x188
   3dab2:	8e c0                	mov    es,ax
   3dab4:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3dab9:	6b db 5c             	imul   bx,bx,0x5c
   3dabc:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3dabf:	d1 e0                	shl    ax,1
   3dac1:	03 d8                	add    bx,ax
   3dac3:	b8 88 01             	mov    ax,0x188
   3dac6:	8e c0                	mov    es,ax
   3dac8:	26 83 bf a6 99 32    	cmp    WORD PTR es:[bx-0x665a],0x32
   3dace:	7d 05                	jge    0x3dad5
   3dad0:	b8 32 00             	mov    ax,0x32
   3dad3:	eb 48                	jmp    0x3db1d
   3dad5:	eb 28                	jmp    0x3daff
   3dad7:	eb 44                	jmp    0x3db1d
   3dad9:	b8 88 01             	mov    ax,0x188
   3dadc:	8e c0                	mov    es,ax
   3dade:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3dae3:	6b db 5c             	imul   bx,bx,0x5c
   3dae6:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3dae9:	d1 e0                	shl    ax,1
   3daeb:	03 d8                	add    bx,ax
   3daed:	b8 88 01             	mov    ax,0x188
   3daf0:	8e c0                	mov    es,ax
   3daf2:	26 83 bf a6 99 03    	cmp    WORD PTR es:[bx-0x665a],0x3
   3daf8:	7d 05                	jge    0x3daff
   3dafa:	b8 03 00             	mov    ax,0x3
   3dafd:	eb d4                	jmp    0x3dad3
   3daff:	b8 88 01             	mov    ax,0x188
   3db02:	8e c0                	mov    es,ax
   3db04:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3db09:	6b db 5c             	imul   bx,bx,0x5c
   3db0c:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3db0f:	d1 e0                	shl    ax,1
   3db11:	03 d8                	add    bx,ax
   3db13:	b8 88 01             	mov    ax,0x188
   3db16:	8e c0                	mov    es,ax
   3db18:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   3db1d:	ba 88 01             	mov    dx,0x188
   3db20:	8e c2                	mov    es,dx
   3db22:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3db27:	6b db 5c             	imul   bx,bx,0x5c
   3db2a:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   3db2d:	d1 e2                	shl    dx,1
   3db2f:	03 da                	add    bx,dx
   3db31:	ba 88 01             	mov    dx,0x188
   3db34:	8e c2                	mov    es,dx
   3db36:	26 89 87 a6 99       	mov    WORD PTR es:[bx-0x665a],ax
   3db3b:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   3db3e:	83 7e fe 10          	cmp    WORD PTR [bp-0x2],0x10
   3db42:	7f 03                	jg     0x3db47
   3db44:	e9 62 ff             	jmp    0x3daa9
   3db47:	90                   	nop
   3db48:	0e                   	push   cs
   3db49:	e8 02 00             	call   0x3db4e
   3db4c:	c9                   	leave
   3db4d:	cb                   	retf
   3db4e:	55                   	push   bp
   3db4f:	8b ec                	mov    bp,sp
   3db51:	83 ec 06             	sub    sp,0x6
   3db54:	68 e0 01             	push   0x1e0
   3db57:	68 d0 02             	push   0x2d0
   3db5a:	6a 06                	push   0x6
   3db5c:	6a 01                	push   0x1
   3db5e:	6a 13                	push   0x13
   3db60:	6a 78                	push   0x78
   3db62:	68 8d 00             	push   0x8d
   3db65:	68 c8 00             	push   0xc8
   3db68:	6a 13                	push   0x13
   3db6a:	6a 78                	push   0x78
   3db6c:	9a 30 04 28 00       	call   0x28:0x430
   3db71:	83 c4 14             	add    sp,0x14
   3db74:	6a 0a                	push   0xa
   3db76:	b8 88 01             	mov    ax,0x188
   3db79:	8e c0                	mov    es,ax
   3db7b:	26 a0 66 96          	mov    al,es:0x9666
   3db7f:	b4 00                	mov    ah,0x0
   3db81:	50                   	push   ax
   3db82:	6a 01                	push   0x1
   3db84:	6a 23                	push   0x23
   3db86:	6a 0a                	push   0xa
   3db88:	16                   	push   ss
   3db89:	8d 46 fa             	lea    ax,[bp-0x6]
   3db8c:	50                   	push   ax
   3db8d:	b8 88 01             	mov    ax,0x188
   3db90:	8e c0                	mov    es,ax
   3db92:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3db97:	6b db 5c             	imul   bx,bx,0x5c
   3db9a:	b8 88 01             	mov    ax,0x188
   3db9d:	8e c0                	mov    es,ax
   3db9f:	26 ff b7 ca 99       	push   WORD PTR es:[bx-0x6636]
   3dba4:	9a 58 3f 00 00       	call   0x0:0x3f58
   3dba9:	83 c4 08             	add    sp,0x8
   3dbac:	52                   	push   dx
   3dbad:	50                   	push   ax
   3dbae:	9a 52 00 38 01       	call   0x138:0x52
   3dbb3:	83 c4 0c             	add    sp,0xc
   3dbb6:	6a 0a                	push   0xa
   3dbb8:	b8 88 01             	mov    ax,0x188
   3dbbb:	8e c0                	mov    es,ax
   3dbbd:	26 a0 66 96          	mov    al,es:0x9666
   3dbc1:	b4 00                	mov    ah,0x0
   3dbc3:	50                   	push   ax
   3dbc4:	6a 02                	push   0x2
   3dbc6:	6a 23                	push   0x23
   3dbc8:	6a 0a                	push   0xa
   3dbca:	16                   	push   ss
   3dbcb:	8d 46 fa             	lea    ax,[bp-0x6]
   3dbce:	50                   	push   ax
   3dbcf:	b8 88 01             	mov    ax,0x188
   3dbd2:	8e c0                	mov    es,ax
   3dbd4:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3dbd9:	6b db 5c             	imul   bx,bx,0x5c
   3dbdc:	b8 88 01             	mov    ax,0x188
   3dbdf:	8e c0                	mov    es,ax
   3dbe1:	26 ff b7 cc 99       	push   WORD PTR es:[bx-0x6634]
   3dbe6:	9a 58 3f 00 00       	call   0x0:0x3f58
   3dbeb:	83 c4 08             	add    sp,0x8
   3dbee:	52                   	push   dx
   3dbef:	50                   	push   ax
   3dbf0:	9a 52 00 38 01       	call   0x138:0x52
   3dbf5:	83 c4 0c             	add    sp,0xc
   3dbf8:	6a 0a                	push   0xa
   3dbfa:	b8 88 01             	mov    ax,0x188
   3dbfd:	8e c0                	mov    es,ax
   3dbff:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3dc04:	6b db 5c             	imul   bx,bx,0x5c
   3dc07:	b8 88 01             	mov    ax,0x188
   3dc0a:	8e c0                	mov    es,ax
   3dc0c:	26 8b 87 b4 99       	mov    ax,WORD PTR es:[bx-0x664c]
   3dc11:	3b 06 bc 48          	cmp    ax,WORD PTR ds:0x48bc
   3dc15:	7e 05                	jle    0x3dc1c
   3dc17:	b8 48 00             	mov    ax,0x48
   3dc1a:	eb 2d                	jmp    0x3dc49
   3dc1c:	b8 88 01             	mov    ax,0x188
   3dc1f:	8e c0                	mov    es,ax
   3dc21:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3dc26:	6b db 5c             	imul   bx,bx,0x5c
   3dc29:	b8 88 01             	mov    ax,0x188
   3dc2c:	8e c0                	mov    es,ax
   3dc2e:	26 8b 87 b4 99       	mov    ax,WORD PTR es:[bx-0x664c]
   3dc33:	3b 06 d4 48          	cmp    ax,WORD PTR ds:0x48d4
   3dc37:	7d 05                	jge    0x3dc3e
   3dc39:	b8 de 00             	mov    ax,0xde
   3dc3c:	eb 0b                	jmp    0x3dc49
   3dc3e:	b8 88 01             	mov    ax,0x188
   3dc41:	8e c0                	mov    es,ax
   3dc43:	26 a0 66 96          	mov    al,es:0x9666
   3dc47:	b4 00                	mov    ah,0x0
   3dc49:	50                   	push   ax
   3dc4a:	6a 03                	push   0x3
   3dc4c:	6a 23                	push   0x23
   3dc4e:	6a 0a                	push   0xa
   3dc50:	16                   	push   ss
   3dc51:	8d 46 fa             	lea    ax,[bp-0x6]
   3dc54:	50                   	push   ax
   3dc55:	b8 88 01             	mov    ax,0x188
   3dc58:	8e c0                	mov    es,ax
   3dc5a:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3dc5f:	6b db 5c             	imul   bx,bx,0x5c
   3dc62:	b8 88 01             	mov    ax,0x188
   3dc65:	8e c0                	mov    es,ax
   3dc67:	26 ff b7 b4 99       	push   WORD PTR es:[bx-0x664c]
   3dc6c:	9a 58 3f 00 00       	call   0x0:0x3f58
   3dc71:	83 c4 08             	add    sp,0x8
   3dc74:	52                   	push   dx
   3dc75:	50                   	push   ax
   3dc76:	9a 52 00 38 01       	call   0x138:0x52
   3dc7b:	83 c4 0c             	add    sp,0xc
   3dc7e:	6a 0a                	push   0xa
   3dc80:	b8 88 01             	mov    ax,0x188
   3dc83:	8e c0                	mov    es,ax
   3dc85:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3dc8a:	6b db 5c             	imul   bx,bx,0x5c
   3dc8d:	b8 88 01             	mov    ax,0x188
   3dc90:	8e c0                	mov    es,ax
   3dc92:	26 8b 87 b6 99       	mov    ax,WORD PTR es:[bx-0x664a]
   3dc97:	3b 06 be 48          	cmp    ax,WORD PTR ds:0x48be
   3dc9b:	7e 05                	jle    0x3dca2
   3dc9d:	b8 48 00             	mov    ax,0x48
   3dca0:	eb 2d                	jmp    0x3dccf
   3dca2:	b8 88 01             	mov    ax,0x188
   3dca5:	8e c0                	mov    es,ax
   3dca7:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3dcac:	6b db 5c             	imul   bx,bx,0x5c
   3dcaf:	b8 88 01             	mov    ax,0x188
   3dcb2:	8e c0                	mov    es,ax
   3dcb4:	26 8b 87 b6 99       	mov    ax,WORD PTR es:[bx-0x664a]
   3dcb9:	3b 06 d6 48          	cmp    ax,WORD PTR ds:0x48d6
   3dcbd:	7d 05                	jge    0x3dcc4
   3dcbf:	b8 de 00             	mov    ax,0xde
   3dcc2:	eb 0b                	jmp    0x3dccf
   3dcc4:	b8 88 01             	mov    ax,0x188
   3dcc7:	8e c0                	mov    es,ax
   3dcc9:	26 a0 66 96          	mov    al,es:0x9666
   3dccd:	b4 00                	mov    ah,0x0
   3dccf:	50                   	push   ax
   3dcd0:	6a 04                	push   0x4
   3dcd2:	6a 23                	push   0x23
   3dcd4:	6a 0a                	push   0xa
   3dcd6:	16                   	push   ss
   3dcd7:	8d 46 fa             	lea    ax,[bp-0x6]
   3dcda:	50                   	push   ax
   3dcdb:	b8 88 01             	mov    ax,0x188
   3dcde:	8e c0                	mov    es,ax
   3dce0:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3dce5:	6b db 5c             	imul   bx,bx,0x5c
   3dce8:	b8 88 01             	mov    ax,0x188
   3dceb:	8e c0                	mov    es,ax
   3dced:	26 ff b7 b6 99       	push   WORD PTR es:[bx-0x664a]
   3dcf2:	9a 58 3f 00 00       	call   0x0:0x3f58
   3dcf7:	83 c4 08             	add    sp,0x8
   3dcfa:	52                   	push   dx
   3dcfb:	50                   	push   ax
   3dcfc:	9a 52 00 38 01       	call   0x138:0x52
   3dd01:	83 c4 0c             	add    sp,0xc
   3dd04:	6a 0a                	push   0xa
   3dd06:	b8 88 01             	mov    ax,0x188
   3dd09:	8e c0                	mov    es,ax
   3dd0b:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3dd10:	6b db 5c             	imul   bx,bx,0x5c
   3dd13:	b8 88 01             	mov    ax,0x188
   3dd16:	8e c0                	mov    es,ax
   3dd18:	26 8b 87 b0 99       	mov    ax,WORD PTR es:[bx-0x6650]
   3dd1d:	3b 06 b8 48          	cmp    ax,WORD PTR ds:0x48b8
   3dd21:	7e 05                	jle    0x3dd28
   3dd23:	b8 48 00             	mov    ax,0x48
   3dd26:	eb 2d                	jmp    0x3dd55
   3dd28:	b8 88 01             	mov    ax,0x188
   3dd2b:	8e c0                	mov    es,ax
   3dd2d:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3dd32:	6b db 5c             	imul   bx,bx,0x5c
   3dd35:	b8 88 01             	mov    ax,0x188
   3dd38:	8e c0                	mov    es,ax
   3dd3a:	26 8b 87 b0 99       	mov    ax,WORD PTR es:[bx-0x6650]
   3dd3f:	3b 06 d0 48          	cmp    ax,WORD PTR ds:0x48d0
   3dd43:	7d 05                	jge    0x3dd4a
   3dd45:	b8 de 00             	mov    ax,0xde
   3dd48:	eb 0b                	jmp    0x3dd55
   3dd4a:	b8 88 01             	mov    ax,0x188
   3dd4d:	8e c0                	mov    es,ax
   3dd4f:	26 a0 66 96          	mov    al,es:0x9666
   3dd53:	b4 00                	mov    ah,0x0
   3dd55:	50                   	push   ax
   3dd56:	6a 05                	push   0x5
   3dd58:	6a 23                	push   0x23
   3dd5a:	6a 0a                	push   0xa
   3dd5c:	16                   	push   ss
   3dd5d:	8d 46 fa             	lea    ax,[bp-0x6]
   3dd60:	50                   	push   ax
   3dd61:	b8 88 01             	mov    ax,0x188
   3dd64:	8e c0                	mov    es,ax
   3dd66:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3dd6b:	6b db 5c             	imul   bx,bx,0x5c
   3dd6e:	b8 88 01             	mov    ax,0x188
   3dd71:	8e c0                	mov    es,ax
   3dd73:	26 ff b7 b0 99       	push   WORD PTR es:[bx-0x6650]
   3dd78:	9a 58 3f 00 00       	call   0x0:0x3f58
   3dd7d:	83 c4 08             	add    sp,0x8
   3dd80:	52                   	push   dx
   3dd81:	50                   	push   ax
   3dd82:	9a 52 00 38 01       	call   0x138:0x52
   3dd87:	83 c4 0c             	add    sp,0xc
   3dd8a:	6a 0a                	push   0xa
   3dd8c:	b8 88 01             	mov    ax,0x188
   3dd8f:	8e c0                	mov    es,ax
   3dd91:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3dd96:	6b db 5c             	imul   bx,bx,0x5c
   3dd99:	b8 88 01             	mov    ax,0x188
   3dd9c:	8e c0                	mov    es,ax
   3dd9e:	26 8b 87 b2 99       	mov    ax,WORD PTR es:[bx-0x664e]
   3dda3:	3b 06 ba 48          	cmp    ax,WORD PTR ds:0x48ba
   3dda7:	7e 05                	jle    0x3ddae
   3dda9:	b8 48 00             	mov    ax,0x48
   3ddac:	eb 2d                	jmp    0x3dddb
   3ddae:	b8 88 01             	mov    ax,0x188
   3ddb1:	8e c0                	mov    es,ax
   3ddb3:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3ddb8:	6b db 5c             	imul   bx,bx,0x5c
   3ddbb:	b8 88 01             	mov    ax,0x188
   3ddbe:	8e c0                	mov    es,ax
   3ddc0:	26 8b 87 b2 99       	mov    ax,WORD PTR es:[bx-0x664e]
   3ddc5:	3b 06 d2 48          	cmp    ax,WORD PTR ds:0x48d2
   3ddc9:	7d 05                	jge    0x3ddd0
   3ddcb:	b8 de 00             	mov    ax,0xde
   3ddce:	eb 0b                	jmp    0x3dddb
   3ddd0:	b8 88 01             	mov    ax,0x188
   3ddd3:	8e c0                	mov    es,ax
   3ddd5:	26 a0 66 96          	mov    al,es:0x9666
   3ddd9:	b4 00                	mov    ah,0x0
   3dddb:	50                   	push   ax
   3dddc:	6a 06                	push   0x6
   3ddde:	6a 23                	push   0x23
   3dde0:	6a 0a                	push   0xa
   3dde2:	16                   	push   ss
   3dde3:	8d 46 fa             	lea    ax,[bp-0x6]
   3dde6:	50                   	push   ax
   3dde7:	b8 88 01             	mov    ax,0x188
   3ddea:	8e c0                	mov    es,ax
   3ddec:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3ddf1:	6b db 5c             	imul   bx,bx,0x5c
   3ddf4:	b8 88 01             	mov    ax,0x188
   3ddf7:	8e c0                	mov    es,ax
   3ddf9:	26 ff b7 b2 99       	push   WORD PTR es:[bx-0x664e]
   3ddfe:	9a 58 3f 00 00       	call   0x0:0x3f58
   3de03:	83 c4 08             	add    sp,0x8
   3de06:	52                   	push   dx
   3de07:	50                   	push   ax
   3de08:	9a 52 00 38 01       	call   0x138:0x52
   3de0d:	83 c4 0c             	add    sp,0xc
   3de10:	6a 0a                	push   0xa
   3de12:	b8 88 01             	mov    ax,0x188
   3de15:	8e c0                	mov    es,ax
   3de17:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3de1c:	6b db 5c             	imul   bx,bx,0x5c
   3de1f:	b8 88 01             	mov    ax,0x188
   3de22:	8e c0                	mov    es,ax
   3de24:	26 8b 87 ba 99       	mov    ax,WORD PTR es:[bx-0x6646]
   3de29:	3b 06 c2 48          	cmp    ax,WORD PTR ds:0x48c2
   3de2d:	7e 05                	jle    0x3de34
   3de2f:	b8 48 00             	mov    ax,0x48
   3de32:	eb 2d                	jmp    0x3de61
   3de34:	b8 88 01             	mov    ax,0x188
   3de37:	8e c0                	mov    es,ax
   3de39:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3de3e:	6b db 5c             	imul   bx,bx,0x5c
   3de41:	b8 88 01             	mov    ax,0x188
   3de44:	8e c0                	mov    es,ax
   3de46:	26 8b 87 ba 99       	mov    ax,WORD PTR es:[bx-0x6646]
   3de4b:	3b 06 da 48          	cmp    ax,WORD PTR ds:0x48da
   3de4f:	7d 05                	jge    0x3de56
   3de51:	b8 de 00             	mov    ax,0xde
   3de54:	eb 0b                	jmp    0x3de61
   3de56:	b8 88 01             	mov    ax,0x188
   3de59:	8e c0                	mov    es,ax
   3de5b:	26 a0 66 96          	mov    al,es:0x9666
   3de5f:	b4 00                	mov    ah,0x0
   3de61:	50                   	push   ax
   3de62:	6a 07                	push   0x7
   3de64:	6a 23                	push   0x23
   3de66:	6a 0a                	push   0xa
   3de68:	16                   	push   ss
   3de69:	8d 46 fa             	lea    ax,[bp-0x6]
   3de6c:	50                   	push   ax
   3de6d:	b8 88 01             	mov    ax,0x188
   3de70:	8e c0                	mov    es,ax
   3de72:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3de77:	6b db 5c             	imul   bx,bx,0x5c
   3de7a:	b8 88 01             	mov    ax,0x188
   3de7d:	8e c0                	mov    es,ax
   3de7f:	26 ff b7 ba 99       	push   WORD PTR es:[bx-0x6646]
   3de84:	9a 58 3f 00 00       	call   0x0:0x3f58
   3de89:	83 c4 08             	add    sp,0x8
   3de8c:	52                   	push   dx
   3de8d:	50                   	push   ax
   3de8e:	9a 52 00 38 01       	call   0x138:0x52
   3de93:	83 c4 0c             	add    sp,0xc
   3de96:	6a 0a                	push   0xa
   3de98:	b8 88 01             	mov    ax,0x188
   3de9b:	8e c0                	mov    es,ax
   3de9d:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3dea2:	6b db 5c             	imul   bx,bx,0x5c
   3dea5:	b8 88 01             	mov    ax,0x188
   3dea8:	8e c0                	mov    es,ax
   3deaa:	26 8b 87 b8 99       	mov    ax,WORD PTR es:[bx-0x6648]
   3deaf:	3b 06 c0 48          	cmp    ax,WORD PTR ds:0x48c0
   3deb3:	7e 05                	jle    0x3deba
   3deb5:	b8 48 00             	mov    ax,0x48
   3deb8:	eb 2d                	jmp    0x3dee7
   3deba:	b8 88 01             	mov    ax,0x188
   3debd:	8e c0                	mov    es,ax
   3debf:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3dec4:	6b db 5c             	imul   bx,bx,0x5c
   3dec7:	b8 88 01             	mov    ax,0x188
   3deca:	8e c0                	mov    es,ax
   3decc:	26 8b 87 b8 99       	mov    ax,WORD PTR es:[bx-0x6648]
   3ded1:	3b 06 d8 48          	cmp    ax,WORD PTR ds:0x48d8
   3ded5:	7d 05                	jge    0x3dedc
   3ded7:	b8 de 00             	mov    ax,0xde
   3deda:	eb 0b                	jmp    0x3dee7
   3dedc:	b8 88 01             	mov    ax,0x188
   3dedf:	8e c0                	mov    es,ax
   3dee1:	26 a0 66 96          	mov    al,es:0x9666
   3dee5:	b4 00                	mov    ah,0x0
   3dee7:	50                   	push   ax
   3dee8:	6a 08                	push   0x8
   3deea:	6a 23                	push   0x23
   3deec:	6a 0a                	push   0xa
   3deee:	16                   	push   ss
   3deef:	8d 46 fa             	lea    ax,[bp-0x6]
   3def2:	50                   	push   ax
   3def3:	b8 88 01             	mov    ax,0x188
   3def6:	8e c0                	mov    es,ax
   3def8:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3defd:	6b db 5c             	imul   bx,bx,0x5c
   3df00:	b8 88 01             	mov    ax,0x188
   3df03:	8e c0                	mov    es,ax
   3df05:	26 ff b7 b8 99       	push   WORD PTR es:[bx-0x6648]
   3df0a:	9a 58 3f 00 00       	call   0x0:0x3f58
   3df0f:	83 c4 08             	add    sp,0x8
   3df12:	52                   	push   dx
   3df13:	50                   	push   ax
   3df14:	9a 52 00 38 01       	call   0x138:0x52
   3df19:	83 c4 0c             	add    sp,0xc
   3df1c:	6a 0a                	push   0xa
   3df1e:	b8 88 01             	mov    ax,0x188
   3df21:	8e c0                	mov    es,ax
   3df23:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3df28:	6b db 5c             	imul   bx,bx,0x5c
   3df2b:	b8 88 01             	mov    ax,0x188
   3df2e:	8e c0                	mov    es,ax
   3df30:	26 8b 87 c0 99       	mov    ax,WORD PTR es:[bx-0x6640]
   3df35:	3b 06 c8 48          	cmp    ax,WORD PTR ds:0x48c8
   3df39:	7e 05                	jle    0x3df40
   3df3b:	b8 48 00             	mov    ax,0x48
   3df3e:	eb 2d                	jmp    0x3df6d
   3df40:	b8 88 01             	mov    ax,0x188
   3df43:	8e c0                	mov    es,ax
   3df45:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3df4a:	6b db 5c             	imul   bx,bx,0x5c
   3df4d:	b8 88 01             	mov    ax,0x188
   3df50:	8e c0                	mov    es,ax
   3df52:	26 8b 87 c0 99       	mov    ax,WORD PTR es:[bx-0x6640]
   3df57:	3b 06 e0 48          	cmp    ax,WORD PTR ds:0x48e0
   3df5b:	7d 05                	jge    0x3df62
   3df5d:	b8 de 00             	mov    ax,0xde
   3df60:	eb 0b                	jmp    0x3df6d
   3df62:	b8 88 01             	mov    ax,0x188
   3df65:	8e c0                	mov    es,ax
   3df67:	26 a0 66 96          	mov    al,es:0x9666
   3df6b:	b4 00                	mov    ah,0x0
   3df6d:	50                   	push   ax
   3df6e:	6a 09                	push   0x9
   3df70:	6a 23                	push   0x23
   3df72:	6a 0a                	push   0xa
   3df74:	16                   	push   ss
   3df75:	8d 46 fa             	lea    ax,[bp-0x6]
   3df78:	50                   	push   ax
   3df79:	b8 88 01             	mov    ax,0x188
   3df7c:	8e c0                	mov    es,ax
   3df7e:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3df83:	6b db 5c             	imul   bx,bx,0x5c
   3df86:	b8 88 01             	mov    ax,0x188
   3df89:	8e c0                	mov    es,ax
   3df8b:	26 ff b7 c0 99       	push   WORD PTR es:[bx-0x6640]
   3df90:	9a 58 3f 00 00       	call   0x0:0x3f58
   3df95:	83 c4 08             	add    sp,0x8
   3df98:	52                   	push   dx
   3df99:	50                   	push   ax
   3df9a:	9a 52 00 38 01       	call   0x138:0x52
   3df9f:	83 c4 0c             	add    sp,0xc
   3dfa2:	6a 0a                	push   0xa
   3dfa4:	b8 88 01             	mov    ax,0x188
   3dfa7:	8e c0                	mov    es,ax
   3dfa9:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3dfae:	6b db 5c             	imul   bx,bx,0x5c
   3dfb1:	b8 88 01             	mov    ax,0x188
   3dfb4:	8e c0                	mov    es,ax
   3dfb6:	26 8b 87 bc 99       	mov    ax,WORD PTR es:[bx-0x6644]
   3dfbb:	3b 06 c4 48          	cmp    ax,WORD PTR ds:0x48c4
   3dfbf:	7e 05                	jle    0x3dfc6
   3dfc1:	b8 48 00             	mov    ax,0x48
   3dfc4:	eb 2d                	jmp    0x3dff3
   3dfc6:	b8 88 01             	mov    ax,0x188
   3dfc9:	8e c0                	mov    es,ax
   3dfcb:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3dfd0:	6b db 5c             	imul   bx,bx,0x5c
   3dfd3:	b8 88 01             	mov    ax,0x188
   3dfd6:	8e c0                	mov    es,ax
   3dfd8:	26 8b 87 bc 99       	mov    ax,WORD PTR es:[bx-0x6644]
   3dfdd:	3b 06 dc 48          	cmp    ax,WORD PTR ds:0x48dc
   3dfe1:	7d 05                	jge    0x3dfe8
   3dfe3:	b8 de 00             	mov    ax,0xde
   3dfe6:	eb 0b                	jmp    0x3dff3
   3dfe8:	b8 88 01             	mov    ax,0x188
   3dfeb:	8e c0                	mov    es,ax
   3dfed:	26 a0 66 96          	mov    al,es:0x9666
   3dff1:	b4 00                	mov    ah,0x0
   3dff3:	50                   	push   ax
   3dff4:	6a 0a                	push   0xa
   3dff6:	6a 23                	push   0x23
   3dff8:	6a 0a                	push   0xa
   3dffa:	16                   	push   ss
   3dffb:	8d 46 fa             	lea    ax,[bp-0x6]
   3dffe:	50                   	push   ax
   3dfff:	b8 88 01             	mov    ax,0x188
   3e002:	8e c0                	mov    es,ax
   3e004:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e009:	6b db 5c             	imul   bx,bx,0x5c
   3e00c:	b8 88 01             	mov    ax,0x188
   3e00f:	8e c0                	mov    es,ax
   3e011:	26 ff b7 bc 99       	push   WORD PTR es:[bx-0x6644]
   3e016:	9a 58 3f 00 00       	call   0x0:0x3f58
   3e01b:	83 c4 08             	add    sp,0x8
   3e01e:	52                   	push   dx
   3e01f:	50                   	push   ax
   3e020:	9a 52 00 38 01       	call   0x138:0x52
   3e025:	83 c4 0c             	add    sp,0xc
   3e028:	6a 0a                	push   0xa
   3e02a:	b8 88 01             	mov    ax,0x188
   3e02d:	8e c0                	mov    es,ax
   3e02f:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e034:	6b db 5c             	imul   bx,bx,0x5c
   3e037:	b8 88 01             	mov    ax,0x188
   3e03a:	8e c0                	mov    es,ax
   3e03c:	26 8b 87 be 99       	mov    ax,WORD PTR es:[bx-0x6642]
   3e041:	3b 06 c6 48          	cmp    ax,WORD PTR ds:0x48c6
   3e045:	7e 05                	jle    0x3e04c
   3e047:	b8 48 00             	mov    ax,0x48
   3e04a:	eb 2d                	jmp    0x3e079
   3e04c:	b8 88 01             	mov    ax,0x188
   3e04f:	8e c0                	mov    es,ax
   3e051:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e056:	6b db 5c             	imul   bx,bx,0x5c
   3e059:	b8 88 01             	mov    ax,0x188
   3e05c:	8e c0                	mov    es,ax
   3e05e:	26 8b 87 be 99       	mov    ax,WORD PTR es:[bx-0x6642]
   3e063:	3b 06 de 48          	cmp    ax,WORD PTR ds:0x48de
   3e067:	7d 05                	jge    0x3e06e
   3e069:	b8 de 00             	mov    ax,0xde
   3e06c:	eb 0b                	jmp    0x3e079
   3e06e:	b8 88 01             	mov    ax,0x188
   3e071:	8e c0                	mov    es,ax
   3e073:	26 a0 66 96          	mov    al,es:0x9666
   3e077:	b4 00                	mov    ah,0x0
   3e079:	50                   	push   ax
   3e07a:	6a 0b                	push   0xb
   3e07c:	6a 23                	push   0x23
   3e07e:	6a 0a                	push   0xa
   3e080:	16                   	push   ss
   3e081:	8d 46 fa             	lea    ax,[bp-0x6]
   3e084:	50                   	push   ax
   3e085:	b8 88 01             	mov    ax,0x188
   3e088:	8e c0                	mov    es,ax
   3e08a:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e08f:	6b db 5c             	imul   bx,bx,0x5c
   3e092:	b8 88 01             	mov    ax,0x188
   3e095:	8e c0                	mov    es,ax
   3e097:	26 ff b7 be 99       	push   WORD PTR es:[bx-0x6642]
   3e09c:	9a 58 3f 00 00       	call   0x0:0x3f58
   3e0a1:	83 c4 08             	add    sp,0x8
   3e0a4:	52                   	push   dx
   3e0a5:	50                   	push   ax
   3e0a6:	9a 52 00 38 01       	call   0x138:0x52
   3e0ab:	83 c4 0c             	add    sp,0xc
   3e0ae:	6a 0a                	push   0xa
   3e0b0:	b8 88 01             	mov    ax,0x188
   3e0b3:	8e c0                	mov    es,ax
   3e0b5:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e0ba:	6b db 5c             	imul   bx,bx,0x5c
   3e0bd:	b8 88 01             	mov    ax,0x188
   3e0c0:	8e c0                	mov    es,ax
   3e0c2:	26 8b 87 c2 99       	mov    ax,WORD PTR es:[bx-0x663e]
   3e0c7:	3b 06 ca 48          	cmp    ax,WORD PTR ds:0x48ca
   3e0cb:	7e 05                	jle    0x3e0d2
   3e0cd:	b8 48 00             	mov    ax,0x48
   3e0d0:	eb 2d                	jmp    0x3e0ff
   3e0d2:	b8 88 01             	mov    ax,0x188
   3e0d5:	8e c0                	mov    es,ax
   3e0d7:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e0dc:	6b db 5c             	imul   bx,bx,0x5c
   3e0df:	b8 88 01             	mov    ax,0x188
   3e0e2:	8e c0                	mov    es,ax
   3e0e4:	26 8b 87 c2 99       	mov    ax,WORD PTR es:[bx-0x663e]
   3e0e9:	3b 06 e2 48          	cmp    ax,WORD PTR ds:0x48e2
   3e0ed:	7d 05                	jge    0x3e0f4
   3e0ef:	b8 de 00             	mov    ax,0xde
   3e0f2:	eb 0b                	jmp    0x3e0ff
   3e0f4:	b8 88 01             	mov    ax,0x188
   3e0f7:	8e c0                	mov    es,ax
   3e0f9:	26 a0 66 96          	mov    al,es:0x9666
   3e0fd:	b4 00                	mov    ah,0x0
   3e0ff:	50                   	push   ax
   3e100:	6a 0c                	push   0xc
   3e102:	6a 23                	push   0x23
   3e104:	6a 0a                	push   0xa
   3e106:	16                   	push   ss
   3e107:	8d 46 fa             	lea    ax,[bp-0x6]
   3e10a:	50                   	push   ax
   3e10b:	b8 88 01             	mov    ax,0x188
   3e10e:	8e c0                	mov    es,ax
   3e110:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e115:	6b db 5c             	imul   bx,bx,0x5c
   3e118:	b8 88 01             	mov    ax,0x188
   3e11b:	8e c0                	mov    es,ax
   3e11d:	26 ff b7 c2 99       	push   WORD PTR es:[bx-0x663e]
   3e122:	9a 58 3f 00 00       	call   0x0:0x3f58
   3e127:	83 c4 08             	add    sp,0x8
   3e12a:	52                   	push   dx
   3e12b:	50                   	push   ax
   3e12c:	9a 52 00 38 01       	call   0x138:0x52
   3e131:	83 c4 0c             	add    sp,0xc
   3e134:	6a 0a                	push   0xa
   3e136:	b8 88 01             	mov    ax,0x188
   3e139:	8e c0                	mov    es,ax
   3e13b:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e140:	6b db 5c             	imul   bx,bx,0x5c
   3e143:	b8 88 01             	mov    ax,0x188
   3e146:	8e c0                	mov    es,ax
   3e148:	26 8b 87 c4 99       	mov    ax,WORD PTR es:[bx-0x663c]
   3e14d:	3b 06 cc 48          	cmp    ax,WORD PTR ds:0x48cc
   3e151:	7e 05                	jle    0x3e158
   3e153:	b8 48 00             	mov    ax,0x48
   3e156:	eb 2d                	jmp    0x3e185
   3e158:	b8 88 01             	mov    ax,0x188
   3e15b:	8e c0                	mov    es,ax
   3e15d:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e162:	6b db 5c             	imul   bx,bx,0x5c
   3e165:	b8 88 01             	mov    ax,0x188
   3e168:	8e c0                	mov    es,ax
   3e16a:	26 8b 87 c4 99       	mov    ax,WORD PTR es:[bx-0x663c]
   3e16f:	3b 06 e4 48          	cmp    ax,WORD PTR ds:0x48e4
   3e173:	7d 05                	jge    0x3e17a
   3e175:	b8 de 00             	mov    ax,0xde
   3e178:	eb 0b                	jmp    0x3e185
   3e17a:	b8 88 01             	mov    ax,0x188
   3e17d:	8e c0                	mov    es,ax
   3e17f:	26 a0 66 96          	mov    al,es:0x9666
   3e183:	b4 00                	mov    ah,0x0
   3e185:	50                   	push   ax
   3e186:	6a 0d                	push   0xd
   3e188:	6a 23                	push   0x23
   3e18a:	6a 0a                	push   0xa
   3e18c:	16                   	push   ss
   3e18d:	8d 46 fa             	lea    ax,[bp-0x6]
   3e190:	50                   	push   ax
   3e191:	b8 88 01             	mov    ax,0x188
   3e194:	8e c0                	mov    es,ax
   3e196:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e19b:	6b db 5c             	imul   bx,bx,0x5c
   3e19e:	b8 88 01             	mov    ax,0x188
   3e1a1:	8e c0                	mov    es,ax
   3e1a3:	26 ff b7 c4 99       	push   WORD PTR es:[bx-0x663c]
   3e1a8:	9a 58 3f 00 00       	call   0x0:0x3f58
   3e1ad:	83 c4 08             	add    sp,0x8
   3e1b0:	52                   	push   dx
   3e1b1:	50                   	push   ax
   3e1b2:	9a 52 00 38 01       	call   0x138:0x52
   3e1b7:	83 c4 0c             	add    sp,0xc
   3e1ba:	6a 0a                	push   0xa
   3e1bc:	b8 88 01             	mov    ax,0x188
   3e1bf:	8e c0                	mov    es,ax
   3e1c1:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e1c6:	6b db 5c             	imul   bx,bx,0x5c
   3e1c9:	b8 88 01             	mov    ax,0x188
   3e1cc:	8e c0                	mov    es,ax
   3e1ce:	26 8b 87 c6 99       	mov    ax,WORD PTR es:[bx-0x663a]
   3e1d3:	3b 06 ce 48          	cmp    ax,WORD PTR ds:0x48ce
   3e1d7:	7e 05                	jle    0x3e1de
   3e1d9:	b8 48 00             	mov    ax,0x48
   3e1dc:	eb 2d                	jmp    0x3e20b
   3e1de:	b8 88 01             	mov    ax,0x188
   3e1e1:	8e c0                	mov    es,ax
   3e1e3:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e1e8:	6b db 5c             	imul   bx,bx,0x5c
   3e1eb:	b8 88 01             	mov    ax,0x188
   3e1ee:	8e c0                	mov    es,ax
   3e1f0:	26 8b 87 c6 99       	mov    ax,WORD PTR es:[bx-0x663a]
   3e1f5:	3b 06 e6 48          	cmp    ax,WORD PTR ds:0x48e6
   3e1f9:	7d 05                	jge    0x3e200
   3e1fb:	b8 de 00             	mov    ax,0xde
   3e1fe:	eb 0b                	jmp    0x3e20b
   3e200:	b8 88 01             	mov    ax,0x188
   3e203:	8e c0                	mov    es,ax
   3e205:	26 a0 66 96          	mov    al,es:0x9666
   3e209:	b4 00                	mov    ah,0x0
   3e20b:	50                   	push   ax
   3e20c:	6a 0e                	push   0xe
   3e20e:	6a 23                	push   0x23
   3e210:	6a 0a                	push   0xa
   3e212:	16                   	push   ss
   3e213:	8d 46 fa             	lea    ax,[bp-0x6]
   3e216:	50                   	push   ax
   3e217:	b8 88 01             	mov    ax,0x188
   3e21a:	8e c0                	mov    es,ax
   3e21c:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e221:	6b db 5c             	imul   bx,bx,0x5c
   3e224:	b8 88 01             	mov    ax,0x188
   3e227:	8e c0                	mov    es,ax
   3e229:	26 ff b7 c6 99       	push   WORD PTR es:[bx-0x663a]
   3e22e:	9a 58 3f 00 00       	call   0x0:0x3f58
   3e233:	83 c4 08             	add    sp,0x8
   3e236:	52                   	push   dx
   3e237:	50                   	push   ax
   3e238:	9a 52 00 38 01       	call   0x138:0x52
   3e23d:	83 c4 0c             	add    sp,0xc
   3e240:	6a 06                	push   0x6
   3e242:	9a 5c 00 38 01       	call   0x138:0x5c
   3e247:	59                   	pop    cx
   3e248:	c9                   	leave
   3e249:	cb                   	retf
   3e24a:	55                   	push   bp
   3e24b:	8b ec                	mov    bp,sp
   3e24d:	83 ec 10             	sub    sp,0x10
   3e250:	68 e0 01             	push   0x1e0
   3e253:	68 d0 02             	push   0x2d0
   3e256:	6a 06                	push   0x6
   3e258:	6a 01                	push   0x1
   3e25a:	6a 13                	push   0x13
   3e25c:	6a 04                	push   0x4
   3e25e:	6a 1f                	push   0x1f
   3e260:	68 80 00             	push   0x80
   3e263:	6a 13                	push   0x13
   3e265:	6a 04                	push   0x4
   3e267:	9a 30 04 28 00       	call   0x28:0x430
   3e26c:	83 c4 14             	add    sp,0x14
   3e26f:	b8 88 01             	mov    ax,0x188
   3e272:	8e c0                	mov    es,ax
   3e274:	26 ff 36 98 28       	push   WORD PTR es:0x2898
   3e279:	1e                   	push   ds
   3e27a:	68 40 49             	push   0x4940
   3e27d:	16                   	push   ss
   3e27e:	8d 46 f0             	lea    ax,[bp-0x10]
   3e281:	50                   	push   ax
   3e282:	9a b4 48 00 00       	call   0x0:0x48b4
   3e287:	83 c4 0a             	add    sp,0xa
   3e28a:	6a 0a                	push   0xa
   3e28c:	6a 02                	push   0x2
   3e28e:	6a 01                	push   0x1
   3e290:	6a 01                	push   0x1
   3e292:	16                   	push   ss
   3e293:	8d 46 f0             	lea    ax,[bp-0x10]
   3e296:	50                   	push   ax
   3e297:	9a 52 00 38 01       	call   0x138:0x52
   3e29c:	83 c4 0c             	add    sp,0xc
   3e29f:	b8 88 01             	mov    ax,0x188
   3e2a2:	8e c0                	mov    es,ax
   3e2a4:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e2a9:	6b db 5c             	imul   bx,bx,0x5c
   3e2ac:	b8 88 01             	mov    ax,0x188
   3e2af:	8e c0                	mov    es,ax
   3e2b1:	26 83 bf aa 99 01    	cmp    WORD PTR es:[bx-0x6656],0x1
   3e2b7:	75 06                	jne    0x3e2bf
   3e2b9:	1e                   	push   ds
   3e2ba:	68 4e 49             	push   0x494e
   3e2bd:	eb 04                	jmp    0x3e2c3
   3e2bf:	1e                   	push   ds
   3e2c0:	68 55 49             	push   0x4955
   3e2c3:	68 88 01             	push   0x188
   3e2c6:	68 0a 9f             	push   0x9f0a
   3e2c9:	9a a3 49 00 00       	call   0x0:0x49a3
   3e2ce:	83 c4 08             	add    sp,0x8
   3e2d1:	6a 0a                	push   0xa
   3e2d3:	b8 88 01             	mov    ax,0x188
   3e2d6:	8e c0                	mov    es,ax
   3e2d8:	26 a0 66 96          	mov    al,es:0x9666
   3e2dc:	b4 00                	mov    ah,0x0
   3e2de:	50                   	push   ax
   3e2df:	6a 02                	push   0x2
   3e2e1:	6a 01                	push   0x1
   3e2e3:	68 88 01             	push   0x188
   3e2e6:	68 0a 9f             	push   0x9f0a
   3e2e9:	9a 52 00 38 01       	call   0x138:0x52
   3e2ee:	83 c4 0c             	add    sp,0xc
   3e2f1:	6a 0a                	push   0xa
   3e2f3:	b8 88 01             	mov    ax,0x188
   3e2f6:	8e c0                	mov    es,ax
   3e2f8:	26 a0 66 96          	mov    al,es:0x9666
   3e2fc:	b4 00                	mov    ah,0x0
   3e2fe:	50                   	push   ax
   3e2ff:	6a 03                	push   0x3
   3e301:	6a 01                	push   0x1
   3e303:	1e                   	push   ds
   3e304:	68 7c bb             	push   0xbb7c
   3e307:	9a 52 00 38 01       	call   0x138:0x52
   3e30c:	83 c4 0c             	add    sp,0xc
   3e30f:	68 e0 01             	push   0x1e0
   3e312:	68 d0 02             	push   0x2d0
   3e315:	6a 06                	push   0x6
   3e317:	6a 45                	push   0x45
   3e319:	6a 6f                	push   0x6f
   3e31b:	6a 44                	push   0x44
   3e31d:	6a 14                	push   0x14
   3e31f:	6a 14                	push   0x14
   3e321:	6a 00                	push   0x0
   3e323:	b8 88 01             	mov    ax,0x188
   3e326:	8e c0                	mov    es,ax
   3e328:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e32d:	6b db 5c             	imul   bx,bx,0x5c
   3e330:	b8 88 01             	mov    ax,0x188
   3e333:	8e c0                	mov    es,ax
   3e335:	26 8b 87 aa 99       	mov    ax,WORD PTR es:[bx-0x6656]
   3e33a:	05 07 00             	add    ax,0x7
   3e33d:	6b c0 14             	imul   ax,ax,0x14
   3e340:	50                   	push   ax
   3e341:	9a 30 04 28 00       	call   0x28:0x430
   3e346:	83 c4 14             	add    sp,0x14
   3e349:	6a 06                	push   0x6
   3e34b:	9a 5c 00 38 01       	call   0x138:0x5c
   3e350:	59                   	pop    cx
   3e351:	c9                   	leave
   3e352:	cb                   	retf
   3e353:	55                   	push   bp
   3e354:	8b ec                	mov    bp,sp
   3e356:	68 e0 01             	push   0x1e0
   3e359:	68 d0 02             	push   0x2d0
   3e35c:	6a 06                	push   0x6
   3e35e:	6a 45                	push   0x45
   3e360:	6a 58                	push   0x58
   3e362:	6a 44                	push   0x44
   3e364:	6a 14                	push   0x14
   3e366:	6a 14                	push   0x14
   3e368:	6a 00                	push   0x0
   3e36a:	b8 88 01             	mov    ax,0x188
   3e36d:	8e c0                	mov    es,ax
   3e36f:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e374:	6b db 5c             	imul   bx,bx,0x5c
   3e377:	b8 88 01             	mov    ax,0x188
   3e37a:	8e c0                	mov    es,ax
   3e37c:	26 8b 87 a8 99       	mov    ax,WORD PTR es:[bx-0x6658]
   3e381:	48                   	dec    ax
   3e382:	6b c0 14             	imul   ax,ax,0x14
   3e385:	50                   	push   ax
   3e386:	9a 30 04 28 00       	call   0x28:0x430
   3e38b:	83 c4 14             	add    sp,0x14
   3e38e:	68 e0 01             	push   0x1e0
   3e391:	68 d0 02             	push   0x2d0
   3e394:	6a 06                	push   0x6
   3e396:	6a 45                	push   0x45
   3e398:	6a 6f                	push   0x6f
   3e39a:	6a 44                	push   0x44
   3e39c:	6a 14                	push   0x14
   3e39e:	6a 14                	push   0x14
   3e3a0:	6a 00                	push   0x0
   3e3a2:	b8 88 01             	mov    ax,0x188
   3e3a5:	8e c0                	mov    es,ax
   3e3a7:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e3ac:	6b db 5c             	imul   bx,bx,0x5c
   3e3af:	b8 88 01             	mov    ax,0x188
   3e3b2:	8e c0                	mov    es,ax
   3e3b4:	26 8b 87 aa 99       	mov    ax,WORD PTR es:[bx-0x6656]
   3e3b9:	05 07 00             	add    ax,0x7
   3e3bc:	6b c0 14             	imul   ax,ax,0x14
   3e3bf:	50                   	push   ax
   3e3c0:	9a 30 04 28 00       	call   0x28:0x430
   3e3c5:	83 c4 14             	add    sp,0x14
   3e3c8:	6a 06                	push   0x6
   3e3ca:	9a 5c 00 38 01       	call   0x138:0x5c
   3e3cf:	59                   	pop    cx
   3e3d0:	5d                   	pop    bp
   3e3d1:	cb                   	retf
   3e3d2:	55                   	push   bp
   3e3d3:	8b ec                	mov    bp,sp
   3e3d5:	68 e0 01             	push   0x1e0
   3e3d8:	68 d0 02             	push   0x2d0
   3e3db:	6a 06                	push   0x6
   3e3dd:	6a 01                	push   0x1
   3e3df:	68 a9 00             	push   0xa9
   3e3e2:	6a 10                	push   0x10
   3e3e4:	6a 0e                	push   0xe
   3e3e6:	68 86 00             	push   0x86
   3e3e9:	68 a9 00             	push   0xa9
   3e3ec:	6a 10                	push   0x10
   3e3ee:	9a 30 04 28 00       	call   0x28:0x430
   3e3f3:	83 c4 14             	add    sp,0x14
   3e3f6:	6a 0a                	push   0xa
   3e3f8:	b8 88 01             	mov    ax,0x188
   3e3fb:	8e c0                	mov    es,ax
   3e3fd:	26 a0 66 96          	mov    al,es:0x9666
   3e401:	b4 00                	mov    ah,0x0
   3e403:	50                   	push   ax
   3e404:	6a 10                	push   0x10
   3e406:	6a 02                	push   0x2
   3e408:	b8 88 01             	mov    ax,0x188
   3e40b:	8e c0                	mov    es,ax
   3e40d:	26 a1 98 28          	mov    ax,es:0x2898
   3e411:	69 c0 94 00          	imul   ax,ax,0x94
   3e415:	05 26 9c             	add    ax,0x9c26
   3e418:	68 88 01             	push   0x188
   3e41b:	50                   	push   ax
   3e41c:	9a 52 00 38 01       	call   0x138:0x52
   3e421:	83 c4 0c             	add    sp,0xc
   3e424:	6a 06                	push   0x6
   3e426:	9a 5c 00 38 01       	call   0x138:0x5c
   3e42b:	59                   	pop    cx
   3e42c:	5d                   	pop    bp
   3e42d:	cb                   	retf
   3e42e:	55                   	push   bp
   3e42f:	8b ec                	mov    bp,sp
   3e431:	83 ec 04             	sub    sp,0x4
   3e434:	1e                   	push   ds
   3e435:	68 5b 49             	push   0x495b
   3e438:	6a 04                	push   0x4
   3e43a:	9a 25 00 70 01       	call   0x170:0x25
   3e43f:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   3e442:	83 7e fc ff          	cmp    WORD PTR [bp-0x4],0xffff
   3e446:	75 15                	jne    0x3e45d
   3e448:	6a ff                	push   0xffff
   3e44a:	1e                   	push   ds
   3e44b:	68 75 49             	push   0x4975
   3e44e:	68 de 00             	push   0xde
   3e451:	1e                   	push   ds
   3e452:	68 63 49             	push   0x4963
   3e455:	9a 2a 00 58 01       	call   0x158:0x2a
   3e45a:	83 c4 0c             	add    sp,0xc
   3e45d:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   3e462:	e9 91 00             	jmp    0x3e4f6
   3e465:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   3e468:	6b db 5c             	imul   bx,bx,0x5c
   3e46b:	b8 88 01             	mov    ax,0x188
   3e46e:	8e c0                	mov    es,ax
   3e470:	26 8b 87 b0 99       	mov    ax,WORD PTR es:[bx-0x6650]
   3e475:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   3e478:	6b db 5c             	imul   bx,bx,0x5c
   3e47b:	ba 88 01             	mov    dx,0x188
   3e47e:	8e c2                	mov    es,dx
   3e480:	26 89 87 de 99       	mov    WORD PTR es:[bx-0x6622],ax
   3e485:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   3e488:	6b db 5c             	imul   bx,bx,0x5c
   3e48b:	b8 88 01             	mov    ax,0x188
   3e48e:	8e c0                	mov    es,ax
   3e490:	26 8b 87 b2 99       	mov    ax,WORD PTR es:[bx-0x664e]
   3e495:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   3e498:	6b db 5c             	imul   bx,bx,0x5c
   3e49b:	ba 88 01             	mov    dx,0x188
   3e49e:	8e c2                	mov    es,dx
   3e4a0:	26 89 87 e0 99       	mov    WORD PTR es:[bx-0x6620],ax
   3e4a5:	1e                   	push   ds
   3e4a6:	68 9a 49             	push   0x499a
   3e4a9:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3e4ac:	69 c0 94 00          	imul   ax,ax,0x94
   3e4b0:	05 95 9c             	add    ax,0x9c95
   3e4b3:	68 88 01             	push   0x188
   3e4b6:	50                   	push   ax
   3e4b7:	9a a3 49 00 00       	call   0x0:0x49a3
   3e4bc:	83 c4 08             	add    sp,0x8
   3e4bf:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3e4c2:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3e4c5:	69 c0 94 00          	imul   ax,ax,0x94
   3e4c9:	05 26 9c             	add    ax,0x9c26
   3e4cc:	68 88 01             	push   0x188
   3e4cf:	50                   	push   ax
   3e4d0:	6a 00                	push   0x0
   3e4d2:	6a 25                	push   0x25
   3e4d4:	9a 34 00 70 01       	call   0x170:0x34
   3e4d9:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3e4dc:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3e4df:	69 c0 94 00          	imul   ax,ax,0x94
   3e4e3:	05 95 9c             	add    ax,0x9c95
   3e4e6:	68 88 01             	push   0x188
   3e4e9:	50                   	push   ax
   3e4ea:	6a 00                	push   0x0
   3e4ec:	6a 25                	push   0x25
   3e4ee:	9a 34 00 70 01       	call   0x170:0x34
   3e4f3:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   3e4f6:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   3e4fa:	7f 03                	jg     0x3e4ff
   3e4fc:	e9 66 ff             	jmp    0x3e465
   3e4ff:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   3e504:	eb 1c                	jmp    0x3e522
   3e506:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3e509:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3e50c:	6b c0 5c             	imul   ax,ax,0x5c
   3e50f:	05 a6 99             	add    ax,0x99a6
   3e512:	68 88 01             	push   0x188
   3e515:	50                   	push   ax
   3e516:	6a 00                	push   0x0
   3e518:	6a 5c                	push   0x5c
   3e51a:	9a 34 00 70 01       	call   0x170:0x34
   3e51f:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   3e522:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   3e526:	7e de                	jle    0x3e506
   3e528:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3e52b:	9a 2a 00 70 01       	call   0x170:0x2a
   3e530:	c9                   	leave
   3e531:	cb                   	retf
   3e532:	55                   	push   bp
   3e533:	8b ec                	mov    bp,sp
   3e535:	83 ec 04             	sub    sp,0x4
   3e538:	ff 76 08             	push   WORD PTR [bp+0x8]
   3e53b:	ff 76 06             	push   WORD PTR [bp+0x6]
   3e53e:	6a 02                	push   0x2
   3e540:	9a 25 00 70 01       	call   0x170:0x25
   3e545:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   3e548:	83 7e fc ff          	cmp    WORD PTR [bp-0x4],0xffff
   3e54c:	75 15                	jne    0x3e563
   3e54e:	6a ff                	push   0xffff
   3e550:	1e                   	push   ds
   3e551:	68 d1 49             	push   0x49d1
   3e554:	68 16 01             	push   0x116
   3e557:	1e                   	push   ds
   3e558:	68 bf 49             	push   0x49bf
   3e55b:	9a 2a 00 58 01       	call   0x158:0x2a
   3e560:	83 c4 0c             	add    sp,0xc
   3e563:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   3e568:	eb 37                	jmp    0x3e5a1
   3e56a:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3e56d:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3e570:	69 c0 94 00          	imul   ax,ax,0x94
   3e574:	05 26 9c             	add    ax,0x9c26
   3e577:	68 88 01             	push   0x188
   3e57a:	50                   	push   ax
   3e57b:	6a 00                	push   0x0
   3e57d:	6a 25                	push   0x25
   3e57f:	9a 2f 00 70 01       	call   0x170:0x2f
   3e584:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3e587:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3e58a:	69 c0 94 00          	imul   ax,ax,0x94
   3e58e:	05 95 9c             	add    ax,0x9c95
   3e591:	68 88 01             	push   0x188
   3e594:	50                   	push   ax
   3e595:	6a 00                	push   0x0
   3e597:	6a 25                	push   0x25
   3e599:	9a 2f 00 70 01       	call   0x170:0x2f
   3e59e:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   3e5a1:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   3e5a5:	7e c3                	jle    0x3e56a
   3e5a7:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   3e5ac:	eb 1c                	jmp    0x3e5ca
   3e5ae:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3e5b1:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3e5b4:	6b c0 5c             	imul   ax,ax,0x5c
   3e5b7:	05 a6 99             	add    ax,0x99a6
   3e5ba:	68 88 01             	push   0x188
   3e5bd:	50                   	push   ax
   3e5be:	6a 00                	push   0x0
   3e5c0:	6a 5c                	push   0x5c
   3e5c2:	9a 2f 00 70 01       	call   0x170:0x2f
   3e5c7:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   3e5ca:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   3e5ce:	7e de                	jle    0x3e5ae
   3e5d0:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3e5d3:	9a 2a 00 70 01       	call   0x170:0x2a
   3e5d8:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   3e5dd:	eb 33                	jmp    0x3e612
   3e5df:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   3e5e2:	6b db 5c             	imul   bx,bx,0x5c
   3e5e5:	b8 88 01             	mov    ax,0x188
   3e5e8:	8e c0                	mov    es,ax
   3e5ea:	26 8b 87 a8 99       	mov    ax,WORD PTR es:[bx-0x6658]
   3e5ef:	6b c0 0b             	imul   ax,ax,0xb
   3e5f2:	05 38 26             	add    ax,0x2638
   3e5f5:	68 88 01             	push   0x188
   3e5f8:	50                   	push   ax
   3e5f9:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3e5fc:	69 c0 94 00          	imul   ax,ax,0x94
   3e600:	05 70 9c             	add    ax,0x9c70
   3e603:	68 88 01             	push   0x188
   3e606:	50                   	push   ax
   3e607:	9a a3 49 00 00       	call   0x0:0x49a3
   3e60c:	83 c4 08             	add    sp,0x8
   3e60f:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   3e612:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   3e616:	7e c7                	jle    0x3e5df
   3e618:	c9                   	leave
   3e619:	cb                   	retf
   3e61a:	55                   	push   bp
   3e61b:	8b ec                	mov    bp,sp
   3e61d:	1e                   	push   ds
   3e61e:	68 f6 49             	push   0x49f6
   3e621:	68 25 01             	push   0x125
   3e624:	68 88 01             	push   0x188
   3e627:	68 37 e3             	push   0xe337
   3e62a:	9a 2f 02 40 00       	call   0x40:0x22f
   3e62f:	83 c4 0a             	add    sp,0xa
   3e632:	1e                   	push   ds
   3e633:	68 08 4a             	push   0x4a08
   3e636:	68 26 01             	push   0x126
   3e639:	68 88 01             	push   0x188
   3e63c:	68 f7 e2             	push   0xe2f7
   3e63f:	9a 2f 02 40 00       	call   0x40:0x22f
   3e644:	83 c4 0a             	add    sp,0xa
   3e647:	1e                   	push   ds
   3e648:	68 1a 4a             	push   0x4a1a
   3e64b:	68 27 01             	push   0x127
   3e64e:	68 88 01             	push   0x188
   3e651:	68 d7 e4             	push   0xe4d7
   3e654:	9a 2f 02 40 00       	call   0x40:0x22f
   3e659:	83 c4 0a             	add    sp,0xa
   3e65c:	1e                   	push   ds
   3e65d:	68 2c 4a             	push   0x4a2c
   3e660:	68 28 01             	push   0x128
   3e663:	68 88 01             	push   0x188
   3e666:	68 cf e2             	push   0xe2cf
   3e669:	9a 2f 02 40 00       	call   0x40:0x22f
   3e66e:	83 c4 0a             	add    sp,0xa
   3e671:	1e                   	push   ds
   3e672:	68 3e 4a             	push   0x4a3e
   3e675:	68 29 01             	push   0x129
   3e678:	68 88 01             	push   0x188
   3e67b:	68 a7 e2             	push   0xe2a7
   3e67e:	9a 2f 02 40 00       	call   0x40:0x22f
   3e683:	83 c4 0a             	add    sp,0xa
   3e686:	1e                   	push   ds
   3e687:	68 50 4a             	push   0x4a50
   3e68a:	68 2a 01             	push   0x12a
   3e68d:	68 88 01             	push   0x188
   3e690:	68 c7 e4             	push   0xe4c7
   3e693:	9a 2f 02 40 00       	call   0x40:0x22f
   3e698:	83 c4 0a             	add    sp,0xa
   3e69b:	9a 04 02 30 00       	call   0x30:0x204
   3e6a0:	5d                   	pop    bp
   3e6a1:	cb                   	retf
   3e6a2:	55                   	push   bp
   3e6a3:	8b ec                	mov    bp,sp
   3e6a5:	83 ec 0e             	sub    sp,0xe
   3e6a8:	c7 46 f8 00 00       	mov    WORD PTR [bp-0x8],0x0
   3e6ad:	c7 46 f6 01 00       	mov    WORD PTR [bp-0xa],0x1
   3e6b2:	c7 46 f2 96 00       	mov    WORD PTR [bp-0xe],0x96
   3e6b7:	9a 39 00 50 01       	call   0x150:0x39
   3e6bc:	9a 3e 00 50 01       	call   0x150:0x3e
   3e6c1:	68 00 01             	push   0x100
   3e6c4:	6a 00                	push   0x0
   3e6c6:	1e                   	push   ds
   3e6c7:	68 62 4a             	push   0x4a62
   3e6ca:	9a 2a 00 48 01       	call   0x148:0x2a
   3e6cf:	83 c4 08             	add    sp,0x8
   3e6d2:	6a 45                	push   0x45
   3e6d4:	1e                   	push   ds
   3e6d5:	68 6d 4a             	push   0x4a6d
   3e6d8:	6a 01                	push   0x1
   3e6da:	9a 20 00 48 01       	call   0x148:0x20
   3e6df:	83 c4 08             	add    sp,0x8
   3e6e2:	6a 01                	push   0x1
   3e6e4:	1e                   	push   ds
   3e6e5:	68 79 4a             	push   0x4a79
   3e6e8:	6a 01                	push   0x1
   3e6ea:	9a 20 00 48 01       	call   0x148:0x20
   3e6ef:	83 c4 08             	add    sp,0x8
   3e6f2:	6a 00                	push   0x0
   3e6f4:	6a 00                	push   0x0
   3e6f6:	68 00 fa             	push   0xfa00
   3e6f9:	9a 64 01 20 00       	call   0x20:0x164
   3e6fe:	83 c4 06             	add    sp,0x6
   3e701:	bb 88 01             	mov    bx,0x188
   3e704:	8e c3                	mov    es,bx
   3e706:	26 89 16 d1 e2       	mov    WORD PTR es:0xe2d1,dx
   3e70b:	26 a3 cf e2          	mov    es:0xe2cf,ax
   3e70f:	b8 88 01             	mov    ax,0x188
   3e712:	8e c0                	mov    es,ax
   3e714:	26 c7 06 cb e2 40 01 	mov    WORD PTR es:0xe2cb,0x140
   3e71b:	b8 88 01             	mov    ax,0x188
   3e71e:	8e c0                	mov    es,ax
   3e720:	26 c7 06 cd e2 c8 00 	mov    WORD PTR es:0xe2cd,0xc8
   3e727:	68 e0 01             	push   0x1e0
   3e72a:	68 d0 02             	push   0x2d0
   3e72d:	6a 06                	push   0x6
   3e72f:	6a 01                	push   0x1
   3e731:	6a 00                	push   0x0
   3e733:	6a 00                	push   0x0
   3e735:	68 c8 00             	push   0xc8
   3e738:	68 40 01             	push   0x140
   3e73b:	6a 00                	push   0x0
   3e73d:	6a 00                	push   0x0
   3e73f:	9a 30 04 28 00       	call   0x28:0x430
   3e744:	83 c4 14             	add    sp,0x14
   3e747:	6a 00                	push   0x0
   3e749:	6a 00                	push   0x0
   3e74b:	9a 48 00 50 01       	call   0x150:0x48
   3e750:	83 c4 04             	add    sp,0x4
   3e753:	b8 88 01             	mov    ax,0x188
   3e756:	8e c0                	mov    es,ax
   3e758:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e75d:	6b db 5c             	imul   bx,bx,0x5c
   3e760:	b8 88 01             	mov    ax,0x188
   3e763:	8e c0                	mov    es,ax
   3e765:	26 83 bf a8 99 01    	cmp    WORD PTR es:[bx-0x6658],0x1
   3e76b:	7e 19                	jle    0x3e786
   3e76d:	b8 88 01             	mov    ax,0x188
   3e770:	8e c0                	mov    es,ax
   3e772:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e777:	6b db 5c             	imul   bx,bx,0x5c
   3e77a:	b8 88 01             	mov    ax,0x188
   3e77d:	8e c0                	mov    es,ax
   3e77f:	26 8b 87 a8 99       	mov    ax,WORD PTR es:[bx-0x6658]
   3e784:	eb 03                	jmp    0x3e789
   3e786:	b8 01 00             	mov    ax,0x1
   3e789:	ba 88 01             	mov    dx,0x188
   3e78c:	8e c2                	mov    es,dx
   3e78e:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e793:	6b db 5c             	imul   bx,bx,0x5c
   3e796:	ba 88 01             	mov    dx,0x188
   3e799:	8e c2                	mov    es,dx
   3e79b:	26 89 87 a8 99       	mov    WORD PTR es:[bx-0x6658],ax
   3e7a0:	b8 88 01             	mov    ax,0x188
   3e7a3:	8e c0                	mov    es,ax
   3e7a5:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e7aa:	6b db 5c             	imul   bx,bx,0x5c
   3e7ad:	b8 88 01             	mov    ax,0x188
   3e7b0:	8e c0                	mov    es,ax
   3e7b2:	26 83 bf aa 99 01    	cmp    WORD PTR es:[bx-0x6656],0x1
   3e7b8:	7e 19                	jle    0x3e7d3
   3e7ba:	b8 88 01             	mov    ax,0x188
   3e7bd:	8e c0                	mov    es,ax
   3e7bf:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e7c4:	6b db 5c             	imul   bx,bx,0x5c
   3e7c7:	b8 88 01             	mov    ax,0x188
   3e7ca:	8e c0                	mov    es,ax
   3e7cc:	26 8b 87 aa 99       	mov    ax,WORD PTR es:[bx-0x6656]
   3e7d1:	eb 03                	jmp    0x3e7d6
   3e7d3:	b8 01 00             	mov    ax,0x1
   3e7d6:	ba 88 01             	mov    dx,0x188
   3e7d9:	8e c2                	mov    es,dx
   3e7db:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e7e0:	6b db 5c             	imul   bx,bx,0x5c
   3e7e3:	ba 88 01             	mov    dx,0x188
   3e7e6:	8e c2                	mov    es,dx
   3e7e8:	26 89 87 aa 99       	mov    WORD PTR es:[bx-0x6656],ax
   3e7ed:	b8 88 01             	mov    ax,0x188
   3e7f0:	8e c0                	mov    es,ax
   3e7f2:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e7f7:	6b db 5c             	imul   bx,bx,0x5c
   3e7fa:	b8 88 01             	mov    ax,0x188
   3e7fd:	8e c0                	mov    es,ax
   3e7ff:	26 83 bf e8 99 01    	cmp    WORD PTR es:[bx-0x6618],0x1
   3e805:	7e 19                	jle    0x3e820
   3e807:	b8 88 01             	mov    ax,0x188
   3e80a:	8e c0                	mov    es,ax
   3e80c:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e811:	6b db 5c             	imul   bx,bx,0x5c
   3e814:	b8 88 01             	mov    ax,0x188
   3e817:	8e c0                	mov    es,ax
   3e819:	26 8b 87 e8 99       	mov    ax,WORD PTR es:[bx-0x6618]
   3e81e:	eb 03                	jmp    0x3e823
   3e820:	b8 01 00             	mov    ax,0x1
   3e823:	ba 88 01             	mov    dx,0x188
   3e826:	8e c2                	mov    es,dx
   3e828:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e82d:	6b db 5c             	imul   bx,bx,0x5c
   3e830:	ba 88 01             	mov    dx,0x188
   3e833:	8e c2                	mov    es,dx
   3e835:	26 89 87 e8 99       	mov    WORD PTR es:[bx-0x6618],ax
   3e83a:	68 c7 00             	push   0xc7
   3e83d:	68 3f 01             	push   0x13f
   3e840:	6a 00                	push   0x0
   3e842:	6a 00                	push   0x0
   3e844:	9a 4d 00 50 01       	call   0x150:0x4d
   3e849:	83 c4 08             	add    sp,0x8
   3e84c:	b8 88 01             	mov    ax,0x188
   3e84f:	8e c0                	mov    es,ax
   3e851:	26 c7 06 e3 e5 2d 00 	mov    WORD PTR es:0xe5e3,0x2d
   3e858:	0e                   	push   cs
   3e859:	e8 a4 e3             	call   0x3cc00
   3e85c:	0e                   	push   cs
   3e85d:	e8 bf e4             	call   0x3cd1f
   3e860:	b8 88 01             	mov    ax,0x188
   3e863:	8e c0                	mov    es,ax
   3e865:	26 a1 98 28          	mov    ax,es:0x2898
   3e869:	69 c0 94 00          	imul   ax,ax,0x94
   3e86d:	05 26 9c             	add    ax,0x9c26
   3e870:	68 88 01             	push   0x188
   3e873:	50                   	push   ax
   3e874:	9a cc 49 00 00       	call   0x0:0x49cc
   3e879:	83 c4 04             	add    sp,0x4
   3e87c:	0b c0                	or     ax,ax
   3e87e:	75 06                	jne    0x3e886
   3e880:	0e                   	push   cs
   3e881:	e8 b3 e7             	call   0x3d037
   3e884:	eb 04                	jmp    0x3e88a
   3e886:	0e                   	push   cs
   3e887:	e8 c4 f2             	call   0x3db4e
   3e88a:	0e                   	push   cs
   3e88b:	e8 44 fb             	call   0x3e3d2
   3e88e:	0e                   	push   cs
   3e88f:	e8 b8 f9             	call   0x3e24a
   3e892:	0e                   	push   cs
   3e893:	e8 c7 e6             	call   0x3cf5d
   3e896:	0e                   	push   cs
   3e897:	e8 b9 fa             	call   0x3e353
   3e89a:	b8 88 01             	mov    ax,0x188
   3e89d:	8e c0                	mov    es,ax
   3e89f:	26 c7 06 fd e5 11 00 	mov    WORD PTR es:0xe5fd,0x11
   3e8a6:	b8 88 01             	mov    ax,0x188
   3e8a9:	8e c0                	mov    es,ax
   3e8ab:	26 c7 06 ff e5 35 00 	mov    WORD PTR es:0xe5ff,0x35
   3e8b2:	b8 88 01             	mov    ax,0x188
   3e8b5:	8e c0                	mov    es,ax
   3e8b7:	26 c7 06 01 e6 41 00 	mov    WORD PTR es:0xe601,0x41
   3e8be:	b8 88 01             	mov    ax,0x188
   3e8c1:	8e c0                	mov    es,ax
   3e8c3:	26 c7 06 03 e6 83 00 	mov    WORD PTR es:0xe603,0x83
   3e8ca:	b8 88 01             	mov    ax,0x188
   3e8cd:	8e c0                	mov    es,ax
   3e8cf:	26 c7 06 05 e6 44 00 	mov    WORD PTR es:0xe605,0x44
   3e8d6:	b8 88 01             	mov    ax,0x188
   3e8d9:	8e c0                	mov    es,ax
   3e8db:	26 c7 06 07 e6 35 00 	mov    WORD PTR es:0xe607,0x35
   3e8e2:	b8 88 01             	mov    ax,0x188
   3e8e5:	8e c0                	mov    es,ax
   3e8e7:	26 c7 06 09 e6 64 00 	mov    WORD PTR es:0xe609,0x64
   3e8ee:	b8 88 01             	mov    ax,0x188
   3e8f1:	8e c0                	mov    es,ax
   3e8f3:	26 c7 06 0b e6 55 00 	mov    WORD PTR es:0xe60b,0x55
   3e8fa:	b8 88 01             	mov    ax,0x188
   3e8fd:	8e c0                	mov    es,ax
   3e8ff:	26 c7 06 0d e6 5a 00 	mov    WORD PTR es:0xe60d,0x5a
   3e906:	b8 88 01             	mov    ax,0x188
   3e909:	8e c0                	mov    es,ax
   3e90b:	26 c7 06 0f e6 57 00 	mov    WORD PTR es:0xe60f,0x57
   3e912:	b8 88 01             	mov    ax,0x188
   3e915:	8e c0                	mov    es,ax
   3e917:	26 c7 06 11 e6 63 00 	mov    WORD PTR es:0xe611,0x63
   3e91e:	b8 88 01             	mov    ax,0x188
   3e921:	8e c0                	mov    es,ax
   3e923:	26 c7 06 13 e6 6a 00 	mov    WORD PTR es:0xe613,0x6a
   3e92a:	b8 88 01             	mov    ax,0x188
   3e92d:	8e c0                	mov    es,ax
   3e92f:	26 c7 06 15 e6 5a 00 	mov    WORD PTR es:0xe615,0x5a
   3e936:	b8 88 01             	mov    ax,0x188
   3e939:	8e c0                	mov    es,ax
   3e93b:	26 c7 06 17 e6 6e 00 	mov    WORD PTR es:0xe617,0x6e
   3e942:	b8 88 01             	mov    ax,0x188
   3e945:	8e c0                	mov    es,ax
   3e947:	26 c7 06 19 e6 63 00 	mov    WORD PTR es:0xe619,0x63
   3e94e:	b8 88 01             	mov    ax,0x188
   3e951:	8e c0                	mov    es,ax
   3e953:	26 c7 06 1b e6 81 00 	mov    WORD PTR es:0xe61b,0x81
   3e95a:	b8 88 01             	mov    ax,0x188
   3e95d:	8e c0                	mov    es,ax
   3e95f:	26 c7 06 1d e6 45 00 	mov    WORD PTR es:0xe61d,0x45
   3e966:	b8 88 01             	mov    ax,0x188
   3e969:	8e c0                	mov    es,ax
   3e96b:	26 c7 06 1f e6 88 00 	mov    WORD PTR es:0xe61f,0x88
   3e972:	b8 88 01             	mov    ax,0x188
   3e975:	8e c0                	mov    es,ax
   3e977:	26 c7 06 21 e6 6b 00 	mov    WORD PTR es:0xe621,0x6b
   3e97e:	b8 88 01             	mov    ax,0x188
   3e981:	8e c0                	mov    es,ax
   3e983:	26 c7 06 23 e6 9c 00 	mov    WORD PTR es:0xe623,0x9c
   3e98a:	b8 88 01             	mov    ax,0x188
   3e98d:	8e c0                	mov    es,ax
   3e98f:	26 c7 06 25 e6 0f 00 	mov    WORD PTR es:0xe625,0xf
   3e996:	b8 88 01             	mov    ax,0x188
   3e999:	8e c0                	mov    es,ax
   3e99b:	26 c7 06 27 e6 88 00 	mov    WORD PTR es:0xe627,0x88
   3e9a2:	b8 88 01             	mov    ax,0x188
   3e9a5:	8e c0                	mov    es,ax
   3e9a7:	26 c7 06 29 e6 35 00 	mov    WORD PTR es:0xe629,0x35
   3e9ae:	b8 88 01             	mov    ax,0x188
   3e9b1:	8e c0                	mov    es,ax
   3e9b3:	26 c7 06 2b e6 9c 00 	mov    WORD PTR es:0xe62b,0x9c
   3e9ba:	b8 88 01             	mov    ax,0x188
   3e9bd:	8e c0                	mov    es,ax
   3e9bf:	26 c7 06 2d e6 00 00 	mov    WORD PTR es:0xe62d,0x0
   3e9c6:	b8 88 01             	mov    ax,0x188
   3e9c9:	8e c0                	mov    es,ax
   3e9cb:	26 c7 06 2f e6 00 00 	mov    WORD PTR es:0xe62f,0x0
   3e9d2:	b8 88 01             	mov    ax,0x188
   3e9d5:	8e c0                	mov    es,ax
   3e9d7:	26 c7 06 31 e6 14 00 	mov    WORD PTR es:0xe631,0x14
   3e9de:	b8 88 01             	mov    ax,0x188
   3e9e1:	8e c0                	mov    es,ax
   3e9e3:	26 c7 06 33 e6 14 00 	mov    WORD PTR es:0xe633,0x14
   3e9ea:	b8 88 01             	mov    ax,0x188
   3e9ed:	8e c0                	mov    es,ax
   3e9ef:	26 c7 06 35 e6 9a 00 	mov    WORD PTR es:0xe635,0x9a
   3e9f6:	b8 88 01             	mov    ax,0x188
   3e9f9:	8e c0                	mov    es,ax
   3e9fb:	26 c7 06 37 e6 a5 00 	mov    WORD PTR es:0xe637,0xa5
   3ea02:	b8 88 01             	mov    ax,0x188
   3ea05:	8e c0                	mov    es,ax
   3ea07:	26 c7 06 39 e6 36 01 	mov    WORD PTR es:0xe639,0x136
   3ea0e:	b8 88 01             	mov    ax,0x188
   3ea11:	8e c0                	mov    es,ax
   3ea13:	26 c7 06 3b e6 bc 00 	mov    WORD PTR es:0xe63b,0xbc
   3ea1a:	6a 00                	push   0x0
   3ea1c:	b8 88 01             	mov    ax,0x188
   3ea1f:	8e c0                	mov    es,ax
   3ea21:	26 a1 1e 73          	mov    ax,es:0x731e
   3ea25:	ba 88 01             	mov    dx,0x188
   3ea28:	8e c2                	mov    es,dx
   3ea2a:	26 2b 06 18 73       	sub    ax,WORD PTR es:0x7318
   3ea2f:	50                   	push   ax
   3ea30:	68 20 03             	push   0x320
   3ea33:	9a 3f 07 30 00       	call   0x30:0x73f
   3ea38:	83 c4 06             	add    sp,0x6
   3ea3b:	b8 88 01             	mov    ax,0x188
   3ea3e:	8e c0                	mov    es,ax
   3ea40:	26 a0 e3 e5          	mov    al,es:0xe5e3
   3ea44:	50                   	push   ax
   3ea45:	9a 69 00 30 00       	call   0x30:0x69
   3ea4a:	59                   	pop    cx
   3ea4b:	b8 88 01             	mov    ax,0x188
   3ea4e:	8e c0                	mov    es,ax
   3ea50:	26 a1 4a e7          	mov    ax,es:0xe74a
   3ea54:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   3ea57:	6a 00                	push   0x0
   3ea59:	68 00 80             	push   0x8000
   3ea5c:	9a 79 17 00 00       	call   0x0:0x1779
   3ea61:	99                   	cwd
   3ea62:	50                   	push   ax
   3ea63:	52                   	push   dx
   3ea64:	33 d2                	xor    dx,dx
   3ea66:	b8 e8 03             	mov    ax,0x3e8
   3ea69:	59                   	pop    cx
   3ea6a:	5b                   	pop    bx
   3ea6b:	9a 42 12 00 00       	call   0x0:0x1242
   3ea70:	52                   	push   dx
   3ea71:	50                   	push   ax
   3ea72:	9a df 12 00 00       	call   0x0:0x12df
   3ea77:	0b c0                	or     ax,ax
   3ea79:	75 0d                	jne    0x3ea88
   3ea7b:	83 3e ea 48 00       	cmp    WORD PTR ds:0x48ea,0x0
   3ea80:	75 06                	jne    0x3ea88
   3ea82:	c7 06 ea 48 01 00    	mov    WORD PTR ds:0x48ea,0x1
   3ea88:	b8 88 01             	mov    ax,0x188
   3ea8b:	8e c0                	mov    es,ax
   3ea8d:	26 a1 4a e7          	mov    ax,es:0xe74a
   3ea91:	2b 46 f4             	sub    ax,WORD PTR [bp-0xc]
   3ea94:	3b 46 f2             	cmp    ax,WORD PTR [bp-0xe]
   3ea97:	73 03                	jae    0x3ea9c
   3ea99:	e9 2c 01             	jmp    0x3ebc8
   3ea9c:	b8 88 01             	mov    ax,0x188
   3ea9f:	8e c0                	mov    es,ax
   3eaa1:	26 a1 4a e7          	mov    ax,es:0xe74a
   3eaa5:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   3eaa8:	0e                   	push   cs
   3eaa9:	e8 b1 e4             	call   0x3cf5d
   3eaac:	6a 01                	push   0x1
   3eaae:	9a c7 05 30 00       	call   0x30:0x5c7
   3eab3:	59                   	pop    cx
   3eab4:	0a c0                	or     al,al
   3eab6:	75 13                	jne    0x3eacb
   3eab8:	83 3e ea 48 00       	cmp    WORD PTR ds:0x48ea,0x0
   3eabd:	74 16                	je     0x3ead5
   3eabf:	6a 02                	push   0x2
   3eac1:	9a c7 05 30 00       	call   0x30:0x5c7
   3eac6:	59                   	pop    cx
   3eac7:	0a c0                	or     al,al
   3eac9:	74 0a                	je     0x3ead5
   3eacb:	9a 04 02 30 00       	call   0x30:0x204
   3ead0:	c7 46 f8 01 00       	mov    WORD PTR [bp-0x8],0x1
   3ead5:	68 e0 01             	push   0x1e0
   3ead8:	68 d0 02             	push   0x2d0
   3eadb:	6a 00                	push   0x0
   3eadd:	6a 06                	push   0x6
   3eadf:	b8 88 01             	mov    ax,0x188
   3eae2:	8e c0                	mov    es,ax
   3eae4:	26 ff 36 ff e5       	push   WORD PTR es:0xe5ff
   3eae9:	b8 88 01             	mov    ax,0x188
   3eaec:	8e c0                	mov    es,ax
   3eaee:	26 ff 36 fd e5       	push   WORD PTR es:0xe5fd
   3eaf3:	b8 88 01             	mov    ax,0x188
   3eaf6:	8e c0                	mov    es,ax
   3eaf8:	26 a1 03 e6          	mov    ax,es:0xe603
   3eafc:	ba 88 01             	mov    dx,0x188
   3eaff:	8e c2                	mov    es,dx
   3eb01:	26 2b 06 ff e5       	sub    ax,WORD PTR es:0xe5ff
   3eb06:	50                   	push   ax
   3eb07:	b8 88 01             	mov    ax,0x188
   3eb0a:	8e c0                	mov    es,ax
   3eb0c:	26 a1 01 e6          	mov    ax,es:0xe601
   3eb10:	ba 88 01             	mov    dx,0x188
   3eb13:	8e c2                	mov    es,dx
   3eb15:	26 2b 06 fd e5       	sub    ax,WORD PTR es:0xe5fd
   3eb1a:	50                   	push   ax
   3eb1b:	b8 88 01             	mov    ax,0x188
   3eb1e:	8e c0                	mov    es,ax
   3eb20:	26 ff 36 ff e5       	push   WORD PTR es:0xe5ff
   3eb25:	b8 88 01             	mov    ax,0x188
   3eb28:	8e c0                	mov    es,ax
   3eb2a:	26 ff 36 fd e5       	push   WORD PTR es:0xe5fd
   3eb2f:	9a 30 04 28 00       	call   0x28:0x430
   3eb34:	83 c4 14             	add    sp,0x14
   3eb37:	83 3e ea 48 00       	cmp    WORD PTR ds:0x48ea,0x0
   3eb3c:	74 6f                	je     0x3ebad
   3eb3e:	68 e0 01             	push   0x1e0
   3eb41:	68 d0 02             	push   0x2d0
   3eb44:	6a 00                	push   0x0
   3eb46:	6a 06                	push   0x6
   3eb48:	b8 88 01             	mov    ax,0x188
   3eb4b:	8e c0                	mov    es,ax
   3eb4d:	26 ff 36 07 e6       	push   WORD PTR es:0xe607
   3eb52:	b8 88 01             	mov    ax,0x188
   3eb55:	8e c0                	mov    es,ax
   3eb57:	26 ff 36 05 e6       	push   WORD PTR es:0xe605
   3eb5c:	b8 88 01             	mov    ax,0x188
   3eb5f:	8e c0                	mov    es,ax
   3eb61:	26 a1 0b e6          	mov    ax,es:0xe60b
   3eb65:	ba 88 01             	mov    dx,0x188
   3eb68:	8e c2                	mov    es,dx
   3eb6a:	26 2b 06 07 e6       	sub    ax,WORD PTR es:0xe607
   3eb6f:	50                   	push   ax
   3eb70:	b8 88 01             	mov    ax,0x188
   3eb73:	8e c0                	mov    es,ax
   3eb75:	26 a1 09 e6          	mov    ax,es:0xe609
   3eb79:	ba 88 01             	mov    dx,0x188
   3eb7c:	8e c2                	mov    es,dx
   3eb7e:	26 2b 06 05 e6       	sub    ax,WORD PTR es:0xe605
   3eb83:	50                   	push   ax
   3eb84:	b8 88 01             	mov    ax,0x188
   3eb87:	8e c0                	mov    es,ax
   3eb89:	26 ff 36 07 e6       	push   WORD PTR es:0xe607
   3eb8e:	b8 88 01             	mov    ax,0x188
   3eb91:	8e c0                	mov    es,ax
   3eb93:	26 ff 36 05 e6       	push   WORD PTR es:0xe605
   3eb98:	9a 30 04 28 00       	call   0x28:0x430
   3eb9d:	83 c4 14             	add    sp,0x14
   3eba0:	bb 03 00             	mov    bx,0x3
   3eba3:	a1 ea 48             	mov    ax,ds:0x48ea
   3eba6:	99                   	cwd
   3eba7:	f7 fb                	idiv   bx
   3eba9:	89 16 ea 48          	mov    WORD PTR ds:0x48ea,dx
   3ebad:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   3ebb1:	74 15                	je     0x3ebc8
   3ebb3:	b8 88 01             	mov    ax,0x188
   3ebb6:	8e c0                	mov    es,ax
   3ebb8:	26 a0 e3 e5          	mov    al,es:0xe5e3
   3ebbc:	50                   	push   ax
   3ebbd:	9a 69 00 30 00       	call   0x30:0x69
   3ebc2:	59                   	pop    cx
   3ebc3:	c7 46 f8 00 00       	mov    WORD PTR [bp-0x8],0x0
   3ebc8:	b8 88 01             	mov    ax,0x188
   3ebcb:	8e c0                	mov    es,ax
   3ebcd:	26 ff 36 62 96       	push   WORD PTR es:0x9662
   3ebd2:	26 ff 36 60 96       	push   WORD PTR es:0x9660
   3ebd7:	b8 88 01             	mov    ax,0x188
   3ebda:	8e c0                	mov    es,ax
   3ebdc:	26 ff 1e 4c 96       	call   DWORD PTR es:0x964c
   3ebe1:	83 c4 04             	add    sp,0x4
   3ebe4:	6a 01                	push   0x1
   3ebe6:	9a 3f 1f 00 00       	call   0x0:0x1f3f
   3ebeb:	59                   	pop    cx
   3ebec:	c1 f8 08             	sar    ax,0x8
   3ebef:	ba 88 01             	mov    dx,0x188
   3ebf2:	8e c2                	mov    es,dx
   3ebf4:	26 a3 d6 d5          	mov    es:0xd5d6,ax
   3ebf8:	b8 88 01             	mov    ax,0x188
   3ebfb:	8e c0                	mov    es,ax
   3ebfd:	26 a0 e3 e5          	mov    al,es:0xe5e3
   3ec01:	50                   	push   ax
   3ec02:	9a 6b 02 30 00       	call   0x30:0x26b
   3ec07:	59                   	pop    cx
   3ec08:	b8 88 01             	mov    ax,0x188
   3ec0b:	8e c0                	mov    es,ax
   3ec0d:	26 a1 d6 d5          	mov    ax,es:0xd5d6
   3ec11:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   3ec14:	9a 15 05 30 00       	call   0x30:0x515
   3ec19:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   3ec1c:	b8 88 01             	mov    ax,0x188
   3ec1f:	8e c0                	mov    es,ax
   3ec21:	26 a1 e5 e5          	mov    ax,es:0xe5e5
   3ec25:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   3ec28:	83 7e fe 00          	cmp    WORD PTR [bp-0x2],0x0
   3ec2c:	75 09                	jne    0x3ec37
   3ec2e:	83 7e fa 00          	cmp    WORD PTR [bp-0x6],0x0
   3ec32:	75 03                	jne    0x3ec37
   3ec34:	e9 20 fe             	jmp    0x3ea57
   3ec37:	83 7e fa 00          	cmp    WORD PTR [bp-0x6],0x0
   3ec3b:	74 1d                	je     0x3ec5a
   3ec3d:	b8 88 01             	mov    ax,0x188
   3ec40:	8e c0                	mov    es,ax
   3ec42:	26 a0 e3 e5          	mov    al,es:0xe5e3
   3ec46:	50                   	push   ax
   3ec47:	9a 6b 02 30 00       	call   0x30:0x26b
   3ec4c:	59                   	pop    cx
   3ec4d:	b8 88 01             	mov    ax,0x188
   3ec50:	8e c0                	mov    es,ax
   3ec52:	26 83 3e e5 e5 00    	cmp    WORD PTR es:0xe5e5,0x0
   3ec58:	75 e3                	jne    0x3ec3d
   3ec5a:	9a e3 01 40 00       	call   0x40:0x1e3
   3ec5f:	83 7e fe 4d          	cmp    WORD PTR [bp-0x2],0x4d
   3ec63:	74 12                	je     0x3ec77
   3ec65:	83 7e fc 02          	cmp    WORD PTR [bp-0x4],0x2
   3ec69:	74 06                	je     0x3ec71
   3ec6b:	83 7e fc 01          	cmp    WORD PTR [bp-0x4],0x1
   3ec6f:	75 2f                	jne    0x3eca0
   3ec71:	83 7e fa 01          	cmp    WORD PTR [bp-0x6],0x1
   3ec75:	75 29                	jne    0x3eca0
   3ec77:	6a 10                	push   0x10
   3ec79:	6a 01                	push   0x1
   3ec7b:	6a 01                	push   0x1
   3ec7d:	b8 88 01             	mov    ax,0x188
   3ec80:	8e c0                	mov    es,ax
   3ec82:	26 a1 98 28          	mov    ax,es:0x2898
   3ec86:	6b c0 5c             	imul   ax,ax,0x5c
   3ec89:	05 e8 99             	add    ax,0x99e8
   3ec8c:	68 88 01             	push   0x188
   3ec8f:	50                   	push   ax
   3ec90:	9a 25 00 38 01       	call   0x138:0x25
   3ec95:	83 c4 0a             	add    sp,0xa
   3ec98:	0e                   	push   cs
   3ec99:	e8 83 e0             	call   0x3cd1f
   3ec9c:	0e                   	push   cs
   3ec9d:	e8 aa f5             	call   0x3e24a
   3eca0:	83 7e fe 4b          	cmp    WORD PTR [bp-0x2],0x4b
   3eca4:	74 12                	je     0x3ecb8
   3eca6:	83 7e fc 02          	cmp    WORD PTR [bp-0x4],0x2
   3ecaa:	74 06                	je     0x3ecb2
   3ecac:	83 7e fc 01          	cmp    WORD PTR [bp-0x4],0x1
   3ecb0:	75 2f                	jne    0x3ece1
   3ecb2:	83 7e fa 02          	cmp    WORD PTR [bp-0x6],0x2
   3ecb6:	75 29                	jne    0x3ece1
   3ecb8:	6a 10                	push   0x10
   3ecba:	6a 01                	push   0x1
   3ecbc:	6a ff                	push   0xffff
   3ecbe:	b8 88 01             	mov    ax,0x188
   3ecc1:	8e c0                	mov    es,ax
   3ecc3:	26 a1 98 28          	mov    ax,es:0x2898
   3ecc7:	6b c0 5c             	imul   ax,ax,0x5c
   3ecca:	05 e8 99             	add    ax,0x99e8
   3eccd:	68 88 01             	push   0x188
   3ecd0:	50                   	push   ax
   3ecd1:	9a 25 00 38 01       	call   0x138:0x25
   3ecd6:	83 c4 0a             	add    sp,0xa
   3ecd9:	0e                   	push   cs
   3ecda:	e8 42 e0             	call   0x3cd1f
   3ecdd:	0e                   	push   cs
   3ecde:	e8 69 f5             	call   0x3e24a
   3ece1:	83 7e fe 48          	cmp    WORD PTR [bp-0x2],0x48
   3ece5:	74 12                	je     0x3ecf9
   3ece7:	83 7e fc 03          	cmp    WORD PTR [bp-0x4],0x3
   3eceb:	74 03                	je     0x3ecf0
   3eced:	e9 a0 00             	jmp    0x3ed90
   3ecf0:	83 7e fa 01          	cmp    WORD PTR [bp-0x6],0x1
   3ecf4:	74 03                	je     0x3ecf9
   3ecf6:	e9 97 00             	jmp    0x3ed90
   3ecf9:	6a 08                	push   0x8
   3ecfb:	6a 01                	push   0x1
   3ecfd:	6a 01                	push   0x1
   3ecff:	b8 88 01             	mov    ax,0x188
   3ed02:	8e c0                	mov    es,ax
   3ed04:	26 a1 98 28          	mov    ax,es:0x2898
   3ed08:	6b c0 5c             	imul   ax,ax,0x5c
   3ed0b:	05 a8 99             	add    ax,0x99a8
   3ed0e:	68 88 01             	push   0x188
   3ed11:	50                   	push   ax
   3ed12:	9a 25 00 38 01       	call   0x138:0x25
   3ed17:	83 c4 0a             	add    sp,0xa
   3ed1a:	68 e0 01             	push   0x1e0
   3ed1d:	68 d0 02             	push   0x2d0
   3ed20:	6a 06                	push   0x6
   3ed22:	6a 45                	push   0x45
   3ed24:	6a 58                	push   0x58
   3ed26:	6a 44                	push   0x44
   3ed28:	6a 14                	push   0x14
   3ed2a:	6a 14                	push   0x14
   3ed2c:	6a 00                	push   0x0
   3ed2e:	b8 88 01             	mov    ax,0x188
   3ed31:	8e c0                	mov    es,ax
   3ed33:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3ed38:	6b db 5c             	imul   bx,bx,0x5c
   3ed3b:	b8 88 01             	mov    ax,0x188
   3ed3e:	8e c0                	mov    es,ax
   3ed40:	26 8b 87 a8 99       	mov    ax,WORD PTR es:[bx-0x6658]
   3ed45:	48                   	dec    ax
   3ed46:	6b c0 14             	imul   ax,ax,0x14
   3ed49:	50                   	push   ax
   3ed4a:	9a 30 04 28 00       	call   0x28:0x430
   3ed4f:	83 c4 14             	add    sp,0x14
   3ed52:	0e                   	push   cs
   3ed53:	e8 e1 e2             	call   0x3d037
   3ed56:	b8 88 01             	mov    ax,0x188
   3ed59:	8e c0                	mov    es,ax
   3ed5b:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3ed60:	6b db 5c             	imul   bx,bx,0x5c
   3ed63:	b8 88 01             	mov    ax,0x188
   3ed66:	8e c0                	mov    es,ax
   3ed68:	26 8b 87 a8 99       	mov    ax,WORD PTR es:[bx-0x6658]
   3ed6d:	48                   	dec    ax
   3ed6e:	d1 e0                	shl    ax,1
   3ed70:	40                   	inc    ax
   3ed71:	ba 88 01             	mov    dx,0x188
   3ed74:	8e c2                	mov    es,dx
   3ed76:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3ed7b:	6b db 5c             	imul   bx,bx,0x5c
   3ed7e:	ba 88 01             	mov    dx,0x188
   3ed81:	8e c2                	mov    es,dx
   3ed83:	26 89 87 e8 99       	mov    WORD PTR es:[bx-0x6618],ax
   3ed88:	0e                   	push   cs
   3ed89:	e8 93 df             	call   0x3cd1f
   3ed8c:	0e                   	push   cs
   3ed8d:	e8 ba f4             	call   0x3e24a
   3ed90:	83 7e fe 50          	cmp    WORD PTR [bp-0x2],0x50
   3ed94:	74 12                	je     0x3eda8
   3ed96:	83 7e fc 03          	cmp    WORD PTR [bp-0x4],0x3
   3ed9a:	74 03                	je     0x3ed9f
   3ed9c:	e9 a0 00             	jmp    0x3ee3f
   3ed9f:	83 7e fa 02          	cmp    WORD PTR [bp-0x6],0x2
   3eda3:	74 03                	je     0x3eda8
   3eda5:	e9 97 00             	jmp    0x3ee3f
   3eda8:	6a 08                	push   0x8
   3edaa:	6a 01                	push   0x1
   3edac:	6a ff                	push   0xffff
   3edae:	b8 88 01             	mov    ax,0x188
   3edb1:	8e c0                	mov    es,ax
   3edb3:	26 a1 98 28          	mov    ax,es:0x2898
   3edb7:	6b c0 5c             	imul   ax,ax,0x5c
   3edba:	05 a8 99             	add    ax,0x99a8
   3edbd:	68 88 01             	push   0x188
   3edc0:	50                   	push   ax
   3edc1:	9a 25 00 38 01       	call   0x138:0x25
   3edc6:	83 c4 0a             	add    sp,0xa
   3edc9:	68 e0 01             	push   0x1e0
   3edcc:	68 d0 02             	push   0x2d0
   3edcf:	6a 06                	push   0x6
   3edd1:	6a 45                	push   0x45
   3edd3:	6a 58                	push   0x58
   3edd5:	6a 44                	push   0x44
   3edd7:	6a 14                	push   0x14
   3edd9:	6a 14                	push   0x14
   3eddb:	6a 00                	push   0x0
   3eddd:	b8 88 01             	mov    ax,0x188
   3ede0:	8e c0                	mov    es,ax
   3ede2:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3ede7:	6b db 5c             	imul   bx,bx,0x5c
   3edea:	b8 88 01             	mov    ax,0x188
   3eded:	8e c0                	mov    es,ax
   3edef:	26 8b 87 a8 99       	mov    ax,WORD PTR es:[bx-0x6658]
   3edf4:	48                   	dec    ax
   3edf5:	6b c0 14             	imul   ax,ax,0x14
   3edf8:	50                   	push   ax
   3edf9:	9a 30 04 28 00       	call   0x28:0x430
   3edfe:	83 c4 14             	add    sp,0x14
   3ee01:	0e                   	push   cs
   3ee02:	e8 32 e2             	call   0x3d037
   3ee05:	b8 88 01             	mov    ax,0x188
   3ee08:	8e c0                	mov    es,ax
   3ee0a:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3ee0f:	6b db 5c             	imul   bx,bx,0x5c
   3ee12:	b8 88 01             	mov    ax,0x188
   3ee15:	8e c0                	mov    es,ax
   3ee17:	26 8b 87 a8 99       	mov    ax,WORD PTR es:[bx-0x6658]
   3ee1c:	48                   	dec    ax
   3ee1d:	d1 e0                	shl    ax,1
   3ee1f:	40                   	inc    ax
   3ee20:	ba 88 01             	mov    dx,0x188
   3ee23:	8e c2                	mov    es,dx
   3ee25:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3ee2a:	6b db 5c             	imul   bx,bx,0x5c
   3ee2d:	ba 88 01             	mov    dx,0x188
   3ee30:	8e c2                	mov    es,dx
   3ee32:	26 89 87 e8 99       	mov    WORD PTR es:[bx-0x6618],ax
   3ee37:	0e                   	push   cs
   3ee38:	e8 e4 de             	call   0x3cd1f
   3ee3b:	0e                   	push   cs
   3ee3c:	e8 0b f4             	call   0x3e24a
   3ee3f:	83 7e fe 1c          	cmp    WORD PTR [bp-0x2],0x1c
   3ee43:	74 0c                	je     0x3ee51
   3ee45:	83 7e fc 06          	cmp    WORD PTR [bp-0x4],0x6
   3ee49:	75 1f                	jne    0x3ee6a
   3ee4b:	83 7e fa 01          	cmp    WORD PTR [bp-0x6],0x1
   3ee4f:	75 19                	jne    0x3ee6a
   3ee51:	9a 04 02 30 00       	call   0x30:0x204
   3ee56:	0e                   	push   cs
   3ee57:	e8 dd e1             	call   0x3d037
   3ee5a:	b8 88 01             	mov    ax,0x188
   3ee5d:	8e c0                	mov    es,ax
   3ee5f:	26 a0 e3 e5          	mov    al,es:0xe5e3
   3ee63:	50                   	push   ax
   3ee64:	9a 69 00 30 00       	call   0x30:0x69
   3ee69:	59                   	pop    cx
   3ee6a:	83 7e fe 2e          	cmp    WORD PTR [bp-0x2],0x2e
   3ee6e:	74 0c                	je     0x3ee7c
   3ee70:	83 7e fc 04          	cmp    WORD PTR [bp-0x4],0x4
   3ee74:	75 44                	jne    0x3eeba
   3ee76:	83 7e fa 00          	cmp    WORD PTR [bp-0x6],0x0
   3ee7a:	74 3e                	je     0x3eeba
   3ee7c:	9a 04 02 30 00       	call   0x30:0x204
   3ee81:	6a 02                	push   0x2
   3ee83:	6a 01                	push   0x1
   3ee85:	6a 01                	push   0x1
   3ee87:	b8 88 01             	mov    ax,0x188
   3ee8a:	8e c0                	mov    es,ax
   3ee8c:	26 a1 98 28          	mov    ax,es:0x2898
   3ee90:	6b c0 5c             	imul   ax,ax,0x5c
   3ee93:	05 aa 99             	add    ax,0x99aa
   3ee96:	68 88 01             	push   0x188
   3ee99:	50                   	push   ax
   3ee9a:	9a 25 00 38 01       	call   0x138:0x25
   3ee9f:	83 c4 0a             	add    sp,0xa
   3eea2:	0e                   	push   cs
   3eea3:	e8 91 e1             	call   0x3d037
   3eea6:	0e                   	push   cs
   3eea7:	e8 a0 f3             	call   0x3e24a
   3eeaa:	b8 88 01             	mov    ax,0x188
   3eead:	8e c0                	mov    es,ax
   3eeaf:	26 a0 e3 e5          	mov    al,es:0xe5e3
   3eeb3:	50                   	push   ax
   3eeb4:	9a 69 00 30 00       	call   0x30:0x69
   3eeb9:	59                   	pop    cx
   3eeba:	83 7e fe 0f          	cmp    WORD PTR [bp-0x2],0xf
   3eebe:	74 0c                	je     0x3eecc
   3eec0:	83 7e fc 05          	cmp    WORD PTR [bp-0x4],0x5
   3eec4:	75 4c                	jne    0x3ef12
   3eec6:	83 7e fa 01          	cmp    WORD PTR [bp-0x6],0x1
   3eeca:	75 46                	jne    0x3ef12
   3eecc:	6a 06                	push   0x6
   3eece:	9a 5c 00 38 01       	call   0x138:0x5c
   3eed3:	59                   	pop    cx
   3eed4:	6a 01                	push   0x1
   3eed6:	68 a8 00             	push   0xa8
   3eed9:	6a 11                	push   0x11
   3eedb:	6a 00                	push   0x0
   3eedd:	68 a8 00             	push   0xa8
   3eee0:	6a 11                	push   0x11
   3eee2:	6a 73                	push   0x73
   3eee4:	6a 00                	push   0x0
   3eee6:	b8 88 01             	mov    ax,0x188
   3eee9:	8e c0                	mov    es,ax
   3eeeb:	26 a0 66 96          	mov    al,es:0x9666
   3eeef:	50                   	push   ax
   3eef0:	6a 01                	push   0x1
   3eef2:	b8 88 01             	mov    ax,0x188
   3eef5:	8e c0                	mov    es,ax
   3eef7:	26 a1 98 28          	mov    ax,es:0x2898
   3eefb:	69 c0 94 00          	imul   ax,ax,0x94
   3eeff:	05 26 9c             	add    ax,0x9c26
   3ef02:	68 88 01             	push   0x188
   3ef05:	50                   	push   ax
   3ef06:	9a 4d 00 80 01       	call   0x180:0x4d
   3ef0b:	83 c4 18             	add    sp,0x18
   3ef0e:	0e                   	push   cs
   3ef0f:	e8 c0 f4             	call   0x3e3d2
   3ef12:	83 7e fe 39          	cmp    WORD PTR [bp-0x2],0x39
   3ef16:	74 0c                	je     0x3ef24
   3ef18:	83 7e fc 08          	cmp    WORD PTR [bp-0x4],0x8
   3ef1c:	75 40                	jne    0x3ef5e
   3ef1e:	83 7e fa 01          	cmp    WORD PTR [bp-0x6],0x1
   3ef22:	75 3a                	jne    0x3ef5e
   3ef24:	b8 88 01             	mov    ax,0x188
   3ef27:	8e c0                	mov    es,ax
   3ef29:	26 a1 98 28          	mov    ax,es:0x2898
   3ef2d:	69 c0 94 00          	imul   ax,ax,0x94
   3ef31:	05 26 9c             	add    ax,0x9c26
   3ef34:	68 88 01             	push   0x188
   3ef37:	50                   	push   ax
   3ef38:	9a cc 49 00 00       	call   0x0:0x49cc
   3ef3d:	83 c4 04             	add    sp,0x4
   3ef40:	0b c0                	or     ax,ax
   3ef42:	74 1a                	je     0x3ef5e
   3ef44:	b8 88 01             	mov    ax,0x188
   3ef47:	8e c0                	mov    es,ax
   3ef49:	26 83 3e 98 28 04    	cmp    WORD PTR es:0x2898,0x4
   3ef4f:	7d 0d                	jge    0x3ef5e
   3ef51:	b8 88 01             	mov    ax,0x188
   3ef54:	8e c0                	mov    es,ax
   3ef56:	26 ff 06 98 28       	inc    WORD PTR es:0x2898
   3ef5b:	e9 96 00             	jmp    0x3eff4
   3ef5e:	83 7e fe 39          	cmp    WORD PTR [bp-0x2],0x39
   3ef62:	74 0c                	je     0x3ef70
   3ef64:	83 7e fc 08          	cmp    WORD PTR [bp-0x4],0x8
   3ef68:	75 61                	jne    0x3efcb
   3ef6a:	83 7e fa 01          	cmp    WORD PTR [bp-0x6],0x1
   3ef6e:	75 5b                	jne    0x3efcb
   3ef70:	b8 88 01             	mov    ax,0x188
   3ef73:	8e c0                	mov    es,ax
   3ef75:	26 a1 98 28          	mov    ax,es:0x2898
   3ef79:	69 c0 94 00          	imul   ax,ax,0x94
   3ef7d:	05 26 9c             	add    ax,0x9c26
   3ef80:	68 88 01             	push   0x188
   3ef83:	50                   	push   ax
   3ef84:	9a cc 49 00 00       	call   0x0:0x49cc
   3ef89:	83 c4 04             	add    sp,0x4
   3ef8c:	0b c0                	or     ax,ax
   3ef8e:	74 3b                	je     0x3efcb
   3ef90:	b8 88 01             	mov    ax,0x188
   3ef93:	8e c0                	mov    es,ax
   3ef95:	26 83 3e 98 28 04    	cmp    WORD PTR es:0x2898,0x4
   3ef9b:	75 2e                	jne    0x3efcb
   3ef9d:	b8 88 01             	mov    ax,0x188
   3efa0:	8e c0                	mov    es,ax
   3efa2:	26 ff 06 98 28       	inc    WORD PTR es:0x2898
   3efa7:	6a 00                	push   0x0
   3efa9:	b8 88 01             	mov    ax,0x188
   3efac:	8e c0                	mov    es,ax
   3efae:	26 a1 18 73          	mov    ax,es:0x7318
   3efb2:	f7 d8                	neg    ax
   3efb4:	50                   	push   ax
   3efb5:	68 80 0c             	push   0xc80
   3efb8:	9a 3f 07 30 00       	call   0x30:0x73f
   3efbd:	83 c4 06             	add    sp,0x6
   3efc0:	0e                   	push   cs
   3efc1:	e8 6a f4             	call   0x3e42e
   3efc4:	0e                   	push   cs
   3efc5:	e8 52 f6             	call   0x3e61a
   3efc8:	e9 94 00             	jmp    0x3f05f
   3efcb:	83 7e fe 01          	cmp    WORD PTR [bp-0x2],0x1
   3efcf:	74 0c                	je     0x3efdd
   3efd1:	83 7e fc 07          	cmp    WORD PTR [bp-0x4],0x7
   3efd5:	75 39                	jne    0x3f010
   3efd7:	83 7e fa 01          	cmp    WORD PTR [bp-0x6],0x1
   3efdb:	75 33                	jne    0x3f010
   3efdd:	b8 88 01             	mov    ax,0x188
   3efe0:	8e c0                	mov    es,ax
   3efe2:	26 83 3e 98 28 01    	cmp    WORD PTR es:0x2898,0x1
   3efe8:	7e 26                	jle    0x3f010
   3efea:	b8 88 01             	mov    ax,0x188
   3efed:	8e c0                	mov    es,ax
   3efef:	26 ff 0e 98 28       	dec    WORD PTR es:0x2898
   3eff4:	6a 00                	push   0x0
   3eff6:	b8 88 01             	mov    ax,0x188
   3eff9:	8e c0                	mov    es,ax
   3effb:	26 a1 18 73          	mov    ax,es:0x7318
   3efff:	f7 d8                	neg    ax
   3f001:	50                   	push   ax
   3f002:	68 20 03             	push   0x320
   3f005:	9a 3f 07 30 00       	call   0x30:0x73f
   3f00a:	83 c4 06             	add    sp,0x6
   3f00d:	e9 43 f7             	jmp    0x3e753
   3f010:	83 7e fe 01          	cmp    WORD PTR [bp-0x2],0x1
   3f014:	74 12                	je     0x3f028
   3f016:	83 7e fc 07          	cmp    WORD PTR [bp-0x4],0x7
   3f01a:	74 03                	je     0x3f01f
   3f01c:	e9 2c fa             	jmp    0x3ea4b
   3f01f:	83 7e fa 01          	cmp    WORD PTR [bp-0x6],0x1
   3f023:	74 03                	je     0x3f028
   3f025:	e9 23 fa             	jmp    0x3ea4b
   3f028:	b8 88 01             	mov    ax,0x188
   3f02b:	8e c0                	mov    es,ax
   3f02d:	26 83 3e 98 28 01    	cmp    WORD PTR es:0x2898,0x1
   3f033:	74 03                	je     0x3f038
   3f035:	e9 13 fa             	jmp    0x3ea4b
   3f038:	0e                   	push   cs
   3f039:	e8 de f5             	call   0x3e61a
   3f03c:	6a 00                	push   0x0
   3f03e:	b8 88 01             	mov    ax,0x188
   3f041:	8e c0                	mov    es,ax
   3f043:	26 a1 18 73          	mov    ax,es:0x7318
   3f047:	f7 d8                	neg    ax
   3f049:	50                   	push   ax
   3f04a:	68 20 03             	push   0x320
   3f04d:	9a 3f 07 30 00       	call   0x30:0x73f
   3f052:	83 c4 06             	add    sp,0x6
   3f055:	c7 46 f6 00 00       	mov    WORD PTR [bp-0xa],0x0
   3f05a:	eb 03                	jmp    0x3f05f
   3f05c:	e9 ec f9             	jmp    0x3ea4b
   3f05f:	9a b6 06 30 00       	call   0x30:0x6b6
   3f064:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   3f067:	c9                   	leave
   3f068:	cb                   	retf
