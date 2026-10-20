
analysis/phase-five/scene-layers-20261016/current-layer-58e2.bin:     file format binary


Disassembly of section .data:

0002dd12 <.data>:
   2dd12:	55                   	push   bp
   2dd13:	8b ec                	mov    bp,sp
   2dd15:	83 ec 0c             	sub    sp,0xc
   2dd18:	a0 f0 b9             	mov    al,ds:0xb9f0
   2dd1b:	b4 00                	mov    ah,0x0
   2dd1d:	bb 02 00             	mov    bx,0x2
   2dd20:	99                   	cwd
   2dd21:	f7 fb                	idiv   bx
   2dd23:	a1 f3 b9             	mov    ax,ds:0xb9f3
   2dd26:	03 06 f1 b9          	add    ax,WORD PTR ds:0xb9f1
   2dd2a:	bb 02 00             	mov    bx,0x2
   2dd2d:	52                   	push   dx
   2dd2e:	99                   	cwd
   2dd2f:	f7 fb                	idiv   bx
   2dd31:	d0 e2                	shl    dl,1
   2dd33:	58                   	pop    ax
   2dd34:	0a c2                	or     al,dl
   2dd36:	88 46 f5             	mov    BYTE PTR [bp-0xb],al
   2dd39:	a0 eb b9             	mov    al,ds:0xb9eb
   2dd3c:	b4 00                	mov    ah,0x0
   2dd3e:	50                   	push   ax
   2dd3f:	a1 f1 b9             	mov    ax,ds:0xb9f1
   2dd42:	5a                   	pop    dx
   2dd43:	f7 ea                	imul   dx
   2dd45:	8b 16 f3 b9          	mov    dx,WORD PTR ds:0xb9f3
   2dd49:	03 d0                	add    dx,ax
   2dd4b:	6b d2 0f             	imul   dx,dx,0xf
   2dd4e:	89 56 fc             	mov    WORD PTR [bp-0x4],dx
   2dd51:	c7 46 fe ff ff       	mov    WORD PTR [bp-0x2],0xffff
   2dd56:	e9 f0 02             	jmp    0x2e049
   2dd59:	a0 eb b9             	mov    al,ds:0xb9eb
   2dd5c:	b4 00                	mov    ah,0x0
   2dd5e:	50                   	push   ax
   2dd5f:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2dd62:	f7 2e c6 b9          	imul   WORD PTR ds:0xb9c6
   2dd66:	5a                   	pop    dx
   2dd67:	f7 ea                	imul   dx
   2dd69:	50                   	push   ax
   2dd6a:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2dd6d:	f7 d8                	neg    ax
   2dd6f:	f7 2e c4 b9          	imul   WORD PTR ds:0xb9c4
   2dd73:	5a                   	pop    dx
   2dd74:	03 c2                	add    ax,dx
   2dd76:	6b c0 0f             	imul   ax,ax,0xf
   2dd79:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   2dd7c:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2dd7f:	f7 2e c4 b9          	imul   WORD PTR ds:0xb9c4
   2dd83:	8b 16 f3 b9          	mov    dx,WORD PTR ds:0xb9f3
   2dd87:	2b d0                	sub    dx,ax
   2dd89:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
   2dd8c:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2dd8f:	f7 2e c6 b9          	imul   WORD PTR ds:0xb9c6
   2dd93:	8b 16 f1 b9          	mov    dx,WORD PTR ds:0xb9f1
   2dd97:	03 d0                	add    dx,ax
   2dd99:	89 56 f6             	mov    WORD PTR [bp-0xa],dx
   2dd9c:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   2dda0:	7d 03                	jge    0x2dda5
   2dda2:	e9 a0 02             	jmp    0x2e045
   2dda5:	a0 eb b9             	mov    al,ds:0xb9eb
   2dda8:	b4 00                	mov    ah,0x0
   2ddaa:	3b 46 f8             	cmp    ax,WORD PTR [bp-0x8]
   2ddad:	7f 03                	jg     0x2ddb2
   2ddaf:	e9 93 02             	jmp    0x2e045
   2ddb2:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   2ddb6:	7d 03                	jge    0x2ddbb
   2ddb8:	e9 8a 02             	jmp    0x2e045
   2ddbb:	a0 ea b9             	mov    al,ds:0xb9ea
   2ddbe:	b4 00                	mov    ah,0x0
   2ddc0:	3b 46 f6             	cmp    ax,WORD PTR [bp-0xa]
   2ddc3:	7f 03                	jg     0x2ddc8
   2ddc5:	e9 7d 02             	jmp    0x2e045
   2ddc8:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2ddcb:	3d ff ff             	cmp    ax,0xffff
   2ddce:	74 0b                	je     0x2dddb
   2ddd0:	3d 01 00             	cmp    ax,0x1
   2ddd3:	75 03                	jne    0x2ddd8
   2ddd5:	e9 32 01             	jmp    0x2df0a
   2ddd8:	e9 6a 02             	jmp    0x2e045
   2dddb:	68 28 00             	push   0x28
   2ddde:	68 85 11             	push   0x1185
   2dde1:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2dde4:	50                   	push   ax
   2dde5:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2dde8:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2ddeb:	05 09 00             	add    ax,0x9
   2ddee:	99                   	cwd
   2ddef:	50                   	push   ax
   2ddf0:	52                   	push   dx
   2ddf1:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2ddf5:	a1 ec b9             	mov    ax,ds:0xb9ec
   2ddf8:	59                   	pop    cx
   2ddf9:	5b                   	pop    bx
   2ddfa:	9a 77 14 00 00       	call   0x0:0x1477
   2ddff:	8b d8                	mov    bx,ax
   2de01:	8e c2                	mov    es,dx
   2de03:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2de06:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2de09:	b6 00                	mov    dh,0x0
   2de0b:	6b d2 05             	imul   dx,dx,0x5
   2de0e:	02 c2                	add    al,dl
   2de10:	04 23                	add    al,0x23
   2de12:	50                   	push   ax
   2de13:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2de16:	99                   	cwd
   2de17:	33 c2                	xor    ax,dx
   2de19:	2b c2                	sub    ax,dx
   2de1b:	04 ff                	add    al,0xff
   2de1d:	d0 e0                	shl    al,1
   2de1f:	fe c0                	inc    al
   2de21:	50                   	push   ax
   2de22:	ff 36 09 3b          	push   WORD PTR ds:0x3b09
   2de26:	ff 36 36 b9          	push   WORD PTR ds:0xb936
   2de2a:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2de2d:	f7 2e 40 b9          	imul   WORD PTR ds:0xb940
   2de31:	8b 16 34 b9          	mov    dx,WORD PTR ds:0xb934
   2de35:	03 d0                	add    dx,ax
   2de37:	52                   	push   dx
   2de38:	ff 36 42 b9          	push   WORD PTR ds:0xb942
   2de3c:	ff 36 40 b9          	push   WORD PTR ds:0xb940
   2de40:	ff 36 3e b9          	push   WORD PTR ds:0xb93e
   2de44:	ff 36 3c b9          	push   WORD PTR ds:0xb93c
   2de48:	9a 21 0f 28 00       	call   0x28:0xf21
   2de4d:	83 c4 18             	add    sp,0x18
   2de50:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2de53:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2de56:	05 08 00             	add    ax,0x8
   2de59:	99                   	cwd
   2de5a:	50                   	push   ax
   2de5b:	52                   	push   dx
   2de5c:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2de60:	a1 ec b9             	mov    ax,ds:0xb9ec
   2de63:	59                   	pop    cx
   2de64:	5b                   	pop    bx
   2de65:	9a 77 14 00 00       	call   0x0:0x1477
   2de6a:	8b d8                	mov    bx,ax
   2de6c:	8e c2                	mov    es,dx
   2de6e:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2de72:	74 7a                	je     0x2deee
   2de74:	68 28 00             	push   0x28
   2de77:	68 07 13             	push   0x1307
   2de7a:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2de7d:	50                   	push   ax
   2de7e:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2de81:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2de84:	05 08 00             	add    ax,0x8
   2de87:	99                   	cwd
   2de88:	50                   	push   ax
   2de89:	52                   	push   dx
   2de8a:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2de8e:	a1 ec b9             	mov    ax,ds:0xb9ec
   2de91:	59                   	pop    cx
   2de92:	5b                   	pop    bx
   2de93:	9a 77 14 00 00       	call   0x0:0x1477
   2de98:	8b d8                	mov    bx,ax
   2de9a:	8e c2                	mov    es,dx
   2de9c:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2de9f:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2dea2:	d0 e2                	shl    dl,1
   2dea4:	02 c2                	add    al,dl
   2dea6:	04 37                	add    al,0x37
   2dea8:	50                   	push   ax
   2dea9:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2deac:	99                   	cwd
   2dead:	33 c2                	xor    ax,dx
   2deaf:	2b c2                	sub    ax,dx
   2deb1:	04 ff                	add    al,0xff
   2deb3:	d0 e0                	shl    al,1
   2deb5:	fe c0                	inc    al
   2deb7:	50                   	push   ax
   2deb8:	ff 36 09 3b          	push   WORD PTR ds:0x3b09
   2debc:	a1 6c b9             	mov    ax,ds:0xb96c
   2debf:	2b 06 78 b9          	sub    ax,WORD PTR ds:0xb978
   2dec3:	50                   	push   ax
   2dec4:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2dec7:	f7 2e 76 b9          	imul   WORD PTR ds:0xb976
   2decb:	8b 16 6a b9          	mov    dx,WORD PTR ds:0xb96a
   2decf:	03 d0                	add    dx,ax
   2ded1:	52                   	push   dx
   2ded2:	ff 36 78 b9          	push   WORD PTR ds:0xb978
   2ded6:	ff 36 76 b9          	push   WORD PTR ds:0xb976
   2deda:	a1 74 b9             	mov    ax,ds:0xb974
   2dedd:	2b 06 78 b9          	sub    ax,WORD PTR ds:0xb978
   2dee1:	50                   	push   ax
   2dee2:	ff 36 72 b9          	push   WORD PTR ds:0xb972
   2dee6:	9a 21 0f 28 00       	call   0x28:0xf21
   2deeb:	83 c4 18             	add    sp,0x18
   2deee:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2def1:	50                   	push   ax
   2def2:	a0 f0 b9             	mov    al,ds:0xb9f0
   2def5:	b4 00                	mov    ah,0x0
   2def7:	bb 04 00             	mov    bx,0x4
   2defa:	99                   	cwd
   2defb:	f7 fb                	idiv   bx
   2defd:	52                   	push   dx
   2defe:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2df01:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2df04:	50                   	push   ax
   2df05:	6a 16                	push   0x16
   2df07:	e9 34 01             	jmp    0x2e03e
   2df0a:	68 28 00             	push   0x28
   2df0d:	68 f1 10             	push   0x10f1
   2df10:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2df13:	50                   	push   ax
   2df14:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2df17:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2df1a:	05 09 00             	add    ax,0x9
   2df1d:	99                   	cwd
   2df1e:	50                   	push   ax
   2df1f:	52                   	push   dx
   2df20:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2df24:	a1 ec b9             	mov    ax,ds:0xb9ec
   2df27:	59                   	pop    cx
   2df28:	5b                   	pop    bx
   2df29:	9a 77 14 00 00       	call   0x0:0x1477
   2df2e:	8b d8                	mov    bx,ax
   2df30:	8e c2                	mov    es,dx
   2df32:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2df35:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2df38:	b6 00                	mov    dh,0x0
   2df3a:	6b d2 05             	imul   dx,dx,0x5
   2df3d:	02 c2                	add    al,dl
   2df3f:	04 23                	add    al,0x23
   2df41:	50                   	push   ax
   2df42:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2df45:	99                   	cwd
   2df46:	33 c2                	xor    ax,dx
   2df48:	2b c2                	sub    ax,dx
   2df4a:	04 ff                	add    al,0xff
   2df4c:	d0 e0                	shl    al,1
   2df4e:	fe c0                	inc    al
   2df50:	50                   	push   ax
   2df51:	a1 09 3b             	mov    ax,ds:0x3b09
   2df54:	03 06 ff 3a          	add    ax,WORD PTR ds:0x3aff
   2df58:	50                   	push   ax
   2df59:	ff 36 36 b9          	push   WORD PTR ds:0xb936
   2df5d:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2df60:	f7 2e 40 b9          	imul   WORD PTR ds:0xb940
   2df64:	8b 16 34 b9          	mov    dx,WORD PTR ds:0xb934
   2df68:	03 d0                	add    dx,ax
   2df6a:	52                   	push   dx
   2df6b:	ff 36 42 b9          	push   WORD PTR ds:0xb942
   2df6f:	ff 36 40 b9          	push   WORD PTR ds:0xb940
   2df73:	ff 36 3e b9          	push   WORD PTR ds:0xb93e
   2df77:	ff 36 3c b9          	push   WORD PTR ds:0xb93c
   2df7b:	9a 21 0f 28 00       	call   0x28:0xf21
   2df80:	83 c4 18             	add    sp,0x18
   2df83:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2df86:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2df89:	05 08 00             	add    ax,0x8
   2df8c:	99                   	cwd
   2df8d:	50                   	push   ax
   2df8e:	52                   	push   dx
   2df8f:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2df93:	a1 ec b9             	mov    ax,ds:0xb9ec
   2df96:	59                   	pop    cx
   2df97:	5b                   	pop    bx
   2df98:	9a 77 14 00 00       	call   0x0:0x1477
   2df9d:	8b d8                	mov    bx,ax
   2df9f:	8e c2                	mov    es,dx
   2dfa1:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2dfa5:	74 7e                	je     0x2e025
   2dfa7:	68 28 00             	push   0x28
   2dfaa:	68 61 12             	push   0x1261
   2dfad:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2dfb0:	50                   	push   ax
   2dfb1:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2dfb4:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2dfb7:	05 08 00             	add    ax,0x8
   2dfba:	99                   	cwd
   2dfbb:	50                   	push   ax
   2dfbc:	52                   	push   dx
   2dfbd:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2dfc1:	a1 ec b9             	mov    ax,ds:0xb9ec
   2dfc4:	59                   	pop    cx
   2dfc5:	5b                   	pop    bx
   2dfc6:	9a 77 14 00 00       	call   0x0:0x1477
   2dfcb:	8b d8                	mov    bx,ax
   2dfcd:	8e c2                	mov    es,dx
   2dfcf:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2dfd2:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2dfd5:	d0 e2                	shl    dl,1
   2dfd7:	02 c2                	add    al,dl
   2dfd9:	04 37                	add    al,0x37
   2dfdb:	50                   	push   ax
   2dfdc:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2dfdf:	99                   	cwd
   2dfe0:	33 c2                	xor    ax,dx
   2dfe2:	2b c2                	sub    ax,dx
   2dfe4:	04 ff                	add    al,0xff
   2dfe6:	d0 e0                	shl    al,1
   2dfe8:	fe c0                	inc    al
   2dfea:	50                   	push   ax
   2dfeb:	a1 09 3b             	mov    ax,ds:0x3b09
   2dfee:	03 06 ff 3a          	add    ax,WORD PTR ds:0x3aff
   2dff2:	50                   	push   ax
   2dff3:	a1 6c b9             	mov    ax,ds:0xb96c
   2dff6:	2b 06 78 b9          	sub    ax,WORD PTR ds:0xb978
   2dffa:	50                   	push   ax
   2dffb:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2dffe:	f7 2e 76 b9          	imul   WORD PTR ds:0xb976
   2e002:	8b 16 6a b9          	mov    dx,WORD PTR ds:0xb96a
   2e006:	03 d0                	add    dx,ax
   2e008:	52                   	push   dx
   2e009:	ff 36 78 b9          	push   WORD PTR ds:0xb978
   2e00d:	ff 36 76 b9          	push   WORD PTR ds:0xb976
   2e011:	a1 74 b9             	mov    ax,ds:0xb974
   2e014:	2b 06 78 b9          	sub    ax,WORD PTR ds:0xb978
   2e018:	50                   	push   ax
   2e019:	ff 36 72 b9          	push   WORD PTR ds:0xb972
   2e01d:	9a 21 0f 28 00       	call   0x28:0xf21
   2e022:	83 c4 18             	add    sp,0x18
   2e025:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2e028:	50                   	push   ax
   2e029:	a0 f0 b9             	mov    al,ds:0xb9f0
   2e02c:	b4 00                	mov    ah,0x0
   2e02e:	bb 04 00             	mov    bx,0x4
   2e031:	99                   	cwd
   2e032:	f7 fb                	idiv   bx
   2e034:	52                   	push   dx
   2e035:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2e038:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2e03b:	50                   	push   ax
   2e03c:	6a 18                	push   0x18
   2e03e:	0e                   	push   cs
   2e03f:	e8 57 dd             	call   0x2bd99
   2e042:	83 c4 08             	add    sp,0x8
   2e045:	83 46 fe 02          	add    WORD PTR [bp-0x2],0x2
   2e049:	83 7e fe 02          	cmp    WORD PTR [bp-0x2],0x2
   2e04d:	7d 03                	jge    0x2e052
   2e04f:	e9 07 fd             	jmp    0x2dd59
   2e052:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   2e057:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   2e05c:	a1 f3 b9             	mov    ax,ds:0xb9f3
   2e05f:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   2e062:	a1 f1 b9             	mov    ax,ds:0xb9f1
   2e065:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   2e068:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   2e06c:	7d 03                	jge    0x2e071
   2e06e:	e9 3c 02             	jmp    0x2e2ad
   2e071:	a0 eb b9             	mov    al,ds:0xb9eb
   2e074:	b4 00                	mov    ah,0x0
   2e076:	3b 46 f8             	cmp    ax,WORD PTR [bp-0x8]
   2e079:	7f 03                	jg     0x2e07e
   2e07b:	e9 2f 02             	jmp    0x2e2ad
   2e07e:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   2e082:	7d 03                	jge    0x2e087
   2e084:	e9 26 02             	jmp    0x2e2ad
   2e087:	a0 ea b9             	mov    al,ds:0xb9ea
   2e08a:	b4 00                	mov    ah,0x0
   2e08c:	3b 46 f6             	cmp    ax,WORD PTR [bp-0xa]
   2e08f:	7f 03                	jg     0x2e094
   2e091:	e9 19 02             	jmp    0x2e2ad
   2e094:	68 e0 01             	push   0x1e0
   2e097:	68 41 03             	push   0x341
   2e09a:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2e09d:	50                   	push   ax
   2e09e:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2e0a1:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2e0a4:	05 09 00             	add    ax,0x9
   2e0a7:	99                   	cwd
   2e0a8:	50                   	push   ax
   2e0a9:	52                   	push   dx
   2e0aa:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2e0ae:	a1 ec b9             	mov    ax,ds:0xb9ec
   2e0b1:	59                   	pop    cx
   2e0b2:	5b                   	pop    bx
   2e0b3:	9a 77 14 00 00       	call   0x0:0x1477
   2e0b8:	8b d8                	mov    bx,ax
   2e0ba:	8e c2                	mov    es,dx
   2e0bc:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2e0bf:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2e0c2:	b6 00                	mov    dh,0x0
   2e0c4:	6b d2 05             	imul   dx,dx,0x5
   2e0c7:	02 c2                	add    al,dl
   2e0c9:	04 23                	add    al,0x23
   2e0cb:	50                   	push   ax
   2e0cc:	ff 36 36 b9          	push   WORD PTR ds:0xb936
   2e0d0:	a1 34 b9             	mov    ax,ds:0xb934
   2e0d3:	2b 06 42 b9          	sub    ax,WORD PTR ds:0xb942
   2e0d7:	50                   	push   ax
   2e0d8:	ff 36 42 b9          	push   WORD PTR ds:0xb942
   2e0dc:	a1 42 b9             	mov    ax,ds:0xb942
   2e0df:	d1 e0                	shl    ax,1
   2e0e1:	8b 16 40 b9          	mov    dx,WORD PTR ds:0xb940
   2e0e5:	03 d0                	add    dx,ax
   2e0e7:	52                   	push   dx
   2e0e8:	ff 36 3e b9          	push   WORD PTR ds:0xb93e
   2e0ec:	a1 3c b9             	mov    ax,ds:0xb93c
   2e0ef:	2b 06 42 b9          	sub    ax,WORD PTR ds:0xb942
   2e0f3:	50                   	push   ax
   2e0f4:	9a 30 04 28 00       	call   0x28:0x430
   2e0f9:	83 c4 14             	add    sp,0x14
   2e0fc:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2e0ff:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2e102:	05 08 00             	add    ax,0x8
   2e105:	99                   	cwd
   2e106:	50                   	push   ax
   2e107:	52                   	push   dx
   2e108:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2e10c:	a1 ec b9             	mov    ax,ds:0xb9ec
   2e10f:	59                   	pop    cx
   2e110:	5b                   	pop    bx
   2e111:	9a 77 14 00 00       	call   0x0:0x1477
   2e116:	8b d8                	mov    bx,ax
   2e118:	8e c2                	mov    es,dx
   2e11a:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2e11e:	74 69                	je     0x2e189
   2e120:	c6 06 f8 3a 01       	mov    BYTE PTR ds:0x3af8,0x1
   2e125:	68 e0 01             	push   0x1e0
   2e128:	68 41 03             	push   0x341
   2e12b:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2e12e:	50                   	push   ax
   2e12f:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2e132:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2e135:	05 08 00             	add    ax,0x8
   2e138:	99                   	cwd
   2e139:	50                   	push   ax
   2e13a:	52                   	push   dx
   2e13b:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2e13f:	a1 ec b9             	mov    ax,ds:0xb9ec
   2e142:	59                   	pop    cx
   2e143:	5b                   	pop    bx
   2e144:	9a 77 14 00 00       	call   0x0:0x1477
   2e149:	8b d8                	mov    bx,ax
   2e14b:	8e c2                	mov    es,dx
   2e14d:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2e150:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2e153:	d0 e2                	shl    dl,1
   2e155:	02 c2                	add    al,dl
   2e157:	04 37                	add    al,0x37
   2e159:	50                   	push   ax
   2e15a:	6a 00                	push   0x0
   2e15c:	6a 00                	push   0x0
   2e15e:	a1 78 b9             	mov    ax,ds:0xb978
   2e161:	40                   	inc    ax
   2e162:	50                   	push   ax
   2e163:	a1 78 b9             	mov    ax,ds:0xb978
   2e166:	d1 e0                	shl    ax,1
   2e168:	8b 16 76 b9          	mov    dx,WORD PTR ds:0xb976
   2e16c:	03 d0                	add    dx,ax
   2e16e:	52                   	push   dx
   2e16f:	a1 74 b9             	mov    ax,ds:0xb974
   2e172:	2b 06 78 b9          	sub    ax,WORD PTR ds:0xb978
   2e176:	50                   	push   ax
   2e177:	a1 72 b9             	mov    ax,ds:0xb972
   2e17a:	2b 06 78 b9          	sub    ax,WORD PTR ds:0xb978
   2e17e:	50                   	push   ax
   2e17f:	9a 30 04 28 00       	call   0x28:0x430
   2e184:	83 c4 14             	add    sp,0x14
   2e187:	eb 05                	jmp    0x2e18e
   2e189:	c6 06 f8 3a 00       	mov    BYTE PTR ds:0x3af8,0x0
   2e18e:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2e191:	50                   	push   ax
   2e192:	a0 f0 b9             	mov    al,ds:0xb9f0
   2e195:	b4 00                	mov    ah,0x0
   2e197:	bb 04 00             	mov    bx,0x4
   2e19a:	99                   	cwd
   2e19b:	f7 fb                	idiv   bx
   2e19d:	52                   	push   dx
   2e19e:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2e1a1:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2e1a4:	50                   	push   ax
   2e1a5:	6a 17                	push   0x17
   2e1a7:	0e                   	push   cs
   2e1a8:	e8 ee db             	call   0x2bd99
   2e1ab:	83 c4 08             	add    sp,0x8
   2e1ae:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2e1b1:	50                   	push   ax
   2e1b2:	a0 f0 b9             	mov    al,ds:0xb9f0
   2e1b5:	b4 00                	mov    ah,0x0
   2e1b7:	40                   	inc    ax
   2e1b8:	bb 04 00             	mov    bx,0x4
   2e1bb:	99                   	cwd
   2e1bc:	f7 fb                	idiv   bx
   2e1be:	52                   	push   dx
   2e1bf:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2e1c2:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2e1c5:	50                   	push   ax
   2e1c6:	6a 1a                	push   0x1a
   2e1c8:	0e                   	push   cs
   2e1c9:	e8 cd db             	call   0x2bd99
   2e1cc:	83 c4 08             	add    sp,0x8
   2e1cf:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2e1d2:	50                   	push   ax
   2e1d3:	a0 f0 b9             	mov    al,ds:0xb9f0
   2e1d6:	b4 00                	mov    ah,0x0
   2e1d8:	05 03 00             	add    ax,0x3
   2e1db:	bb 04 00             	mov    bx,0x4
   2e1de:	99                   	cwd
   2e1df:	f7 fb                	idiv   bx
   2e1e1:	52                   	push   dx
   2e1e2:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2e1e5:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2e1e8:	50                   	push   ax
   2e1e9:	6a 19                	push   0x19
   2e1eb:	0e                   	push   cs
   2e1ec:	e8 aa db             	call   0x2bd99
   2e1ef:	83 c4 08             	add    sp,0x8
   2e1f2:	a0 f0 b9             	mov    al,ds:0xb9f0
   2e1f5:	b4 00                	mov    ah,0x0
   2e1f7:	05 03 00             	add    ax,0x3
   2e1fa:	bb 04 00             	mov    bx,0x4
   2e1fd:	99                   	cwd
   2e1fe:	f7 fb                	idiv   bx
   2e200:	d1 e2                	shl    dx,1
   2e202:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2e205:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2e208:	03 c2                	add    ax,dx
   2e20a:	40                   	inc    ax
   2e20b:	99                   	cwd
   2e20c:	50                   	push   ax
   2e20d:	52                   	push   dx
   2e20e:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2e212:	a1 ec b9             	mov    ax,ds:0xb9ec
   2e215:	59                   	pop    cx
   2e216:	5b                   	pop    bx
   2e217:	9a 77 14 00 00       	call   0x0:0x1477
   2e21c:	8b d8                	mov    bx,ax
   2e21e:	8e c2                	mov    es,dx
   2e220:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2e224:	74 07                	je     0x2e22d
   2e226:	83 0e f9 3a 10       	or     WORD PTR ds:0x3af9,0x10
   2e22b:	eb 05                	jmp    0x2e232
   2e22d:	83 26 f9 3a ef       	and    WORD PTR ds:0x3af9,0xffef
   2e232:	a0 f0 b9             	mov    al,ds:0xb9f0
   2e235:	b4 00                	mov    ah,0x0
   2e237:	40                   	inc    ax
   2e238:	bb 04 00             	mov    bx,0x4
   2e23b:	99                   	cwd
   2e23c:	f7 fb                	idiv   bx
   2e23e:	d1 e2                	shl    dx,1
   2e240:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2e243:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2e246:	03 c2                	add    ax,dx
   2e248:	40                   	inc    ax
   2e249:	99                   	cwd
   2e24a:	50                   	push   ax
   2e24b:	52                   	push   dx
   2e24c:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2e250:	a1 ec b9             	mov    ax,ds:0xb9ec
   2e253:	59                   	pop    cx
   2e254:	5b                   	pop    bx
   2e255:	9a 77 14 00 00       	call   0x0:0x1477
   2e25a:	8b d8                	mov    bx,ax
   2e25c:	8e c2                	mov    es,dx
   2e25e:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2e262:	74 07                	je     0x2e26b
   2e264:	83 0e f9 3a 20       	or     WORD PTR ds:0x3af9,0x20
   2e269:	eb 05                	jmp    0x2e270
   2e26b:	83 26 f9 3a df       	and    WORD PTR ds:0x3af9,0xffdf
   2e270:	a0 f0 b9             	mov    al,ds:0xb9f0
   2e273:	b4 00                	mov    ah,0x0
   2e275:	bb 04 00             	mov    bx,0x4
   2e278:	99                   	cwd
   2e279:	f7 fb                	idiv   bx
   2e27b:	d1 e2                	shl    dx,1
   2e27d:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2e280:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2e283:	03 c2                	add    ax,dx
   2e285:	40                   	inc    ax
   2e286:	99                   	cwd
   2e287:	50                   	push   ax
   2e288:	52                   	push   dx
   2e289:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2e28d:	a1 ec b9             	mov    ax,ds:0xb9ec
   2e290:	59                   	pop    cx
   2e291:	5b                   	pop    bx
   2e292:	9a 77 14 00 00       	call   0x0:0x1477
   2e297:	8b d8                	mov    bx,ax
   2e299:	8e c2                	mov    es,dx
   2e29b:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2e29f:	74 07                	je     0x2e2a8
   2e2a1:	83 0e f9 3a 40       	or     WORD PTR ds:0x3af9,0x40
   2e2a6:	eb 05                	jmp    0x2e2ad
   2e2a8:	83 26 f9 3a bf       	and    WORD PTR ds:0x3af9,0xffbf
   2e2ad:	c9                   	leave
   2e2ae:	cb                   	retf
