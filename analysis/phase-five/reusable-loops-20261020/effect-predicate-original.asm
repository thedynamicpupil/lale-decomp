
analysis/phase-five/reusable-loops-20261020/effect-predicate-original.bin:     file format binary


Disassembly of section .data:

0004bd30 <.data>:
   4bd30:	55                   	push   bp
   4bd31:	8b ec                	mov    bp,sp
   4bd33:	83 ec 04             	sub    sp,0x4
   4bd36:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   4bd3b:	eb 44                	jmp    0x4bd81
   4bd3d:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4bd40:	6b db 28             	imul   bx,bx,0x28
   4bd43:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4bd46:	d1 e0                	shl    ax,1
   4bd48:	03 d8                	add    bx,ax
   4bd4a:	b8 88 01             	mov    ax,0x188
   4bd4d:	8e c0                	mov    es,ax
   4bd4f:	26 8b 87 9e a0       	mov    ax,WORD PTR es:[bx-0x5f62]
   4bd54:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4bd57:	6b db 28             	imul   bx,bx,0x28
   4bd5a:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   4bd5d:	d1 e2                	shl    dx,1
   4bd5f:	03 da                	add    bx,dx
   4bd61:	ba 88 01             	mov    dx,0x188
   4bd64:	8e c2                	mov    es,dx
   4bd66:	50                   	push   ax
   4bd67:	26 8b 87 9e a0       	mov    ax,WORD PTR es:[bx-0x5f62]
   4bd6c:	bb 64 00             	mov    bx,0x64
   4bd6f:	33 d2                	xor    dx,dx
   4bd71:	f7 f3                	div    bx
   4bd73:	6b c0 64             	imul   ax,ax,0x64
   4bd76:	5a                   	pop    dx
   4bd77:	2b d0                	sub    dx,ax
   4bd79:	3b 56 08             	cmp    dx,WORD PTR [bp+0x8]
   4bd7c:	74 09                	je     0x4bd87
   4bd7e:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   4bd81:	83 7e fe 05          	cmp    WORD PTR [bp-0x2],0x5
   4bd85:	7e b6                	jle    0x4bd3d
   4bd87:	83 7e fe 06          	cmp    WORD PTR [bp-0x2],0x6
   4bd8b:	75 07                	jne    0x4bd94
   4bd8d:	c7 46 fc 00 00       	mov    WORD PTR [bp-0x4],0x0
   4bd92:	eb 05                	jmp    0x4bd99
   4bd94:	c7 46 fc 01 00       	mov    WORD PTR [bp-0x4],0x1
   4bd99:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4bd9c:	c9                   	leave
   4bd9d:	cb                   	retf
