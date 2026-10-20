
analysis/phase-four/continuation/original-overlay-167c.bin:     file format binary


Disassembly of section .data:

0003ec5f <.data+0x205f>:
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
