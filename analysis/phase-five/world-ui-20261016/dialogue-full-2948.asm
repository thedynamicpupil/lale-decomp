
analysis/phase-five/world-ui-20261016/dialogue-full-2948.bin:     file format binary


Disassembly of section .data:

0000ab08 <.data>:
    ab08:	55                   	push   bp
    ab09:	8b ec                	mov    bp,sp
    ab0b:	83 ec 12             	sub    sp,0x12
    ab0e:	c7 46 fc 00 00       	mov    WORD PTR [bp-0x4],0x0
    ab13:	c7 46 fa 01 00       	mov    WORD PTR [bp-0x6],0x1
    ab18:	c7 46 f0 08 00       	mov    WORD PTR [bp-0x10],0x8
    ab1d:	c7 46 ee 6e 00       	mov    WORD PTR [bp-0x12],0x6e
    ab22:	ff 76 08             	push   WORD PTR [bp+0x8]
    ab25:	ff 76 06             	push   WORD PTR [bp+0x6]
    ab28:	9a 3e 00 da 16       	call   0x16da:0x3e
    ab2d:	83 c4 04             	add    sp,0x4
    ab30:	ff 76 08             	push   WORD PTR [bp+0x8]
    ab33:	ff 76 06             	push   WORD PTR [bp+0x6]
    ab36:	9a 25 00 da 16       	call   0x16da:0x25
    ab3b:	83 c4 04             	add    sp,0x4
    ab3e:	0e                   	push   cs
    ab3f:	e8 e8 f5             	call   0xa12a
    ab42:	b8 e0 16             	mov    ax,0x16e0
    ab45:	8e c0                	mov    es,ax
    ab47:	26 a0 5c 96          	mov    al,es:0x965c
    ab4b:	50                   	push   ax
    ab4c:	9a c7 05 7f 0c       	call   0xc7f:0x5c7
    ab51:	59                   	pop    cx
    ab52:	0a c0                	or     al,al
    ab54:	74 05                	je     0xab5b
    ab56:	9a 04 02 7f 0c       	call   0xc7f:0x204
    ab5b:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
    ab5e:	26 8a 07             	mov    al,BYTE PTR es:[bx]
    ab61:	88 46 f2             	mov    BYTE PTR [bp-0xe],al
    ab64:	c6 46 f3 00          	mov    BYTE PTR [bp-0xd],0x0
    ab68:	83 7e 0a 00          	cmp    WORD PTR [bp+0xa],0x0
    ab6c:	74 05                	je     0xab73
    ab6e:	b8 05 00             	mov    ax,0x5
    ab71:	eb 03                	jmp    0xab76
    ab73:	b8 54 00             	mov    ax,0x54
    ab76:	50                   	push   ax
    ab77:	b8 e0 16             	mov    ax,0x16e0
    ab7a:	8e c0                	mov    es,ax
    ab7c:	26 a0 65 96          	mov    al,es:0x9665
    ab80:	b4 00                	mov    ah,0x0
    ab82:	50                   	push   ax
    ab83:	16                   	push   ss
    ab84:	8d 46 f2             	lea    ax,[bp-0xe]
    ab87:	50                   	push   ax
    ab88:	b8 e0 16             	mov    ax,0x16e0
    ab8b:	8e c0                	mov    es,ax
    ab8d:	26 a1 58 96          	mov    ax,es:0x9658
    ab91:	05 05 00             	add    ax,0x5
    ab94:	50                   	push   ax
    ab95:	6a 04                	push   0x4
    ab97:	6a 00                	push   0x0
    ab99:	9a 34 00 da 16       	call   0x16da:0x34
    ab9e:	83 c4 0e             	add    sp,0xe
    aba1:	ff 76 08             	push   WORD PTR [bp+0x8]
    aba4:	ff 76 06             	push   WORD PTR [bp+0x6]
    aba7:	9a 2a 00 da 16       	call   0x16da:0x2a
    abac:	83 c4 04             	add    sp,0x4
    abaf:	c7 46 f6 00 00       	mov    WORD PTR [bp-0xa],0x0
    abb4:	e9 81 00             	jmp    0xac38
    abb7:	b8 e0 16             	mov    ax,0x16e0
    abba:	8e c0                	mov    es,ax
    abbc:	26 80 3e 73 96 02    	cmp    BYTE PTR es:0x9673,0x2
    abc2:	75 04                	jne    0xabc8
    abc4:	b0 02                	mov    al,0x2
    abc6:	eb 02                	jmp    0xabca
    abc8:	b0 00                	mov    al,0x0
    abca:	50                   	push   ax
    abcb:	16                   	push   ss
    abcc:	8d 46 fc             	lea    ax,[bp-0x4]
    abcf:	50                   	push   ax
    abd0:	83 7e 0a 00          	cmp    WORD PTR [bp+0xa],0x0
    abd4:	74 0b                	je     0xabe1
    abd6:	b8 e0 16             	mov    ax,0x16e0
    abd9:	8e c0                	mov    es,ax
    abdb:	26 a0 65 96          	mov    al,es:0x9665
    abdf:	eb 09                	jmp    0xabea
    abe1:	b8 e0 16             	mov    ax,0x16e0
    abe4:	8e c0                	mov    es,ax
    abe6:	26 a0 6c 96          	mov    al,es:0x966c
    abea:	50                   	push   ax
    abeb:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
    abee:	c1 e0 03             	shl    ax,0x3
    abf1:	ba e0 16             	mov    dx,0x16e0
    abf4:	8e c2                	mov    es,dx
    abf6:	26 8b 16 58 96       	mov    dx,WORD PTR es:0x9658
    abfb:	03 d0                	add    dx,ax
    abfd:	52                   	push   dx
    abfe:	83 7e f6 02          	cmp    WORD PTR [bp-0xa],0x2
    ac02:	7d 05                	jge    0xac09
    ac04:	b8 17 00             	mov    ax,0x17
    ac07:	eb 03                	jmp    0xac0c
    ac09:	b8 04 00             	mov    ax,0x4
    ac0c:	50                   	push   ax
    ac0d:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
    ac10:	ff 46 fc             	inc    WORD PTR [bp-0x4]
    ac13:	03 46 06             	add    ax,WORD PTR [bp+0x6]
    ac16:	40                   	inc    ax
    ac17:	ff 76 08             	push   WORD PTR [bp+0x8]
    ac1a:	50                   	push   ax
    ac1b:	6a 00                	push   0x0
    ac1d:	0e                   	push   cs
    ac1e:	e8 8b fb             	call   0xa7ac
    ac21:	83 c4 12             	add    sp,0x12
    ac24:	0a c0                	or     al,al
    ac26:	75 26                	jne    0xac4e
    ac28:	ff 46 f6             	inc    WORD PTR [bp-0xa]
    ac2b:	b8 e0 16             	mov    ax,0x16e0
    ac2e:	8e c0                	mov    es,ax
    ac30:	26 fe 06 aa bb       	inc    BYTE PTR es:0xbbaa
    ac35:	ff 46 fa             	inc    WORD PTR [bp-0x6]
    ac38:	83 7e f6 06          	cmp    WORD PTR [bp-0xa],0x6
    ac3c:	7d 10                	jge    0xac4e
    ac3e:	b8 e0 16             	mov    ax,0x16e0
    ac41:	8e c0                	mov    es,ax
    ac43:	26 80 3e aa bb 06    	cmp    BYTE PTR es:0xbbaa,0x6
    ac49:	73 03                	jae    0xac4e
    ac4b:	e9 69 ff             	jmp    0xabb7
    ac4e:	b8 e0 16             	mov    ax,0x16e0
    ac51:	8e c0                	mov    es,ax
    ac53:	26 a0 71 96          	mov    al,es:0x9671
    ac57:	50                   	push   ax
    ac58:	9a 69 00 7f 0c       	call   0xc7f:0x69
    ac5d:	59                   	pop    cx
    ac5e:	83 7e 0a 00          	cmp    WORD PTR [bp+0xa],0x0
    ac62:	74 03                	je     0xac67
    ac64:	e9 8e 02             	jmp    0xaef5
    ac67:	b8 e0 16             	mov    ax,0x16e0
    ac6a:	8e c0                	mov    es,ax
    ac6c:	26 a1 5f e5          	mov    ax,es:0xe55f
    ac70:	26 0b 06 61 e5       	or     ax,WORD PTR es:0xe561
    ac75:	74 15                	je     0xac8c
    ac77:	6a 60                	push   0x60
    ac79:	6a 00                	push   0x0
    ac7b:	6a 00                	push   0x0
    ac7d:	68 06 03             	push   0x306
    ac80:	1e                   	push   ds
    ac81:	68 50 6d             	push   0x6d50
    ac84:	9a 2a 00 c1 16       	call   0x16c1:0x2a
    ac89:	83 c4 0c             	add    sp,0xc
    ac8c:	b8 e0 16             	mov    ax,0x16e0
    ac8f:	8e c0                	mov    es,ax
    ac91:	26 c7 06 5b e5 20 00 	mov    WORD PTR es:0xe55b,0x20
    ac98:	b8 e0 16             	mov    ax,0x16e0
    ac9b:	8e c0                	mov    es,ax
    ac9d:	26 c7 06 5d e5 20 00 	mov    WORD PTR es:0xe55d,0x20
    aca4:	6a 00                	push   0x0
    aca6:	b8 e0 16             	mov    ax,0x16e0
    aca9:	8e c0                	mov    es,ax
    acab:	26 a1 5b e5          	mov    ax,es:0xe55b
    acaf:	ba e0 16             	mov    dx,0x16e0
    acb2:	8e c2                	mov    es,dx
    acb4:	26 f7 2e 5d e5       	imul   WORD PTR es:0xe55d
    acb9:	99                   	cwd
    acba:	52                   	push   dx
    acbb:	50                   	push   ax
    acbc:	9a 64 01 d4 09       	call   0x9d4:0x164
    acc1:	83 c4 06             	add    sp,0x6
    acc4:	bb e0 16             	mov    bx,0x16e0
    acc7:	8e c3                	mov    es,bx
    acc9:	26 89 16 61 e5       	mov    WORD PTR es:0xe561,dx
    acce:	26 a3 5f e5          	mov    es:0xe55f,ax
    acd2:	6a 20                	push   0x20
    acd4:	6a 20                	push   0x20
    acd6:	ff 76 ee             	push   WORD PTR [bp-0x12]
    acd9:	ff 76 f0             	push   WORD PTR [bp-0x10]
    acdc:	9a 7d 06 7f 0c       	call   0xc7f:0x67d
    ace1:	83 c4 08             	add    sp,0x8
    ace4:	0a c0                	or     al,al
    ace6:	74 05                	je     0xaced
    ace8:	9a 04 02 7f 0c       	call   0xc7f:0x204
    aced:	68 99 25             	push   0x2599
    acf0:	68 d0 02             	push   0x2d0
    acf3:	6a 58                	push   0x58
    acf5:	6a 00                	push   0x0
    acf7:	6a 00                	push   0x0
    acf9:	6a 00                	push   0x0
    acfb:	6a 20                	push   0x20
    acfd:	6a 20                	push   0x20
    acff:	ff 76 ee             	push   WORD PTR [bp-0x12]
    ad02:	ff 76 f0             	push   WORD PTR [bp-0x10]
    ad05:	9a 30 04 c6 0a       	call   0xac6:0x430
    ad0a:	83 c4 14             	add    sp,0x14
    ad0d:	b8 e0 16             	mov    ax,0x16e0
    ad10:	8e c0                	mov    es,ax
    ad12:	26 a0 e3 e5          	mov    al,es:0xe5e3
    ad16:	50                   	push   ax
    ad17:	9a 69 00 7f 0c       	call   0xc7f:0x69
    ad1c:	59                   	pop    cx
    ad1d:	c7 46 f6 01 00       	mov    WORD PTR [bp-0xa],0x1
    ad22:	eb 16                	jmp    0xad3a
    ad24:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
    ad27:	6b db 5c             	imul   bx,bx,0x5c
    ad2a:	b8 e0 16             	mov    ax,0x16e0
    ad2d:	8e c0                	mov    es,ax
    ad2f:	26 83 bf e0 99 00    	cmp    WORD PTR es:[bx-0x6620],0x0
    ad35:	7f 09                	jg     0xad40
    ad37:	ff 46 f6             	inc    WORD PTR [bp-0xa]
    ad3a:	83 7e f6 05          	cmp    WORD PTR [bp-0xa],0x5
    ad3e:	7c e4                	jl     0xad24
    ad40:	83 7e f6 05          	cmp    WORD PTR [bp-0xa],0x5
    ad44:	75 26                	jne    0xad6c
    ad46:	9a 2f 00 82 16       	call   0x1682:0x2f
    ad4b:	eb 1f                	jmp    0xad6c
    ad4d:	eb 1d                	jmp    0xad6c
    ad4f:	6a 00                	push   0x0
    ad51:	68 00 80             	push   0x8000
    ad54:	9a 79 17 00 00       	call   0x0:0x1779
    ad59:	99                   	cwd
    ad5a:	b1 02                	mov    cl,0x2
    ad5c:	9a 8d 13 00 00       	call   0x0:0x138d
    ad61:	52                   	push   dx
    ad62:	50                   	push   ax
    ad63:	9a df 12 00 00       	call   0x0:0x12df
    ad68:	40                   	inc    ax
    ad69:	89 46 0c             	mov    WORD PTR [bp+0xc],ax
    ad6c:	8b 5e 0c             	mov    bx,WORD PTR [bp+0xc]
    ad6f:	6b db 5c             	imul   bx,bx,0x5c
    ad72:	b8 e0 16             	mov    ax,0x16e0
    ad75:	8e c0                	mov    es,ax
    ad77:	26 83 bf e0 99 00    	cmp    WORD PTR es:[bx-0x6620],0x0
    ad7d:	7e d0                	jle    0xad4f
    ad7f:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
    ad82:	6b c0 06             	imul   ax,ax,0x6
    ad85:	05 14 00             	add    ax,0x14
    ad88:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
    ad8b:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
    ad8e:	b8 e0 16             	mov    ax,0x16e0
    ad91:	8e c0                	mov    es,ax
    ad93:	26 c7 06 e5 e5 00 00 	mov    WORD PTR es:0xe5e5,0x0
    ad9a:	e9 19 01             	jmp    0xaeb6
    ad9d:	b8 e0 16             	mov    ax,0x16e0
    ada0:	8e c0                	mov    es,ax
    ada2:	26 a1 4a e7          	mov    ax,es:0xe74a
    ada6:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
    ada9:	eb 10                	jmp    0xadbb
    adab:	b8 e0 16             	mov    ax,0x16e0
    adae:	8e c0                	mov    es,ax
    adb0:	26 a0 e3 e5          	mov    al,es:0xe5e3
    adb4:	50                   	push   ax
    adb5:	9a 6b 02 7f 0c       	call   0xc7f:0x26b
    adba:	59                   	pop    cx
    adbb:	b8 e0 16             	mov    ax,0x16e0
    adbe:	8e c0                	mov    es,ax
    adc0:	26 a1 4a e7          	mov    ax,es:0xe74a
    adc4:	2b 46 fe             	sub    ax,WORD PTR [bp-0x2]
    adc7:	3d 96 00             	cmp    ax,0x96
    adca:	72 df                	jb     0xadab
    adcc:	6a 20                	push   0x20
    adce:	6a 20                	push   0x20
    add0:	ff 76 ee             	push   WORD PTR [bp-0x12]
    add3:	ff 76 f0             	push   WORD PTR [bp-0x10]
    add6:	9a 7d 06 7f 0c       	call   0xc7f:0x67d
    addb:	83 c4 08             	add    sp,0x8
    adde:	0a c0                	or     al,al
    ade0:	74 05                	je     0xade7
    ade2:	9a 04 02 7f 0c       	call   0xc7f:0x204
    ade7:	b8 e0 16             	mov    ax,0x16e0
    adea:	8e c0                	mov    es,ax
    adec:	26 a0 65 96          	mov    al,es:0x9665
    adf0:	b4 00                	mov    ah,0x0
    adf2:	50                   	push   ax
    adf3:	6a 00                	push   0x0
    adf5:	6a 1f                	push   0x1f
    adf7:	6a 1f                	push   0x1f
    adf9:	ff 76 ee             	push   WORD PTR [bp-0x12]
    adfc:	ff 76 f0             	push   WORD PTR [bp-0x10]
    adff:	9a 99 0b c6 0a       	call   0xac6:0xb99
    ae04:	83 c4 0c             	add    sp,0xc
    ae07:	68 99 25             	push   0x2599
    ae0a:	68 d0 02             	push   0x2d0
    ae0d:	6a 00                	push   0x0
    ae0f:	8a 46 0c             	mov    al,BYTE PTR [bp+0xc]
    ae12:	04 46                	add    al,0x46
    ae14:	50                   	push   ax
    ae15:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
    ae18:	40                   	inc    ax
    ae19:	50                   	push   ax
    ae1a:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
    ae1d:	40                   	inc    ax
    ae1e:	50                   	push   ax
    ae1f:	6a 1e                	push   0x1e
    ae21:	6a 1e                	push   0x1e
    ae23:	6a 01                	push   0x1
    ae25:	6a 00                	push   0x0
    ae27:	68 00 80             	push   0x8000
    ae2a:	9a 79 17 00 00       	call   0x0:0x1779
    ae2f:	99                   	cwd
    ae30:	d1 e0                	shl    ax,1
    ae32:	d1 d2                	rcl    dx,1
    ae34:	52                   	push   dx
    ae35:	50                   	push   ax
    ae36:	9a df 12 00 00       	call   0x0:0x12df
    ae3b:	0b c0                	or     ax,ax
    ae3d:	74 04                	je     0xae43
    ae3f:	33 c0                	xor    ax,ax
    ae41:	eb 1c                	jmp    0xae5f
    ae43:	6a 00                	push   0x0
    ae45:	68 00 80             	push   0x8000
    ae48:	9a 79 17 00 00       	call   0x0:0x1779
    ae4d:	99                   	cwd
    ae4e:	d1 e0                	shl    ax,1
    ae50:	d1 d2                	rcl    dx,1
    ae52:	52                   	push   dx
    ae53:	50                   	push   ax
    ae54:	9a df 12 00 00       	call   0x0:0x12df
    ae59:	05 03 00             	add    ax,0x3
    ae5c:	c1 e0 05             	shl    ax,0x5
    ae5f:	40                   	inc    ax
    ae60:	50                   	push   ax
    ae61:	9a 30 04 c6 0a       	call   0xac6:0x430
    ae66:	83 c4 14             	add    sp,0x14
    ae69:	b8 e0 16             	mov    ax,0x16e0
    ae6c:	8e c0                	mov    es,ax
    ae6e:	26 a0 e3 e5          	mov    al,es:0xe5e3
    ae72:	50                   	push   ax
    ae73:	9a 69 00 7f 0c       	call   0xc7f:0x69
    ae78:	59                   	pop    cx
    ae79:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
    ae7c:	ff 4e fa             	dec    WORD PTR [bp-0x6]
    ae7f:	0b c0                	or     ax,ax
    ae81:	7c 68                	jl     0xaeeb
    ae83:	9a 45 2e 00 00       	call   0x0:0x2e45
    ae88:	0b c0                	or     ax,ax
    ae8a:	74 2a                	je     0xaeb6
    ae8c:	9a d7 29 00 00       	call   0x0:0x29d7
    ae91:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
    ae94:	9a e3 01 b7 0d       	call   0xdb7:0x1e3
    ae99:	83 7e f8 1b          	cmp    WORD PTR [bp-0x8],0x1b
    ae9d:	74 0c                	je     0xaeab
    ae9f:	83 7e f8 20          	cmp    WORD PTR [bp-0x8],0x20
    aea3:	74 06                	je     0xaeab
    aea5:	83 7e f8 0d          	cmp    WORD PTR [bp-0x8],0xd
    aea9:	75 0b                	jne    0xaeb6
    aeab:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
    aeae:	2b 46 fa             	sub    ax,WORD PTR [bp-0x6]
    aeb1:	3d 03 00             	cmp    ax,0x3
    aeb4:	7f 35                	jg     0xaeeb
    aeb6:	b8 e0 16             	mov    ax,0x16e0
    aeb9:	8e c0                	mov    es,ax
    aebb:	26 83 3e e5 e5 00    	cmp    WORD PTR es:0xe5e5,0x0
    aec1:	75 03                	jne    0xaec6
    aec3:	e9 d7 fe             	jmp    0xad9d
    aec6:	b8 e0 16             	mov    ax,0x16e0
    aec9:	8e c0                	mov    es,ax
    aecb:	26 a0 5c 96          	mov    al,es:0x965c
    aecf:	50                   	push   ax
    aed0:	9a c7 05 7f 0c       	call   0xc7f:0x5c7
    aed5:	59                   	pop    cx
    aed6:	0a c0                	or     al,al
    aed8:	75 03                	jne    0xaedd
    aeda:	e9 c0 fe             	jmp    0xad9d
    aedd:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
    aee0:	2b 46 fa             	sub    ax,WORD PTR [bp-0x6]
    aee3:	3d 03 00             	cmp    ax,0x3
    aee6:	7d 03                	jge    0xaeeb
    aee8:	e9 b2 fe             	jmp    0xad9d
    aeeb:	9a 14 07 7f 0c       	call   0xc7f:0x714
    aef0:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
    aef5:	83 7e 0a 00          	cmp    WORD PTR [bp+0xa],0x0
    aef9:	75 5a                	jne    0xaf55
    aefb:	b8 e0 16             	mov    ax,0x16e0
    aefe:	8e c0                	mov    es,ax
    af00:	26 a1 5f e5          	mov    ax,es:0xe55f
    af04:	26 0b 06 61 e5       	or     ax,WORD PTR es:0xe561
    af09:	74 4a                	je     0xaf55
    af0b:	9a 04 02 7f 0c       	call   0xc7f:0x204
    af10:	68 99 25             	push   0x2599
    af13:	68 d0 02             	push   0x2d0
    af16:	6a 00                	push   0x0
    af18:	6a 58                	push   0x58
    af1a:	ff 76 ee             	push   WORD PTR [bp-0x12]
    af1d:	ff 76 f0             	push   WORD PTR [bp-0x10]
    af20:	6a 20                	push   0x20
    af22:	6a 20                	push   0x20
    af24:	6a 00                	push   0x0
    af26:	6a 00                	push   0x0
    af28:	9a 30 04 c6 0a       	call   0xac6:0x430
    af2d:	83 c4 14             	add    sp,0x14
    af30:	b8 e0 16             	mov    ax,0x16e0
    af33:	8e c0                	mov    es,ax
    af35:	26 a0 e3 e5          	mov    al,es:0xe5e3
    af39:	50                   	push   ax
    af3a:	9a 69 00 7f 0c       	call   0xc7f:0x69
    af3f:	59                   	pop    cx
    af40:	1e                   	push   ds
    af41:	68 62 6d             	push   0x6d62
    af44:	68 32 03             	push   0x332
    af47:	68 e0 16             	push   0x16e0
    af4a:	68 5f e5             	push   0xe55f
    af4d:	9a 2f 02 b7 0d       	call   0xdb7:0x22f
    af52:	83 c4 0a             	add    sp,0xa
    af55:	8a                   	.byte 0x8a
