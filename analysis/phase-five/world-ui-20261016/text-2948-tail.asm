
analysis/phase-five/world-ui-20261016/text-2948-tail.bin:     file format binary


Disassembly of section .data:

0000ac38 <.data>:
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
