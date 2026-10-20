
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
