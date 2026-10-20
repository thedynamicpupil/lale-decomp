
analysis/phase-five/living-continuation-20261014/face-animation/party-loop-and-timer.bin:     file format binary


Disassembly of section .data:

0003ea4b <.data>:
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
