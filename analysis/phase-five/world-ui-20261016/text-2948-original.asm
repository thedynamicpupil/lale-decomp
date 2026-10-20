
analysis/phase-five/world-ui-20261016/text-2948-original.bin:     file format binary


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
    ac3e:	b8                   	.byte 0xb8
    ac3f:	e0                   	.byte 0xe0
