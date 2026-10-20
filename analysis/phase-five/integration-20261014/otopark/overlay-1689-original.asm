
analysis/phase-five/integration-20261014/otopark/overlay-1689.bin:     file format binary


Disassembly of section .data:

00043670 <.data>:
   43670:	55                   	push   bp
   43671:	8b ec                	mov    bp,sp
   43673:	83 ec 4e             	sub    sp,0x4e
   43676:	c7 46 f6 01 00       	mov    WORD PTR [bp-0xa],0x1
   4367b:	c6 46 e7 00          	mov    BYTE PTR [bp-0x19],0x0
   4367f:	c7 06 98 bb 00 00    	mov    WORD PTR ds:0xbb98,0x0
   43685:	83 7e 06 00          	cmp    WORD PTR [bp+0x6],0x0
   43689:	7c 21                	jl     0x436ac
   4368b:	b8 88 01             	mov    ax,0x188
   4368e:	8e c0                	mov    es,ax
   43690:	26 a0 eb b9          	mov    al,es:0xb9eb
   43694:	b4 00                	mov    ah,0x0
   43696:	ba 88 01             	mov    dx,0x188
   43699:	8e c2                	mov    es,dx
   4369b:	26 8a 16 ea b9       	mov    dl,BYTE PTR es:0xb9ea
   436a0:	b6 00                	mov    dh,0x0
   436a2:	f7 ea                	imul   dx
   436a4:	6b c0 0f             	imul   ax,ax,0xf
   436a7:	3b 46 06             	cmp    ax,WORD PTR [bp+0x6]
   436aa:	7d 05                	jge    0x436b1
   436ac:	b0 00                	mov    al,0x0
   436ae:	e9 49 20             	jmp    0x456fa
   436b1:	c6 46 e8 00          	mov    BYTE PTR [bp-0x18],0x0
   436b5:	c7 46 f4 00 00       	mov    WORD PTR [bp-0xc],0x0
   436ba:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   436bf:	e9 c8 00             	jmp    0x4378a
   436c2:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   436c5:	03 46 fe             	add    ax,WORD PTR [bp-0x2]
   436c8:	05 0b 00             	add    ax,0xb
   436cb:	99                   	cwd
   436cc:	bb 88 01             	mov    bx,0x188
   436cf:	8e c3                	mov    es,bx
   436d1:	50                   	push   ax
   436d2:	52                   	push   dx
   436d3:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   436d8:	26 a1 ec b9          	mov    ax,es:0xb9ec
   436dc:	59                   	pop    cx
   436dd:	5b                   	pop    bx
   436de:	9a 77 14 00 00       	call   0x0:0x1477
   436e3:	8b d8                	mov    bx,ax
   436e5:	8e c2                	mov    es,dx
   436e7:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   436ea:	88 46 e9             	mov    BYTE PTR [bp-0x17],al
   436ed:	80 7e e9 20          	cmp    BYTE PTR [bp-0x17],0x20
   436f1:	76 4e                	jbe    0x43741
   436f3:	b8 88 01             	mov    ax,0x188
   436f6:	8e c0                	mov    es,ax
   436f8:	26 ff 36 fe 86       	push   WORD PTR es:0x86fe
   436fd:	b8 88 01             	mov    ax,0x188
   43700:	8e c0                	mov    es,ax
   43702:	26 ff 36 fc 86       	push   WORD PTR es:0x86fc
   43707:	b8 88 01             	mov    ax,0x188
   4370a:	8e c0                	mov    es,ax
   4370c:	26 ff 36 fa 86       	push   WORD PTR es:0x86fa
   43711:	b8 88 01             	mov    ax,0x188
   43714:	8e c0                	mov    es,ax
   43716:	26 ff 36 f8 86       	push   WORD PTR es:0x86f8
   4371b:	1e                   	push   ds
   4371c:	68 53 5c             	push   0x5c53
   4371f:	68 88 01             	push   0x188
   43722:	68 cc ba             	push   0xbacc
   43725:	9a b4 48 00 00       	call   0x0:0x48b4
   4372a:	83 c4 10             	add    sp,0x10
   4372d:	6a 51                	push   0x51
   4372f:	6a 00                	push   0x0
   43731:	6a 00                	push   0x0
   43733:	6a 6c                	push   0x6c
   43735:	1e                   	push   ds
   43736:	68 64 5c             	push   0x5c64
   43739:	9a 2a 00 58 01       	call   0x158:0x2a
   4373e:	83 c4 0c             	add    sp,0xc
   43741:	80 7e e9 0a          	cmp    BYTE PTR [bp-0x17],0xa
   43745:	73 11                	jae    0x43758
   43747:	8d 46 ea             	lea    ax,[bp-0x16]
   4374a:	8b 1e 98 bb          	mov    bx,WORD PTR ds:0xbb98
   4374e:	03 d8                	add    bx,ax
   43750:	36 c6 07 30          	mov    BYTE PTR ss:[bx],0x30
   43754:	ff 06 98 bb          	inc    WORD PTR ds:0xbb98
   43758:	6a 0a                	push   0xa
   4375a:	8d 46 ea             	lea    ax,[bp-0x16]
   4375d:	8b 16 98 bb          	mov    dx,WORD PTR ds:0xbb98
   43761:	03 d0                	add    dx,ax
   43763:	16                   	push   ss
   43764:	52                   	push   dx
   43765:	8a 46 e9             	mov    al,BYTE PTR [bp-0x17]
   43768:	b4 00                	mov    ah,0x0
   4376a:	50                   	push   ax
   4376b:	9a 58 3f 00 00       	call   0x0:0x3f58
   43770:	83 c4 08             	add    sp,0x8
   43773:	52                   	push   dx
   43774:	50                   	push   ax
   43775:	9a cc 49 00 00       	call   0x0:0x49cc
   4377a:	83 c4 04             	add    sp,0x4
   4377d:	8b 16 98 bb          	mov    dx,WORD PTR ds:0xbb98
   43781:	03 d0                	add    dx,ax
   43783:	89 16 98 bb          	mov    WORD PTR ds:0xbb98,dx
   43787:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   4378a:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   4378e:	7d 03                	jge    0x43793
   43790:	e9 2f ff             	jmp    0x436c2
   43793:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   43796:	05 0d 00             	add    ax,0xd
   43799:	99                   	cwd
   4379a:	bb 88 01             	mov    bx,0x188
   4379d:	8e c3                	mov    es,bx
   4379f:	50                   	push   ax
   437a0:	52                   	push   dx
   437a1:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   437a6:	26 a1 ec b9          	mov    ax,es:0xb9ec
   437aa:	59                   	pop    cx
   437ab:	5b                   	pop    bx
   437ac:	9a 77 14 00 00       	call   0x0:0x1477
   437b1:	8b d8                	mov    bx,ax
   437b3:	8e c2                	mov    es,dx
   437b5:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   437b8:	b4 00                	mov    ah,0x0
   437ba:	89 46 d0             	mov    WORD PTR [bp-0x30],ax
   437bd:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   437c0:	05 0e 00             	add    ax,0xe
   437c3:	99                   	cwd
   437c4:	bb 88 01             	mov    bx,0x188
   437c7:	8e c3                	mov    es,bx
   437c9:	50                   	push   ax
   437ca:	52                   	push   dx
   437cb:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   437d0:	26 a1 ec b9          	mov    ax,es:0xb9ec
   437d4:	59                   	pop    cx
   437d5:	5b                   	pop    bx
   437d6:	9a 77 14 00 00       	call   0x0:0x1477
   437db:	8b d8                	mov    bx,ax
   437dd:	8e c2                	mov    es,dx
   437df:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   437e2:	b4 00                	mov    ah,0x0
   437e4:	89 46 ce             	mov    WORD PTR [bp-0x32],ax
   437e7:	1e                   	push   ds
   437e8:	68 73 5c             	push   0x5c73
   437eb:	6a 74                	push   0x74
   437ed:	68 88 01             	push   0x188
   437f0:	68 26 de             	push   0xde26
   437f3:	9a 81 0a 20 00       	call   0x20:0xa81
   437f8:	83 c4 0a             	add    sp,0xa
   437fb:	b8 88 01             	mov    ax,0x188
   437fe:	8e c0                	mov    es,ax
   43800:	26 c4 1e 3f e3       	les    bx,DWORD PTR es:0xe33f
   43805:	26 ff 37             	push   WORD PTR es:[bx]
   43808:	6a 00                	push   0x0
   4380a:	6a 27                	push   0x27
   4380c:	6a 01                	push   0x1
   4380e:	9a 88 06 98 00       	call   0x98:0x688
   43813:	8b d8                	mov    bx,ax
   43815:	8e c2                	mov    es,dx
   43817:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   4381a:	b4 00                	mov    ah,0x0
   4381c:	89 46 cc             	mov    WORD PTR [bp-0x34],ax
   4381f:	b8 88 01             	mov    ax,0x188
   43822:	8e c0                	mov    es,ax
   43824:	26 c4 1e 3f e3       	les    bx,DWORD PTR es:0xe33f
   43829:	26 ff 37             	push   WORD PTR es:[bx]
   4382c:	6a 00                	push   0x0
   4382e:	6a 28                	push   0x28
   43830:	6a 01                	push   0x1
   43832:	9a 88 06 98 00       	call   0x98:0x688
   43837:	8b d8                	mov    bx,ax
   43839:	8e c2                	mov    es,dx
   4383b:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   4383e:	b4 00                	mov    ah,0x0
   43840:	89 46 ca             	mov    WORD PTR [bp-0x36],ax
   43843:	68 88 01             	push   0x188
   43846:	68 26 de             	push   0xde26
   43849:	9a 22 0b 20 00       	call   0x20:0xb22
   4384e:	83 c4 04             	add    sp,0x4
   43851:	8b 46 d0             	mov    ax,WORD PTR [bp-0x30]
   43854:	3b 46 cc             	cmp    ax,WORD PTR [bp-0x34]
   43857:	7d 07                	jge    0x43860
   43859:	c7 46 f4 ff ff       	mov    WORD PTR [bp-0xc],0xffff
   4385e:	eb 14                	jmp    0x43874
   43860:	8b 46 d0             	mov    ax,WORD PTR [bp-0x30]
   43863:	3b 46 cc             	cmp    ax,WORD PTR [bp-0x34]
   43866:	75 07                	jne    0x4386f
   43868:	c7 46 f4 00 00       	mov    WORD PTR [bp-0xc],0x0
   4386d:	eb 05                	jmp    0x43874
   4386f:	c7 46 f4 01 00       	mov    WORD PTR [bp-0xc],0x1
   43874:	8a 46 d0             	mov    al,BYTE PTR [bp-0x30]
   43877:	2a 46 cc             	sub    al,BYTE PTR [bp-0x34]
   4387a:	c0 e0 05             	shl    al,0x5
   4387d:	2a 46 f4             	sub    al,BYTE PTR [bp-0xc]
   43880:	02 46 ce             	add    al,BYTE PTR [bp-0x32]
   43883:	2a 46 ca             	sub    al,BYTE PTR [bp-0x36]
   43886:	88 46 e8             	mov    BYTE PTR [bp-0x18],al
   43889:	1e                   	push   ds
   4388a:	68 82 5c             	push   0x5c82
   4388d:	16                   	push   ss
   4388e:	8d 46 ea             	lea    ax,[bp-0x16]
   43891:	50                   	push   ax
   43892:	9a 73 49 00 00       	call   0x0:0x4973
   43897:	83 c4 08             	add    sp,0x8
   4389a:	0b c0                	or     ax,ax
   4389c:	75 03                	jne    0x438a1
   4389e:	e9 0b fe             	jmp    0x436ac
   438a1:	1e                   	push   ds
   438a2:	68 8b 5c             	push   0x5c8b
   438a5:	16                   	push   ss
   438a6:	8d 46 ea             	lea    ax,[bp-0x16]
   438a9:	50                   	push   ax
   438aa:	9a 73 49 00 00       	call   0x0:0x4973
   438af:	83 c4 08             	add    sp,0x8
   438b2:	0b c0                	or     ax,ax
   438b4:	75 3d                	jne    0x438f3
   438b6:	80 7e 08 02          	cmp    BYTE PTR [bp+0x8],0x2
   438ba:	74 03                	je     0x438bf
   438bc:	e9 ed fd             	jmp    0x436ac
   438bf:	6a 01                	push   0x1
   438c1:	6a 2b                	push   0x2b
   438c3:	90                   	nop
   438c4:	0e                   	push   cs
   438c5:	e8 ff 48             	call   0x481c7
   438c8:	83 c4 04             	add    sp,0x4
   438cb:	6a 00                	push   0x0
   438cd:	6a 01                	push   0x1
   438cf:	1e                   	push   ds
   438d0:	68 94 5c             	push   0x5c94
   438d3:	9a 48 29 10 00       	call   0x10:0x2948
   438d8:	83 c4 08             	add    sp,0x8
   438db:	6a 28                	push   0x28
   438dd:	9a ca 2d 10 00       	call   0x10:0x2dca
   438e2:	59                   	pop    cx
   438e3:	9a b9 1e 10 00       	call   0x10:0x1eb9
   438e8:	6a 01                	push   0x1
   438ea:	90                   	nop
   438eb:	0e                   	push   cs
   438ec:	e8 a2 2c             	call   0x46591
   438ef:	59                   	pop    cx
   438f0:	e9 1b 02             	jmp    0x43b0e
   438f3:	1e                   	push   ds
   438f4:	68 9c 5c             	push   0x5c9c
   438f7:	16                   	push   ss
   438f8:	8d 46 ea             	lea    ax,[bp-0x16]
   438fb:	50                   	push   ax
   438fc:	9a 73 49 00 00       	call   0x0:0x4973
   43901:	83 c4 08             	add    sp,0x8
   43904:	0b c0                	or     ax,ax
   43906:	75 36                	jne    0x4393e
   43908:	80 7e 08 02          	cmp    BYTE PTR [bp+0x8],0x2
   4390c:	74 03                	je     0x43911
   4390e:	e9 9b fd             	jmp    0x436ac
   43911:	6a 01                	push   0x1
   43913:	6a 2c                	push   0x2c
   43915:	90                   	nop
   43916:	0e                   	push   cs
   43917:	e8 ad 48             	call   0x481c7
   4391a:	83 c4 04             	add    sp,0x4
   4391d:	6a 00                	push   0x0
   4391f:	6a 01                	push   0x1
   43921:	1e                   	push   ds
   43922:	68 a5 5c             	push   0x5ca5
   43925:	9a 48 29 10 00       	call   0x10:0x2948
   4392a:	83 c4 08             	add    sp,0x8
   4392d:	6a 28                	push   0x28
   4392f:	9a ca 2d 10 00       	call   0x10:0x2dca
   43934:	59                   	pop    cx
   43935:	9a b9 1e 10 00       	call   0x10:0x1eb9
   4393a:	6a 02                	push   0x2
   4393c:	eb ac                	jmp    0x438ea
   4393e:	1e                   	push   ds
   4393f:	68 b4 5c             	push   0x5cb4
   43942:	16                   	push   ss
   43943:	8d 46 ea             	lea    ax,[bp-0x16]
   43946:	50                   	push   ax
   43947:	9a 73 49 00 00       	call   0x0:0x4973
   4394c:	83 c4 08             	add    sp,0x8
   4394f:	0b c0                	or     ax,ax
   43951:	74 03                	je     0x43956
   43953:	e9 c0 01             	jmp    0x43b16
   43956:	80 7e 08 02          	cmp    BYTE PTR [bp+0x8],0x2
   4395a:	74 03                	je     0x4395f
   4395c:	e9 4d fd             	jmp    0x436ac
   4395f:	9a b9 1e 10 00       	call   0x10:0x1eb9
   43964:	6a 00                	push   0x0
   43966:	6a 01                	push   0x1
   43968:	1e                   	push   ds
   43969:	68 bd 5c             	push   0x5cbd
   4396c:	9a 48 29 10 00       	call   0x10:0x2948
   43971:	83 c4 08             	add    sp,0x8
   43974:	6a 28                	push   0x28
   43976:	9a ca 2d 10 00       	call   0x10:0x2dca
   4397b:	59                   	pop    cx
   4397c:	9a b9 1e 10 00       	call   0x10:0x1eb9
   43981:	6a 01                	push   0x1
   43983:	6a 2a                	push   0x2a
   43985:	90                   	nop
   43986:	0e                   	push   cs
   43987:	e8 3d 48             	call   0x481c7
   4398a:	83 c4 04             	add    sp,0x4
   4398d:	6a 00                	push   0x0
   4398f:	68 00 80             	push   0x8000
   43992:	9a 79 17 00 00       	call   0x0:0x1779
   43997:	99                   	cwd
   43998:	50                   	push   ax
   43999:	52                   	push   dx
   4399a:	33 d2                	xor    dx,dx
   4399c:	b8 05 00             	mov    ax,0x5
   4399f:	59                   	pop    cx
   439a0:	5b                   	pop    bx
   439a1:	9a 42 12 00 00       	call   0x0:0x1242
   439a6:	52                   	push   dx
   439a7:	50                   	push   ax
   439a8:	9a df 12 00 00       	call   0x0:0x12df
   439ad:	04 02                	add    al,0x2
   439af:	88 46 e4             	mov    BYTE PTR [bp-0x1c],al
   439b2:	8a 46 e4             	mov    al,BYTE PTR [bp-0x1c]
   439b5:	b4 00                	mov    ah,0x0
   439b7:	50                   	push   ax
   439b8:	1e                   	push   ds
   439b9:	68 c6 5c             	push   0x5cc6
   439bc:	68 88 01             	push   0x188
   439bf:	68 cc ba             	push   0xbacc
   439c2:	9a b4 48 00 00       	call   0x0:0x48b4
   439c7:	83 c4 0a             	add    sp,0xa
   439ca:	3d 68 00             	cmp    ax,0x68
   439cd:	7c 15                	jl     0x439e4
   439cf:	6a 52                	push   0x52
   439d1:	6a 00                	push   0x0
   439d3:	6a 00                	push   0x0
   439d5:	68 a4 00             	push   0xa4
   439d8:	1e                   	push   ds
   439d9:	68 f1 5c             	push   0x5cf1
   439dc:	9a 2a 00 58 01       	call   0x158:0x2a
   439e1:	83 c4 0c             	add    sp,0xc
   439e4:	6a 00                	push   0x0
   439e6:	6a 01                	push   0x1
   439e8:	68 88 01             	push   0x188
   439eb:	68 cc ba             	push   0xbacc
   439ee:	9a 48 29 10 00       	call   0x10:0x2948
   439f3:	83 c4 08             	add    sp,0x8
   439f6:	1e                   	push   ds
   439f7:	68 05 5d             	push   0x5d05
   439fa:	1e                   	push   ds
   439fb:	68 00 5d             	push   0x5d00
   439fe:	9a 98 21 10 00       	call   0x10:0x2198
   43a03:	83 c4 08             	add    sp,0x8
   43a06:	83 3e 9e bb 00       	cmp    WORD PTR ds:0xbb9e,0x0
   43a0b:	74 03                	je     0x43a10
   43a0d:	e9 fe 00             	jmp    0x43b0e
   43a10:	c6 46 e3 01          	mov    BYTE PTR [bp-0x1d],0x1
   43a14:	c6 46 e2 00          	mov    BYTE PTR [bp-0x1e],0x0
   43a18:	eb 1d                	jmp    0x43a37
   43a1a:	8a 46 e3             	mov    al,BYTE PTR [bp-0x1d]
   43a1d:	b4 00                	mov    ah,0x0
   43a1f:	6b c0 5c             	imul   ax,ax,0x5c
   43a22:	ba 88 01             	mov    dx,0x188
   43a25:	8b d8                	mov    bx,ax
   43a27:	8e c2                	mov    es,dx
   43a29:	26 83 bf e0 99 00    	cmp    WORD PTR es:[bx-0x6620],0x0
   43a2f:	7e 03                	jle    0x43a34
   43a31:	fe 46 e2             	inc    BYTE PTR [bp-0x1e]
   43a34:	fe 46 e3             	inc    BYTE PTR [bp-0x1d]
   43a37:	80 7e e3 05          	cmp    BYTE PTR [bp-0x1d],0x5
   43a3b:	72 dd                	jb     0x43a1a
   43a3d:	8a 46 e2             	mov    al,BYTE PTR [bp-0x1e]
   43a40:	b4 00                	mov    ah,0x0
   43a42:	8a 56 e4             	mov    dl,BYTE PTR [bp-0x1c]
   43a45:	b6 00                	mov    dh,0x0
   43a47:	f7 ea                	imul   dx
   43a49:	88 46 e4             	mov    BYTE PTR [bp-0x1c],al
   43a4c:	8a 46 e4             	mov    al,BYTE PTR [bp-0x1c]
   43a4f:	b4 00                	mov    ah,0x0
   43a51:	ba 88 01             	mov    dx,0x188
   43a54:	8e c2                	mov    es,dx
   43a56:	26 3b 06 73 bb       	cmp    ax,WORD PTR es:0xbb73
   43a5b:	7e 1b                	jle    0x43a78
   43a5d:	6a 00                	push   0x0
   43a5f:	6a 01                	push   0x1
   43a61:	1e                   	push   ds
   43a62:	68 0b 5d             	push   0x5d0b
   43a65:	9a 48 29 10 00       	call   0x10:0x2948
   43a6a:	83 c4 08             	add    sp,0x8
   43a6d:	6a 3c                	push   0x3c
   43a6f:	9a ca 2d 10 00       	call   0x10:0x2dca
   43a74:	59                   	pop    cx
   43a75:	e9 84 00             	jmp    0x43afc
   43a78:	6a 01                	push   0x1
   43a7a:	6a 66                	push   0x66
   43a7c:	90                   	nop
   43a7d:	0e                   	push   cs
   43a7e:	e8 46 47             	call   0x481c7
   43a81:	83 c4 04             	add    sp,0x4
   43a84:	6a 78                	push   0x78
   43a86:	9a ca 2d 10 00       	call   0x10:0x2dca
   43a8b:	59                   	pop    cx
   43a8c:	6a 00                	push   0x0
   43a8e:	6a 2a                	push   0x2a
   43a90:	90                   	nop
   43a91:	0e                   	push   cs
   43a92:	e8 32 47             	call   0x481c7
   43a95:	83 c4 04             	add    sp,0x4
   43a98:	6a 00                	push   0x0
   43a9a:	6a 01                	push   0x1
   43a9c:	1e                   	push   ds
   43a9d:	68 25 5d             	push   0x5d25
   43aa0:	9a 48 29 10 00       	call   0x10:0x2948
   43aa5:	83 c4 08             	add    sp,0x8
   43aa8:	6a 28                	push   0x28
   43aaa:	9a ca 2d 10 00       	call   0x10:0x2dca
   43aaf:	59                   	pop    cx
   43ab0:	8a 46 e4             	mov    al,BYTE PTR [bp-0x1c]
   43ab3:	b4 00                	mov    ah,0x0
   43ab5:	ba 88 01             	mov    dx,0x188
   43ab8:	8e c2                	mov    es,dx
   43aba:	26 29 06 73 bb       	sub    WORD PTR es:0xbb73,ax
   43abf:	90                   	nop
   43ac0:	0e                   	push   cs
   43ac1:	e8 fc 50             	call   0x48bc0
   43ac4:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   43ac9:	eb 2b                	jmp    0x43af6
   43acb:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   43ace:	6b db 5c             	imul   bx,bx,0x5c
   43ad1:	b8 88 01             	mov    ax,0x188
   43ad4:	8e c0                	mov    es,ax
   43ad6:	26 c7 87 c8 99 00 00 	mov    WORD PTR es:[bx-0x6638],0x0
   43add:	8a 4e fe             	mov    cl,BYTE PTR [bp-0x2]
   43ae0:	80 c1 ff             	add    cl,0xff
   43ae3:	b0 01                	mov    al,0x1
   43ae5:	d2 e0                	shl    al,cl
   43ae7:	f6 d0                	not    al
   43ae9:	ba 88 01             	mov    dx,0x188
   43aec:	8e c2                	mov    es,dx
   43aee:	26 20 06 6c 3d       	and    BYTE PTR es:0x3d6c,al
   43af3:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   43af6:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   43afa:	7e cf                	jle    0x43acb
   43afc:	9a b9 1e 10 00       	call   0x10:0x1eb9
   43b01:	6a 01                	push   0x1
   43b03:	9a 2f 00 18 01       	call   0x118:0x2f
   43b08:	59                   	pop    cx
   43b09:	9a 3e 00 18 01       	call   0x118:0x3e
   43b0e:	90                   	nop
   43b0f:	0e                   	push   cs
   43b10:	e8 2b 1c             	call   0x4573e
   43b13:	e9 96 fb             	jmp    0x436ac
   43b16:	1e                   	push   ds
   43b17:	68 32 5d             	push   0x5d32
   43b1a:	16                   	push   ss
   43b1b:	8d 46 ea             	lea    ax,[bp-0x16]
   43b1e:	50                   	push   ax
   43b1f:	9a 73 49 00 00       	call   0x0:0x4973
   43b24:	83 c4 08             	add    sp,0x8
   43b27:	0b c0                	or     ax,ax
   43b29:	74 03                	je     0x43b2e
   43b2b:	e9 07 02             	jmp    0x43d35
   43b2e:	80 7e 08 02          	cmp    BYTE PTR [bp+0x8],0x2
   43b32:	74 03                	je     0x43b37
   43b34:	e9 75 fb             	jmp    0x436ac
   43b37:	6a 01                	push   0x1
   43b39:	6a 60                	push   0x60
   43b3b:	90                   	nop
   43b3c:	0e                   	push   cs
   43b3d:	e8 87 46             	call   0x481c7
   43b40:	83 c4 04             	add    sp,0x4
   43b43:	6a 00                	push   0x0
   43b45:	6a 01                	push   0x1
   43b47:	1e                   	push   ds
   43b48:	68 3b 5d             	push   0x5d3b
   43b4b:	9a 48 29 10 00       	call   0x10:0x2948
   43b50:	83 c4 08             	add    sp,0x8
   43b53:	6a 28                	push   0x28
   43b55:	9a ca 2d 10 00       	call   0x10:0x2dca
   43b5a:	59                   	pop    cx
   43b5b:	9a b9 1e 10 00       	call   0x10:0x1eb9
   43b60:	6a 00                	push   0x0
   43b62:	6a 28                	push   0x28
   43b64:	9a d6 25 00 00       	call   0x0:0x25d6
   43b69:	83 c4 04             	add    sp,0x4
   43b6c:	89 56 da             	mov    WORD PTR [bp-0x26],dx
   43b6f:	89 46 d8             	mov    WORD PTR [bp-0x28],ax
   43b72:	a0 ab bb             	mov    al,ds:0xbbab
   43b75:	88 46 e4             	mov    BYTE PTR [bp-0x1c],al
   43b78:	b4 00                	mov    ah,0x0
   43b7a:	50                   	push   ax
   43b7b:	1e                   	push   ds
   43b7c:	68 49 5d             	push   0x5d49
   43b7f:	ff 76 da             	push   WORD PTR [bp-0x26]
   43b82:	ff 76 d8             	push   WORD PTR [bp-0x28]
   43b85:	9a b4 48 00 00       	call   0x0:0x48b4
   43b8a:	83 c4 0a             	add    sp,0xa
   43b8d:	6a 00                	push   0x0
   43b8f:	6a 01                	push   0x1
   43b91:	ff 76 da             	push   WORD PTR [bp-0x26]
   43b94:	ff 76 d8             	push   WORD PTR [bp-0x28]
   43b97:	9a 48 29 10 00       	call   0x10:0x2948
   43b9c:	83 c4 08             	add    sp,0x8
   43b9f:	1e                   	push   ds
   43ba0:	68 5b 5d             	push   0x5d5b
   43ba3:	1e                   	push   ds
   43ba4:	68 56 5d             	push   0x5d56
   43ba7:	9a 98 21 10 00       	call   0x10:0x2198
   43bac:	83 c4 08             	add    sp,0x8
   43baf:	83 3e 9e bb 00       	cmp    WORD PTR ds:0xbb9e,0x0
   43bb4:	74 03                	je     0x43bb9
   43bb6:	e9 5e 01             	jmp    0x43d17
   43bb9:	8a 46 e4             	mov    al,BYTE PTR [bp-0x1c]
   43bbc:	b4 00                	mov    ah,0x0
   43bbe:	ba 88 01             	mov    dx,0x188
   43bc1:	8e c2                	mov    es,dx
   43bc3:	26 3b 06 73 bb       	cmp    ax,WORD PTR es:0xbb73
   43bc8:	7e 25                	jle    0x43bef
   43bca:	9a b9 1e 10 00       	call   0x10:0x1eb9
   43bcf:	6a 00                	push   0x0
   43bd1:	6a 01                	push   0x1
   43bd3:	1e                   	push   ds
   43bd4:	68 61 5d             	push   0x5d61
   43bd7:	9a 48 29 10 00       	call   0x10:0x2948
   43bdc:	83 c4 08             	add    sp,0x8
   43bdf:	6a 28                	push   0x28
   43be1:	9a ca 2d 10 00       	call   0x10:0x2dca
   43be6:	59                   	pop    cx
   43be7:	9a b9 1e 10 00       	call   0x10:0x1eb9
   43bec:	e9 3b 01             	jmp    0x43d2a
   43bef:	6a 00                	push   0x0
   43bf1:	6a 01                	push   0x1
   43bf3:	1e                   	push   ds
   43bf4:	68 71 5d             	push   0x5d71
   43bf7:	9a 48 29 10 00       	call   0x10:0x2948
   43bfc:	83 c4 08             	add    sp,0x8
   43bff:	6a 01                	push   0x1
   43c01:	9a 83 20 10 00       	call   0x10:0x2083
   43c06:	59                   	pop    cx
   43c07:	88 46 e3             	mov    BYTE PTR [bp-0x1d],al
   43c0a:	80 7e e3 00          	cmp    BYTE PTR [bp-0x1d],0x0
   43c0e:	74 2a                	je     0x43c3a
   43c10:	8a 46 e3             	mov    al,BYTE PTR [bp-0x1d]
   43c13:	b4 00                	mov    ah,0x0
   43c15:	6b c0 5c             	imul   ax,ax,0x5c
   43c18:	ba 88 01             	mov    dx,0x188
   43c1b:	8b d8                	mov    bx,ax
   43c1d:	8e c2                	mov    es,dx
   43c1f:	26 83 bf e0 99 fb    	cmp    WORD PTR es:[bx-0x6620],0xfffb
   43c25:	7e 13                	jle    0x43c3a
   43c27:	9a b9 1e 10 00       	call   0x10:0x1eb9
   43c2c:	6a 00                	push   0x0
   43c2e:	6a 01                	push   0x1
   43c30:	1e                   	push   ds
   43c31:	68 86 5d             	push   0x5d86
   43c34:	eb c1                	jmp    0x43bf7
   43c36:	eb 02                	jmp    0x43c3a
   43c38:	eb c5                	jmp    0x43bff
   43c3a:	80 7e e3 00          	cmp    BYTE PTR [bp-0x1d],0x0
   43c3e:	75 03                	jne    0x43c43
   43c40:	e9 bb 00             	jmp    0x43cfe
   43c43:	6a 01                	push   0x1
   43c45:	9a 2f 00 18 01       	call   0x118:0x2f
   43c4a:	59                   	pop    cx
   43c4b:	8a 46 e4             	mov    al,BYTE PTR [bp-0x1c]
   43c4e:	b4 00                	mov    ah,0x0
   43c50:	ba 88 01             	mov    dx,0x188
   43c53:	8e c2                	mov    es,dx
   43c55:	26 29 06 73 bb       	sub    WORD PTR es:0xbb73,ax
   43c5a:	9a b9 1e 10 00       	call   0x10:0x1eb9
   43c5f:	6a 00                	push   0x0
   43c61:	6a 01                	push   0x1
   43c63:	1e                   	push   ds
   43c64:	68 a9 5d             	push   0x5da9
   43c67:	9a 48 29 10 00       	call   0x10:0x2948
   43c6c:	83 c4 08             	add    sp,0x8
   43c6f:	6a 28                	push   0x28
   43c71:	9a ca 2d 10 00       	call   0x10:0x2dca
   43c76:	59                   	pop    cx
   43c77:	9a b9 1e 10 00       	call   0x10:0x1eb9
   43c7c:	6a 00                	push   0x0
   43c7e:	6a 01                	push   0x1
   43c80:	1e                   	push   ds
   43c81:	68 e2 5d             	push   0x5de2
   43c84:	9a 48 29 10 00       	call   0x10:0x2948
   43c89:	83 c4 08             	add    sp,0x8
   43c8c:	6a 28                	push   0x28
   43c8e:	9a ca 2d 10 00       	call   0x10:0x2dca
   43c93:	59                   	pop    cx
   43c94:	8a 46 e3             	mov    al,BYTE PTR [bp-0x1d]
   43c97:	b4 00                	mov    ah,0x0
   43c99:	6b c0 5c             	imul   ax,ax,0x5c
   43c9c:	ba 88 01             	mov    dx,0x188
   43c9f:	8b d8                	mov    bx,ax
   43ca1:	8e c2                	mov    es,dx
   43ca3:	26 c7 87 e0 99 01 00 	mov    WORD PTR es:[bx-0x6620],0x1
   43caa:	90                   	nop
   43cab:	0e                   	push   cs
   43cac:	e8 11 4f             	call   0x48bc0
   43caf:	9a 3e 00 18 01       	call   0x118:0x3e
   43cb4:	9a b9 1e 10 00       	call   0x10:0x1eb9
   43cb9:	8a 46 e3             	mov    al,BYTE PTR [bp-0x1d]
   43cbc:	b4 00                	mov    ah,0x0
   43cbe:	50                   	push   ax
   43cbf:	6a 00                	push   0x0
   43cc1:	1e                   	push   ds
   43cc2:	68 f5 5d             	push   0x5df5
   43cc5:	9a 48 29 10 00       	call   0x10:0x2948
   43cca:	83 c4 08             	add    sp,0x8
   43ccd:	6a 28                	push   0x28
   43ccf:	9a ca 2d 10 00       	call   0x10:0x2dca
   43cd4:	59                   	pop    cx
   43cd5:	6a 01                	push   0x1
   43cd7:	6a 60                	push   0x60
   43cd9:	90                   	nop
   43cda:	0e                   	push   cs
   43cdb:	e8 e9 44             	call   0x481c7
   43cde:	83 c4 04             	add    sp,0x4
   43ce1:	9a b9 1e 10 00       	call   0x10:0x1eb9
   43ce6:	6a 00                	push   0x0
   43ce8:	6a 01                	push   0x1
   43cea:	1e                   	push   ds
   43ceb:	68 08 5e             	push   0x5e08
   43cee:	9a 48 29 10 00       	call   0x10:0x2948
   43cf3:	83 c4 08             	add    sp,0x8
   43cf6:	6a 28                	push   0x28
   43cf8:	9a ca 2d 10 00       	call   0x10:0x2dca
   43cfd:	59                   	pop    cx
   43cfe:	68 b2 00             	push   0xb2
   43d01:	68 c6 00             	push   0xc6
   43d04:	9a 66 00 18 01       	call   0x118:0x66
   43d09:	83 c4 04             	add    sp,0x4
   43d0c:	9a b9 1e 10 00       	call   0x10:0x1eb9
   43d11:	c7 06 a8 bb 01 00    	mov    WORD PTR ds:0xbba8,0x1
   43d17:	90                   	nop
   43d18:	0e                   	push   cs
   43d19:	e8 22 1a             	call   0x4573e
   43d1c:	ff 76 da             	push   WORD PTR [bp-0x26]
   43d1f:	ff 76 d8             	push   WORD PTR [bp-0x28]
   43d22:	9a c2 24 00 00       	call   0x0:0x24c2
   43d27:	83 c4 04             	add    sp,0x4
   43d2a:	6a 01                	push   0x1
   43d2c:	9a 2f 00 18 01       	call   0x118:0x2f
   43d31:	59                   	pop    cx
   43d32:	e9 77 f9             	jmp    0x436ac
   43d35:	1e                   	push   ds
   43d36:	68 37 5e             	push   0x5e37
   43d39:	16                   	push   ss
   43d3a:	8d 46 ea             	lea    ax,[bp-0x16]
   43d3d:	50                   	push   ax
   43d3e:	9a 73 49 00 00       	call   0x0:0x4973
   43d43:	83 c4 08             	add    sp,0x8
   43d46:	0b c0                	or     ax,ax
   43d48:	75 17                	jne    0x43d61
   43d4a:	80 7e 08 02          	cmp    BYTE PTR [bp+0x8],0x2
   43d4e:	75 0e                	jne    0x43d5e
   43d50:	b8 88 01             	mov    ax,0x188
   43d53:	8e c0                	mov    es,ax
   43d55:	26 83 0e 5e 3d 04    	or     WORD PTR es:0x3d5e,0x4
   43d5b:	e9 4e f9             	jmp    0x436ac
   43d5e:	e9 4b f9             	jmp    0x436ac
   43d61:	b8 88 01             	mov    ax,0x188
   43d64:	8e c0                	mov    es,ax
   43d66:	26 83 26 5e 3d fb    	and    WORD PTR es:0x3d5e,0xfffb
   43d6c:	c7 06 98 bb 14 00    	mov    WORD PTR ds:0xbb98,0x14
   43d72:	90                   	nop
   43d73:	0e                   	push   cs
   43d74:	e8 5c 47             	call   0x484d3
   43d77:	b4 00                	mov    ah,0x0
   43d79:	c1 e0 08             	shl    ax,0x8
   43d7c:	50                   	push   ax
   43d7d:	90                   	nop
   43d7e:	0e                   	push   cs
   43d7f:	e8 51 47             	call   0x484d3
   43d82:	b4 00                	mov    ah,0x0
   43d84:	5a                   	pop    dx
   43d85:	03 d0                	add    dx,ax
   43d87:	8a 46 e8             	mov    al,BYTE PTR [bp-0x18]
   43d8a:	b4 00                	mov    ah,0x0
   43d8c:	3b d0                	cmp    dx,ax
   43d8e:	73 4c                	jae    0x43ddc
   43d90:	8a 46 e8             	mov    al,BYTE PTR [bp-0x18]
   43d93:	b4 00                	mov    ah,0x0
   43d95:	50                   	push   ax
   43d96:	16                   	push   ss
   43d97:	8d 46 ea             	lea    ax,[bp-0x16]
   43d9a:	50                   	push   ax
   43d9b:	1e                   	push   ds
   43d9c:	68 40 5e             	push   0x5e40
   43d9f:	68 88 01             	push   0x188
   43da2:	68 cc ba             	push   0xbacc
   43da5:	9a b4 48 00 00       	call   0x0:0x48b4
   43daa:	83 c4 0e             	add    sp,0xe
   43dad:	3d 68 00             	cmp    ax,0x68
   43db0:	7c 15                	jl     0x43dc7
   43db2:	6a 53                	push   0x53
   43db4:	6a 00                	push   0x0
   43db6:	6a 00                	push   0x0
   43db8:	68 1c 01             	push   0x11c
   43dbb:	1e                   	push   ds
   43dbc:	68 56 5e             	push   0x5e56
   43dbf:	9a 2a 00 58 01       	call   0x158:0x2a
   43dc4:	83 c4 0c             	add    sp,0xc
   43dc7:	6a 54                	push   0x54
   43dc9:	6a 00                	push   0x0
   43dcb:	6a 00                	push   0x0
   43dcd:	68 1e 01             	push   0x11e
   43dd0:	1e                   	push   ds
   43dd1:	68 65 5e             	push   0x5e65
   43dd4:	9a 2a 00 58 01       	call   0x158:0x2a
   43dd9:	83 c4 0c             	add    sp,0xc
   43ddc:	90                   	nop
   43ddd:	0e                   	push   cs
   43dde:	e8 f2 46             	call   0x484d3
   43de1:	b4 00                	mov    ah,0x0
   43de3:	c1 e0 08             	shl    ax,0x8
   43de6:	50                   	push   ax
   43de7:	90                   	nop
   43de8:	0e                   	push   cs
   43de9:	e8 e7 46             	call   0x484d3
   43dec:	b4 00                	mov    ah,0x0
   43dee:	5a                   	pop    dx
   43def:	03 d0                	add    dx,ax
   43df1:	89 56 f4             	mov    WORD PTR [bp-0xc],dx
   43df4:	eb 22                	jmp    0x43e18
   43df6:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   43df9:	01 06 98 bb          	add    WORD PTR ds:0xbb98,ax
   43dfd:	90                   	nop
   43dfe:	0e                   	push   cs
   43dff:	e8 d1 46             	call   0x484d3
   43e02:	b4 00                	mov    ah,0x0
   43e04:	c1 e0 08             	shl    ax,0x8
   43e07:	50                   	push   ax
   43e08:	90                   	nop
   43e09:	0e                   	push   cs
   43e0a:	e8 c6 46             	call   0x484d3
   43e0d:	b4 00                	mov    ah,0x0
   43e0f:	5a                   	pop    dx
   43e10:	03 d0                	add    dx,ax
   43e12:	89 56 f4             	mov    WORD PTR [bp-0xc],dx
   43e15:	fe 4e e8             	dec    BYTE PTR [bp-0x18]
   43e18:	80 7e e8 00          	cmp    BYTE PTR [bp-0x18],0x0
   43e1c:	77 d8                	ja     0x43df6
   43e1e:	90                   	nop
   43e1f:	0e                   	push   cs
   43e20:	e8 b0 46             	call   0x484d3
   43e23:	c0 e0 08             	shl    al,0x8
   43e26:	50                   	push   ax
   43e27:	90                   	nop
   43e28:	0e                   	push   cs
   43e29:	e8 a7 46             	call   0x484d3
   43e2c:	5a                   	pop    dx
   43e2d:	02 d0                	add    dl,al
   43e2f:	88 16 93 bb          	mov    BYTE PTR ds:0xbb93,dl
   43e33:	80 7e 08 01          	cmp    BYTE PTR [bp+0x8],0x1
   43e37:	76 36                	jbe    0x43e6f
   43e39:	8a 46 08             	mov    al,BYTE PTR [bp+0x8]
   43e3c:	b4 00                	mov    ah,0x0
   43e3e:	05 fe ff             	add    ax,0xfffe
   43e41:	d1 e0                	shl    ax,1
   43e43:	01 06 98 bb          	add    WORD PTR ds:0xbb98,ax
   43e47:	90                   	nop
   43e48:	0e                   	push   cs
   43e49:	e8 87 46             	call   0x484d3
   43e4c:	b4 00                	mov    ah,0x0
   43e4e:	c1 e0 08             	shl    ax,0x8
   43e51:	50                   	push   ax
   43e52:	90                   	nop
   43e53:	0e                   	push   cs
   43e54:	e8 7c 46             	call   0x484d3
   43e57:	b4 00                	mov    ah,0x0
   43e59:	5a                   	pop    dx
   43e5a:	03 d0                	add    dx,ax
   43e5c:	8a 46 08             	mov    al,BYTE PTR [bp+0x8]
   43e5f:	b4 00                	mov    ah,0x0
   43e61:	d1 e0                	shl    ax,1
   43e63:	2b d0                	sub    dx,ax
   43e65:	a1 98 bb             	mov    ax,ds:0xbb98
   43e68:	03 c2                	add    ax,dx
   43e6a:	a3 98 bb             	mov    ds:0xbb98,ax
   43e6d:	eb 05                	jmp    0x43e74
   43e6f:	83 06 98 bb 06       	add    WORD PTR ds:0xbb98,0x6
   43e74:	90                   	nop
   43e75:	0e                   	push   cs
   43e76:	e8 5a 46             	call   0x484d3
   43e79:	88 46 e6             	mov    BYTE PTR [bp-0x1a],al
   43e7c:	90                   	nop
   43e7d:	0e                   	push   cs
   43e7e:	e8 52 46             	call   0x484d3
   43e81:	a2 92 bb             	mov    ds:0xbb92,al
   43e84:	8a 46 e6             	mov    al,BYTE PTR [bp-0x1a]
   43e87:	b4 00                	mov    ah,0x0
   43e89:	05 f3 ff             	add    ax,0xfff3
   43e8c:	8a 56 08             	mov    dl,BYTE PTR [bp+0x8]
   43e8f:	b6 00                	mov    dh,0x0
   43e91:	4a                   	dec    dx
   43e92:	3b c2                	cmp    ax,dx
   43e94:	75 03                	jne    0x43e99
   43e96:	e9 35 18             	jmp    0x456ce
   43e99:	8a 46 08             	mov    al,BYTE PTR [bp+0x8]
   43e9c:	b4 00                	mov    ah,0x0
   43e9e:	50                   	push   ax
   43e9f:	8a 46 e6             	mov    al,BYTE PTR [bp-0x1a]
   43ea2:	b4 00                	mov    ah,0x0
   43ea4:	50                   	push   ax
   43ea5:	1e                   	push   ds
   43ea6:	68 74 5e             	push   0x5e74
   43ea9:	9a 53 42 00 00       	call   0x0:0x4253
   43eae:	83 c4 08             	add    sp,0x8
   43eb1:	9a d7 29 00 00       	call   0x0:0x29d7
   43eb6:	6a 0a                	push   0xa
   43eb8:	68 88 01             	push   0x188
   43ebb:	68 cc ba             	push   0xbacc
   43ebe:	9a cc 49 00 00       	call   0x0:0x49cc
   43ec3:	83 c4 04             	add    sp,0x4
   43ec6:	05 cc ba             	add    ax,0xbacc
   43ec9:	68 88 01             	push   0x188
   43ecc:	50                   	push   ax
   43ecd:	ff 36 98 bb          	push   WORD PTR ds:0xbb98
   43ed1:	9a 58 3f 00 00       	call   0x0:0x3f58
   43ed6:	83 c4 08             	add    sp,0x8
   43ed9:	68 88 01             	push   0x188
   43edc:	68 cc ba             	push   0xbacc
   43edf:	9a cc 49 00 00       	call   0x0:0x49cc
   43ee4:	83 c4 04             	add    sp,0x4
   43ee7:	ba 88 01             	mov    dx,0x188
   43eea:	8b d8                	mov    bx,ax
   43eec:	8e c2                	mov    es,dx
   43eee:	26 c6 87 cd ba 00    	mov    BYTE PTR es:[bx-0x4533],0x0
   43ef4:	68 88 01             	push   0x188
   43ef7:	68 cc ba             	push   0xbacc
   43efa:	9a cc 49 00 00       	call   0x0:0x49cc
   43eff:	83 c4 04             	add    sp,0x4
   43f02:	3d 68 00             	cmp    ax,0x68
   43f05:	72 15                	jb     0x43f1c
   43f07:	6a 55                	push   0x55
   43f09:	6a 00                	push   0x0
   43f0b:	6a 00                	push   0x0
   43f0d:	68 42 01             	push   0x142
   43f10:	1e                   	push   ds
   43f11:	68 8a 5e             	push   0x5e8a
   43f14:	9a 2a 00 58 01       	call   0x158:0x2a
   43f19:	83 c4 0c             	add    sp,0xc
   43f1c:	6a 00                	push   0x0
   43f1e:	6a 01                	push   0x1
   43f20:	68 88 01             	push   0x188
   43f23:	68 cc ba             	push   0xbacc
   43f26:	9a 48 29 10 00       	call   0x10:0x2948
   43f2b:	83 c4 08             	add    sp,0x8
   43f2e:	6a 28                	push   0x28
   43f30:	9a ca 2d 10 00       	call   0x10:0x2dca
   43f35:	59                   	pop    cx
   43f36:	6a 56                	push   0x56
   43f38:	6a 00                	push   0x0
   43f3a:	6a 00                	push   0x0
   43f3c:	68 44 01             	push   0x144
   43f3f:	1e                   	push   ds
   43f40:	68 99 5e             	push   0x5e99
   43f43:	e9 80 17             	jmp    0x456c6
   43f46:	e9 85 17             	jmp    0x456ce
   43f49:	90                   	nop
   43f4a:	0e                   	push   cs
   43f4b:	e8 85 45             	call   0x484d3
   43f4e:	88 46 e5             	mov    BYTE PTR [bp-0x1b],al
   43f51:	80 3e 0b 5c 00       	cmp    BYTE PTR ds:0x5c0b,0x0
   43f56:	74 17                	je     0x43f6f
   43f58:	8a 46 e5             	mov    al,BYTE PTR [bp-0x1b]
   43f5b:	b4 00                	mov    ah,0x0
   43f5d:	50                   	push   ax
   43f5e:	1e                   	push   ds
   43f5f:	68 a8 5e             	push   0x5ea8
   43f62:	9a 53 42 00 00       	call   0x0:0x4253
   43f67:	83 c4 06             	add    sp,0x6
   43f6a:	9a d7 29 00 00       	call   0x0:0x29d7
   43f6f:	8a 46 e5             	mov    al,BYTE PTR [bp-0x1b]
   43f72:	b4 00                	mov    ah,0x0
   43f74:	48                   	dec    ax
   43f75:	8b d8                	mov    bx,ax
   43f77:	83 fb 20             	cmp    bx,0x20
   43f7a:	76 03                	jbe    0x43f7f
   43f7c:	e9 22 17             	jmp    0x456a1
   43f7f:	d1 e3                	shl    bx,1
   43f81:	2e ff a7 8c 20       	jmp    WORD PTR cs:[bx+0x208c]
   43f86:	90                   	nop
   43f87:	0e                   	push   cs
   43f88:	e8 48 45             	call   0x484d3
   43f8b:	88 46 e4             	mov    BYTE PTR [bp-0x1c],al
   43f8e:	80 7e e4 01          	cmp    BYTE PTR [bp-0x1c],0x1
   43f92:	75 6f                	jne    0x44003
   43f94:	90                   	nop
   43f95:	0e                   	push   cs
   43f96:	e8 3a 45             	call   0x484d3
   43f99:	88 46 e3             	mov    BYTE PTR [bp-0x1d],al
   43f9c:	90                   	nop
   43f9d:	0e                   	push   cs
   43f9e:	e8 32 45             	call   0x484d3
   43fa1:	88 46 e2             	mov    BYTE PTR [bp-0x1e],al
   43fa4:	8a 46 e3             	mov    al,BYTE PTR [bp-0x1d]
   43fa7:	b4 00                	mov    ah,0x0
   43fa9:	50                   	push   ax
   43faa:	90                   	nop
   43fab:	0e                   	push   cs
   43fac:	e8 6d 41             	call   0x4811c
   43faf:	59                   	pop    cx
   43fb0:	88 46 e0             	mov    BYTE PTR [bp-0x20],al
   43fb3:	80 3e 0b 5c 01       	cmp    BYTE PTR ds:0x5c0b,0x1
   43fb8:	76 2b                	jbe    0x43fe5
   43fba:	80 7e e0 00          	cmp    BYTE PTR [bp-0x20],0x0
   43fbe:	74 07                	je     0x43fc7
   43fc0:	8c da                	mov    dx,ds
   43fc2:	b8 c9 5e             	mov    ax,0x5ec9
   43fc5:	eb 05                	jmp    0x43fcc
   43fc7:	8c da                	mov    dx,ds
   43fc9:	b8 cf 5e             	mov    ax,0x5ecf
   43fcc:	52                   	push   dx
   43fcd:	50                   	push   ax
   43fce:	8a 46 e3             	mov    al,BYTE PTR [bp-0x1d]
   43fd1:	b4 00                	mov    ah,0x0
   43fd3:	50                   	push   ax
   43fd4:	1e                   	push   ds
   43fd5:	68 b6 5e             	push   0x5eb6
   43fd8:	9a 53 42 00 00       	call   0x0:0x4253
   43fdd:	83 c4 0a             	add    sp,0xa
   43fe0:	9a d7 29 00 00       	call   0x0:0x29d7
   43fe5:	8a 46 e0             	mov    al,BYTE PTR [bp-0x20]
   43fe8:	b4 00                	mov    ah,0x0
   43fea:	0b c0                	or     ax,ax
   43fec:	74 03                	je     0x43ff1
   43fee:	e9 dd 16             	jmp    0x456ce
   43ff1:	8a 46 e2             	mov    al,BYTE PTR [bp-0x1e]
   43ff4:	b4 00                	mov    ah,0x0
   43ff6:	50                   	push   ax
   43ff7:	90                   	nop
   43ff8:	0e                   	push   cs
   43ff9:	e8 3f 45             	call   0x4853b
   43ffc:	59                   	pop    cx
   43ffd:	e9 ce 16             	jmp    0x456ce
   44000:	e9 cb 16             	jmp    0x456ce
   44003:	80 7e e4 02          	cmp    BYTE PTR [bp-0x1c],0x2
   44007:	75 45                	jne    0x4404e
   44009:	90                   	nop
   4400a:	0e                   	push   cs
   4400b:	e8 c5 44             	call   0x484d3
   4400e:	88 46 e3             	mov    BYTE PTR [bp-0x1d],al
   44011:	90                   	nop
   44012:	0e                   	push   cs
   44013:	e8 bd 44             	call   0x484d3
   44016:	88 46 e2             	mov    BYTE PTR [bp-0x1e],al
   44019:	80 3e 0b 5c 01       	cmp    BYTE PTR ds:0x5c0b,0x1
   4401e:	76 1b                	jbe    0x4403b
   44020:	8a 46 e3             	mov    al,BYTE PTR [bp-0x1d]
   44023:	b4 00                	mov    ah,0x0
   44025:	50                   	push   ax
   44026:	ff 36 9e bb          	push   WORD PTR ds:0xbb9e
   4402a:	1e                   	push   ds
   4402b:	68 d7 5e             	push   0x5ed7
   4402e:	9a 53 42 00 00       	call   0x0:0x4253
   44033:	83 c4 08             	add    sp,0x8
   44036:	9a d7 29 00 00       	call   0x0:0x29d7
   4403b:	8a 46 e3             	mov    al,BYTE PTR [bp-0x1d]
   4403e:	b4 00                	mov    ah,0x0
   44040:	3b 06 9e bb          	cmp    ax,WORD PTR ds:0xbb9e
   44044:	75 03                	jne    0x44049
   44046:	e9 85 16             	jmp    0x456ce
   44049:	eb a6                	jmp    0x43ff1
   4404b:	e9 80 16             	jmp    0x456ce
   4404e:	6a 57                	push   0x57
   44050:	6a 00                	push   0x0
   44052:	6a 00                	push   0x0
   44054:	68 62 01             	push   0x162
   44057:	1e                   	push   ds
   44058:	68 eb 5e             	push   0x5eeb
   4405b:	e9 68 16             	jmp    0x456c6
   4405e:	e9 6d 16             	jmp    0x456ce
   44061:	9a b9 1e 10 00       	call   0x10:0x1eb9
   44066:	c6 06 aa bb 00       	mov    BYTE PTR ds:0xbbaa,0x0
   4406b:	90                   	nop
   4406c:	0e                   	push   cs
   4406d:	e8 63 44             	call   0x484d3
   44070:	88 46 e4             	mov    BYTE PTR [bp-0x1c],al
   44073:	8a 46 e4             	mov    al,BYTE PTR [bp-0x1c]
   44076:	b4 00                	mov    ah,0x0
   44078:	50                   	push   ax
   44079:	90                   	nop
   4407a:	0e                   	push   cs
   4407b:	e8 8f 46             	call   0x4870d
   4407e:	59                   	pop    cx
   4407f:	89 56 de             	mov    WORD PTR [bp-0x22],dx
   44082:	89 46 dc             	mov    WORD PTR [bp-0x24],ax
   44085:	6a 00                	push   0x0
   44087:	6a 01                	push   0x1
   44089:	ff 76 de             	push   WORD PTR [bp-0x22]
   4408c:	ff 76 dc             	push   WORD PTR [bp-0x24]
   4408f:	9a 48 29 10 00       	call   0x10:0x2948
   44094:	83 c4 08             	add    sp,0x8
   44097:	b4 00                	mov    ah,0x0
   44099:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   4409c:	90                   	nop
   4409d:	0e                   	push   cs
   4409e:	e8 32 44             	call   0x484d3
   440a1:	3c 05                	cmp    al,0x5
   440a3:	74 10                	je     0x440b5
   440a5:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   440a8:	6b c0 64             	imul   ax,ax,0x64
   440ab:	05 8c 00             	add    ax,0x8c
   440ae:	50                   	push   ax
   440af:	9a ca 2d 10 00       	call   0x10:0x2dca
   440b4:	59                   	pop    cx
   440b5:	ff 0e 98 bb          	dec    WORD PTR ds:0xbb98
   440b9:	ff 76 de             	push   WORD PTR [bp-0x22]
   440bc:	ff 76 dc             	push   WORD PTR [bp-0x24]
   440bf:	e9 93 15             	jmp    0x45655
   440c2:	90                   	nop
   440c3:	0e                   	push   cs
   440c4:	e8 0c 44             	call   0x484d3
   440c7:	88 46 e4             	mov    BYTE PTR [bp-0x1c],al
   440ca:	6a 01                	push   0x1
   440cc:	8a 46 e4             	mov    al,BYTE PTR [bp-0x1c]
   440cf:	50                   	push   ax
   440d0:	90                   	nop
   440d1:	0e                   	push   cs
   440d2:	e8 f2 40             	call   0x481c7
   440d5:	83 c4 04             	add    sp,0x4
   440d8:	b8 88 01             	mov    ax,0x188
   440db:	8e c0                	mov    es,ax
   440dd:	26 c7 06 c8 b9 01 00 	mov    WORD PTR es:0xb9c8,0x1
   440e4:	e9 e7 15             	jmp    0x456ce
   440e7:	9a b9 1e 10 00       	call   0x10:0x1eb9
   440ec:	e9 ab 15             	jmp    0x4569a
   440ef:	90                   	nop
   440f0:	0e                   	push   cs
   440f1:	e8 df 43             	call   0x484d3
   440f4:	88 46 e4             	mov    BYTE PTR [bp-0x1c],al
   440f7:	90                   	nop
   440f8:	0e                   	push   cs
   440f9:	e8 d7 43             	call   0x484d3
   440fc:	88 46 e3             	mov    BYTE PTR [bp-0x1d],al
   440ff:	8a 46 e4             	mov    al,BYTE PTR [bp-0x1c]
   44102:	b4 00                	mov    ah,0x0
   44104:	50                   	push   ax
   44105:	90                   	nop
   44106:	0e                   	push   cs
   44107:	e8 03 46             	call   0x4870d
   4410a:	59                   	pop    cx
   4410b:	89 56 da             	mov    WORD PTR [bp-0x26],dx
   4410e:	89 46 d8             	mov    WORD PTR [bp-0x28],ax
   44111:	8a 46 e3             	mov    al,BYTE PTR [bp-0x1d]
   44114:	b4 00                	mov    ah,0x0
   44116:	50                   	push   ax
   44117:	90                   	nop
   44118:	0e                   	push   cs
   44119:	e8 f1 45             	call   0x4870d
   4411c:	59                   	pop    cx
   4411d:	89 56 d6             	mov    WORD PTR [bp-0x2a],dx
   44120:	89 46 d4             	mov    WORD PTR [bp-0x2c],ax
   44123:	ff 76 d6             	push   WORD PTR [bp-0x2a]
   44126:	ff 76 d4             	push   WORD PTR [bp-0x2c]
   44129:	ff 76 da             	push   WORD PTR [bp-0x26]
   4412c:	ff 76 d8             	push   WORD PTR [bp-0x28]
   4412f:	9a 98 21 10 00       	call   0x10:0x2198
   44134:	83 c4 08             	add    sp,0x8
   44137:	ff 76 d6             	push   WORD PTR [bp-0x2a]
   4413a:	ff 76 d4             	push   WORD PTR [bp-0x2c]
   4413d:	e9 07 15             	jmp    0x45647
   44140:	90                   	nop
   44141:	0e                   	push   cs
   44142:	e8 8e 43             	call   0x484d3
   44145:	88 46 e4             	mov    BYTE PTR [bp-0x1c],al
   44148:	8a 46 e4             	mov    al,BYTE PTR [bp-0x1c]
   4414b:	e9 a6 fe             	jmp    0x43ff4
   4414e:	90                   	nop
   4414f:	0e                   	push   cs
   44150:	e8 80 43             	call   0x484d3
   44153:	88 46 e4             	mov    BYTE PTR [bp-0x1c],al
   44156:	8a 46 e4             	mov    al,BYTE PTR [bp-0x1c]
   44159:	b4 00                	mov    ah,0x0
   4415b:	50                   	push   ax
   4415c:	90                   	nop
   4415d:	0e                   	push   cs
   4415e:	e8 e8 3f             	call   0x48149
   44161:	59                   	pop    cx
   44162:	80 3e 0b 5c 01       	cmp    BYTE PTR ds:0x5c0b,0x1
   44167:	77 03                	ja     0x4416c
   44169:	e9 62 15             	jmp    0x456ce
   4416c:	8a 46 e4             	mov    al,BYTE PTR [bp-0x1c]
   4416f:	b4 00                	mov    ah,0x0
   44171:	50                   	push   ax
   44172:	1e                   	push   ds
   44173:	68 fa 5e             	push   0x5efa
   44176:	9a 53 42 00 00       	call   0x0:0x4253
   4417b:	83 c4 06             	add    sp,0x6
   4417e:	e9 7e 0d             	jmp    0x44eff
   44181:	e9 4a 15             	jmp    0x456ce
   44184:	90                   	nop
   44185:	0e                   	push   cs
   44186:	e8 4a 43             	call   0x484d3
   44189:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   4418e:	eb 19                	jmp    0x441a9
   44190:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   44193:	6b db 06             	imul   bx,bx,0x6
   44196:	33 c0                	xor    ax,ax
   44198:	89 87 dc 5b          	mov    WORD PTR [bx+0x5bdc],ax
   4419c:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4419f:	6b db 06             	imul   bx,bx,0x6
   441a2:	89 87 da 5b          	mov    WORD PTR [bx+0x5bda],ax
   441a6:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   441a9:	83 7e fe 03          	cmp    WORD PTR [bp-0x2],0x3
   441ad:	7e e1                	jle    0x44190
   441af:	90                   	nop
   441b0:	0e                   	push   cs
   441b1:	e8 1f 43             	call   0x484d3
   441b4:	b4 00                	mov    ah,0x0
   441b6:	a3 e0 5b             	mov    ds:0x5be0,ax
   441b9:	90                   	nop
   441ba:	0e                   	push   cs
   441bb:	e8 15 43             	call   0x484d3
   441be:	b4 00                	mov    ah,0x0
   441c0:	a3 e2 5b             	mov    ds:0x5be2,ax
   441c3:	90                   	nop
   441c4:	0e                   	push   cs
   441c5:	e8 0b 43             	call   0x484d3
   441c8:	b4 00                	mov    ah,0x0
   441ca:	a3 e6 5b             	mov    ds:0x5be6,ax
   441cd:	90                   	nop
   441ce:	0e                   	push   cs
   441cf:	e8 01 43             	call   0x484d3
   441d2:	b4 00                	mov    ah,0x0
   441d4:	a3 e8 5b             	mov    ds:0x5be8,ax
   441d7:	90                   	nop
   441d8:	0e                   	push   cs
   441d9:	e8 f7 42             	call   0x484d3
   441dc:	b4 00                	mov    ah,0x0
   441de:	a3 ec 5b             	mov    ds:0x5bec,ax
   441e1:	90                   	nop
   441e2:	0e                   	push   cs
   441e3:	e8 ed 42             	call   0x484d3
   441e6:	b4 00                	mov    ah,0x0
   441e8:	a3 ee 5b             	mov    ds:0x5bee,ax
   441eb:	83 3e e2 5b 00       	cmp    WORD PTR ds:0x5be2,0x0
   441f0:	74 03                	je     0x441f5
   441f2:	e9 d3 00             	jmp    0x442c8
   441f5:	83 3e e0 5b 00       	cmp    WORD PTR ds:0x5be0,0x0
   441fa:	74 03                	je     0x441ff
   441fc:	e9 c9 00             	jmp    0x442c8
   441ff:	83 3e e8 5b 00       	cmp    WORD PTR ds:0x5be8,0x0
   44204:	74 03                	je     0x44209
   44206:	e9 bf 00             	jmp    0x442c8
   44209:	83 3e e6 5b 00       	cmp    WORD PTR ds:0x5be6,0x0
   4420e:	74 03                	je     0x44213
   44210:	e9 b5 00             	jmp    0x442c8
   44213:	83 3e ee 5b 00       	cmp    WORD PTR ds:0x5bee,0x0
   44218:	74 03                	je     0x4421d
   4421a:	e9 ab 00             	jmp    0x442c8
   4421d:	83 3e ec 5b 00       	cmp    WORD PTR ds:0x5bec,0x0
   44222:	74 03                	je     0x44227
   44224:	e9 a1 00             	jmp    0x442c8
   44227:	c7 46 f8 01 00       	mov    WORD PTR [bp-0x8],0x1
   4422c:	e9 90 00             	jmp    0x442bf
   4422f:	1e                   	push   ds
   44230:	68 04 5f             	push   0x5f04
   44233:	68 a7 01             	push   0x1a7
   44236:	68 88 01             	push   0x188
   44239:	68 26 de             	push   0xde26
   4423c:	9a 81 0a 20 00       	call   0x20:0xa81
   44241:	83 c4 0a             	add    sp,0xa
   44244:	b8 88 01             	mov    ax,0x188
   44247:	8e c0                	mov    es,ax
   44249:	26 c4 1e 3f e3       	les    bx,DWORD PTR es:0xe33f
   4424e:	26 ff 37             	push   WORD PTR es:[bx]
   44251:	6a 00                	push   0x0
   44253:	68 00 80             	push   0x8000
   44256:	9a 79 17 00 00       	call   0x0:0x1779
   4425b:	99                   	cwd
   4425c:	b1 03                	mov    cl,0x3
   4425e:	9a 8d 13 00 00       	call   0x0:0x138d
   44263:	52                   	push   dx
   44264:	50                   	push   ax
   44265:	9a df 12 00 00       	call   0x0:0x12df
   4426a:	05 1c 00             	add    ax,0x1c
   4426d:	99                   	cwd
   4426e:	52                   	push   dx
   4426f:	50                   	push   ax
   44270:	6a 01                	push   0x1
   44272:	9a 88 06 98 00       	call   0x98:0x688
   44277:	8b d8                	mov    bx,ax
   44279:	8e c2                	mov    es,dx
   4427b:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   4427e:	b4 00                	mov    ah,0x0
   44280:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   44283:	6b db 06             	imul   bx,bx,0x6
   44286:	89 87 da 5b          	mov    WORD PTR [bx+0x5bda],ax
   4428a:	68 88 01             	push   0x188
   4428d:	68 26 de             	push   0xde26
   44290:	9a 22 0b 20 00       	call   0x20:0xb22
   44295:	83 c4 04             	add    sp,0x4
   44298:	6a 00                	push   0x0
   4429a:	68 00 80             	push   0x8000
   4429d:	9a 79 17 00 00       	call   0x0:0x1779
   442a2:	99                   	cwd
   442a3:	b1 03                	mov    cl,0x3
   442a5:	9a 8d 13 00 00       	call   0x0:0x138d
   442aa:	52                   	push   dx
   442ab:	50                   	push   ax
   442ac:	9a df 12 00 00       	call   0x0:0x12df
   442b1:	40                   	inc    ax
   442b2:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   442b5:	6b db 06             	imul   bx,bx,0x6
   442b8:	89 87 dc 5b          	mov    WORD PTR [bx+0x5bdc],ax
   442bc:	ff 46 f8             	inc    WORD PTR [bp-0x8]
   442bf:	83 7e f8 03          	cmp    WORD PTR [bp-0x8],0x3
   442c3:	7f 03                	jg     0x442c8
   442c5:	e9 67 ff             	jmp    0x4422f
   442c8:	c7 46 f8 03 00       	mov    WORD PTR [bp-0x8],0x3
   442cd:	eb 3f                	jmp    0x4430e
   442cf:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   442d2:	6b db 06             	imul   bx,bx,0x6
   442d5:	8b 87 da 5b          	mov    ax,WORD PTR [bx+0x5bda]
   442d9:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   442dc:	6b db 06             	imul   bx,bx,0x6
   442df:	89 87 f2 5b          	mov    WORD PTR [bx+0x5bf2],ax
   442e3:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   442e6:	6b db 06             	imul   bx,bx,0x6
   442e9:	8b 87 dc 5b          	mov    ax,WORD PTR [bx+0x5bdc]
   442ed:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   442f0:	6b db 06             	imul   bx,bx,0x6
   442f3:	89 87 f4 5b          	mov    WORD PTR [bx+0x5bf4],ax
   442f7:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   442fa:	6b db 06             	imul   bx,bx,0x6
   442fd:	8b 87 d8 5b          	mov    ax,WORD PTR [bx+0x5bd8]
   44301:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   44304:	6b db 06             	imul   bx,bx,0x6
   44307:	89 87 f0 5b          	mov    WORD PTR [bx+0x5bf0],ax
   4430b:	ff 4e f8             	dec    WORD PTR [bp-0x8]
   4430e:	83 7e f8 01          	cmp    WORD PTR [bp-0x8],0x1
   44312:	7d bb                	jge    0x442cf
   44314:	6a 28                	push   0x28
   44316:	9a ca 2d 10 00       	call   0x10:0x2dca
   4431b:	59                   	pop    cx
   4431c:	9a 66 00 10 01       	call   0x110:0x66
   44321:	c7 46 f8 03 00       	mov    WORD PTR [bp-0x8],0x3
   44326:	e9 aa 00             	jmp    0x443d3
   44329:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   4432c:	6b db 06             	imul   bx,bx,0x6
   4432f:	8b 87 f2 5b          	mov    ax,WORD PTR [bx+0x5bf2]
   44333:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   44336:	6b db 06             	imul   bx,bx,0x6
   44339:	3b 87 da 5b          	cmp    ax,WORD PTR [bx+0x5bda]
   4433d:	75 2c                	jne    0x4436b
   4433f:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   44342:	6b db 06             	imul   bx,bx,0x6
   44345:	8b 87 f4 5b          	mov    ax,WORD PTR [bx+0x5bf4]
   44349:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   4434c:	6b db 06             	imul   bx,bx,0x6
   4434f:	3b 87 dc 5b          	cmp    ax,WORD PTR [bx+0x5bdc]
   44353:	75 16                	jne    0x4436b
   44355:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   44358:	6b db 06             	imul   bx,bx,0x6
   4435b:	8b 87 f0 5b          	mov    ax,WORD PTR [bx+0x5bf0]
   4435f:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   44362:	6b db 06             	imul   bx,bx,0x6
   44365:	3b 87 d8 5b          	cmp    ax,WORD PTR [bx+0x5bd8]
   44369:	74 65                	je     0x443d0
   4436b:	6a 03                	push   0x3
   4436d:	9a 1e 34 00 00       	call   0x0:0x341e
   44372:	59                   	pop    cx
   44373:	c7 46 f8 03 00       	mov    WORD PTR [bp-0x8],0x3
   44378:	eb 4b                	jmp    0x443c5
   4437a:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   4437d:	6b db 06             	imul   bx,bx,0x6
   44380:	ff b7 d8 5b          	push   WORD PTR [bx+0x5bd8]
   44384:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   44387:	6b db 06             	imul   bx,bx,0x6
   4438a:	ff b7 f0 5b          	push   WORD PTR [bx+0x5bf0]
   4438e:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   44391:	6b db 06             	imul   bx,bx,0x6
   44394:	ff b7 dc 5b          	push   WORD PTR [bx+0x5bdc]
   44398:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   4439b:	6b db 06             	imul   bx,bx,0x6
   4439e:	ff b7 f4 5b          	push   WORD PTR [bx+0x5bf4]
   443a2:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   443a5:	6b db 06             	imul   bx,bx,0x6
   443a8:	ff b7 da 5b          	push   WORD PTR [bx+0x5bda]
   443ac:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   443af:	6b db 06             	imul   bx,bx,0x6
   443b2:	ff b7 f2 5b          	push   WORD PTR [bx+0x5bf2]
   443b6:	1e                   	push   ds
   443b7:	68 13 5f             	push   0x5f13
   443ba:	9a 53 42 00 00       	call   0x0:0x4253
   443bf:	83 c4 10             	add    sp,0x10
   443c2:	ff 4e f8             	dec    WORD PTR [bp-0x8]
   443c5:	83 7e f8 01          	cmp    WORD PTR [bp-0x8],0x1
   443c9:	7d af                	jge    0x4437a
   443cb:	9a d7 29 00 00       	call   0x0:0x29d7
   443d0:	ff 4e f8             	dec    WORD PTR [bp-0x8]
   443d3:	83 7e f8 01          	cmp    WORD PTR [bp-0x8],0x1
   443d7:	7c 03                	jl     0x443dc
   443d9:	e9 4d ff             	jmp    0x44329
   443dc:	b8 88 01             	mov    ax,0x188
   443df:	8e c0                	mov    es,ax
   443e1:	26 a1 1a 73          	mov    ax,es:0x731a
   443e5:	f7 d8                	neg    ax
   443e7:	50                   	push   ax
   443e8:	b8 88 01             	mov    ax,0x188
   443eb:	8e c0                	mov    es,ax
   443ed:	26 a1 18 73          	mov    ax,es:0x7318
   443f1:	f7 d8                	neg    ax
   443f3:	50                   	push   ax
   443f4:	68 e8 03             	push   0x3e8
   443f7:	9a 3f 07 30 00       	call   0x30:0x73f
   443fc:	83 c4 06             	add    sp,0x6
   443ff:	b8 88 01             	mov    ax,0x188
   44402:	8e c0                	mov    es,ax
   44404:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   4440a:	74 50                	je     0x4445c
   4440c:	9a 96 12 68 00       	call   0x68:0x1296
   44411:	b8 88 01             	mov    ax,0x188
   44414:	8e c0                	mov    es,ax
   44416:	26 a1 75 bb          	mov    ax,es:0xbb75
   4441a:	26 0b 06 77 bb       	or     ax,WORD PTR es:0xbb77
   4441f:	74 3b                	je     0x4445c
   44421:	b8 88 01             	mov    ax,0x188
   44424:	8e c0                	mov    es,ax
   44426:	26 ff 36 77 bb       	push   WORD PTR es:0xbb77
   4442b:	26 ff 36 75 bb       	push   WORD PTR es:0xbb75
   44430:	9a 03 00 80 00       	call   0x80:0x3
   44435:	b8 88 01             	mov    ax,0x188
   44438:	8e c0                	mov    es,ax
   4443a:	26 ff 36 77 bb       	push   WORD PTR es:0xbb77
   4443f:	26 ff 36 75 bb       	push   WORD PTR es:0xbb75
   44444:	9a da 00 58 00       	call   0x58:0xda
   44449:	b8 88 01             	mov    ax,0x188
   4444c:	8e c0                	mov    es,ax
   4444e:	26 c7 06 77 bb 00 00 	mov    WORD PTR es:0xbb77,0x0
   44455:	26 c7 06 75 bb 00 00 	mov    WORD PTR es:0xbb75,0x0
   4445c:	c7 46 f8 03 00       	mov    WORD PTR [bp-0x8],0x3
   44461:	e9 aa 00             	jmp    0x4450e
   44464:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   44467:	6b db 06             	imul   bx,bx,0x6
   4446a:	8b 87 f2 5b          	mov    ax,WORD PTR [bx+0x5bf2]
   4446e:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   44471:	6b db 06             	imul   bx,bx,0x6
   44474:	3b 87 da 5b          	cmp    ax,WORD PTR [bx+0x5bda]
   44478:	75 2c                	jne    0x444a6
   4447a:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   4447d:	6b db 06             	imul   bx,bx,0x6
   44480:	8b 87 f4 5b          	mov    ax,WORD PTR [bx+0x5bf4]
   44484:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   44487:	6b db 06             	imul   bx,bx,0x6
   4448a:	3b 87 dc 5b          	cmp    ax,WORD PTR [bx+0x5bdc]
   4448e:	75 16                	jne    0x444a6
   44490:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   44493:	6b db 06             	imul   bx,bx,0x6
   44496:	8b 87 f0 5b          	mov    ax,WORD PTR [bx+0x5bf0]
   4449a:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   4449d:	6b db 06             	imul   bx,bx,0x6
   444a0:	3b 87 d8 5b          	cmp    ax,WORD PTR [bx+0x5bd8]
   444a4:	74 65                	je     0x4450b
   444a6:	6a 03                	push   0x3
   444a8:	9a 1e 34 00 00       	call   0x0:0x341e
   444ad:	59                   	pop    cx
   444ae:	c7 46 f8 03 00       	mov    WORD PTR [bp-0x8],0x3
   444b3:	eb 4b                	jmp    0x44500
   444b5:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   444b8:	6b db 06             	imul   bx,bx,0x6
   444bb:	ff b7 d8 5b          	push   WORD PTR [bx+0x5bd8]
   444bf:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   444c2:	6b db 06             	imul   bx,bx,0x6
   444c5:	ff b7 f0 5b          	push   WORD PTR [bx+0x5bf0]
   444c9:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   444cc:	6b db 06             	imul   bx,bx,0x6
   444cf:	ff b7 dc 5b          	push   WORD PTR [bx+0x5bdc]
   444d3:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   444d6:	6b db 06             	imul   bx,bx,0x6
   444d9:	ff b7 f4 5b          	push   WORD PTR [bx+0x5bf4]
   444dd:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   444e0:	6b db 06             	imul   bx,bx,0x6
   444e3:	ff b7 da 5b          	push   WORD PTR [bx+0x5bda]
   444e7:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   444ea:	6b db 06             	imul   bx,bx,0x6
   444ed:	ff b7 f2 5b          	push   WORD PTR [bx+0x5bf2]
   444f1:	1e                   	push   ds
   444f2:	68 5a 5f             	push   0x5f5a
   444f5:	9a 53 42 00 00       	call   0x0:0x4253
   444fa:	83 c4 10             	add    sp,0x10
   444fd:	ff 4e f8             	dec    WORD PTR [bp-0x8]
   44500:	83 7e f8 01          	cmp    WORD PTR [bp-0x8],0x1
   44504:	7d af                	jge    0x444b5
   44506:	9a d7 29 00 00       	call   0x0:0x29d7
   4450b:	ff 4e f8             	dec    WORD PTR [bp-0x8]
   4450e:	83 7e f8 01          	cmp    WORD PTR [bp-0x8],0x1
   44512:	7c 03                	jl     0x44517
   44514:	e9 4d ff             	jmp    0x44464
   44517:	9a 38 01 38 01       	call   0x138:0x138
   4451c:	6a 00                	push   0x0
   4451e:	b8 88 01             	mov    ax,0x188
   44521:	8e c0                	mov    es,ax
   44523:	26 ff 36 6b bb       	push   WORD PTR es:0xbb6b
   44528:	9a 2a 00 18 01       	call   0x118:0x2a
   4452d:	83 c4 04             	add    sp,0x4
   44530:	9a 7a 00 18 01       	call   0x118:0x7a
   44535:	b8 88 01             	mov    ax,0x188
   44538:	8e c0                	mov    es,ax
   4453a:	26 c7 06 c8 b9 00 00 	mov    WORD PTR es:0xb9c8,0x0
   44541:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   44546:	eb 55                	jmp    0x4459d
   44548:	c7 46 fc 01 00       	mov    WORD PTR [bp-0x4],0x1
   4454d:	eb 1c                	jmp    0x4456b
   4454f:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   44552:	6b db 28             	imul   bx,bx,0x28
   44555:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   44558:	d1 e0                	shl    ax,1
   4455a:	03 d8                	add    bx,ax
   4455c:	b8 88 01             	mov    ax,0x188
   4455f:	8e c0                	mov    es,ax
   44561:	26 c7 87 88 a0 00 00 	mov    WORD PTR es:[bx-0x5f78],0x0
   44568:	ff 46 fc             	inc    WORD PTR [bp-0x4]
   4456b:	83 7e fc 1d          	cmp    WORD PTR [bp-0x4],0x1d
   4456f:	7c de                	jl     0x4454f
   44571:	c7 46 fc 01 00       	mov    WORD PTR [bp-0x4],0x1
   44576:	eb 1c                	jmp    0x44594
   44578:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   4457b:	6b db 2e             	imul   bx,bx,0x2e
   4457e:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   44581:	d1 e0                	shl    ax,1
   44583:	03 d8                	add    bx,ax
   44585:	b8 88 01             	mov    ax,0x188
   44588:	8e c0                	mov    es,ax
   4458a:	26 c7 87 18 9f 00 00 	mov    WORD PTR es:[bx-0x60e8],0x0
   44591:	ff 46 fc             	inc    WORD PTR [bp-0x4]
   44594:	83 7e fc 08          	cmp    WORD PTR [bp-0x4],0x8
   44598:	7c de                	jl     0x44578
   4459a:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   4459d:	83 7e fe 14          	cmp    WORD PTR [bp-0x2],0x14
   445a1:	7c a5                	jl     0x44548
   445a3:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   445a8:	eb 43                	jmp    0x445ed
   445aa:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   445ad:	6b db 06             	imul   bx,bx,0x6
   445b0:	33 c0                	xor    ax,ax
   445b2:	89 87 dc 5b          	mov    WORD PTR [bx+0x5bdc],ax
   445b6:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   445b9:	6b db 06             	imul   bx,bx,0x6
   445bc:	89 87 da 5b          	mov    WORD PTR [bx+0x5bda],ax
   445c0:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   445c3:	6b db 06             	imul   bx,bx,0x6
   445c6:	89 87 d8 5b          	mov    WORD PTR [bx+0x5bd8],ax
   445ca:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   445cd:	6b db 06             	imul   bx,bx,0x6
   445d0:	33 c0                	xor    ax,ax
   445d2:	89 87 f4 5b          	mov    WORD PTR [bx+0x5bf4],ax
   445d6:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   445d9:	6b db 06             	imul   bx,bx,0x6
   445dc:	89 87 f2 5b          	mov    WORD PTR [bx+0x5bf2],ax
   445e0:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   445e3:	6b db 06             	imul   bx,bx,0x6
   445e6:	89 87 f0 5b          	mov    WORD PTR [bx+0x5bf0],ax
   445ea:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   445ed:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   445f1:	7c b7                	jl     0x445aa
   445f3:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   445f8:	eb 16                	jmp    0x44610
   445fa:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   445fd:	6b db 5c             	imul   bx,bx,0x5c
   44600:	b8 88 01             	mov    ax,0x188
   44603:	8e c0                	mov    es,ax
   44605:	26 83 bf e0 99 00    	cmp    WORD PTR es:[bx-0x6620],0x0
   4460b:	7f 09                	jg     0x44616
   4460d:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   44610:	83 7e fe 05          	cmp    WORD PTR [bp-0x2],0x5
   44614:	7c e4                	jl     0x445fa
   44616:	b8 88 01             	mov    ax,0x188
   44619:	8e c0                	mov    es,ax
   4461b:	26 83 3e 2e 63 02    	cmp    WORD PTR es:0x632e,0x2
   44621:	74 09                	je     0x4462c
   44623:	83 7e fe 05          	cmp    WORD PTR [bp-0x2],0x5
   44627:	74 03                	je     0x4462c
   44629:	e9 a2 10             	jmp    0x456ce
   4462c:	9a 2f 00 28 01       	call   0x128:0x2f
   44631:	b8 88 01             	mov    ax,0x188
   44634:	8e c0                	mov    es,ax
   44636:	26 c7 06 c8 b9 00 00 	mov    WORD PTR es:0xb9c8,0x0
   4463d:	e9 9f 04             	jmp    0x44adf
   44640:	e9 8b 10             	jmp    0x456ce
   44643:	90                   	nop
   44644:	0e                   	push   cs
   44645:	e8 8b 3e             	call   0x484d3
   44648:	b4 00                	mov    ah,0x0
   4464a:	a3 a2 bb             	mov    ds:0xbba2,ax
   4464d:	90                   	nop
   4464e:	0e                   	push   cs
   4464f:	e8 81 3e             	call   0x484d3
   44652:	b4 00                	mov    ah,0x0
   44654:	a3 a4 bb             	mov    ds:0xbba4,ax
   44657:	90                   	nop
   44658:	0e                   	push   cs
   44659:	e8 77 3e             	call   0x484d3
   4465c:	b4 00                	mov    ah,0x0
   4465e:	a3 a6 bb             	mov    ds:0xbba6,ax
   44661:	90                   	nop
   44662:	0e                   	push   cs
   44663:	e8 6d 3e             	call   0x484d3
   44666:	b4 00                	mov    ah,0x0
   44668:	c1 e0 08             	shl    ax,0x8
   4466b:	50                   	push   ax
   4466c:	90                   	nop
   4466d:	0e                   	push   cs
   4466e:	e8 62 3e             	call   0x484d3
   44671:	b4 00                	mov    ah,0x0
   44673:	5a                   	pop    dx
   44674:	03 d0                	add    dx,ax
   44676:	b8 88 01             	mov    ax,0x188
   44679:	8e c0                	mov    es,ax
   4467b:	26 89 16 57 bb       	mov    WORD PTR es:0xbb57,dx
   44680:	90                   	nop
   44681:	0e                   	push   cs
   44682:	e8 4e 3e             	call   0x484d3
   44685:	b4 00                	mov    ah,0x0
   44687:	c1 e0 08             	shl    ax,0x8
   4468a:	50                   	push   ax
   4468b:	90                   	nop
   4468c:	0e                   	push   cs
   4468d:	e8 43 3e             	call   0x484d3
   44690:	b4 00                	mov    ah,0x0
   44692:	5a                   	pop    dx
   44693:	03 d0                	add    dx,ax
   44695:	b8 88 01             	mov    ax,0x188
   44698:	8e c0                	mov    es,ax
   4469a:	26 89 16 59 bb       	mov    WORD PTR es:0xbb59,dx
   4469f:	90                   	nop
   446a0:	0e                   	push   cs
   446a1:	e8 2f 3e             	call   0x484d3
   446a4:	b4 00                	mov    ah,0x0
   446a6:	c1 e0 08             	shl    ax,0x8
   446a9:	50                   	push   ax
   446aa:	90                   	nop
   446ab:	0e                   	push   cs
   446ac:	e8 24 3e             	call   0x484d3
   446af:	b4 00                	mov    ah,0x0
   446b1:	5a                   	pop    dx
   446b2:	03 d0                	add    dx,ax
   446b4:	b8 88 01             	mov    ax,0x188
   446b7:	8e c0                	mov    es,ax
   446b9:	26 89 16 5b bb       	mov    WORD PTR es:0xbb5b,dx
   446be:	6a 00                	push   0x0
   446c0:	90                   	nop
   446c1:	0e                   	push   cs
   446c2:	e8 cc 1e             	call   0x46591
   446c5:	e9 34 f9             	jmp    0x43ffc
   446c8:	9a b9 1e 10 00       	call   0x10:0x1eb9
   446cd:	90                   	nop
   446ce:	0e                   	push   cs
   446cf:	e8 01 3e             	call   0x484d3
   446d2:	88 46 e4             	mov    BYTE PTR [bp-0x1c],al
   446d5:	8a 46 e4             	mov    al,BYTE PTR [bp-0x1c]
   446d8:	b4 00                	mov    ah,0x0
   446da:	50                   	push   ax
   446db:	90                   	nop
   446dc:	0e                   	push   cs
   446dd:	e8 2d 40             	call   0x4870d
   446e0:	59                   	pop    cx
   446e1:	89 56 da             	mov    WORD PTR [bp-0x26],dx
   446e4:	89 46 d8             	mov    WORD PTR [bp-0x28],ax
   446e7:	90                   	nop
   446e8:	0e                   	push   cs
   446e9:	e8 e7 3d             	call   0x484d3
   446ec:	88 46 e3             	mov    BYTE PTR [bp-0x1d],al
   446ef:	8a 46 e3             	mov    al,BYTE PTR [bp-0x1d]
   446f2:	b4 00                	mov    ah,0x0
   446f4:	50                   	push   ax
   446f5:	90                   	nop
   446f6:	0e                   	push   cs
   446f7:	e8 13 40             	call   0x4870d
   446fa:	59                   	pop    cx
   446fb:	89 56 d6             	mov    WORD PTR [bp-0x2a],dx
   446fe:	89 46 d4             	mov    WORD PTR [bp-0x2c],ax
   44701:	6a 00                	push   0x0
   44703:	6a 01                	push   0x1
   44705:	6a 00                	push   0x0
   44707:	68 00 80             	push   0x8000
   4470a:	9a 79 17 00 00       	call   0x0:0x1779
   4470f:	99                   	cwd
   44710:	d1 e0                	shl    ax,1
   44712:	d1 d2                	rcl    dx,1
   44714:	52                   	push   dx
   44715:	50                   	push   ax
   44716:	9a df 12 00 00       	call   0x0:0x12df
   4471b:	0b c0                	or     ax,ax
   4471d:	74 08                	je     0x44727
   4471f:	8b 56 da             	mov    dx,WORD PTR [bp-0x26]
   44722:	8b 46 d8             	mov    ax,WORD PTR [bp-0x28]
   44725:	eb 06                	jmp    0x4472d
   44727:	8b 56 d6             	mov    dx,WORD PTR [bp-0x2a]
   4472a:	8b 46 d4             	mov    ax,WORD PTR [bp-0x2c]
   4472d:	52                   	push   dx
   4472e:	50                   	push   ax
   4472f:	9a 48 29 10 00       	call   0x10:0x2948
   44734:	83 c4 08             	add    sp,0x8
   44737:	b4 00                	mov    ah,0x0
   44739:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   4473c:	90                   	nop
   4473d:	0e                   	push   cs
   4473e:	e8 92 3d             	call   0x484d3
   44741:	3c 05                	cmp    al,0x5
   44743:	74 10                	je     0x44755
   44745:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   44748:	6b c0 64             	imul   ax,ax,0x64
   4474b:	05 64 00             	add    ax,0x64
   4474e:	50                   	push   ax
   4474f:	9a ca 2d 10 00       	call   0x10:0x2dca
   44754:	59                   	pop    cx
   44755:	ff 0e 98 bb          	dec    WORD PTR ds:0xbb98
   44759:	e9 db f9             	jmp    0x44137
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
   44908:	b8 88 01             	mov    ax,0x188
   4490b:	8e c0                	mov    es,ax
   4490d:	26 c7 06 c8 b9 01 00 	mov    WORD PTR es:0xb9c8,0x1
   44914:	c7 06 a8 bb 01 00    	mov    WORD PTR ds:0xbba8,0x1
   4491a:	c7 46 f6 00 00       	mov    WORD PTR [bp-0xa],0x0
   4491f:	c6 46 e7 01          	mov    BYTE PTR [bp-0x19],0x1
   44923:	e9 a8 0d             	jmp    0x456ce
   44926:	90                   	nop
   44927:	0e                   	push   cs
   44928:	e8 a8 3b             	call   0x484d3
   4492b:	88 46 e4             	mov    BYTE PTR [bp-0x1c],al
   4492e:	90                   	nop
   4492f:	0e                   	push   cs
   44930:	e8 a0 3b             	call   0x484d3
   44933:	88 46 e3             	mov    BYTE PTR [bp-0x1d],al
   44936:	90                   	nop
   44937:	0e                   	push   cs
   44938:	e8 98 3b             	call   0x484d3
   4493b:	88 46 e2             	mov    BYTE PTR [bp-0x1e],al
   4493e:	80 7e e3 1d          	cmp    BYTE PTR [bp-0x1d],0x1d
   44942:	75 2e                	jne    0x44972
   44944:	80 7e e2 64          	cmp    BYTE PTR [bp-0x1e],0x64
   44948:	73 28                	jae    0x44972
   4494a:	b8 88 01             	mov    ax,0x188
   4494d:	8e c0                	mov    es,ax
   4494f:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   44955:	74 1b                	je     0x44972
   44957:	6a 00                	push   0x0
   44959:	68 f4 01             	push   0x1f4
   4495c:	b8 88 01             	mov    ax,0x188
   4495f:	6a 00                	push   0x0
   44961:	8e c0                	mov    es,ax
   44963:	26 ff 36 81 23       	push   WORD PTR es:0x2381
   44968:	6a 09                	push   0x9
   4496a:	9a 2d 19 10 00       	call   0x10:0x192d
   4496f:	83 c4 0a             	add    sp,0xa
   44972:	80 7e e4 00          	cmp    BYTE PTR [bp-0x1c],0x0
   44976:	74 03                	je     0x4497b
   44978:	e9 a3 00             	jmp    0x44a1e
   4497b:	c6 46 e4 01          	mov    BYTE PTR [bp-0x1c],0x1
   4497f:	e9 90 00             	jmp    0x44a12
   44982:	80 7e e3 1d          	cmp    BYTE PTR [bp-0x1d],0x1d
   44986:	75 1e                	jne    0x449a6
   44988:	8a 46 e4             	mov    al,BYTE PTR [bp-0x1c]
   4498b:	b4 00                	mov    ah,0x0
   4498d:	6b c0 5c             	imul   ax,ax,0x5c
   44990:	8a 56 e3             	mov    dl,BYTE PTR [bp-0x1d]
   44993:	b6 00                	mov    dh,0x0
   44995:	d1 e2                	shl    dx,1
   44997:	03 c2                	add    ax,dx
   44999:	ba 88 01             	mov    dx,0x188
   4499c:	8b d8                	mov    bx,ax
   4499e:	8e c2                	mov    es,dx
   449a0:	26 83 87 a6 99 05    	add    WORD PTR es:[bx-0x665a],0x5
   449a6:	8a 46 e4             	mov    al,BYTE PTR [bp-0x1c]
   449a9:	b4 00                	mov    ah,0x0
   449ab:	6b c0 5c             	imul   ax,ax,0x5c
   449ae:	8a 56 e3             	mov    dl,BYTE PTR [bp-0x1d]
   449b1:	b6 00                	mov    dh,0x0
   449b3:	d1 e2                	shl    dx,1
   449b5:	03 c2                	add    ax,dx
   449b7:	ba 88 01             	mov    dx,0x188
   449ba:	8a 5e e2             	mov    bl,BYTE PTR [bp-0x1e]
   449bd:	b7 00                	mov    bh,0x0
   449bf:	8e c2                	mov    es,dx
   449c1:	87 c3                	xchg   bx,ax
   449c3:	26 f7 af a6 99       	imul   WORD PTR es:[bx-0x665a]
   449c8:	bb 64 00             	mov    bx,0x64
   449cb:	99                   	cwd
   449cc:	f7 fb                	idiv   bx
   449ce:	8a 56 e4             	mov    dl,BYTE PTR [bp-0x1c]
   449d1:	b6 00                	mov    dh,0x0
   449d3:	6b d2 5c             	imul   dx,dx,0x5c
   449d6:	8a 5e e3             	mov    bl,BYTE PTR [bp-0x1d]
   449d9:	b7 00                	mov    bh,0x0
   449db:	d1 e3                	shl    bx,1
   449dd:	03 d3                	add    dx,bx
   449df:	bb 88 01             	mov    bx,0x188
   449e2:	8e c3                	mov    es,bx
   449e4:	8b da                	mov    bx,dx
   449e6:	26 89 87 a6 99       	mov    WORD PTR es:[bx-0x665a],ax
   449eb:	80 7e e3 1d          	cmp    BYTE PTR [bp-0x1d],0x1d
   449ef:	75 1e                	jne    0x44a0f
   449f1:	8a 46 e4             	mov    al,BYTE PTR [bp-0x1c]
   449f4:	b4 00                	mov    ah,0x0
   449f6:	6b c0 5c             	imul   ax,ax,0x5c
   449f9:	8a 56 e3             	mov    dl,BYTE PTR [bp-0x1d]
   449fc:	b6 00                	mov    dh,0x0
   449fe:	d1 e2                	shl    dx,1
   44a00:	03 c2                	add    ax,dx
   44a02:	ba 88 01             	mov    dx,0x188
   44a05:	8b d8                	mov    bx,ax
   44a07:	8e c2                	mov    es,dx
   44a09:	26 83 af a6 99 05    	sub    WORD PTR es:[bx-0x665a],0x5
   44a0f:	fe 46 e4             	inc    BYTE PTR [bp-0x1c]
   44a12:	80 7e e4 05          	cmp    BYTE PTR [bp-0x1c],0x5
   44a16:	73 03                	jae    0x44a1b
   44a18:	e9 67 ff             	jmp    0x44982
   44a1b:	e9 b1 00             	jmp    0x44acf
   44a1e:	80 7e e4 05          	cmp    BYTE PTR [bp-0x1c],0x5
   44a22:	74 03                	je     0x44a27
   44a24:	e9 a8 00             	jmp    0x44acf
   44a27:	a0 9c bb             	mov    al,ds:0xbb9c
   44a2a:	88 46 e4             	mov    BYTE PTR [bp-0x1c],al
   44a2d:	80 7e e3 1d          	cmp    BYTE PTR [bp-0x1d],0x1d
   44a31:	75 1e                	jne    0x44a51
   44a33:	8a 46 e4             	mov    al,BYTE PTR [bp-0x1c]
   44a36:	b4 00                	mov    ah,0x0
   44a38:	6b c0 5c             	imul   ax,ax,0x5c
   44a3b:	8a 56 e3             	mov    dl,BYTE PTR [bp-0x1d]
   44a3e:	b6 00                	mov    dh,0x0
   44a40:	d1 e2                	shl    dx,1
   44a42:	03 c2                	add    ax,dx
   44a44:	ba 88 01             	mov    dx,0x188
   44a47:	8b d8                	mov    bx,ax
   44a49:	8e c2                	mov    es,dx
   44a4b:	26 83 87 a6 99 05    	add    WORD PTR es:[bx-0x665a],0x5
   44a51:	8a 46 e4             	mov    al,BYTE PTR [bp-0x1c]
   44a54:	b4 00                	mov    ah,0x0
   44a56:	6b c0 5c             	imul   ax,ax,0x5c
   44a59:	8a 56 e3             	mov    dl,BYTE PTR [bp-0x1d]
   44a5c:	b6 00                	mov    dh,0x0
   44a5e:	d1 e2                	shl    dx,1
   44a60:	03 c2                	add    ax,dx
   44a62:	ba 88 01             	mov    dx,0x188
   44a65:	8a 5e e2             	mov    bl,BYTE PTR [bp-0x1e]
   44a68:	b7 00                	mov    bh,0x0
   44a6a:	8e c2                	mov    es,dx
   44a6c:	87 c3                	xchg   bx,ax
   44a6e:	26 f7 af a6 99       	imul   WORD PTR es:[bx-0x665a]
   44a73:	bb 64 00             	mov    bx,0x64
   44a76:	99                   	cwd
   44a77:	f7 fb                	idiv   bx
   44a79:	8a 56 e4             	mov    dl,BYTE PTR [bp-0x1c]
   44a7c:	b6 00                	mov    dh,0x0
   44a7e:	6b d2 5c             	imul   dx,dx,0x5c
   44a81:	8a 5e e3             	mov    bl,BYTE PTR [bp-0x1d]
   44a84:	b7 00                	mov    bh,0x0
   44a86:	d1 e3                	shl    bx,1
   44a88:	03 d3                	add    dx,bx
   44a8a:	bb 88 01             	mov    bx,0x188
   44a8d:	8e c3                	mov    es,bx
   44a8f:	8b da                	mov    bx,dx
   44a91:	26 89 87 a6 99       	mov    WORD PTR es:[bx-0x665a],ax
   44a96:	80 7e e3 1d          	cmp    BYTE PTR [bp-0x1d],0x1d
   44a9a:	75 1e                	jne    0x44aba
   44a9c:	8a 46 e4             	mov    al,BYTE PTR [bp-0x1c]
   44a9f:	b4 00                	mov    ah,0x0
   44aa1:	6b c0 5c             	imul   ax,ax,0x5c
   44aa4:	8a 56 e3             	mov    dl,BYTE PTR [bp-0x1d]
   44aa7:	b6 00                	mov    dh,0x0
   44aa9:	d1 e2                	shl    dx,1
   44aab:	03 c2                	add    ax,dx
   44aad:	ba 88 01             	mov    dx,0x188
   44ab0:	8b d8                	mov    bx,ax
   44ab2:	8e c2                	mov    es,dx
   44ab4:	26 83 af a6 99 05    	sub    WORD PTR es:[bx-0x665a],0x5
   44aba:	8a 46 e4             	mov    al,BYTE PTR [bp-0x1c]
   44abd:	b4 00                	mov    ah,0x0
   44abf:	6b c0 11             	imul   ax,ax,0x11
   44ac2:	ba 88 01             	mov    dx,0x188
   44ac5:	8b d8                	mov    bx,ax
   44ac7:	8e c2                	mov    es,dx
   44ac9:	26 c6 87 89 ba 01    	mov    BYTE PTR es:[bx-0x4577],0x1
   44acf:	9a 3e 00 18 01       	call   0x118:0x3e
   44ad4:	e9 f7 0b             	jmp    0x456ce
   44ad7:	90                   	nop
   44ad8:	0e                   	push   cs
   44ad9:	e8 f7 39             	call   0x484d3
   44adc:	e9 ef 0b             	jmp    0x456ce
   44adf:	c7 06 a8 bb 01 00    	mov    WORD PTR ds:0xbba8,0x1
   44ae5:	e9 b2 0b             	jmp    0x4569a
   44ae8:	9a b9 1e 10 00       	call   0x10:0x1eb9
   44aed:	90                   	nop
   44aee:	0e                   	push   cs
   44aef:	e8 e1 39             	call   0x484d3
   44af2:	88 46 e4             	mov    BYTE PTR [bp-0x1c],al
   44af5:	80 3e 0b 5c 01       	cmp    BYTE PTR ds:0x5c0b,0x1
   44afa:	76 1b                	jbe    0x44b17
   44afc:	ff 36 9c bb          	push   WORD PTR ds:0xbb9c
   44b00:	8a 46 e4             	mov    al,BYTE PTR [bp-0x1c]
   44b03:	b4 00                	mov    ah,0x0
   44b05:	50                   	push   ax
   44b06:	1e                   	push   ds
   44b07:	68 a1 5f             	push   0x5fa1
   44b0a:	9a 53 42 00 00       	call   0x0:0x4253
   44b0f:	83 c4 08             	add    sp,0x8
   44b12:	9a d7 29 00 00       	call   0x0:0x29d7
   44b17:	90                   	nop
   44b18:	0e                   	push   cs
   44b19:	e8 b7 39             	call   0x484d3
   44b1c:	88 46 e3             	mov    BYTE PTR [bp-0x1d],al
   44b1f:	8a 46 e3             	mov    al,BYTE PTR [bp-0x1d]
   44b22:	b4 00                	mov    ah,0x0
   44b24:	50                   	push   ax
   44b25:	90                   	nop
   44b26:	0e                   	push   cs
   44b27:	e8 e3 3b             	call   0x4870d
   44b2a:	59                   	pop    cx
   44b2b:	89 56 de             	mov    WORD PTR [bp-0x22],dx
   44b2e:	89 46 dc             	mov    WORD PTR [bp-0x24],ax
   44b31:	80 7e e4 00          	cmp    BYTE PTR [bp-0x1c],0x0
   44b35:	75 20                	jne    0x44b57
   44b37:	6a 00                	push   0x0
   44b39:	68 00 80             	push   0x8000
   44b3c:	9a 79 17 00 00       	call   0x0:0x1779
   44b41:	99                   	cwd
   44b42:	b1 02                	mov    cl,0x2
   44b44:	9a 8d 13 00 00       	call   0x0:0x138d
   44b49:	52                   	push   dx
   44b4a:	50                   	push   ax
   44b4b:	9a df 12 00 00       	call   0x0:0x12df
   44b50:	fe c0                	inc    al
   44b52:	88 46 e4             	mov    BYTE PTR [bp-0x1c],al
   44b55:	eb 27                	jmp    0x44b7e
   44b57:	80 7e e4 05          	cmp    BYTE PTR [bp-0x1c],0x5
   44b5b:	75 21                	jne    0x44b7e
   44b5d:	83 3e 9c bb 04       	cmp    WORD PTR ds:0xbb9c,0x4
   44b62:	7f 05                	jg     0x44b69
   44b64:	a0 9c bb             	mov    al,ds:0xbb9c
   44b67:	eb e9                	jmp    0x44b52
   44b69:	6a 58                	push   0x58
   44b6b:	6a 00                	push   0x0
   44b6d:	6a 00                	push   0x0
   44b6f:	68 6f 02             	push   0x26f
   44b72:	1e                   	push   ds
   44b73:	68 b7 5f             	push   0x5fb7
   44b76:	9a 2a 00 58 01       	call   0x158:0x2a
   44b7b:	83 c4 0c             	add    sp,0xc
   44b7e:	8a 46 e4             	mov    al,BYTE PTR [bp-0x1c]
   44b81:	b4 00                	mov    ah,0x0
   44b83:	50                   	push   ax
   44b84:	6a 00                	push   0x0
   44b86:	ff 76 de             	push   WORD PTR [bp-0x22]
   44b89:	ff 76 dc             	push   WORD PTR [bp-0x24]
   44b8c:	9a 48 29 10 00       	call   0x10:0x2948
   44b91:	83 c4 08             	add    sp,0x8
   44b94:	e9 22 f5             	jmp    0x440b9
   44b97:	b8 88 01             	mov    ax,0x188
   44b9a:	8e c0                	mov    es,ax
   44b9c:	26 f7 06 5e 3d 01 00 	test   WORD PTR es:0x3d5e,0x1
   44ba3:	75 05                	jne    0x44baa
   44ba5:	b8 01 00             	mov    ax,0x1
   44ba8:	eb 02                	jmp    0x44bac
   44baa:	33 c0                	xor    ax,ax
   44bac:	e9 3c 02             	jmp    0x44deb
   44baf:	90                   	nop
   44bb0:	0e                   	push   cs
   44bb1:	e8 1f 39             	call   0x484d3
   44bb4:	88 46 e4             	mov    BYTE PTR [bp-0x1c],al
   44bb7:	b8 88 01             	mov    ax,0x188
   44bba:	8e c0                	mov    es,ax
   44bbc:	26 83 3e 5c 3d 01    	cmp    WORD PTR es:0x3d5c,0x1
   44bc2:	74 03                	je     0x44bc7
   44bc4:	e9 a3 00             	jmp    0x44c6a
   44bc7:	9a b9 1e 10 00       	call   0x10:0x1eb9
   44bcc:	c6 46 e3 00          	mov    BYTE PTR [bp-0x1d],0x0
   44bd0:	c6 46 e2 00          	mov    BYTE PTR [bp-0x1e],0x0
   44bd4:	eb 0b                	jmp    0x44be1
   44bd6:	9a 2a 00 78 01       	call   0x178:0x2a
   44bdb:	08 46 e3             	or     BYTE PTR [bp-0x1d],al
   44bde:	fe 46 e2             	inc    BYTE PTR [bp-0x1e]
   44be1:	80 7e e2 03          	cmp    BYTE PTR [bp-0x1e],0x3
   44be5:	72 ef                	jb     0x44bd6
   44be7:	8a 46 e3             	mov    al,BYTE PTR [bp-0x1d]
   44bea:	b4 00                	mov    ah,0x0
   44bec:	0b c0                	or     ax,ax
   44bee:	75 75                	jne    0x44c65
   44bf0:	6a 00                	push   0x0
   44bf2:	6a 01                	push   0x1
   44bf4:	1e                   	push   ds
   44bf5:	68 c6 5f             	push   0x5fc6
   44bf8:	9a 48 29 10 00       	call   0x10:0x2948
   44bfd:	83 c4 08             	add    sp,0x8
   44c00:	b4 00                	mov    ah,0x0
   44c02:	6b c0 46             	imul   ax,ax,0x46
   44c05:	05 8c 00             	add    ax,0x8c
   44c08:	50                   	push   ax
   44c09:	9a ca 2d 10 00       	call   0x10:0x2dca
   44c0e:	59                   	pop    cx
   44c0f:	eb 02                	jmp    0x44c13
   44c11:	eb 52                	jmp    0x44c65
   44c13:	9a 04 02 30 00       	call   0x30:0x204
   44c18:	9a d7 29 00 00       	call   0x0:0x29d7
   44c1d:	88 46 e3             	mov    BYTE PTR [bp-0x1d],al
   44c20:	b8 88 01             	mov    ax,0x188
   44c23:	8e c0                	mov    es,ax
   44c25:	26 a0 e3 e5          	mov    al,es:0xe5e3
   44c29:	50                   	push   ax
   44c2a:	9a 69 00 30 00       	call   0x30:0x69
   44c2f:	59                   	pop    cx
   44c30:	80 7e e3 1b          	cmp    BYTE PTR [bp-0x1d],0x1b
   44c34:	75 91                	jne    0x44bc7
   44c36:	9a b9 1e 10 00       	call   0x10:0x1eb9
   44c3b:	6a 00                	push   0x0
   44c3d:	6a 01                	push   0x1
   44c3f:	1e                   	push   ds
   44c40:	68 42 60             	push   0x6042
   44c43:	9a 48 29 10 00       	call   0x10:0x2948
   44c48:	83 c4 08             	add    sp,0x8
   44c4b:	b4 00                	mov    ah,0x0
   44c4d:	6b c0 46             	imul   ax,ax,0x46
   44c50:	05 8c 00             	add    ax,0x8c
   44c53:	50                   	push   ax
   44c54:	9a ca 2d 10 00       	call   0x10:0x2dca
   44c59:	59                   	pop    cx
   44c5a:	9a b9 1e 10 00       	call   0x10:0x1eb9
   44c5f:	e9 6c 0a             	jmp    0x456ce
   44c62:	e9 62 ff             	jmp    0x44bc7
   44c65:	9a b9 1e 10 00       	call   0x10:0x1eb9
   44c6a:	9a 66 00 10 01       	call   0x110:0x66
   44c6f:	80 7e e4 02          	cmp    BYTE PTR [bp-0x1c],0x2
   44c73:	75 03                	jne    0x44c78
   44c75:	e9 84 00             	jmp    0x44cfc
   44c78:	b8 88 01             	mov    ax,0x188
   44c7b:	8e c0                	mov    es,ax
   44c7d:	26 a1 1a 73          	mov    ax,es:0x731a
   44c81:	f7 d8                	neg    ax
   44c83:	50                   	push   ax
   44c84:	b8 88 01             	mov    ax,0x188
   44c87:	8e c0                	mov    es,ax
   44c89:	26 a1 18 73          	mov    ax,es:0x7318
   44c8d:	f7 d8                	neg    ax
   44c8f:	50                   	push   ax
   44c90:	68 e8 03             	push   0x3e8
   44c93:	9a 3f 07 30 00       	call   0x30:0x73f
   44c98:	83 c4 06             	add    sp,0x6
   44c9b:	b8 88 01             	mov    ax,0x188
   44c9e:	8e c0                	mov    es,ax
   44ca0:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   44ca6:	74 6d                	je     0x44d15
   44ca8:	9a 96 12 68 00       	call   0x68:0x1296
   44cad:	b8 88 01             	mov    ax,0x188
   44cb0:	8e c0                	mov    es,ax
   44cb2:	26 a1 75 bb          	mov    ax,es:0xbb75
   44cb6:	26 0b 06 77 bb       	or     ax,WORD PTR es:0xbb77
   44cbb:	74 58                	je     0x44d15
   44cbd:	b8 88 01             	mov    ax,0x188
   44cc0:	8e c0                	mov    es,ax
   44cc2:	26 ff 36 77 bb       	push   WORD PTR es:0xbb77
   44cc7:	26 ff 36 75 bb       	push   WORD PTR es:0xbb75
   44ccc:	9a 03 00 80 00       	call   0x80:0x3
   44cd1:	b8 88 01             	mov    ax,0x188
   44cd4:	8e c0                	mov    es,ax
   44cd6:	26 ff 36 77 bb       	push   WORD PTR es:0xbb77
   44cdb:	26 ff 36 75 bb       	push   WORD PTR es:0xbb75
   44ce0:	9a da 00 58 00       	call   0x58:0xda
   44ce5:	b8 88 01             	mov    ax,0x188
   44ce8:	8e c0                	mov    es,ax
   44cea:	26 c7 06 77 bb 00 00 	mov    WORD PTR es:0xbb77,0x0
   44cf1:	26 c7 06 75 bb 00 00 	mov    WORD PTR es:0xbb75,0x0
   44cf8:	eb 1b                	jmp    0x44d15
   44cfa:	eb 19                	jmp    0x44d15
   44cfc:	6a 00                	push   0x0
   44cfe:	b8 88 01             	mov    ax,0x188
   44d01:	8e c0                	mov    es,ax
   44d03:	26 a1 18 73          	mov    ax,es:0x7318
   44d07:	f7 d8                	neg    ax
   44d09:	50                   	push   ax
   44d0a:	68 e8 03             	push   0x3e8
   44d0d:	9a 3f 07 30 00       	call   0x30:0x73f
   44d12:	83 c4 06             	add    sp,0x6
   44d15:	68 88 01             	push   0x188
   44d18:	68 2c 96             	push   0x962c
   44d1b:	68 88 01             	push   0x188
   44d1e:	68 6c 98             	push   0x986c
   44d21:	b9 48 00             	mov    cx,0x48
   44d24:	9a 7a 12 00 00       	call   0x0:0x127a
   44d29:	9a 8e 17 10 00       	call   0x10:0x178e
   44d2e:	68 88 01             	push   0x188
   44d31:	68 2c 96             	push   0x962c
   44d34:	68 88 01             	push   0x188
   44d37:	68 24 98             	push   0x9824
   44d3a:	b9 48 00             	mov    cx,0x48
   44d3d:	9a 7a 12 00 00       	call   0x0:0x127a
   44d42:	8a 46 e4             	mov    al,BYTE PTR [bp-0x1c]
   44d45:	b4 00                	mov    ah,0x0
   44d47:	6b c0 0d             	imul   ax,ax,0xd
   44d4a:	05 6e 2d             	add    ax,0x2d6e
   44d4d:	68 88 01             	push   0x188
   44d50:	50                   	push   ax
   44d51:	9a 57 00 40 01       	call   0x140:0x57
   44d56:	83 c4 04             	add    sp,0x4
   44d59:	b8 88 01             	mov    ax,0x188
   44d5c:	8e c0                	mov    es,ax
   44d5e:	26 c7 06 18 73 40 00 	mov    WORD PTR es:0x7318,0x40
   44d65:	6a 00                	push   0x0
   44d67:	b8 88 01             	mov    ax,0x188
   44d6a:	8e c0                	mov    es,ax
   44d6c:	26 a1 18 73          	mov    ax,es:0x7318
   44d70:	f7 d8                	neg    ax
   44d72:	50                   	push   ax
   44d73:	68 e8 03             	push   0x3e8
   44d76:	9a 3f 07 30 00       	call   0x30:0x73f
   44d7b:	83 c4 06             	add    sp,0x6
   44d7e:	9a 8e 17 10 00       	call   0x10:0x178e
   44d83:	6a 00                	push   0x0
   44d85:	b8 88 01             	mov    ax,0x188
   44d88:	8e c0                	mov    es,ax
   44d8a:	26 ff 36 6b bb       	push   WORD PTR es:0xbb6b
   44d8f:	9a 2a 00 18 01       	call   0x118:0x2a
   44d94:	83 c4 04             	add    sp,0x4
   44d97:	9a 7a 00 18 01       	call   0x118:0x7a
   44d9c:	b8 88 01             	mov    ax,0x188
   44d9f:	8e c0                	mov    es,ax
   44da1:	26 c7 06 c8 b9 00 00 	mov    WORD PTR es:0xb9c8,0x0
   44da8:	e9 23 09             	jmp    0x456ce
   44dab:	e9 20 09             	jmp    0x456ce
   44dae:	1e                   	push   ds
   44daf:	68 74 60             	push   0x6074
   44db2:	9a 53 42 00 00       	call   0x0:0x4253
   44db7:	83 c4 04             	add    sp,0x4
   44dba:	9a d7 29 00 00       	call   0x0:0x29d7
   44dbf:	90                   	nop
   44dc0:	0e                   	push   cs
   44dc1:	e8 0f 37             	call   0x484d3
   44dc4:	88 46 e4             	mov    BYTE PTR [bp-0x1c],al
   44dc7:	6a 00                	push   0x0
   44dc9:	68 00 80             	push   0x8000
   44dcc:	9a 79 17 00 00       	call   0x0:0x1779
   44dd1:	99                   	cwd
   44dd2:	8a 5e e4             	mov    bl,BYTE PTR [bp-0x1c]
   44dd5:	b7 00                	mov    bh,0x0
   44dd7:	50                   	push   ax
   44dd8:	8b c3                	mov    ax,bx
   44dda:	52                   	push   dx
   44ddb:	99                   	cwd
   44ddc:	59                   	pop    cx
   44ddd:	5b                   	pop    bx
   44dde:	9a 42 12 00 00       	call   0x0:0x1242
   44de3:	52                   	push   dx
   44de4:	50                   	push   ax
   44de5:	9a df 12 00 00       	call   0x0:0x12df
   44dea:	40                   	inc    ax
   44deb:	a3 9e bb             	mov    ds:0xbb9e,ax
   44dee:	e9 dd 08             	jmp    0x456ce
   44df1:	c6 46 e9 00          	mov    BYTE PTR [bp-0x17],0x0
   44df5:	eb 25                	jmp    0x44e1c
   44df7:	90                   	nop
   44df8:	0e                   	push   cs
   44df9:	e8 d7 36             	call   0x484d3
   44dfc:	b4 00                	mov    ah,0x0
   44dfe:	50                   	push   ax
   44dff:	90                   	nop
   44e00:	0e                   	push   cs
   44e01:	e8 09 39             	call   0x4870d
   44e04:	59                   	pop    cx
   44e05:	8a 5e e9             	mov    bl,BYTE PTR [bp-0x17]
   44e08:	b7 00                	mov    bh,0x0
   44e0a:	c1 e3 02             	shl    bx,0x2
   44e0d:	8d 4e b2             	lea    cx,[bp-0x4e]
   44e10:	03 d9                	add    bx,cx
   44e12:	36 89 57 02          	mov    WORD PTR ss:[bx+0x2],dx
   44e16:	36 89 07             	mov    WORD PTR ss:[bx],ax
   44e19:	fe 46 e9             	inc    BYTE PTR [bp-0x17]
   44e1c:	80 7e e9 06          	cmp    BYTE PTR [bp-0x17],0x6
   44e20:	72 d5                	jb     0x44df7
   44e22:	16                   	push   ss
   44e23:	8d 46 b2             	lea    ax,[bp-0x4e]
   44e26:	50                   	push   ax
   44e27:	90                   	nop
   44e28:	0e                   	push   cs
   44e29:	e8 c9 3a             	call   0x488f5
   44e2c:	83 c4 04             	add    sp,0x4
   44e2f:	b4 00                	mov    ah,0x0
   44e31:	a3 9e bb             	mov    ds:0xbb9e,ax
   44e34:	c6 46 e9 05          	mov    BYTE PTR [bp-0x17],0x5
   44e38:	eb 21                	jmp    0x44e5b
   44e3a:	8a 46 e9             	mov    al,BYTE PTR [bp-0x17]
   44e3d:	b4 00                	mov    ah,0x0
   44e3f:	c1 e0 02             	shl    ax,0x2
   44e42:	8d 56 b2             	lea    dx,[bp-0x4e]
   44e45:	03 c2                	add    ax,dx
   44e47:	8b d8                	mov    bx,ax
   44e49:	36 ff 77 02          	push   WORD PTR ss:[bx+0x2]
   44e4d:	36 ff 37             	push   WORD PTR ss:[bx]
   44e50:	9a c2 24 00 00       	call   0x0:0x24c2
   44e55:	83 c4 04             	add    sp,0x4
   44e58:	fe 4e e9             	dec    BYTE PTR [bp-0x17]
   44e5b:	80 7e e9 06          	cmp    BYTE PTR [bp-0x17],0x6
   44e5f:	72 d9                	jb     0x44e3a
   44e61:	e9 6a 08             	jmp    0x456ce
   44e64:	90                   	nop
   44e65:	0e                   	push   cs
   44e66:	e8 6a 36             	call   0x484d3
   44e69:	88 46 e4             	mov    BYTE PTR [bp-0x1c],al
   44e6c:	90                   	nop
   44e6d:	0e                   	push   cs
   44e6e:	e8 62 36             	call   0x484d3
   44e71:	88 46 e3             	mov    BYTE PTR [bp-0x1d],al
   44e74:	90                   	nop
   44e75:	0e                   	push   cs
   44e76:	e8 5a 36             	call   0x484d3
   44e79:	88 46 e2             	mov    BYTE PTR [bp-0x1e],al
   44e7c:	8a 46 e4             	mov    al,BYTE PTR [bp-0x1c]
   44e7f:	b4 00                	mov    ah,0x0
   44e81:	50                   	push   ax
   44e82:	8a 46 e3             	mov    al,BYTE PTR [bp-0x1d]
   44e85:	b4 00                	mov    ah,0x0
   44e87:	50                   	push   ax
   44e88:	8a 46 e2             	mov    al,BYTE PTR [bp-0x1e]
   44e8b:	b4 00                	mov    ah,0x0
   44e8d:	50                   	push   ax
   44e8e:	90                   	nop
   44e8f:	0e                   	push   cs
   44e90:	e8 c0 2e             	call   0x47d53
   44e93:	83 c4 06             	add    sp,0x6
   44e96:	88 46 e9             	mov    BYTE PTR [bp-0x17],al
   44e99:	80 7e e9 05          	cmp    BYTE PTR [bp-0x17],0x5
   44e9d:	73 0b                	jae    0x44eaa
   44e9f:	8a 46 e9             	mov    al,BYTE PTR [bp-0x17]
   44ea2:	b4 00                	mov    ah,0x0
   44ea4:	a3 9c bb             	mov    ds:0xbb9c,ax
   44ea7:	e9 24 08             	jmp    0x456ce
   44eaa:	e9 ed 07             	jmp    0x4569a
   44ead:	e9 1e 08             	jmp    0x456ce
   44eb0:	90                   	nop
   44eb1:	0e                   	push   cs
   44eb2:	e8 1e 36             	call   0x484d3
   44eb5:	88 46 e4             	mov    BYTE PTR [bp-0x1c],al
   44eb8:	90                   	nop
   44eb9:	0e                   	push   cs
   44eba:	e8 16 36             	call   0x484d3
   44ebd:	88 46 e3             	mov    BYTE PTR [bp-0x1d],al
   44ec0:	8a 46 e3             	mov    al,BYTE PTR [bp-0x1d]
   44ec3:	b4 00                	mov    ah,0x0
   44ec5:	50                   	push   ax
   44ec6:	8a 46 e4             	mov    al,BYTE PTR [bp-0x1c]
   44ec9:	b4 00                	mov    ah,0x0
   44ecb:	50                   	push   ax
   44ecc:	6a 00                	push   0x0
   44ece:	90                   	nop
   44ecf:	0e                   	push   cs
   44ed0:	e8 80 2e             	call   0x47d53
   44ed3:	83 c4 06             	add    sp,0x6
   44ed6:	a3 9c bb             	mov    ds:0xbb9c,ax
   44ed9:	80 3e 0b 5c 01       	cmp    BYTE PTR ds:0x5c0b,0x1
   44ede:	77 03                	ja     0x44ee3
   44ee0:	e9 eb 07             	jmp    0x456ce
   44ee3:	ff 36 9c bb          	push   WORD PTR ds:0xbb9c
   44ee7:	8a 46 e3             	mov    al,BYTE PTR [bp-0x1d]
   44eea:	b4 00                	mov    ah,0x0
   44eec:	50                   	push   ax
   44eed:	8a 46 e4             	mov    al,BYTE PTR [bp-0x1c]
   44ef0:	b4 00                	mov    ah,0x0
   44ef2:	50                   	push   ax
   44ef3:	1e                   	push   ds
   44ef4:	68 97 60             	push   0x6097
   44ef7:	9a 53 42 00 00       	call   0x0:0x4253
   44efc:	83 c4 0a             	add    sp,0xa
   44eff:	9a d7 29 00 00       	call   0x0:0x29d7
   44f04:	e9 c7 07             	jmp    0x456ce
   44f07:	e9 c4 07             	jmp    0x456ce
   44f0a:	9a b9 1e 10 00       	call   0x10:0x1eb9
   44f0f:	6a 00                	push   0x0
   44f11:	6a 01                	push   0x1
   44f13:	1e                   	push   ds
   44f14:	68 ad 60             	push   0x60ad
   44f17:	9a 48 29 10 00       	call   0x10:0x2948
   44f1c:	83 c4 08             	add    sp,0x8
   44f1f:	6a 01                	push   0x1
   44f21:	9a 83 20 10 00       	call   0x10:0x2083
   44f26:	59                   	pop    cx
   44f27:	b4 00                	mov    ah,0x0
   44f29:	a3 9c bb             	mov    ds:0xbb9c,ax
   44f2c:	83 3e 9c bb 00       	cmp    WORD PTR ds:0xbb9c,0x0
   44f31:	74 23                	je     0x44f56
   44f33:	8b 1e 9c bb          	mov    bx,WORD PTR ds:0xbb9c
   44f37:	6b db 5c             	imul   bx,bx,0x5c
   44f3a:	b8 88 01             	mov    ax,0x188
   44f3d:	8e c0                	mov    es,ax
   44f3f:	26 83 bf e0 99 00    	cmp    WORD PTR es:[bx-0x6620],0x0
   44f45:	7f 0f                	jg     0x44f56
   44f47:	9a b9 1e 10 00       	call   0x10:0x1eb9
   44f4c:	6a 00                	push   0x0
   44f4e:	6a 01                	push   0x1
   44f50:	1e                   	push   ds
   44f51:	68 c1 60             	push   0x60c1
   44f54:	eb c1                	jmp    0x44f17
   44f56:	83 3e 9c bb 00       	cmp    WORD PTR ds:0xbb9c,0x0
   44f5b:	74 c2                	je     0x44f1f
   44f5d:	e9 6e 07             	jmp    0x456ce
   44f60:	eb bd                	jmp    0x44f1f
   44f62:	e9 69 07             	jmp    0x456ce
   44f65:	9a b9 1e 10 00       	call   0x10:0x1eb9
   44f6a:	b8 88 01             	mov    ax,0x188
   44f6d:	8e c0                	mov    es,ax
   44f6f:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   44f75:	75 03                	jne    0x44f7a
   44f77:	e9 95 00             	jmp    0x4500f
   44f7a:	b8 88 01             	mov    ax,0x188
   44f7d:	8e c0                	mov    es,ax
   44f7f:	26 a1 75 bb          	mov    ax,es:0xbb75
   44f83:	26 0b 06 77 bb       	or     ax,WORD PTR es:0xbb77
   44f88:	75 03                	jne    0x44f8d
   44f8a:	e9 82 00             	jmp    0x4500f
   44f8d:	b8 88 01             	mov    ax,0x188
   44f90:	8e c0                	mov    es,ax
   44f92:	26 a0 1a 73          	mov    al,es:0x731a
   44f96:	88 46 e3             	mov    BYTE PTR [bp-0x1d],al
   44f99:	b8 88 01             	mov    ax,0x188
   44f9c:	8e c0                	mov    es,ax
   44f9e:	26 a1 1a 73          	mov    ax,es:0x731a
   44fa2:	f7 d8                	neg    ax
   44fa4:	50                   	push   ax
   44fa5:	6a 00                	push   0x0
   44fa7:	68 e8 03             	push   0x3e8
   44faa:	9a 3f 07 30 00       	call   0x30:0x73f
   44faf:	83 c4 06             	add    sp,0x6
   44fb2:	b8 88 01             	mov    ax,0x188
   44fb5:	8e c0                	mov    es,ax
   44fb7:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   44fbd:	74 50                	je     0x4500f
   44fbf:	9a 96 12 68 00       	call   0x68:0x1296
   44fc4:	b8 88 01             	mov    ax,0x188
   44fc7:	8e c0                	mov    es,ax
   44fc9:	26 a1 75 bb          	mov    ax,es:0xbb75
   44fcd:	26 0b 06 77 bb       	or     ax,WORD PTR es:0xbb77
   44fd2:	74 3b                	je     0x4500f
   44fd4:	b8 88 01             	mov    ax,0x188
   44fd7:	8e c0                	mov    es,ax
   44fd9:	26 ff 36 77 bb       	push   WORD PTR es:0xbb77
   44fde:	26 ff 36 75 bb       	push   WORD PTR es:0xbb75
   44fe3:	9a 03 00 80 00       	call   0x80:0x3
   44fe8:	b8 88 01             	mov    ax,0x188
   44feb:	8e c0                	mov    es,ax
   44fed:	26 ff 36 77 bb       	push   WORD PTR es:0xbb77
   44ff2:	26 ff 36 75 bb       	push   WORD PTR es:0xbb75
   44ff7:	9a da 00 58 00       	call   0x58:0xda
   44ffc:	b8 88 01             	mov    ax,0x188
   44fff:	8e c0                	mov    es,ax
   45001:	26 c7 06 77 bb 00 00 	mov    WORD PTR es:0xbb77,0x0
   45008:	26 c7 06 75 bb 00 00 	mov    WORD PTR es:0xbb75,0x0
   4500f:	90                   	nop
   45010:	0e                   	push   cs
   45011:	e8 bf 34             	call   0x484d3
   45014:	b4 00                	mov    ah,0x0
   45016:	ba 88 01             	mov    dx,0x188
   45019:	8e c2                	mov    es,dx
   4501b:	26 a3 4d bb          	mov    es:0xbb4d,ax
   4501f:	3d 01 00             	cmp    ax,0x1
   45022:	75 0f                	jne    0x45033
   45024:	b8 88 01             	mov    ax,0x188
   45027:	8e c0                	mov    es,ax
   45029:	26 a0 36 bb          	mov    al,es:0xbb36
   4502d:	b4 00                	mov    ah,0x0
   4502f:	0b c0                	or     ax,ax
   45031:	74 1e                	je     0x45051
   45033:	b8 88 01             	mov    ax,0x188
   45036:	8e c0                	mov    es,ax
   45038:	26 a0 36 bb          	mov    al,es:0xbb36
   4503c:	b4 00                	mov    ah,0x0
   4503e:	0b c0                	or     ax,ax
   45040:	75 2f                	jne    0x45071
   45042:	b8 88 01             	mov    ax,0x188
   45045:	8e c0                	mov    es,ax
   45047:	26 a0 38 bb          	mov    al,es:0xbb38
   4504b:	b4 00                	mov    ah,0x0
   4504d:	0b c0                	or     ax,ax
   4504f:	75 20                	jne    0x45071
   45051:	b8 88 01             	mov    ax,0x188
   45054:	8e c0                	mov    es,ax
   45056:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   4505c:	75 03                	jne    0x45061
   4505e:	e9 6d 06             	jmp    0x456ce
   45061:	8a 46 e3             	mov    al,BYTE PTR [bp-0x1d]
   45064:	b4 00                	mov    ah,0x0
   45066:	50                   	push   ax
   45067:	6a 00                	push   0x0
   45069:	6a 00                	push   0x0
   4506b:	e9 48 01             	jmp    0x451b6
   4506e:	e9 5d 06             	jmp    0x456ce
   45071:	6a 00                	push   0x0
   45073:	6a 01                	push   0x1
   45075:	b8 88 01             	mov    ax,0x188
   45078:	8e c0                	mov    es,ax
   4507a:	26 ff 36 4d bb       	push   WORD PTR es:0xbb4d
   4507f:	9a 43 00 28 01       	call   0x128:0x43
   45084:	83 c4 06             	add    sp,0x6
   45087:	b8 88 01             	mov    ax,0x188
   4508a:	8e c0                	mov    es,ax
   4508c:	26 83 3e 4d bb 01    	cmp    WORD PTR es:0xbb4d,0x1
   45092:	74 03                	je     0x45097
   45094:	e9 f6 00             	jmp    0x4518d
   45097:	b8 88 01             	mov    ax,0x188
   4509a:	8e c0                	mov    es,ax
   4509c:	26 a0 6d 3d          	mov    al,es:0x3d6d
   450a0:	88 46 e4             	mov    BYTE PTR [bp-0x1c],al
   450a3:	b8 88 01             	mov    ax,0x188
   450a6:	8e c0                	mov    es,ax
   450a8:	26 c7 06 5e 3d 20 00 	mov    WORD PTR es:0x3d5e,0x20
   450af:	b8 88 01             	mov    ax,0x188
   450b2:	8e c0                	mov    es,ax
   450b4:	26 a1 1a 73          	mov    ax,es:0x731a
   450b8:	f7 d8                	neg    ax
   450ba:	50                   	push   ax
   450bb:	b8 88 01             	mov    ax,0x188
   450be:	8e c0                	mov    es,ax
   450c0:	26 ff 36 70 3d       	push   WORD PTR es:0x3d70
   450c5:	6a 64                	push   0x64
   450c7:	9a 3f 07 30 00       	call   0x30:0x73f
   450cc:	83 c4 06             	add    sp,0x6
   450cf:	b8 88 01             	mov    ax,0x188
   450d2:	33 d2                	xor    dx,dx
   450d4:	8e c0                	mov    es,ax
   450d6:	26 89 16 6e 3d       	mov    WORD PTR es:0x3d6e,dx
   450db:	8b c2                	mov    ax,dx
   450dd:	ba 88 01             	mov    dx,0x188
   450e0:	8e c2                	mov    es,dx
   450e2:	26 a3 72 3d          	mov    es:0x3d72,ax
   450e6:	ba 88 01             	mov    dx,0x188
   450e9:	8e c2                	mov    es,dx
   450eb:	26 a3 70 3d          	mov    es:0x3d70,ax
   450ef:	9a 52 00 18 01       	call   0x118:0x52
   450f4:	b8 88 01             	mov    ax,0x188
   450f7:	8e c0                	mov    es,ax
   450f9:	26 a1 20 73          	mov    ax,es:0x7320
   450fd:	05 e2 ff             	add    ax,0xffe2
   45100:	ba 88 01             	mov    dx,0x188
   45103:	8e c2                	mov    es,dx
   45105:	26 01 06 72 3d       	add    WORD PTR es:0x3d72,ax
   4510a:	b8 88 01             	mov    ax,0x188
   4510d:	8e c0                	mov    es,ax
   4510f:	26 ff 36 72 3d       	push   WORD PTR es:0x3d72
   45114:	6a 00                	push   0x0
   45116:	6a 64                	push   0x64
   45118:	9a 3f 07 30 00       	call   0x30:0x73f
   4511d:	83 c4 06             	add    sp,0x6
   45120:	b8 88 01             	mov    ax,0x188
   45123:	8e c0                	mov    es,ax
   45125:	26 a1 22 73          	mov    ax,es:0x7322
   45129:	ba 88 01             	mov    dx,0x188
   4512c:	8e c2                	mov    es,dx
   4512e:	26 03 06 6e 3d       	add    ax,WORD PTR es:0x3d6e
   45133:	ba 88 01             	mov    dx,0x188
   45136:	8e c2                	mov    es,dx
   45138:	26 a3 1c 73          	mov    es:0x731c,ax
   4513c:	b8 88 01             	mov    ax,0x188
   4513f:	8e c0                	mov    es,ax
   45141:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   45147:	74 14                	je     0x4515d
   45149:	b8 88 01             	mov    ax,0x188
   4514c:	8e c0                	mov    es,ax
   4514e:	26 a1 1c 73          	mov    ax,es:0x731c
   45152:	c1 e0 08             	shl    ax,0x8
   45155:	99                   	cwd
   45156:	52                   	push   dx
   45157:	50                   	push   ax
   45158:	9a b9 14 68 00       	call   0x68:0x14b9
   4515d:	b8 88 01             	mov    ax,0x188
   45160:	33 d2                	xor    dx,dx
   45162:	8e c0                	mov    es,ax
   45164:	26 89 16 72 3d       	mov    WORD PTR es:0x3d72,dx
   45169:	8b c2                	mov    ax,dx
   4516b:	ba 88 01             	mov    dx,0x188
   4516e:	8e c2                	mov    es,dx
   45170:	26 a3 6e 3d          	mov    es:0x3d6e,ax
   45174:	ba 88 01             	mov    dx,0x188
   45177:	8e c2                	mov    es,dx
   45179:	26 a3 70 3d          	mov    es:0x3d70,ax
   4517d:	b8 88 01             	mov    ax,0x188
   45180:	8a 56 e4             	mov    dl,BYTE PTR [bp-0x1c]
   45183:	8e c0                	mov    es,ax
   45185:	26 88 16 6d 3d       	mov    BYTE PTR es:0x3d6d,dl
   4518a:	e9 41 05             	jmp    0x456ce
   4518d:	b8 88 01             	mov    ax,0x188
   45190:	8e c0                	mov    es,ax
   45192:	26 83 3e 4d bb 0e    	cmp    WORD PTR es:0xbb4d,0xe
   45198:	75 05                	jne    0x4519f
   4519a:	b8 14 00             	mov    ax,0x14
   4519d:	eb 02                	jmp    0x451a1
   4519f:	33 c0                	xor    ax,ax
   451a1:	ba 88 01             	mov    dx,0x188
   451a4:	8e c2                	mov    es,dx
   451a6:	26 8b 16 20 73       	mov    dx,WORD PTR es:0x7320
   451ab:	03 d0                	add    dx,ax
   451ad:	83 c2 e2             	add    dx,0xffe2
   451b0:	52                   	push   dx
   451b1:	6a 00                	push   0x0
   451b3:	68 f4 01             	push   0x1f4
   451b6:	9a 3f 07 30 00       	call   0x30:0x73f
   451bb:	83 c4 06             	add    sp,0x6
   451be:	e9 0d 05             	jmp    0x456ce
   451c1:	e9 0a 05             	jmp    0x456ce
   451c4:	90                   	nop
   451c5:	0e                   	push   cs
   451c6:	e8 0a 33             	call   0x484d3
   451c9:	88 46 e4             	mov    BYTE PTR [bp-0x1c],al
   451cc:	80 7e e4 ff          	cmp    BYTE PTR [bp-0x1c],0xff
   451d0:	75 25                	jne    0x451f7
   451d2:	b8 88 01             	mov    ax,0x188
   451d5:	33 d2                	xor    dx,dx
   451d7:	8e c0                	mov    es,ax
   451d9:	26 89 16 73 bb       	mov    WORD PTR es:0xbb73,dx
   451de:	8b c2                	mov    ax,dx
   451e0:	ba 88 01             	mov    dx,0x188
   451e3:	8e c2                	mov    es,dx
   451e5:	26 a3 71 bb          	mov    es:0xbb71,ax
   451e9:	ba 88 01             	mov    dx,0x188
   451ec:	8e c2                	mov    es,dx
   451ee:	26 a3 6f bb          	mov    es:0xbb6f,ax
   451f2:	90                   	nop
   451f3:	0e                   	push   cs
   451f4:	e8 c9 39             	call   0x48bc0
   451f7:	8a 46 e4             	mov    al,BYTE PTR [bp-0x1c]
   451fa:	b4 00                	mov    ah,0x0
   451fc:	ba 88 01             	mov    dx,0x188
   451ff:	8e c2                	mov    es,dx
   45201:	26 3b 06 73 bb       	cmp    ax,WORD PTR es:0xbb73
   45206:	7f 1d                	jg     0x45225
   45208:	c7 06 9e bb 01 00    	mov    WORD PTR ds:0xbb9e,0x1
   4520e:	8a 46 e4             	mov    al,BYTE PTR [bp-0x1c]
   45211:	b4 00                	mov    ah,0x0
   45213:	ba 88 01             	mov    dx,0x188
   45216:	8e c2                	mov    es,dx
   45218:	26 29 06 73 bb       	sub    WORD PTR es:0xbb73,ax
   4521d:	90                   	nop
   4521e:	0e                   	push   cs
   4521f:	e8 9e 39             	call   0x48bc0
   45222:	e9 a9 04             	jmp    0x456ce
   45225:	c7 06 9e bb 00 00    	mov    WORD PTR ds:0xbb9e,0x0
   4522b:	e9 a0 04             	jmp    0x456ce
   4522e:	e9 9d 04             	jmp    0x456ce
   45231:	b8 88 01             	mov    ax,0x188
   45234:	8e c0                	mov    es,ax
   45236:	26 a1 1a 73          	mov    ax,es:0x731a
   4523a:	f7 d8                	neg    ax
   4523c:	50                   	push   ax
   4523d:	b8 88 01             	mov    ax,0x188
   45240:	8e c0                	mov    es,ax
   45242:	26 a1 18 73          	mov    ax,es:0x7318
   45246:	f7 d8                	neg    ax
   45248:	50                   	push   ax
   45249:	68 e8 03             	push   0x3e8
   4524c:	9a 3f 07 30 00       	call   0x30:0x73f
   45251:	83 c4 06             	add    sp,0x6
   45254:	9a b9 1e 10 00       	call   0x10:0x1eb9
   45259:	b8 88 01             	mov    ax,0x188
   4525c:	8e c0                	mov    es,ax
   4525e:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   45264:	74 50                	je     0x452b6
   45266:	9a 96 12 68 00       	call   0x68:0x1296
   4526b:	b8 88 01             	mov    ax,0x188
   4526e:	8e c0                	mov    es,ax
   45270:	26 a1 75 bb          	mov    ax,es:0xbb75
   45274:	26 0b 06 77 bb       	or     ax,WORD PTR es:0xbb77
   45279:	74 3b                	je     0x452b6
   4527b:	b8 88 01             	mov    ax,0x188
   4527e:	8e c0                	mov    es,ax
   45280:	26 ff 36 77 bb       	push   WORD PTR es:0xbb77
   45285:	26 ff 36 75 bb       	push   WORD PTR es:0xbb75
   4528a:	9a 03 00 80 00       	call   0x80:0x3
   4528f:	b8 88 01             	mov    ax,0x188
   45292:	8e c0                	mov    es,ax
   45294:	26 ff 36 77 bb       	push   WORD PTR es:0xbb77
   45299:	26 ff 36 75 bb       	push   WORD PTR es:0xbb75
   4529e:	9a da 00 58 00       	call   0x58:0xda
   452a3:	b8 88 01             	mov    ax,0x188
   452a6:	8e c0                	mov    es,ax
   452a8:	26 c7 06 77 bb 00 00 	mov    WORD PTR es:0xbb77,0x0
   452af:	26 c7 06 75 bb 00 00 	mov    WORD PTR es:0xbb75,0x0
   452b6:	9a 66 00 10 01       	call   0x110:0x66
   452bb:	1e                   	push   ds
   452bc:	68 e1 60             	push   0x60e1
   452bf:	68 2f 03             	push   0x32f
   452c2:	68 88 01             	push   0x188
   452c5:	68 3f e3             	push   0xe33f
   452c8:	9a 2f 02 40 00       	call   0x40:0x22f
   452cd:	83 c4 0a             	add    sp,0xa
   452d0:	6a 0b                	push   0xb
   452d2:	9a 20 00 28 01       	call   0x128:0x20
   452d7:	59                   	pop    cx
   452d8:	6a 00                	push   0x0
   452da:	b8 88 01             	mov    ax,0x188
   452dd:	8e c0                	mov    es,ax
   452df:	26 ff 36 6b bb       	push   WORD PTR es:0xbb6b
   452e4:	9a 2a 00 18 01       	call   0x118:0x2a
   452e9:	83 c4 04             	add    sp,0x4
   452ec:	9a 7a 00 18 01       	call   0x118:0x7a
   452f1:	c6 46 e2 00          	mov    BYTE PTR [bp-0x1e],0x0
   452f5:	eb 0e                	jmp    0x45305
   452f7:	90                   	nop
   452f8:	0e                   	push   cs
   452f9:	e8 d7 31             	call   0x484d3
   452fc:	b4 00                	mov    ah,0x0
   452fe:	01 06 98 bb          	add    WORD PTR ds:0xbb98,ax
   45302:	fe 46 e2             	inc    BYTE PTR [bp-0x1e]
   45305:	80 7e e2 28          	cmp    BYTE PTR [bp-0x1e],0x28
   45309:	72 ec                	jb     0x452f7
   4530b:	e9 c0 03             	jmp    0x456ce
   4530e:	90                   	nop
   4530f:	0e                   	push   cs
   45310:	e8 61 04             	call   0x45774
   45313:	e9 b8 03             	jmp    0x456ce
   45316:	90                   	nop
   45317:	0e                   	push   cs
   45318:	e8 b8 31             	call   0x484d3
   4531b:	88 46 e4             	mov    BYTE PTR [bp-0x1c],al
   4531e:	90                   	nop
   4531f:	0e                   	push   cs
   45320:	e8 b0 31             	call   0x484d3
   45323:	b4 00                	mov    ah,0x0
   45325:	c1 e0 08             	shl    ax,0x8
   45328:	50                   	push   ax
   45329:	90                   	nop
   4532a:	0e                   	push   cs
   4532b:	e8 a5 31             	call   0x484d3
   4532e:	b4 00                	mov    ah,0x0
   45330:	5a                   	pop    dx
   45331:	03 d0                	add    dx,ax
   45333:	89 56 d2             	mov    WORD PTR [bp-0x2e],dx
   45336:	c6 46 e2 01          	mov    BYTE PTR [bp-0x1e],0x1
   4533a:	e9 ac 00             	jmp    0x453e9
   4533d:	c6 46 e1 01          	mov    BYTE PTR [bp-0x1f],0x1
   45341:	e9 99 00             	jmp    0x453dd
   45344:	8a 46 e2             	mov    al,BYTE PTR [bp-0x1e]
   45347:	b4 00                	mov    ah,0x0
   45349:	6b c0 5c             	imul   ax,ax,0x5c
   4534c:	8a 56 e1             	mov    dl,BYTE PTR [bp-0x1f]
   4534f:	b6 00                	mov    dh,0x0
   45351:	d1 e2                	shl    dx,1
   45353:	03 c2                	add    ax,dx
   45355:	ba 88 01             	mov    dx,0x188
   45358:	8b d8                	mov    bx,ax
   4535a:	8e c2                	mov    es,dx
   4535c:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   45361:	3b 46 d2             	cmp    ax,WORD PTR [bp-0x2e]
   45364:	75 74                	jne    0x453da
   45366:	8a 46 e2             	mov    al,BYTE PTR [bp-0x1e]
   45369:	b4 00                	mov    ah,0x0
   4536b:	6b c0 5c             	imul   ax,ax,0x5c
   4536e:	8a 56 e1             	mov    dl,BYTE PTR [bp-0x1f]
   45371:	b6 00                	mov    dh,0x0
   45373:	d1 e2                	shl    dx,1
   45375:	03 c2                	add    ax,dx
   45377:	ba 88 01             	mov    dx,0x188
   4537a:	8b d8                	mov    bx,ax
   4537c:	8e c2                	mov    es,dx
   4537e:	26 c7 87 ea 99 00 00 	mov    WORD PTR es:[bx-0x6616],0x0
   45385:	c6 46 e4 01          	mov    BYTE PTR [bp-0x1c],0x1
   45389:	eb 49                	jmp    0x453d4
   4538b:	8a 46 e2             	mov    al,BYTE PTR [bp-0x1e]
   4538e:	b4 00                	mov    ah,0x0
   45390:	6b c0 5c             	imul   ax,ax,0x5c
   45393:	8a 56 e4             	mov    dl,BYTE PTR [bp-0x1c]
   45396:	b6 00                	mov    dh,0x0
   45398:	d1 e2                	shl    dx,1
   4539a:	03 c2                	add    ax,dx
   4539c:	ba 88 01             	mov    dx,0x188
   4539f:	8a 5e e1             	mov    bl,BYTE PTR [bp-0x1f]
   453a2:	b7 00                	mov    bh,0x0
   453a4:	83 c3 22             	add    bx,0x22
   453a7:	8e c2                	mov    es,dx
   453a9:	87 d8                	xchg   ax,bx
   453ab:	26 39 87 e0 99       	cmp    WORD PTR es:[bx-0x6620],ax
   453b0:	75 1f                	jne    0x453d1
   453b2:	8a 46 e2             	mov    al,BYTE PTR [bp-0x1e]
   453b5:	b4 00                	mov    ah,0x0
   453b7:	6b c0 5c             	imul   ax,ax,0x5c
   453ba:	8a 56 e4             	mov    dl,BYTE PTR [bp-0x1c]
   453bd:	b6 00                	mov    dh,0x0
   453bf:	d1 e2                	shl    dx,1
   453c1:	03 c2                	add    ax,dx
   453c3:	ba 88 01             	mov    dx,0x188
   453c6:	8b d8                	mov    bx,ax
   453c8:	8e c2                	mov    es,dx
   453ca:	26 c7 87 e0 99 00 00 	mov    WORD PTR es:[bx-0x6620],0x0
   453d1:	fe 46 e4             	inc    BYTE PTR [bp-0x1c]
   453d4:	80 7e e4 04          	cmp    BYTE PTR [bp-0x1c],0x4
   453d8:	72 b1                	jb     0x4538b
   453da:	fe 46 e1             	inc    BYTE PTR [bp-0x1f]
   453dd:	80 7e e1 0a          	cmp    BYTE PTR [bp-0x1f],0xa
   453e1:	77 03                	ja     0x453e6
   453e3:	e9 5e ff             	jmp    0x45344
   453e6:	fe 46 e2             	inc    BYTE PTR [bp-0x1e]
   453e9:	80 7e e2 04          	cmp    BYTE PTR [bp-0x1e],0x4
   453ed:	77 03                	ja     0x453f2
   453ef:	e9 4b ff             	jmp    0x4533d
   453f2:	e9 d9 02             	jmp    0x456ce
   453f5:	90                   	nop
   453f6:	0e                   	push   cs
   453f7:	e8 d9 30             	call   0x484d3
   453fa:	88 46 e4             	mov    BYTE PTR [bp-0x1c],al
   453fd:	90                   	nop
   453fe:	0e                   	push   cs
   453ff:	e8 d1 30             	call   0x484d3
   45402:	88 46 e3             	mov    BYTE PTR [bp-0x1d],al
   45405:	8a 46 e4             	mov    al,BYTE PTR [bp-0x1c]
   45408:	b4 00                	mov    ah,0x0
   4540a:	50                   	push   ax
   4540b:	90                   	nop
   4540c:	0e                   	push   cs
   4540d:	e8 fd 32             	call   0x4870d
   45410:	59                   	pop    cx
   45411:	52                   	push   dx
   45412:	50                   	push   ax
   45413:	9a 3e 00 80 01       	call   0x180:0x3e
   45418:	83 c4 04             	add    sp,0x4
   4541b:	89 56 de             	mov    WORD PTR [bp-0x22],dx
   4541e:	89 46 dc             	mov    WORD PTR [bp-0x24],ax
   45421:	c6 46 e2 00          	mov    BYTE PTR [bp-0x1e],0x0
   45425:	eb 19                	jmp    0x45440
   45427:	8a 46 e2             	mov    al,BYTE PTR [bp-0x1e]
   4542a:	b4 00                	mov    ah,0x0
   4542c:	8b 56 dc             	mov    dx,WORD PTR [bp-0x24]
   4542f:	03 d0                	add    dx,ax
   45431:	ff 76 de             	push   WORD PTR [bp-0x22]
   45434:	52                   	push   dx
   45435:	9a 2f 00 80 01       	call   0x180:0x2f
   4543a:	83 c4 04             	add    sp,0x4
   4543d:	fe 46 e2             	inc    BYTE PTR [bp-0x1e]
   45440:	8a 46 e2             	mov    al,BYTE PTR [bp-0x1e]
   45443:	b4 00                	mov    ah,0x0
   45445:	50                   	push   ax
   45446:	ff 76 de             	push   WORD PTR [bp-0x22]
   45449:	ff 76 dc             	push   WORD PTR [bp-0x24]
   4544c:	9a cc 49 00 00       	call   0x0:0x49cc
   45451:	83 c4 04             	add    sp,0x4
   45454:	5a                   	pop    dx
   45455:	3b d0                	cmp    dx,ax
   45457:	72 ce                	jb     0x45427
   45459:	6a 00                	push   0x0
   4545b:	6a 32                	push   0x32
   4545d:	9a d6 25 00 00       	call   0x0:0x25d6
   45462:	83 c4 04             	add    sp,0x4
   45465:	89 56 da             	mov    WORD PTR [bp-0x26],dx
   45468:	89 46 d8             	mov    WORD PTR [bp-0x28],ax
   4546b:	1e                   	push   ds
   4546c:	68 f0 60             	push   0x60f0
   4546f:	ff 76 da             	push   WORD PTR [bp-0x26]
   45472:	ff 76 d8             	push   WORD PTR [bp-0x28]
   45475:	9a b4 48 00 00       	call   0x0:0x48b4
   4547a:	83 c4 08             	add    sp,0x8
   4547d:	80 3e aa bb 04       	cmp    BYTE PTR ds:0xbbaa,0x4
   45482:	73 16                	jae    0x4549a
   45484:	b8 88 01             	mov    ax,0x188
   45487:	8e c0                	mov    es,ax
   45489:	26 a0 58 96          	mov    al,es:0x9658
   4548d:	8a 16 aa bb          	mov    dl,BYTE PTR ds:0xbbaa
   45491:	fe c2                	inc    dl
   45493:	c0 e2 03             	shl    dl,0x3
   45496:	02 c2                	add    al,dl
   45498:	eb 12                	jmp    0x454ac
   4549a:	b8 88 01             	mov    ax,0x188
   4549d:	8e c0                	mov    es,ax
   4549f:	26 a0 58 96          	mov    al,es:0x9658
   454a3:	8a 16 aa bb          	mov    dl,BYTE PTR ds:0xbbaa
   454a7:	c0 e2 03             	shl    dl,0x3
   454aa:	02 c2                	add    al,dl
   454ac:	88 46 e2             	mov    BYTE PTR [bp-0x1e],al
   454af:	b8 88 01             	mov    ax,0x188
   454b2:	8e c0                	mov    es,ax
   454b4:	26 a1 57 e3          	mov    ax,es:0xe357
   454b8:	26 0b 06 59 e3       	or     ax,WORD PTR es:0xe359
   454bd:	75 05                	jne    0x454c4
   454bf:	9a 6a 1f 10 00       	call   0x10:0x1f6a
   454c4:	b8 88 01             	mov    ax,0x188
   454c7:	8e c0                	mov    es,ax
   454c9:	26 a1 57 e5          	mov    ax,es:0xe557
   454cd:	26 0b 06 59 e5       	or     ax,WORD PTR es:0xe559
   454d2:	74 15                	je     0x454e9
   454d4:	6a 5c                	push   0x5c
   454d6:	6a 00                	push   0x0
   454d8:	6a 00                	push   0x0
   454da:	68 97 03             	push   0x397
   454dd:	1e                   	push   ds
   454de:	68 f1 60             	push   0x60f1
   454e1:	9a 2a 00 58 01       	call   0x158:0x2a
   454e6:	83 c4 0c             	add    sp,0xc
   454e9:	6a 01                	push   0x1
   454eb:	b8 88 01             	mov    ax,0x188
   454ee:	8e c0                	mov    es,ax
   454f0:	26 ff 36 59 e3       	push   WORD PTR es:0xe359
   454f5:	26 ff 36 57 e3       	push   WORD PTR es:0xe357
   454fa:	9a f4 05 20 00       	call   0x20:0x5f4
   454ff:	83 c4 06             	add    sp,0x6
   45502:	8a 46 e4             	mov    al,BYTE PTR [bp-0x1c]
   45505:	b4 00                	mov    ah,0x0
   45507:	6b c0 0e             	imul   ax,ax,0xe
   4550a:	05 0f 00             	add    ax,0xf
   4550d:	ba 88 01             	mov    dx,0x188
   45510:	8e c2                	mov    es,dx
   45512:	26 a3 53 e5          	mov    es:0xe553,ax
   45516:	b8 88 01             	mov    ax,0x188
   45519:	8e c0                	mov    es,ax
   4551b:	26 c7 06 55 e5 0c 00 	mov    WORD PTR es:0xe555,0xc
   45522:	6a 00                	push   0x0
   45524:	b8 88 01             	mov    ax,0x188
   45527:	8e c0                	mov    es,ax
   45529:	26 a1 53 e5          	mov    ax,es:0xe553
   4552d:	ba 88 01             	mov    dx,0x188
   45530:	8e c2                	mov    es,dx
   45532:	26 f7 2e 55 e5       	imul   WORD PTR es:0xe555
   45537:	99                   	cwd
   45538:	52                   	push   dx
   45539:	50                   	push   ax
   4553a:	9a 64 01 20 00       	call   0x20:0x164
   4553f:	83 c4 06             	add    sp,0x6
   45542:	bb 88 01             	mov    bx,0x188
   45545:	8e c3                	mov    es,bx
   45547:	26 89 16 59 e5       	mov    WORD PTR es:0xe559,dx
   4554c:	26 a3 57 e5          	mov    es:0xe557,ax
   45550:	68 e0 01             	push   0x1e0
   45553:	68 d0 02             	push   0x2d0
   45556:	6a 57                	push   0x57
   45558:	6a 00                	push   0x0
   4555a:	6a 00                	push   0x0
   4555c:	6a 00                	push   0x0
   4555e:	b8 88 01             	mov    ax,0x188
   45561:	8e c0                	mov    es,ax
   45563:	26 ff 36 55 e5       	push   WORD PTR es:0xe555
   45568:	b8 88 01             	mov    ax,0x188
   4556b:	8e c0                	mov    es,ax
   4556d:	26 ff 36 53 e5       	push   WORD PTR es:0xe553
   45572:	8a 46 e2             	mov    al,BYTE PTR [bp-0x1e]
   45575:	b4 00                	mov    ah,0x0
   45577:	50                   	push   ax
   45578:	6a 03                	push   0x3
   4557a:	9a 30 04 28 00       	call   0x28:0x430
   4557f:	83 c4 14             	add    sp,0x14
   45582:	6a 57                	push   0x57
   45584:	6a 00                	push   0x0
   45586:	6a 01                	push   0x1
   45588:	6a 00                	push   0x0
   4558a:	8a 46 e2             	mov    al,BYTE PTR [bp-0x1e]
   4558d:	b4 00                	mov    ah,0x0
   4558f:	50                   	push   ax
   45590:	6a 04                	push   0x4
   45592:	8a 46 e4             	mov    al,BYTE PTR [bp-0x1c]
   45595:	b4 00                	mov    ah,0x0
   45597:	6b c0 0e             	imul   ax,ax,0xe
   4559a:	50                   	push   ax
   4559b:	6a 00                	push   0x0
   4559d:	b8 88 01             	mov    ax,0x188
   455a0:	8e c0                	mov    es,ax
   455a2:	26 a0 65 96          	mov    al,es:0x9665
   455a6:	50                   	push   ax
   455a7:	6a 01                	push   0x1
   455a9:	ff 76 da             	push   WORD PTR [bp-0x26]
   455ac:	ff 76 d8             	push   WORD PTR [bp-0x28]
   455af:	9a 4d 00 80 01       	call   0x180:0x4d
   455b4:	83 c4 18             	add    sp,0x18
   455b7:	1e                   	push   ds
   455b8:	68 00 61             	push   0x6100
   455bb:	68 9e 03             	push   0x39e
   455be:	68 88 01             	push   0x188
   455c1:	68 57 e5             	push   0xe557
   455c4:	9a 2f 02 40 00       	call   0x40:0x22f
   455c9:	83 c4 0a             	add    sp,0xa
   455cc:	6a 00                	push   0x0
   455ce:	b8 88 01             	mov    ax,0x188
   455d1:	8e c0                	mov    es,ax
   455d3:	26 ff 36 59 e3       	push   WORD PTR es:0xe359
   455d8:	26 ff 36 57 e3       	push   WORD PTR es:0xe357
   455dd:	9a f4 05 20 00       	call   0x20:0x5f4
   455e2:	83 c4 06             	add    sp,0x6
   455e5:	c6 46 e2 00          	mov    BYTE PTR [bp-0x1e],0x0
   455e9:	eb 19                	jmp    0x45604
   455eb:	8a 46 e2             	mov    al,BYTE PTR [bp-0x1e]
   455ee:	b4 00                	mov    ah,0x0
   455f0:	8b 56 d8             	mov    dx,WORD PTR [bp-0x28]
   455f3:	03 d0                	add    dx,ax
   455f5:	ff 76 da             	push   WORD PTR [bp-0x26]
   455f8:	52                   	push   dx
   455f9:	9a 2f 00 80 01       	call   0x180:0x2f
   455fe:	83 c4 04             	add    sp,0x4
   45601:	fe 46 e2             	inc    BYTE PTR [bp-0x1e]
   45604:	8a 46 e2             	mov    al,BYTE PTR [bp-0x1e]
   45607:	b4 00                	mov    ah,0x0
   45609:	50                   	push   ax
   4560a:	ff 76 da             	push   WORD PTR [bp-0x26]
   4560d:	ff 76 d8             	push   WORD PTR [bp-0x28]
   45610:	9a cc 49 00 00       	call   0x0:0x49cc
   45615:	83 c4 04             	add    sp,0x4
   45618:	5a                   	pop    dx
   45619:	3b d0                	cmp    dx,ax
   4561b:	72 ce                	jb     0x455eb
   4561d:	ff 76 de             	push   WORD PTR [bp-0x22]
   45620:	ff 76 dc             	push   WORD PTR [bp-0x24]
   45623:	ff 76 da             	push   WORD PTR [bp-0x26]
   45626:	ff 76 d8             	push   WORD PTR [bp-0x28]
   45629:	9a 4a 53 00 00       	call   0x0:0x534a
   4562e:	83 c4 08             	add    sp,0x8
   45631:	0b c0                	or     ax,ax
   45633:	74 0c                	je     0x45641
   45635:	8a 46 e3             	mov    al,BYTE PTR [bp-0x1d]
   45638:	b4 00                	mov    ah,0x0
   4563a:	50                   	push   ax
   4563b:	90                   	nop
   4563c:	0e                   	push   cs
   4563d:	e8 fb 2e             	call   0x4853b
   45640:	59                   	pop    cx
   45641:	ff 76 de             	push   WORD PTR [bp-0x22]
   45644:	ff 76 dc             	push   WORD PTR [bp-0x24]
   45647:	9a c2 24 00 00       	call   0x0:0x24c2
   4564c:	83 c4 04             	add    sp,0x4
   4564f:	ff 76 da             	push   WORD PTR [bp-0x26]
   45652:	ff 76 d8             	push   WORD PTR [bp-0x28]
   45655:	9a c2 24 00 00       	call   0x0:0x24c2
   4565a:	83 c4 04             	add    sp,0x4
   4565d:	eb 6f                	jmp    0x456ce
   4565f:	1e                   	push   ds
   45660:	68 0f 61             	push   0x610f
   45663:	9a 53 42 00 00       	call   0x0:0x4253
   45668:	83 c4 04             	add    sp,0x4
   4566b:	9a d7 29 00 00       	call   0x0:0x29d7
   45670:	90                   	nop
   45671:	0e                   	push   cs
   45672:	e8 5e 2e             	call   0x484d3
   45675:	88 46 e4             	mov    BYTE PTR [bp-0x1c],al
   45678:	8a 46 e4             	mov    al,BYTE PTR [bp-0x1c]
   4567b:	b4 00                	mov    ah,0x0
   4567d:	6b c0 32             	imul   ax,ax,0x32
   45680:	50                   	push   ax
   45681:	9a ca 2d 10 00       	call   0x10:0x2dca
   45686:	e9 73 e9             	jmp    0x43ffc
   45689:	90                   	nop
   4568a:	0e                   	push   cs
   4568b:	e8 b0 00             	call   0x4573e
   4568e:	eb 0a                	jmp    0x4569a
   45690:	9a 89 00 18 01       	call   0x118:0x89
   45695:	9a b9 1e 10 00       	call   0x10:0x1eb9
   4569a:	c7 46 f6 00 00       	mov    WORD PTR [bp-0xa],0x0
   4569f:	eb 2d                	jmp    0x456ce
   456a1:	8a 46 e5             	mov    al,BYTE PTR [bp-0x1b]
   456a4:	b4 00                	mov    ah,0x0
   456a6:	50                   	push   ax
   456a7:	1e                   	push   ds
   456a8:	68 30 61             	push   0x6130
   456ab:	68 88 01             	push   0x188
   456ae:	68 cc ba             	push   0xbacc
   456b1:	9a b4 48 00 00       	call   0x0:0x48b4
   456b6:	83 c4 0a             	add    sp,0xa
   456b9:	6a 5d                	push   0x5d
   456bb:	6a 00                	push   0x0
   456bd:	6a 00                	push   0x0
   456bf:	68 be 03             	push   0x3be
   456c2:	1e                   	push   ds
   456c3:	68 33 61             	push   0x6133
   456c6:	9a 2a 00 58 01       	call   0x158:0x2a
   456cb:	83 c4 0c             	add    sp,0xc
   456ce:	a0 93 bb             	mov    al,ds:0xbb93
   456d1:	fe 0e 93 bb          	dec    BYTE PTR ds:0xbb93
   456d5:	0a c0                	or     al,al
   456d7:	74 09                	je     0x456e2
   456d9:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   456dd:	74 03                	je     0x456e2
   456df:	e9 67 e8             	jmp    0x43f49
   456e2:	9a b9 1e 10 00       	call   0x10:0x1eb9
   456e7:	b8 88 01             	mov    ax,0x188
   456ea:	8e c0                	mov    es,ax
   456ec:	26 ff 36 c8 b9       	push   WORD PTR es:0xb9c8
   456f1:	9a 2f 00 18 01       	call   0x118:0x2f
   456f6:	59                   	pop    cx
   456f7:	8a 46 e7             	mov    al,BYTE PTR [bp-0x19]
   456fa:	c9                   	leave
   456fb:	cb                   	retf
   456fc:	16                   	push   ss
   456fd:	09 f1                	or     cx,si
   456ff:	09 52 0a             	or     WORD PTR [bp+si+0xa],dx
   45702:	77 0a                	ja     0x4570e
   45704:	7f 0a                	jg     0x45710
   45706:	d0 0a                	ror    BYTE PTR [bp+si],1
   45708:	de 0a                	fimul  WORD PTR [bp+si]
   4570a:	14 0b                	adc    al,0xb
   4570c:	d3 0f                	ror    WORD PTR [bx],cl
   4570e:	58                   	pop    ax
   4570f:	10 ec                	adc    ah,ch
   45711:	10 b6 12 67          	adc    BYTE PTR [bp+0x6712],dh
   45715:	14 67                	adc    al,0x67
   45717:	14 67                	adc    al,0x67
   45719:	14 6f                	adc    al,0x6f
   4571b:	14 78                	adc    al,0x78
   4571d:	14 27                	adc    al,0x27
   4571f:	15 3f 15             	adc    ax,0x153f
   45722:	3e 17                	ds pop ss
   45724:	81 17 f4 17          	adc    WORD PTR [bx],0x17f4
   45728:	40                   	inc    ax
   45729:	18 9a 18 f5          	sbb    BYTE PTR [bp+si-0xae8],bl
   4572d:	18 54 1b             	sbb    BYTE PTR [si+0x1b],dl
   45730:	c1 1b 9e             	rcr    WORD PTR [bp+di],0x9e
   45733:	1c a6                	sbb    al,0xa6
   45735:	1c 85                	sbb    al,0x85
   45737:	1d ef 1f             	sbb    ax,0x1fef
   4573a:	19 20                	sbb    WORD PTR [bx+si],sp
   4573c:	20 20                	and    BYTE PTR [bx+si],ah
   4573e:	55                   	push   bp
   4573f:	8b ec                	mov    bp,sp
   45741:	b8 88 01             	mov    ax,0x188
   45744:	8e c0                	mov    es,ax
   45746:	26 a1 51 bb          	mov    ax,es:0xbb51
   4574a:	ba 88 01             	mov    dx,0x188
   4574d:	8e c2                	mov    es,dx
   4574f:	26 a3 f3 b9          	mov    es:0xb9f3,ax
   45753:	b8 88 01             	mov    ax,0x188
   45756:	8e c0                	mov    es,ax
   45758:	26 a1 4f bb          	mov    ax,es:0xbb4f
   4575c:	ba 88 01             	mov    dx,0x188
   4575f:	8e c2                	mov    es,dx
   45761:	26 a3 f1 b9          	mov    es:0xb9f1,ax
   45765:	6a 01                	push   0x1
   45767:	9a 2f 00 18 01       	call   0x118:0x2f
   4576c:	59                   	pop    cx
   4576d:	9a 52 00 18 01       	call   0x118:0x52
   45772:	5d                   	pop    bp
   45773:	cb                   	retf
   45774:	55                   	push   bp
   45775:	8b ec                	mov    bp,sp
   45777:	83 ec 10             	sub    sp,0x10
   4577a:	6a 05                	push   0x5
   4577c:	6a 01                	push   0x1
   4577e:	6a 00                	push   0x0
   45780:	90                   	nop
   45781:	0e                   	push   cs
   45782:	e8 ce 25             	call   0x47d53
   45785:	83 c4 06             	add    sp,0x6
   45788:	88 46 ff             	mov    BYTE PTR [bp-0x1],al
   4578b:	8a 46 ff             	mov    al,BYTE PTR [bp-0x1]
   4578e:	b4 00                	mov    ah,0x0
   45790:	6b c0 5c             	imul   ax,ax,0x5c
   45793:	ba 88 01             	mov    dx,0x188
   45796:	8b d8                	mov    bx,ax
   45798:	8e c2                	mov    es,dx
   4579a:	26 8b 87 b0 99       	mov    ax,WORD PTR es:[bx-0x6650]
   4579f:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   457a2:	c7 46 f6 01 00       	mov    WORD PTR [bp-0xa],0x1
   457a7:	eb 17                	jmp    0x457c0
   457a9:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   457ac:	d1 e3                	shl    bx,1
   457ae:	b8 88 01             	mov    ax,0x188
   457b1:	8e c0                	mov    es,ax
   457b3:	26 8b 87 88 0c       	mov    ax,WORD PTR es:[bx+0xc88]
   457b8:	3b 46 fa             	cmp    ax,WORD PTR [bp-0x6]
   457bb:	7f 09                	jg     0x457c6
   457bd:	ff 46 f6             	inc    WORD PTR [bp-0xa]
   457c0:	83 7e f6 23          	cmp    WORD PTR [bp-0xa],0x23
   457c4:	7c e3                	jl     0x457a9
   457c6:	ff 4e f6             	dec    WORD PTR [bp-0xa]
   457c9:	c6 46 fe 00          	mov    BYTE PTR [bp-0x2],0x0
   457cd:	e9 a1 00             	jmp    0x45871
   457d0:	6a 00                	push   0x0
   457d2:	68 00 80             	push   0x8000
   457d5:	9a 79 17 00 00       	call   0x0:0x1779
   457da:	99                   	cwd
   457db:	50                   	push   ax
   457dc:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   457df:	48                   	dec    ax
   457e0:	52                   	push   dx
   457e1:	99                   	cwd
   457e2:	59                   	pop    cx
   457e3:	5b                   	pop    bx
   457e4:	9a 42 12 00 00       	call   0x0:0x1242
   457e9:	52                   	push   dx
   457ea:	50                   	push   ax
   457eb:	9a df 12 00 00       	call   0x0:0x12df
   457f0:	04 02                	add    al,0x2
   457f2:	8a 56 fe             	mov    dl,BYTE PTR [bp-0x2]
   457f5:	b6 00                	mov    dh,0x0
   457f7:	8d 5e f0             	lea    bx,[bp-0x10]
   457fa:	03 d3                	add    dx,bx
   457fc:	8b da                	mov    bx,dx
   457fe:	36 88 07             	mov    BYTE PTR ss:[bx],al
   45801:	8a 46 fe             	mov    al,BYTE PTR [bp-0x2]
   45804:	04 ff                	add    al,0xff
   45806:	88 46 fd             	mov    BYTE PTR [bp-0x3],al
   45809:	eb 28                	jmp    0x45833
   4580b:	8a 46 fe             	mov    al,BYTE PTR [bp-0x2]
   4580e:	b4 00                	mov    ah,0x0
   45810:	8d 56 f0             	lea    dx,[bp-0x10]
   45813:	03 c2                	add    ax,dx
   45815:	8b d8                	mov    bx,ax
   45817:	36 8a 07             	mov    al,BYTE PTR ss:[bx]
   4581a:	8a 56 fd             	mov    dl,BYTE PTR [bp-0x3]
   4581d:	b6 00                	mov    dh,0x0
   4581f:	8d 5e f0             	lea    bx,[bp-0x10]
   45822:	03 d3                	add    dx,bx
   45824:	8b da                	mov    bx,dx
   45826:	36 3a 07             	cmp    al,BYTE PTR ss:[bx]
   45829:	75 05                	jne    0x45830
   4582b:	fe 4e fe             	dec    BYTE PTR [bp-0x2]
   4582e:	eb 0b                	jmp    0x4583b
   45830:	fe 4e fd             	dec    BYTE PTR [bp-0x3]
   45833:	8a 46 fd             	mov    al,BYTE PTR [bp-0x3]
   45836:	3a 46 fe             	cmp    al,BYTE PTR [bp-0x2]
   45839:	76 d0                	jbe    0x4580b
   4583b:	80 7e fd ff          	cmp    BYTE PTR [bp-0x3],0xff
   4583f:	75 2d                	jne    0x4586e
   45841:	8a 46 fe             	mov    al,BYTE PTR [bp-0x2]
   45844:	b4 00                	mov    ah,0x0
   45846:	8d 56 f0             	lea    dx,[bp-0x10]
   45849:	03 c2                	add    ax,dx
   4584b:	8b d8                	mov    bx,ax
   4584d:	36 8a 07             	mov    al,BYTE PTR ss:[bx]
   45850:	b4 00                	mov    ah,0x0
   45852:	8a 56 ff             	mov    dl,BYTE PTR [bp-0x1]
   45855:	b6 00                	mov    dh,0x0
   45857:	6b d2 23             	imul   dx,dx,0x23
   4585a:	03 d0                	add    dx,ax
   4585c:	b8 88 01             	mov    ax,0x188
   4585f:	8b da                	mov    bx,dx
   45861:	8e c0                	mov    es,ax
   45863:	26 80 bf 5b 19 31    	cmp    BYTE PTR es:[bx+0x195b],0x31
   45869:	75 03                	jne    0x4586e
   4586b:	fe 4e fe             	dec    BYTE PTR [bp-0x2]
   4586e:	fe 46 fe             	inc    BYTE PTR [bp-0x2]
   45871:	80 7e fe 06          	cmp    BYTE PTR [bp-0x2],0x6
   45875:	73 03                	jae    0x4587a
   45877:	e9 56 ff             	jmp    0x457d0
   4587a:	c6 46 fe 00          	mov    BYTE PTR [bp-0x2],0x0
   4587e:	eb 35                	jmp    0x458b5
   45880:	8a 46 fe             	mov    al,BYTE PTR [bp-0x2]
   45883:	b4 00                	mov    ah,0x0
   45885:	8d 56 f0             	lea    dx,[bp-0x10]
   45888:	03 c2                	add    ax,dx
   4588a:	8b d8                	mov    bx,ax
   4588c:	36 8a 07             	mov    al,BYTE PTR ss:[bx]
   4588f:	b4 00                	mov    ah,0x0
   45891:	6b c0 1f             	imul   ax,ax,0x1f
   45894:	05 61 03             	add    ax,0x361
   45897:	68 88 01             	push   0x188
   4589a:	50                   	push   ax
   4589b:	8a 46 fe             	mov    al,BYTE PTR [bp-0x2]
   4589e:	b4 00                	mov    ah,0x0
   458a0:	6b c0 64             	imul   ax,ax,0x64
   458a3:	05 3c a6             	add    ax,0xa63c
   458a6:	68 88 01             	push   0x188
   458a9:	50                   	push   ax
   458aa:	9a a3 49 00 00       	call   0x0:0x49a3
   458af:	83 c4 08             	add    sp,0x8
   458b2:	fe 46 fe             	inc    BYTE PTR [bp-0x2]
   458b5:	80 7e fe 06          	cmp    BYTE PTR [bp-0x2],0x6
   458b9:	72 c5                	jb     0x45880
   458bb:	eb 2c                	jmp    0x458e9
   458bd:	9a b9 1e 10 00       	call   0x10:0x1eb9
   458c2:	6a 00                	push   0x0
   458c4:	6a 01                	push   0x1
   458c6:	1e                   	push   ds
   458c7:	68 42 61             	push   0x6142
   458ca:	9a 48 29 10 00       	call   0x10:0x2948
   458cf:	83 c4 08             	add    sp,0x8
   458d2:	1e                   	push   ds
   458d3:	68 77 61             	push   0x6177
   458d6:	1e                   	push   ds
   458d7:	68 67 61             	push   0x6167
   458da:	9a 98 21 10 00       	call   0x10:0x2198
   458df:	83 c4 08             	add    sp,0x8
   458e2:	83 3e 9e bb 00       	cmp    WORD PTR ds:0xbb9e,0x0
   458e7:	74 43                	je     0x4592c
   458e9:	6a 01                	push   0x1
   458eb:	6a 04                	push   0x4
   458ed:	b8 88 01             	mov    ax,0x188
   458f0:	8e c0                	mov    es,ax
   458f2:	26 a0 66 96          	mov    al,es:0x9666
   458f6:	b4 00                	mov    ah,0x0
   458f8:	50                   	push   ax
   458f9:	b8 88 01             	mov    ax,0x188
   458fc:	8e c0                	mov    es,ax
   458fe:	26 a0 64 96          	mov    al,es:0x9664
   45902:	b4 00                	mov    ah,0x0
   45904:	50                   	push   ax
   45905:	b8 88 01             	mov    ax,0x188
   45908:	8e c0                	mov    es,ax
   4590a:	26 a0 65 96          	mov    al,es:0x9665
   4590e:	b4 00                	mov    ah,0x0
   45910:	50                   	push   ax
   45911:	6a ff                	push   0xffff
   45913:	6a 02                	push   0x2
   45915:	6a 06                	push   0x6
   45917:	9a 33 11 10 00       	call   0x10:0x1133
   4591c:	83 c4 10             	add    sp,0x10
   4591f:	b8 88 01             	mov    ax,0x188
   45922:	8e c0                	mov    es,ax
   45924:	26 83 3e dc d5 00    	cmp    WORD PTR es:0xd5dc,0x0
   4592a:	74 91                	je     0x458bd
   4592c:	9a b6 06 30 00       	call   0x30:0x6b6
   45931:	9a 3e 00 18 01       	call   0x118:0x3e
   45936:	b8 88 01             	mov    ax,0x188
   45939:	8e c0                	mov    es,ax
   4593b:	26 83 3e dc d5 00    	cmp    WORD PTR es:0xd5dc,0x0
   45941:	74 41                	je     0x45984
   45943:	b8 88 01             	mov    ax,0x188
   45946:	8e c0                	mov    es,ax
   45948:	26 8b 1e dc d5       	mov    bx,WORD PTR es:0xd5dc
   4594d:	8d 46 ef             	lea    ax,[bp-0x11]
   45950:	03 d8                	add    bx,ax
   45952:	36 8a 07             	mov    al,BYTE PTR ss:[bx]
   45955:	b4 00                	mov    ah,0x0
   45957:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   4595a:	eb 02                	jmp    0x4595e
   4595c:	eb 26                	jmp    0x45984
   4595e:	9a b9 1e 10 00       	call   0x10:0x1eb9
   45963:	6a 00                	push   0x0
   45965:	6a 01                	push   0x1
   45967:	1e                   	push   ds
   45968:	68 8a 61             	push   0x618a
   4596b:	9a 48 29 10 00       	call   0x10:0x2948
   45970:	83 c4 08             	add    sp,0x8
   45973:	6a 01                	push   0x1
   45975:	9a 83 20 10 00       	call   0x10:0x2083
   4597a:	59                   	pop    cx
   4597b:	88 46 ff             	mov    BYTE PTR [bp-0x1],al
   4597e:	b4 00                	mov    ah,0x0
   45980:	0b c0                	or     ax,ax
   45982:	75 20                	jne    0x459a4
   45984:	9a b9 1e 10 00       	call   0x10:0x1eb9
   45989:	6a 00                	push   0x0
   4598b:	6a 01                	push   0x1
   4598d:	1e                   	push   ds
   4598e:	68 9a 61             	push   0x619a
   45991:	9a 48 29 10 00       	call   0x10:0x2948
   45996:	83 c4 08             	add    sp,0x8
   45999:	68 8c 00             	push   0x8c
   4599c:	9a ca 2d 10 00       	call   0x10:0x2dca
   459a1:	59                   	pop    cx
   459a2:	eb 77                	jmp    0x45a1b
   459a4:	8a 46 ff             	mov    al,BYTE PTR [bp-0x1]
   459a7:	b4 00                	mov    ah,0x0
   459a9:	6b c0 5c             	imul   ax,ax,0x5c
   459ac:	ba 88 01             	mov    dx,0x188
   459af:	8b d8                	mov    bx,ax
   459b1:	8e c2                	mov    es,dx
   459b3:	26 83 bf e0 99 00    	cmp    WORD PTR es:[bx-0x6620],0x0
   459b9:	7f 47                	jg     0x45a02
   459bb:	9a b9 1e 10 00       	call   0x10:0x1eb9
   459c0:	8a 46 ff             	mov    al,BYTE PTR [bp-0x1]
   459c3:	b4 00                	mov    ah,0x0
   459c5:	6b c0 5c             	imul   ax,ax,0x5c
   459c8:	ba 88 01             	mov    dx,0x188
   459cb:	8b d8                	mov    bx,ax
   459cd:	8e c2                	mov    es,dx
   459cf:	26 83 bf e0 99 fb    	cmp    WORD PTR es:[bx-0x6620],0xfffb
   459d5:	7f 0a                	jg     0x459e1
   459d7:	6a 00                	push   0x0
   459d9:	6a 01                	push   0x1
   459db:	1e                   	push   ds
   459dc:	68 be 61             	push   0x61be
   459df:	eb 08                	jmp    0x459e9
   459e1:	6a 00                	push   0x0
   459e3:	6a 01                	push   0x1
   459e5:	1e                   	push   ds
   459e6:	68 d1 61             	push   0x61d1
   459e9:	9a 48 29 10 00       	call   0x10:0x2948
   459ee:	83 c4 08             	add    sp,0x8
   459f1:	68 8c 00             	push   0x8c
   459f4:	9a ca 2d 10 00       	call   0x10:0x2dca
   459f9:	59                   	pop    cx
   459fa:	e9 61 ff             	jmp    0x4595e
   459fd:	eb 03                	jmp    0x45a02
   459ff:	e9 5c ff             	jmp    0x4595e
   45a02:	8a 46 ff             	mov    al,BYTE PTR [bp-0x1]
   45a05:	b4 00                	mov    ah,0x0
   45a07:	69 c0 94 00          	imul   ax,ax,0x94
   45a0b:	03 46 f8             	add    ax,WORD PTR [bp-0x8]
   45a0e:	ba 88 01             	mov    dx,0x188
   45a11:	8b d8                	mov    bx,ax
   45a13:	8e c2                	mov    es,dx
   45a15:	26 c6 87 94 9c 31    	mov    BYTE PTR es:[bx-0x636c],0x31
   45a1b:	9a b9 1e 10 00       	call   0x10:0x1eb9
   45a20:	c9                   	leave
   45a21:	cb                   	retf
   45a22:	55                   	push   bp
   45a23:	8b ec                	mov    bp,sp
   45a25:	b8 88 01             	mov    ax,0x188
   45a28:	8e c0                	mov    es,ax
   45a2a:	26 a1 e3 e5          	mov    ax,es:0xe5e3
   45a2e:	5d                   	pop    bp
   45a2f:	cb                   	retf
   45a30:	55                   	push   bp
   45a31:	8b ec                	mov    bp,sp
   45a33:	83 ec 04             	sub    sp,0x4
   45a36:	b8 88 01             	mov    ax,0x188
   45a39:	8e c0                	mov    es,ax
   45a3b:	26 c7 06 4b bb b1 00 	mov    WORD PTR es:0xbb4b,0xb1
   45a42:	b8 88 01             	mov    ax,0x188
   45a45:	8e c0                	mov    es,ax
   45a47:	26 c7 06 49 bb 1b 00 	mov    WORD PTR es:0xbb49,0x1b
   45a4e:	b8 88 01             	mov    ax,0x188
   45a51:	8e c0                	mov    es,ax
   45a53:	26 c7 06 47 bb 22 00 	mov    WORD PTR es:0xbb47,0x22
   45a5a:	b8 88 01             	mov    ax,0x188
   45a5d:	8e c0                	mov    es,ax
   45a5f:	26 c7 06 45 bb 00 00 	mov    WORD PTR es:0xbb45,0x0
   45a66:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   45a6b:	e9 92 01             	jmp    0x45c00
   45a6e:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   45a71:	6b db 5c             	imul   bx,bx,0x5c
   45a74:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   45a77:	d1 e0                	shl    ax,1
   45a79:	03 d8                	add    bx,ax
   45a7b:	b8 88 01             	mov    ax,0x188
   45a7e:	8e c0                	mov    es,ax
   45a80:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   45a85:	bb 64 00             	mov    bx,0x64
   45a88:	99                   	cwd
   45a89:	f7 fb                	idiv   bx
   45a8b:	89 56 fc             	mov    WORD PTR [bp-0x4],dx
   45a8e:	83 7e fc 2b          	cmp    WORD PTR [bp-0x4],0x2b
   45a92:	75 07                	jne    0x45a9b
   45a94:	c7 46 fc 22 00       	mov    WORD PTR [bp-0x4],0x22
   45a99:	eb 0a                	jmp    0x45aa5
   45a9b:	83 7e fc 20          	cmp    WORD PTR [bp-0x4],0x20
   45a9f:	7e 04                	jle    0x45aa5
   45aa1:	83 46 fc 02          	add    WORD PTR [bp-0x4],0x2
   45aa5:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   45aa8:	c1 e3 03             	shl    bx,0x3
   45aab:	b8 88 01             	mov    ax,0x188
   45aae:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   45ab1:	4a                   	dec    dx
   45ab2:	6b d2 11             	imul   dx,dx,0x11
   45ab5:	83 c2 07             	add    dx,0x7
   45ab8:	8e c0                	mov    es,ax
   45aba:	26 89 97 f5 e5       	mov    WORD PTR es:[bx-0x1a0b],dx
   45abf:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   45ac2:	c1 e3 03             	shl    bx,0x3
   45ac5:	b8 88 01             	mov    ax,0x188
   45ac8:	8b 16 be 5b          	mov    dx,WORD PTR ds:0x5bbe
   45acc:	83 c2 2c             	add    dx,0x2c
   45acf:	8e c0                	mov    es,ax
   45ad1:	26 89 97 f7 e5       	mov    WORD PTR es:[bx-0x1a09],dx
   45ad6:	83 7e fc 00          	cmp    WORD PTR [bp-0x4],0x0
   45ada:	74 74                	je     0x45b50
   45adc:	6a 00                	push   0x0
   45ade:	6a 53                	push   0x53
   45ae0:	6a 0f                	push   0xf
   45ae2:	6a 0f                	push   0xf
   45ae4:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   45ae7:	c1 e3 03             	shl    bx,0x3
   45aea:	b8 88 01             	mov    ax,0x188
   45aed:	8e c0                	mov    es,ax
   45aef:	26 8b 87 f7 e5       	mov    ax,WORD PTR es:[bx-0x1a09]
   45af4:	2b 06 be 5b          	sub    ax,WORD PTR ds:0x5bbe
   45af8:	50                   	push   ax
   45af9:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   45afc:	c1 e3 03             	shl    bx,0x3
   45aff:	b8 88 01             	mov    ax,0x188
   45b02:	8e c0                	mov    es,ax
   45b04:	26 ff b7 f5 e5       	push   WORD PTR es:[bx-0x1a0b]
   45b09:	9a 08 09 28 00       	call   0x28:0x908
   45b0e:	83 c4 0c             	add    sp,0xc
   45b11:	68 e0 01             	push   0x1e0
   45b14:	68 41 03             	push   0x341
   45b17:	6a 53                	push   0x53
   45b19:	6a 4b                	push   0x4b
   45b1b:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   45b1e:	c1 e3 03             	shl    bx,0x3
   45b21:	b8 88 01             	mov    ax,0x188
   45b24:	8e c0                	mov    es,ax
   45b26:	26 8b 87 f7 e5       	mov    ax,WORD PTR es:[bx-0x1a09]
   45b2b:	2b 06 be 5b          	sub    ax,WORD PTR ds:0x5bbe
   45b2f:	50                   	push   ax
   45b30:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   45b33:	c1 e3 03             	shl    bx,0x3
   45b36:	b8 88 01             	mov    ax,0x188
   45b39:	8e c0                	mov    es,ax
   45b3b:	26 ff b7 f5 e5       	push   WORD PTR es:[bx-0x1a0b]
   45b40:	6a 0f                	push   0xf
   45b42:	6a 0f                	push   0xf
   45b44:	6a 00                	push   0x0
   45b46:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   45b49:	48                   	dec    ax
   45b4a:	6b c0 0f             	imul   ax,ax,0xf
   45b4d:	50                   	push   ax
   45b4e:	eb 20                	jmp    0x45b70
   45b50:	68 e0 01             	push   0x1e0
   45b53:	68 41 03             	push   0x341
   45b56:	6a 53                	push   0x53
   45b58:	6a 4b                	push   0x4b
   45b5a:	6a 2c                	push   0x2c
   45b5c:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   45b5f:	48                   	dec    ax
   45b60:	6b c0 11             	imul   ax,ax,0x11
   45b63:	05 07 00             	add    ax,0x7
   45b66:	50                   	push   ax
   45b67:	6a 0f                	push   0xf
   45b69:	6a 0f                	push   0xf
   45b6b:	6a 00                	push   0x0
   45b6d:	68 e0 01             	push   0x1e0
   45b70:	9a 30 04 28 00       	call   0x28:0x430
   45b75:	83 c4 14             	add    sp,0x14
   45b78:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   45b7b:	c1 e3 03             	shl    bx,0x3
   45b7e:	b8 88 01             	mov    ax,0x188
   45b81:	8b 16 c0 5b          	mov    dx,WORD PTR ds:0x5bc0
   45b85:	8e c0                	mov    es,ax
   45b87:	26 01 97 f5 e5       	add    WORD PTR es:[bx-0x1a0b],dx
   45b8c:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   45b8f:	c1 e3 03             	shl    bx,0x3
   45b92:	b8 88 01             	mov    ax,0x188
   45b95:	8e c0                	mov    es,ax
   45b97:	26 8b 87 f7 e5       	mov    ax,WORD PTR es:[bx-0x1a09]
   45b9c:	ba 88 01             	mov    dx,0x188
   45b9f:	52                   	push   dx
   45ba0:	99                   	cwd
   45ba1:	07                   	pop    es
   45ba2:	26 f7 3e 9d e2       	idiv   WORD PTR es:0xe29d
   45ba7:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   45baa:	c1 e3 03             	shl    bx,0x3
   45bad:	b8 88 01             	mov    ax,0x188
   45bb0:	8e c0                	mov    es,ax
   45bb2:	26 89 97 f7 e5       	mov    WORD PTR es:[bx-0x1a09],dx
   45bb7:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   45bba:	c1 e3 03             	shl    bx,0x3
   45bbd:	b8 88 01             	mov    ax,0x188
   45bc0:	8e c0                	mov    es,ax
   45bc2:	26 8b 87 f5 e5       	mov    ax,WORD PTR es:[bx-0x1a0b]
   45bc7:	05 0f 00             	add    ax,0xf
   45bca:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   45bcd:	c1 e3 03             	shl    bx,0x3
   45bd0:	ba 88 01             	mov    dx,0x188
   45bd3:	8e c2                	mov    es,dx
   45bd5:	26 89 87 f9 e5       	mov    WORD PTR es:[bx-0x1a07],ax
   45bda:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   45bdd:	c1 e3 03             	shl    bx,0x3
   45be0:	b8 88 01             	mov    ax,0x188
   45be3:	8e c0                	mov    es,ax
   45be5:	26 8b 87 f7 e5       	mov    ax,WORD PTR es:[bx-0x1a09]
   45bea:	05 0f 00             	add    ax,0xf
   45bed:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   45bf0:	c1 e3 03             	shl    bx,0x3
   45bf3:	ba 88 01             	mov    dx,0x188
   45bf6:	8e c2                	mov    es,dx
   45bf8:	26 89 87 fb e5       	mov    WORD PTR es:[bx-0x1a05],ax
   45bfd:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   45c00:	83 7e fe 0a          	cmp    WORD PTR [bp-0x2],0xa
   45c04:	7f 03                	jg     0x45c09
   45c06:	e9 65 fe             	jmp    0x45a6e
   45c09:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   45c0e:	e9 fa 01             	jmp    0x45e0b
   45c11:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   45c14:	c1 e3 03             	shl    bx,0x3
   45c17:	b8 88 01             	mov    ax,0x188
   45c1a:	53                   	push   bx
   45c1b:	50                   	push   ax
   45c1c:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   45c1f:	48                   	dec    ax
   45c20:	ba 88 01             	mov    dx,0x188
   45c23:	8e c2                	mov    es,dx
   45c25:	26 f7 2e 47 bb       	imul   WORD PTR es:0xbb47
   45c2a:	ba 88 01             	mov    dx,0x188
   45c2d:	8e c2                	mov    es,dx
   45c2f:	26 8b 16 4b bb       	mov    dx,WORD PTR es:0xbb4b
   45c34:	03 d0                	add    dx,ax
   45c36:	03 16 c0 5b          	add    dx,WORD PTR ds:0x5bc0
   45c3a:	07                   	pop    es
   45c3b:	5b                   	pop    bx
   45c3c:	26 89 97 9d e6       	mov    WORD PTR es:[bx-0x1963],dx
   45c41:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   45c44:	48                   	dec    ax
   45c45:	ba 88 01             	mov    dx,0x188
   45c48:	8e c2                	mov    es,dx
   45c4a:	26 f7 2e 45 bb       	imul   WORD PTR es:0xbb45
   45c4f:	ba 88 01             	mov    dx,0x188
   45c52:	8e c2                	mov    es,dx
   45c54:	50                   	push   ax
   45c55:	26 a1 49 bb          	mov    ax,es:0xbb49
   45c59:	03 06 be 5b          	add    ax,WORD PTR ds:0x5bbe
   45c5d:	5a                   	pop    dx
   45c5e:	03 c2                	add    ax,dx
   45c60:	ba 88 01             	mov    dx,0x188
   45c63:	52                   	push   dx
   45c64:	99                   	cwd
   45c65:	07                   	pop    es
   45c66:	26 f7 3e 9d e2       	idiv   WORD PTR es:0xe29d
   45c6b:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   45c6e:	c1 e3 03             	shl    bx,0x3
   45c71:	b8 88 01             	mov    ax,0x188
   45c74:	8e c0                	mov    es,ax
   45c76:	26 89 97 9f e6       	mov    WORD PTR es:[bx-0x1961],dx
   45c7b:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   45c7e:	c1 e3 03             	shl    bx,0x3
   45c81:	b8 88 01             	mov    ax,0x188
   45c84:	8e c0                	mov    es,ax
   45c86:	26 8b 87 9d e6       	mov    ax,WORD PTR es:[bx-0x1963]
   45c8b:	05 20 00             	add    ax,0x20
   45c8e:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   45c91:	c1 e3 03             	shl    bx,0x3
   45c94:	ba 88 01             	mov    dx,0x188
   45c97:	8e c2                	mov    es,dx
   45c99:	26 89 87 a1 e6       	mov    WORD PTR es:[bx-0x195f],ax
   45c9e:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   45ca1:	c1 e3 03             	shl    bx,0x3
   45ca4:	b8 88 01             	mov    ax,0x188
   45ca7:	8e c0                	mov    es,ax
   45ca9:	26 8b 87 9f e6       	mov    ax,WORD PTR es:[bx-0x1961]
   45cae:	05 20 00             	add    ax,0x20
   45cb1:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   45cb4:	c1 e3 03             	shl    bx,0x3
   45cb7:	ba 88 01             	mov    dx,0x188
   45cba:	8e c2                	mov    es,dx
   45cbc:	26 89 87 a3 e6       	mov    WORD PTR es:[bx-0x195d],ax
   45cc1:	68 e0 01             	push   0x1e0
   45cc4:	68 d0 02             	push   0x2d0
   45cc7:	6a 53                	push   0x53
   45cc9:	8a 46 fe             	mov    al,BYTE PTR [bp-0x2]
   45ccc:	04 46                	add    al,0x46
   45cce:	50                   	push   ax
   45ccf:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   45cd2:	48                   	dec    ax
   45cd3:	ba 88 01             	mov    dx,0x188
   45cd6:	8e c2                	mov    es,dx
   45cd8:	26 f7 2e 45 bb       	imul   WORD PTR es:0xbb45
   45cdd:	ba 88 01             	mov    dx,0x188
   45ce0:	8e c2                	mov    es,dx
   45ce2:	26 8b 16 49 bb       	mov    dx,WORD PTR es:0xbb49
   45ce7:	03 d0                	add    dx,ax
   45ce9:	52                   	push   dx
   45cea:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   45ced:	48                   	dec    ax
   45cee:	ba 88 01             	mov    dx,0x188
   45cf1:	8e c2                	mov    es,dx
   45cf3:	26 f7 2e 47 bb       	imul   WORD PTR es:0xbb47
   45cf8:	ba 88 01             	mov    dx,0x188
   45cfb:	8e c2                	mov    es,dx
   45cfd:	26 8b 16 4b bb       	mov    dx,WORD PTR es:0xbb4b
   45d02:	03 d0                	add    dx,ax
   45d04:	52                   	push   dx
   45d05:	6a 20                	push   0x20
   45d07:	6a 20                	push   0x20
   45d09:	6a 00                	push   0x0
   45d0b:	6a 00                	push   0x0
   45d0d:	9a 30 04 28 00       	call   0x28:0x430
   45d12:	83 c4 14             	add    sp,0x14
   45d15:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   45d18:	6b db 5c             	imul   bx,bx,0x5c
   45d1b:	b8 88 01             	mov    ax,0x188
   45d1e:	8e c0                	mov    es,ax
   45d20:	26 83 bf e0 99 fb    	cmp    WORD PTR es:[bx-0x6620],0xfffb
   45d26:	7c 4e                	jl     0x45d76
   45d28:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   45d2b:	6b db 5c             	imul   bx,bx,0x5c
   45d2e:	b8 88 01             	mov    ax,0x188
   45d31:	8e c0                	mov    es,ax
   45d33:	26 83 bf e0 99 00    	cmp    WORD PTR es:[bx-0x6620],0x0
   45d39:	7e 03                	jle    0x45d3e
   45d3b:	e9 ca 00             	jmp    0x45e08
   45d3e:	68 d9 00             	push   0xd9
   45d41:	6a 53                	push   0x53
   45d43:	6a 20                	push   0x20
   45d45:	6a 20                	push   0x20
   45d47:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   45d4a:	48                   	dec    ax
   45d4b:	ba 88 01             	mov    dx,0x188
   45d4e:	8e c2                	mov    es,dx
   45d50:	26 f7 2e 45 bb       	imul   WORD PTR es:0xbb45
   45d55:	ba 88 01             	mov    dx,0x188
   45d58:	8e c2                	mov    es,dx
   45d5a:	26 8b 16 49 bb       	mov    dx,WORD PTR es:0xbb49
   45d5f:	03 d0                	add    dx,ax
   45d61:	52                   	push   dx
   45d62:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   45d65:	48                   	dec    ax
   45d66:	ba 88 01             	mov    dx,0x188
   45d69:	8e c2                	mov    es,dx
   45d6b:	26 f7 2e 47 bb       	imul   WORD PTR es:0xbb47
   45d70:	e9 80 00             	jmp    0x45df3
   45d73:	e9 92 00             	jmp    0x45e08
   45d76:	68 fd 00             	push   0xfd
   45d79:	6a 53                	push   0x53
   45d7b:	6a 20                	push   0x20
   45d7d:	6a 20                	push   0x20
   45d7f:	b8 88 01             	mov    ax,0x188
   45d82:	8e c0                	mov    es,ax
   45d84:	26 a1 45 bb          	mov    ax,es:0xbb45
   45d88:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   45d8b:	4a                   	dec    dx
   45d8c:	f7 ea                	imul   dx
   45d8e:	ba 88 01             	mov    dx,0x188
   45d91:	8e c2                	mov    es,dx
   45d93:	26 8b 16 49 bb       	mov    dx,WORD PTR es:0xbb49
   45d98:	03 d0                	add    dx,ax
   45d9a:	52                   	push   dx
   45d9b:	b8 88 01             	mov    ax,0x188
   45d9e:	8e c0                	mov    es,ax
   45da0:	26 a1 47 bb          	mov    ax,es:0xbb47
   45da4:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   45da7:	4a                   	dec    dx
   45da8:	f7 ea                	imul   dx
   45daa:	ba 88 01             	mov    dx,0x188
   45dad:	8e c2                	mov    es,dx
   45daf:	26 8b 16 4b bb       	mov    dx,WORD PTR es:0xbb4b
   45db4:	03 d0                	add    dx,ax
   45db6:	52                   	push   dx
   45db7:	9a 51 0a 30 00       	call   0x30:0xa51
   45dbc:	83 c4 0c             	add    sp,0xc
   45dbf:	68 d9 00             	push   0xd9
   45dc2:	6a 53                	push   0x53
   45dc4:	6a 20                	push   0x20
   45dc6:	6a 20                	push   0x20
   45dc8:	b8 88 01             	mov    ax,0x188
   45dcb:	8e c0                	mov    es,ax
   45dcd:	26 a1 45 bb          	mov    ax,es:0xbb45
   45dd1:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   45dd4:	4a                   	dec    dx
   45dd5:	f7 ea                	imul   dx
   45dd7:	ba 88 01             	mov    dx,0x188
   45dda:	8e c2                	mov    es,dx
   45ddc:	26 8b 16 49 bb       	mov    dx,WORD PTR es:0xbb49
   45de1:	03 d0                	add    dx,ax
   45de3:	52                   	push   dx
   45de4:	b8 88 01             	mov    ax,0x188
   45de7:	8e c0                	mov    es,ax
   45de9:	26 a1 47 bb          	mov    ax,es:0xbb47
   45ded:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   45df0:	4a                   	dec    dx
   45df1:	f7 ea                	imul   dx
   45df3:	ba 88 01             	mov    dx,0x188
   45df6:	8e c2                	mov    es,dx
   45df8:	26 8b 16 4b bb       	mov    dx,WORD PTR es:0xbb4b
   45dfd:	03 d0                	add    dx,ax
   45dff:	52                   	push   dx
   45e00:	9a 51 0a 30 00       	call   0x30:0xa51
   45e05:	83 c4 0c             	add    sp,0xc
   45e08:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   45e0b:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   45e0f:	7f 03                	jg     0x45e14
   45e11:	e9 fd fd             	jmp    0x45c11
   45e14:	68 dc 00             	push   0xdc
   45e17:	6a 53                	push   0x53
   45e19:	6a 1f                	push   0x1f
   45e1b:	6a 1f                	push   0x1f
   45e1d:	6a 1b                	push   0x1b
   45e1f:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   45e22:	48                   	dec    ax
   45e23:	6b c0 22             	imul   ax,ax,0x22
   45e26:	05 b1 00             	add    ax,0xb1
   45e29:	50                   	push   ax
   45e2a:	9a 99 0b 28 00       	call   0x28:0xb99
   45e2f:	83 c4 0c             	add    sp,0xc
   45e32:	c9                   	leave
   45e33:	cb                   	retf
   45e34:	55                   	push   bp
   45e35:	8b ec                	mov    bp,sp
   45e37:	b8 88 01             	mov    ax,0x188
   45e3a:	8e c0                	mov    es,ax
   45e3c:	26 8b 1e 5c 96       	mov    bx,WORD PTR es:0x965c
   45e41:	c1 e3 03             	shl    bx,0x3
   45e44:	b8 88 01             	mov    ax,0x188
   45e47:	8e c0                	mov    es,ax
   45e49:	26 8b 87 fb e5       	mov    ax,WORD PTR es:[bx-0x1a05]
   45e4e:	ba 88 01             	mov    dx,0x188
   45e51:	8e c2                	mov    es,dx
   45e53:	26 8b 1e 5c 96       	mov    bx,WORD PTR es:0x965c
   45e58:	c1 e3 03             	shl    bx,0x3
   45e5b:	ba 88 01             	mov    dx,0x188
   45e5e:	8e c2                	mov    es,dx
   45e60:	26 2b 87 f7 e5       	sub    ax,WORD PTR es:[bx-0x1a09]
   45e65:	50                   	push   ax
   45e66:	b8 88 01             	mov    ax,0x188
   45e69:	8e c0                	mov    es,ax
   45e6b:	26 8b 1e 5c 96       	mov    bx,WORD PTR es:0x965c
   45e70:	c1 e3 03             	shl    bx,0x3
   45e73:	b8 88 01             	mov    ax,0x188
   45e76:	8e c0                	mov    es,ax
   45e78:	26 8b 87 f9 e5       	mov    ax,WORD PTR es:[bx-0x1a07]
   45e7d:	ba 88 01             	mov    dx,0x188
   45e80:	8e c2                	mov    es,dx
   45e82:	26 8b 1e 5c 96       	mov    bx,WORD PTR es:0x965c
   45e87:	c1 e3 03             	shl    bx,0x3
   45e8a:	ba 88 01             	mov    dx,0x188
   45e8d:	8e c2                	mov    es,dx
   45e8f:	26 2b 87 f5 e5       	sub    ax,WORD PTR es:[bx-0x1a0b]
   45e94:	50                   	push   ax
   45e95:	b8 88 01             	mov    ax,0x188
   45e98:	8e c0                	mov    es,ax
   45e9a:	26 8b 1e 5c 96       	mov    bx,WORD PTR es:0x965c
   45e9f:	c1 e3 03             	shl    bx,0x3
   45ea2:	b8 88 01             	mov    ax,0x188
   45ea5:	8e c0                	mov    es,ax
   45ea7:	26 ff b7 f7 e5       	push   WORD PTR es:[bx-0x1a09]
   45eac:	b8 88 01             	mov    ax,0x188
   45eaf:	8e c0                	mov    es,ax
   45eb1:	26 8b 1e 5c 96       	mov    bx,WORD PTR es:0x965c
   45eb6:	c1 e3 03             	shl    bx,0x3
   45eb9:	b8 88 01             	mov    ax,0x188
   45ebc:	8e c0                	mov    es,ax
   45ebe:	26 ff b7 f5 e5       	push   WORD PTR es:[bx-0x1a0b]
   45ec3:	9a 7d 06 30 00       	call   0x30:0x67d
   45ec8:	83 c4 08             	add    sp,0x8
   45ecb:	0a c0                	or     al,al
   45ecd:	74 05                	je     0x45ed4
   45ecf:	9a 04 02 30 00       	call   0x30:0x204
   45ed4:	6a 00                	push   0x0
   45ed6:	68 80 4d             	push   0x4d80
   45ed9:	b8 88 01             	mov    ax,0x188
   45edc:	50                   	push   ax
   45edd:	a1 be 5b             	mov    ax,ds:0x5bbe
   45ee0:	99                   	cwd
   45ee1:	07                   	pop    es
   45ee2:	26 f7 3e 9d e2       	idiv   WORD PTR es:0xe29d
   45ee7:	8b c2                	mov    ax,dx
   45ee9:	99                   	cwd
   45eea:	50                   	push   ax
   45eeb:	52                   	push   dx
   45eec:	33 d2                	xor    dx,dx
   45eee:	b8 40 01             	mov    ax,0x140
   45ef1:	59                   	pop    cx
   45ef2:	5b                   	pop    bx
   45ef3:	9a 42 12 00 00       	call   0x0:0x1242
   45ef8:	50                   	push   ax
   45ef9:	a1 c0 5b             	mov    ax,ds:0x5bc0
   45efc:	52                   	push   dx
   45efd:	99                   	cwd
   45efe:	5b                   	pop    bx
   45eff:	59                   	pop    cx
   45f00:	03 c8                	add    cx,ax
   45f02:	13 da                	adc    bx,dx
   45f04:	53                   	push   bx
   45f05:	51                   	push   cx
   45f06:	6a 00                	push   0x0
   45f08:	6a 00                	push   0x0
   45f0a:	b8 88 01             	mov    ax,0x188
   45f0d:	8e c0                	mov    es,ax
   45f0f:	26 ff 36 a1 e2       	push   WORD PTR es:0xe2a1
   45f14:	26 ff 36 9f e2       	push   WORD PTR es:0xe29f
   45f19:	b8 88 01             	mov    ax,0x188
   45f1c:	8e c0                	mov    es,ax
   45f1e:	26 ff 36 39 e5       	push   WORD PTR es:0xe539
   45f23:	26 ff 36 37 e5       	push   WORD PTR es:0xe537
   45f28:	9a c9 07 20 00       	call   0x20:0x7c9
   45f2d:	83 c4 14             	add    sp,0x14
   45f30:	b8 88 01             	mov    ax,0x188
   45f33:	8e c0                	mov    es,ax
   45f35:	26 8b 1e 5c 96       	mov    bx,WORD PTR es:0x965c
   45f3a:	c1 e3 03             	shl    bx,0x3
   45f3d:	b8 88 01             	mov    ax,0x188
   45f40:	8e c0                	mov    es,ax
   45f42:	26 8b 87 fb e5       	mov    ax,WORD PTR es:[bx-0x1a05]
   45f47:	ba 88 01             	mov    dx,0x188
   45f4a:	8e c2                	mov    es,dx
   45f4c:	26 8b 1e 5c 96       	mov    bx,WORD PTR es:0x965c
   45f51:	c1 e3 03             	shl    bx,0x3
   45f54:	ba 88 01             	mov    dx,0x188
   45f57:	8e c2                	mov    es,dx
   45f59:	26 2b 87 f7 e5       	sub    ax,WORD PTR es:[bx-0x1a09]
   45f5e:	50                   	push   ax
   45f5f:	b8 88 01             	mov    ax,0x188
   45f62:	8e c0                	mov    es,ax
   45f64:	26 8b 1e 5c 96       	mov    bx,WORD PTR es:0x965c
   45f69:	c1 e3 03             	shl    bx,0x3
   45f6c:	b8 88 01             	mov    ax,0x188
   45f6f:	8e c0                	mov    es,ax
   45f71:	26 8b 87 f9 e5       	mov    ax,WORD PTR es:[bx-0x1a07]
   45f76:	ba 88 01             	mov    dx,0x188
   45f79:	8e c2                	mov    es,dx
   45f7b:	26 8b 1e 5c 96       	mov    bx,WORD PTR es:0x965c
   45f80:	c1 e3 03             	shl    bx,0x3
   45f83:	ba 88 01             	mov    dx,0x188
   45f86:	8e c2                	mov    es,dx
   45f88:	26 2b 87 f5 e5       	sub    ax,WORD PTR es:[bx-0x1a0b]
   45f8d:	50                   	push   ax
   45f8e:	b8 88 01             	mov    ax,0x188
   45f91:	8e c0                	mov    es,ax
   45f93:	26 8b 1e 5c 96       	mov    bx,WORD PTR es:0x965c
   45f98:	c1 e3 03             	shl    bx,0x3
   45f9b:	b8 88 01             	mov    ax,0x188
   45f9e:	8e c0                	mov    es,ax
   45fa0:	26 ff b7 f7 e5       	push   WORD PTR es:[bx-0x1a09]
   45fa5:	b8 88 01             	mov    ax,0x188
   45fa8:	8e c0                	mov    es,ax
   45faa:	26 8b 1e 5c 96       	mov    bx,WORD PTR es:0x965c
   45faf:	c1 e3 03             	shl    bx,0x3
   45fb2:	b8 88 01             	mov    ax,0x188
   45fb5:	8e c0                	mov    es,ax
   45fb7:	26 ff b7 f5 e5       	push   WORD PTR es:[bx-0x1a0b]
   45fbc:	9a 7d 06 30 00       	call   0x30:0x67d
   45fc1:	83 c4 08             	add    sp,0x8
   45fc4:	0a c0                	or     al,al
   45fc6:	74 10                	je     0x45fd8
   45fc8:	b8 88 01             	mov    ax,0x188
   45fcb:	8e c0                	mov    es,ax
   45fcd:	26 a0 e3 e5          	mov    al,es:0xe5e3
   45fd1:	50                   	push   ax
   45fd2:	9a 69 00 30 00       	call   0x30:0x69
   45fd7:	59                   	pop    cx
   45fd8:	5d                   	pop    bp
   45fd9:	cb                   	retf
   45fda:	55                   	push   bp
   45fdb:	8b ec                	mov    bp,sp
   45fdd:	83 ec 06             	sub    sp,0x6
   45fe0:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   45fe5:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   45fea:	e9 8f 01             	jmp    0x4617c
   45fed:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   45ff0:	d1 e3                	shl    bx,1
   45ff2:	b8 88 01             	mov    ax,0x188
   45ff5:	8e c0                	mov    es,ax
   45ff7:	26 8b 87 55 bb       	mov    ax,WORD PTR es:[bx-0x44ab]
   45ffc:	bb 64 00             	mov    bx,0x64
   45fff:	99                   	cwd
   46000:	f7 fb                	idiv   bx
   46002:	89 56 fc             	mov    WORD PTR [bp-0x4],dx
   46005:	83 7e fc 2b          	cmp    WORD PTR [bp-0x4],0x2b
   46009:	75 07                	jne    0x46012
   4600b:	c7 46 fc 22 00       	mov    WORD PTR [bp-0x4],0x22
   46010:	eb 0a                	jmp    0x4601c
   46012:	83 7e fc 20          	cmp    WORD PTR [bp-0x4],0x20
   46016:	7e 04                	jle    0x4601c
   46018:	83 46 fc 02          	add    WORD PTR [bp-0x4],0x2
   4601c:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4601f:	c1 e3 03             	shl    bx,0x3
   46022:	b8 88 01             	mov    ax,0x188
   46025:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   46028:	4a                   	dec    dx
   46029:	6b d2 11             	imul   dx,dx,0x11
   4602c:	83 c2 07             	add    dx,0x7
   4602f:	8e c0                	mov    es,ax
   46031:	26 89 97 45 e6       	mov    WORD PTR es:[bx-0x19bb],dx
   46036:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   46039:	c1 e3 03             	shl    bx,0x3
   4603c:	b8 88 01             	mov    ax,0x188
   4603f:	8b 16 be 5b          	mov    dx,WORD PTR ds:0x5bbe
   46043:	83 c2 1b             	add    dx,0x1b
   46046:	8e c0                	mov    es,ax
   46048:	26 89 97 47 e6       	mov    WORD PTR es:[bx-0x19b9],dx
   4604d:	83 7e fc 00          	cmp    WORD PTR [bp-0x4],0x0
   46051:	74 79                	je     0x460cc
   46053:	6a 00                	push   0x0
   46055:	6a 53                	push   0x53
   46057:	6a 0f                	push   0xf
   46059:	6a 0f                	push   0xf
   4605b:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4605e:	c1 e3 03             	shl    bx,0x3
   46061:	b8 88 01             	mov    ax,0x188
   46064:	8e c0                	mov    es,ax
   46066:	26 8b 87 47 e6       	mov    ax,WORD PTR es:[bx-0x19b9]
   4606b:	2b 06 be 5b          	sub    ax,WORD PTR ds:0x5bbe
   4606f:	50                   	push   ax
   46070:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   46073:	c1 e3 03             	shl    bx,0x3
   46076:	b8 88 01             	mov    ax,0x188
   46079:	8e c0                	mov    es,ax
   4607b:	26 ff b7 45 e6       	push   WORD PTR es:[bx-0x19bb]
   46080:	9a 08 09 28 00       	call   0x28:0x908
   46085:	83 c4 0c             	add    sp,0xc
   46088:	c7 46 fa 01 00       	mov    WORD PTR [bp-0x6],0x1
   4608d:	68 e0 01             	push   0x1e0
   46090:	68 41 03             	push   0x341
   46093:	6a 53                	push   0x53
   46095:	6a 4b                	push   0x4b
   46097:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4609a:	c1 e3 03             	shl    bx,0x3
   4609d:	b8 88 01             	mov    ax,0x188
   460a0:	8e c0                	mov    es,ax
   460a2:	26 8b 87 47 e6       	mov    ax,WORD PTR es:[bx-0x19b9]
   460a7:	2b 06 be 5b          	sub    ax,WORD PTR ds:0x5bbe
   460ab:	50                   	push   ax
   460ac:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   460af:	c1 e3 03             	shl    bx,0x3
   460b2:	b8 88 01             	mov    ax,0x188
   460b5:	8e c0                	mov    es,ax
   460b7:	26 ff b7 45 e6       	push   WORD PTR es:[bx-0x19bb]
   460bc:	6a 0f                	push   0xf
   460be:	6a 0f                	push   0xf
   460c0:	6a 00                	push   0x0
   460c2:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   460c5:	48                   	dec    ax
   460c6:	6b c0 0f             	imul   ax,ax,0xf
   460c9:	50                   	push   ax
   460ca:	eb 20                	jmp    0x460ec
   460cc:	68 e0 01             	push   0x1e0
   460cf:	68 41 03             	push   0x341
   460d2:	6a 53                	push   0x53
   460d4:	6a 4b                	push   0x4b
   460d6:	6a 1b                	push   0x1b
   460d8:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   460db:	48                   	dec    ax
   460dc:	6b c0 11             	imul   ax,ax,0x11
   460df:	05 07 00             	add    ax,0x7
   460e2:	50                   	push   ax
   460e3:	6a 0f                	push   0xf
   460e5:	6a 0f                	push   0xf
   460e7:	6a 00                	push   0x0
   460e9:	68 e0 01             	push   0x1e0
   460ec:	9a 30 04 28 00       	call   0x28:0x430
   460f1:	83 c4 14             	add    sp,0x14
   460f4:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   460f7:	c1 e3 03             	shl    bx,0x3
   460fa:	b8 88 01             	mov    ax,0x188
   460fd:	8b 16 c0 5b          	mov    dx,WORD PTR ds:0x5bc0
   46101:	8e c0                	mov    es,ax
   46103:	26 01 97 45 e6       	add    WORD PTR es:[bx-0x19bb],dx
   46108:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4610b:	c1 e3 03             	shl    bx,0x3
   4610e:	b8 88 01             	mov    ax,0x188
   46111:	8e c0                	mov    es,ax
   46113:	26 8b 87 47 e6       	mov    ax,WORD PTR es:[bx-0x19b9]
   46118:	ba 88 01             	mov    dx,0x188
   4611b:	52                   	push   dx
   4611c:	99                   	cwd
   4611d:	07                   	pop    es
   4611e:	26 f7 3e 9d e2       	idiv   WORD PTR es:0xe29d
   46123:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   46126:	c1 e3 03             	shl    bx,0x3
   46129:	b8 88 01             	mov    ax,0x188
   4612c:	8e c0                	mov    es,ax
   4612e:	26 89 97 47 e6       	mov    WORD PTR es:[bx-0x19b9],dx
   46133:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   46136:	c1 e3 03             	shl    bx,0x3
   46139:	b8 88 01             	mov    ax,0x188
   4613c:	8e c0                	mov    es,ax
   4613e:	26 8b 87 45 e6       	mov    ax,WORD PTR es:[bx-0x19bb]
   46143:	05 0f 00             	add    ax,0xf
   46146:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   46149:	c1 e3 03             	shl    bx,0x3
   4614c:	ba 88 01             	mov    dx,0x188
   4614f:	8e c2                	mov    es,dx
   46151:	26 89 87 49 e6       	mov    WORD PTR es:[bx-0x19b7],ax
   46156:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   46159:	c1 e3 03             	shl    bx,0x3
   4615c:	b8 88 01             	mov    ax,0x188
   4615f:	8e c0                	mov    es,ax
   46161:	26 8b 87 47 e6       	mov    ax,WORD PTR es:[bx-0x19b9]
   46166:	05 0f 00             	add    ax,0xf
   46169:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4616c:	c1 e3 03             	shl    bx,0x3
   4616f:	ba 88 01             	mov    dx,0x188
   46172:	8e c2                	mov    es,dx
   46174:	26 89 87 4b e6       	mov    WORD PTR es:[bx-0x19b5],ax
   46179:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   4617c:	83 7e fe 0a          	cmp    WORD PTR [bp-0x2],0xa
   46180:	7f 03                	jg     0x46185
   46182:	e9 68 fe             	jmp    0x45fed
   46185:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   46188:	c9                   	leave
   46189:	cb                   	retf
   4618a:	55                   	push   bp
   4618b:	8b ec                	mov    bp,sp
   4618d:	83 ec 08             	sub    sp,0x8
   46190:	56                   	push   si
   46191:	83 7e 0c 00          	cmp    WORD PTR [bp+0xc],0x0
   46195:	75 03                	jne    0x4619a
   46197:	e9 aa 01             	jmp    0x46344
   4619a:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   4619d:	26 8b 5f 02          	mov    bx,WORD PTR es:[bx+0x2]
   461a1:	d1 e3                	shl    bx,1
   461a3:	b8 88 01             	mov    ax,0x188
   461a6:	8e c0                	mov    es,ax
   461a8:	26 83 bf 55 bb 00    	cmp    WORD PTR es:[bx-0x44ab],0x0
   461ae:	75 03                	jne    0x461b3
   461b0:	e9 91 01             	jmp    0x46344
   461b3:	8b 5e 0a             	mov    bx,WORD PTR [bp+0xa]
   461b6:	6b db 5c             	imul   bx,bx,0x5c
   461b9:	c4 76 06             	les    si,DWORD PTR [bp+0x6]
   461bc:	26 8b 44 04          	mov    ax,WORD PTR es:[si+0x4]
   461c0:	d1 e0                	shl    ax,1
   461c2:	03 d8                	add    bx,ax
   461c4:	b8 88 01             	mov    ax,0x188
   461c7:	8e c0                	mov    es,ax
   461c9:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   461ce:	bb 64 00             	mov    bx,0x64
   461d1:	99                   	cwd
   461d2:	f7 fb                	idiv   bx
   461d4:	89 56 fe             	mov    WORD PTR [bp-0x2],dx
   461d7:	83 7e fe 00          	cmp    WORD PTR [bp-0x2],0x0
   461db:	75 03                	jne    0x461e0
   461dd:	e9 a3 00             	jmp    0x46283
   461e0:	b8 88 01             	mov    ax,0x188
   461e3:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   461e6:	8e c0                	mov    es,ax
   461e8:	26 8a 87 41 10       	mov    al,BYTE PTR es:[bx+0x1041]
   461ed:	b4 00                	mov    ah,0x0
   461ef:	d1 e0                	shl    ax,1
   461f1:	05 05 00             	add    ax,0x5
   461f4:	50                   	push   ax
   461f5:	6a 00                	push   0x0
   461f7:	68 00 80             	push   0x8000
   461fa:	9a 79 17 00 00       	call   0x0:0x1779
   461ff:	99                   	cwd
   46200:	50                   	push   ax
   46201:	52                   	push   dx
   46202:	33 d2                	xor    dx,dx
   46204:	b8 0a 00             	mov    ax,0xa
   46207:	59                   	pop    cx
   46208:	5b                   	pop    bx
   46209:	9a 42 12 00 00       	call   0x0:0x1242
   4620e:	52                   	push   dx
   4620f:	50                   	push   ax
   46210:	9a df 12 00 00       	call   0x0:0x12df
   46215:	5a                   	pop    dx
   46216:	2b d0                	sub    dx,ax
   46218:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4621b:	bb 64 00             	mov    bx,0x64
   4621e:	52                   	push   dx
   4621f:	99                   	cwd
   46220:	f7 fb                	idiv   bx
   46222:	6b c0 64             	imul   ax,ax,0x64
   46225:	5a                   	pop    dx
   46226:	03 d0                	add    dx,ax
   46228:	4a                   	dec    dx
   46229:	83 fa 01             	cmp    dx,0x1
   4622c:	7d 05                	jge    0x46233
   4622e:	b8 01 00             	mov    ax,0x1
   46231:	eb 4d                	jmp    0x46280
   46233:	b8 88 01             	mov    ax,0x188
   46236:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   46239:	8e c0                	mov    es,ax
   4623b:	26 8a 87 41 10       	mov    al,BYTE PTR es:[bx+0x1041]
   46240:	b4 00                	mov    ah,0x0
   46242:	d1 e0                	shl    ax,1
   46244:	05 05 00             	add    ax,0x5
   46247:	50                   	push   ax
   46248:	6a 00                	push   0x0
   4624a:	68 00 80             	push   0x8000
   4624d:	9a 79 17 00 00       	call   0x0:0x1779
   46252:	99                   	cwd
   46253:	50                   	push   ax
   46254:	52                   	push   dx
   46255:	33 d2                	xor    dx,dx
   46257:	b8 0a 00             	mov    ax,0xa
   4625a:	59                   	pop    cx
   4625b:	5b                   	pop    bx
   4625c:	9a 42 12 00 00       	call   0x0:0x1242
   46261:	52                   	push   dx
   46262:	50                   	push   ax
   46263:	9a df 12 00 00       	call   0x0:0x12df
   46268:	8b d0                	mov    dx,ax
   4626a:	58                   	pop    ax
   4626b:	2b c2                	sub    ax,dx
   4626d:	50                   	push   ax
   4626e:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   46271:	bb 64 00             	mov    bx,0x64
   46274:	99                   	cwd
   46275:	f7 fb                	idiv   bx
   46277:	6b c0 64             	imul   ax,ax,0x64
   4627a:	8b d0                	mov    dx,ax
   4627c:	58                   	pop    ax
   4627d:	03 c2                	add    ax,dx
   4627f:	48                   	dec    ax
   46280:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   46283:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   46286:	26 8b 5f 02          	mov    bx,WORD PTR es:[bx+0x2]
   4628a:	d1 e3                	shl    bx,1
   4628c:	b8 88 01             	mov    ax,0x188
   4628f:	8e c0                	mov    es,ax
   46291:	26 8b 87 55 bb       	mov    ax,WORD PTR es:[bx-0x44ab]
   46296:	bb 64 00             	mov    bx,0x64
   46299:	99                   	cwd
   4629a:	f7 fb                	idiv   bx
   4629c:	b8 88 01             	mov    ax,0x188
   4629f:	8b da                	mov    bx,dx
   462a1:	8e c0                	mov    es,ax
   462a3:	26 8a 87 41 10       	mov    al,BYTE PTR es:[bx+0x1041]
   462a8:	b4 00                	mov    ah,0x0
   462aa:	d1 e0                	shl    ax,1
   462ac:	03 46 0e             	add    ax,WORD PTR [bp+0xe]
   462af:	2b 46 fe             	sub    ax,WORD PTR [bp-0x2]
   462b2:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   462b5:	b8 88 01             	mov    ax,0x188
   462b8:	8e c0                	mov    es,ax
   462ba:	26 a1 73 bb          	mov    ax,es:0xbb73
   462be:	3b 46 fc             	cmp    ax,WORD PTR [bp-0x4]
   462c1:	7c 65                	jl     0x46328
   462c3:	b8 88 01             	mov    ax,0x188
   462c6:	8b 56 fc             	mov    dx,WORD PTR [bp-0x4]
   462c9:	8e c0                	mov    es,ax
   462cb:	26 29 16 73 bb       	sub    WORD PTR es:0xbb73,dx
   462d0:	8a 46 0c             	mov    al,BYTE PTR [bp+0xc]
   462d3:	50                   	push   ax
   462d4:	90                   	nop
   462d5:	0e                   	push   cs
   462d6:	e8 06 01             	call   0x463df
   462d9:	59                   	pop    cx
   462da:	c7 46 f8 00 00       	mov    WORD PTR [bp-0x8],0x0
   462df:	eb 3f                	jmp    0x46320
   462e1:	8b 5e 0a             	mov    bx,WORD PTR [bp+0xa]
   462e4:	6b db 5c             	imul   bx,bx,0x5c
   462e7:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   462ea:	d1 e0                	shl    ax,1
   462ec:	03 d8                	add    bx,ax
   462ee:	b8 88 01             	mov    ax,0x188
   462f1:	c4 76 06             	les    si,DWORD PTR [bp+0x6]
   462f4:	26 8b 54 04          	mov    dx,WORD PTR es:[si+0x4]
   462f8:	83 c2 22             	add    dx,0x22
   462fb:	8e c0                	mov    es,ax
   462fd:	26 39 97 e2 99       	cmp    WORD PTR es:[bx-0x661e],dx
   46302:	75 19                	jne    0x4631d
   46304:	8b 5e 0a             	mov    bx,WORD PTR [bp+0xa]
   46307:	6b db 5c             	imul   bx,bx,0x5c
   4630a:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   4630d:	d1 e0                	shl    ax,1
   4630f:	03 d8                	add    bx,ax
   46311:	b8 88 01             	mov    ax,0x188
   46314:	8e c0                	mov    es,ax
   46316:	26 c7 87 e2 99 00 00 	mov    WORD PTR es:[bx-0x661e],0x0
   4631d:	ff 46 f8             	inc    WORD PTR [bp-0x8]
   46320:	83 7e f8 03          	cmp    WORD PTR [bp-0x8],0x3
   46324:	7c bb                	jl     0x462e1
   46326:	eb 22                	jmp    0x4634a
   46328:	1e                   	push   ds
   46329:	68 ed 61             	push   0x61ed
   4632c:	90                   	nop
   4632d:	0e                   	push   cs
   4632e:	e8 06 25             	call   0x48837
   46331:	83 c4 04             	add    sp,0x4
   46334:	0e                   	push   cs
   46335:	e8 fc fa             	call   0x45e34
   46338:	6a 3c                	push   0x3c
   4633a:	9a ca 2d 10 00       	call   0x10:0x2dca
   4633f:	59                   	pop    cx
   46340:	eb 6a                	jmp    0x463ac
   46342:	eb 68                	jmp    0x463ac
   46344:	83 7e 0c 00          	cmp    WORD PTR [bp+0xc],0x0
   46348:	75 62                	jne    0x463ac
   4634a:	8b 5e 0a             	mov    bx,WORD PTR [bp+0xa]
   4634d:	6b db 5c             	imul   bx,bx,0x5c
   46350:	c4 76 06             	les    si,DWORD PTR [bp+0x6]
   46353:	26 8b 44 04          	mov    ax,WORD PTR es:[si+0x4]
   46357:	d1 e0                	shl    ax,1
   46359:	03 d8                	add    bx,ax
   4635b:	b8 88 01             	mov    ax,0x188
   4635e:	8e c0                	mov    es,ax
   46360:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   46365:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   46368:	8b 5e 0a             	mov    bx,WORD PTR [bp+0xa]
   4636b:	6b db 5c             	imul   bx,bx,0x5c
   4636e:	c4 76 06             	les    si,DWORD PTR [bp+0x6]
   46371:	26 8b 44 04          	mov    ax,WORD PTR es:[si+0x4]
   46375:	d1 e0                	shl    ax,1
   46377:	03 d8                	add    bx,ax
   46379:	b8 88 01             	mov    ax,0x188
   4637c:	c4 76 06             	les    si,DWORD PTR [bp+0x6]
   4637f:	26 8b 74 02          	mov    si,WORD PTR es:[si+0x2]
   46383:	d1 e6                	shl    si,1
   46385:	ba 88 01             	mov    dx,0x188
   46388:	8e c2                	mov    es,dx
   4638a:	26 8b 94 55 bb       	mov    dx,WORD PTR es:[si-0x44ab]
   4638f:	8e c0                	mov    es,ax
   46391:	26 89 97 ea 99       	mov    WORD PTR es:[bx-0x6616],dx
   46396:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   46399:	26 8b 5f 02          	mov    bx,WORD PTR es:[bx+0x2]
   4639d:	d1 e3                	shl    bx,1
   4639f:	b8 88 01             	mov    ax,0x188
   463a2:	8b 56 fa             	mov    dx,WORD PTR [bp-0x6]
   463a5:	8e c0                	mov    es,ax
   463a7:	26 89 97 55 bb       	mov    WORD PTR es:[bx-0x44ab],dx
   463ac:	0e                   	push   cs
   463ad:	e8 2a fc             	call   0x45fda
   463b0:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   463b3:	33 c0                	xor    ax,ax
   463b5:	26 89 47 04          	mov    WORD PTR es:[bx+0x4],ax
   463b9:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   463bc:	26 89 47 02          	mov    WORD PTR es:[bx+0x2],ax
   463c0:	ff 76 0a             	push   WORD PTR [bp+0xa]
   463c3:	0e                   	push   cs
   463c4:	e8 69 f6             	call   0x45a30
   463c7:	59                   	pop    cx
   463c8:	0e                   	push   cs
   463c9:	e8 68 fa             	call   0x45e34
   463cc:	b8 88 01             	mov    ax,0x188
   463cf:	8e c0                	mov    es,ax
   463d1:	26 a0 71 96          	mov    al,es:0x9671
   463d5:	50                   	push   ax
   463d6:	9a 6b 02 30 00       	call   0x30:0x26b
   463db:	59                   	pop    cx
   463dc:	5e                   	pop    si
   463dd:	c9                   	leave
   463de:	cb                   	retf
   463df:	55                   	push   bp
   463e0:	8b ec                	mov    bp,sp
   463e2:	83 ec 12             	sub    sp,0x12
   463e5:	80 7e 06 00          	cmp    BYTE PTR [bp+0x6],0x0
   463e9:	74 11                	je     0x463fc
   463eb:	a0 0a 5c             	mov    al,ds:0x5c0a
   463ee:	b4 00                	mov    ah,0x0
   463f0:	0b c0                	or     ax,ax
   463f2:	75 08                	jne    0x463fc
   463f4:	90                   	nop
   463f5:	0e                   	push   cs
   463f6:	e8 c7 27             	call   0x48bc0
   463f9:	e9 93 01             	jmp    0x4658f
   463fc:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   46401:	e9 82 01             	jmp    0x46586
   46404:	80 7e 06 00          	cmp    BYTE PTR [bp+0x6],0x0
   46408:	74 33                	je     0x4643d
   4640a:	b8 03 00             	mov    ax,0x3
   4640d:	2b 46 fe             	sub    ax,WORD PTR [bp-0x2]
   46410:	6b c0 07             	imul   ax,ax,0x7
   46413:	05 c3 5b             	add    ax,0x5bc3
   46416:	1e                   	push   ds
   46417:	50                   	push   ax
   46418:	bb 04 00             	mov    bx,0x4
   4641b:	2b 5e fe             	sub    bx,WORD PTR [bp-0x2]
   4641e:	d1 e3                	shl    bx,1
   46420:	b8 88 01             	mov    ax,0x188
   46423:	8e c0                	mov    es,ax
   46425:	26 ff b7 6d bb       	push   WORD PTR es:[bx-0x4493]
   4642a:	1e                   	push   ds
   4642b:	68 fd 61             	push   0x61fd
   4642e:	16                   	push   ss
   4642f:	8d 46 ee             	lea    ax,[bp-0x12]
   46432:	50                   	push   ax
   46433:	9a b4 48 00 00       	call   0x0:0x48b4
   46438:	83 c4 0e             	add    sp,0xe
   4643b:	eb 3f                	jmp    0x4647c
   4643d:	bb 04 00             	mov    bx,0x4
   46440:	2b 5e fe             	sub    bx,WORD PTR [bp-0x2]
   46443:	d1 e3                	shl    bx,1
   46445:	b8 88 01             	mov    ax,0x188
   46448:	8e c0                	mov    es,ax
   4644a:	26 83 bf a0 bb 00    	cmp    WORD PTR es:[bx-0x4460],0x0
   46450:	74 26                	je     0x46478
   46452:	b8 03 00             	mov    ax,0x3
   46455:	2b 46 fe             	sub    ax,WORD PTR [bp-0x2]
   46458:	6b c0 07             	imul   ax,ax,0x7
   4645b:	05 c3 5b             	add    ax,0x5bc3
   4645e:	1e                   	push   ds
   4645f:	50                   	push   ax
   46460:	bb 04 00             	mov    bx,0x4
   46463:	2b 5e fe             	sub    bx,WORD PTR [bp-0x2]
   46466:	d1 e3                	shl    bx,1
   46468:	b8 88 01             	mov    ax,0x188
   4646b:	8e c0                	mov    es,ax
   4646d:	26 ff b7 a0 bb       	push   WORD PTR es:[bx-0x4460]
   46472:	1e                   	push   ds
   46473:	68 03 62             	push   0x6203
   46476:	eb b6                	jmp    0x4642e
   46478:	c6 46 ee 00          	mov    BYTE PTR [bp-0x12],0x0
   4647c:	16                   	push   ss
   4647d:	8d 46 ee             	lea    ax,[bp-0x12]
   46480:	50                   	push   ax
   46481:	9a cc 49 00 00       	call   0x0:0x49cc
   46486:	83 c4 04             	add    sp,0x4
   46489:	3d 0e 00             	cmp    ax,0xe
   4648c:	76 15                	jbe    0x464a3
   4648e:	6a 5e                	push   0x5e
   46490:	6a 00                	push   0x0
   46492:	6a 00                	push   0x0
   46494:	68 b1 04             	push   0x4b1
   46497:	1e                   	push   ds
   46498:	68 09 62             	push   0x6209
   4649b:	9a 2a 00 58 01       	call   0x158:0x2a
   464a0:	83 c4 0c             	add    sp,0xc
   464a3:	16                   	push   ss
   464a4:	8d 46 ee             	lea    ax,[bp-0x12]
   464a7:	50                   	push   ax
   464a8:	9a 3e 00 80 01       	call   0x180:0x3e
   464ad:	83 c4 04             	add    sp,0x4
   464b0:	6a 00                	push   0x0
   464b2:	6a 53                	push   0x53
   464b4:	6a 09                	push   0x9
   464b6:	6a 57                	push   0x57
   464b8:	6a 10                	push   0x10
   464ba:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   464bd:	48                   	dec    ax
   464be:	6b c0 5a             	imul   ax,ax,0x5a
   464c1:	05 2a 00             	add    ax,0x2a
   464c4:	50                   	push   ax
   464c5:	9a 08 09 28 00       	call   0x28:0x908
   464ca:	83 c4 0c             	add    sp,0xc
   464cd:	b8 01 00             	mov    ax,0x1
   464d0:	3d 01 00             	cmp    ax,0x1
   464d3:	74 08                	je     0x464dd
   464d5:	3d 02 00             	cmp    ax,0x2
   464d8:	74 59                	je     0x46533
   464da:	e9 a6 00             	jmp    0x46583
   464dd:	6a 05                	push   0x5
   464df:	b8 88 01             	mov    ax,0x188
   464e2:	8e c0                	mov    es,ax
   464e4:	26 a0 66 96          	mov    al,es:0x9666
   464e8:	b4 00                	mov    ah,0x0
   464ea:	50                   	push   ax
   464eb:	16                   	push   ss
   464ec:	8d 46 ee             	lea    ax,[bp-0x12]
   464ef:	50                   	push   ax
   464f0:	6a 0f                	push   0xf
   464f2:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   464f5:	48                   	dec    ax
   464f6:	6b c0 5a             	imul   ax,ax,0x5a
   464f9:	05 2c 00             	add    ax,0x2c
   464fc:	50                   	push   ax
   464fd:	6a 53                	push   0x53
   464ff:	9a 34 00 80 01       	call   0x180:0x34
   46504:	83 c4 0e             	add    sp,0xe
   46507:	6a 05                	push   0x5
   46509:	b8 88 01             	mov    ax,0x188
   4650c:	8e c0                	mov    es,ax
   4650e:	26 a0 65 96          	mov    al,es:0x9665
   46512:	b4 00                	mov    ah,0x0
   46514:	50                   	push   ax
   46515:	16                   	push   ss
   46516:	8d 46 ee             	lea    ax,[bp-0x12]
   46519:	50                   	push   ax
   4651a:	6a 0e                	push   0xe
   4651c:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4651f:	48                   	dec    ax
   46520:	6b c0 5a             	imul   ax,ax,0x5a
   46523:	05 2b 00             	add    ax,0x2b
   46526:	50                   	push   ax
   46527:	6a 53                	push   0x53
   46529:	9a 34 00 80 01       	call   0x180:0x34
   4652e:	83 c4 0e             	add    sp,0xe
   46531:	eb 50                	jmp    0x46583
   46533:	b8 88 01             	mov    ax,0x188
   46536:	8e c0                	mov    es,ax
   46538:	26 a0 66 96          	mov    al,es:0x9666
   4653c:	b4 00                	mov    ah,0x0
   4653e:	50                   	push   ax
   4653f:	16                   	push   ss
   46540:	8d 46 ee             	lea    ax,[bp-0x12]
   46543:	50                   	push   ax
   46544:	6a 0f                	push   0xf
   46546:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   46549:	48                   	dec    ax
   4654a:	6b c0 5a             	imul   ax,ax,0x5a
   4654d:	05 2b 00             	add    ax,0x2b
   46550:	50                   	push   ax
   46551:	6a 53                	push   0x53
   46553:	9a 39 00 80 01       	call   0x180:0x39
   46558:	83 c4 0c             	add    sp,0xc
   4655b:	b8 88 01             	mov    ax,0x188
   4655e:	8e c0                	mov    es,ax
   46560:	26 a0 65 96          	mov    al,es:0x9665
   46564:	b4 00                	mov    ah,0x0
   46566:	50                   	push   ax
   46567:	16                   	push   ss
   46568:	8d 46 ee             	lea    ax,[bp-0x12]
   4656b:	50                   	push   ax
   4656c:	6a 0e                	push   0xe
   4656e:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   46571:	48                   	dec    ax
   46572:	6b c0 5a             	imul   ax,ax,0x5a
   46575:	05 2b 00             	add    ax,0x2b
   46578:	50                   	push   ax
   46579:	6a 53                	push   0x53
   4657b:	9a 39 00 80 01       	call   0x180:0x39
   46580:	83 c4 0c             	add    sp,0xc
   46583:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   46586:	83 7e fe 03          	cmp    WORD PTR [bp-0x2],0x3
   4658a:	7f 03                	jg     0x4658f
   4658c:	e9 75 fe             	jmp    0x46404
   4658f:	c9                   	leave
   46590:	cb                   	retf
   46591:	55                   	push   bp
   46592:	8b ec                	mov    bp,sp
   46594:	83 ec 50             	sub    sp,0x50
   46597:	8d 46 b0             	lea    ax,[bp-0x50]
   4659a:	16                   	push   ss
   4659b:	50                   	push   ax
   4659c:	1e                   	push   ds
   4659d:	68 0c 5c             	push   0x5c0c
   465a0:	b9 32 00             	mov    cx,0x32
   465a3:	9a 7a 12 00 00       	call   0x0:0x127a
   465a8:	c7 46 e4 cd 00       	mov    WORD PTR [bp-0x1c],0xcd
   465ad:	6a 0f                	push   0xf
   465af:	9a ca 00 10 01       	call   0x110:0xca
   465b4:	59                   	pop    cx
   465b5:	9a b9 1e 10 00       	call   0x10:0x1eb9
   465ba:	68 88 01             	push   0x188
   465bd:	68 2c 96             	push   0x962c
   465c0:	68 88 01             	push   0x188
   465c3:	68 dc 97             	push   0x97dc
   465c6:	b9 48 00             	mov    cx,0x48
   465c9:	9a 7a 12 00 00       	call   0x0:0x127a
   465ce:	6a 00                	push   0x0
   465d0:	b8 88 01             	mov    ax,0x188
   465d3:	8e c0                	mov    es,ax
   465d5:	26 ff 36 39 e5       	push   WORD PTR es:0xe539
   465da:	26 ff 36 37 e5       	push   WORD PTR es:0xe537
   465df:	9a f4 05 20 00       	call   0x20:0x5f4
   465e4:	83 c4 06             	add    sp,0x6
   465e7:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   465ea:	b4 00                	mov    ah,0x0
   465ec:	0b c0                	or     ax,ax
   465ee:	74 10                	je     0x46600
   465f0:	3d 01 00             	cmp    ax,0x1
   465f3:	74 57                	je     0x4664c
   465f5:	3d 02 00             	cmp    ax,0x2
   465f8:	75 03                	jne    0x465fd
   465fa:	e9 56 01             	jmp    0x46753
   465fd:	e9 60 02             	jmp    0x46860
   46600:	1e                   	push   ds
   46601:	68 18 62             	push   0x6218
   46604:	16                   	push   ss
   46605:	8d 46 b0             	lea    ax,[bp-0x50]
   46608:	50                   	push   ax
   46609:	9a b4 48 00 00       	call   0x0:0x48b4
   4660e:	83 c4 08             	add    sp,0x8
   46611:	b8 88 01             	mov    ax,0x188
   46614:	8b 16 a2 bb          	mov    dx,WORD PTR ds:0xbba2
   46618:	8e c0                	mov    es,ax
   4661a:	26 01 16 6f bb       	add    WORD PTR es:0xbb6f,dx
   4661f:	b8 88 01             	mov    ax,0x188
   46622:	8b 16 a4 bb          	mov    dx,WORD PTR ds:0xbba4
   46626:	8e c0                	mov    es,ax
   46628:	26 01 16 71 bb       	add    WORD PTR es:0xbb71,dx
   4662d:	b8 88 01             	mov    ax,0x188
   46630:	8b 16 a6 bb          	mov    dx,WORD PTR ds:0xbba6
   46634:	8e c0                	mov    es,ax
   46636:	26 01 16 73 bb       	add    WORD PTR es:0xbb73,dx
   4663b:	c7 46 e8 00 00       	mov    WORD PTR [bp-0x18],0x0
   46640:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   46643:	50                   	push   ax
   46644:	0e                   	push   cs
   46645:	e8 97 fd             	call   0x463df
   46648:	59                   	pop    cx
   46649:	e9 29 02             	jmp    0x46875
   4664c:	a0 b7 bb             	mov    al,ds:0xbbb7
   4664f:	b4 00                	mov    ah,0x0
   46651:	0b c0                	or     ax,ax
   46653:	74 03                	je     0x46658
   46655:	e9 bc 00             	jmp    0x46714
   46658:	c7 46 f2 01 00       	mov    WORD PTR [bp-0xe],0x1
   4665d:	eb 40                	jmp    0x4669f
   4665f:	6a 00                	push   0x0
   46661:	68 00 80             	push   0x8000
   46664:	9a 79 17 00 00       	call   0x0:0x1779
   46669:	99                   	cwd
   4666a:	50                   	push   ax
   4666b:	52                   	push   dx
   4666c:	33 d2                	xor    dx,dx
   4666e:	b8 1f 00             	mov    ax,0x1f
   46671:	59                   	pop    cx
   46672:	5b                   	pop    bx
   46673:	9a 42 12 00 00       	call   0x0:0x1242
   46678:	52                   	push   dx
   46679:	50                   	push   ax
   4667a:	9a df 12 00 00       	call   0x0:0x12df
   4667f:	40                   	inc    ax
   46680:	8b 5e f2             	mov    bx,WORD PTR [bp-0xe]
   46683:	d1 e3                	shl    bx,1
   46685:	ba 88 01             	mov    dx,0x188
   46688:	8e c2                	mov    es,dx
   4668a:	26 89 87 55 bb       	mov    WORD PTR es:[bx-0x44ab],ax
   4668f:	8b 5e f2             	mov    bx,WORD PTR [bp-0xe]
   46692:	ba 88 01             	mov    dx,0x188
   46695:	8e c2                	mov    es,dx
   46697:	26 88 87 b7 bb       	mov    BYTE PTR es:[bx-0x4449],al
   4669c:	ff 46 f2             	inc    WORD PTR [bp-0xe]
   4669f:	6a 00                	push   0x0
   466a1:	68 00 80             	push   0x8000
   466a4:	9a 79 17 00 00       	call   0x0:0x1779
   466a9:	99                   	cwd
   466aa:	b1 03                	mov    cl,0x3
   466ac:	9a 8d 13 00 00       	call   0x0:0x138d
   466b1:	52                   	push   dx
   466b2:	50                   	push   ax
   466b3:	9a df 12 00 00       	call   0x0:0x12df
   466b8:	05 03 00             	add    ax,0x3
   466bb:	3b 46 f2             	cmp    ax,WORD PTR [bp-0xe]
   466be:	7d 9f                	jge    0x4665f
   466c0:	eb 25                	jmp    0x466e7
   466c2:	8b 5e f2             	mov    bx,WORD PTR [bp-0xe]
   466c5:	b8 88 01             	mov    ax,0x188
   466c8:	b2 00                	mov    dl,0x0
   466ca:	8e c0                	mov    es,ax
   466cc:	26 88 97 b7 bb       	mov    BYTE PTR es:[bx-0x4449],dl
   466d1:	8a c2                	mov    al,dl
   466d3:	b4 00                	mov    ah,0x0
   466d5:	8b 5e f2             	mov    bx,WORD PTR [bp-0xe]
   466d8:	d1 e3                	shl    bx,1
   466da:	ba 88 01             	mov    dx,0x188
   466dd:	8e c2                	mov    es,dx
   466df:	26 89 87 55 bb       	mov    WORD PTR es:[bx-0x44ab],ax
   466e4:	ff 46 f2             	inc    WORD PTR [bp-0xe]
   466e7:	83 7e f2 0a          	cmp    WORD PTR [bp-0xe],0xa
   466eb:	7e d5                	jle    0x466c2
   466ed:	6a 00                	push   0x0
   466ef:	68 00 80             	push   0x8000
   466f2:	9a 79 17 00 00       	call   0x0:0x1779
   466f7:	99                   	cwd
   466f8:	50                   	push   ax
   466f9:	52                   	push   dx
   466fa:	33 d2                	xor    dx,dx
   466fc:	b8 0a 00             	mov    ax,0xa
   466ff:	59                   	pop    cx
   46700:	5b                   	pop    bx
   46701:	9a 42 12 00 00       	call   0x0:0x1242
   46706:	52                   	push   dx
   46707:	50                   	push   ax
   46708:	9a df 12 00 00       	call   0x0:0x12df
   4670d:	fe c0                	inc    al
   4670f:	a2 b7 bb             	mov    ds:0xbbb7,al
   46712:	eb 2e                	jmp    0x46742
   46714:	c7 46 f2 01 00       	mov    WORD PTR [bp-0xe],0x1
   46719:	eb 21                	jmp    0x4673c
   4671b:	8b 5e f2             	mov    bx,WORD PTR [bp-0xe]
   4671e:	b8 88 01             	mov    ax,0x188
   46721:	8e c0                	mov    es,ax
   46723:	26 8a 87 b7 bb       	mov    al,BYTE PTR es:[bx-0x4449]
   46728:	b4 00                	mov    ah,0x0
   4672a:	8b 5e f2             	mov    bx,WORD PTR [bp-0xe]
   4672d:	d1 e3                	shl    bx,1
   4672f:	ba 88 01             	mov    dx,0x188
   46732:	8e c2                	mov    es,dx
   46734:	26 89 87 55 bb       	mov    WORD PTR es:[bx-0x44ab],ax
   46739:	ff 46 f2             	inc    WORD PTR [bp-0xe]
   4673c:	83 7e f2 0a          	cmp    WORD PTR [bp-0xe],0xa
   46740:	7e d9                	jle    0x4671b
   46742:	33 c0                	xor    ax,ax
   46744:	a3 a6 bb             	mov    ds:0xbba6,ax
   46747:	a3 a4 bb             	mov    ds:0xbba4,ax
   4674a:	a3 a2 bb             	mov    ds:0xbba2,ax
   4674d:	a0 b7 bb             	mov    al,ds:0xbbb7
   46750:	e9 06 01             	jmp    0x46859
   46753:	a0 ac bb             	mov    al,ds:0xbbac
   46756:	b4 00                	mov    ah,0x0
   46758:	0b c0                	or     ax,ax
   4675a:	74 03                	je     0x4675f
   4675c:	e9 be 00             	jmp    0x4681d
   4675f:	c7 46 f2 01 00       	mov    WORD PTR [bp-0xe],0x1
   46764:	eb 42                	jmp    0x467a8
   46766:	6a 00                	push   0x0
   46768:	68 00 80             	push   0x8000
   4676b:	9a 79 17 00 00       	call   0x0:0x1779
   46770:	99                   	cwd
   46771:	50                   	push   ax
   46772:	52                   	push   dx
   46773:	33 d2                	xor    dx,dx
   46775:	b8 0a 00             	mov    ax,0xa
   46778:	59                   	pop    cx
   46779:	5b                   	pop    bx
   4677a:	9a 42 12 00 00       	call   0x0:0x1242
   4677f:	52                   	push   dx
   46780:	50                   	push   ax
   46781:	9a df 12 00 00       	call   0x0:0x12df
   46786:	05 21 00             	add    ax,0x21
   46789:	8b 5e f2             	mov    bx,WORD PTR [bp-0xe]
   4678c:	d1 e3                	shl    bx,1
   4678e:	ba 88 01             	mov    dx,0x188
   46791:	8e c2                	mov    es,dx
   46793:	26 89 87 55 bb       	mov    WORD PTR es:[bx-0x44ab],ax
   46798:	8b 5e f2             	mov    bx,WORD PTR [bp-0xe]
   4679b:	ba 88 01             	mov    dx,0x188
   4679e:	8e c2                	mov    es,dx
   467a0:	26 88 87 ac bb       	mov    BYTE PTR es:[bx-0x4454],al
   467a5:	ff 46 f2             	inc    WORD PTR [bp-0xe]
   467a8:	6a 00                	push   0x0
   467aa:	68 00 80             	push   0x8000
   467ad:	9a 79 17 00 00       	call   0x0:0x1779
   467b2:	99                   	cwd
   467b3:	b1 03                	mov    cl,0x3
   467b5:	9a 8d 13 00 00       	call   0x0:0x138d
   467ba:	52                   	push   dx
   467bb:	50                   	push   ax
   467bc:	9a df 12 00 00       	call   0x0:0x12df
   467c1:	05 03 00             	add    ax,0x3
   467c4:	3b 46 f2             	cmp    ax,WORD PTR [bp-0xe]
   467c7:	7d 9d                	jge    0x46766
   467c9:	eb 25                	jmp    0x467f0
   467cb:	8b 5e f2             	mov    bx,WORD PTR [bp-0xe]
   467ce:	b8 88 01             	mov    ax,0x188
   467d1:	b2 00                	mov    dl,0x0
   467d3:	8e c0                	mov    es,ax
   467d5:	26 88 97 ac bb       	mov    BYTE PTR es:[bx-0x4454],dl
   467da:	8a c2                	mov    al,dl
   467dc:	b4 00                	mov    ah,0x0
   467de:	8b 5e f2             	mov    bx,WORD PTR [bp-0xe]
   467e1:	d1 e3                	shl    bx,1
   467e3:	ba 88 01             	mov    dx,0x188
   467e6:	8e c2                	mov    es,dx
   467e8:	26 89 87 55 bb       	mov    WORD PTR es:[bx-0x44ab],ax
   467ed:	ff 46 f2             	inc    WORD PTR [bp-0xe]
   467f0:	83 7e f2 0a          	cmp    WORD PTR [bp-0xe],0xa
   467f4:	7e d5                	jle    0x467cb
   467f6:	6a 00                	push   0x0
   467f8:	68 00 80             	push   0x8000
   467fb:	9a 79 17 00 00       	call   0x0:0x1779
   46800:	99                   	cwd
   46801:	50                   	push   ax
   46802:	52                   	push   dx
   46803:	33 d2                	xor    dx,dx
   46805:	b8 0a 00             	mov    ax,0xa
   46808:	59                   	pop    cx
   46809:	5b                   	pop    bx
   4680a:	9a 42 12 00 00       	call   0x0:0x1242
   4680f:	52                   	push   dx
   46810:	50                   	push   ax
   46811:	9a df 12 00 00       	call   0x0:0x12df
   46816:	04 21                	add    al,0x21
   46818:	a2 ac bb             	mov    ds:0xbbac,al
   4681b:	eb 2e                	jmp    0x4684b
   4681d:	c7 46 f2 01 00       	mov    WORD PTR [bp-0xe],0x1
   46822:	eb 21                	jmp    0x46845
   46824:	8b 5e f2             	mov    bx,WORD PTR [bp-0xe]
   46827:	b8 88 01             	mov    ax,0x188
   4682a:	8e c0                	mov    es,ax
   4682c:	26 8a 87 ac bb       	mov    al,BYTE PTR es:[bx-0x4454]
   46831:	b4 00                	mov    ah,0x0
   46833:	8b 5e f2             	mov    bx,WORD PTR [bp-0xe]
   46836:	d1 e3                	shl    bx,1
   46838:	ba 88 01             	mov    dx,0x188
   4683b:	8e c2                	mov    es,dx
   4683d:	26 89 87 55 bb       	mov    WORD PTR es:[bx-0x44ab],ax
   46842:	ff 46 f2             	inc    WORD PTR [bp-0xe]
   46845:	83 7e f2 0a          	cmp    WORD PTR [bp-0xe],0xa
   46849:	7e d9                	jle    0x46824
   4684b:	33 c0                	xor    ax,ax
   4684d:	a3 a6 bb             	mov    ds:0xbba6,ax
   46850:	a3 a4 bb             	mov    ds:0xbba4,ax
   46853:	a3 a2 bb             	mov    ds:0xbba2,ax
   46856:	a0 ac bb             	mov    al,ds:0xbbac
   46859:	b4 00                	mov    ah,0x0
   4685b:	89 46 e8             	mov    WORD PTR [bp-0x18],ax
   4685e:	eb 15                	jmp    0x46875
   46860:	6a 5f                	push   0x5f
   46862:	6a 00                	push   0x0
   46864:	6a 00                	push   0x0
   46866:	68 fa 04             	push   0x4fa
   46869:	1e                   	push   ds
   4686a:	68 26 62             	push   0x6226
   4686d:	9a 2a 00 58 01       	call   0x158:0x2a
   46872:	83 c4 0c             	add    sp,0xc
   46875:	0e                   	push   cs
   46876:	e8 61 f7             	call   0x45fda
   46879:	c7 46 f6 01 00       	mov    WORD PTR [bp-0xa],0x1
   4687e:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   46881:	d1 e3                	shl    bx,1
   46883:	8d 46 f8             	lea    ax,[bp-0x8]
   46886:	03 d8                	add    bx,ax
   46888:	36 c7 07 00 00       	mov    WORD PTR ss:[bx],0x0
   4688d:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   46890:	d1 e3                	shl    bx,1
   46892:	8d 46 fa             	lea    ax,[bp-0x6]
   46895:	03 d8                	add    bx,ax
   46897:	36 c7 07 00 00       	mov    WORD PTR ss:[bx],0x0
   4689c:	b8 88 01             	mov    ax,0x188
   4689f:	8e c0                	mov    es,ax
   468a1:	26 c7 06 55 bb 00 00 	mov    WORD PTR es:0xbb55,0x0
   468a8:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   468ab:	d1 e3                	shl    bx,1
   468ad:	8d 46 f8             	lea    ax,[bp-0x8]
   468b0:	03 d8                	add    bx,ax
   468b2:	36 83 3f 00          	cmp    WORD PTR ss:[bx],0x0
   468b6:	74 31                	je     0x468e9
   468b8:	68 dc 00             	push   0xdc
   468bb:	6a 53                	push   0x53
   468bd:	6a 0e                	push   0xe
   468bf:	6a 0e                	push   0xe
   468c1:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   468c4:	48                   	dec    ax
   468c5:	6b c0 11             	imul   ax,ax,0x11
   468c8:	05 1b 00             	add    ax,0x1b
   468cb:	50                   	push   ax
   468cc:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   468cf:	d1 e3                	shl    bx,1
   468d1:	8d 46 f8             	lea    ax,[bp-0x8]
   468d4:	03 d8                	add    bx,ax
   468d6:	36 8b 07             	mov    ax,WORD PTR ss:[bx]
   468d9:	48                   	dec    ax
   468da:	6b c0 11             	imul   ax,ax,0x11
   468dd:	05 07 00             	add    ax,0x7
   468e0:	50                   	push   ax
   468e1:	9a 99 0b 28 00       	call   0x28:0xb99
   468e6:	83 c4 0c             	add    sp,0xc
   468e9:	c7 46 f4 01 00       	mov    WORD PTR [bp-0xc],0x1
   468ee:	ff 76 f4             	push   WORD PTR [bp-0xc]
   468f1:	0e                   	push   cs
   468f2:	e8 3b f1             	call   0x45a30
   468f5:	59                   	pop    cx
   468f6:	9a 15 05 30 00       	call   0x30:0x515
   468fb:	89 46 ea             	mov    WORD PTR [bp-0x16],ax
   468fe:	16                   	push   ss
   468ff:	8d 46 b0             	lea    ax,[bp-0x50]
   46902:	50                   	push   ax
   46903:	90                   	nop
   46904:	0e                   	push   cs
   46905:	e8 2f 1f             	call   0x48837
   46908:	83 c4 04             	add    sp,0x4
   4690b:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   4690e:	50                   	push   ax
   4690f:	0e                   	push   cs
   46910:	e8 cc fa             	call   0x463df
   46913:	59                   	pop    cx
   46914:	90                   	nop
   46915:	0e                   	push   cs
   46916:	e8 3f 25             	call   0x48e58
   46919:	0e                   	push   cs
   4691a:	e8 bd f6             	call   0x45fda
   4691d:	ff 76 f4             	push   WORD PTR [bp-0xc]
   46920:	0e                   	push   cs
   46921:	e8 0c f1             	call   0x45a30
   46924:	59                   	pop    cx
   46925:	a1 c0 5b             	mov    ax,ds:0x5bc0
   46928:	05 07 00             	add    ax,0x7
   4692b:	ba 88 01             	mov    dx,0x188
   4692e:	8e c2                	mov    es,dx
   46930:	26 a3 9d e6          	mov    es:0xe69d,ax
   46934:	a1 be 5b             	mov    ax,ds:0x5bbe
   46937:	05 03 00             	add    ax,0x3
   4693a:	99                   	cwd
   4693b:	f7 7e e4             	idiv   WORD PTR [bp-0x1c]
   4693e:	b8 88 01             	mov    ax,0x188
   46941:	8e c0                	mov    es,ax
   46943:	26 89 16 9f e6       	mov    WORD PTR es:0xe69f,dx
   46948:	b8 88 01             	mov    ax,0x188
   4694b:	8e c0                	mov    es,ax
   4694d:	26 a1 9d e6          	mov    ax,es:0xe69d
   46951:	05 1f 00             	add    ax,0x1f
   46954:	ba 88 01             	mov    dx,0x188
   46957:	8e c2                	mov    es,dx
   46959:	26 a3 a1 e6          	mov    es:0xe6a1,ax
   4695d:	b8 88 01             	mov    ax,0x188
   46960:	8e c0                	mov    es,ax
   46962:	26 a1 9f e6          	mov    ax,es:0xe69f
   46966:	05 15 00             	add    ax,0x15
   46969:	ba 88 01             	mov    dx,0x188
   4696c:	8e c2                	mov    es,dx
   4696e:	26 a3 a3 e6          	mov    es:0xe6a3,ax
   46972:	a1 c0 5b             	mov    ax,ds:0x5bc0
   46975:	05 2e 01             	add    ax,0x12e
   46978:	ba 88 01             	mov    dx,0x188
   4697b:	8e c2                	mov    es,dx
   4697d:	26 a3 c5 e6          	mov    es:0xe6c5,ax
   46981:	a1 be 5b             	mov    ax,ds:0x5bbe
   46984:	05 03 00             	add    ax,0x3
   46987:	99                   	cwd
   46988:	f7 7e e4             	idiv   WORD PTR [bp-0x1c]
   4698b:	b8 88 01             	mov    ax,0x188
   4698e:	8e c0                	mov    es,ax
   46990:	26 89 16 c7 e6       	mov    WORD PTR es:0xe6c7,dx
   46995:	b8 88 01             	mov    ax,0x188
   46998:	8e c0                	mov    es,ax
   4699a:	26 a1 c5 e6          	mov    ax,es:0xe6c5
   4699e:	05 08 00             	add    ax,0x8
   469a1:	ba 88 01             	mov    dx,0x188
   469a4:	8e c2                	mov    es,dx
   469a6:	26 a3 c9 e6          	mov    es:0xe6c9,ax
   469aa:	b8 88 01             	mov    ax,0x188
   469ad:	8e c0                	mov    es,ax
   469af:	26 a1 c7 e6          	mov    ax,es:0xe6c7
   469b3:	05 0a 00             	add    ax,0xa
   469b6:	ba 88 01             	mov    dx,0x188
   469b9:	8e c2                	mov    es,dx
   469bb:	26 a3 cb e6          	mov    es:0xe6cb,ax
   469bf:	a1 c0 5b             	mov    ax,ds:0x5bc0
   469c2:	05 1b 01             	add    ax,0x11b
   469c5:	ba 88 01             	mov    dx,0x188
   469c8:	8e c2                	mov    es,dx
   469ca:	26 a3 cd e6          	mov    es:0xe6cd,ax
   469ce:	a1 be 5b             	mov    ax,ds:0x5bbe
   469d1:	05 03 00             	add    ax,0x3
   469d4:	99                   	cwd
   469d5:	f7 7e e4             	idiv   WORD PTR [bp-0x1c]
   469d8:	b8 88 01             	mov    ax,0x188
   469db:	8e c0                	mov    es,ax
   469dd:	26 89 16 cf e6       	mov    WORD PTR es:0xe6cf,dx
   469e2:	b8 88 01             	mov    ax,0x188
   469e5:	8e c0                	mov    es,ax
   469e7:	26 a1 cd e6          	mov    ax,es:0xe6cd
   469eb:	05 0f 00             	add    ax,0xf
   469ee:	ba 88 01             	mov    dx,0x188
   469f1:	8e c2                	mov    es,dx
   469f3:	26 a3 d1 e6          	mov    es:0xe6d1,ax
   469f7:	b8 88 01             	mov    ax,0x188
   469fa:	8e c0                	mov    es,ax
   469fc:	26 a1 cf e6          	mov    ax,es:0xe6cf
   46a00:	05 0a 00             	add    ax,0xa
   46a03:	ba 88 01             	mov    dx,0x188
   46a06:	8e c2                	mov    es,dx
   46a08:	26 a3 d3 e6          	mov    es:0xe6d3,ax
   46a0c:	a1 c0 5b             	mov    ax,ds:0x5bc0
   46a0f:	05 0e 01             	add    ax,0x10e
   46a12:	ba 88 01             	mov    dx,0x188
   46a15:	8e c2                	mov    es,dx
   46a17:	26 a3 d5 e6          	mov    es:0xe6d5,ax
   46a1b:	a1 be 5b             	mov    ax,ds:0x5bbe
   46a1e:	05 03 00             	add    ax,0x3
   46a21:	99                   	cwd
   46a22:	f7 7e e4             	idiv   WORD PTR [bp-0x1c]
   46a25:	b8 88 01             	mov    ax,0x188
   46a28:	8e c0                	mov    es,ax
   46a2a:	26 89 16 d7 e6       	mov    WORD PTR es:0xe6d7,dx
   46a2f:	b8 88 01             	mov    ax,0x188
   46a32:	8e c0                	mov    es,ax
   46a34:	26 a1 d5 e6          	mov    ax,es:0xe6d5
   46a38:	05 0c 00             	add    ax,0xc
   46a3b:	ba 88 01             	mov    dx,0x188
   46a3e:	8e c2                	mov    es,dx
   46a40:	26 a3 d9 e6          	mov    es:0xe6d9,ax
   46a44:	b8 88 01             	mov    ax,0x188
   46a47:	8e c0                	mov    es,ax
   46a49:	26 a1 d7 e6          	mov    ax,es:0xe6d7
   46a4d:	05 0a 00             	add    ax,0xa
   46a50:	ba 88 01             	mov    dx,0x188
   46a53:	8e c2                	mov    es,dx
   46a55:	26 a3 db e6          	mov    es:0xe6db,ax
   46a59:	b8 88 01             	mov    ax,0x188
   46a5c:	8b 16 c0 5b          	mov    dx,WORD PTR ds:0x5bc0
   46a60:	8e c0                	mov    es,ax
   46a62:	26 89 16 dd e6       	mov    WORD PTR es:0xe6dd,dx
   46a67:	a1 be 5b             	mov    ax,ds:0x5bbe
   46a6a:	99                   	cwd
   46a6b:	f7 7e e4             	idiv   WORD PTR [bp-0x1c]
   46a6e:	b8 88 01             	mov    ax,0x188
   46a71:	8e c0                	mov    es,ax
   46a73:	26 89 16 df e6       	mov    WORD PTR es:0xe6df,dx
   46a78:	b8 88 01             	mov    ax,0x188
   46a7b:	8e c0                	mov    es,ax
   46a7d:	26 a1 dd e6          	mov    ax,es:0xe6dd
   46a81:	05 40 01             	add    ax,0x140
   46a84:	ba 88 01             	mov    dx,0x188
   46a87:	8e c2                	mov    es,dx
   46a89:	26 a3 e1 e6          	mov    es:0xe6e1,ax
   46a8d:	b8 88 01             	mov    ax,0x188
   46a90:	8e c0                	mov    es,ax
   46a92:	26 a1 df e6          	mov    ax,es:0xe6df
   46a96:	05 3e 00             	add    ax,0x3e
   46a99:	ba 88 01             	mov    dx,0x188
   46a9c:	8e c2                	mov    es,dx
   46a9e:	26 a3 e3 e6          	mov    es:0xe6e3,ax
   46aa2:	c7 46 ee 01 00       	mov    WORD PTR [bp-0x12],0x1
   46aa7:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   46aaa:	d1 e3                	shl    bx,1
   46aac:	8d 46 f8             	lea    ax,[bp-0x8]
   46aaf:	03 d8                	add    bx,ax
   46ab1:	36 83 3f 00          	cmp    WORD PTR ss:[bx],0x0
   46ab5:	74 43                	je     0x46afa
   46ab7:	b8 88 01             	mov    ax,0x188
   46aba:	8e c0                	mov    es,ax
   46abc:	26 a1 57 bb          	mov    ax,es:0xbb57
   46ac0:	bb 64 00             	mov    bx,0x64
   46ac3:	99                   	cwd
   46ac4:	f7 fb                	idiv   bx
   46ac6:	83 fa 20             	cmp    dx,0x20
   46ac9:	7d 14                	jge    0x46adf
   46acb:	b8 88 01             	mov    ax,0x188
   46ace:	8e c0                	mov    es,ax
   46ad0:	26 a1 57 bb          	mov    ax,es:0xbb57
   46ad4:	bb 64 00             	mov    bx,0x64
   46ad7:	99                   	cwd
   46ad8:	f7 fb                	idiv   bx
   46ada:	80 c2 ff             	add    dl,0xff
   46add:	eb 11                	jmp    0x46af0
   46adf:	b8 88 01             	mov    ax,0x188
   46ae2:	8e c0                	mov    es,ax
   46ae4:	26 a1 57 bb          	mov    ax,es:0xbb57
   46ae8:	bb 64 00             	mov    bx,0x64
   46aeb:	99                   	cwd
   46aec:	f7 fb                	idiv   bx
   46aee:	fe c2                	inc    dl
   46af0:	52                   	push   dx
   46af1:	9a 6b 02 30 00       	call   0x30:0x26b
   46af6:	59                   	pop    cx
   46af7:	e9 b7 10             	jmp    0x47bb1
   46afa:	b8 88 01             	mov    ax,0x188
   46afd:	8e c0                	mov    es,ax
   46aff:	26 a0 71 96          	mov    al,es:0x9671
   46b03:	50                   	push   ax
   46b04:	eb eb                	jmp    0x46af1
   46b06:	e9 a8 10             	jmp    0x47bb1
   46b09:	b8 88 01             	mov    ax,0x188
   46b0c:	8e c0                	mov    es,ax
   46b0e:	26 ff 36 62 96       	push   WORD PTR es:0x9662
   46b13:	26 ff 36 60 96       	push   WORD PTR es:0x9660
   46b18:	b8 88 01             	mov    ax,0x188
   46b1b:	8e c0                	mov    es,ax
   46b1d:	26 ff 1e 4c 96       	call   DWORD PTR es:0x964c
   46b22:	83 c4 04             	add    sp,0x4
   46b25:	b8 88 01             	mov    ax,0x188
   46b28:	8e c0                	mov    es,ax
   46b2a:	26 83 3e f3 e5 00    	cmp    WORD PTR es:0xe5f3,0x0
   46b30:	75 03                	jne    0x46b35
   46b32:	e9 fd 00             	jmp    0x46c32
   46b35:	b8 88 01             	mov    ax,0x188
   46b38:	8e c0                	mov    es,ax
   46b3a:	26 a0 e3 e5          	mov    al,es:0xe5e3
   46b3e:	50                   	push   ax
   46b3f:	9a 6b 02 30 00       	call   0x30:0x26b
   46b44:	59                   	pop    cx
   46b45:	9a 15 05 30 00       	call   0x30:0x515
   46b4a:	89 46 ec             	mov    WORD PTR [bp-0x14],ax
   46b4d:	83 7e ec 00          	cmp    WORD PTR [bp-0x14],0x0
   46b51:	7f 03                	jg     0x46b56
   46b53:	e9 dc 00             	jmp    0x46c32
   46b56:	83 7e ec 15          	cmp    WORD PTR [bp-0x14],0x15
   46b5a:	7c 03                	jl     0x46b5f
   46b5c:	e9 d3 00             	jmp    0x46c32
   46b5f:	8b 46 ea             	mov    ax,WORD PTR [bp-0x16]
   46b62:	3b 46 ec             	cmp    ax,WORD PTR [bp-0x14]
   46b65:	75 03                	jne    0x46b6a
   46b67:	e9 c8 00             	jmp    0x46c32
   46b6a:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   46b6d:	89 46 ea             	mov    WORD PTR [bp-0x16],ax
   46b70:	83 7e ec 0b          	cmp    WORD PTR [bp-0x14],0xb
   46b74:	7d 53                	jge    0x46bc9
   46b76:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
   46b79:	6b db 5c             	imul   bx,bx,0x5c
   46b7c:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   46b7f:	d1 e0                	shl    ax,1
   46b81:	03 d8                	add    bx,ax
   46b83:	b8 88 01             	mov    ax,0x188
   46b86:	8e c0                	mov    es,ax
   46b88:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   46b8d:	bb 64 00             	mov    bx,0x64
   46b90:	99                   	cwd
   46b91:	f7 fb                	idiv   bx
   46b93:	ba 88 01             	mov    dx,0x188
   46b96:	8e c2                	mov    es,dx
   46b98:	26 a3 e6 d5          	mov    es:0xd5e6,ax
   46b9c:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
   46b9f:	6b db 5c             	imul   bx,bx,0x5c
   46ba2:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   46ba5:	d1 e0                	shl    ax,1
   46ba7:	03 d8                	add    bx,ax
   46ba9:	b8 88 01             	mov    ax,0x188
   46bac:	8e c0                	mov    es,ax
   46bae:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   46bb3:	bb 64 00             	mov    bx,0x64
   46bb6:	99                   	cwd
   46bb7:	f7 fb                	idiv   bx
   46bb9:	b8 88 01             	mov    ax,0x188
   46bbc:	8e c0                	mov    es,ax
   46bbe:	26 89 16 ea d5       	mov    WORD PTR es:0xd5ea,dx
   46bc3:	6a 00                	push   0x0
   46bc5:	6a 00                	push   0x0
   46bc7:	eb 5d                	jmp    0x46c26
   46bc9:	8b 5e ec             	mov    bx,WORD PTR [bp-0x14]
   46bcc:	d1 e3                	shl    bx,1
   46bce:	b8 88 01             	mov    ax,0x188
   46bd1:	8e c0                	mov    es,ax
   46bd3:	26 8b 87 41 bb       	mov    ax,WORD PTR es:[bx-0x44bf]
   46bd8:	bb 64 00             	mov    bx,0x64
   46bdb:	99                   	cwd
   46bdc:	f7 fb                	idiv   bx
   46bde:	ba 88 01             	mov    dx,0x188
   46be1:	8e c2                	mov    es,dx
   46be3:	26 a3 e6 d5          	mov    es:0xd5e6,ax
   46be7:	8b 5e ec             	mov    bx,WORD PTR [bp-0x14]
   46bea:	d1 e3                	shl    bx,1
   46bec:	b8 88 01             	mov    ax,0x188
   46bef:	8e c0                	mov    es,ax
   46bf1:	26 8b 87 41 bb       	mov    ax,WORD PTR es:[bx-0x44bf]
   46bf6:	bb 64 00             	mov    bx,0x64
   46bf9:	99                   	cwd
   46bfa:	f7 fb                	idiv   bx
   46bfc:	b8 88 01             	mov    ax,0x188
   46bff:	8e c0                	mov    es,ax
   46c01:	26 89 16 ea d5       	mov    WORD PTR es:0xd5ea,dx
   46c06:	b8 88 01             	mov    ax,0x188
   46c09:	8e c0                	mov    es,ax
   46c0b:	26 8b 1e ea d5       	mov    bx,WORD PTR es:0xd5ea
   46c10:	b8 88 01             	mov    ax,0x188
   46c13:	8e c0                	mov    es,ax
   46c15:	26 8a 87 41 10       	mov    al,BYTE PTR es:[bx+0x1041]
   46c1a:	b4 00                	mov    ah,0x0
   46c1c:	d1 e0                	shl    ax,1
   46c1e:	03 46 e8             	add    ax,WORD PTR [bp-0x18]
   46c21:	50                   	push   ax
   46c22:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   46c25:	50                   	push   ax
   46c26:	90                   	nop
   46c27:	0e                   	push   cs
   46c28:	e8 84 1b             	call   0x487af
   46c2b:	83 c4 04             	add    sp,0x4
   46c2e:	0e                   	push   cs
   46c2f:	e8 02 f2             	call   0x45e34
   46c32:	9a 45 2e 00 00       	call   0x0:0x2e45
   46c37:	0b c0                	or     ax,ax
   46c39:	75 03                	jne    0x46c3e
   46c3b:	e9 e3 07             	jmp    0x47421
   46c3e:	6a 00                	push   0x0
   46c40:	9a 3f 1f 00 00       	call   0x0:0x1f3f
   46c45:	59                   	pop    cx
   46c46:	89 46 f0             	mov    WORD PTR [bp-0x10],ax
   46c49:	f7 46 f0 ff 00       	test   WORD PTR [bp-0x10],0xff
   46c4e:	74 03                	je     0x46c53
   46c50:	e9 d9 03             	jmp    0x4702c
   46c53:	c1 7e f0 08          	sar    WORD PTR [bp-0x10],0x8
   46c57:	8b 5e f0             	mov    bx,WORD PTR [bp-0x10]
   46c5a:	83 eb 3b             	sub    bx,0x3b
   46c5d:	83 fb 12             	cmp    bx,0x12
   46c60:	76 03                	jbe    0x46c65
   46c62:	e9 bc 07             	jmp    0x47421
   46c65:	d1 e3                	shl    bx,1
   46c67:	2e ff a7 84 46       	jmp    WORD PTR cs:[bx+0x4684]
   46c6c:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   46c6f:	d1 e3                	shl    bx,1
   46c71:	8d 46 f8             	lea    ax,[bp-0x8]
   46c74:	03 d8                	add    bx,ax
   46c76:	36 83 3f 0a          	cmp    WORD PTR ss:[bx],0xa
   46c7a:	7c 03                	jl     0x46c7f
   46c7c:	e9 a2 07             	jmp    0x47421
   46c7f:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   46c82:	d1 e3                	shl    bx,1
   46c84:	8d 46 f8             	lea    ax,[bp-0x8]
   46c87:	03 d8                	add    bx,ax
   46c89:	36 ff 07             	inc    WORD PTR ss:[bx]
   46c8c:	eb 23                	jmp    0x46cb1
   46c8e:	e9 90 07             	jmp    0x47421
   46c91:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   46c94:	d1 e3                	shl    bx,1
   46c96:	8d 46 f8             	lea    ax,[bp-0x8]
   46c99:	03 d8                	add    bx,ax
   46c9b:	36 83 3f 01          	cmp    WORD PTR ss:[bx],0x1
   46c9f:	7f 03                	jg     0x46ca4
   46ca1:	e9 7d 07             	jmp    0x47421
   46ca4:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   46ca7:	d1 e3                	shl    bx,1
   46ca9:	8d 46 f8             	lea    ax,[bp-0x8]
   46cac:	03 d8                	add    bx,ax
   46cae:	36 ff 0f             	dec    WORD PTR ss:[bx]
   46cb1:	83 7e f6 01          	cmp    WORD PTR [bp-0xa],0x1
   46cb5:	74 03                	je     0x46cba
   46cb7:	e9 a9 00             	jmp    0x46d63
   46cba:	0e                   	push   cs
   46cbb:	e8 1c f3             	call   0x45fda
   46cbe:	68 dc 00             	push   0xdc
   46cc1:	6a 53                	push   0x53
   46cc3:	6a 0e                	push   0xe
   46cc5:	6a 0e                	push   0xe
   46cc7:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   46cca:	48                   	dec    ax
   46ccb:	6b c0 11             	imul   ax,ax,0x11
   46cce:	05 1b 00             	add    ax,0x1b
   46cd1:	50                   	push   ax
   46cd2:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   46cd5:	d1 e3                	shl    bx,1
   46cd7:	8d 46 f8             	lea    ax,[bp-0x8]
   46cda:	03 d8                	add    bx,ax
   46cdc:	36 8b 07             	mov    ax,WORD PTR ss:[bx]
   46cdf:	48                   	dec    ax
   46ce0:	6b c0 11             	imul   ax,ax,0x11
   46ce3:	05 07 00             	add    ax,0x7
   46ce6:	50                   	push   ax
   46ce7:	9a 99 0b 28 00       	call   0x28:0xb99
   46cec:	83 c4 0c             	add    sp,0xc
   46cef:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   46cf2:	d1 e3                	shl    bx,1
   46cf4:	8d 46 f8             	lea    ax,[bp-0x8]
   46cf7:	03 d8                	add    bx,ax
   46cf9:	36 8b 1f             	mov    bx,WORD PTR ss:[bx]
   46cfc:	d1 e3                	shl    bx,1
   46cfe:	b8 88 01             	mov    ax,0x188
   46d01:	8e c0                	mov    es,ax
   46d03:	26 8b 87 55 bb       	mov    ax,WORD PTR es:[bx-0x44ab]
   46d08:	bb 64 00             	mov    bx,0x64
   46d0b:	99                   	cwd
   46d0c:	f7 fb                	idiv   bx
   46d0e:	ba 88 01             	mov    dx,0x188
   46d11:	8e c2                	mov    es,dx
   46d13:	26 a3 e6 d5          	mov    es:0xd5e6,ax
   46d17:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   46d1a:	d1 e3                	shl    bx,1
   46d1c:	8d 46 f8             	lea    ax,[bp-0x8]
   46d1f:	03 d8                	add    bx,ax
   46d21:	36 8b 1f             	mov    bx,WORD PTR ss:[bx]
   46d24:	d1 e3                	shl    bx,1
   46d26:	b8 88 01             	mov    ax,0x188
   46d29:	8e c0                	mov    es,ax
   46d2b:	26 8b 87 55 bb       	mov    ax,WORD PTR es:[bx-0x44ab]
   46d30:	bb 64 00             	mov    bx,0x64
   46d33:	99                   	cwd
   46d34:	f7 fb                	idiv   bx
   46d36:	b8 88 01             	mov    ax,0x188
   46d39:	8e c0                	mov    es,ax
   46d3b:	26 89 16 ea d5       	mov    WORD PTR es:0xd5ea,dx
   46d40:	b8 88 01             	mov    ax,0x188
   46d43:	8e c0                	mov    es,ax
   46d45:	26 8b 1e ea d5       	mov    bx,WORD PTR es:0xd5ea
   46d4a:	b8 88 01             	mov    ax,0x188
   46d4d:	8e c0                	mov    es,ax
   46d4f:	26 8a 87 41 10       	mov    al,BYTE PTR es:[bx+0x1041]
   46d54:	b4 00                	mov    ah,0x0
   46d56:	d1 e0                	shl    ax,1
   46d58:	03 46 e8             	add    ax,WORD PTR [bp-0x18]
   46d5b:	50                   	push   ax
   46d5c:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   46d5f:	50                   	push   ax
   46d60:	e9 9e 00             	jmp    0x46e01
   46d63:	ff 76 f4             	push   WORD PTR [bp-0xc]
   46d66:	0e                   	push   cs
   46d67:	e8 c6 ec             	call   0x45a30
   46d6a:	59                   	pop    cx
   46d6b:	68 dc 00             	push   0xdc
   46d6e:	6a 53                	push   0x53
   46d70:	6a 0e                	push   0xe
   46d72:	6a 0e                	push   0xe
   46d74:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   46d77:	48                   	dec    ax
   46d78:	6b c0 11             	imul   ax,ax,0x11
   46d7b:	05 1b 00             	add    ax,0x1b
   46d7e:	50                   	push   ax
   46d7f:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   46d82:	d1 e3                	shl    bx,1
   46d84:	8d 46 f8             	lea    ax,[bp-0x8]
   46d87:	03 d8                	add    bx,ax
   46d89:	36 8b 07             	mov    ax,WORD PTR ss:[bx]
   46d8c:	48                   	dec    ax
   46d8d:	6b c0 11             	imul   ax,ax,0x11
   46d90:	05 07 00             	add    ax,0x7
   46d93:	50                   	push   ax
   46d94:	9a 99 0b 28 00       	call   0x28:0xb99
   46d99:	83 c4 0c             	add    sp,0xc
   46d9c:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   46d9f:	d1 e3                	shl    bx,1
   46da1:	8d 46 f8             	lea    ax,[bp-0x8]
   46da4:	03 d8                	add    bx,ax
   46da6:	36 8b 07             	mov    ax,WORD PTR ss:[bx]
   46da9:	d1 e0                	shl    ax,1
   46dab:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
   46dae:	6b db 5c             	imul   bx,bx,0x5c
   46db1:	03 d8                	add    bx,ax
   46db3:	b8 88 01             	mov    ax,0x188
   46db6:	8e c0                	mov    es,ax
   46db8:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   46dbd:	bb 64 00             	mov    bx,0x64
   46dc0:	99                   	cwd
   46dc1:	f7 fb                	idiv   bx
   46dc3:	ba 88 01             	mov    dx,0x188
   46dc6:	8e c2                	mov    es,dx
   46dc8:	26 a3 e6 d5          	mov    es:0xd5e6,ax
   46dcc:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   46dcf:	d1 e3                	shl    bx,1
   46dd1:	8d 46 f8             	lea    ax,[bp-0x8]
   46dd4:	03 d8                	add    bx,ax
   46dd6:	36 8b 07             	mov    ax,WORD PTR ss:[bx]
   46dd9:	d1 e0                	shl    ax,1
   46ddb:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
   46dde:	6b db 5c             	imul   bx,bx,0x5c
   46de1:	03 d8                	add    bx,ax
   46de3:	b8 88 01             	mov    ax,0x188
   46de6:	8e c0                	mov    es,ax
   46de8:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   46ded:	bb 64 00             	mov    bx,0x64
   46df0:	99                   	cwd
   46df1:	f7 fb                	idiv   bx
   46df3:	b8 88 01             	mov    ax,0x188
   46df6:	8e c0                	mov    es,ax
   46df8:	26 89 16 ea d5       	mov    WORD PTR es:0xd5ea,dx
   46dfd:	6a 00                	push   0x0
   46dff:	6a 00                	push   0x0
   46e01:	90                   	nop
   46e02:	0e                   	push   cs
   46e03:	e8 a9 19             	call   0x487af
   46e06:	83 c4 04             	add    sp,0x4
   46e09:	0e                   	push   cs
   46e0a:	e8 27 f0             	call   0x45e34
   46e0d:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   46e10:	4b                   	dec    bx
   46e11:	83 f3 01             	xor    bx,0x1
   46e14:	d1 e3                	shl    bx,1
   46e16:	8d 46 fa             	lea    ax,[bp-0x6]
   46e19:	03 d8                	add    bx,ax
   46e1b:	36 83 3f 00          	cmp    WORD PTR ss:[bx],0x0
   46e1f:	74 03                	je     0x46e24
   46e21:	e9 fd 05             	jmp    0x47421
   46e24:	b8 88 01             	mov    ax,0x188
   46e27:	8e c0                	mov    es,ax
   46e29:	26 83 3e ea d5 00    	cmp    WORD PTR es:0xd5ea,0x0
   46e2f:	74 41                	je     0x46e72
   46e31:	b8 88 01             	mov    ax,0x188
   46e34:	8e c0                	mov    es,ax
   46e36:	26 83 3e ea d5 2b    	cmp    WORD PTR es:0xd5ea,0x2b
   46e3c:	75 0e                	jne    0x46e4c
   46e3e:	b8 88 01             	mov    ax,0x188
   46e41:	8e c0                	mov    es,ax
   46e43:	26 c7 06 ea d5 22 00 	mov    WORD PTR es:0xd5ea,0x22
   46e4a:	eb 18                	jmp    0x46e64
   46e4c:	b8 88 01             	mov    ax,0x188
   46e4f:	8e c0                	mov    es,ax
   46e51:	26 83 3e ea d5 20    	cmp    WORD PTR es:0xd5ea,0x20
   46e57:	7e 0b                	jle    0x46e64
   46e59:	b8 88 01             	mov    ax,0x188
   46e5c:	8e c0                	mov    es,ax
   46e5e:	26 83 06 ea d5 02    	add    WORD PTR es:0xd5ea,0x2
   46e64:	b8 88 01             	mov    ax,0x188
   46e67:	8e c0                	mov    es,ax
   46e69:	26 a0 ea d5          	mov    al,es:0xd5ea
   46e6d:	04 ff                	add    al,0xff
   46e6f:	e9 d9 00             	jmp    0x46f4b
   46e72:	e9 cd 00             	jmp    0x46f42
   46e75:	e9 a9 05             	jmp    0x47421
   46e78:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   46e7b:	05 c6 ff             	add    ax,0xffc6
   46e7e:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   46e81:	50                   	push   ax
   46e82:	0e                   	push   cs
   46e83:	e8 aa eb             	call   0x45a30
   46e86:	59                   	pop    cx
   46e87:	83 7e f6 02          	cmp    WORD PTR [bp-0xa],0x2
   46e8b:	74 03                	je     0x46e90
   46e8d:	e9 ae 00             	jmp    0x46f3e
   46e90:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   46e93:	d1 e3                	shl    bx,1
   46e95:	8d 46 f8             	lea    ax,[bp-0x8]
   46e98:	03 d8                	add    bx,ax
   46e9a:	36 83 3f 00          	cmp    WORD PTR ss:[bx],0x0
   46e9e:	74 31                	je     0x46ed1
   46ea0:	68 dc 00             	push   0xdc
   46ea3:	6a 53                	push   0x53
   46ea5:	6a 0e                	push   0xe
   46ea7:	6a 0e                	push   0xe
   46ea9:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   46eac:	48                   	dec    ax
   46ead:	6b c0 11             	imul   ax,ax,0x11
   46eb0:	05 1b 00             	add    ax,0x1b
   46eb3:	50                   	push   ax
   46eb4:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   46eb7:	d1 e3                	shl    bx,1
   46eb9:	8d 46 f8             	lea    ax,[bp-0x8]
   46ebc:	03 d8                	add    bx,ax
   46ebe:	36 8b 07             	mov    ax,WORD PTR ss:[bx]
   46ec1:	48                   	dec    ax
   46ec2:	6b c0 11             	imul   ax,ax,0x11
   46ec5:	05 07 00             	add    ax,0x7
   46ec8:	50                   	push   ax
   46ec9:	9a 99 0b 28 00       	call   0x28:0xb99
   46ece:	83 c4 0c             	add    sp,0xc
   46ed1:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   46ed4:	d1 e3                	shl    bx,1
   46ed6:	8d 46 f8             	lea    ax,[bp-0x8]
   46ed9:	03 d8                	add    bx,ax
   46edb:	36 8b 07             	mov    ax,WORD PTR ss:[bx]
   46ede:	d1 e0                	shl    ax,1
   46ee0:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
   46ee3:	6b db 5c             	imul   bx,bx,0x5c
   46ee6:	03 d8                	add    bx,ax
   46ee8:	b8 88 01             	mov    ax,0x188
   46eeb:	8e c0                	mov    es,ax
   46eed:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   46ef2:	bb 64 00             	mov    bx,0x64
   46ef5:	99                   	cwd
   46ef6:	f7 fb                	idiv   bx
   46ef8:	ba 88 01             	mov    dx,0x188
   46efb:	8e c2                	mov    es,dx
   46efd:	26 a3 e6 d5          	mov    es:0xd5e6,ax
   46f01:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   46f04:	d1 e3                	shl    bx,1
   46f06:	8d 46 f8             	lea    ax,[bp-0x8]
   46f09:	03 d8                	add    bx,ax
   46f0b:	36 8b 07             	mov    ax,WORD PTR ss:[bx]
   46f0e:	d1 e0                	shl    ax,1
   46f10:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
   46f13:	6b db 5c             	imul   bx,bx,0x5c
   46f16:	03 d8                	add    bx,ax
   46f18:	b8 88 01             	mov    ax,0x188
   46f1b:	8e c0                	mov    es,ax
   46f1d:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   46f22:	bb 64 00             	mov    bx,0x64
   46f25:	99                   	cwd
   46f26:	f7 fb                	idiv   bx
   46f28:	b8 88 01             	mov    ax,0x188
   46f2b:	8e c0                	mov    es,ax
   46f2d:	26 89 16 ea d5       	mov    WORD PTR es:0xd5ea,dx
   46f32:	6a 00                	push   0x0
   46f34:	6a 00                	push   0x0
   46f36:	90                   	nop
   46f37:	0e                   	push   cs
   46f38:	e8 74 18             	call   0x487af
   46f3b:	83 c4 04             	add    sp,0x4
   46f3e:	0e                   	push   cs
   46f3f:	e8 f2 ee             	call   0x45e34
   46f42:	b8 88 01             	mov    ax,0x188
   46f45:	8e c0                	mov    es,ax
   46f47:	26 a0 71 96          	mov    al,es:0x9671
   46f4b:	50                   	push   ax
   46f4c:	9a 6b 02 30 00       	call   0x30:0x26b
   46f51:	59                   	pop    cx
   46f52:	e9 cc 04             	jmp    0x47421
   46f55:	83 7e f6 02          	cmp    WORD PTR [bp-0xa],0x2
   46f59:	74 03                	je     0x46f5e
   46f5b:	e9 c3 04             	jmp    0x47421
   46f5e:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   46f61:	d1 e3                	shl    bx,1
   46f63:	8d 46 f8             	lea    ax,[bp-0x8]
   46f66:	03 d8                	add    bx,ax
   46f68:	36 83 3f 00          	cmp    WORD PTR ss:[bx],0x0
   46f6c:	75 03                	jne    0x46f71
   46f6e:	e9 b0 04             	jmp    0x47421
   46f71:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
   46f74:	6b db 5c             	imul   bx,bx,0x5c
   46f77:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   46f7a:	d1 e0                	shl    ax,1
   46f7c:	03 d8                	add    bx,ax
   46f7e:	b8 88 01             	mov    ax,0x188
   46f81:	8e c0                	mov    es,ax
   46f83:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   46f88:	bb 64 00             	mov    bx,0x64
   46f8b:	99                   	cwd
   46f8c:	f7 fb                	idiv   bx
   46f8e:	0b d2                	or     dx,dx
   46f90:	75 03                	jne    0x46f95
   46f92:	e9 8c 04             	jmp    0x47421
   46f95:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
   46f98:	6b db 5c             	imul   bx,bx,0x5c
   46f9b:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   46f9e:	d1 e0                	shl    ax,1
   46fa0:	03 d8                	add    bx,ax
   46fa2:	b8 88 01             	mov    ax,0x188
   46fa5:	8e c0                	mov    es,ax
   46fa7:	26 c7 87 ea 99 00 00 	mov    WORD PTR es:[bx-0x6616],0x0
   46fae:	ff 76 f4             	push   WORD PTR [bp-0xc]
   46fb1:	0e                   	push   cs
   46fb2:	e8 7b ea             	call   0x45a30
   46fb5:	59                   	pop    cx
   46fb6:	68 dc 00             	push   0xdc
   46fb9:	6a 53                	push   0x53
   46fbb:	6a 0e                	push   0xe
   46fbd:	6a 0e                	push   0xe
   46fbf:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   46fc2:	48                   	dec    ax
   46fc3:	6b c0 11             	imul   ax,ax,0x11
   46fc6:	05 1b 00             	add    ax,0x1b
   46fc9:	50                   	push   ax
   46fca:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   46fcd:	d1 e3                	shl    bx,1
   46fcf:	8d 46 f8             	lea    ax,[bp-0x8]
   46fd2:	03 d8                	add    bx,ax
   46fd4:	36 8b 07             	mov    ax,WORD PTR ss:[bx]
   46fd7:	48                   	dec    ax
   46fd8:	6b c0 11             	imul   ax,ax,0x11
   46fdb:	05 07 00             	add    ax,0x7
   46fde:	50                   	push   ax
   46fdf:	9a 99 0b 28 00       	call   0x28:0xb99
   46fe4:	83 c4 0c             	add    sp,0xc
   46fe7:	68 dc 00             	push   0xdc
   46fea:	6a 53                	push   0x53
   46fec:	6a 15                	push   0x15
   46fee:	6a 1f                	push   0x1f
   46ff0:	6a 03                	push   0x3
   46ff2:	6a 07                	push   0x7
   46ff4:	9a 99 0b 28 00       	call   0x28:0xb99
   46ff9:	83 c4 0c             	add    sp,0xc
   46ffc:	0e                   	push   cs
   46ffd:	e8 34 ee             	call   0x45e34
   47000:	6a 0a                	push   0xa
   47002:	9a ca 2d 10 00       	call   0x10:0x2dca
   47007:	59                   	pop    cx
   47008:	6a 00                	push   0x0
   4700a:	6a 53                	push   0x53
   4700c:	6a 15                	push   0x15
   4700e:	6a 1f                	push   0x1f
   47010:	6a 03                	push   0x3
   47012:	6a 07                	push   0x7
   47014:	9a 99 0b 28 00       	call   0x28:0xb99
   47019:	83 c4 0c             	add    sp,0xc
   4701c:	ff 76 f4             	push   WORD PTR [bp-0xc]
   4701f:	0e                   	push   cs
   47020:	e8 0d ea             	call   0x45a30
   47023:	e9 cd 03             	jmp    0x473f3
   47026:	e9 f8 03             	jmp    0x47421
   47029:	e9 f5 03             	jmp    0x47421
   4702c:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   4702f:	25 ff 00             	and    ax,0xff
   47032:	89 46 e2             	mov    WORD PTR [bp-0x1e],ax
   47035:	b9 08 00             	mov    cx,0x8
   47038:	bb 64 46             	mov    bx,0x4664
   4703b:	2e 8b 07             	mov    ax,WORD PTR cs:[bx]
   4703e:	3b 46 e2             	cmp    ax,WORD PTR [bp-0x1e]
   47041:	74 08                	je     0x4704b
   47043:	83 c3 02             	add    bx,0x2
   47046:	e2 f3                	loop   0x4703b
   47048:	e9 d6 03             	jmp    0x47421
   4704b:	2e ff 67 10          	jmp    WORD PTR cs:[bx+0x10]
   4704f:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   47052:	d1 e3                	shl    bx,1
   47054:	8d 46 f8             	lea    ax,[bp-0x8]
   47057:	03 d8                	add    bx,ax
   47059:	36 83 3f 00          	cmp    WORD PTR ss:[bx],0x0
   4705d:	75 03                	jne    0x47062
   4705f:	e9 bf 03             	jmp    0x47421
   47062:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   47065:	4b                   	dec    bx
   47066:	83 f3 01             	xor    bx,0x1
   47069:	d1 e3                	shl    bx,1
   4706b:	8d 46 fa             	lea    ax,[bp-0x6]
   4706e:	03 d8                	add    bx,ax
   47070:	36 83 3f 00          	cmp    WORD PTR ss:[bx],0x0
   47074:	74 03                	je     0x47079
   47076:	e9 ec 00             	jmp    0x47165
   47079:	68 dc 00             	push   0xdc
   4707c:	6a 53                	push   0x53
   4707e:	6a 0e                	push   0xe
   47080:	6a 0e                	push   0xe
   47082:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   47085:	48                   	dec    ax
   47086:	6b c0 11             	imul   ax,ax,0x11
   47089:	05 1b 00             	add    ax,0x1b
   4708c:	50                   	push   ax
   4708d:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   47090:	d1 e3                	shl    bx,1
   47092:	8d 46 f8             	lea    ax,[bp-0x8]
   47095:	03 d8                	add    bx,ax
   47097:	36 8b 07             	mov    ax,WORD PTR ss:[bx]
   4709a:	48                   	dec    ax
   4709b:	6b c0 11             	imul   ax,ax,0x11
   4709e:	05 07 00             	add    ax,0x7
   470a1:	50                   	push   ax
   470a2:	9a 99 0b 28 00       	call   0x28:0xb99
   470a7:	83 c4 0c             	add    sp,0xc
   470aa:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   470ad:	48                   	dec    ax
   470ae:	35 01 00             	xor    ax,0x1
   470b1:	40                   	inc    ax
   470b2:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   470b5:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   470b8:	d1 e3                	shl    bx,1
   470ba:	8d 46 f8             	lea    ax,[bp-0x8]
   470bd:	03 d8                	add    bx,ax
   470bf:	36 c7 07 01 00       	mov    WORD PTR ss:[bx],0x1
   470c4:	68 dc 00             	push   0xdc
   470c7:	6a 53                	push   0x53
   470c9:	6a 0e                	push   0xe
   470cb:	6a 0e                	push   0xe
   470cd:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   470d0:	48                   	dec    ax
   470d1:	6b c0 11             	imul   ax,ax,0x11
   470d4:	05 1b 00             	add    ax,0x1b
   470d7:	50                   	push   ax
   470d8:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   470db:	d1 e3                	shl    bx,1
   470dd:	8d 46 f8             	lea    ax,[bp-0x8]
   470e0:	03 d8                	add    bx,ax
   470e2:	36 8b 07             	mov    ax,WORD PTR ss:[bx]
   470e5:	48                   	dec    ax
   470e6:	6b c0 11             	imul   ax,ax,0x11
   470e9:	05 07 00             	add    ax,0x7
   470ec:	50                   	push   ax
   470ed:	9a 99 0b 28 00       	call   0x28:0xb99
   470f2:	83 c4 0c             	add    sp,0xc
   470f5:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   470f8:	d1 e3                	shl    bx,1
   470fa:	8d 46 f8             	lea    ax,[bp-0x8]
   470fd:	03 d8                	add    bx,ax
   470ff:	36 8b 07             	mov    ax,WORD PTR ss:[bx]
   47102:	d1 e0                	shl    ax,1
   47104:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
   47107:	6b db 5c             	imul   bx,bx,0x5c
   4710a:	03 d8                	add    bx,ax
   4710c:	b8 88 01             	mov    ax,0x188
   4710f:	8e c0                	mov    es,ax
   47111:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   47116:	bb 64 00             	mov    bx,0x64
   47119:	99                   	cwd
   4711a:	f7 fb                	idiv   bx
   4711c:	ba 88 01             	mov    dx,0x188
   4711f:	8e c2                	mov    es,dx
   47121:	26 a3 e6 d5          	mov    es:0xd5e6,ax
   47125:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   47128:	d1 e3                	shl    bx,1
   4712a:	8d 46 f8             	lea    ax,[bp-0x8]
   4712d:	03 d8                	add    bx,ax
   4712f:	36 8b 07             	mov    ax,WORD PTR ss:[bx]
   47132:	d1 e0                	shl    ax,1
   47134:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
   47137:	6b db 5c             	imul   bx,bx,0x5c
   4713a:	03 d8                	add    bx,ax
   4713c:	b8 88 01             	mov    ax,0x188
   4713f:	8e c0                	mov    es,ax
   47141:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   47146:	bb 64 00             	mov    bx,0x64
   47149:	99                   	cwd
   4714a:	f7 fb                	idiv   bx
   4714c:	b8 88 01             	mov    ax,0x188
   4714f:	8e c0                	mov    es,ax
   47151:	26 89 16 ea d5       	mov    WORD PTR es:0xd5ea,dx
   47156:	6a 00                	push   0x0
   47158:	6a 00                	push   0x0
   4715a:	90                   	nop
   4715b:	0e                   	push   cs
   4715c:	e8 50 16             	call   0x487af
   4715f:	83 c4 04             	add    sp,0x4
   47162:	e9 8f 02             	jmp    0x473f4
   47165:	ff 76 e8             	push   WORD PTR [bp-0x18]
   47168:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   4716b:	b4 00                	mov    ah,0x0
   4716d:	50                   	push   ax
   4716e:	ff 76 f4             	push   WORD PTR [bp-0xc]
   47171:	16                   	push   ss
   47172:	8d 46 f8             	lea    ax,[bp-0x8]
   47175:	50                   	push   ax
   47176:	0e                   	push   cs
   47177:	e8 10 f0             	call   0x4618a
   4717a:	83 c4 0a             	add    sp,0xa
   4717d:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   47180:	48                   	dec    ax
   47181:	35 01 00             	xor    ax,0x1
   47184:	40                   	inc    ax
   47185:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   47188:	e9 96 02             	jmp    0x47421
   4718b:	e9 93 02             	jmp    0x47421
   4718e:	c7 46 ee 00 00       	mov    WORD PTR [bp-0x12],0x0
   47193:	e9 8b 02             	jmp    0x47421
   47196:	80 7e 06 00          	cmp    BYTE PTR [bp+0x6],0x0
   4719a:	75 03                	jne    0x4719f
   4719c:	e9 82 02             	jmp    0x47421
   4719f:	b8 88 01             	mov    ax,0x188
   471a2:	8e c0                	mov    es,ax
   471a4:	26 83 3e 6f bb 00    	cmp    WORD PTR es:0xbb6f,0x0
   471aa:	74 39                	je     0x471e5
   471ac:	6a 00                	push   0x0
   471ae:	68 00 80             	push   0x8000
   471b1:	9a 79 17 00 00       	call   0x0:0x1779
   471b6:	99                   	cwd
   471b7:	50                   	push   ax
   471b8:	52                   	push   dx
   471b9:	33 d2                	xor    dx,dx
   471bb:	b8 09 00             	mov    ax,0x9
   471be:	59                   	pop    cx
   471bf:	5b                   	pop    bx
   471c0:	9a 42 12 00 00       	call   0x0:0x1242
   471c5:	52                   	push   dx
   471c6:	50                   	push   ax
   471c7:	9a df 12 00 00       	call   0x0:0x12df
   471cc:	ba 88 01             	mov    dx,0x188
   471cf:	8e c2                	mov    es,dx
   471d1:	26 8b 16 6f bb       	mov    dx,WORD PTR es:0xbb6f
   471d6:	6b d2 0a             	imul   dx,dx,0xa
   471d9:	03 d0                	add    dx,ax
   471db:	b8 88 01             	mov    ax,0x188
   471de:	8e c0                	mov    es,ax
   471e0:	26 01 16 73 bb       	add    WORD PTR es:0xbb73,dx
   471e5:	b8 88 01             	mov    ax,0x188
   471e8:	8e c0                	mov    es,ax
   471ea:	26 83 3e 71 bb 00    	cmp    WORD PTR es:0xbb71,0x0
   471f0:	74 2f                	je     0x47221
   471f2:	6a 00                	push   0x0
   471f4:	68 00 80             	push   0x8000
   471f7:	9a 79 17 00 00       	call   0x0:0x1779
   471fc:	99                   	cwd
   471fd:	d1 e0                	shl    ax,1
   471ff:	d1 d2                	rcl    dx,1
   47201:	52                   	push   dx
   47202:	50                   	push   ax
   47203:	9a df 12 00 00       	call   0x0:0x12df
   47208:	ba 88 01             	mov    dx,0x188
   4720b:	8e c2                	mov    es,dx
   4720d:	26 8b 16 71 bb       	mov    dx,WORD PTR es:0xbb71
   47212:	6b d2 05             	imul   dx,dx,0x5
   47215:	03 d0                	add    dx,ax
   47217:	b8 88 01             	mov    ax,0x188
   4721a:	8e c0                	mov    es,ax
   4721c:	26 01 16 73 bb       	add    WORD PTR es:0xbb73,dx
   47221:	b8 88 01             	mov    ax,0x188
   47224:	33 d2                	xor    dx,dx
   47226:	8e c0                	mov    es,ax
   47228:	26 89 16 71 bb       	mov    WORD PTR es:0xbb71,dx
   4722d:	8b c2                	mov    ax,dx
   4722f:	ba 88 01             	mov    dx,0x188
   47232:	8e c2                	mov    es,dx
   47234:	26 a3 6f bb          	mov    es:0xbb6f,ax
   47238:	e9 b0 01             	jmp    0x473eb
   4723b:	e9 e3 01             	jmp    0x47421
   4723e:	80 7e 06 00          	cmp    BYTE PTR [bp+0x6],0x0
   47242:	75 03                	jne    0x47247
   47244:	e9 da 01             	jmp    0x47421
   47247:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
   4724a:	6b db 5c             	imul   bx,bx,0x5c
   4724d:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   47250:	d1 e0                	shl    ax,1
   47252:	03 d8                	add    bx,ax
   47254:	b8 88 01             	mov    ax,0x188
   47257:	8e c0                	mov    es,ax
   47259:	26 83 bf ea 99 00    	cmp    WORD PTR es:[bx-0x6616],0x0
   4725f:	75 03                	jne    0x47264
   47261:	e9 bd 01             	jmp    0x47421
   47264:	83 7e f6 02          	cmp    WORD PTR [bp-0xa],0x2
   47268:	74 03                	je     0x4726d
   4726a:	e9 b4 01             	jmp    0x47421
   4726d:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
   47270:	6b db 5c             	imul   bx,bx,0x5c
   47273:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   47276:	d1 e0                	shl    ax,1
   47278:	03 d8                	add    bx,ax
   4727a:	b8 88 01             	mov    ax,0x188
   4727d:	8e c0                	mov    es,ax
   4727f:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   47284:	bb 64 00             	mov    bx,0x64
   47287:	99                   	cwd
   47288:	f7 fb                	idiv   bx
   4728a:	b8 88 01             	mov    ax,0x188
   4728d:	8b da                	mov    bx,dx
   4728f:	8e c0                	mov    es,ax
   47291:	26 8a 87 41 10       	mov    al,BYTE PTR es:[bx+0x1041]
   47296:	b4 00                	mov    ah,0x0
   47298:	d1 e0                	shl    ax,1
   4729a:	05 05 00             	add    ax,0x5
   4729d:	50                   	push   ax
   4729e:	6a 00                	push   0x0
   472a0:	68 00 80             	push   0x8000
   472a3:	9a 79 17 00 00       	call   0x0:0x1779
   472a8:	99                   	cwd
   472a9:	50                   	push   ax
   472aa:	52                   	push   dx
   472ab:	33 d2                	xor    dx,dx
   472ad:	b8 0a 00             	mov    ax,0xa
   472b0:	59                   	pop    cx
   472b1:	5b                   	pop    bx
   472b2:	9a 42 12 00 00       	call   0x0:0x1242
   472b7:	52                   	push   dx
   472b8:	50                   	push   ax
   472b9:	9a df 12 00 00       	call   0x0:0x12df
   472be:	5a                   	pop    dx
   472bf:	2b d0                	sub    dx,ax
   472c1:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
   472c4:	6b db 5c             	imul   bx,bx,0x5c
   472c7:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   472ca:	d1 e0                	shl    ax,1
   472cc:	03 d8                	add    bx,ax
   472ce:	b8 88 01             	mov    ax,0x188
   472d1:	8e c0                	mov    es,ax
   472d3:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   472d8:	bb 64 00             	mov    bx,0x64
   472db:	52                   	push   dx
   472dc:	99                   	cwd
   472dd:	f7 fb                	idiv   bx
   472df:	6b c0 64             	imul   ax,ax,0x64
   472e2:	5a                   	pop    dx
   472e3:	03 d0                	add    dx,ax
   472e5:	4a                   	dec    dx
   472e6:	83 fa 01             	cmp    dx,0x1
   472e9:	7d 05                	jge    0x472f0
   472eb:	b8 01 00             	mov    ax,0x1
   472ee:	eb 7d                	jmp    0x4736d
   472f0:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
   472f3:	6b db 5c             	imul   bx,bx,0x5c
   472f6:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   472f9:	d1 e0                	shl    ax,1
   472fb:	03 d8                	add    bx,ax
   472fd:	b8 88 01             	mov    ax,0x188
   47300:	8e c0                	mov    es,ax
   47302:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   47307:	bb 64 00             	mov    bx,0x64
   4730a:	99                   	cwd
   4730b:	f7 fb                	idiv   bx
   4730d:	b8 88 01             	mov    ax,0x188
   47310:	8b da                	mov    bx,dx
   47312:	8e c0                	mov    es,ax
   47314:	26 8a 87 41 10       	mov    al,BYTE PTR es:[bx+0x1041]
   47319:	b4 00                	mov    ah,0x0
   4731b:	d1 e0                	shl    ax,1
   4731d:	05 05 00             	add    ax,0x5
   47320:	50                   	push   ax
   47321:	6a 00                	push   0x0
   47323:	68 00 80             	push   0x8000
   47326:	9a 79 17 00 00       	call   0x0:0x1779
   4732b:	99                   	cwd
   4732c:	50                   	push   ax
   4732d:	52                   	push   dx
   4732e:	33 d2                	xor    dx,dx
   47330:	b8 0a 00             	mov    ax,0xa
   47333:	59                   	pop    cx
   47334:	5b                   	pop    bx
   47335:	9a 42 12 00 00       	call   0x0:0x1242
   4733a:	52                   	push   dx
   4733b:	50                   	push   ax
   4733c:	9a df 12 00 00       	call   0x0:0x12df
   47341:	8b d0                	mov    dx,ax
   47343:	58                   	pop    ax
   47344:	2b c2                	sub    ax,dx
   47346:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
   47349:	6b db 5c             	imul   bx,bx,0x5c
   4734c:	8b 56 fc             	mov    dx,WORD PTR [bp-0x4]
   4734f:	d1 e2                	shl    dx,1
   47351:	03 da                	add    bx,dx
   47353:	ba 88 01             	mov    dx,0x188
   47356:	8e c2                	mov    es,dx
   47358:	50                   	push   ax
   47359:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   4735e:	bb 64 00             	mov    bx,0x64
   47361:	99                   	cwd
   47362:	f7 fb                	idiv   bx
   47364:	6b c0 64             	imul   ax,ax,0x64
   47367:	8b d0                	mov    dx,ax
   47369:	58                   	pop    ax
   4736a:	03 c2                	add    ax,dx
   4736c:	48                   	dec    ax
   4736d:	89 46 e6             	mov    WORD PTR [bp-0x1a],ax
   47370:	b8 88 01             	mov    ax,0x188
   47373:	8b 56 e6             	mov    dx,WORD PTR [bp-0x1a]
   47376:	8e c0                	mov    es,ax
   47378:	26 01 16 73 bb       	add    WORD PTR es:0xbb73,dx
   4737d:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   47382:	eb 3b                	jmp    0x473bf
   47384:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
   47387:	6b db 5c             	imul   bx,bx,0x5c
   4738a:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4738d:	d1 e0                	shl    ax,1
   4738f:	03 d8                	add    bx,ax
   47391:	b8 88 01             	mov    ax,0x188
   47394:	8b 56 fc             	mov    dx,WORD PTR [bp-0x4]
   47397:	83 c2 22             	add    dx,0x22
   4739a:	8e c0                	mov    es,ax
   4739c:	26 39 97 e2 99       	cmp    WORD PTR es:[bx-0x661e],dx
   473a1:	75 19                	jne    0x473bc
   473a3:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
   473a6:	6b db 5c             	imul   bx,bx,0x5c
   473a9:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   473ac:	d1 e0                	shl    ax,1
   473ae:	03 d8                	add    bx,ax
   473b0:	b8 88 01             	mov    ax,0x188
   473b3:	8e c0                	mov    es,ax
   473b5:	26 c7 87 e2 99 00 00 	mov    WORD PTR es:[bx-0x661e],0x0
   473bc:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   473bf:	83 7e fe 03          	cmp    WORD PTR [bp-0x2],0x3
   473c3:	7c bf                	jl     0x47384
   473c5:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
   473c8:	6b db 5c             	imul   bx,bx,0x5c
   473cb:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   473ce:	d1 e0                	shl    ax,1
   473d0:	03 d8                	add    bx,ax
   473d2:	b8 88 01             	mov    ax,0x188
   473d5:	8e c0                	mov    es,ax
   473d7:	26 c7 87 ea 99 00 00 	mov    WORD PTR es:[bx-0x6616],0x0
   473de:	c7 46 fc 00 00       	mov    WORD PTR [bp-0x4],0x0
   473e3:	ff 76 f4             	push   WORD PTR [bp-0xc]
   473e6:	0e                   	push   cs
   473e7:	e8 46 e6             	call   0x45a30
   473ea:	59                   	pop    cx
   473eb:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   473ee:	50                   	push   ax
   473ef:	0e                   	push   cs
   473f0:	e8 ec ef             	call   0x463df
   473f3:	59                   	pop    cx
   473f4:	0e                   	push   cs
   473f5:	e8 3c ea             	call   0x45e34
   473f8:	eb 27                	jmp    0x47421
   473fa:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   473fd:	d1 e3                	shl    bx,1
   473ff:	8d 46 f8             	lea    ax,[bp-0x8]
   47402:	03 d8                	add    bx,ax
   47404:	36 83 3f 00          	cmp    WORD PTR ss:[bx],0x0
   47408:	75 17                	jne    0x47421
   4740a:	c7 46 f6 01 00       	mov    WORD PTR [bp-0xa],0x1
   4740f:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   47412:	d1 e3                	shl    bx,1
   47414:	8d 46 f8             	lea    ax,[bp-0x8]
   47417:	03 d8                	add    bx,ax
   47419:	36 c7 07 01 00       	mov    WORD PTR ss:[bx],0x1
   4741e:	e9 90 f8             	jmp    0x46cb1
   47421:	b8 88 01             	mov    ax,0x188
   47424:	8e c0                	mov    es,ax
   47426:	26 83 3e e5 e5 03    	cmp    WORD PTR es:0xe5e5,0x3
   4742c:	75 08                	jne    0x47436
   4742e:	c7 46 ee 00 00       	mov    WORD PTR [bp-0x12],0x0
   47433:	e9 7b 07             	jmp    0x47bb1
   47436:	b8 88 01             	mov    ax,0x188
   47439:	8e c0                	mov    es,ax
   4743b:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
   47441:	74 03                	je     0x47446
   47443:	e9 27 07             	jmp    0x47b6d
   47446:	9a 15 05 30 00       	call   0x30:0x515
   4744b:	89 46 ec             	mov    WORD PTR [bp-0x14],ax
   4744e:	83 7e ec 00          	cmp    WORD PTR [bp-0x14],0x0
   47452:	7f 03                	jg     0x47457
   47454:	e9 6b 01             	jmp    0x475c2
   47457:	83 7e ec 0a          	cmp    WORD PTR [bp-0x14],0xa
   4745b:	7e 03                	jle    0x47460
   4745d:	e9 62 01             	jmp    0x475c2
   47460:	c7 46 f6 02 00       	mov    WORD PTR [bp-0xa],0x2
   47465:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   47468:	4b                   	dec    bx
   47469:	83 f3 01             	xor    bx,0x1
   4746c:	d1 e3                	shl    bx,1
   4746e:	8d 46 fa             	lea    ax,[bp-0x6]
   47471:	03 d8                	add    bx,ax
   47473:	36 83 3f 00          	cmp    WORD PTR ss:[bx],0x0
   47477:	74 03                	je     0x4747c
   47479:	e9 a3 00             	jmp    0x4751f
   4747c:	ff 76 f4             	push   WORD PTR [bp-0xc]
   4747f:	0e                   	push   cs
   47480:	e8 ad e5             	call   0x45a30
   47483:	59                   	pop    cx
   47484:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
   47487:	6b db 5c             	imul   bx,bx,0x5c
   4748a:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   4748d:	d1 e0                	shl    ax,1
   4748f:	03 d8                	add    bx,ax
   47491:	b8 88 01             	mov    ax,0x188
   47494:	8e c0                	mov    es,ax
   47496:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   4749b:	bb 64 00             	mov    bx,0x64
   4749e:	99                   	cwd
   4749f:	f7 fb                	idiv   bx
   474a1:	b8 88 01             	mov    ax,0x188
   474a4:	8e c0                	mov    es,ax
   474a6:	26 89 16 ea d5       	mov    WORD PTR es:0xd5ea,dx
   474ab:	b8 88 01             	mov    ax,0x188
   474ae:	8e c0                	mov    es,ax
   474b0:	26 83 3e ea d5 00    	cmp    WORD PTR es:0xd5ea,0x0
   474b6:	74 58                	je     0x47510
   474b8:	b8 88 01             	mov    ax,0x188
   474bb:	8e c0                	mov    es,ax
   474bd:	26 83 3e ea d5 2b    	cmp    WORD PTR es:0xd5ea,0x2b
   474c3:	75 0e                	jne    0x474d3
   474c5:	b8 88 01             	mov    ax,0x188
   474c8:	8e c0                	mov    es,ax
   474ca:	26 c7 06 ea d5 22 00 	mov    WORD PTR es:0xd5ea,0x22
   474d1:	eb 18                	jmp    0x474eb
   474d3:	b8 88 01             	mov    ax,0x188
   474d6:	8e c0                	mov    es,ax
   474d8:	26 83 3e ea d5 20    	cmp    WORD PTR es:0xd5ea,0x20
   474de:	7e 0b                	jle    0x474eb
   474e0:	b8 88 01             	mov    ax,0x188
   474e3:	8e c0                	mov    es,ax
   474e5:	26 83 06 ea d5 02    	add    WORD PTR es:0xd5ea,0x2
   474eb:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   474ee:	d1 e3                	shl    bx,1
   474f0:	8d 46 f8             	lea    ax,[bp-0x8]
   474f3:	03 d8                	add    bx,ax
   474f5:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   474f8:	36 89 07             	mov    WORD PTR ss:[bx],ax
   474fb:	b8 88 01             	mov    ax,0x188
   474fe:	8e c0                	mov    es,ax
   47500:	26 a1 ea d5          	mov    ax,es:0xd5ea
   47504:	48                   	dec    ax
   47505:	ba 88 01             	mov    dx,0x188
   47508:	8e c2                	mov    es,dx
   4750a:	26 a3 e3 e5          	mov    es:0xe5e3,ax
   4750e:	eb 42                	jmp    0x47552
   47510:	b8 88 01             	mov    ax,0x188
   47513:	8e c0                	mov    es,ax
   47515:	26 a0 71 96          	mov    al,es:0x9671
   47519:	b4 00                	mov    ah,0x0
   4751b:	eb e8                	jmp    0x47505
   4751d:	eb 33                	jmp    0x47552
   4751f:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   47522:	d1 e3                	shl    bx,1
   47524:	8d 46 f8             	lea    ax,[bp-0x8]
   47527:	03 d8                	add    bx,ax
   47529:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   4752c:	36 89 07             	mov    WORD PTR ss:[bx],ax
   4752f:	ff 76 e8             	push   WORD PTR [bp-0x18]
   47532:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   47535:	b4 00                	mov    ah,0x0
   47537:	50                   	push   ax
   47538:	ff 76 f4             	push   WORD PTR [bp-0xc]
   4753b:	16                   	push   ss
   4753c:	8d 46 f8             	lea    ax,[bp-0x8]
   4753f:	50                   	push   ax
   47540:	0e                   	push   cs
   47541:	e8 46 ec             	call   0x4618a
   47544:	83 c4 0a             	add    sp,0xa
   47547:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   4754a:	48                   	dec    ax
   4754b:	35 01 00             	xor    ax,0x1
   4754e:	40                   	inc    ax
   4754f:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   47552:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   47555:	d1 e3                	shl    bx,1
   47557:	8d 46 f8             	lea    ax,[bp-0x8]
   4755a:	03 d8                	add    bx,ax
   4755c:	36 8b 07             	mov    ax,WORD PTR ss:[bx]
   4755f:	d1 e0                	shl    ax,1
   47561:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
   47564:	6b db 5c             	imul   bx,bx,0x5c
   47567:	03 d8                	add    bx,ax
   47569:	b8 88 01             	mov    ax,0x188
   4756c:	8e c0                	mov    es,ax
   4756e:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   47573:	bb 64 00             	mov    bx,0x64
   47576:	99                   	cwd
   47577:	f7 fb                	idiv   bx
   47579:	ba 88 01             	mov    dx,0x188
   4757c:	8e c2                	mov    es,dx
   4757e:	26 a3 e6 d5          	mov    es:0xd5e6,ax
   47582:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   47585:	d1 e3                	shl    bx,1
   47587:	8d 46 f8             	lea    ax,[bp-0x8]
   4758a:	03 d8                	add    bx,ax
   4758c:	36 8b 07             	mov    ax,WORD PTR ss:[bx]
   4758f:	d1 e0                	shl    ax,1
   47591:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
   47594:	6b db 5c             	imul   bx,bx,0x5c
   47597:	03 d8                	add    bx,ax
   47599:	b8 88 01             	mov    ax,0x188
   4759c:	8e c0                	mov    es,ax
   4759e:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   475a3:	bb 64 00             	mov    bx,0x64
   475a6:	99                   	cwd
   475a7:	f7 fb                	idiv   bx
   475a9:	b8 88 01             	mov    ax,0x188
   475ac:	8e c0                	mov    es,ax
   475ae:	26 89 16 ea d5       	mov    WORD PTR es:0xd5ea,dx
   475b3:	6a 00                	push   0x0
   475b5:	6a 00                	push   0x0
   475b7:	90                   	nop
   475b8:	0e                   	push   cs
   475b9:	e8 f3 11             	call   0x487af
   475bc:	83 c4 04             	add    sp,0x4
   475bf:	e9 a0 05             	jmp    0x47b62
   475c2:	83 7e ec 0a          	cmp    WORD PTR [bp-0x14],0xa
   475c6:	7f 03                	jg     0x475cb
   475c8:	e9 6d 01             	jmp    0x47738
   475cb:	83 7e ec 15          	cmp    WORD PTR [bp-0x14],0x15
   475cf:	7c 03                	jl     0x475d4
   475d1:	e9 64 01             	jmp    0x47738
   475d4:	c7 46 f6 01 00       	mov    WORD PTR [bp-0xa],0x1
   475d9:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   475dc:	4b                   	dec    bx
   475dd:	83 f3 01             	xor    bx,0x1
   475e0:	d1 e3                	shl    bx,1
   475e2:	8d 46 fa             	lea    ax,[bp-0x6]
   475e5:	03 d8                	add    bx,ax
   475e7:	36 83 3f 00          	cmp    WORD PTR ss:[bx],0x0
   475eb:	74 03                	je     0x475f0
   475ed:	e9 9e 00             	jmp    0x4768e
   475f0:	ff 76 f4             	push   WORD PTR [bp-0xc]
   475f3:	0e                   	push   cs
   475f4:	e8 39 e4             	call   0x45a30
   475f7:	59                   	pop    cx
   475f8:	8b 5e ec             	mov    bx,WORD PTR [bp-0x14]
   475fb:	d1 e3                	shl    bx,1
   475fd:	b8 88 01             	mov    ax,0x188
   47600:	8e c0                	mov    es,ax
   47602:	26 8b 87 41 bb       	mov    ax,WORD PTR es:[bx-0x44bf]
   47607:	bb 64 00             	mov    bx,0x64
   4760a:	99                   	cwd
   4760b:	f7 fb                	idiv   bx
   4760d:	b8 88 01             	mov    ax,0x188
   47610:	8e c0                	mov    es,ax
   47612:	26 89 16 ea d5       	mov    WORD PTR es:0xd5ea,dx
   47617:	b8 88 01             	mov    ax,0x188
   4761a:	8e c0                	mov    es,ax
   4761c:	26 83 3e ea d5 00    	cmp    WORD PTR es:0xd5ea,0x0
   47622:	74 5b                	je     0x4767f
   47624:	b8 88 01             	mov    ax,0x188
   47627:	8e c0                	mov    es,ax
   47629:	26 83 3e ea d5 2b    	cmp    WORD PTR es:0xd5ea,0x2b
   4762f:	75 0e                	jne    0x4763f
   47631:	b8 88 01             	mov    ax,0x188
   47634:	8e c0                	mov    es,ax
   47636:	26 c7 06 ea d5 22 00 	mov    WORD PTR es:0xd5ea,0x22
   4763d:	eb 18                	jmp    0x47657
   4763f:	b8 88 01             	mov    ax,0x188
   47642:	8e c0                	mov    es,ax
   47644:	26 83 3e ea d5 20    	cmp    WORD PTR es:0xd5ea,0x20
   4764a:	7e 0b                	jle    0x47657
   4764c:	b8 88 01             	mov    ax,0x188
   4764f:	8e c0                	mov    es,ax
   47651:	26 83 06 ea d5 02    	add    WORD PTR es:0xd5ea,0x2
   47657:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   4765a:	d1 e3                	shl    bx,1
   4765c:	8d 46 f8             	lea    ax,[bp-0x8]
   4765f:	03 d8                	add    bx,ax
   47661:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   47664:	05 f6 ff             	add    ax,0xfff6
   47667:	36 89 07             	mov    WORD PTR ss:[bx],ax
   4766a:	b8 88 01             	mov    ax,0x188
   4766d:	8e c0                	mov    es,ax
   4766f:	26 a1 ea d5          	mov    ax,es:0xd5ea
   47673:	48                   	dec    ax
   47674:	ba 88 01             	mov    dx,0x188
   47677:	8e c2                	mov    es,dx
   47679:	26 a3 e3 e5          	mov    es:0xe5e3,ax
   4767d:	eb 45                	jmp    0x476c4
   4767f:	b8 88 01             	mov    ax,0x188
   47682:	8e c0                	mov    es,ax
   47684:	26 a0 71 96          	mov    al,es:0x9671
   47688:	b4 00                	mov    ah,0x0
   4768a:	eb e8                	jmp    0x47674
   4768c:	eb 36                	jmp    0x476c4
   4768e:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   47691:	d1 e3                	shl    bx,1
   47693:	8d 46 f8             	lea    ax,[bp-0x8]
   47696:	03 d8                	add    bx,ax
   47698:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   4769b:	05 f6 ff             	add    ax,0xfff6
   4769e:	36 89 07             	mov    WORD PTR ss:[bx],ax
   476a1:	ff 76 e8             	push   WORD PTR [bp-0x18]
   476a4:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   476a7:	b4 00                	mov    ah,0x0
   476a9:	50                   	push   ax
   476aa:	ff 76 f4             	push   WORD PTR [bp-0xc]
   476ad:	16                   	push   ss
   476ae:	8d 46 f8             	lea    ax,[bp-0x8]
   476b1:	50                   	push   ax
   476b2:	0e                   	push   cs
   476b3:	e8 d4 ea             	call   0x4618a
   476b6:	83 c4 0a             	add    sp,0xa
   476b9:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   476bc:	48                   	dec    ax
   476bd:	35 01 00             	xor    ax,0x1
   476c0:	40                   	inc    ax
   476c1:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   476c4:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   476c7:	d1 e3                	shl    bx,1
   476c9:	8d 46 f8             	lea    ax,[bp-0x8]
   476cc:	03 d8                	add    bx,ax
   476ce:	36 8b 1f             	mov    bx,WORD PTR ss:[bx]
   476d1:	d1 e3                	shl    bx,1
   476d3:	b8 88 01             	mov    ax,0x188
   476d6:	8e c0                	mov    es,ax
   476d8:	26 8b 87 55 bb       	mov    ax,WORD PTR es:[bx-0x44ab]
   476dd:	bb 64 00             	mov    bx,0x64
   476e0:	99                   	cwd
   476e1:	f7 fb                	idiv   bx
   476e3:	ba 88 01             	mov    dx,0x188
   476e6:	8e c2                	mov    es,dx
   476e8:	26 a3 e6 d5          	mov    es:0xd5e6,ax
   476ec:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   476ef:	d1 e3                	shl    bx,1
   476f1:	8d 46 f8             	lea    ax,[bp-0x8]
   476f4:	03 d8                	add    bx,ax
   476f6:	36 8b 1f             	mov    bx,WORD PTR ss:[bx]
   476f9:	d1 e3                	shl    bx,1
   476fb:	b8 88 01             	mov    ax,0x188
   476fe:	8e c0                	mov    es,ax
   47700:	26 8b 87 55 bb       	mov    ax,WORD PTR es:[bx-0x44ab]
   47705:	bb 64 00             	mov    bx,0x64
   47708:	99                   	cwd
   47709:	f7 fb                	idiv   bx
   4770b:	b8 88 01             	mov    ax,0x188
   4770e:	8e c0                	mov    es,ax
   47710:	26 89 16 ea d5       	mov    WORD PTR es:0xd5ea,dx
   47715:	b8 88 01             	mov    ax,0x188
   47718:	8e c0                	mov    es,ax
   4771a:	26 8b 1e ea d5       	mov    bx,WORD PTR es:0xd5ea
   4771f:	b8 88 01             	mov    ax,0x188
   47722:	8e c0                	mov    es,ax
   47724:	26 8a 87 41 10       	mov    al,BYTE PTR es:[bx+0x1041]
   47729:	b4 00                	mov    ah,0x0
   4772b:	d1 e0                	shl    ax,1
   4772d:	03 46 e8             	add    ax,WORD PTR [bp-0x18]
   47730:	50                   	push   ax
   47731:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   47734:	50                   	push   ax
   47735:	e9 7f fe             	jmp    0x475b7
   47738:	83 7e ec 15          	cmp    WORD PTR [bp-0x14],0x15
   4773c:	74 03                	je     0x47741
   4773e:	e9 cd 00             	jmp    0x4780e
   47741:	83 7e f6 02          	cmp    WORD PTR [bp-0xa],0x2
   47745:	74 03                	je     0x4774a
   47747:	e9 1c 04             	jmp    0x47b66
   4774a:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
   4774d:	6b db 5c             	imul   bx,bx,0x5c
   47750:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   47753:	d1 e0                	shl    ax,1
   47755:	03 d8                	add    bx,ax
   47757:	b8 88 01             	mov    ax,0x188
   4775a:	8e c0                	mov    es,ax
   4775c:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   47761:	bb 64 00             	mov    bx,0x64
   47764:	99                   	cwd
   47765:	f7 fb                	idiv   bx
   47767:	0b d2                	or     dx,dx
   47769:	75 03                	jne    0x4776e
   4776b:	e9 f8 03             	jmp    0x47b66
   4776e:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   47771:	d1 e3                	shl    bx,1
   47773:	8d 46 f8             	lea    ax,[bp-0x8]
   47776:	03 d8                	add    bx,ax
   47778:	36 83 3f 00          	cmp    WORD PTR ss:[bx],0x0
   4777c:	75 03                	jne    0x47781
   4777e:	e9 e5 03             	jmp    0x47b66
   47781:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
   47784:	6b db 5c             	imul   bx,bx,0x5c
   47787:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4778a:	d1 e0                	shl    ax,1
   4778c:	03 d8                	add    bx,ax
   4778e:	b8 88 01             	mov    ax,0x188
   47791:	8e c0                	mov    es,ax
   47793:	26 c7 87 ea 99 00 00 	mov    WORD PTR es:[bx-0x6616],0x0
   4779a:	ff 76 f4             	push   WORD PTR [bp-0xc]
   4779d:	0e                   	push   cs
   4779e:	e8 8f e2             	call   0x45a30
   477a1:	59                   	pop    cx
   477a2:	68 dc 00             	push   0xdc
   477a5:	6a 53                	push   0x53
   477a7:	6a 0e                	push   0xe
   477a9:	6a 0e                	push   0xe
   477ab:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   477ae:	48                   	dec    ax
   477af:	6b c0 11             	imul   ax,ax,0x11
   477b2:	05 1b 00             	add    ax,0x1b
   477b5:	50                   	push   ax
   477b6:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   477b9:	d1 e3                	shl    bx,1
   477bb:	8d 46 f8             	lea    ax,[bp-0x8]
   477be:	03 d8                	add    bx,ax
   477c0:	36 8b 07             	mov    ax,WORD PTR ss:[bx]
   477c3:	48                   	dec    ax
   477c4:	6b c0 11             	imul   ax,ax,0x11
   477c7:	05 07 00             	add    ax,0x7
   477ca:	50                   	push   ax
   477cb:	9a 99 0b 28 00       	call   0x28:0xb99
   477d0:	83 c4 0c             	add    sp,0xc
   477d3:	68 dc 00             	push   0xdc
   477d6:	6a 53                	push   0x53
   477d8:	6a 15                	push   0x15
   477da:	6a 1f                	push   0x1f
   477dc:	6a 03                	push   0x3
   477de:	6a 07                	push   0x7
   477e0:	9a 99 0b 28 00       	call   0x28:0xb99
   477e5:	83 c4 0c             	add    sp,0xc
   477e8:	0e                   	push   cs
   477e9:	e8 48 e6             	call   0x45e34
   477ec:	6a 0a                	push   0xa
   477ee:	9a ca 2d 10 00       	call   0x10:0x2dca
   477f3:	59                   	pop    cx
   477f4:	6a 00                	push   0x0
   477f6:	6a 53                	push   0x53
   477f8:	6a 15                	push   0x15
   477fa:	6a 1f                	push   0x1f
   477fc:	6a 03                	push   0x3
   477fe:	6a 07                	push   0x7
   47800:	9a 99 0b 28 00       	call   0x28:0xb99
   47805:	83 c4 0c             	add    sp,0xc
   47808:	e9 57 03             	jmp    0x47b62
   4780b:	e9 58 03             	jmp    0x47b66
   4780e:	83 7e ec 15          	cmp    WORD PTR [bp-0x14],0x15
   47812:	7f 03                	jg     0x47817
   47814:	e9 9d 00             	jmp    0x478b4
   47817:	83 7e ec 1a          	cmp    WORD PTR [bp-0x14],0x1a
   4781b:	7c 03                	jl     0x47820
   4781d:	e9 94 00             	jmp    0x478b4
   47820:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   47823:	05 eb ff             	add    ax,0xffeb
   47826:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   47829:	50                   	push   ax
   4782a:	0e                   	push   cs
   4782b:	e8 02 e2             	call   0x45a30
   4782e:	59                   	pop    cx
   4782f:	83 7e f6 02          	cmp    WORD PTR [bp-0xa],0x2
   47833:	75 6d                	jne    0x478a2
   47835:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   47838:	d1 e3                	shl    bx,1
   4783a:	8d 46 f8             	lea    ax,[bp-0x8]
   4783d:	03 d8                	add    bx,ax
   4783f:	36 8b 07             	mov    ax,WORD PTR ss:[bx]
   47842:	d1 e0                	shl    ax,1
   47844:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
   47847:	6b db 5c             	imul   bx,bx,0x5c
   4784a:	03 d8                	add    bx,ax
   4784c:	b8 88 01             	mov    ax,0x188
   4784f:	8e c0                	mov    es,ax
   47851:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   47856:	bb 64 00             	mov    bx,0x64
   47859:	99                   	cwd
   4785a:	f7 fb                	idiv   bx
   4785c:	ba 88 01             	mov    dx,0x188
   4785f:	8e c2                	mov    es,dx
   47861:	26 a3 e6 d5          	mov    es:0xd5e6,ax
   47865:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   47868:	d1 e3                	shl    bx,1
   4786a:	8d 46 f8             	lea    ax,[bp-0x8]
   4786d:	03 d8                	add    bx,ax
   4786f:	36 8b 07             	mov    ax,WORD PTR ss:[bx]
   47872:	d1 e0                	shl    ax,1
   47874:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
   47877:	6b db 5c             	imul   bx,bx,0x5c
   4787a:	03 d8                	add    bx,ax
   4787c:	b8 88 01             	mov    ax,0x188
   4787f:	8e c0                	mov    es,ax
   47881:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   47886:	bb 64 00             	mov    bx,0x64
   47889:	99                   	cwd
   4788a:	f7 fb                	idiv   bx
   4788c:	b8 88 01             	mov    ax,0x188
   4788f:	8e c0                	mov    es,ax
   47891:	26 89 16 ea d5       	mov    WORD PTR es:0xd5ea,dx
   47896:	6a 00                	push   0x0
   47898:	6a 00                	push   0x0
   4789a:	90                   	nop
   4789b:	0e                   	push   cs
   4789c:	e8 10 0f             	call   0x487af
   4789f:	83 c4 04             	add    sp,0x4
   478a2:	b8 88 01             	mov    ax,0x188
   478a5:	8e c0                	mov    es,ax
   478a7:	26 a0 71 96          	mov    al,es:0x9671
   478ab:	50                   	push   ax
   478ac:	9a 6b 02 30 00       	call   0x30:0x26b
   478b1:	e9 ad 02             	jmp    0x47b61
   478b4:	83 7e ec 1a          	cmp    WORD PTR [bp-0x14],0x1a
   478b8:	75 08                	jne    0x478c2
   478ba:	c7 46 ee 00 00       	mov    WORD PTR [bp-0x12],0x0
   478bf:	e9 a4 02             	jmp    0x47b66
   478c2:	83 7e ec 1b          	cmp    WORD PTR [bp-0x14],0x1b
   478c6:	74 03                	je     0x478cb
   478c8:	e9 a5 00             	jmp    0x47970
   478cb:	80 7e 06 00          	cmp    BYTE PTR [bp+0x6],0x0
   478cf:	75 03                	jne    0x478d4
   478d1:	e9 9c 00             	jmp    0x47970
   478d4:	b8 88 01             	mov    ax,0x188
   478d7:	8e c0                	mov    es,ax
   478d9:	26 83 3e 6f bb 00    	cmp    WORD PTR es:0xbb6f,0x0
   478df:	74 39                	je     0x4791a
   478e1:	6a 00                	push   0x0
   478e3:	68 00 80             	push   0x8000
   478e6:	9a 79 17 00 00       	call   0x0:0x1779
   478eb:	99                   	cwd
   478ec:	50                   	push   ax
   478ed:	52                   	push   dx
   478ee:	33 d2                	xor    dx,dx
   478f0:	b8 09 00             	mov    ax,0x9
   478f3:	59                   	pop    cx
   478f4:	5b                   	pop    bx
   478f5:	9a 42 12 00 00       	call   0x0:0x1242
   478fa:	52                   	push   dx
   478fb:	50                   	push   ax
   478fc:	9a df 12 00 00       	call   0x0:0x12df
   47901:	ba 88 01             	mov    dx,0x188
   47904:	8e c2                	mov    es,dx
   47906:	26 8b 16 6f bb       	mov    dx,WORD PTR es:0xbb6f
   4790b:	6b d2 0a             	imul   dx,dx,0xa
   4790e:	03 d0                	add    dx,ax
   47910:	b8 88 01             	mov    ax,0x188
   47913:	8e c0                	mov    es,ax
   47915:	26 01 16 73 bb       	add    WORD PTR es:0xbb73,dx
   4791a:	b8 88 01             	mov    ax,0x188
   4791d:	8e c0                	mov    es,ax
   4791f:	26 83 3e 71 bb 00    	cmp    WORD PTR es:0xbb71,0x0
   47925:	74 2f                	je     0x47956
   47927:	6a 00                	push   0x0
   47929:	68 00 80             	push   0x8000
   4792c:	9a 79 17 00 00       	call   0x0:0x1779
   47931:	99                   	cwd
   47932:	d1 e0                	shl    ax,1
   47934:	d1 d2                	rcl    dx,1
   47936:	52                   	push   dx
   47937:	50                   	push   ax
   47938:	9a df 12 00 00       	call   0x0:0x12df
   4793d:	ba 88 01             	mov    dx,0x188
   47940:	8e c2                	mov    es,dx
   47942:	26 8b 16 71 bb       	mov    dx,WORD PTR es:0xbb71
   47947:	6b d2 05             	imul   dx,dx,0x5
   4794a:	03 d0                	add    dx,ax
   4794c:	b8 88 01             	mov    ax,0x188
   4794f:	8e c0                	mov    es,ax
   47951:	26 01 16 73 bb       	add    WORD PTR es:0xbb73,dx
   47956:	b8 88 01             	mov    ax,0x188
   47959:	33 d2                	xor    dx,dx
   4795b:	8e c0                	mov    es,ax
   4795d:	26 89 16 71 bb       	mov    WORD PTR es:0xbb71,dx
   47962:	8b c2                	mov    ax,dx
   47964:	ba 88 01             	mov    dx,0x188
   47967:	8e c2                	mov    es,dx
   47969:	26 a3 6f bb          	mov    es:0xbb6f,ax
   4796d:	e9 e9 01             	jmp    0x47b59
   47970:	83 7e ec 1c          	cmp    WORD PTR [bp-0x14],0x1c
   47974:	74 03                	je     0x47979
   47976:	e9 ed 01             	jmp    0x47b66
   47979:	b8 88 01             	mov    ax,0x188
   4797c:	8e c0                	mov    es,ax
   4797e:	26 a0 71 96          	mov    al,es:0x9671
   47982:	b4 00                	mov    ah,0x0
   47984:	ba 88 01             	mov    dx,0x188
   47987:	8e c2                	mov    es,dx
   47989:	26 3b 06 e3 e5       	cmp    ax,WORD PTR es:0xe5e3
   4798e:	75 03                	jne    0x47993
   47990:	e9 d3 01             	jmp    0x47b66
   47993:	80 7e 06 00          	cmp    BYTE PTR [bp+0x6],0x0
   47997:	75 03                	jne    0x4799c
   47999:	e9 ca 01             	jmp    0x47b66
   4799c:	80 7e 06 00          	cmp    BYTE PTR [bp+0x6],0x0
   479a0:	75 03                	jne    0x479a5
   479a2:	e9 c1 01             	jmp    0x47b66
   479a5:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
   479a8:	6b db 5c             	imul   bx,bx,0x5c
   479ab:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   479ae:	d1 e0                	shl    ax,1
   479b0:	03 d8                	add    bx,ax
   479b2:	b8 88 01             	mov    ax,0x188
   479b5:	8e c0                	mov    es,ax
   479b7:	26 83 bf ea 99 00    	cmp    WORD PTR es:[bx-0x6616],0x0
   479bd:	75 03                	jne    0x479c2
   479bf:	e9 a4 01             	jmp    0x47b66
   479c2:	83 7e f6 02          	cmp    WORD PTR [bp-0xa],0x2
   479c6:	74 03                	je     0x479cb
   479c8:	e9 9b 01             	jmp    0x47b66
   479cb:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
   479ce:	6b db 5c             	imul   bx,bx,0x5c
   479d1:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   479d4:	d1 e0                	shl    ax,1
   479d6:	03 d8                	add    bx,ax
   479d8:	b8 88 01             	mov    ax,0x188
   479db:	8e c0                	mov    es,ax
   479dd:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   479e2:	bb 64 00             	mov    bx,0x64
   479e5:	99                   	cwd
   479e6:	f7 fb                	idiv   bx
   479e8:	b8 88 01             	mov    ax,0x188
   479eb:	8b da                	mov    bx,dx
   479ed:	8e c0                	mov    es,ax
   479ef:	26 8a 87 41 10       	mov    al,BYTE PTR es:[bx+0x1041]
   479f4:	b4 00                	mov    ah,0x0
   479f6:	d1 e0                	shl    ax,1
   479f8:	05 05 00             	add    ax,0x5
   479fb:	50                   	push   ax
   479fc:	6a 00                	push   0x0
   479fe:	68 00 80             	push   0x8000
   47a01:	9a 79 17 00 00       	call   0x0:0x1779
   47a06:	99                   	cwd
   47a07:	50                   	push   ax
   47a08:	52                   	push   dx
   47a09:	33 d2                	xor    dx,dx
   47a0b:	b8 0a 00             	mov    ax,0xa
   47a0e:	59                   	pop    cx
   47a0f:	5b                   	pop    bx
   47a10:	9a 42 12 00 00       	call   0x0:0x1242
   47a15:	52                   	push   dx
   47a16:	50                   	push   ax
   47a17:	9a df 12 00 00       	call   0x0:0x12df
   47a1c:	5a                   	pop    dx
   47a1d:	2b d0                	sub    dx,ax
   47a1f:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
   47a22:	6b db 5c             	imul   bx,bx,0x5c
   47a25:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   47a28:	d1 e0                	shl    ax,1
   47a2a:	03 d8                	add    bx,ax
   47a2c:	b8 88 01             	mov    ax,0x188
   47a2f:	8e c0                	mov    es,ax
   47a31:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   47a36:	bb 64 00             	mov    bx,0x64
   47a39:	52                   	push   dx
   47a3a:	99                   	cwd
   47a3b:	f7 fb                	idiv   bx
   47a3d:	6b c0 64             	imul   ax,ax,0x64
   47a40:	5a                   	pop    dx
   47a41:	03 d0                	add    dx,ax
   47a43:	42                   	inc    dx
   47a44:	83 fa 01             	cmp    dx,0x1
   47a47:	7d 05                	jge    0x47a4e
   47a49:	b8 01 00             	mov    ax,0x1
   47a4c:	eb 7d                	jmp    0x47acb
   47a4e:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
   47a51:	6b db 5c             	imul   bx,bx,0x5c
   47a54:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   47a57:	d1 e0                	shl    ax,1
   47a59:	03 d8                	add    bx,ax
   47a5b:	b8 88 01             	mov    ax,0x188
   47a5e:	8e c0                	mov    es,ax
   47a60:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   47a65:	bb 64 00             	mov    bx,0x64
   47a68:	99                   	cwd
   47a69:	f7 fb                	idiv   bx
   47a6b:	b8 88 01             	mov    ax,0x188
   47a6e:	8b da                	mov    bx,dx
   47a70:	8e c0                	mov    es,ax
   47a72:	26 8a 87 41 10       	mov    al,BYTE PTR es:[bx+0x1041]
   47a77:	b4 00                	mov    ah,0x0
   47a79:	d1 e0                	shl    ax,1
   47a7b:	05 05 00             	add    ax,0x5
   47a7e:	50                   	push   ax
   47a7f:	6a 00                	push   0x0
   47a81:	68 00 80             	push   0x8000
   47a84:	9a 79 17 00 00       	call   0x0:0x1779
   47a89:	99                   	cwd
   47a8a:	50                   	push   ax
   47a8b:	52                   	push   dx
   47a8c:	33 d2                	xor    dx,dx
   47a8e:	b8 0a 00             	mov    ax,0xa
   47a91:	59                   	pop    cx
   47a92:	5b                   	pop    bx
   47a93:	9a 42 12 00 00       	call   0x0:0x1242
   47a98:	52                   	push   dx
   47a99:	50                   	push   ax
   47a9a:	9a df 12 00 00       	call   0x0:0x12df
   47a9f:	8b d0                	mov    dx,ax
   47aa1:	58                   	pop    ax
   47aa2:	2b c2                	sub    ax,dx
   47aa4:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
   47aa7:	6b db 5c             	imul   bx,bx,0x5c
   47aaa:	8b 56 fc             	mov    dx,WORD PTR [bp-0x4]
   47aad:	d1 e2                	shl    dx,1
   47aaf:	03 da                	add    bx,dx
   47ab1:	ba 88 01             	mov    dx,0x188
   47ab4:	8e c2                	mov    es,dx
   47ab6:	50                   	push   ax
   47ab7:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   47abc:	bb 64 00             	mov    bx,0x64
   47abf:	99                   	cwd
   47ac0:	f7 fb                	idiv   bx
   47ac2:	6b c0 64             	imul   ax,ax,0x64
   47ac5:	8b d0                	mov    dx,ax
   47ac7:	58                   	pop    ax
   47ac8:	03 c2                	add    ax,dx
   47aca:	40                   	inc    ax
   47acb:	89 46 e6             	mov    WORD PTR [bp-0x1a],ax
   47ace:	b8 88 01             	mov    ax,0x188
   47ad1:	8b 56 e6             	mov    dx,WORD PTR [bp-0x1a]
   47ad4:	8e c0                	mov    es,ax
   47ad6:	26 01 16 73 bb       	add    WORD PTR es:0xbb73,dx
   47adb:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   47ae0:	eb 3b                	jmp    0x47b1d
   47ae2:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
   47ae5:	6b db 5c             	imul   bx,bx,0x5c
   47ae8:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   47aeb:	d1 e0                	shl    ax,1
   47aed:	03 d8                	add    bx,ax
   47aef:	b8 88 01             	mov    ax,0x188
   47af2:	8b 56 fc             	mov    dx,WORD PTR [bp-0x4]
   47af5:	83 c2 22             	add    dx,0x22
   47af8:	8e c0                	mov    es,ax
   47afa:	26 39 97 e2 99       	cmp    WORD PTR es:[bx-0x661e],dx
   47aff:	75 19                	jne    0x47b1a
   47b01:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
   47b04:	6b db 5c             	imul   bx,bx,0x5c
   47b07:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   47b0a:	d1 e0                	shl    ax,1
   47b0c:	03 d8                	add    bx,ax
   47b0e:	b8 88 01             	mov    ax,0x188
   47b11:	8e c0                	mov    es,ax
   47b13:	26 c7 87 e2 99 00 00 	mov    WORD PTR es:[bx-0x661e],0x0
   47b1a:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   47b1d:	83 7e fe 03          	cmp    WORD PTR [bp-0x2],0x3
   47b21:	7c bf                	jl     0x47ae2
   47b23:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
   47b26:	6b db 5c             	imul   bx,bx,0x5c
   47b29:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   47b2c:	d1 e0                	shl    ax,1
   47b2e:	03 d8                	add    bx,ax
   47b30:	b8 88 01             	mov    ax,0x188
   47b33:	8e c0                	mov    es,ax
   47b35:	26 c7 87 ea 99 00 00 	mov    WORD PTR es:[bx-0x6616],0x0
   47b3c:	c7 46 fc 00 00       	mov    WORD PTR [bp-0x4],0x0
   47b41:	ff 76 f4             	push   WORD PTR [bp-0xc]
   47b44:	0e                   	push   cs
   47b45:	e8 e8 de             	call   0x45a30
   47b48:	59                   	pop    cx
   47b49:	b8 88 01             	mov    ax,0x188
   47b4c:	8e c0                	mov    es,ax
   47b4e:	26 a0 71 96          	mov    al,es:0x9671
   47b52:	50                   	push   ax
   47b53:	9a 6b 02 30 00       	call   0x30:0x26b
   47b58:	59                   	pop    cx
   47b59:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   47b5c:	50                   	push   ax
   47b5d:	0e                   	push   cs
   47b5e:	e8 7e e8             	call   0x463df
   47b61:	59                   	pop    cx
   47b62:	0e                   	push   cs
   47b63:	e8 ce e2             	call   0x45e34
   47b66:	9a 14 07 30 00       	call   0x30:0x714
   47b6b:	eb 44                	jmp    0x47bb1
   47b6d:	b8 88 01             	mov    ax,0x188
   47b70:	8e c0                	mov    es,ax
   47b72:	26 83 3e e5 e5 02    	cmp    WORD PTR es:0xe5e5,0x2
   47b78:	75 37                	jne    0x47bb1
   47b7a:	b8 88 01             	mov    ax,0x188
   47b7d:	8e c0                	mov    es,ax
   47b7f:	26 a0 71 96          	mov    al,es:0x9671
   47b83:	50                   	push   ax
   47b84:	9a 6b 02 30 00       	call   0x30:0x26b
   47b89:	59                   	pop    cx
   47b8a:	83 7e f6 01          	cmp    WORD PTR [bp-0xa],0x1
   47b8e:	75 06                	jne    0x47b96
   47b90:	0e                   	push   cs
   47b91:	e8 46 e4             	call   0x45fda
   47b94:	eb 08                	jmp    0x47b9e
   47b96:	ff 76 f4             	push   WORD PTR [bp-0xc]
   47b99:	0e                   	push   cs
   47b9a:	e8 93 de             	call   0x45a30
   47b9d:	59                   	pop    cx
   47b9e:	0e                   	push   cs
   47b9f:	e8 92 e2             	call   0x45e34
   47ba2:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   47ba5:	d1 e3                	shl    bx,1
   47ba7:	8d 46 f8             	lea    ax,[bp-0x8]
   47baa:	03 d8                	add    bx,ax
   47bac:	36 c7 07 00 00       	mov    WORD PTR ss:[bx],0x0
   47bb1:	83 7e ee 00          	cmp    WORD PTR [bp-0x12],0x0
   47bb5:	74 03                	je     0x47bba
   47bb7:	e9 4f ef             	jmp    0x46b09
   47bba:	b8 88 01             	mov    ax,0x188
   47bbd:	8e c0                	mov    es,ax
   47bbf:	26 a0 71 96          	mov    al,es:0x9671
   47bc3:	50                   	push   ax
   47bc4:	9a 6b 02 30 00       	call   0x30:0x26b
   47bc9:	59                   	pop    cx
   47bca:	c7 46 f2 01 00       	mov    WORD PTR [bp-0xe],0x1
   47bcf:	eb 5a                	jmp    0x47c2b
   47bd1:	80 7e 06 01          	cmp    BYTE PTR [bp+0x6],0x1
   47bd5:	75 1e                	jne    0x47bf5
   47bd7:	8b 5e f2             	mov    bx,WORD PTR [bp-0xe]
   47bda:	d1 e3                	shl    bx,1
   47bdc:	b8 88 01             	mov    ax,0x188
   47bdf:	8e c0                	mov    es,ax
   47be1:	26 8a 87 55 bb       	mov    al,BYTE PTR es:[bx-0x44ab]
   47be6:	8b 5e f2             	mov    bx,WORD PTR [bp-0xe]
   47be9:	ba 88 01             	mov    dx,0x188
   47bec:	8e c2                	mov    es,dx
   47bee:	26 88 87 b7 bb       	mov    BYTE PTR es:[bx-0x4449],al
   47bf3:	eb 22                	jmp    0x47c17
   47bf5:	80 7e 06 02          	cmp    BYTE PTR [bp+0x6],0x2
   47bf9:	75 1c                	jne    0x47c17
   47bfb:	8b 5e f2             	mov    bx,WORD PTR [bp-0xe]
   47bfe:	d1 e3                	shl    bx,1
   47c00:	b8 88 01             	mov    ax,0x188
   47c03:	8e c0                	mov    es,ax
   47c05:	26 8a 87 55 bb       	mov    al,BYTE PTR es:[bx-0x44ab]
   47c0a:	8b 5e f2             	mov    bx,WORD PTR [bp-0xe]
   47c0d:	ba 88 01             	mov    dx,0x188
   47c10:	8e c2                	mov    es,dx
   47c12:	26 88 87 ac bb       	mov    BYTE PTR es:[bx-0x4454],al
   47c17:	8b 5e f2             	mov    bx,WORD PTR [bp-0xe]
   47c1a:	d1 e3                	shl    bx,1
   47c1c:	b8 88 01             	mov    ax,0x188
   47c1f:	8e c0                	mov    es,ax
   47c21:	26 c7 87 55 bb 00 00 	mov    WORD PTR es:[bx-0x44ab],0x0
   47c28:	ff 46 f2             	inc    WORD PTR [bp-0xe]
   47c2b:	83 7e f2 0b          	cmp    WORD PTR [bp-0xe],0xb
   47c2f:	7c a0                	jl     0x47bd1
   47c31:	33 c0                	xor    ax,ax
   47c33:	a3 a6 bb             	mov    ds:0xbba6,ax
   47c36:	a3 a4 bb             	mov    ds:0xbba4,ax
   47c39:	a3 a2 bb             	mov    ds:0xbba2,ax
   47c3c:	90                   	nop
   47c3d:	0e                   	push   cs
   47c3e:	e8 ae 14             	call   0x490ef
   47c41:	6a 00                	push   0x0
   47c43:	6a 53                	push   0x53
   47c45:	6a 0b                	push   0xb
   47c47:	6a 78                	push   0x78
   47c49:	6a 03                	push   0x3
   47c4b:	6a 29                	push   0x29
   47c4d:	9a 08 09 28 00       	call   0x28:0x908
   47c52:	83 c4 0c             	add    sp,0xc
   47c55:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   47c5a:	eb 20                	jmp    0x47c7c
   47c5c:	6a 00                	push   0x0
   47c5e:	6a 53                	push   0x53
   47c60:	6a 09                	push   0x9
   47c62:	6a 57                	push   0x57
   47c64:	6a 10                	push   0x10
   47c66:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   47c69:	48                   	dec    ax
   47c6a:	6b c0 5a             	imul   ax,ax,0x5a
   47c6d:	05 2a 00             	add    ax,0x2a
   47c70:	50                   	push   ax
   47c71:	9a 08 09 28 00       	call   0x28:0x908
   47c76:	83 c4 0c             	add    sp,0xc
   47c79:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   47c7c:	83 7e fe 03          	cmp    WORD PTR [bp-0x2],0x3
   47c80:	7e da                	jle    0x47c5c
   47c82:	6a 01                	push   0x1
   47c84:	b8 88 01             	mov    ax,0x188
   47c87:	8e c0                	mov    es,ax
   47c89:	26 ff 36 39 e5       	push   WORD PTR es:0xe539
   47c8e:	26 ff 36 37 e5       	push   WORD PTR es:0xe537
   47c93:	9a f4 05 20 00       	call   0x20:0x5f4
   47c98:	83 c4 06             	add    sp,0x6
   47c9b:	6a 03                	push   0x3
   47c9d:	9a c5 00 10 01       	call   0x110:0xc5
   47ca2:	59                   	pop    cx
   47ca3:	68 88 01             	push   0x188
   47ca6:	68 2c 96             	push   0x962c
   47ca9:	68 88 01             	push   0x188
   47cac:	68 24 98             	push   0x9824
   47caf:	b9 48 00             	mov    cx,0x48
   47cb2:	9a 7a 12 00 00       	call   0x0:0x127a
   47cb7:	9a 3e 00 18 01       	call   0x118:0x3e
   47cbc:	68 b2 00             	push   0xb2
   47cbf:	68 c6 00             	push   0xc6
   47cc2:	9a 66 00 18 01       	call   0x118:0x66
   47cc7:	83 c4 04             	add    sp,0x4
   47cca:	6a 01                	push   0x1
   47ccc:	9a 2f 00 18 01       	call   0x118:0x2f
   47cd1:	59                   	pop    cx
   47cd2:	c9                   	leave
   47cd3:	cb                   	retf
   47cd4:	0d 00 1b             	or     ax,0x1b00
   47cd7:	00 42 00             	add    BYTE PTR [bp+si+0x0],al
   47cda:	49                   	dec    cx
   47cdb:	00 53 00             	add    BYTE PTR [bp+di+0x0],dl
   47cde:	62 00                	bound  ax,DWORD PTR [bx+si]
   47ce0:	69 00 73 00          	imul   ax,WORD PTR [bx+si],0x73
   47ce4:	df 39                	fistp  QWORD PTR [bx+di]
   47ce6:	1e                   	push   ds
   47ce7:	3b 26 3b 8a          	cmp    sp,WORD PTR ds:0x8a3b
   47ceb:	3d ce 3b             	cmp    ax,0x3bce
   47cee:	26 3b 8a 3d ce       	cmp    cx,WORD PTR es:[bp+si-0x31c3]
   47cf3:	3b 08                	cmp    cx,WORD PTR [bx+si]
   47cf5:	38 08                	cmp    BYTE PTR [bx+si],cl
   47cf7:	38 08                	cmp    BYTE PTR [bx+si],cl
   47cf9:	38 08                	cmp    BYTE PTR [bx+si],cl
   47cfb:	38 e5                	cmp    ch,ah
   47cfd:	38 b1 3d b1          	cmp    BYTE PTR [bx+di-0x4ec3],dh
   47d01:	3d b1 3d             	cmp    ax,0x3db1
   47d04:	b1 3d                	mov    cl,0x3d
   47d06:	b1 3d                	mov    cl,0x3d
   47d08:	b1 3d                	mov    cl,0x3d
   47d0a:	b1 3d                	mov    cl,0x3d
   47d0c:	b1 3d                	mov    cl,0x3d
   47d0e:	b1 3d                	mov    cl,0x3d
   47d10:	b1 3d                	mov    cl,0x3d
   47d12:	b1 3d                	mov    cl,0x3d
   47d14:	21 36 b1 3d          	and    WORD PTR ds:0x3db1,si
   47d18:	fc                   	cld
   47d19:	35 55 8b             	xor    ax,0x8b55
   47d1c:	ec                   	in     al,dx
   47d1d:	83 ec 02             	sub    sp,0x2
   47d20:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   47d25:	eb 17                	jmp    0x47d3e
   47d27:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   47d2a:	03 5e fe             	add    bx,WORD PTR [bp-0x2]
   47d2d:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   47d30:	04 0a                	add    al,0xa
   47d32:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   47d35:	03 5e fe             	add    bx,WORD PTR [bp-0x2]
   47d38:	26 88 07             	mov    BYTE PTR es:[bx],al
   47d3b:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   47d3e:	ff 76 08             	push   WORD PTR [bp+0x8]
   47d41:	ff 76 06             	push   WORD PTR [bp+0x6]
   47d44:	9a cc 49 00 00       	call   0x0:0x49cc
   47d49:	83 c4 04             	add    sp,0x4
   47d4c:	3b 46 fe             	cmp    ax,WORD PTR [bp-0x2]
   47d4f:	77 d6                	ja     0x47d27
   47d51:	c9                   	leave
   47d52:	cb                   	retf
   47d53:	55                   	push   bp
   47d54:	8b ec                	mov    bp,sp
   47d56:	83 ec 02             	sub    sp,0x2
   47d59:	83 7e 06 00          	cmp    WORD PTR [bp+0x6],0x0
   47d5d:	74 03                	je     0x47d62
   47d5f:	e9 21 03             	jmp    0x48083
   47d62:	83 7e 08 00          	cmp    WORD PTR [bp+0x8],0x0
   47d66:	74 03                	je     0x47d6b
   47d68:	e9 8c 01             	jmp    0x47ef7
   47d6b:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   47d70:	e9 78 01             	jmp    0x47eeb
   47d73:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   47d76:	40                   	inc    ax
   47d77:	bb 04 00             	mov    bx,0x4
   47d7a:	99                   	cwd
   47d7b:	f7 fb                	idiv   bx
   47d7d:	6b d2 5c             	imul   dx,dx,0x5c
   47d80:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   47d83:	d1 e0                	shl    ax,1
   47d85:	03 d0                	add    dx,ax
   47d87:	b8 88 01             	mov    ax,0x188
   47d8a:	8b da                	mov    bx,dx
   47d8c:	8e c0                	mov    es,ax
   47d8e:	26 8b 87 02 9a       	mov    ax,WORD PTR es:[bx-0x65fe]
   47d93:	50                   	push   ax
   47d94:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   47d97:	05 02 00             	add    ax,0x2
   47d9a:	bb 04 00             	mov    bx,0x4
   47d9d:	99                   	cwd
   47d9e:	f7 fb                	idiv   bx
   47da0:	6b d2 5c             	imul   dx,dx,0x5c
   47da3:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   47da6:	d1 e0                	shl    ax,1
   47da8:	03 d0                	add    dx,ax
   47daa:	b8 88 01             	mov    ax,0x188
   47dad:	8b da                	mov    bx,dx
   47daf:	8e c0                	mov    es,ax
   47db1:	58                   	pop    ax
   47db2:	26 3b 87 02 9a       	cmp    ax,WORD PTR es:[bx-0x65fe]
   47db7:	7d 22                	jge    0x47ddb
   47db9:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   47dbc:	40                   	inc    ax
   47dbd:	bb 04 00             	mov    bx,0x4
   47dc0:	99                   	cwd
   47dc1:	f7 fb                	idiv   bx
   47dc3:	6b d2 5c             	imul   dx,dx,0x5c
   47dc6:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   47dc9:	d1 e0                	shl    ax,1
   47dcb:	03 d0                	add    dx,ax
   47dcd:	b8 88 01             	mov    ax,0x188
   47dd0:	8b da                	mov    bx,dx
   47dd2:	8e c0                	mov    es,ax
   47dd4:	26 8b 87 02 9a       	mov    ax,WORD PTR es:[bx-0x65fe]
   47dd9:	eb 22                	jmp    0x47dfd
   47ddb:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   47dde:	05 02 00             	add    ax,0x2
   47de1:	bb 04 00             	mov    bx,0x4
   47de4:	99                   	cwd
   47de5:	f7 fb                	idiv   bx
   47de7:	6b d2 5c             	imul   dx,dx,0x5c
   47dea:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   47ded:	d1 e0                	shl    ax,1
   47def:	03 d0                	add    dx,ax
   47df1:	b8 88 01             	mov    ax,0x188
   47df4:	8b da                	mov    bx,dx
   47df6:	8e c0                	mov    es,ax
   47df8:	26 8b 87 02 9a       	mov    ax,WORD PTR es:[bx-0x65fe]
   47dfd:	50                   	push   ax
   47dfe:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   47e01:	bb 04 00             	mov    bx,0x4
   47e04:	99                   	cwd
   47e05:	f7 fb                	idiv   bx
   47e07:	6b d2 5c             	imul   dx,dx,0x5c
   47e0a:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   47e0d:	d1 e0                	shl    ax,1
   47e0f:	03 d0                	add    dx,ax
   47e11:	b8 88 01             	mov    ax,0x188
   47e14:	8b da                	mov    bx,dx
   47e16:	8e c0                	mov    es,ax
   47e18:	58                   	pop    ax
   47e19:	26 3b 87 02 9a       	cmp    ax,WORD PTR es:[bx-0x65fe]
   47e1e:	7e 22                	jle    0x47e42
   47e20:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   47e23:	bb 04 00             	mov    bx,0x4
   47e26:	99                   	cwd
   47e27:	f7 fb                	idiv   bx
   47e29:	6b d2 5c             	imul   dx,dx,0x5c
   47e2c:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   47e2f:	d1 e0                	shl    ax,1
   47e31:	03 d0                	add    dx,ax
   47e33:	b8 88 01             	mov    ax,0x188
   47e36:	8b da                	mov    bx,dx
   47e38:	8e c0                	mov    es,ax
   47e3a:	26 8b 87 02 9a       	mov    ax,WORD PTR es:[bx-0x65fe]
   47e3f:	e9 8a 00             	jmp    0x47ecc
   47e42:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   47e45:	40                   	inc    ax
   47e46:	bb 04 00             	mov    bx,0x4
   47e49:	99                   	cwd
   47e4a:	f7 fb                	idiv   bx
   47e4c:	6b d2 5c             	imul   dx,dx,0x5c
   47e4f:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   47e52:	d1 e0                	shl    ax,1
   47e54:	03 d0                	add    dx,ax
   47e56:	b8 88 01             	mov    ax,0x188
   47e59:	8b da                	mov    bx,dx
   47e5b:	8e c0                	mov    es,ax
   47e5d:	26 8b 87 02 9a       	mov    ax,WORD PTR es:[bx-0x65fe]
   47e62:	50                   	push   ax
   47e63:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   47e66:	05 02 00             	add    ax,0x2
   47e69:	bb 04 00             	mov    bx,0x4
   47e6c:	99                   	cwd
   47e6d:	f7 fb                	idiv   bx
   47e6f:	6b d2 5c             	imul   dx,dx,0x5c
   47e72:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   47e75:	d1 e0                	shl    ax,1
   47e77:	03 d0                	add    dx,ax
   47e79:	b8 88 01             	mov    ax,0x188
   47e7c:	8b da                	mov    bx,dx
   47e7e:	8e c0                	mov    es,ax
   47e80:	58                   	pop    ax
   47e81:	26 3b 87 02 9a       	cmp    ax,WORD PTR es:[bx-0x65fe]
   47e86:	7d 22                	jge    0x47eaa
   47e88:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   47e8b:	40                   	inc    ax
   47e8c:	bb 04 00             	mov    bx,0x4
   47e8f:	99                   	cwd
   47e90:	f7 fb                	idiv   bx
   47e92:	6b d2 5c             	imul   dx,dx,0x5c
   47e95:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   47e98:	d1 e0                	shl    ax,1
   47e9a:	03 d0                	add    dx,ax
   47e9c:	b8 88 01             	mov    ax,0x188
   47e9f:	8b da                	mov    bx,dx
   47ea1:	8e c0                	mov    es,ax
   47ea3:	26 8b 87 02 9a       	mov    ax,WORD PTR es:[bx-0x65fe]
   47ea8:	eb 22                	jmp    0x47ecc
   47eaa:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   47ead:	05 02 00             	add    ax,0x2
   47eb0:	bb 04 00             	mov    bx,0x4
   47eb3:	99                   	cwd
   47eb4:	f7 fb                	idiv   bx
   47eb6:	6b d2 5c             	imul   dx,dx,0x5c
   47eb9:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   47ebc:	d1 e0                	shl    ax,1
   47ebe:	03 d0                	add    dx,ax
   47ec0:	b8 88 01             	mov    ax,0x188
   47ec3:	8b da                	mov    bx,dx
   47ec5:	8e c0                	mov    es,ax
   47ec7:	26 8b 87 02 9a       	mov    ax,WORD PTR es:[bx-0x65fe]
   47ecc:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   47ecf:	6b db 5c             	imul   bx,bx,0x5c
   47ed2:	8b 56 0a             	mov    dx,WORD PTR [bp+0xa]
   47ed5:	d1 e2                	shl    dx,1
   47ed7:	03 da                	add    bx,dx
   47ed9:	ba 88 01             	mov    dx,0x188
   47edc:	8e c2                	mov    es,dx
   47ede:	26 3b 87 a6 99       	cmp    ax,WORD PTR es:[bx-0x665a]
   47ee3:	7c 03                	jl     0x47ee8
   47ee5:	e9 2f 02             	jmp    0x48117
   47ee8:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   47eeb:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   47eef:	7f 03                	jg     0x47ef4
   47ef1:	e9 7f fe             	jmp    0x47d73
   47ef4:	e9 20 02             	jmp    0x48117
   47ef7:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   47efc:	e9 78 01             	jmp    0x48077
   47eff:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   47f02:	40                   	inc    ax
   47f03:	bb 04 00             	mov    bx,0x4
   47f06:	99                   	cwd
   47f07:	f7 fb                	idiv   bx
   47f09:	6b d2 5c             	imul   dx,dx,0x5c
   47f0c:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   47f0f:	d1 e0                	shl    ax,1
   47f11:	03 d0                	add    dx,ax
   47f13:	b8 88 01             	mov    ax,0x188
   47f16:	8b da                	mov    bx,dx
   47f18:	8e c0                	mov    es,ax
   47f1a:	26 8b 87 02 9a       	mov    ax,WORD PTR es:[bx-0x65fe]
   47f1f:	50                   	push   ax
   47f20:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   47f23:	05 02 00             	add    ax,0x2
   47f26:	bb 04 00             	mov    bx,0x4
   47f29:	99                   	cwd
   47f2a:	f7 fb                	idiv   bx
   47f2c:	6b d2 5c             	imul   dx,dx,0x5c
   47f2f:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   47f32:	d1 e0                	shl    ax,1
   47f34:	03 d0                	add    dx,ax
   47f36:	b8 88 01             	mov    ax,0x188
   47f39:	8b da                	mov    bx,dx
   47f3b:	8e c0                	mov    es,ax
   47f3d:	58                   	pop    ax
   47f3e:	26 3b 87 02 9a       	cmp    ax,WORD PTR es:[bx-0x65fe]
   47f43:	7e 22                	jle    0x47f67
   47f45:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   47f48:	40                   	inc    ax
   47f49:	bb 04 00             	mov    bx,0x4
   47f4c:	99                   	cwd
   47f4d:	f7 fb                	idiv   bx
   47f4f:	6b d2 5c             	imul   dx,dx,0x5c
   47f52:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   47f55:	d1 e0                	shl    ax,1
   47f57:	03 d0                	add    dx,ax
   47f59:	b8 88 01             	mov    ax,0x188
   47f5c:	8b da                	mov    bx,dx
   47f5e:	8e c0                	mov    es,ax
   47f60:	26 8b 87 02 9a       	mov    ax,WORD PTR es:[bx-0x65fe]
   47f65:	eb 22                	jmp    0x47f89
   47f67:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   47f6a:	05 02 00             	add    ax,0x2
   47f6d:	bb 04 00             	mov    bx,0x4
   47f70:	99                   	cwd
   47f71:	f7 fb                	idiv   bx
   47f73:	6b d2 5c             	imul   dx,dx,0x5c
   47f76:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   47f79:	d1 e0                	shl    ax,1
   47f7b:	03 d0                	add    dx,ax
   47f7d:	b8 88 01             	mov    ax,0x188
   47f80:	8b da                	mov    bx,dx
   47f82:	8e c0                	mov    es,ax
   47f84:	26 8b 87 02 9a       	mov    ax,WORD PTR es:[bx-0x65fe]
   47f89:	50                   	push   ax
   47f8a:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   47f8d:	bb 04 00             	mov    bx,0x4
   47f90:	99                   	cwd
   47f91:	f7 fb                	idiv   bx
   47f93:	6b d2 5c             	imul   dx,dx,0x5c
   47f96:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   47f99:	d1 e0                	shl    ax,1
   47f9b:	03 d0                	add    dx,ax
   47f9d:	b8 88 01             	mov    ax,0x188
   47fa0:	8b da                	mov    bx,dx
   47fa2:	8e c0                	mov    es,ax
   47fa4:	58                   	pop    ax
   47fa5:	26 3b 87 02 9a       	cmp    ax,WORD PTR es:[bx-0x65fe]
   47faa:	7d 22                	jge    0x47fce
   47fac:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   47faf:	bb 04 00             	mov    bx,0x4
   47fb2:	99                   	cwd
   47fb3:	f7 fb                	idiv   bx
   47fb5:	6b d2 5c             	imul   dx,dx,0x5c
   47fb8:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   47fbb:	d1 e0                	shl    ax,1
   47fbd:	03 d0                	add    dx,ax
   47fbf:	b8 88 01             	mov    ax,0x188
   47fc2:	8b da                	mov    bx,dx
   47fc4:	8e c0                	mov    es,ax
   47fc6:	26 8b 87 02 9a       	mov    ax,WORD PTR es:[bx-0x65fe]
   47fcb:	e9 8a 00             	jmp    0x48058
   47fce:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   47fd1:	40                   	inc    ax
   47fd2:	bb 04 00             	mov    bx,0x4
   47fd5:	99                   	cwd
   47fd6:	f7 fb                	idiv   bx
   47fd8:	6b d2 5c             	imul   dx,dx,0x5c
   47fdb:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   47fde:	d1 e0                	shl    ax,1
   47fe0:	03 d0                	add    dx,ax
   47fe2:	b8 88 01             	mov    ax,0x188
   47fe5:	8b da                	mov    bx,dx
   47fe7:	8e c0                	mov    es,ax
   47fe9:	26 8b 87 02 9a       	mov    ax,WORD PTR es:[bx-0x65fe]
   47fee:	50                   	push   ax
   47fef:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   47ff2:	05 02 00             	add    ax,0x2
   47ff5:	bb 04 00             	mov    bx,0x4
   47ff8:	99                   	cwd
   47ff9:	f7 fb                	idiv   bx
   47ffb:	6b d2 5c             	imul   dx,dx,0x5c
   47ffe:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   48001:	d1 e0                	shl    ax,1
   48003:	03 d0                	add    dx,ax
   48005:	b8 88 01             	mov    ax,0x188
   48008:	8b da                	mov    bx,dx
   4800a:	8e c0                	mov    es,ax
   4800c:	58                   	pop    ax
   4800d:	26 3b 87 02 9a       	cmp    ax,WORD PTR es:[bx-0x65fe]
   48012:	7e 22                	jle    0x48036
   48014:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   48017:	40                   	inc    ax
   48018:	bb 04 00             	mov    bx,0x4
   4801b:	99                   	cwd
   4801c:	f7 fb                	idiv   bx
   4801e:	6b d2 5c             	imul   dx,dx,0x5c
   48021:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   48024:	d1 e0                	shl    ax,1
   48026:	03 d0                	add    dx,ax
   48028:	b8 88 01             	mov    ax,0x188
   4802b:	8b da                	mov    bx,dx
   4802d:	8e c0                	mov    es,ax
   4802f:	26 8b 87 02 9a       	mov    ax,WORD PTR es:[bx-0x65fe]
   48034:	eb 22                	jmp    0x48058
   48036:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   48039:	05 02 00             	add    ax,0x2
   4803c:	bb 04 00             	mov    bx,0x4
   4803f:	99                   	cwd
   48040:	f7 fb                	idiv   bx
   48042:	6b d2 5c             	imul   dx,dx,0x5c
   48045:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   48048:	d1 e0                	shl    ax,1
   4804a:	03 d0                	add    dx,ax
   4804c:	b8 88 01             	mov    ax,0x188
   4804f:	8b da                	mov    bx,dx
   48051:	8e c0                	mov    es,ax
   48053:	26 8b 87 02 9a       	mov    ax,WORD PTR es:[bx-0x65fe]
   48058:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4805b:	6b db 5c             	imul   bx,bx,0x5c
   4805e:	8b 56 0a             	mov    dx,WORD PTR [bp+0xa]
   48061:	d1 e2                	shl    dx,1
   48063:	03 da                	add    bx,dx
   48065:	ba 88 01             	mov    dx,0x188
   48068:	8e c2                	mov    es,dx
   4806a:	26 3b 87 a6 99       	cmp    ax,WORD PTR es:[bx-0x665a]
   4806f:	7f 03                	jg     0x48074
   48071:	e9 a3 00             	jmp    0x48117
   48074:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   48077:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   4807b:	7f 03                	jg     0x48080
   4807d:	e9 7f fe             	jmp    0x47eff
   48080:	e9 94 00             	jmp    0x48117
   48083:	83 7e 08 00          	cmp    WORD PTR [bp+0x8],0x0
   48087:	75 2e                	jne    0x480b7
   48089:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   4808e:	eb 1f                	jmp    0x480af
   48090:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   48093:	6b db 5c             	imul   bx,bx,0x5c
   48096:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   48099:	d1 e0                	shl    ax,1
   4809b:	03 d8                	add    bx,ax
   4809d:	b8 88 01             	mov    ax,0x188
   480a0:	8e c0                	mov    es,ax
   480a2:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   480a7:	3b 46 06             	cmp    ax,WORD PTR [bp+0x6]
   480aa:	7c 6b                	jl     0x48117
   480ac:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   480af:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   480b3:	7e db                	jle    0x48090
   480b5:	eb 60                	jmp    0x48117
   480b7:	83 7e 08 01          	cmp    WORD PTR [bp+0x8],0x1
   480bb:	75 2e                	jne    0x480eb
   480bd:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   480c2:	eb 1f                	jmp    0x480e3
   480c4:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   480c7:	6b db 5c             	imul   bx,bx,0x5c
   480ca:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   480cd:	d1 e0                	shl    ax,1
   480cf:	03 d8                	add    bx,ax
   480d1:	b8 88 01             	mov    ax,0x188
   480d4:	8e c0                	mov    es,ax
   480d6:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   480db:	3b 46 06             	cmp    ax,WORD PTR [bp+0x6]
   480de:	7f 37                	jg     0x48117
   480e0:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   480e3:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   480e7:	7e db                	jle    0x480c4
   480e9:	eb 2c                	jmp    0x48117
   480eb:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   480f0:	eb 1f                	jmp    0x48111
   480f2:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   480f5:	6b db 5c             	imul   bx,bx,0x5c
   480f8:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   480fb:	d1 e0                	shl    ax,1
   480fd:	03 d8                	add    bx,ax
   480ff:	b8 88 01             	mov    ax,0x188
   48102:	8e c0                	mov    es,ax
   48104:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   48109:	3b 46 06             	cmp    ax,WORD PTR [bp+0x6]
   4810c:	74 09                	je     0x48117
   4810e:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   48111:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   48115:	7e db                	jle    0x480f2
   48117:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4811a:	c9                   	leave
   4811b:	cb                   	retf
   4811c:	55                   	push   bp
   4811d:	8b ec                	mov    bp,sp
   4811f:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   48122:	bb 08 00             	mov    bx,0x8
   48125:	99                   	cwd
   48126:	f7 fb                	idiv   bx
   48128:	b0 01                	mov    al,0x1
   4812a:	8a ca                	mov    cl,dl
   4812c:	d2 e0                	shl    al,cl
   4812e:	50                   	push   ax
   4812f:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   48132:	bb 08 00             	mov    bx,0x8
   48135:	99                   	cwd
   48136:	f7 fb                	idiv   bx
   48138:	ba 88 01             	mov    dx,0x188
   4813b:	8b d8                	mov    bx,ax
   4813d:	8e c2                	mov    es,dx
   4813f:	26 8a 87 ca b9       	mov    al,BYTE PTR es:[bx-0x4636]
   48144:	5a                   	pop    dx
   48145:	22 c2                	and    al,dl
   48147:	5d                   	pop    bp
   48148:	cb                   	retf
   48149:	55                   	push   bp
   4814a:	8b ec                	mov    bp,sp
   4814c:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   4814f:	bb 08 00             	mov    bx,0x8
   48152:	99                   	cwd
   48153:	f7 fb                	idiv   bx
   48155:	b0 01                	mov    al,0x1
   48157:	8a ca                	mov    cl,dl
   48159:	d2 e0                	shl    al,cl
   4815b:	50                   	push   ax
   4815c:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   4815f:	bb 08 00             	mov    bx,0x8
   48162:	99                   	cwd
   48163:	f7 fb                	idiv   bx
   48165:	ba 88 01             	mov    dx,0x188
   48168:	8b d8                	mov    bx,ax
   4816a:	8e c2                	mov    es,dx
   4816c:	58                   	pop    ax
   4816d:	26 08 87 ca b9       	or     BYTE PTR es:[bx-0x4636],al
   48172:	5d                   	pop    bp
   48173:	cb                   	retf
   48174:	55                   	push   bp
   48175:	8b ec                	mov    bp,sp
   48177:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   4817a:	bb 08 00             	mov    bx,0x8
   4817d:	99                   	cwd
   4817e:	f7 fb                	idiv   bx
   48180:	b0 01                	mov    al,0x1
   48182:	8a ca                	mov    cl,dl
   48184:	d2 e0                	shl    al,cl
   48186:	f6 d0                	not    al
   48188:	50                   	push   ax
   48189:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   4818c:	bb 08 00             	mov    bx,0x8
   4818f:	99                   	cwd
   48190:	f7 fb                	idiv   bx
   48192:	ba 88 01             	mov    dx,0x188
   48195:	8b d8                	mov    bx,ax
   48197:	8e c2                	mov    es,dx
   48199:	58                   	pop    ax
   4819a:	26 20 87 ca b9       	and    BYTE PTR es:[bx-0x4636],al
   4819f:	5d                   	pop    bp
   481a0:	cb                   	retf
   481a1:	55                   	push   bp
   481a2:	8b ec                	mov    bp,sp
   481a4:	83 ec 02             	sub    sp,0x2
   481a7:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   481ac:	eb 11                	jmp    0x481bf
   481ae:	b8 88 01             	mov    ax,0x188
   481b1:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   481b4:	8e c0                	mov    es,ax
   481b6:	26 c6 87 ca b9 00    	mov    BYTE PTR es:[bx-0x4636],0x0
   481bc:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   481bf:	83 7e fe 20          	cmp    WORD PTR [bp-0x2],0x20
   481c3:	7c e9                	jl     0x481ae
   481c5:	c9                   	leave
   481c6:	cb                   	retf
   481c7:	55                   	push   bp
   481c8:	8b ec                	mov    bp,sp
   481ca:	83 ec 16             	sub    sp,0x16
   481cd:	9a b9 1e 10 00       	call   0x10:0x1eb9
   481d2:	6a 01                	push   0x1
   481d4:	9a 2f 00 18 01       	call   0x118:0x2f
   481d9:	59                   	pop    cx
   481da:	6a 02                	push   0x2
   481dc:	9a ca 00 10 01       	call   0x110:0xca
   481e1:	59                   	pop    cx
   481e2:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   481e5:	b4 00                	mov    ah,0x0
   481e7:	50                   	push   ax
   481e8:	1e                   	push   ds
   481e9:	68 35 62             	push   0x6235
   481ec:	16                   	push   ss
   481ed:	8d 46 ea             	lea    ax,[bp-0x16]
   481f0:	50                   	push   ax
   481f1:	9a b4 48 00 00       	call   0x0:0x48b4
   481f6:	83 c4 0a             	add    sp,0xa
   481f9:	6a 55                	push   0x55
   481fb:	16                   	push   ss
   481fc:	8d 46 ea             	lea    ax,[bp-0x16]
   481ff:	50                   	push   ax
   48200:	6a 01                	push   0x1
   48202:	9a 20 00 48 01       	call   0x148:0x20
   48207:	83 c4 08             	add    sp,0x8
   4820a:	1e                   	push   ds
   4820b:	68 40 62             	push   0x6240
   4820e:	16                   	push   ss
   4820f:	8d 46 ea             	lea    ax,[bp-0x16]
   48212:	50                   	push   ax
   48213:	9a 34 00 48 01       	call   0x148:0x34
   48218:	83 c4 08             	add    sp,0x8
   4821b:	89 56 fc             	mov    WORD PTR [bp-0x4],dx
   4821e:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   48221:	52                   	push   dx
   48222:	50                   	push   ax
   48223:	6a 02                	push   0x2
   48225:	9a 25 00 70 01       	call   0x170:0x25
   4822a:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   4822d:	3d ff ff             	cmp    ax,0xffff
   48230:	75 03                	jne    0x48235
   48232:	e9 8d 00             	jmp    0x482c2
   48235:	ff 76 fe             	push   WORD PTR [bp-0x2]
   48238:	9a 2a 00 70 01       	call   0x170:0x2a
   4823d:	68 80 00             	push   0x80
   48240:	6a 00                	push   0x0
   48242:	ff 76 fc             	push   WORD PTR [bp-0x4]
   48245:	ff 76 fa             	push   WORD PTR [bp-0x6]
   48248:	9a 2a 00 48 01       	call   0x148:0x2a
   4824d:	83 c4 08             	add    sp,0x8
   48250:	b8 88 01             	mov    ax,0x188
   48253:	8e c0                	mov    es,ax
   48255:	26 ff 06 18 73       	inc    WORD PTR es:0x7318
   4825a:	6a 00                	push   0x0
   4825c:	6a ff                	push   0xffff
   4825e:	6a 00                	push   0x0
   48260:	9a 3f 07 30 00       	call   0x30:0x73f
   48265:	83 c4 06             	add    sp,0x6
   48268:	1e                   	push   ds
   48269:	68 45 62             	push   0x6245
   4826c:	68 d6 06             	push   0x6d6
   4826f:	68 88 01             	push   0x188
   48272:	68 26 de             	push   0xde26
   48275:	9a 81 0a 20 00       	call   0x20:0xa81
   4827a:	83 c4 0a             	add    sp,0xa
   4827d:	6a 00                	push   0x0
   4827f:	b8 88 01             	mov    ax,0x188
   48282:	8e c0                	mov    es,ax
   48284:	26 c4 1e 2f e5       	les    bx,DWORD PTR es:0xe52f
   48289:	26 ff 37             	push   WORD PTR es:[bx]
   4828c:	6a 00                	push   0x0
   4828e:	6a 00                	push   0x0
   48290:	68 80 7f             	push   0x7f80
   48293:	9a 88 06 98 00       	call   0x98:0x688
   48298:	52                   	push   dx
   48299:	50                   	push   ax
   4829a:	9a 13 1a 28 00       	call   0x28:0x1a13
   4829f:	83 c4 06             	add    sp,0x6
   482a2:	68 88 01             	push   0x188
   482a5:	68 26 de             	push   0xde26
   482a8:	9a 22 0b 20 00       	call   0x20:0xb22
   482ad:	83 c4 04             	add    sp,0x4
   482b0:	c6 06 c2 5b 01       	mov    BYTE PTR ds:0x5bc2,0x1
   482b5:	9a 3e 00 18 01       	call   0x118:0x3e
   482ba:	ff 76 fe             	push   WORD PTR [bp-0x2]
   482bd:	9a 2a 00 70 01       	call   0x170:0x2a
   482c2:	ff 76 fc             	push   WORD PTR [bp-0x4]
   482c5:	ff 76 fa             	push   WORD PTR [bp-0x6]
   482c8:	9a c2 24 00 00       	call   0x0:0x24c2
   482cd:	83 c4 04             	add    sp,0x4
   482d0:	b8 88 01             	mov    ax,0x188
   482d3:	8e c0                	mov    es,ax
   482d5:	26 81 3e fb 3a c8 00 	cmp    WORD PTR es:0x3afb,0xc8
   482dc:	74 03                	je     0x482e1
   482de:	e9 58 01             	jmp    0x48439
   482e1:	b8 88 01             	mov    ax,0x188
   482e4:	8e c0                	mov    es,ax
   482e6:	26 81 3e fd 3a c8 00 	cmp    WORD PTR es:0x3afd,0xc8
   482ed:	74 03                	je     0x482f2
   482ef:	e9 47 01             	jmp    0x48439
   482f2:	6a 0e                	push   0xe
   482f4:	9a c7 05 30 00       	call   0x30:0x5c7
   482f9:	59                   	pop    cx
   482fa:	0a c0                	or     al,al
   482fc:	74 05                	je     0x48303
   482fe:	9a 04 02 30 00       	call   0x30:0x204
   48303:	b8 88 01             	mov    ax,0x188
   48306:	8e c0                	mov    es,ax
   48308:	26 83 3e 43 e5 64    	cmp    WORD PTR es:0xe543,0x64
   4830e:	7e 72                	jle    0x48382
   48310:	b8 88 01             	mov    ax,0x188
   48313:	8e c0                	mov    es,ax
   48315:	26 83 3e 45 e5 64    	cmp    WORD PTR es:0xe545,0x64
   4831b:	7e 65                	jle    0x48382
   4831d:	68 e0 01             	push   0x1e0
   48320:	68 41 03             	push   0x341
   48323:	6a 41                	push   0x41
   48325:	6a 55                	push   0x55
   48327:	6a 00                	push   0x0
   48329:	6a 00                	push   0x0
   4832b:	b8 88 01             	mov    ax,0x188
   4832e:	8e c0                	mov    es,ax
   48330:	26 81 3e 45 e5 c8 00 	cmp    WORD PTR es:0xe545,0xc8
   48337:	7e 05                	jle    0x4833e
   48339:	b8 c8 00             	mov    ax,0xc8
   4833c:	eb 09                	jmp    0x48347
   4833e:	b8 88 01             	mov    ax,0x188
   48341:	8e c0                	mov    es,ax
   48343:	26 a1 45 e5          	mov    ax,es:0xe545
   48347:	50                   	push   ax
   48348:	b8 88 01             	mov    ax,0x188
   4834b:	8e c0                	mov    es,ax
   4834d:	26 81 3e 43 e5 c8 00 	cmp    WORD PTR es:0xe543,0xc8
   48354:	7e 05                	jle    0x4835b
   48356:	b8 c8 00             	mov    ax,0xc8
   48359:	eb 09                	jmp    0x48364
   4835b:	b8 88 01             	mov    ax,0x188
   4835e:	8e c0                	mov    es,ax
   48360:	26 a1 43 e5          	mov    ax,es:0xe543
   48364:	50                   	push   ax
   48365:	6a 00                	push   0x0
   48367:	6a 00                	push   0x0
   48369:	9a 30 04 28 00       	call   0x28:0x430
   4836e:	83 c4 14             	add    sp,0x14
   48371:	6a 34                	push   0x34
   48373:	6a 30                	push   0x30
   48375:	6a 41                	push   0x41
   48377:	9a 2f 00 10 01       	call   0x110:0x2f
   4837c:	83 c4 06             	add    sp,0x6
   4837f:	e9 a7 00             	jmp    0x48429
   48382:	6a 00                	push   0x0
   48384:	b8 88 01             	mov    ax,0x188
   48387:	8e c0                	mov    es,ax
   48389:	26 ff 36 49 e5       	push   WORD PTR es:0xe549
   4838e:	26 ff 36 47 e5       	push   WORD PTR es:0xe547
   48393:	9a ab 04 20 00       	call   0x20:0x4ab
   48398:	83 c4 06             	add    sp,0x6
   4839b:	bb 88 01             	mov    bx,0x188
   4839e:	8e c3                	mov    es,bx
   483a0:	26 89 16 6e e5       	mov    WORD PTR es:0xe56e,dx
   483a5:	26 a3 6c e5          	mov    es:0xe56c,ax
   483a9:	1e                   	push   ds
   483aa:	68 54 62             	push   0x6254
   483ad:	68 ea 06             	push   0x6ea
   483b0:	68 88 01             	push   0x188
   483b3:	68 26 de             	push   0xde26
   483b6:	9a 81 0a 20 00       	call   0x20:0xa81
   483bb:	83 c4 0a             	add    sp,0xa
   483be:	b8 88 01             	mov    ax,0x188
   483c1:	8e c0                	mov    es,ax
   483c3:	26 c4 1e 2f e5       	les    bx,DWORD PTR es:0xe52f
   483c8:	26 ff 37             	push   WORD PTR es:[bx]
   483cb:	6a 00                	push   0x0
   483cd:	6a 00                	push   0x0
   483cf:	b8 88 01             	mov    ax,0x188
   483d2:	8e c0                	mov    es,ax
   483d4:	26 c4 1e 2f e5       	les    bx,DWORD PTR es:0xe52f
   483d9:	26 ff 77 04          	push   WORD PTR es:[bx+0x4]
   483dd:	9a 88 06 98 00       	call   0x98:0x688
   483e2:	52                   	push   dx
   483e3:	50                   	push   ax
   483e4:	b8 88 01             	mov    ax,0x188
   483e7:	8e c0                	mov    es,ax
   483e9:	26 c4 1e 6c e5       	les    bx,DWORD PTR es:0xe56c
   483ee:	26 ff 77 02          	push   WORD PTR es:[bx+0x2]
   483f2:	26 ff 37             	push   WORD PTR es:[bx]
   483f5:	9a 00 05 e0 01       	call   0x1e0:0x500
   483fa:	83 c4 08             	add    sp,0x8
   483fd:	68 88 01             	push   0x188
   48400:	68 26 de             	push   0xde26
   48403:	9a 22 0b 20 00       	call   0x20:0xb22
   48408:	83 c4 04             	add    sp,0x4
   4840b:	1e                   	push   ds
   4840c:	68 63 62             	push   0x6263
   4840f:	68 ed 06             	push   0x6ed
   48412:	b8 88 01             	mov    ax,0x188
   48415:	8e c0                	mov    es,ax
   48417:	26 ff 36 6e e5       	push   WORD PTR es:0xe56e
   4841c:	26 ff 36 6c e5       	push   WORD PTR es:0xe56c
   48421:	9a 60 03 20 00       	call   0x20:0x360
   48426:	83 c4 0a             	add    sp,0xa
   48429:	68 18 01             	push   0x118
   4842c:	68 84 00             	push   0x84
   4842f:	9a a1 04 30 00       	call   0x30:0x4a1
   48434:	83 c4 04             	add    sp,0x4
   48437:	eb 4c                	jmp    0x48485
   48439:	6a 00                	push   0x0
   4843b:	6a 41                	push   0x41
   4843d:	6a 55                	push   0x55
   4843f:	b8 88 01             	mov    ax,0x188
   48442:	8e c0                	mov    es,ax
   48444:	26 ff 36 a5 e4       	push   WORD PTR es:0xe4a5
   48449:	b8 88 01             	mov    ax,0x188
   4844c:	8e c0                	mov    es,ax
   4844e:	26 ff 36 a3 e4       	push   WORD PTR es:0xe4a3
   48453:	6a 00                	push   0x0
   48455:	6a 00                	push   0x0
   48457:	b8 88 01             	mov    ax,0x188
   4845a:	8e c0                	mov    es,ax
   4845c:	26 ff 36 45 e5       	push   WORD PTR es:0xe545
   48461:	b8 88 01             	mov    ax,0x188
   48464:	8e c0                	mov    es,ax
   48466:	26 ff 36 43 e5       	push   WORD PTR es:0xe543
   4846b:	6a 00                	push   0x0
   4846d:	6a 00                	push   0x0
   4846f:	9a 5a 0c 28 00       	call   0x28:0xc5a
   48474:	83 c4 16             	add    sp,0x16
   48477:	6a 34                	push   0x34
   48479:	6a 30                	push   0x30
   4847b:	6a 41                	push   0x41
   4847d:	9a 2f 00 10 01       	call   0x110:0x2f
   48482:	83 c4 06             	add    sp,0x6
   48485:	1e                   	push   ds
   48486:	68 72 62             	push   0x6272
   48489:	68 f6 06             	push   0x6f6
   4848c:	68 88 01             	push   0x188
   4848f:	68 47 e5             	push   0xe547
   48492:	9a 2f 02 40 00       	call   0x40:0x22f
   48497:	83 c4 0a             	add    sp,0xa
   4849a:	80 7e 08 00          	cmp    BYTE PTR [bp+0x8],0x0
   4849e:	74 08                	je     0x484a8
   484a0:	6a 32                	push   0x32
   484a2:	9a ca 2d 10 00       	call   0x10:0x2dca
   484a7:	59                   	pop    cx
   484a8:	6a 02                	push   0x2
   484aa:	9a c5 00 10 01       	call   0x110:0xc5
   484af:	59                   	pop    cx
   484b0:	c9                   	leave
   484b1:	cb                   	retf
   484b2:	55                   	push   bp
   484b3:	8b ec                	mov    bp,sp
   484b5:	8a 46 10             	mov    al,BYTE PTR [bp+0x10]
   484b8:	50                   	push   ax
   484b9:	8a 46 0e             	mov    al,BYTE PTR [bp+0xe]
   484bc:	50                   	push   ax
   484bd:	ff 76 0c             	push   WORD PTR [bp+0xc]
   484c0:	ff 76 0a             	push   WORD PTR [bp+0xa]
   484c3:	ff 76 08             	push   WORD PTR [bp+0x8]
   484c6:	ff 76 06             	push   WORD PTR [bp+0x6]
   484c9:	9a 51 0a 30 00       	call   0x30:0xa51
   484ce:	83 c4 0c             	add    sp,0xc
   484d1:	5d                   	pop    bp
   484d2:	cb                   	retf
   484d3:	55                   	push   bp
   484d4:	8b ec                	mov    bp,sp
   484d6:	83 ec 02             	sub    sp,0x2
   484d9:	1e                   	push   ds
   484da:	68 81 62             	push   0x6281
   484dd:	68 06 07             	push   0x706
   484e0:	68 88 01             	push   0x188
   484e3:	68 26 de             	push   0xde26
   484e6:	9a 81 0a 20 00       	call   0x20:0xa81
   484eb:	83 c4 0a             	add    sp,0xa
   484ee:	b8 88 01             	mov    ax,0x188
   484f1:	8e c0                	mov    es,ax
   484f3:	26 c4 1e 4f e3       	les    bx,DWORD PTR es:0xe34f
   484f8:	26 ff 37             	push   WORD PTR es:[bx]
   484fb:	a1 98 bb             	mov    ax,ds:0xbb98
   484fe:	99                   	cwd
   484ff:	52                   	push   dx
   48500:	50                   	push   ax
   48501:	a1 98 bb             	mov    ax,ds:0xbb98
   48504:	ff 06 98 bb          	inc    WORD PTR ds:0xbb98
   48508:	ba 88 01             	mov    dx,0x188
   4850b:	8e c2                	mov    es,dx
   4850d:	26 c4 1e 4f e3       	les    bx,DWORD PTR es:0xe34f
   48512:	26 8b 57 04          	mov    dx,WORD PTR es:[bx+0x4]
   48516:	2b d0                	sub    dx,ax
   48518:	52                   	push   dx
   48519:	9a 88 06 98 00       	call   0x98:0x688
   4851e:	8b d8                	mov    bx,ax
   48520:	8e c2                	mov    es,dx
   48522:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   48525:	88 46 ff             	mov    BYTE PTR [bp-0x1],al
   48528:	68 88 01             	push   0x188
   4852b:	68 26 de             	push   0xde26
   4852e:	9a 22 0b 20 00       	call   0x20:0xb22
   48533:	83 c4 04             	add    sp,0x4
   48536:	8a 46 ff             	mov    al,BYTE PTR [bp-0x1]
   48539:	c9                   	leave
   4853a:	cb                   	retf
   4853b:	55                   	push   bp
   4853c:	8b ec                	mov    bp,sp
   4853e:	83 ec 08             	sub    sp,0x8
   48541:	a0 93 bb             	mov    al,ds:0xbb93
   48544:	2a 46 06             	sub    al,BYTE PTR [bp+0x6]
   48547:	a2 93 bb             	mov    ds:0xbb93,al
   4854a:	a0 92 bb             	mov    al,ds:0xbb92
   4854d:	2a 46 06             	sub    al,BYTE PTR [bp+0x6]
   48550:	a2 92 bb             	mov    ds:0xbb92,al
   48553:	80 3e 0b 5c 01       	cmp    BYTE PTR ds:0x5c0b,0x1
   48558:	76 0f                	jbe    0x48569
   4855a:	ff 76 06             	push   WORD PTR [bp+0x6]
   4855d:	1e                   	push   ds
   4855e:	68 90 62             	push   0x6290
   48561:	9a 53 42 00 00       	call   0x0:0x4253
   48566:	83 c4 06             	add    sp,0x6
   48569:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   4856e:	e9 4d 01             	jmp    0x486be
   48571:	0e                   	push   cs
   48572:	e8 5e ff             	call   0x484d3
   48575:	88 46 f9             	mov    BYTE PTR [bp-0x7],al
   48578:	80 3e 0b 5c 01       	cmp    BYTE PTR ds:0x5c0b,0x1
   4857d:	76 17                	jbe    0x48596
   4857f:	8a 46 f9             	mov    al,BYTE PTR [bp-0x7]
   48582:	b4 00                	mov    ah,0x0
   48584:	50                   	push   ax
   48585:	1e                   	push   ds
   48586:	68 9b 62             	push   0x629b
   48589:	9a 53 42 00 00       	call   0x0:0x4253
   4858e:	83 c4 06             	add    sp,0x6
   48591:	9a d7 29 00 00       	call   0x0:0x29d7
   48596:	8a 46 f9             	mov    al,BYTE PTR [bp-0x7]
   48599:	b4 00                	mov    ah,0x0
   4859b:	48                   	dec    ax
   4859c:	8b d8                	mov    bx,ax
   4859e:	83 fb 20             	cmp    bx,0x20
   485a1:	76 03                	jbe    0x485a6
   485a3:	e9 ca 00             	jmp    0x48670
   485a6:	d1 e3                	shl    bx,1
   485a8:	2e ff a7 5b 50       	jmp    WORD PTR cs:[bx+0x505b]
   485ad:	0e                   	push   cs
   485ae:	e8 22 ff             	call   0x484d3
   485b1:	b4 00                	mov    ah,0x0
   485b3:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   485b6:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   485b9:	01 06 98 bb          	add    WORD PTR ds:0xbb98,ax
   485bd:	e9 fb 00             	jmp    0x486bb
   485c0:	0e                   	push   cs
   485c1:	e8 0f ff             	call   0x484d3
   485c4:	b4 00                	mov    ah,0x0
   485c6:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   485c9:	0e                   	push   cs
   485ca:	e8 06 ff             	call   0x484d3
   485cd:	b4 00                	mov    ah,0x0
   485cf:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   485d2:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   485d5:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   485d8:	eb df                	jmp    0x485b9
   485da:	0e                   	push   cs
   485db:	e8 f5 fe             	call   0x484d3
   485de:	b4 00                	mov    ah,0x0
   485e0:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   485e3:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   485e6:	01 06 98 bb          	add    WORD PTR ds:0xbb98,ax
   485ea:	eb c1                	jmp    0x485ad
   485ec:	ff 06 98 bb          	inc    WORD PTR ds:0xbb98
   485f0:	eb bb                	jmp    0x485ad
   485f2:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   485f7:	eb 13                	jmp    0x4860c
   485f9:	0e                   	push   cs
   485fa:	e8 d6 fe             	call   0x484d3
   485fd:	b4 00                	mov    ah,0x0
   485ff:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   48602:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   48605:	01 06 98 bb          	add    WORD PTR ds:0xbb98,ax
   48609:	ff 46 fa             	inc    WORD PTR [bp-0x6]
   4860c:	83 7e fa 06          	cmp    WORD PTR [bp-0x6],0x6
   48610:	7c e7                	jl     0x485f9
   48612:	e9 a6 00             	jmp    0x486bb
   48615:	0e                   	push   cs
   48616:	e8 ba fe             	call   0x484d3
   48619:	b4 00                	mov    ah,0x0
   4861b:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   4861e:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   48621:	40                   	inc    ax
   48622:	eb 95                	jmp    0x485b9
   48624:	e9 94 00             	jmp    0x486bb
   48627:	ff 06 98 bb          	inc    WORD PTR ds:0xbb98
   4862b:	e9 8d 00             	jmp    0x486bb
   4862e:	83 06 98 bb 07       	add    WORD PTR ds:0xbb98,0x7
   48633:	e9 85 00             	jmp    0x486bb
   48636:	83 06 98 bb 09       	add    WORD PTR ds:0xbb98,0x9
   4863b:	eb 7e                	jmp    0x486bb
   4863d:	83 06 98 bb 04       	add    WORD PTR ds:0xbb98,0x4
   48642:	eb 77                	jmp    0x486bb
   48644:	eb 00                	jmp    0x48646
   48646:	83 06 98 bb 03       	add    WORD PTR ds:0xbb98,0x3
   4864b:	eb 6e                	jmp    0x486bb
   4864d:	83 06 98 bb 02       	add    WORD PTR ds:0xbb98,0x2
   48652:	eb 67                	jmp    0x486bb
   48654:	c7 46 fc 00 00       	mov    WORD PTR [bp-0x4],0x0
   48659:	eb 0d                	jmp    0x48668
   4865b:	0e                   	push   cs
   4865c:	e8 74 fe             	call   0x484d3
   4865f:	b4 00                	mov    ah,0x0
   48661:	01 06 98 bb          	add    WORD PTR ds:0xbb98,ax
   48665:	ff 46 fc             	inc    WORD PTR [bp-0x4]
   48668:	83 7e fc 28          	cmp    WORD PTR [bp-0x4],0x28
   4866c:	7c ed                	jl     0x4865b
   4866e:	eb 4b                	jmp    0x486bb
   48670:	8a 46 f9             	mov    al,BYTE PTR [bp-0x7]
   48673:	b4 00                	mov    ah,0x0
   48675:	50                   	push   ax
   48676:	ff 36 98 bb          	push   WORD PTR ds:0xbb98
   4867a:	1e                   	push   ds
   4867b:	68 a0 62             	push   0x62a0
   4867e:	68 88 01             	push   0x188
   48681:	68 cc ba             	push   0xbacc
   48684:	9a b4 48 00 00       	call   0x0:0x48b4
   48689:	83 c4 0c             	add    sp,0xc
   4868c:	3d 68 00             	cmp    ax,0x68
   4868f:	7c 15                	jl     0x486a6
   48691:	6a 61                	push   0x61
   48693:	6a 00                	push   0x0
   48695:	6a 00                	push   0x0
   48697:	68 60 07             	push   0x760
   4869a:	1e                   	push   ds
   4869b:	68 b5 62             	push   0x62b5
   4869e:	9a 2a 00 58 01       	call   0x158:0x2a
   486a3:	83 c4 0c             	add    sp,0xc
   486a6:	6a 62                	push   0x62
   486a8:	6a 00                	push   0x0
   486aa:	6a 00                	push   0x0
   486ac:	68 62 07             	push   0x762
   486af:	1e                   	push   ds
   486b0:	68 c4 62             	push   0x62c4
   486b3:	9a 2a 00 58 01       	call   0x158:0x2a
   486b8:	83 c4 0c             	add    sp,0xc
   486bb:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   486be:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   486c1:	3b 46 06             	cmp    ax,WORD PTR [bp+0x6]
   486c4:	7d 03                	jge    0x486c9
   486c6:	e9 a8 fe             	jmp    0x48571
   486c9:	c9                   	leave
   486ca:	cb                   	retf
   486cb:	d6                   	salc
   486cc:	4f                   	dec    di
   486cd:	3d 4f b7             	cmp    ax,0xb74f
   486d0:	4f                   	dec    di
   486d1:	4b                   	dec    bx
   486d2:	50                   	push   ax
   486d3:	50                   	push   ax
   486d4:	4f                   	dec    di
   486d5:	b7 4f                	mov    bh,0x4f
   486d7:	b7 4f                	mov    bh,0x4f
   486d9:	be 4f c6             	mov    si,0xc64f
   486dc:	4f                   	dec    di
   486dd:	6a 4f                	push   0x4f
   486df:	cd 4f                	int    0x4f
   486e1:	d4 4f                	aam    0x4f
   486e3:	b7 4f                	mov    bh,0x4f
   486e5:	b7 4f                	mov    bh,0x4f
   486e7:	b7 4f                	mov    bh,0x4f
   486e9:	4b                   	dec    bx
   486ea:	50                   	push   ax
   486eb:	7c 4f                	jl     0x4873c
   486ed:	4b                   	dec    bx
   486ee:	50                   	push   ax
   486ef:	b7 4f                	mov    bh,0x4f
   486f1:	b7 4f                	mov    bh,0x4f
   486f3:	82 4f d6 4f          	or     BYTE PTR [bx-0x2a],0x4f
   486f7:	dd 4f 4b             	fisttp QWORD PTR [bx+0x4b]
   486fa:	50                   	push   ax
   486fb:	b7 4f                	mov    bh,0x4f
   486fd:	b7 4f                	mov    bh,0x4f
   486ff:	e4 4f                	in     al,0x4f
   48701:	4b                   	dec    bx
   48702:	50                   	push   ax
   48703:	d6                   	salc
   48704:	4f                   	dec    di
   48705:	a5                   	movs   WORD PTR es:[di],WORD PTR ds:[si]
   48706:	4f                   	dec    di
   48707:	b7 4f                	mov    bh,0x4f
   48709:	4b                   	dec    bx
   4870a:	50                   	push   ax
   4870b:	4b                   	dec    bx
   4870c:	50                   	push   ax
   4870d:	55                   	push   bp
   4870e:	8b ec                	mov    bp,sp
   48710:	83 ec 04             	sub    sp,0x4
   48713:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   48716:	40                   	inc    ax
   48717:	99                   	cwd
   48718:	52                   	push   dx
   48719:	50                   	push   ax
   4871a:	9a d6 25 00 00       	call   0x0:0x25d6
   4871f:	83 c4 04             	add    sp,0x4
   48722:	89 56 fe             	mov    WORD PTR [bp-0x2],dx
   48725:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   48728:	1e                   	push   ds
   48729:	68 d3 62             	push   0x62d3
   4872c:	68 6d 07             	push   0x76d
   4872f:	68 88 01             	push   0x188
   48732:	68 26 de             	push   0xde26
   48735:	9a 81 0a 20 00       	call   0x20:0xa81
   4873a:	83 c4 0a             	add    sp,0xa
   4873d:	ff 76 06             	push   WORD PTR [bp+0x6]
   48740:	ff 76 fe             	push   WORD PTR [bp-0x2]
   48743:	ff 76 fc             	push   WORD PTR [bp-0x4]
   48746:	b8 88 01             	mov    ax,0x188
   48749:	8e c0                	mov    es,ax
   4874b:	26 c4 1e 4f e3       	les    bx,DWORD PTR es:0xe34f
   48750:	26 ff 37             	push   WORD PTR es:[bx]
   48753:	a1 98 bb             	mov    ax,ds:0xbb98
   48756:	99                   	cwd
   48757:	52                   	push   dx
   48758:	50                   	push   ax
   48759:	b8 88 01             	mov    ax,0x188
   4875c:	8e c0                	mov    es,ax
   4875e:	26 c4 1e 4f e3       	les    bx,DWORD PTR es:0xe34f
   48763:	26 8b 47 04          	mov    ax,WORD PTR es:[bx+0x4]
   48767:	2b 06 98 bb          	sub    ax,WORD PTR ds:0xbb98
   4876b:	50                   	push   ax
   4876c:	9a 88 06 98 00       	call   0x98:0x688
   48771:	52                   	push   dx
   48772:	50                   	push   ax
   48773:	9a 06 00 20 00       	call   0x20:0x6
   48778:	83 c4 0a             	add    sp,0xa
   4877b:	68 88 01             	push   0x188
   4877e:	68 26 de             	push   0xde26
   48781:	9a 22 0b 20 00       	call   0x20:0xb22
   48786:	83 c4 04             	add    sp,0x4
   48789:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   4878c:	03 5e 06             	add    bx,WORD PTR [bp+0x6]
   4878f:	26 c6 07 00          	mov    BYTE PTR es:[bx],0x0
   48793:	ff 76 fe             	push   WORD PTR [bp-0x2]
   48796:	ff 76 fc             	push   WORD PTR [bp-0x4]
   48799:	0e                   	push   cs
   4879a:	e8 7d f5             	call   0x47d1a
   4879d:	83 c4 04             	add    sp,0x4
   487a0:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   487a3:	01 06 98 bb          	add    WORD PTR ds:0xbb98,ax
   487a7:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   487aa:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   487ad:	c9                   	leave
   487ae:	cb                   	retf
   487af:	55                   	push   bp
   487b0:	8b ec                	mov    bp,sp
   487b2:	83 ec 08             	sub    sp,0x8
   487b5:	b8 88 01             	mov    ax,0x188
   487b8:	8e c0                	mov    es,ax
   487ba:	26 83 3e ea d5 00    	cmp    WORD PTR es:0xd5ea,0x0
   487c0:	74 67                	je     0x48829
   487c2:	9a 3d 01 38 01       	call   0x138:0x13d
   487c7:	80 7e 06 00          	cmp    BYTE PTR [bp+0x6],0x0
   487cb:	74 46                	je     0x48813
   487cd:	1e                   	push   ds
   487ce:	68 e2 62             	push   0x62e2
   487d1:	68 88 01             	push   0x188
   487d4:	68 10 a5             	push   0xa510
   487d7:	9a f7 48 00 00       	call   0x0:0x48f7
   487dc:	83 c4 08             	add    sp,0x8
   487df:	6a 0a                	push   0xa
   487e1:	16                   	push   ss
   487e2:	8d 46 f8             	lea    ax,[bp-0x8]
   487e5:	50                   	push   ax
   487e6:	ff 76 08             	push   WORD PTR [bp+0x8]
   487e9:	9a 58 3f 00 00       	call   0x0:0x3f58
   487ee:	83 c4 08             	add    sp,0x8
   487f1:	52                   	push   dx
   487f2:	50                   	push   ax
   487f3:	68 88 01             	push   0x188
   487f6:	68 10 a5             	push   0xa510
   487f9:	9a f7 48 00 00       	call   0x0:0x48f7
   487fe:	83 c4 08             	add    sp,0x8
   48801:	1e                   	push   ds
   48802:	68 e4 62             	push   0x62e4
   48805:	68 88 01             	push   0x188
   48808:	68 10 a5             	push   0xa510
   4880b:	9a f7 48 00 00       	call   0x0:0x48f7
   48810:	83 c4 08             	add    sp,0x8
   48813:	68 88 01             	push   0x188
   48816:	68 10 a5             	push   0xa510
   48819:	9a 3e 00 80 01       	call   0x180:0x3e
   4881e:	83 c4 04             	add    sp,0x4
   48821:	68 88 01             	push   0x188
   48824:	68 10 a5             	push   0xa510
   48827:	eb 04                	jmp    0x4882d
   48829:	1e                   	push   ds
   4882a:	68 ec 62             	push   0x62ec
   4882d:	90                   	nop
   4882e:	0e                   	push   cs
   4882f:	e8 05 00             	call   0x48837
   48832:	83 c4 04             	add    sp,0x4
   48835:	c9                   	leave
   48836:	cb                   	retf
   48837:	55                   	push   bp
   48838:	8b ec                	mov    bp,sp
   4883a:	6a 00                	push   0x0
   4883c:	6a 53                	push   0x53
   4883e:	6a 0b                	push   0xb
   48840:	68 df 00             	push   0xdf
   48843:	6a 03                	push   0x3
   48845:	6a 29                	push   0x29
   48847:	9a 08 09 28 00       	call   0x28:0x908
   4884c:	83 c4 0c             	add    sp,0xc
   4884f:	ff 76 08             	push   WORD PTR [bp+0x8]
   48852:	ff 76 06             	push   WORD PTR [bp+0x6]
   48855:	9a 3e 00 80 01       	call   0x180:0x3e
   4885a:	83 c4 04             	add    sp,0x4
   4885d:	b8 01 00             	mov    ax,0x1
   48860:	3d 01 00             	cmp    ax,0x1
   48863:	74 08                	je     0x4886d
   48865:	3d 02 00             	cmp    ax,0x2
   48868:	74 49                	je     0x488b3
   4886a:	e9 86 00             	jmp    0x488f3
   4886d:	6a 05                	push   0x5
   4886f:	b8 88 01             	mov    ax,0x188
   48872:	8e c0                	mov    es,ax
   48874:	26 a0 66 96          	mov    al,es:0x9666
   48878:	b4 00                	mov    ah,0x0
   4887a:	50                   	push   ax
   4887b:	ff 76 08             	push   WORD PTR [bp+0x8]
   4887e:	ff 76 06             	push   WORD PTR [bp+0x6]
   48881:	6a 03                	push   0x3
   48883:	6a 2a                	push   0x2a
   48885:	6a 53                	push   0x53
   48887:	9a 34 00 80 01       	call   0x180:0x34
   4888c:	83 c4 0e             	add    sp,0xe
   4888f:	6a 05                	push   0x5
   48891:	b8 88 01             	mov    ax,0x188
   48894:	8e c0                	mov    es,ax
   48896:	26 a0 65 96          	mov    al,es:0x9665
   4889a:	b4 00                	mov    ah,0x0
   4889c:	50                   	push   ax
   4889d:	ff 76 08             	push   WORD PTR [bp+0x8]
   488a0:	ff 76 06             	push   WORD PTR [bp+0x6]
   488a3:	6a 02                	push   0x2
   488a5:	6a 29                	push   0x29
   488a7:	6a 53                	push   0x53
   488a9:	9a 34 00 80 01       	call   0x180:0x34
   488ae:	83 c4 0e             	add    sp,0xe
   488b1:	eb 40                	jmp    0x488f3
   488b3:	b8 88 01             	mov    ax,0x188
   488b6:	8e c0                	mov    es,ax
   488b8:	26 a0 66 96          	mov    al,es:0x9666
   488bc:	b4 00                	mov    ah,0x0
   488be:	50                   	push   ax
   488bf:	ff 76 08             	push   WORD PTR [bp+0x8]
   488c2:	ff 76 06             	push   WORD PTR [bp+0x6]
   488c5:	6a 03                	push   0x3
   488c7:	6a 29                	push   0x29
   488c9:	6a 53                	push   0x53
   488cb:	9a 39 00 80 01       	call   0x180:0x39
   488d0:	83 c4 0c             	add    sp,0xc
   488d3:	b8 88 01             	mov    ax,0x188
   488d6:	8e c0                	mov    es,ax
   488d8:	26 a0 65 96          	mov    al,es:0x9665
   488dc:	b4 00                	mov    ah,0x0
   488de:	50                   	push   ax
   488df:	ff 76 08             	push   WORD PTR [bp+0x8]
   488e2:	ff 76 06             	push   WORD PTR [bp+0x6]
   488e5:	6a 02                	push   0x2
   488e7:	6a 29                	push   0x29
   488e9:	6a 53                	push   0x53
   488eb:	9a 39 00 80 01       	call   0x180:0x39
   488f0:	83 c4 0c             	add    sp,0xc
   488f3:	5d                   	pop    bp
   488f4:	cb                   	retf
   488f5:	55                   	push   bp
   488f6:	8b ec                	mov    bp,sp
   488f8:	83 ec 08             	sub    sp,0x8
   488fb:	9a b9 1e 10 00       	call   0x10:0x1eb9
   48900:	b8 88 01             	mov    ax,0x188
   48903:	8e c0                	mov    es,ax
   48905:	26 a0 5c 96          	mov    al,es:0x965c
   48909:	50                   	push   ax
   4890a:	9a c7 05 30 00       	call   0x30:0x5c7
   4890f:	59                   	pop    cx
   48910:	0a c0                	or     al,al
   48912:	74 05                	je     0x48919
   48914:	9a 04 02 30 00       	call   0x30:0x204
   48919:	c6 46 f9 00          	mov    BYTE PTR [bp-0x7],0x0
   4891d:	e9 63 01             	jmp    0x48a83
   48920:	6a 05                	push   0x5
   48922:	68 fe 00             	push   0xfe
   48925:	8a 46 f9             	mov    al,BYTE PTR [bp-0x7]
   48928:	b4 00                	mov    ah,0x0
   4892a:	c1 e0 02             	shl    ax,0x2
   4892d:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   48930:	03 d8                	add    bx,ax
   48932:	26 ff 77 02          	push   WORD PTR es:[bx+0x2]
   48936:	26 ff 37             	push   WORD PTR es:[bx]
   48939:	8a 46 f9             	mov    al,BYTE PTR [bp-0x7]
   4893c:	b4 00                	mov    ah,0x0
   4893e:	c1 e0 03             	shl    ax,0x3
   48941:	05 95 00             	add    ax,0x95
   48944:	50                   	push   ax
   48945:	6a 08                	push   0x8
   48947:	6a 00                	push   0x0
   48949:	9a 34 00 80 01       	call   0x180:0x34
   4894e:	83 c4 0e             	add    sp,0xe
   48951:	6a 05                	push   0x5
   48953:	68 f5 00             	push   0xf5
   48956:	8a 46 f9             	mov    al,BYTE PTR [bp-0x7]
   48959:	b4 00                	mov    ah,0x0
   4895b:	c1 e0 02             	shl    ax,0x2
   4895e:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   48961:	03 d8                	add    bx,ax
   48963:	26 ff 77 02          	push   WORD PTR es:[bx+0x2]
   48967:	26 ff 37             	push   WORD PTR es:[bx]
   4896a:	8a 46 f9             	mov    al,BYTE PTR [bp-0x7]
   4896d:	b4 00                	mov    ah,0x0
   4896f:	c1 e0 03             	shl    ax,0x3
   48972:	05 94 00             	add    ax,0x94
   48975:	50                   	push   ax
   48976:	6a 08                	push   0x8
   48978:	6a 00                	push   0x0
   4897a:	9a 34 00 80 01       	call   0x180:0x34
   4897f:	83 c4 0e             	add    sp,0xe
   48982:	8a 46 f9             	mov    al,BYTE PTR [bp-0x7]
   48985:	b4 00                	mov    ah,0x0
   48987:	c1 e0 02             	shl    ax,0x2
   4898a:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   4898d:	03 d8                	add    bx,ax
   4898f:	26 c4 1f             	les    bx,DWORD PTR es:[bx]
   48992:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   48995:	98                   	cbw
   48996:	50                   	push   ax
   48997:	1e                   	push   ds
   48998:	68 ee 62             	push   0x62ee
   4899b:	16                   	push   ss
   4899c:	8d 46 fa             	lea    ax,[bp-0x6]
   4899f:	50                   	push   ax
   489a0:	9a b4 48 00 00       	call   0x0:0x48b4
   489a5:	83 c4 0a             	add    sp,0xa
   489a8:	6a 05                	push   0x5
   489aa:	b8 88 01             	mov    ax,0x188
   489ad:	8e c0                	mov    es,ax
   489af:	26 a0 65 96          	mov    al,es:0x9665
   489b3:	b4 00                	mov    ah,0x0
   489b5:	50                   	push   ax
   489b6:	16                   	push   ss
   489b7:	8d 46 fa             	lea    ax,[bp-0x6]
   489ba:	50                   	push   ax
   489bb:	8a 46 f9             	mov    al,BYTE PTR [bp-0x7]
   489be:	b4 00                	mov    ah,0x0
   489c0:	c1 e0 03             	shl    ax,0x3
   489c3:	05 94 00             	add    ax,0x94
   489c6:	50                   	push   ax
   489c7:	6a 08                	push   0x8
   489c9:	6a 00                	push   0x0
   489cb:	9a 34 00 80 01       	call   0x180:0x34
   489d0:	83 c4 0e             	add    sp,0xe
   489d3:	8a 46 f9             	mov    al,BYTE PTR [bp-0x7]
   489d6:	b4 00                	mov    ah,0x0
   489d8:	c1 e0 03             	shl    ax,0x3
   489db:	ba 88 01             	mov    dx,0x188
   489de:	8b d8                	mov    bx,ax
   489e0:	8e c2                	mov    es,dx
   489e2:	26 c7 87 25 e6 05 00 	mov    WORD PTR es:[bx-0x19db],0x5
   489e9:	8a 46 f9             	mov    al,BYTE PTR [bp-0x7]
   489ec:	b4 00                	mov    ah,0x0
   489ee:	c1 e0 03             	shl    ax,0x3
   489f1:	05 94 00             	add    ax,0x94
   489f4:	8a 56 f9             	mov    dl,BYTE PTR [bp-0x7]
   489f7:	b6 00                	mov    dh,0x0
   489f9:	c1 e2 03             	shl    dx,0x3
   489fc:	bb 88 01             	mov    bx,0x188
   489ff:	8e c3                	mov    es,bx
   48a01:	8b da                	mov    bx,dx
   48a03:	26 89 87 27 e6       	mov    WORD PTR es:[bx-0x19d9],ax
   48a08:	8a 46 f9             	mov    al,BYTE PTR [bp-0x7]
   48a0b:	b4 00                	mov    ah,0x0
   48a0d:	c1 e0 03             	shl    ax,0x3
   48a10:	ba 88 01             	mov    dx,0x188
   48a13:	8b d8                	mov    bx,ax
   48a15:	8e c2                	mov    es,dx
   48a17:	26 8b 87 25 e6       	mov    ax,WORD PTR es:[bx-0x19db]
   48a1c:	50                   	push   ax
   48a1d:	6a 01                	push   0x1
   48a1f:	8a 46 f9             	mov    al,BYTE PTR [bp-0x7]
   48a22:	b4 00                	mov    ah,0x0
   48a24:	c1 e0 02             	shl    ax,0x2
   48a27:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   48a2a:	03 d8                	add    bx,ax
   48a2c:	26 ff 77 02          	push   WORD PTR es:[bx+0x2]
   48a30:	26 ff 37             	push   WORD PTR es:[bx]
   48a33:	9a 48 00 80 01       	call   0x180:0x48
   48a38:	83 c4 06             	add    sp,0x6
   48a3b:	5a                   	pop    dx
   48a3c:	03 d0                	add    dx,ax
   48a3e:	83 c2 06             	add    dx,0x6
   48a41:	8a 46 f9             	mov    al,BYTE PTR [bp-0x7]
   48a44:	b4 00                	mov    ah,0x0
   48a46:	c1 e0 03             	shl    ax,0x3
   48a49:	bb 88 01             	mov    bx,0x188
   48a4c:	8e c3                	mov    es,bx
   48a4e:	8b d8                	mov    bx,ax
   48a50:	26 89 97 29 e6       	mov    WORD PTR es:[bx-0x19d7],dx
   48a55:	8a 46 f9             	mov    al,BYTE PTR [bp-0x7]
   48a58:	b4 00                	mov    ah,0x0
   48a5a:	c1 e0 03             	shl    ax,0x3
   48a5d:	ba 88 01             	mov    dx,0x188
   48a60:	8b d8                	mov    bx,ax
   48a62:	8e c2                	mov    es,dx
   48a64:	26 8b 87 27 e6       	mov    ax,WORD PTR es:[bx-0x19d9]
   48a69:	05 08 00             	add    ax,0x8
   48a6c:	8a 56 f9             	mov    dl,BYTE PTR [bp-0x7]
   48a6f:	b6 00                	mov    dh,0x0
   48a71:	c1 e2 03             	shl    dx,0x3
   48a74:	bb 88 01             	mov    bx,0x188
   48a77:	8e c3                	mov    es,bx
   48a79:	8b da                	mov    bx,dx
   48a7b:	26 89 87 2b e6       	mov    WORD PTR es:[bx-0x19d5],ax
   48a80:	fe 46 f9             	inc    BYTE PTR [bp-0x7]
   48a83:	80 7e f9 06          	cmp    BYTE PTR [bp-0x7],0x6
   48a87:	73 03                	jae    0x48a8c
   48a89:	e9 94 fe             	jmp    0x48920
   48a8c:	b8 88 01             	mov    ax,0x188
   48a8f:	8e c0                	mov    es,ax
   48a91:	26 a0 e3 e5          	mov    al,es:0xe5e3
   48a95:	50                   	push   ax
   48a96:	9a 69 00 30 00       	call   0x30:0x69
   48a9b:	59                   	pop    cx
   48a9c:	c7 06 9e bb 64 00    	mov    WORD PTR ds:0xbb9e,0x64
   48aa2:	e9 9e 00             	jmp    0x48b43
   48aa5:	b8 88 01             	mov    ax,0x188
   48aa8:	8e c0                	mov    es,ax
   48aaa:	26 83 3e f3 e5 00    	cmp    WORD PTR es:0xe5f3,0x0
   48ab0:	74 10                	je     0x48ac2
   48ab2:	b8 88 01             	mov    ax,0x188
   48ab5:	8e c0                	mov    es,ax
   48ab7:	26 a0 e3 e5          	mov    al,es:0xe5e3
   48abb:	50                   	push   ax
   48abc:	9a 6b 02 30 00       	call   0x30:0x26b
   48ac1:	59                   	pop    cx
   48ac2:	b8 88 01             	mov    ax,0x188
   48ac5:	8e c0                	mov    es,ax
   48ac7:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
   48acd:	75 22                	jne    0x48af1
   48acf:	9a 15 05 30 00       	call   0x30:0x515
   48ad4:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   48ad7:	83 7e fc 05          	cmp    WORD PTR [bp-0x4],0x5
   48adb:	7e 0f                	jle    0x48aec
   48add:	83 7e fc 0c          	cmp    WORD PTR [bp-0x4],0xc
   48ae1:	7d 09                	jge    0x48aec
   48ae3:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   48ae6:	05 fb ff             	add    ax,0xfffb
   48ae9:	a3 9e bb             	mov    ds:0xbb9e,ax
   48aec:	9a 14 07 30 00       	call   0x30:0x714
   48af1:	9a 45 2e 00 00       	call   0x0:0x2e45
   48af6:	0b c0                	or     ax,ax
   48af8:	74 49                	je     0x48b43
   48afa:	9a d7 29 00 00       	call   0x0:0x29d7
   48aff:	25 ff 00             	and    ax,0xff
   48b02:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   48b05:	16                   	push   ss
   48b06:	8d 46 fe             	lea    ax,[bp-0x2]
   48b09:	50                   	push   ax
   48b0a:	9a 2a 00 80 01       	call   0x180:0x2a
   48b0f:	83 c4 04             	add    sp,0x4
   48b12:	c6 46 f9 00          	mov    BYTE PTR [bp-0x7],0x0
   48b16:	eb 25                	jmp    0x48b3d
   48b18:	8a 46 f9             	mov    al,BYTE PTR [bp-0x7]
   48b1b:	b4 00                	mov    ah,0x0
   48b1d:	c1 e0 02             	shl    ax,0x2
   48b20:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   48b23:	03 d8                	add    bx,ax
   48b25:	26 c4 1f             	les    bx,DWORD PTR es:[bx]
   48b28:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   48b2b:	98                   	cbw
   48b2c:	3b 46 fe             	cmp    ax,WORD PTR [bp-0x2]
   48b2f:	75 09                	jne    0x48b3a
   48b31:	8a 46 f9             	mov    al,BYTE PTR [bp-0x7]
   48b34:	b4 00                	mov    ah,0x0
   48b36:	40                   	inc    ax
   48b37:	a3 9e bb             	mov    ds:0xbb9e,ax
   48b3a:	fe 46 f9             	inc    BYTE PTR [bp-0x7]
   48b3d:	80 7e f9 06          	cmp    BYTE PTR [bp-0x7],0x6
   48b41:	72 d5                	jb     0x48b18
   48b43:	83 3e 9e bb 64       	cmp    WORD PTR ds:0xbb9e,0x64
   48b48:	75 03                	jne    0x48b4d
   48b4a:	e9 58 ff             	jmp    0x48aa5
   48b4d:	b8 88 01             	mov    ax,0x188
   48b50:	8e c0                	mov    es,ax
   48b52:	26 a0 5c 96          	mov    al,es:0x965c
   48b56:	50                   	push   ax
   48b57:	9a c7 05 30 00       	call   0x30:0x5c7
   48b5c:	59                   	pop    cx
   48b5d:	0a c0                	or     al,al
   48b5f:	74 05                	je     0x48b66
   48b61:	9a 04 02 30 00       	call   0x30:0x204
   48b66:	6a 05                	push   0x5
   48b68:	b8 88 01             	mov    ax,0x188
   48b6b:	8e c0                	mov    es,ax
   48b6d:	26 a0 65 96          	mov    al,es:0x9665
   48b71:	b4 00                	mov    ah,0x0
   48b73:	50                   	push   ax
   48b74:	a1 9e bb             	mov    ax,ds:0xbb9e
   48b77:	48                   	dec    ax
   48b78:	c1 e0 02             	shl    ax,0x2
   48b7b:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   48b7e:	03 d8                	add    bx,ax
   48b80:	26 ff 77 02          	push   WORD PTR es:[bx+0x2]
   48b84:	26 ff 37             	push   WORD PTR es:[bx]
   48b87:	a1 9e bb             	mov    ax,ds:0xbb9e
   48b8a:	48                   	dec    ax
   48b8b:	c1 e0 03             	shl    ax,0x3
   48b8e:	05 94 00             	add    ax,0x94
   48b91:	50                   	push   ax
   48b92:	6a 08                	push   0x8
   48b94:	6a 00                	push   0x0
   48b96:	9a 34 00 80 01       	call   0x180:0x34
   48b9b:	83 c4 0e             	add    sp,0xe
   48b9e:	b8 88 01             	mov    ax,0x188
   48ba1:	8e c0                	mov    es,ax
   48ba3:	26 a0 e3 e5          	mov    al,es:0xe5e3
   48ba7:	50                   	push   ax
   48ba8:	9a 69 00 30 00       	call   0x30:0x69
   48bad:	59                   	pop    cx
   48bae:	6a 05                	push   0x5
   48bb0:	9a ca 2d 10 00       	call   0x10:0x2dca
   48bb5:	59                   	pop    cx
   48bb6:	9a b9 1e 10 00       	call   0x10:0x1eb9
   48bbb:	a0 9e bb             	mov    al,ds:0xbb9e
   48bbe:	c9                   	leave
   48bbf:	cb                   	retf
   48bc0:	55                   	push   bp
   48bc1:	8b ec                	mov    bp,sp
   48bc3:	83 ec 24             	sub    sp,0x24
   48bc6:	c6 46 ff 00          	mov    BYTE PTR [bp-0x1],0x0
   48bca:	8d 46 dc             	lea    ax,[bp-0x24]
   48bcd:	16                   	push   ss
   48bce:	50                   	push   ax
   48bcf:	1e                   	push   ds
   48bd0:	68 3e 5c             	push   0x5c3e
   48bd3:	b9 0c 00             	mov    cx,0xc
   48bd6:	9a 7a 12 00 00       	call   0x0:0x127a
   48bdb:	8d 46 e8             	lea    ax,[bp-0x18]
   48bde:	16                   	push   ss
   48bdf:	50                   	push   ax
   48be0:	1e                   	push   ds
   48be1:	68 4a 5c             	push   0x5c4a
   48be4:	b9 09 00             	mov    cx,0x9
   48be7:	9a 7a 12 00 00       	call   0x0:0x127a
   48bec:	9a 04 02 30 00       	call   0x30:0x204
   48bf1:	c7 46 f2 01 00       	mov    WORD PTR [bp-0xe],0x1
   48bf6:	e9 44 02             	jmp    0x48e3d
   48bf9:	bb 04 00             	mov    bx,0x4
   48bfc:	2b 5e f2             	sub    bx,WORD PTR [bp-0xe]
   48bff:	d1 e3                	shl    bx,1
   48c01:	b8 88 01             	mov    ax,0x188
   48c04:	8e c0                	mov    es,ax
   48c06:	26 8b 87 6d bb       	mov    ax,WORD PTR es:[bx-0x4493]
   48c0b:	bb 03 00             	mov    bx,0x3
   48c0e:	2b 5e f2             	sub    bx,WORD PTR [bp-0xe]
   48c11:	d1 e3                	shl    bx,1
   48c13:	3b 87 8c bb          	cmp    ax,WORD PTR [bx-0x4474]
   48c17:	75 11                	jne    0x48c2a
   48c19:	b8 88 01             	mov    ax,0x188
   48c1c:	8e c0                	mov    es,ax
   48c1e:	26 f7 06 5e 3d 10 00 	test   WORD PTR es:0x3d5e,0x10
   48c25:	75 03                	jne    0x48c2a
   48c27:	e9 10 02             	jmp    0x48e3a
   48c2a:	bb 04 00             	mov    bx,0x4
   48c2d:	2b 5e f2             	sub    bx,WORD PTR [bp-0xe]
   48c30:	d1 e3                	shl    bx,1
   48c32:	b8 88 01             	mov    ax,0x188
   48c35:	8e c0                	mov    es,ax
   48c37:	26 ff b7 6d bb       	push   WORD PTR es:[bx-0x4493]
   48c3c:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   48c3f:	6b c0 03             	imul   ax,ax,0x3
   48c42:	8d 56 e5             	lea    dx,[bp-0x1b]
   48c45:	03 c2                	add    ax,dx
   48c47:	16                   	push   ss
   48c48:	50                   	push   ax
   48c49:	1e                   	push   ds
   48c4a:	68 f1 62             	push   0x62f1
   48c4d:	16                   	push   ss
   48c4e:	8d 46 f4             	lea    ax,[bp-0xc]
   48c51:	50                   	push   ax
   48c52:	9a b4 48 00 00       	call   0x0:0x48b4
   48c57:	83 c4 0e             	add    sp,0xe
   48c5a:	16                   	push   ss
   48c5b:	8d 46 f4             	lea    ax,[bp-0xc]
   48c5e:	50                   	push   ax
   48c5f:	9a cc 49 00 00       	call   0x0:0x49cc
   48c64:	83 c4 04             	add    sp,0x4
   48c67:	3d 0a 00             	cmp    ax,0xa
   48c6a:	76 15                	jbe    0x48c81
   48c6c:	6a 63                	push   0x63
   48c6e:	6a 00                	push   0x0
   48c70:	6a 00                	push   0x0
   48c72:	68 e3 07             	push   0x7e3
   48c75:	1e                   	push   ds
   48c76:	68 f7 62             	push   0x62f7
   48c79:	9a 2a 00 58 01       	call   0x158:0x2a
   48c7e:	83 c4 0c             	add    sp,0xc
   48c81:	b8 88 01             	mov    ax,0x188
   48c84:	8e c0                	mov    es,ax
   48c86:	26 a1 57 e3          	mov    ax,es:0xe357
   48c8a:	26 0b 06 59 e3       	or     ax,WORD PTR es:0xe359
   48c8f:	74 45                	je     0x48cd6
   48c91:	b8 88 01             	mov    ax,0x188
   48c94:	8e c0                	mov    es,ax
   48c96:	26 a0 72 96          	mov    al,es:0x9672
   48c9a:	ba 88 01             	mov    dx,0x188
   48c9d:	8e c2                	mov    es,dx
   48c9f:	26 3a 06 22 98       	cmp    al,BYTE PTR es:0x9822
   48ca4:	74 30                	je     0x48cd6
   48ca6:	c6 46 ff 17          	mov    BYTE PTR [bp-0x1],0x17
   48caa:	8b 5e f2             	mov    bx,WORD PTR [bp-0xe]
   48cad:	c1 e3 02             	shl    bx,0x2
   48cb0:	8d 46 d8             	lea    ax,[bp-0x28]
   48cb3:	05 02 00             	add    ax,0x2
   48cb6:	03 d8                	add    bx,ax
   48cb8:	36 8b 07             	mov    ax,WORD PTR ss:[bx]
   48cbb:	ba 88 01             	mov    dx,0x188
   48cbe:	8e c2                	mov    es,dx
   48cc0:	26 2b 06 58 96       	sub    ax,WORD PTR es:0x9658
   48cc5:	8b 5e f2             	mov    bx,WORD PTR [bp-0xe]
   48cc8:	c1 e3 02             	shl    bx,0x2
   48ccb:	8d 56 d8             	lea    dx,[bp-0x28]
   48cce:	83 c2 02             	add    dx,0x2
   48cd1:	03 da                	add    bx,dx
   48cd3:	36 89 07             	mov    WORD PTR ss:[bx],ax
   48cd6:	6a 00                	push   0x0
   48cd8:	8a 46 ff             	mov    al,BYTE PTR [bp-0x1]
   48cdb:	50                   	push   ax
   48cdc:	6a 06                	push   0x6
   48cde:	6a 1b                	push   0x1b
   48ce0:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   48ce3:	c1 e0 02             	shl    ax,0x2
   48ce6:	8d 5e d8             	lea    bx,[bp-0x28]
   48ce9:	03 d8                	add    bx,ax
   48ceb:	36 ff 77 02          	push   WORD PTR ss:[bx+0x2]
   48cef:	8b 5e f2             	mov    bx,WORD PTR [bp-0xe]
   48cf2:	c1 e3 02             	shl    bx,0x2
   48cf5:	8d 46 d8             	lea    ax,[bp-0x28]
   48cf8:	03 d8                	add    bx,ax
   48cfa:	36 ff 37             	push   WORD PTR ss:[bx]
   48cfd:	9a 08 09 28 00       	call   0x28:0x908
   48d02:	83 c4 0c             	add    sp,0xc
   48d05:	b8 02 00             	mov    ax,0x2
   48d08:	3d 01 00             	cmp    ax,0x1
   48d0b:	74 0b                	je     0x48d18
   48d0d:	3d 02 00             	cmp    ax,0x2
   48d10:	75 03                	jne    0x48d15
   48d12:	e9 89 00             	jmp    0x48d9e
   48d15:	e9 04 01             	jmp    0x48e1c
   48d18:	6a 05                	push   0x5
   48d1a:	b8 88 01             	mov    ax,0x188
   48d1d:	8e c0                	mov    es,ax
   48d1f:	26 a0 69 96          	mov    al,es:0x9669
   48d23:	b4 00                	mov    ah,0x0
   48d25:	50                   	push   ax
   48d26:	16                   	push   ss
   48d27:	8d 46 f4             	lea    ax,[bp-0xc]
   48d2a:	50                   	push   ax
   48d2b:	8b 5e f2             	mov    bx,WORD PTR [bp-0xe]
   48d2e:	c1 e3 02             	shl    bx,0x2
   48d31:	8d 46 d8             	lea    ax,[bp-0x28]
   48d34:	05 02 00             	add    ax,0x2
   48d37:	03 d8                	add    bx,ax
   48d39:	36 8b 07             	mov    ax,WORD PTR ss:[bx]
   48d3c:	40                   	inc    ax
   48d3d:	50                   	push   ax
   48d3e:	8b 5e f2             	mov    bx,WORD PTR [bp-0xe]
   48d41:	c1 e3 02             	shl    bx,0x2
   48d44:	8d 46 d8             	lea    ax,[bp-0x28]
   48d47:	03 d8                	add    bx,ax
   48d49:	36 8b 07             	mov    ax,WORD PTR ss:[bx]
   48d4c:	40                   	inc    ax
   48d4d:	50                   	push   ax
   48d4e:	8a 46 ff             	mov    al,BYTE PTR [bp-0x1]
   48d51:	b4 00                	mov    ah,0x0
   48d53:	50                   	push   ax
   48d54:	9a 34 00 80 01       	call   0x180:0x34
   48d59:	83 c4 0e             	add    sp,0xe
   48d5c:	6a 05                	push   0x5
   48d5e:	b8 88 01             	mov    ax,0x188
   48d61:	8e c0                	mov    es,ax
   48d63:	26 a0 65 96          	mov    al,es:0x9665
   48d67:	b4 00                	mov    ah,0x0
   48d69:	50                   	push   ax
   48d6a:	16                   	push   ss
   48d6b:	8d 46 f4             	lea    ax,[bp-0xc]
   48d6e:	50                   	push   ax
   48d6f:	8b 5e f2             	mov    bx,WORD PTR [bp-0xe]
   48d72:	c1 e3 02             	shl    bx,0x2
   48d75:	8d 46 d8             	lea    ax,[bp-0x28]
   48d78:	05 02 00             	add    ax,0x2
   48d7b:	03 d8                	add    bx,ax
   48d7d:	36 ff 37             	push   WORD PTR ss:[bx]
   48d80:	8b 5e f2             	mov    bx,WORD PTR [bp-0xe]
   48d83:	c1 e3 02             	shl    bx,0x2
   48d86:	8d 46 d8             	lea    ax,[bp-0x28]
   48d89:	03 d8                	add    bx,ax
   48d8b:	36 ff 37             	push   WORD PTR ss:[bx]
   48d8e:	8a 46 ff             	mov    al,BYTE PTR [bp-0x1]
   48d91:	b4 00                	mov    ah,0x0
   48d93:	50                   	push   ax
   48d94:	9a 34 00 80 01       	call   0x180:0x34
   48d99:	83 c4 0e             	add    sp,0xe
   48d9c:	eb 7e                	jmp    0x48e1c
   48d9e:	b8 88 01             	mov    ax,0x188
   48da1:	8e c0                	mov    es,ax
   48da3:	26 a0 69 96          	mov    al,es:0x9669
   48da7:	b4 00                	mov    ah,0x0
   48da9:	50                   	push   ax
   48daa:	16                   	push   ss
   48dab:	8d 46 f4             	lea    ax,[bp-0xc]
   48dae:	50                   	push   ax
   48daf:	8b 5e f2             	mov    bx,WORD PTR [bp-0xe]
   48db2:	c1 e3 02             	shl    bx,0x2
   48db5:	8d 46 d8             	lea    ax,[bp-0x28]
   48db8:	05 02 00             	add    ax,0x2
   48dbb:	03 d8                	add    bx,ax
   48dbd:	36 8b 07             	mov    ax,WORD PTR ss:[bx]
   48dc0:	40                   	inc    ax
   48dc1:	50                   	push   ax
   48dc2:	8b 5e f2             	mov    bx,WORD PTR [bp-0xe]
   48dc5:	c1 e3 02             	shl    bx,0x2
   48dc8:	8d 46 d8             	lea    ax,[bp-0x28]
   48dcb:	03 d8                	add    bx,ax
   48dcd:	36 ff 37             	push   WORD PTR ss:[bx]
   48dd0:	8a 46 ff             	mov    al,BYTE PTR [bp-0x1]
   48dd3:	b4 00                	mov    ah,0x0
   48dd5:	50                   	push   ax
   48dd6:	9a 39 00 80 01       	call   0x180:0x39
   48ddb:	83 c4 0c             	add    sp,0xc
   48dde:	b8 88 01             	mov    ax,0x188
   48de1:	8e c0                	mov    es,ax
   48de3:	26 a0 65 96          	mov    al,es:0x9665
   48de7:	b4 00                	mov    ah,0x0
   48de9:	50                   	push   ax
   48dea:	16                   	push   ss
   48deb:	8d 46 f4             	lea    ax,[bp-0xc]
   48dee:	50                   	push   ax
   48def:	8b 5e f2             	mov    bx,WORD PTR [bp-0xe]
   48df2:	c1 e3 02             	shl    bx,0x2
   48df5:	8d 46 d8             	lea    ax,[bp-0x28]
   48df8:	05 02 00             	add    ax,0x2
   48dfb:	03 d8                	add    bx,ax
   48dfd:	36 ff 37             	push   WORD PTR ss:[bx]
   48e00:	8b 5e f2             	mov    bx,WORD PTR [bp-0xe]
   48e03:	c1 e3 02             	shl    bx,0x2
   48e06:	8d 46 d8             	lea    ax,[bp-0x28]
   48e09:	03 d8                	add    bx,ax
   48e0b:	36 ff 37             	push   WORD PTR ss:[bx]
   48e0e:	8a 46 ff             	mov    al,BYTE PTR [bp-0x1]
   48e11:	b4 00                	mov    ah,0x0
   48e13:	50                   	push   ax
   48e14:	9a 39 00 80 01       	call   0x180:0x39
   48e19:	83 c4 0c             	add    sp,0xc
   48e1c:	bb 04 00             	mov    bx,0x4
   48e1f:	2b 5e f2             	sub    bx,WORD PTR [bp-0xe]
   48e22:	d1 e3                	shl    bx,1
   48e24:	b8 88 01             	mov    ax,0x188
   48e27:	8e c0                	mov    es,ax
   48e29:	26 8b 87 6d bb       	mov    ax,WORD PTR es:[bx-0x4493]
   48e2e:	bb 03 00             	mov    bx,0x3
   48e31:	2b 5e f2             	sub    bx,WORD PTR [bp-0xe]
   48e34:	d1 e3                	shl    bx,1
   48e36:	89 87 8c bb          	mov    WORD PTR [bx-0x4474],ax
   48e3a:	ff 46 f2             	inc    WORD PTR [bp-0xe]
   48e3d:	83 7e f2 03          	cmp    WORD PTR [bp-0xe],0x3
   48e41:	7f 03                	jg     0x48e46
   48e43:	e9 b3 fd             	jmp    0x48bf9
   48e46:	b8 88 01             	mov    ax,0x188
   48e49:	8e c0                	mov    es,ax
   48e4b:	26 a0 e3 e5          	mov    al,es:0xe5e3
   48e4f:	50                   	push   ax
   48e50:	9a 69 00 30 00       	call   0x30:0x69
   48e55:	59                   	pop    cx
   48e56:	c9                   	leave
   48e57:	cb                   	retf
   48e58:	55                   	push   bp
   48e59:	8b ec                	mov    bp,sp
   48e5b:	83 ec 0e             	sub    sp,0xe
   48e5e:	b8 88 01             	mov    ax,0x188
   48e61:	8e c0                	mov    es,ax
   48e63:	26 a1 9b e2          	mov    ax,es:0xe29b
   48e67:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   48e6a:	b8 88 01             	mov    ax,0x188
   48e6d:	8e c0                	mov    es,ax
   48e6f:	26 a1 9d e2          	mov    ax,es:0xe29d
   48e73:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   48e76:	c7 46 fc 3e 00       	mov    WORD PTR [bp-0x4],0x3e
   48e7b:	9a b9 1e 10 00       	call   0x10:0x1eb9
   48e80:	9a 04 02 30 00       	call   0x30:0x204
   48e85:	b8 88 01             	mov    ax,0x188
   48e88:	8b 56 f6             	mov    dx,WORD PTR [bp-0xa]
   48e8b:	8e c0                	mov    es,ax
   48e8d:	26 89 16 53 e3       	mov    WORD PTR es:0xe353,dx
   48e92:	b8 88 01             	mov    ax,0x188
   48e95:	8b 56 fc             	mov    dx,WORD PTR [bp-0x4]
   48e98:	8e c0                	mov    es,ax
   48e9a:	26 89 16 55 e3       	mov    WORD PTR es:0xe355,dx
   48e9f:	6a 00                	push   0x0
   48ea1:	b8 88 01             	mov    ax,0x188
   48ea4:	8e c0                	mov    es,ax
   48ea6:	26 a1 53 e3          	mov    ax,es:0xe353
   48eaa:	ba 88 01             	mov    dx,0x188
   48ead:	8e c2                	mov    es,dx
   48eaf:	26 f7 2e 55 e3       	imul   WORD PTR es:0xe355
   48eb4:	6a 00                	push   0x0
   48eb6:	50                   	push   ax
   48eb7:	9a 64 01 20 00       	call   0x20:0x164
   48ebc:	83 c4 06             	add    sp,0x6
   48ebf:	bb 88 01             	mov    bx,0x188
   48ec2:	8e c3                	mov    es,bx
   48ec4:	26 89 16 59 e3       	mov    WORD PTR es:0xe359,dx
   48ec9:	26 a3 57 e3          	mov    es:0xe357,ax
   48ecd:	80 3e 0a 5c 00       	cmp    BYTE PTR ds:0x5c0a,0x0
   48ed2:	75 03                	jne    0x48ed7
   48ed4:	e9 b0 00             	jmp    0x48f87
   48ed7:	c7 06 c0 5b 00 00    	mov    WORD PTR ds:0x5bc0,0x0
   48edd:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   48ee0:	2b 46 fc             	sub    ax,WORD PTR [bp-0x4]
   48ee3:	a3 be 5b             	mov    ds:0x5bbe,ax
   48ee6:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   48ee9:	33 c9                	xor    cx,cx
   48eeb:	33 d2                	xor    dx,dx
   48eed:	b8 3e 00             	mov    ax,0x3e
   48ef0:	9a 42 12 00 00       	call   0x0:0x1242
   48ef5:	52                   	push   dx
   48ef6:	50                   	push   ax
   48ef7:	6a 00                	push   0x0
   48ef9:	6a 00                	push   0x0
   48efb:	a1 be 5b             	mov    ax,ds:0x5bbe
   48efe:	99                   	cwd
   48eff:	50                   	push   ax
   48f00:	52                   	push   dx
   48f01:	33 d2                	xor    dx,dx
   48f03:	b8 40 01             	mov    ax,0x140
   48f06:	59                   	pop    cx
   48f07:	5b                   	pop    bx
   48f08:	9a 42 12 00 00       	call   0x0:0x1242
   48f0d:	52                   	push   dx
   48f0e:	50                   	push   ax
   48f0f:	b8 88 01             	mov    ax,0x188
   48f12:	8e c0                	mov    es,ax
   48f14:	26 ff 36 59 e3       	push   WORD PTR es:0xe359
   48f19:	26 ff 36 57 e3       	push   WORD PTR es:0xe357
   48f1e:	b8 88 01             	mov    ax,0x188
   48f21:	8e c0                	mov    es,ax
   48f23:	26 ff 36 a1 e2       	push   WORD PTR es:0xe2a1
   48f28:	26 ff 36 9f e2       	push   WORD PTR es:0xe29f
   48f2d:	9a c9 07 20 00       	call   0x20:0x7c9
   48f32:	83 c4 14             	add    sp,0x14
   48f35:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   48f38:	33 c9                	xor    cx,cx
   48f3a:	33 d2                	xor    dx,dx
   48f3c:	b8 3e 00             	mov    ax,0x3e
   48f3f:	9a 42 12 00 00       	call   0x0:0x1242
   48f44:	52                   	push   dx
   48f45:	50                   	push   ax
   48f46:	a1 be 5b             	mov    ax,ds:0x5bbe
   48f49:	99                   	cwd
   48f4a:	50                   	push   ax
   48f4b:	52                   	push   dx
   48f4c:	33 d2                	xor    dx,dx
   48f4e:	b8 40 01             	mov    ax,0x140
   48f51:	59                   	pop    cx
   48f52:	5b                   	pop    bx
   48f53:	9a 42 12 00 00       	call   0x0:0x1242
   48f58:	52                   	push   dx
   48f59:	50                   	push   ax
   48f5a:	6a 00                	push   0x0
   48f5c:	6a 00                	push   0x0
   48f5e:	b8 88 01             	mov    ax,0x188
   48f61:	8e c0                	mov    es,ax
   48f63:	26 ff 36 a1 e2       	push   WORD PTR es:0xe2a1
   48f68:	26 ff 36 9f e2       	push   WORD PTR es:0xe29f
   48f6d:	b8 88 01             	mov    ax,0x188
   48f70:	8e c0                	mov    es,ax
   48f72:	26 ff 36 39 e5       	push   WORD PTR es:0xe539
   48f77:	26 ff 36 37 e5       	push   WORD PTR es:0xe537
   48f7c:	9a c9 07 20 00       	call   0x20:0x7c9
   48f81:	83 c4 14             	add    sp,0x14
   48f84:	e9 21 01             	jmp    0x490a8
   48f87:	c7 06 be 5b 00 00    	mov    WORD PTR ds:0x5bbe,0x0
   48f8d:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   48f90:	33 c9                	xor    cx,cx
   48f92:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   48f95:	33 d2                	xor    dx,dx
   48f97:	9a 42 12 00 00       	call   0x0:0x1242
   48f9c:	52                   	push   dx
   48f9d:	50                   	push   ax
   48f9e:	6a 00                	push   0x0
   48fa0:	6a 00                	push   0x0
   48fa2:	6a 00                	push   0x0
   48fa4:	6a 00                	push   0x0
   48fa6:	b8 88 01             	mov    ax,0x188
   48fa9:	8e c0                	mov    es,ax
   48fab:	26 ff 36 59 e3       	push   WORD PTR es:0xe359
   48fb0:	26 ff 36 57 e3       	push   WORD PTR es:0xe357
   48fb5:	b8 88 01             	mov    ax,0x188
   48fb8:	8e c0                	mov    es,ax
   48fba:	26 ff 36 a1 e2       	push   WORD PTR es:0xe2a1
   48fbf:	26 ff 36 9f e2       	push   WORD PTR es:0xe29f
   48fc4:	9a c9 07 20 00       	call   0x20:0x7c9
   48fc9:	83 c4 14             	add    sp,0x14
   48fcc:	6a 00                	push   0x0
   48fce:	6a 00                	push   0x0
   48fd0:	6a 01                	push   0x1
   48fd2:	ff 36 c0 5b          	push   WORD PTR ds:0x5bc0
   48fd6:	6a 00                	push   0x0
   48fd8:	6a 00                	push   0x0
   48fda:	9a 08 09 28 00       	call   0x28:0x908
   48fdf:	83 c4 0c             	add    sp,0xc
   48fe2:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   48fe7:	b8 88 01             	mov    ax,0x188
   48fea:	8e c0                	mov    es,ax
   48fec:	26 a1 4a e7          	mov    ax,es:0xe74a
   48ff0:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   48ff3:	c7 46 f8 00 00       	mov    WORD PTR [bp-0x8],0x0
   48ff8:	c7 46 f2 00 00       	mov    WORD PTR [bp-0xe],0x0
   48ffd:	e9 9d 00             	jmp    0x4909d
   49000:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   49003:	3b 46 fc             	cmp    ax,WORD PTR [bp-0x4]
   49006:	76 06                	jbe    0x4900e
   49008:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4900b:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   4900e:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   49011:	99                   	cwd
   49012:	50                   	push   ax
   49013:	52                   	push   dx
   49014:	33 d2                	xor    dx,dx
   49016:	b8 50 00             	mov    ax,0x50
   49019:	59                   	pop    cx
   4901a:	5b                   	pop    bx
   4901b:	9a 42 12 00 00       	call   0x0:0x1242
   49020:	52                   	push   dx
   49021:	50                   	push   ax
   49022:	9a 52 00 50 01       	call   0x150:0x52
   49027:	83 c4 04             	add    sp,0x4
   4902a:	b8 c8 00             	mov    ax,0xc8
   4902d:	2b 46 fa             	sub    ax,WORD PTR [bp-0x6]
   49030:	50                   	push   ax
   49031:	9a 57 00 50 01       	call   0x150:0x57
   49036:	59                   	pop    cx
   49037:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4903a:	69 c0 40 01          	imul   ax,ax,0x140
   4903e:	6a 00                	push   0x0
   49040:	50                   	push   ax
   49041:	a1 c0 5b             	mov    ax,ds:0x5bc0
   49044:	99                   	cwd
   49045:	52                   	push   dx
   49046:	50                   	push   ax
   49047:	6a 00                	push   0x0
   49049:	6a 00                	push   0x0
   4904b:	b8 88 01             	mov    ax,0x188
   4904e:	8e c0                	mov    es,ax
   49050:	26 ff 36 a1 e2       	push   WORD PTR es:0xe2a1
   49055:	26 ff 36 9f e2       	push   WORD PTR es:0xe29f
   4905a:	b8 88 01             	mov    ax,0x188
   4905d:	8e c0                	mov    es,ax
   4905f:	26 ff 36 39 e5       	push   WORD PTR es:0xe539
   49064:	26 ff 36 37 e5       	push   WORD PTR es:0xe537
   49069:	9a c9 07 20 00       	call   0x20:0x7c9
   4906e:	83 c4 14             	add    sp,0x14
   49071:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   49074:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   49077:	b8 88 01             	mov    ax,0x188
   4907a:	8e c0                	mov    es,ax
   4907c:	26 a1 4a e7          	mov    ax,es:0xe74a
   49080:	2b 46 fe             	sub    ax,WORD PTR [bp-0x2]
   49083:	bb 0a 00             	mov    bx,0xa
   49086:	33 d2                	xor    dx,dx
   49088:	f7 f3                	div    bx
   4908a:	89 46 f2             	mov    WORD PTR [bp-0xe],ax
   4908d:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   49090:	f7 6e f2             	imul   WORD PTR [bp-0xe]
   49093:	bb 14 00             	mov    bx,0x14
   49096:	33 d2                	xor    dx,dx
   49098:	f7 f3                	div    bx
   4909a:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   4909d:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   490a0:	3b 46 fc             	cmp    ax,WORD PTR [bp-0x4]
   490a3:	73 03                	jae    0x490a8
   490a5:	e9 58 ff             	jmp    0x49000
   490a8:	b8 3d 00             	mov    ax,0x3d
   490ab:	33 d2                	xor    dx,dx
   490ad:	f7 76 f4             	div    WORD PTR [bp-0xc]
   490b0:	4a                   	dec    dx
   490b1:	52                   	push   dx
   490b2:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   490b5:	48                   	dec    ax
   490b6:	50                   	push   ax
   490b7:	a1 be 5b             	mov    ax,ds:0x5bbe
   490ba:	33 d2                	xor    dx,dx
   490bc:	f7 76 f4             	div    WORD PTR [bp-0xc]
   490bf:	52                   	push   dx
   490c0:	ff 36 c0 5b          	push   WORD PTR ds:0x5bc0
   490c4:	9a 4d 00 50 01       	call   0x150:0x4d
   490c9:	83 c4 08             	add    sp,0x8
   490cc:	6a 14                	push   0x14
   490ce:	a1 c0 5b             	mov    ax,ds:0x5bc0
   490d1:	05 0a 00             	add    ax,0xa
   490d4:	50                   	push   ax
   490d5:	9a 48 00 50 01       	call   0x150:0x48
   490da:	83 c4 04             	add    sp,0x4
   490dd:	b8 88 01             	mov    ax,0x188
   490e0:	8e c0                	mov    es,ax
   490e2:	26 a0 e3 e5          	mov    al,es:0xe5e3
   490e6:	50                   	push   ax
   490e7:	9a 69 00 30 00       	call   0x30:0x69
   490ec:	59                   	pop    cx
   490ed:	c9                   	leave
   490ee:	cb                   	retf
   490ef:	55                   	push   bp
   490f0:	8b ec                	mov    bp,sp
   490f2:	83 ec 0e             	sub    sp,0xe
   490f5:	b8 88 01             	mov    ax,0x188
   490f8:	8e c0                	mov    es,ax
   490fa:	26 a1 9b e2          	mov    ax,es:0xe29b
   490fe:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   49101:	b8 88 01             	mov    ax,0x188
   49104:	8e c0                	mov    es,ax
   49106:	26 a1 9d e2          	mov    ax,es:0xe29d
   4910a:	89 46 f2             	mov    WORD PTR [bp-0xe],ax
   4910d:	c7 46 fc 3e 00       	mov    WORD PTR [bp-0x4],0x3e
   49112:	c7 06 c0 5b 00 00    	mov    WORD PTR ds:0x5bc0,0x0
   49118:	9a 04 02 30 00       	call   0x30:0x204
   4911d:	80 3e 0a 5c 00       	cmp    BYTE PTR ds:0x5c0a,0x0
   49122:	74 52                	je     0x49176
   49124:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
   49127:	33 c9                	xor    cx,cx
   49129:	33 d2                	xor    dx,dx
   4912b:	b8 3e 00             	mov    ax,0x3e
   4912e:	9a 42 12 00 00       	call   0x0:0x1242
   49133:	52                   	push   dx
   49134:	50                   	push   ax
   49135:	a1 be 5b             	mov    ax,ds:0x5bbe
   49138:	99                   	cwd
   49139:	50                   	push   ax
   4913a:	52                   	push   dx
   4913b:	33 d2                	xor    dx,dx
   4913d:	b8 40 01             	mov    ax,0x140
   49140:	59                   	pop    cx
   49141:	5b                   	pop    bx
   49142:	9a 42 12 00 00       	call   0x0:0x1242
   49147:	52                   	push   dx
   49148:	50                   	push   ax
   49149:	6a 00                	push   0x0
   4914b:	6a 00                	push   0x0
   4914d:	b8 88 01             	mov    ax,0x188
   49150:	8e c0                	mov    es,ax
   49152:	26 ff 36 a1 e2       	push   WORD PTR es:0xe2a1
   49157:	26 ff 36 9f e2       	push   WORD PTR es:0xe29f
   4915c:	b8 88 01             	mov    ax,0x188
   4915f:	8e c0                	mov    es,ax
   49161:	26 ff 36 59 e3       	push   WORD PTR es:0xe359
   49166:	26 ff 36 57 e3       	push   WORD PTR es:0xe357
   4916b:	9a c9 07 20 00       	call   0x20:0x7c9
   49170:	83 c4 14             	add    sp,0x14
   49173:	e9 da 00             	jmp    0x49250
   49176:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   49179:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   4917c:	b8 88 01             	mov    ax,0x188
   4917f:	8e c0                	mov    es,ax
   49181:	26 a1 4a e7          	mov    ax,es:0xe74a
   49185:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   49188:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4918b:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   4918e:	c7 46 f6 00 00       	mov    WORD PTR [bp-0xa],0x0
   49193:	e9 ab 00             	jmp    0x49241
   49196:	83 7e fa 00          	cmp    WORD PTR [bp-0x6],0x0
   4919a:	7d 05                	jge    0x491a1
   4919c:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   491a1:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   491a4:	99                   	cwd
   491a5:	50                   	push   ax
   491a6:	52                   	push   dx
   491a7:	33 d2                	xor    dx,dx
   491a9:	b8 50 00             	mov    ax,0x50
   491ac:	59                   	pop    cx
   491ad:	5b                   	pop    bx
   491ae:	9a 42 12 00 00       	call   0x0:0x1242
   491b3:	52                   	push   dx
   491b4:	50                   	push   ax
   491b5:	9a 52 00 50 01       	call   0x150:0x52
   491ba:	83 c4 04             	add    sp,0x4
   491bd:	b8 c8 00             	mov    ax,0xc8
   491c0:	2b 46 fa             	sub    ax,WORD PTR [bp-0x6]
   491c3:	50                   	push   ax
   491c4:	9a 57 00 50 01       	call   0x150:0x57
   491c9:	59                   	pop    cx
   491ca:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   491cd:	2b 46 fa             	sub    ax,WORD PTR [bp-0x6]
   491d0:	69 c0 40 01          	imul   ax,ax,0x140
   491d4:	6a 00                	push   0x0
   491d6:	50                   	push   ax
   491d7:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   491da:	69 c0 40 01          	imul   ax,ax,0x140
   491de:	6a 00                	push   0x0
   491e0:	50                   	push   ax
   491e1:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   491e4:	69 c0 40 01          	imul   ax,ax,0x140
   491e8:	6a 00                	push   0x0
   491ea:	50                   	push   ax
   491eb:	b8 88 01             	mov    ax,0x188
   491ee:	8e c0                	mov    es,ax
   491f0:	26 ff 36 a1 e2       	push   WORD PTR es:0xe2a1
   491f5:	26 ff 36 9f e2       	push   WORD PTR es:0xe29f
   491fa:	b8 88 01             	mov    ax,0x188
   491fd:	8e c0                	mov    es,ax
   491ff:	26 ff 36 59 e3       	push   WORD PTR es:0xe359
   49204:	26 ff 36 57 e3       	push   WORD PTR es:0xe357
   49209:	9a c9 07 20 00       	call   0x20:0x7c9
   4920e:	83 c4 14             	add    sp,0x14
   49211:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   49214:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   49217:	b8 88 01             	mov    ax,0x188
   4921a:	8e c0                	mov    es,ax
   4921c:	26 a1 4a e7          	mov    ax,es:0xe74a
   49220:	2b 46 fe             	sub    ax,WORD PTR [bp-0x2]
   49223:	bb 0a 00             	mov    bx,0xa
   49226:	33 d2                	xor    dx,dx
   49228:	f7 f3                	div    bx
   4922a:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   4922d:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   49230:	f7 6e f6             	imul   WORD PTR [bp-0xa]
   49233:	bb 14 00             	mov    bx,0x14
   49236:	99                   	cwd
   49237:	f7 fb                	idiv   bx
   49239:	8b 56 fc             	mov    dx,WORD PTR [bp-0x4]
   4923c:	2b d0                	sub    dx,ax
   4923e:	89 56 fa             	mov    WORD PTR [bp-0x6],dx
   49241:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   49245:	7e 03                	jle    0x4924a
   49247:	e9 4c ff             	jmp    0x49196
   4924a:	c7 06 be 5b 86 00    	mov    WORD PTR ds:0x5bbe,0x86
   49250:	68 c8 00             	push   0xc8
   49253:	9a 57 00 50 01       	call   0x150:0x57
   49258:	59                   	pop    cx
   49259:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   4925c:	48                   	dec    ax
   4925d:	50                   	push   ax
   4925e:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   49261:	48                   	dec    ax
   49262:	50                   	push   ax
   49263:	6a 00                	push   0x0
   49265:	6a 00                	push   0x0
   49267:	9a 4d 00 50 01       	call   0x150:0x4d
   4926c:	83 c4 08             	add    sp,0x8
   4926f:	1e                   	push   ds
   49270:	68 06 63             	push   0x6306
   49273:	68 41 08             	push   0x841
   49276:	68 88 01             	push   0x188
   49279:	68 57 e3             	push   0xe357
   4927c:	9a 2f 02 40 00       	call   0x40:0x22f
   49281:	83 c4 0a             	add    sp,0xa
   49284:	b8 88 01             	mov    ax,0x188
   49287:	8e c0                	mov    es,ax
   49289:	26 a0 e3 e5          	mov    al,es:0xe5e3
   4928d:	50                   	push   ax
   4928e:	9a 69 00 30 00       	call   0x30:0x69
   49293:	59                   	pop    cx
   49294:	c9                   	leave
   49295:	cb                   	retf
