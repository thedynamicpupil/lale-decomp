
analysis/phase-four/continuation/original-overlay-167c.bin:     file format binary


Disassembly of section .data:

0003e753 <.data+0x1b53>:
   3e753:	b8 88 01             	mov    ax,0x188
   3e756:	8e c0                	mov    es,ax
   3e758:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e75d:	6b db 5c             	imul   bx,bx,0x5c
   3e760:	b8 88 01             	mov    ax,0x188
   3e763:	8e c0                	mov    es,ax
   3e765:	26 83 bf a8 99 01    	cmp    WORD PTR es:[bx-0x6658],0x1
   3e76b:	7e 19                	jle    0x3e786
   3e76d:	b8 88 01             	mov    ax,0x188
   3e770:	8e c0                	mov    es,ax
   3e772:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e777:	6b db 5c             	imul   bx,bx,0x5c
   3e77a:	b8 88 01             	mov    ax,0x188
   3e77d:	8e c0                	mov    es,ax
   3e77f:	26 8b 87 a8 99       	mov    ax,WORD PTR es:[bx-0x6658]
   3e784:	eb 03                	jmp    0x3e789
   3e786:	b8 01 00             	mov    ax,0x1
   3e789:	ba 88 01             	mov    dx,0x188
   3e78c:	8e c2                	mov    es,dx
   3e78e:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e793:	6b db 5c             	imul   bx,bx,0x5c
   3e796:	ba 88 01             	mov    dx,0x188
   3e799:	8e c2                	mov    es,dx
   3e79b:	26 89 87 a8 99       	mov    WORD PTR es:[bx-0x6658],ax
   3e7a0:	b8 88 01             	mov    ax,0x188
   3e7a3:	8e c0                	mov    es,ax
   3e7a5:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e7aa:	6b db 5c             	imul   bx,bx,0x5c
   3e7ad:	b8 88 01             	mov    ax,0x188
   3e7b0:	8e c0                	mov    es,ax
   3e7b2:	26 83 bf aa 99 01    	cmp    WORD PTR es:[bx-0x6656],0x1
   3e7b8:	7e 19                	jle    0x3e7d3
   3e7ba:	b8 88 01             	mov    ax,0x188
   3e7bd:	8e c0                	mov    es,ax
   3e7bf:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e7c4:	6b db 5c             	imul   bx,bx,0x5c
   3e7c7:	b8 88 01             	mov    ax,0x188
   3e7ca:	8e c0                	mov    es,ax
   3e7cc:	26 8b 87 aa 99       	mov    ax,WORD PTR es:[bx-0x6656]
   3e7d1:	eb 03                	jmp    0x3e7d6
   3e7d3:	b8 01 00             	mov    ax,0x1
   3e7d6:	ba 88 01             	mov    dx,0x188
   3e7d9:	8e c2                	mov    es,dx
   3e7db:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e7e0:	6b db 5c             	imul   bx,bx,0x5c
   3e7e3:	ba 88 01             	mov    dx,0x188
   3e7e6:	8e c2                	mov    es,dx
   3e7e8:	26 89 87 aa 99       	mov    WORD PTR es:[bx-0x6656],ax
   3e7ed:	b8 88 01             	mov    ax,0x188
   3e7f0:	8e c0                	mov    es,ax
   3e7f2:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e7f7:	6b db 5c             	imul   bx,bx,0x5c
   3e7fa:	b8 88 01             	mov    ax,0x188
   3e7fd:	8e c0                	mov    es,ax
   3e7ff:	26 83 bf e8 99 01    	cmp    WORD PTR es:[bx-0x6618],0x1
   3e805:	7e 19                	jle    0x3e820
   3e807:	b8 88 01             	mov    ax,0x188
   3e80a:	8e c0                	mov    es,ax
   3e80c:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e811:	6b db 5c             	imul   bx,bx,0x5c
   3e814:	b8 88 01             	mov    ax,0x188
   3e817:	8e c0                	mov    es,ax
   3e819:	26 8b 87 e8 99       	mov    ax,WORD PTR es:[bx-0x6618]
   3e81e:	eb 03                	jmp    0x3e823
   3e820:	b8 01 00             	mov    ax,0x1
   3e823:	ba 88 01             	mov    dx,0x188
   3e826:	8e c2                	mov    es,dx
   3e828:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e82d:	6b db 5c             	imul   bx,bx,0x5c
   3e830:	ba 88 01             	mov    dx,0x188
   3e833:	8e c2                	mov    es,dx
   3e835:	26 89 87 e8 99       	mov    WORD PTR es:[bx-0x6618],ax
   3e83a:	68 c7 00             	push   0xc7
   3e83d:	68 3f 01             	push   0x13f
   3e840:	6a 00                	push   0x0
   3e842:	6a 00                	push   0x0
   3e844:	9a 4d 00 50 01       	call   0x150:0x4d
   3e849:	83 c4 08             	add    sp,0x8
   3e84c:	b8 88 01             	mov    ax,0x188
   3e84f:	8e c0                	mov    es,ax
   3e851:	26 c7 06 e3 e5 2d 00 	mov    WORD PTR es:0xe5e3,0x2d
   3e858:	0e                   	push   cs
   3e859:	e8 a4 e3             	call   0x3cc00
   3e85c:	0e                   	push   cs
   3e85d:	e8 bf e4             	call   0x3cd1f
   3e860:	b8 88 01             	mov    ax,0x188
   3e863:	8e c0                	mov    es,ax
   3e865:	26 a1 98 28          	mov    ax,es:0x2898
   3e869:	69 c0 94 00          	imul   ax,ax,0x94
   3e86d:	05 26 9c             	add    ax,0x9c26
   3e870:	68 88 01             	push   0x188
   3e873:	50                   	push   ax
   3e874:	9a cc 49 00 00       	call   0x0:0x49cc
   3e879:	83 c4 04             	add    sp,0x4
   3e87c:	0b c0                	or     ax,ax
   3e87e:	75 06                	jne    0x3e886
   3e880:	0e                   	push   cs
   3e881:	e8 b3 e7             	call   0x3d037
   3e884:	eb 04                	jmp    0x3e88a
   3e886:	0e                   	push   cs
   3e887:	e8 c4 f2             	call   0x3db4e
   3e88a:	0e                   	push   cs
   3e88b:	e8 44 fb             	call   0x3e3d2
   3e88e:	0e                   	push   cs
   3e88f:	e8 b8 f9             	call   0x3e24a
   3e892:	0e                   	push   cs
   3e893:	e8 c7 e6             	call   0x3cf5d
   3e896:	0e                   	push   cs
   3e897:	e8 b9 fa             	call   0x3e353
   3e89a:	b8 88 01             	mov    ax,0x188
   3e89d:	8e c0                	mov    es,ax
   3e89f:	26 c7 06 fd e5 11 00 	mov    WORD PTR es:0xe5fd,0x11
   3e8a6:	b8 88 01             	mov    ax,0x188
   3e8a9:	8e c0                	mov    es,ax
   3e8ab:	26 c7 06 ff e5 35 00 	mov    WORD PTR es:0xe5ff,0x35
   3e8b2:	b8 88 01             	mov    ax,0x188
   3e8b5:	8e c0                	mov    es,ax
   3e8b7:	26 c7 06 01 e6 41 00 	mov    WORD PTR es:0xe601,0x41
   3e8be:	b8 88 01             	mov    ax,0x188
   3e8c1:	8e c0                	mov    es,ax
   3e8c3:	26 c7 06 03 e6 83 00 	mov    WORD PTR es:0xe603,0x83
   3e8ca:	b8 88 01             	mov    ax,0x188
   3e8cd:	8e c0                	mov    es,ax
   3e8cf:	26 c7 06 05 e6 44 00 	mov    WORD PTR es:0xe605,0x44
   3e8d6:	b8 88 01             	mov    ax,0x188
   3e8d9:	8e c0                	mov    es,ax
   3e8db:	26 c7 06 07 e6 35 00 	mov    WORD PTR es:0xe607,0x35
   3e8e2:	b8 88 01             	mov    ax,0x188
   3e8e5:	8e c0                	mov    es,ax
   3e8e7:	26 c7 06 09 e6 64 00 	mov    WORD PTR es:0xe609,0x64
   3e8ee:	b8 88 01             	mov    ax,0x188
   3e8f1:	8e c0                	mov    es,ax
   3e8f3:	26 c7 06 0b e6 55 00 	mov    WORD PTR es:0xe60b,0x55
   3e8fa:	b8 88 01             	mov    ax,0x188
   3e8fd:	8e c0                	mov    es,ax
   3e8ff:	26 c7 06 0d e6 5a 00 	mov    WORD PTR es:0xe60d,0x5a
   3e906:	b8 88 01             	mov    ax,0x188
   3e909:	8e c0                	mov    es,ax
   3e90b:	26 c7 06 0f e6 57 00 	mov    WORD PTR es:0xe60f,0x57
   3e912:	b8 88 01             	mov    ax,0x188
   3e915:	8e c0                	mov    es,ax
   3e917:	26 c7 06 11 e6 63 00 	mov    WORD PTR es:0xe611,0x63
   3e91e:	b8 88 01             	mov    ax,0x188
   3e921:	8e c0                	mov    es,ax
   3e923:	26 c7 06 13 e6 6a 00 	mov    WORD PTR es:0xe613,0x6a
   3e92a:	b8 88 01             	mov    ax,0x188
   3e92d:	8e c0                	mov    es,ax
   3e92f:	26 c7 06 15 e6 5a 00 	mov    WORD PTR es:0xe615,0x5a
   3e936:	b8 88 01             	mov    ax,0x188
   3e939:	8e c0                	mov    es,ax
   3e93b:	26 c7 06 17 e6 6e 00 	mov    WORD PTR es:0xe617,0x6e
   3e942:	b8 88 01             	mov    ax,0x188
   3e945:	8e c0                	mov    es,ax
   3e947:	26 c7 06 19 e6 63 00 	mov    WORD PTR es:0xe619,0x63
   3e94e:	b8 88 01             	mov    ax,0x188
   3e951:	8e c0                	mov    es,ax
   3e953:	26 c7 06 1b e6 81 00 	mov    WORD PTR es:0xe61b,0x81
   3e95a:	b8 88 01             	mov    ax,0x188
   3e95d:	8e c0                	mov    es,ax
   3e95f:	26 c7 06 1d e6 45 00 	mov    WORD PTR es:0xe61d,0x45
   3e966:	b8 88 01             	mov    ax,0x188
   3e969:	8e c0                	mov    es,ax
   3e96b:	26 c7 06 1f e6 88 00 	mov    WORD PTR es:0xe61f,0x88
   3e972:	b8 88 01             	mov    ax,0x188
   3e975:	8e c0                	mov    es,ax
   3e977:	26 c7 06 21 e6 6b 00 	mov    WORD PTR es:0xe621,0x6b
   3e97e:	b8 88 01             	mov    ax,0x188
   3e981:	8e c0                	mov    es,ax
   3e983:	26 c7 06 23 e6 9c 00 	mov    WORD PTR es:0xe623,0x9c
   3e98a:	b8 88 01             	mov    ax,0x188
   3e98d:	8e c0                	mov    es,ax
   3e98f:	26 c7 06 25 e6 0f 00 	mov    WORD PTR es:0xe625,0xf
   3e996:	b8 88 01             	mov    ax,0x188
   3e999:	8e c0                	mov    es,ax
   3e99b:	26 c7 06 27 e6 88 00 	mov    WORD PTR es:0xe627,0x88
   3e9a2:	b8 88 01             	mov    ax,0x188
   3e9a5:	8e c0                	mov    es,ax
   3e9a7:	26 c7 06 29 e6 35 00 	mov    WORD PTR es:0xe629,0x35
   3e9ae:	b8 88 01             	mov    ax,0x188
   3e9b1:	8e c0                	mov    es,ax
   3e9b3:	26 c7 06 2b e6 9c 00 	mov    WORD PTR es:0xe62b,0x9c
   3e9ba:	b8 88 01             	mov    ax,0x188
   3e9bd:	8e c0                	mov    es,ax
   3e9bf:	26 c7 06 2d e6 00 00 	mov    WORD PTR es:0xe62d,0x0
   3e9c6:	b8 88 01             	mov    ax,0x188
   3e9c9:	8e c0                	mov    es,ax
   3e9cb:	26 c7 06 2f e6 00 00 	mov    WORD PTR es:0xe62f,0x0
   3e9d2:	b8 88 01             	mov    ax,0x188
   3e9d5:	8e c0                	mov    es,ax
   3e9d7:	26 c7 06 31 e6 14 00 	mov    WORD PTR es:0xe631,0x14
   3e9de:	b8 88 01             	mov    ax,0x188
   3e9e1:	8e c0                	mov    es,ax
   3e9e3:	26 c7 06 33 e6 14 00 	mov    WORD PTR es:0xe633,0x14
   3e9ea:	b8 88 01             	mov    ax,0x188
   3e9ed:	8e c0                	mov    es,ax
   3e9ef:	26 c7 06 35 e6 9a 00 	mov    WORD PTR es:0xe635,0x9a
   3e9f6:	b8 88 01             	mov    ax,0x188
   3e9f9:	8e c0                	mov    es,ax
   3e9fb:	26 c7 06 37 e6 a5 00 	mov    WORD PTR es:0xe637,0xa5
   3ea02:	b8 88 01             	mov    ax,0x188
   3ea05:	8e c0                	mov    es,ax
   3ea07:	26 c7 06 39 e6 36 01 	mov    WORD PTR es:0xe639,0x136
   3ea0e:	b8 88 01             	mov    ax,0x188
   3ea11:	8e c0                	mov    es,ax
   3ea13:	26 c7 06 3b e6 bc 00 	mov    WORD PTR es:0xe63b,0xbc
   3ea1a:	6a 00                	push   0x0
   3ea1c:	b8 88 01             	mov    ax,0x188
   3ea1f:	8e c0                	mov    es,ax
   3ea21:	26 a1 1e 73          	mov    ax,es:0x731e
   3ea25:	ba 88 01             	mov    dx,0x188
   3ea28:	8e c2                	mov    es,dx
   3ea2a:	26 2b 06 18 73       	sub    ax,WORD PTR es:0x7318
   3ea2f:	50                   	push   ax
   3ea30:	68 20 03             	push   0x320
   3ea33:	9a 3f 07 30 00       	call   0x30:0x73f
   3ea38:	83 c4 06             	add    sp,0x6
   3ea3b:	b8 88 01             	mov    ax,0x188
   3ea3e:	8e c0                	mov    es,ax
   3ea40:	26 a0 e3 e5          	mov    al,es:0xe5e3
   3ea44:	50                   	push   ax
   3ea45:	9a 69 00 30 00       	call   0x30:0x69
   3ea4a:	59                   	pop    cx
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
