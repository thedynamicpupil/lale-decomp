
analysis/phase-five/combat-runtime-20261020/voice-wait-original.bin:     file format binary


Disassembly of section .data:

00009edb <.data>:
    9edb:	55                   	push   bp
    9edc:	8b ec                	mov    bp,sp
    9ede:	83 ec 04             	sub    sp,0x4
    9ee1:	b8 e0 16             	mov    ax,0x16e0
    9ee4:	8e c0                	mov    es,ax
    9ee6:	26 83 3e d3 73 ff    	cmp    WORD PTR es:0x73d3,0xffff
    9eec:	75 0b                	jne    0x9ef9
    9eee:	26 83 3e d1 73 ff    	cmp    WORD PTR es:0x73d1,0xffff
    9ef4:	75 03                	jne    0x9ef9
    9ef6:	e9 21 01             	jmp    0xa01a
    9ef9:	b8 e0 16             	mov    ax,0x16e0
    9efc:	8e c0                	mov    es,ax
    9efe:	26 a1 d3 73          	mov    ax,es:0x73d3
    9f02:	26 8b 16 d1 73       	mov    dx,WORD PTR es:0x73d1
    9f07:	bb e0 16             	mov    bx,0x16e0
    9f0a:	8e c3                	mov    es,bx
    9f0c:	26 2b 16 4a e7       	sub    dx,WORD PTR es:0xe74a
    9f11:	26 1b 06 4c e7       	sbb    ax,WORD PTR es:0xe74c
    9f16:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
    9f19:	89 56 fc             	mov    WORD PTR [bp-0x4],dx
    9f1c:	bb e0 16             	mov    bx,0x16e0
    9f1f:	0b c0                	or     ax,ax
    9f21:	8e c3                	mov    es,bx
    9f23:	72 09                	jb     0x9f2e
    9f25:	77 31                	ja     0x9f58
    9f27:	26 3b 16 d5 73       	cmp    dx,WORD PTR es:0x73d5
    9f2c:	77 2a                	ja     0x9f58
    9f2e:	b8 e0 16             	mov    ax,0x16e0
    9f31:	8e c0                	mov    es,ax
    9f33:	26 ff 36 62 96       	push   WORD PTR es:0x9662
    9f38:	26 ff 36 60 96       	push   WORD PTR es:0x9660
    9f3d:	b8 e0 16             	mov    ax,0x16e0
    9f40:	8e c0                	mov    es,ax
    9f42:	26 ff 1e 4c 96       	call   DWORD PTR es:0x964c
    9f47:	83 c4 04             	add    sp,0x4
    9f4a:	83 7e fe 00          	cmp    WORD PTR [bp-0x2],0x0
    9f4e:	7f a9                	jg     0x9ef9
    9f50:	75 06                	jne    0x9f58
    9f52:	83 7e fc 00          	cmp    WORD PTR [bp-0x4],0x0
    9f56:	77 a1                	ja     0x9ef9
    9f58:	b8 e0 16             	mov    ax,0x16e0
    9f5b:	8e c0                	mov    es,ax
    9f5d:	26 c7 06 d3 73 ff ff 	mov    WORD PTR es:0x73d3,0xffff
    9f64:	26 c7 06 d1 73 ff ff 	mov    WORD PTR es:0x73d1,0xffff
    9f6b:	b8 e0 16             	mov    ax,0x16e0
    9f6e:	8e c0                	mov    es,ax
    9f70:	26 c7 06 d5 73 00 00 	mov    WORD PTR es:0x73d5,0x0
    9f77:	b8 e0 16             	mov    ax,0x16e0
    9f7a:	8e c0                	mov    es,ax
    9f7c:	26 a0 d0 73          	mov    al,es:0x73d0
    9f80:	98                   	cbw
    9f81:	0b c0                	or     ax,ax
    9f83:	75 39                	jne    0x9fbe
    9f85:	e9 92 00             	jmp    0xa01a
    9f88:	eb 34                	jmp    0x9fbe
    9f8a:	9a 45 2e 00 00       	call   0x0:0x2e45
    9f8f:	0b c0                	or     ax,ax
    9f91:	74 0f                	je     0x9fa2
    9f93:	9a d7 29 00 00       	call   0x0:0x29d7
    9f98:	3d 1b 00             	cmp    ax,0x1b
    9f9b:	75 05                	jne    0x9fa2
    9f9d:	b8 01 00             	mov    ax,0x1
    9fa0:	eb 7a                	jmp    0xa01c
    9fa2:	b8 e0 16             	mov    ax,0x16e0
    9fa5:	8e c0                	mov    es,ax
    9fa7:	26 ff 36 62 96       	push   WORD PTR es:0x9662
    9fac:	26 ff 36 60 96       	push   WORD PTR es:0x9660
    9fb1:	b8 e0 16             	mov    ax,0x16e0
    9fb4:	8e c0                	mov    es,ax
    9fb6:	26 ff 1e 4c 96       	call   DWORD PTR es:0x964c
    9fbb:	83 c4 04             	add    sp,0x4
    9fbe:	b8 e0 16             	mov    ax,0x16e0
    9fc1:	8e c0                	mov    es,ax
    9fc3:	26 a0 d7 73          	mov    al,es:0x73d7
    9fc7:	b4 00                	mov    ah,0x0
    9fc9:	48                   	dec    ax
    9fca:	99                   	cwd
    9fcb:	52                   	push   dx
    9fcc:	50                   	push   ax
    9fcd:	9a 56 03 ae 0e       	call   0xeae:0x356
    9fd2:	05 20 00             	add    ax,0x20
    9fd5:	83 d2 00             	adc    dx,0x0
    9fd8:	bb e0 16             	mov    bx,0x16e0
    9fdb:	8e c3                	mov    es,bx
    9fdd:	26 3b 16 ce 73       	cmp    dx,WORD PTR es:0x73ce
    9fe2:	72 a6                	jb     0x9f8a
    9fe4:	75 07                	jne    0x9fed
    9fe6:	26 3b 06 cc 73       	cmp    ax,WORD PTR es:0x73cc
    9feb:	72 9d                	jb     0x9f8a
    9fed:	b8 e0 16             	mov    ax,0x16e0
    9ff0:	8e c0                	mov    es,ax
    9ff2:	26 a0 d7 73          	mov    al,es:0x73d7
    9ff6:	b4 00                	mov    ah,0x0
    9ff8:	48                   	dec    ax
    9ff9:	99                   	cwd
    9ffa:	52                   	push   dx
    9ffb:	50                   	push   ax
    9ffc:	68 e0 16             	push   0x16e0
    9fff:	68 1e df             	push   0xdf1e
    a002:	9a 8f 00 ae 0e       	call   0xeae:0x8f
    a007:	b8 e0 16             	mov    ax,0x16e0
    a00a:	8e c0                	mov    es,ax
    a00c:	26 c7 06 ce 73 00 00 	mov    WORD PTR es:0x73ce,0x0
    a013:	26 c7 06 cc 73 00 00 	mov    WORD PTR es:0x73cc,0x0
    a01a:	33 c0                	xor    ax,ax
    a01c:	c9                   	leave
    a01d:	cb                   	retf
