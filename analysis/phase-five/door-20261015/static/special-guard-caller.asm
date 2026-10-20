
analysis/phase-five/door-20261015/static/special-guard-caller.bin:     file format binary


Disassembly of section .data:

00031f10 <.data>:
   31f10:	55                   	push   bp
   31f11:	8b ec                	mov    bp,sp
   31f13:	83 ec 04             	sub    sp,0x4
   31f16:	b8 88 01             	mov    ax,0x188
   31f19:	8e c0                	mov    es,ax
   31f1b:	26 a0 eb b9          	mov    al,es:0xb9eb
   31f1f:	b4 00                	mov    ah,0x0
   31f21:	ba 88 01             	mov    dx,0x188
   31f24:	8e c2                	mov    es,dx
   31f26:	50                   	push   ax
   31f27:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   31f2b:	5a                   	pop    dx
   31f2c:	f7 ea                	imul   dx
   31f2e:	ba 88 01             	mov    dx,0x188
   31f31:	8e c2                	mov    es,dx
   31f33:	26 8b 16 f3 b9       	mov    dx,WORD PTR es:0xb9f3
   31f38:	03 d0                	add    dx,ax
   31f3a:	6b d2 0f             	imul   dx,dx,0xf
   31f3d:	89 56 fe             	mov    WORD PTR [bp-0x2],dx
   31f40:	8a 46 0a             	mov    al,BYTE PTR [bp+0xa]
   31f43:	b4 00                	mov    ah,0x0
   31f45:	bb 04 00             	mov    bx,0x4
   31f48:	99                   	cwd
   31f49:	f7 fb                	idiv   bx
   31f4b:	d1 e2                	shl    dx,1
   31f4d:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   31f50:	03 c2                	add    ax,dx
   31f52:	99                   	cwd
   31f53:	bb 88 01             	mov    bx,0x188
   31f56:	8e c3                	mov    es,bx
   31f58:	50                   	push   ax
   31f59:	52                   	push   dx
   31f5a:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   31f5f:	26 a1 ec b9          	mov    ax,es:0xb9ec
   31f63:	59                   	pop    cx
   31f64:	5b                   	pop    bx
   31f65:	9a 77 14 00 00       	call   0x0:0x1477
   31f6a:	8b d8                	mov    bx,ax
   31f6c:	8e c2                	mov    es,dx
   31f6e:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   31f71:	b4 00                	mov    ah,0x0
   31f73:	d1 e0                	shl    ax,1
   31f75:	ba 88 01             	mov    dx,0x188
   31f78:	8b d8                	mov    bx,ax
   31f7a:	8e c2                	mov    es,dx
   31f7c:	26 83 bf 0e 9f 09    	cmp    WORD PTR es:[bx-0x60f2],0x9
   31f82:	74 03                	je     0x31f87
   31f84:	e9 45 01             	jmp    0x320cc
   31f87:	8a 46 0a             	mov    al,BYTE PTR [bp+0xa]
   31f8a:	b4 00                	mov    ah,0x0
   31f8c:	bb 04 00             	mov    bx,0x4
   31f8f:	99                   	cwd
   31f90:	f7 fb                	idiv   bx
   31f92:	d1 e2                	shl    dx,1
   31f94:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   31f97:	03 c2                	add    ax,dx
   31f99:	40                   	inc    ax
   31f9a:	99                   	cwd
   31f9b:	bb 88 01             	mov    bx,0x188
   31f9e:	8e c3                	mov    es,bx
   31fa0:	50                   	push   ax
   31fa1:	52                   	push   dx
   31fa2:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   31fa7:	26 a1 ec b9          	mov    ax,es:0xb9ec
   31fab:	59                   	pop    cx
   31fac:	5b                   	pop    bx
   31fad:	9a 77 14 00 00       	call   0x0:0x1477
   31fb2:	8b d8                	mov    bx,ax
   31fb4:	8e c2                	mov    es,dx
   31fb6:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   31fba:	75 03                	jne    0x31fbf
   31fbc:	e9 0d 01             	jmp    0x320cc
   31fbf:	b8 88 01             	mov    ax,0x188
   31fc2:	8e c0                	mov    es,ax
   31fc4:	26 a1 c6 b9          	mov    ax,es:0xb9c6
   31fc8:	3b 46 06             	cmp    ax,WORD PTR [bp+0x6]
   31fcb:	74 03                	je     0x31fd0
   31fcd:	e9 f9 00             	jmp    0x320c9
   31fd0:	b8 88 01             	mov    ax,0x188
   31fd3:	8e c0                	mov    es,ax
   31fd5:	26 a1 c4 b9          	mov    ax,es:0xb9c4
   31fd9:	3b 46 08             	cmp    ax,WORD PTR [bp+0x8]
   31fdc:	74 03                	je     0x31fe1
   31fde:	e9 e8 00             	jmp    0x320c9
   31fe1:	b8 88 01             	mov    ax,0x188
   31fe4:	8e c0                	mov    es,ax
   31fe6:	26 c7 06 a8 bb 00 00 	mov    WORD PTR es:0xbba8,0x0
   31fed:	6a 03                	push   0x3
   31fef:	b8 88 01             	mov    ax,0x188
   31ff2:	8e c0                	mov    es,ax
   31ff4:	26 a0 eb b9          	mov    al,es:0xb9eb
   31ff8:	b4 00                	mov    ah,0x0
   31ffa:	ba 88 01             	mov    dx,0x188
   31ffd:	8e c2                	mov    es,dx
   31fff:	50                   	push   ax
   32000:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   32004:	5a                   	pop    dx
   32005:	f7 ea                	imul   dx
   32007:	ba 88 01             	mov    dx,0x188
   3200a:	8e c2                	mov    es,dx
   3200c:	26 8b 16 f3 b9       	mov    dx,WORD PTR es:0xb9f3
   32011:	03 d0                	add    dx,ax
   32013:	6b d2 0f             	imul   dx,dx,0xf
   32016:	52                   	push   dx
   32017:	9a 20 00 30 01       	call   0x130:0x20
   3201c:	83 c4 04             	add    sp,0x4
   3201f:	6a 01                	push   0x1
   32021:	b8 88 01             	mov    ax,0x188
   32024:	8e c0                	mov    es,ax
   32026:	26 a0 eb b9          	mov    al,es:0xb9eb
   3202a:	b4 00                	mov    ah,0x0
   3202c:	ba 88 01             	mov    dx,0x188
   3202f:	8e c2                	mov    es,dx
   32031:	50                   	push   ax
   32032:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   32036:	03 46 08             	add    ax,WORD PTR [bp+0x8]
   32039:	5a                   	pop    dx
   3203a:	f7 ea                	imul   dx
   3203c:	ba 88 01             	mov    dx,0x188
   3203f:	8e c2                	mov    es,dx
   32041:	26 8b 16 f3 b9       	mov    dx,WORD PTR es:0xb9f3
   32046:	03 56 06             	add    dx,WORD PTR [bp+0x6]
   32049:	03 d0                	add    dx,ax
   3204b:	6b d2 0f             	imul   dx,dx,0xf
   3204e:	52                   	push   dx
   3204f:	9a 20 00 30 01       	call   0x130:0x20
   32054:	83 c4 04             	add    sp,0x4
   32057:	b8 88 01             	mov    ax,0x188
   3205a:	8e c0                	mov    es,ax
   3205c:	26 83 3e a8 bb 00    	cmp    WORD PTR es:0xbba8,0x0
   32062:	74 03                	je     0x32067
   32064:	e9 ae 05             	jmp    0x32615
   32067:	8a 46 0a             	mov    al,BYTE PTR [bp+0xa]
   3206a:	b4 00                	mov    ah,0x0
   3206c:	bb 04 00             	mov    bx,0x4
   3206f:	99                   	cwd
   32070:	f7 fb                	idiv   bx
   32072:	d1 e2                	shl    dx,1
   32074:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   32077:	03 c2                	add    ax,dx
   32079:	40                   	inc    ax
   3207a:	99                   	cwd
   3207b:	bb 88 01             	mov    bx,0x188
   3207e:	8e c3                	mov    es,bx
   32080:	50                   	push   ax
   32081:	52                   	push   dx
   32082:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   32087:	26 a1 ec b9          	mov    ax,es:0xb9ec
   3208b:	59                   	pop    cx
   3208c:	5b                   	pop    bx
   3208d:	9a 77 14 00 00       	call   0x0:0x1477
   32092:	8b d8                	mov    bx,ax
   32094:	8e c2                	mov    es,dx
   32096:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   32099:	b4 00                	mov    ah,0x0
   3209b:	3d 01 00             	cmp    ax,0x1
   3209e:	74 07                	je     0x320a7
   320a0:	3d 02 00             	cmp    ax,0x2
   320a3:	74 0c                	je     0x320b1
   320a5:	eb 0e                	jmp    0x320b5
   320a7:	6a 02                	push   0x2
   320a9:	9a c0 00 10 01       	call   0x110:0xc0
   320ae:	59                   	pop    cx
   320af:	eb 18                	jmp    0x320c9
   320b1:	6a 01                	push   0x1
   320b3:	eb f4                	jmp    0x320a9
   320b5:	6a 44                	push   0x44
   320b7:	6a 00                	push   0x0
   320b9:	6a 00                	push   0x0
   320bb:	6a 75                	push   0x75
   320bd:	1e                   	push   ds
   320be:	68 14 3f             	push   0x3f14
   320c1:	9a 2a 00 58 01       	call   0x158:0x2a
   320c6:	83 c4 0c             	add    sp,0xc
   320c9:	e9 49 05             	jmp    0x32615
