
analysis/phase-five/area-fields-20261015/area/transition-opcode.bin:     file format binary


Disassembly of section .data:

00044757 <.data>:
   44757:	98                   	cbw
   44758:	bb e9 db             	mov    bx,0xdbe9
   4475b:	f9                   	stc
   4475c:	90                   	nop
   4475d:	0e                   	push   cs
   4475e:	e8 72 3d             	call   0x484d3
   44761:	88 46 e4             	mov    BYTE PTR [bp-0x1c],al
   44764:	90                   	nop
   44765:	0e                   	push   cs
   44766:	e8 6a 3d             	call   0x484d3
   44769:	b4 00                	mov    ah,0x0
   4476b:	c1 e0 08             	shl    ax,0x8
   4476e:	50                   	push   ax
   4476f:	90                   	nop
   44770:	0e                   	push   cs
   44771:	e8 5f 3d             	call   0x484d3
   44774:	b4 00                	mov    ah,0x0
   44776:	5a                   	pop    dx
   44777:	03 d0                	add    dx,ax
   44779:	89 56 d2             	mov    WORD PTR [bp-0x2e],dx
   4477c:	90                   	nop
   4477d:	0e                   	push   cs
   4477e:	e8 52 3d             	call   0x484d3
   44781:	b4 00                	mov    ah,0x0
   44783:	bb 04 00             	mov    bx,0x4
   44786:	99                   	cwd
   44787:	f7 fb                	idiv   bx
   44789:	88 56 e3             	mov    BYTE PTR [bp-0x1d],dl
   4478c:	9a b9 1e 10 00       	call   0x10:0x1eb9
   44791:	80 7e e4 64          	cmp    BYTE PTR [bp-0x1c],0x64
   44795:	72 03                	jb     0x4479a
   44797:	e9 59 01             	jmp    0x448f3
   4479a:	8a 46 e4             	mov    al,BYTE PTR [bp-0x1c]
   4479d:	b4 00                	mov    ah,0x0
   4479f:	48                   	dec    ax
   447a0:	ba 88 01             	mov    dx,0x188
   447a3:	8e c2                	mov    es,dx
   447a5:	26 3b 06 6b bb       	cmp    ax,WORD PTR es:0xbb6b
   447aa:	75 03                	jne    0x447af
   447ac:	e9 ec 00             	jmp    0x4489b
   447af:	b8 88 01             	mov    ax,0x188
   447b2:	8e c0                	mov    es,ax
   447b4:	26 a0 1a 73          	mov    al,es:0x731a
   447b8:	88 46 e2             	mov    BYTE PTR [bp-0x1e],al
   447bb:	b8 88 01             	mov    ax,0x188
   447be:	8e c0                	mov    es,ax
   447c0:	26 a1 1a 73          	mov    ax,es:0x731a
   447c4:	f7 d8                	neg    ax
   447c6:	50                   	push   ax
   447c7:	6a 00                	push   0x0
   447c9:	68 f4 01             	push   0x1f4
   447cc:	9a 3f 07 30 00       	call   0x30:0x73f
   447d1:	83 c4 06             	add    sp,0x6
   447d4:	b8 88 01             	mov    ax,0x188
   447d7:	8e c0                	mov    es,ax
   447d9:	26 80 3e 36 bb 00    	cmp    BYTE PTR es:0xbb36,0x0
   447df:	74 5d                	je     0x4483e
   447e1:	b8 88 01             	mov    ax,0x188
   447e4:	8e c0                	mov    es,ax
   447e6:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   447ec:	74 50                	je     0x4483e
   447ee:	9a 96 12 68 00       	call   0x68:0x1296
   447f3:	b8 88 01             	mov    ax,0x188
   447f6:	8e c0                	mov    es,ax
   447f8:	26 a1 75 bb          	mov    ax,es:0xbb75
   447fc:	26 0b 06 77 bb       	or     ax,WORD PTR es:0xbb77
   44801:	74 3b                	je     0x4483e
   44803:	b8 88 01             	mov    ax,0x188
   44806:	8e c0                	mov    es,ax
   44808:	26 ff 36 77 bb       	push   WORD PTR es:0xbb77
   4480d:	26 ff 36 75 bb       	push   WORD PTR es:0xbb75
   44812:	9a 03 00 80 00       	call   0x80:0x3
   44817:	b8 88 01             	mov    ax,0x188
   4481a:	8e c0                	mov    es,ax
   4481c:	26 ff 36 77 bb       	push   WORD PTR es:0xbb77
   44821:	26 ff 36 75 bb       	push   WORD PTR es:0xbb75
   44826:	9a da 00 58 00       	call   0x58:0xda
   4482b:	b8 88 01             	mov    ax,0x188
   4482e:	8e c0                	mov    es,ax
   44830:	26 c7 06 77 bb 00 00 	mov    WORD PTR es:0xbb77,0x0
   44837:	26 c7 06 75 bb 00 00 	mov    WORD PTR es:0xbb75,0x0
   4483e:	6a 01                	push   0x1
   44840:	8a 46 e4             	mov    al,BYTE PTR [bp-0x1c]
   44843:	b4 00                	mov    ah,0x0
   44845:	48                   	dec    ax
   44846:	ba 88 01             	mov    dx,0x188
   44849:	8e c2                	mov    es,dx
   4484b:	26 a3 6b bb          	mov    es:0xbb6b,ax
   4484f:	50                   	push   ax
   44850:	9a 2a 00 18 01       	call   0x118:0x2a
   44855:	83 c4 04             	add    sp,0x4
   44858:	b8 88 01             	mov    ax,0x188
   4485b:	8e c0                	mov    es,ax
   4485d:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   44863:	74 23                	je     0x44888
   44865:	b8 88 01             	mov    ax,0x188
   44868:	8e c0                	mov    es,ax
   4486a:	26 80 3e 36 bb 00    	cmp    BYTE PTR es:0xbb36,0x0
   44870:	74 16                	je     0x44888
   44872:	6a 00                	push   0x0
   44874:	6a 01                	push   0x1
   44876:	b8 88 01             	mov    ax,0x188
   44879:	8e c0                	mov    es,ax
   4487b:	26 ff 36 4d bb       	push   WORD PTR es:0xbb4d
   44880:	9a 43 00 28 01       	call   0x128:0x43
   44885:	83 c4 06             	add    sp,0x6
   44888:	8a 46 e2             	mov    al,BYTE PTR [bp-0x1e]
   4488b:	b4 00                	mov    ah,0x0
   4488d:	50                   	push   ax
   4488e:	6a 00                	push   0x0
   44890:	68 f4 01             	push   0x1f4
   44893:	9a 3f 07 30 00       	call   0x30:0x73f
   44898:	83 c4 06             	add    sp,0x6
   4489b:	b8 88 01             	mov    ax,0x188
   4489e:	8e c0                	mov    es,ax
   448a0:	26 a0 eb b9          	mov    al,es:0xb9eb
   448a4:	b4 00                	mov    ah,0x0
   448a6:	50                   	push   ax
   448a7:	8b 46 d2             	mov    ax,WORD PTR [bp-0x2e]
   448aa:	33 d2                	xor    dx,dx
   448ac:	5b                   	pop    bx
   448ad:	f7 f3                	div    bx
   448af:	ba 88 01             	mov    dx,0x188
   448b2:	8e c2                	mov    es,dx
   448b4:	26 a3 f1 b9          	mov    es:0xb9f1,ax
   448b8:	b8 88 01             	mov    ax,0x188
   448bb:	8e c0                	mov    es,ax
   448bd:	26 a0 eb b9          	mov    al,es:0xb9eb
   448c1:	b4 00                	mov    ah,0x0
   448c3:	50                   	push   ax
   448c4:	8b 46 d2             	mov    ax,WORD PTR [bp-0x2e]
   448c7:	33 d2                	xor    dx,dx
   448c9:	5b                   	pop    bx
   448ca:	f7 f3                	div    bx
   448cc:	4a                   	dec    dx
   448cd:	b8 88 01             	mov    ax,0x188
   448d0:	8e c0                	mov    es,ax
   448d2:	26 89 16 f3 b9       	mov    WORD PTR es:0xb9f3,dx
   448d7:	8a 46 e3             	mov    al,BYTE PTR [bp-0x1d]
   448da:	b4 00                	mov    ah,0x0
   448dc:	bb 04 00             	mov    bx,0x4
   448df:	99                   	cwd
   448e0:	f7 fb                	idiv   bx
   448e2:	b8 88 01             	mov    ax,0x188
   448e5:	8e c0                	mov    es,ax
   448e7:	26 88 16 f0 b9       	mov    BYTE PTR es:0xb9f0,dl
   448ec:	9a 6b 00 10 01       	call   0x110:0x6b
   448f1:	eb 0b                	jmp    0x448fe
   448f3:	80 7e e4 64          	cmp    BYTE PTR [bp-0x1c],0x64
   448f7:	75 05                	jne    0x448fe
   448f9:	9a 89 00 18 01       	call   0x118:0x89
   448fe:	9a 52 00 18 01       	call   0x118:0x52
   44903:	9a a7 00 18 01       	call   0x118:0xa7
   44908:	b8                   	.byte 0xb8
   44909:	88                   	.byte 0x88
