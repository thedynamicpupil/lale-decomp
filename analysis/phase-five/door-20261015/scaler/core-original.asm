
analysis/phase-five/door-20261015/scaler/core-original.bin:     file format binary


Disassembly of section .data:

000259a8 <.data>:
   259a8:	c8 24 00 00          	enter  0x24,0x0
   259ac:	1e                   	push   ds
   259ad:	06                   	push   es
   259ae:	57                   	push   di
   259af:	56                   	push   si
   259b0:	50                   	push   ax
   259b1:	51                   	push   cx
   259b2:	52                   	push   dx
   259b3:	c5 76 06             	lds    si,DWORD PTR [bp+0x6]
   259b6:	c4 7e 16             	les    di,DWORD PTR [bp+0x16]
   259b9:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
   259bc:	f7 66 12             	mul    WORD PTR [bp+0x12]
   259bf:	83 fa 00             	cmp    dx,0x0
   259c2:	0f 85 02 01          	jne    0x25ac8
   259c6:	03 46 0a             	add    ax,WORD PTR [bp+0xa]
   259c9:	03 f0                	add    si,ax
   259cb:	0f 82 f9 00          	jb     0x25ac8
   259cf:	66 33 c0             	xor    eax,eax
   259d2:	8b 46 1c             	mov    ax,WORD PTR [bp+0x1c]
   259d5:	f7 66 22             	mul    WORD PTR [bp+0x22]
   259d8:	83 fa 00             	cmp    dx,0x0
   259db:	0f 85 e9 00          	jne    0x25ac8
   259df:	03 46 1a             	add    ax,WORD PTR [bp+0x1a]
   259e2:	03 f8                	add    di,ax
   259e4:	0f 82 e0 00          	jb     0x25ac8
   259e8:	66 33 c9             	xor    ecx,ecx
   259eb:	66 33 c0             	xor    eax,eax
   259ee:	8b 46 0e             	mov    ax,WORD PTR [bp+0xe]
   259f1:	66 c1 e0 10          	shl    eax,0x10
   259f5:	8b 4e 1e             	mov    cx,WORD PTR [bp+0x1e]
   259f8:	66 33 d2             	xor    edx,edx
   259fb:	66 f7 f1             	div    ecx
   259fe:	66 2e a3 00 00       	mov    cs:0x0,eax
   25a03:	8b 46 10             	mov    ax,WORD PTR [bp+0x10]
   25a06:	66 c1 e0 10          	shl    eax,0x10
   25a0a:	8b 4e 20             	mov    cx,WORD PTR [bp+0x20]
   25a0d:	66 33 d2             	xor    edx,edx
   25a10:	66 f7 f1             	div    ecx
   25a13:	66 2e a3 04 00       	mov    cs:0x4,eax
   25a18:	66 2e c7 06 0c 00 00 	mov    DWORD PTR cs:0xc,0x0
   25a1f:	00 00 00 
   25a22:	8b 46 20             	mov    ax,WORD PTR [bp+0x20]
   25a25:	2e a3 0a 00          	mov    cs:0xa,ax
   25a29:	f6 46 28 01          	test   BYTE PTR [bp+0x28],0x1
   25a2d:	75 16                	jne    0x25a45
   25a2f:	90                   	nop
   25a30:	90                   	nop
   25a31:	fc                   	cld
   25a32:	2e c7 06 14 00 01 00 	mov    WORD PTR cs:0x14,0x1
   25a39:	8b 46 1e             	mov    ax,WORD PTR [bp+0x1e]
   25a3c:	f7 d8                	neg    ax
   25a3e:	2e a3 16 00          	mov    cs:0x16,ax
   25a42:	eb 14                	jmp    0x25a58
   25a44:	90                   	nop
   25a45:	fd                   	std
   25a46:	2e c7 06 14 00 ff ff 	mov    WORD PTR cs:0x14,0xffff
   25a4d:	8b 46 1e             	mov    ax,WORD PTR [bp+0x1e]
   25a50:	2e a3 16 00          	mov    cs:0x16,ax
   25a54:	03 7e 1e             	add    di,WORD PTR [bp+0x1e]
   25a57:	4f                   	dec    di
   25a58:	8b 4e 1e             	mov    cx,WORD PTR [bp+0x1e]
   25a5b:	66 8b d6             	mov    edx,esi
   25a5e:	8a 04                	mov    al,BYTE PTR [si]
   25a60:	3a 46 26             	cmp    al,BYTE PTR [bp+0x26]
   25a63:	75 0a                	jne    0x25a6f
   25a65:	90                   	nop
   25a66:	90                   	nop
   25a67:	2e 03 3e 14 00       	add    di,WORD PTR cs:0x14
   25a6c:	eb 02                	jmp    0x25a70
   25a6e:	90                   	nop
   25a6f:	aa                   	stos   BYTE PTR es:[di],al
   25a70:	66 c1 ce 10          	ror    esi,0x10
   25a74:	66 2e 03 36 00 00    	add    esi,DWORD PTR cs:0x0
   25a7a:	66 c1 c6 10          	rol    esi,0x10
   25a7e:	e2 de                	loop   0x25a5e
   25a80:	66 8b f2             	mov    esi,edx
   25a83:	66 2e 8b 0e 0c 00    	mov    ecx,DWORD PTR cs:0xc
   25a89:	66 2e 03 0e 04 00    	add    ecx,DWORD PTR cs:0x4
   25a8f:	66 2e 89 0e 0c 00    	mov    DWORD PTR cs:0xc,ecx
   25a95:	66 c1 e9 10          	shr    ecx,0x10
   25a99:	e3 14                	jcxz   0x25aaf
   25a9b:	90                   	nop
   25a9c:	90                   	nop
   25a9d:	90                   	nop
   25a9e:	90                   	nop
   25a9f:	90                   	nop
   25aa0:	03 76 12             	add    si,WORD PTR [bp+0x12]
   25aa3:	e2 fb                	loop   0x25aa0
   25aa5:	66 2e 81 26 0c 00 ff 	and    DWORD PTR cs:0xc,0xffff
   25aac:	ff 00 00 
   25aaf:	03 7e 22             	add    di,WORD PTR [bp+0x22]
   25ab2:	2e 03 3e 16 00       	add    di,WORD PTR cs:0x16
   25ab7:	2e ff 0e 0a 00       	dec    WORD PTR cs:0xa
   25abc:	75 9a                	jne    0x25a58
   25abe:	5a                   	pop    dx
   25abf:	59                   	pop    cx
   25ac0:	58                   	pop    ax
   25ac1:	5e                   	pop    si
   25ac2:	5f                   	pop    di
   25ac3:	07                   	pop    es
   25ac4:	1f                   	pop    ds
   25ac5:	fc                   	cld
   25ac6:	c9                   	leave
   25ac7:	cb                   	retf
   25ac8:	5a                   	pop    dx
   25ac9:	59                   	pop    cx
   25aca:	58                   	pop    ax
   25acb:	5e                   	pop    si
   25acc:	5f                   	pop    di
   25acd:	07                   	pop    es
   25ace:	1f                   	pop    ds
   25acf:	fc                   	cld
   25ad0:	b8 ff ff             	mov    ax,0xffff
   25ad3:	cb                   	retf
