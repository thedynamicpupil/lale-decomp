
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
