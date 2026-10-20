
analysis/phase-five/reusable-loops-20261020/turn-message-original.bin:     file format binary


Disassembly of section .data:

0004bd9e <.data>:
   4bd9e:	55                   	push   bp
   4bd9f:	8b ec                	mov    bp,sp
   4bda1:	83 ec 02             	sub    sp,0x2
   4bda4:	b8 88 01             	mov    ax,0x188
   4bda7:	8e c0                	mov    es,ax
   4bda9:	26 a0 72 96          	mov    al,es:0x9672
   4bdad:	ba 88 01             	mov    dx,0x188
   4bdb0:	8e c2                	mov    es,dx
   4bdb2:	26 3a 06 92 97       	cmp    al,BYTE PTR es:0x9792
   4bdb7:	74 03                	je     0x4bdbc
   4bdb9:	e9 21 01             	jmp    0x4bedd
   4bdbc:	83 7e 06 00          	cmp    WORD PTR [bp+0x6],0x0
   4bdc0:	75 03                	jne    0x4bdc5
   4bdc2:	e9 12 01             	jmp    0x4bed7
   4bdc5:	b8 88 01             	mov    ax,0x188
   4bdc8:	8e c0                	mov    es,ax
   4bdca:	26 80 3e 38 bb 00    	cmp    BYTE PTR es:0xbb38,0x0
   4bdd0:	75 03                	jne    0x4bdd5
   4bdd2:	e9 02 01             	jmp    0x4bed7
   4bdd5:	b8 88 01             	mov    ax,0x188
   4bdd8:	8e c0                	mov    es,ax
   4bdda:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   4bde0:	75 03                	jne    0x4bde5
   4bde2:	e9 f2 00             	jmp    0x4bed7
   4bde5:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4bde8:	6b db 11             	imul   bx,bx,0x11
   4bdeb:	b8 88 01             	mov    ax,0x188
   4bdee:	8e c0                	mov    es,ax
   4bdf0:	26 f7 87 ea 22 20 00 	test   WORD PTR es:[bx+0x22ea],0x20
   4bdf7:	75 03                	jne    0x4bdfc
   4bdf9:	e9 b9 00             	jmp    0x4beb5
   4bdfc:	83 7e 06 02          	cmp    WORD PTR [bp+0x6],0x2
   4be00:	75 51                	jne    0x4be53
   4be02:	83 3e 6c d5 18       	cmp    WORD PTR ds:0xd56c,0x18
   4be07:	7e 08                	jle    0x4be11
   4be09:	a1 6c d5             	mov    ax,ds:0xd56c
   4be0c:	05 28 00             	add    ax,0x28
   4be0f:	eb 24                	jmp    0x4be35
   4be11:	8b 1e 6c d5          	mov    bx,WORD PTR ds:0xd56c
   4be15:	6b db 28             	imul   bx,bx,0x28
   4be18:	b8 88 01             	mov    ax,0x188
   4be1b:	8e c0                	mov    es,ax
   4be1d:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   4be22:	6b db 06             	imul   bx,bx,0x6
   4be25:	b8 88 01             	mov    ax,0x188
   4be28:	ba c0 5b             	mov    dx,0x5bc0
   4be2b:	83 c2 02             	add    dx,0x2
   4be2e:	03 da                	add    bx,dx
   4be30:	8e c0                	mov    es,ax
   4be32:	26 8b 07             	mov    ax,WORD PTR es:[bx]
   4be35:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   4be38:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4be3b:	83 eb 0e             	sub    bx,0xe
   4be3e:	83 fb 11             	cmp    bx,0x11
   4be41:	77 46                	ja     0x4be89
   4be43:	d1 e3                	shl    bx,1
   4be45:	2e ff a7 8f 22       	jmp    WORD PTR cs:[bx+0x228f]
   4be4a:	c7 46 06 0d 00       	mov    WORD PTR [bp+0x6],0xd
   4be4f:	eb 38                	jmp    0x4be89
   4be51:	eb 36                	jmp    0x4be89
   4be53:	83 3e de d5 18       	cmp    WORD PTR ds:0xd5de,0x18
   4be58:	7e 08                	jle    0x4be62
   4be5a:	a1 de d5             	mov    ax,ds:0xd5de
   4be5d:	05 28 00             	add    ax,0x28
   4be60:	eb 24                	jmp    0x4be86
   4be62:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4be66:	6b db 28             	imul   bx,bx,0x28
   4be69:	b8 88 01             	mov    ax,0x188
   4be6c:	8e c0                	mov    es,ax
   4be6e:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   4be73:	6b db 06             	imul   bx,bx,0x6
   4be76:	b8 88 01             	mov    ax,0x188
   4be79:	ba c0 5b             	mov    dx,0x5bc0
   4be7c:	83 c2 02             	add    dx,0x2
   4be7f:	03 da                	add    bx,dx
   4be81:	8e c0                	mov    es,ax
   4be83:	26 8b 07             	mov    ax,WORD PTR es:[bx]
   4be86:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   4be89:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4be8c:	6b db 11             	imul   bx,bx,0x11
   4be8f:	b8 88 01             	mov    ax,0x188
   4be92:	6a 00                	push   0x0
   4be94:	8e c0                	mov    es,ax
   4be96:	26 ff b7 e8 22       	push   WORD PTR es:[bx+0x22e8]
   4be9b:	ff 76 fe             	push   WORD PTR [bp-0x2]
   4be9e:	90                   	nop
   4be9f:	0e                   	push   cs
   4bea0:	e8 08 03             	call   0x4c1ab
   4bea3:	83 c4 06             	add    sp,0x6
   4bea6:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   4bea9:	6a 00                	push   0x0
   4beab:	68 f4 01             	push   0x1f4
   4beae:	6a 00                	push   0x0
   4beb0:	ff 76 fe             	push   WORD PTR [bp-0x2]
   4beb3:	eb 17                	jmp    0x4becc
   4beb5:	6a 00                	push   0x0
   4beb7:	68 f4 01             	push   0x1f4
   4beba:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4bebd:	6b db 11             	imul   bx,bx,0x11
   4bec0:	b8 88 01             	mov    ax,0x188
   4bec3:	6a 00                	push   0x0
   4bec5:	8e c0                	mov    es,ax
   4bec7:	26 ff b7 e8 22       	push   WORD PTR es:[bx+0x22e8]
   4becc:	ff 76 06             	push   WORD PTR [bp+0x6]
   4becf:	9a 2d 19 10 00       	call   0x10:0x192d
   4bed4:	83 c4 0a             	add    sp,0xa
   4bed7:	c7 06 66 d5 00 00    	mov    WORD PTR ds:0xd566,0x0
   4bedd:	c9                   	leave
   4bede:	cb                   	retf
   4bedf:	fa                   	cli
   4bee0:	21 fa                	and    dx,di
   4bee2:	21 fa                	and    dx,di
   4bee4:	21 fa                	and    dx,di
   4bee6:	21 39                	and    WORD PTR [bx+di],di
   4bee8:	22 39                	and    bh,BYTE PTR [bx+di]
   4beea:	22 39                	and    bh,BYTE PTR [bx+di]
   4beec:	22 39                	and    bh,BYTE PTR [bx+di]
   4beee:	22 39                	and    bh,BYTE PTR [bx+di]
   4bef0:	22 39                	and    bh,BYTE PTR [bx+di]
   4bef2:	22 39                	and    bh,BYTE PTR [bx+di]
   4bef4:	22 39                	and    bh,BYTE PTR [bx+di]
   4bef6:	22 39                	and    bh,BYTE PTR [bx+di]
   4bef8:	22 39                	and    bh,BYTE PTR [bx+di]
   4befa:	22 39                	and    bh,BYTE PTR [bx+di]
   4befc:	22 39                	and    bh,BYTE PTR [bx+di]
   4befe:	22 fa                	and    bh,dl
   4bf00:	21 fa                	and    dx,di
   4bf02:	21 55 8b             	and    WORD PTR [di-0x75],dx
   4bf05:	ec                   	in     al,dx
   4bf06:	6a 00                	push   0x0
   4bf08:	6a 0e                	push   0xe
   4bf0a:	9a 1d 0a 20 00       	call   0x20:0xa1d
   4bf0f:	83 c4 04             	add    sp,0x4
   4bf12:	bb 88 01             	mov    bx,0x188
   4bf15:	8e c3                	mov    es,bx
   4bf17:	26 89 16 62 96       	mov    WORD PTR es:0x9662,dx
   4bf1c:	26 a3 60 96          	mov    es:0x9660,ax
   4bf20:	b8 88 01             	mov    ax,0x188
   4bf23:	8e c0                	mov    es,ax
   4bf25:	26 c7 06 4e 96 38 01 	mov    WORD PTR es:0x964e,0x138
   4bf2c:	26 c7 06 4c 96 7a 00 	mov    WORD PTR es:0x964c,0x7a
   4bf33:	b8 88 01             	mov    ax,0x188
   4bf36:	8e c0                	mov    es,ax
   4bf38:	26 c4 1e 60 96       	les    bx,DWORD PTR es:0x9660
   4bf3d:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   4bf40:	26 89 07             	mov    WORD PTR es:[bx],ax
   4bf43:	b8 88 01             	mov    ax,0x188
   4bf46:	8e c0                	mov    es,ax
   4bf48:	26 c4 1e 60 96       	les    bx,DWORD PTR es:0x9660
   4bf4d:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   4bf50:	26 89 47 02          	mov    WORD PTR es:[bx+0x2],ax
   4bf54:	b8 88 01             	mov    ax,0x188
   4bf57:	8e c0                	mov    es,ax
   4bf59:	26 c4 1e 60 96       	les    bx,DWORD PTR es:0x9660
   4bf5e:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   4bf61:	26 89 47 04          	mov    WORD PTR es:[bx+0x4],ax
   4bf65:	b8 88 01             	mov    ax,0x188
   4bf68:	8e c0                	mov    es,ax
   4bf6a:	26 c4 1e 60 96       	les    bx,DWORD PTR es:0x9660
   4bf6f:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
   4bf72:	26 89 47 06          	mov    WORD PTR es:[bx+0x6],ax
   4bf76:	b8 88 01             	mov    ax,0x188
   4bf79:	8e c0                	mov    es,ax
   4bf7b:	26 c4 1e 60 96       	les    bx,DWORD PTR es:0x9660
   4bf80:	8b 46 0e             	mov    ax,WORD PTR [bp+0xe]
   4bf83:	26 89 47 08          	mov    WORD PTR es:[bx+0x8],ax
   4bf87:	b8 88 01             	mov    ax,0x188
   4bf8a:	8e c0                	mov    es,ax
   4bf8c:	26 c4 1e 60 96       	les    bx,DWORD PTR es:0x9660
   4bf91:	8b 46 10             	mov    ax,WORD PTR [bp+0x10]
   4bf94:	26 89 47 0a          	mov    WORD PTR es:[bx+0xa],ax
   4bf98:	b8 88 01             	mov    ax,0x188
   4bf9b:	8e c0                	mov    es,ax
   4bf9d:	26 c4 1e 60 96       	les    bx,DWORD PTR es:0x9660
   4bfa2:	8b 46 12             	mov    ax,WORD PTR [bp+0x12]
   4bfa5:	26 89 47 0c          	mov    WORD PTR es:[bx+0xc],ax
   4bfa9:	5d                   	pop    bp
   4bfaa:	cb                   	retf
   4bfab:	55                   	push   bp
   4bfac:	8b ec                	mov    bp,sp
   4bfae:	83 ec 14             	sub    sp,0x14
   4bfb1:	c6 46 ff 00          	mov    BYTE PTR [bp-0x1],0x0
   4bfb5:	c6 46 fd 02          	mov    BYTE PTR [bp-0x3],0x2
   4bfb9:	83 3e 1a 63 00       	cmp    WORD PTR ds:0x631a,0x0
   4bfbe:	75 0a                	jne    0x4bfca
   4bfc0:	83 3e ba d5 01       	cmp    WORD PTR ds:0xd5ba,0x1
   4bfc5:	75 03                	jne    0x4bfca
   4bfc7:	e9 df 01             	jmp    0x4c1a9
   4bfca:	ff 76 06             	push   WORD PTR [bp+0x6]
   4bfcd:	16                   	push   ss
   4bfce:	8d 46 ec             	lea    ax,[bp-0x14]
   4bfd1:	50                   	push   ax
   4bfd2:	ff 36 20 63          	push   WORD PTR ds:0x6320
   4bfd6:	90                   	nop
   4bfd7:	0e                   	push   cs
   4bfd8:	e8 98 02             	call   0x4c273
   4bfdb:	83 c4 08             	add    sp,0x8
   4bfde:	83 3e 1a 63 1d       	cmp    WORD PTR ds:0x631a,0x1d
   4bfe3:	74 14                	je     0x4bff9
   4bfe5:	83 3e 1a 63 2c       	cmp    WORD PTR ds:0x631a,0x2c
   4bfea:	7d 0d                	jge    0x4bff9
   4bfec:	a1 bc d5             	mov    ax,ds:0xd5bc
   4bfef:	3b 06 56 d5          	cmp    ax,WORD PTR ds:0xd556
   4bff3:	7e 04                	jle    0x4bff9
   4bff5:	c6 46 fd 01          	mov    BYTE PTR [bp-0x3],0x1
   4bff9:	6a 00                	push   0x0
   4bffb:	68 44 ac             	push   0xac44
   4bffe:	ff 36 20 63          	push   WORD PTR ds:0x6320
   4c002:	90                   	nop
   4c003:	0e                   	push   cs
   4c004:	e8 a4 01             	call   0x4c1ab
   4c007:	83 c4 06             	add    sp,0x6
   4c00a:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   4c00d:	9a 1b 1d 10 00       	call   0x10:0x1d1b
   4c012:	b8 88 01             	mov    ax,0x188
   4c015:	8e c0                	mov    es,ax
   4c017:	26 a1 2b e1          	mov    ax,es:0xe12b
   4c01b:	26 0b 06 2d e1       	or     ax,WORD PTR es:0xe12d
   4c020:	74 15                	je     0x4c037
   4c022:	1e                   	push   ds
   4c023:	68 75 65             	push   0x6575
   4c026:	68 9f 03             	push   0x39f
   4c029:	68 88 01             	push   0x188
   4c02c:	68 2b e1             	push   0xe12b
   4c02f:	9a 2f 02 40 00       	call   0x40:0x22f
   4c034:	83 c4 0a             	add    sp,0xa
   4c037:	b8 88 01             	mov    ax,0x188
   4c03a:	8e c0                	mov    es,ax
   4c03c:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   4c042:	74 63                	je     0x4c0a7
   4c044:	b8 88 01             	mov    ax,0x188
   4c047:	8e c0                	mov    es,ax
   4c049:	26 80 3e 38 bb 00    	cmp    BYTE PTR es:0xbb38,0x0
   4c04f:	74 56                	je     0x4c0a7
   4c051:	6a 00                	push   0x0
   4c053:	6a 00                	push   0x0
   4c055:	6a 00                	push   0x0
   4c057:	6a 00                	push   0x0
   4c059:	8a 46 fd             	mov    al,BYTE PTR [bp-0x3]
   4c05c:	50                   	push   ax
   4c05d:	6a 21                	push   0x21
   4c05f:	16                   	push   ss
   4c060:	8d 46 ec             	lea    ax,[bp-0x14]
   4c063:	50                   	push   ax
   4c064:	6a 01                	push   0x1
   4c066:	9a 25 00 60 01       	call   0x160:0x25
   4c06b:	83 c4 12             	add    sp,0x12
   4c06e:	88 46 fe             	mov    BYTE PTR [bp-0x2],al
   4c071:	0a c0                	or     al,al
   4c073:	74 32                	je     0x4c0a7
   4c075:	6a ff                	push   0xffff
   4c077:	80 7e fe 01          	cmp    BYTE PTR [bp-0x2],0x1
   4c07b:	75 07                	jne    0x4c084
   4c07d:	8c da                	mov    dx,ds
   4c07f:	b8 95 65             	mov    ax,0x6595
   4c082:	eb 12                	jmp    0x4c096
   4c084:	80 7e fe 02          	cmp    BYTE PTR [bp-0x2],0x2
   4c088:	75 07                	jne    0x4c091
   4c08a:	8c da                	mov    dx,ds
   4c08c:	b8 a9 65             	mov    ax,0x65a9
   4c08f:	eb 05                	jmp    0x4c096
   4c091:	8c da                	mov    dx,ds
   4c093:	b8 cf 65             	mov    ax,0x65cf
   4c096:	52                   	push   dx
   4c097:	50                   	push   ax
   4c098:	68 a3 03             	push   0x3a3
   4c09b:	1e                   	push   ds
   4c09c:	68 85 65             	push   0x6585
   4c09f:	9a 2a 00 58 01       	call   0x158:0x2a
   4c0a4:	83 c4 0c             	add    sp,0xc
   4c0a7:	b8 88 01             	mov    ax,0x188
   4c0aa:	8e c0                	mov    es,ax
   4c0ac:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   4c0b2:	74 0d                	je     0x4c0c1
   4c0b4:	b8 88 01             	mov    ax,0x188
   4c0b7:	8e c0                	mov    es,ax
   4c0b9:	26 80 3e 38 bb 00    	cmp    BYTE PTR es:0xbb38,0x0
   4c0bf:	75 0a                	jne    0x4c0cb
   4c0c1:	6a 14                	push   0x14
   4c0c3:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   4c0c8:	59                   	pop    cx
   4c0c9:	eb 14                	jmp    0x4c0df
   4c0cb:	6a 00                	push   0x0
   4c0cd:	68 f4 01             	push   0x1f4
   4c0d0:	6a 00                	push   0x0
   4c0d2:	ff 76 fa             	push   WORD PTR [bp-0x6]
   4c0d5:	6a 21                	push   0x21
   4c0d7:	9a 2d 19 10 00       	call   0x10:0x192d
   4c0dc:	83 c4 0a             	add    sp,0xa
   4c0df:	b8 88 01             	mov    ax,0x188
   4c0e2:	8e c0                	mov    es,ax
   4c0e4:	26 a0 72 96          	mov    al,es:0x9672
   4c0e8:	ba 88 01             	mov    dx,0x188
   4c0eb:	8e c2                	mov    es,dx
   4c0ed:	26 3a 06 92 97       	cmp    al,BYTE PTR es:0x9792
   4c0f2:	75 1f                	jne    0x4c113
   4c0f4:	83 3e 20 63 28       	cmp    WORD PTR ds:0x6320,0x28
   4c0f9:	7e 6c                	jle    0x4c167
   4c0fb:	83 3e 1a 63 1a       	cmp    WORD PTR ds:0x631a,0x1a
   4c100:	74 65                	je     0x4c167
   4c102:	6a 00                	push   0x0
   4c104:	6a 00                	push   0x0
   4c106:	6a 20                	push   0x20
   4c108:	6a 20                	push   0x20
   4c10a:	68 a5 00             	push   0xa5
   4c10d:	6a 19                	push   0x19
   4c10f:	eb 44                	jmp    0x4c155
   4c111:	eb 54                	jmp    0x4c167
   4c113:	83 3e 1a 63 00       	cmp    WORD PTR ds:0x631a,0x0
   4c118:	74 28                	je     0x4c142
   4c11a:	83 3e 1a 63 1a       	cmp    WORD PTR ds:0x631a,0x1a
   4c11f:	74 46                	je     0x4c167
   4c121:	6a 01                	push   0x1
   4c123:	6a 01                	push   0x1
   4c125:	6a 1e                	push   0x1e
   4c127:	6a 1e                	push   0x1e
   4c129:	6a 15                	push   0x15
   4c12b:	a1 e0 d5             	mov    ax,ds:0xd5e0
   4c12e:	05 e7 ff             	add    ax,0xffe7
   4c131:	6b c0 23             	imul   ax,ax,0x23
   4c134:	05 9d 00             	add    ax,0x9d
   4c137:	50                   	push   ax
   4c138:	a1 e0 d5             	mov    ax,ds:0xd5e0
   4c13b:	05 e8 ff             	add    ax,0xffe8
   4c13e:	eb 1b                	jmp    0x4c15b
   4c140:	eb 25                	jmp    0x4c167
   4c142:	83 3e 20 63 28       	cmp    WORD PTR ds:0x6320,0x28
   4c147:	7e 1e                	jle    0x4c167
   4c149:	6a 00                	push   0x0
   4c14b:	6a 00                	push   0x0
   4c14d:	6a 20                	push   0x20
   4c14f:	6a 20                	push   0x20
   4c151:	6a 15                	push   0x15
   4c153:	6a 07                	push   0x7
   4c155:	a1 20 63             	mov    ax,ds:0x6320
   4c158:	05 c0 ff             	add    ax,0xffc0
   4c15b:	50                   	push   ax
   4c15c:	0e                   	push   cs
   4c15d:	e8 a3 fd             	call   0x4bf03
   4c160:	83 c4 0e             	add    sp,0xe
   4c163:	c6 46 ff 01          	mov    BYTE PTR [bp-0x1],0x1
   4c167:	6a 08                	push   0x8
   4c169:	6a 21                	push   0x21
   4c16b:	9a 6a 1b 10 00       	call   0x10:0x1b6a
   4c170:	83 c4 04             	add    sp,0x4
   4c173:	80 7e ff 00          	cmp    BYTE PTR [bp-0x1],0x0
   4c177:	74 2a                	je     0x4c1a3
   4c179:	b8 88 01             	mov    ax,0x188
   4c17c:	8e c0                	mov    es,ax
   4c17e:	26 c7 06 4e 96 10 00 	mov    WORD PTR es:0x964e,0x10
   4c185:	26 c7 06 4c 96 cd 00 	mov    WORD PTR es:0x964c,0xcd
   4c18c:	b8 88 01             	mov    ax,0x188
   4c18f:	8e c0                	mov    es,ax
   4c191:	26 ff 36 62 96       	push   WORD PTR es:0x9662
   4c196:	26 ff 36 60 96       	push   WORD PTR es:0x9660
   4c19b:	9a c2 24 00 00       	call   0x0:0x24c2
   4c1a0:	83 c4 04             	add    sp,0x4
   4c1a3:	c7 06 20 63 ff 00    	mov    WORD PTR ds:0x6320,0xff
   4c1a9:	c9                   	leave
   4c1aa:	cb                   	retf
