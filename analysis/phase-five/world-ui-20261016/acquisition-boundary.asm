
analysis/phase-five/world-ui-20261016/acquisition-boundary.bin:     file format binary


Disassembly of section .data:

00046591 <.data>:
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
