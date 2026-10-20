
lale/IST.EXE:     file format binary


Disassembly of section .data:

00043670 <.data+0x43670>:
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
