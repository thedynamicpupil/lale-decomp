
analysis/phase-five/living-continuation-20261014/face-animation/appearance-and-face-step.bin:     file format binary


Disassembly of section .data:

0003ceaa <.data>:
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
