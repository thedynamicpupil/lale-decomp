
analysis/phase-four/IST-resident-raw.bin:     file format binary


Disassembly of section .data:

0002264e <.data+0x1264e>:
   2264e:	a1 2c 01             	mov    ax,ds:0x12c
   22651:	1e                   	push   ds
   22652:	8e c0                	mov    es,ax
   22654:	26 8b 0e 0a 00       	mov    cx,WORD PTR es:0xa
   22659:	e3 03                	jcxz   0x2265e
   2265b:	e8 77 00             	call   0x226d5
   2265e:	26 83 3e 0c 00 00    	cmp    WORD PTR es:0xc,0x0
   22664:	74 03                	je     0x22669
   22666:	e8 de 02             	call   0x22947
   22669:	26 a1 10 00          	mov    ax,es:0x10
   2266d:	48                   	dec    ax
   2266e:	8e d8                	mov    ds,ax
   22670:	8c 06 0e 00          	mov    WORD PTR ds:0xe,es
   22674:	06                   	push   es
   22675:	b8 ff ff             	mov    ax,0xffff
   22678:	8b d8                	mov    bx,ax
   2267a:	2e 8e 1e 09 00       	mov    ds,WORD PTR cs:0x9
   2267f:	ff 1e 86 00          	call   DWORD PTR ds:0x86
   22683:	07                   	pop    es
   22684:	26 a1 1c 00          	mov    ax,es:0x1c
   22688:	0b c0                	or     ax,ax
   2268a:	75 c6                	jne    0x22652
   2268c:	1f                   	pop    ds
   2268d:	f8                   	clc
   2268e:	c3                   	ret
   2268f:	b1 04                	mov    cl,0x4
   22691:	d3 e8                	shr    ax,cl
   22693:	d3 ca                	ror    dx,cl
   22695:	81 e2 00 f0          	and    dx,0xf000
   22699:	0b c2                	or     ax,dx
   2269b:	c3                   	ret
   2269c:	50                   	push   ax
   2269d:	8b 1e 28 01          	mov    bx,WORD PTR ds:0x128
   226a1:	b8 00 42             	mov    ax,0x4200
   226a4:	cd 21                	int    0x21
   226a6:	58                   	pop    ax
   226a7:	1e                   	push   ds
   226a8:	8e d8                	mov    ds,ax
   226aa:	eb 07                	jmp    0x226b3
   226ac:	8c d8                	mov    ax,ds
   226ae:	05 ff 0f             	add    ax,0xfff
   226b1:	8e d8                	mov    ds,ax
   226b3:	b9 f0 ff             	mov    cx,0xfff0
   226b6:	0b ff                	or     di,di
   226b8:	75 02                	jne    0x226bc
   226ba:	8b ce                	mov    cx,si
   226bc:	33 d2                	xor    dx,dx
   226be:	b4 3f                	mov    ah,0x3f
   226c0:	cd 21                	int    0x21
   226c2:	72 0f                	jb     0x226d3
   226c4:	3b c1                	cmp    ax,cx
   226c6:	72 0b                	jb     0x226d3
   226c8:	2b f0                	sub    si,ax
   226ca:	83 df 00             	sbb    di,0x0
   226cd:	8b c6                	mov    ax,si
   226cf:	0b c7                	or     ax,di
   226d1:	75 d9                	jne    0x226ac
   226d3:	1f                   	pop    ds
   226d4:	c3                   	ret
   226d5:	1e                   	push   ds
   226d6:	06                   	push   es
   226d7:	26 a1 08 00          	mov    ax,es:0x8
   226db:	8b f0                	mov    si,ax
   226dd:	83 e6 0f             	and    si,0xf
   226e0:	d1 e8                	shr    ax,1
   226e2:	d1 e8                	shr    ax,1
   226e4:	d1 e8                	shr    ax,1
   226e6:	d1 e8                	shr    ax,1
   226e8:	26 8b 16 10 00       	mov    dx,WORD PTR es:0x10
   226ed:	03 c2                	add    ax,dx
   226ef:	8e d8                	mov    ds,ax
   226f1:	8e c2                	mov    es,dx
   226f3:	d1 e9                	shr    cx,1
   226f5:	fc                   	cld
   226f6:	ad                   	lods   ax,WORD PTR ds:[si]
   226f7:	8b d8                	mov    bx,ax
   226f9:	26 8b 3f             	mov    di,WORD PTR es:[bx]
   226fc:	1e                   	push   ds
   226fd:	b8 40 16             	mov    ax,0x1640
   22700:	8e d8                	mov    ds,ax
   22702:	8b c7                	mov    ax,di
   22704:	83 e7 f8             	and    di,0xfff8
   22707:	8b 15                	mov    dx,WORD PTR [di]
   22709:	26 89 17             	mov    WORD PTR es:[bx],dx
   2270c:	a9 01 00             	test   ax,0x1
   2270f:	74 03                	je     0x22714
   22711:	e8 06 00             	call   0x2271a
   22714:	1f                   	pop    ds
   22715:	e2 df                	loop   0x226f6
   22717:	07                   	pop    es
   22718:	1f                   	pop    ds
   22719:	c3                   	ret
   2271a:	51                   	push   cx
   2271b:	8e da                	mov    ds,dx
   2271d:	26 8a 67 ff          	mov    ah,BYTE PTR es:[bx-0x1]
   22721:	8a c4                	mov    al,ah
   22723:	25 07 f8             	and    ax,0xf807
   22726:	80 fc b8             	cmp    ah,0xb8
   22729:	75 4b                	jne    0x22776
   2272b:	8b c8                	mov    cx,ax
   2272d:	26 8a 67 02          	mov    ah,BYTE PTR es:[bx+0x2]
   22731:	8a c4                	mov    al,ah
   22733:	25 07 f8             	and    ax,0xf807
   22736:	80 fc 50             	cmp    ah,0x50
   22739:	75 3b                	jne    0x22776
   2273b:	3a c1                	cmp    al,cl
   2273d:	75 37                	jne    0x22776
   2273f:	8b d0                	mov    dx,ax
   22741:	26 8a 67 03          	mov    ah,BYTE PTR es:[bx+0x3]
   22745:	8a c4                	mov    al,ah
   22747:	25 07 f8             	and    ax,0xf807
   2274a:	3b c8                	cmp    cx,ax
   2274c:	75 28                	jne    0x22776
   2274e:	26 8a 67 06          	mov    ah,BYTE PTR es:[bx+0x6]
   22752:	8a c4                	mov    al,ah
   22754:	25 07 f8             	and    ax,0xf807
   22757:	3b c2                	cmp    ax,dx
   22759:	75 1b                	jne    0x22776
   2275b:	bf 20 00             	mov    di,0x20
   2275e:	8b 0e 0c 00          	mov    cx,WORD PTR ds:0xc
   22762:	26 8b 47 04          	mov    ax,WORD PTR es:[bx+0x4]
   22766:	3b 45 02             	cmp    ax,WORD PTR [di+0x2]
   22769:	74 07                	je     0x22772
   2276b:	83 c7 05             	add    di,0x5
   2276e:	e2 f6                	loop   0x22766
   22770:	eb 06                	jmp    0x22778
   22772:	26 89 7f 04          	mov    WORD PTR es:[bx+0x4],di
   22776:	59                   	pop    cx
   22777:	c3                   	ret
   22778:	59                   	pop    cx
   22779:	c3                   	ret
   2277a:	26 8b 36 08 00       	mov    si,WORD PTR es:0x8
   2277f:	33 ff                	xor    di,di
   22781:	26 03 36 0a 00       	add    si,WORD PTR es:0xa
   22786:	83 d7 00             	adc    di,0x0
   22789:	26 8b 16 04 00       	mov    dx,WORD PTR es:0x4
   2278e:	26 8b 0e 06 00       	mov    cx,WORD PTR es:0x6
   22793:	26 a1 10 00          	mov    ax,es:0x10
   22797:	e8 02 ff             	call   0x2269c
   2279a:	72 0b                	jb     0x227a7
   2279c:	26 8b 0e 0a 00       	mov    cx,WORD PTR es:0xa
   227a1:	e3 03                	jcxz   0x227a6
   227a3:	e8 2f ff             	call   0x226d5
   227a6:	f8                   	clc
   227a7:	c3                   	ret
   227a8:	55                   	push   bp
   227a9:	8b ec                	mov    bp,sp
   227ab:	f7 c5 01 00          	test   bp,0x1
   227af:	74 05                	je     0x227b6
   227b1:	ea 7b 02 00 00       	jmp    0x0:0x27b
   227b6:	50                   	push   ax
   227b7:	53                   	push   bx
   227b8:	51                   	push   cx
   227b9:	52                   	push   dx
   227ba:	56                   	push   si
   227bb:	57                   	push   di
   227bc:	1e                   	push   ds
   227bd:	06                   	push   es
   227be:	b8 26 16             	mov    ax,0x1626
   227c1:	8e d8                	mov    ds,ax
   227c3:	fb                   	sti
   227c4:	c4 5e 02             	les    bx,DWORD PTR [bp+0x2]
   227c7:	26 ff 37             	push   WORD PTR es:[bx]
   227ca:	83 6e 02 02          	sub    WORD PTR [bp+0x2],0x2
   227ce:	75 05                	jne    0x227d5
   227d0:	e8 85 00             	call   0x22858
   227d3:	eb 18                	jmp    0x227ed
   227d5:	83 c5 06             	add    bp,0x6
   227d8:	8b 46 00             	mov    ax,WORD PTR [bp+0x0]
   227db:	87 46 fa             	xchg   WORD PTR [bp-0x6],ax
   227de:	89 46 00             	mov    WORD PTR [bp+0x0],ax
   227e1:	e8 74 00             	call   0x22858
   227e4:	8b 46 00             	mov    ax,WORD PTR [bp+0x0]
   227e7:	87 46 fa             	xchg   WORD PTR [bp-0x6],ax
   227ea:	89 46 00             	mov    WORD PTR [bp+0x0],ax
   227ed:	5b                   	pop    bx
   227ee:	26 a0 1a 00          	mov    al,es:0x1a
   227f2:	24 08                	and    al,0x8
   227f4:	26 80 26 1a 00 f7    	and    BYTE PTR es:0x1a,0xf7
   227fa:	98                   	cbw
   227fb:	2e 8e 1e 09 00       	mov    ds,WORD PTR cs:0x9
   22800:	ff 1e 86 00          	call   DWORD PTR ds:0x86
   22804:	07                   	pop    es
   22805:	1f                   	pop    ds
   22806:	5f                   	pop    di
   22807:	5e                   	pop    si
   22808:	5a                   	pop    dx
   22809:	59                   	pop    cx
   2280a:	5b                   	pop    bx
   2280b:	58                   	pop    ax
   2280c:	5d                   	pop    bp
   2280d:	cf                   	iret
   2280e:	06                   	push   es
   2280f:	ff 06 2a 01          	inc    WORD PTR ds:0x12a
   22813:	e8 4b 02             	call   0x22a61
   22816:	eb 2e                	jmp    0x22846
   22818:	9d                   	popf
   22819:	52                   	push   dx
   2281a:	73 03                	jae    0x2281f
   2281c:	e8 cc 00             	call   0x228eb
   2281f:	8e 06 2c 01          	mov    es,WORD PTR ds:0x12c
   22823:	26 a1 1c 00          	mov    ax,es:0x1c
   22827:	a3 2c 01             	mov    ds:0x12c,ax
   2282a:	26 80 3e 1b 00 00    	cmp    BYTE PTR es:0x1b,0x0
   22830:	75 08                	jne    0x2283a
   22832:	e8 9e 00             	call   0x228d3
   22835:	e8 1d 02             	call   0x22a55
   22838:	eb 0b                	jmp    0x22845
   2283a:	26 fe 0e 1b 00       	dec    BYTE PTR es:0x1b
   2283f:	e8 56 01             	call   0x22998
   22842:	e8 a4 01             	call   0x229e9
   22845:	5a                   	pop    dx
   22846:	e8 f0 01             	call   0x22a39
   22849:	9c                   	pushf
   2284a:	3b d0                	cmp    dx,ax
   2284c:	77 ca                	ja     0x22818
   2284e:	9d                   	popf
   2284f:	07                   	pop    es
   22850:	a1 20 01             	mov    ax,ds:0x120
   22853:	26 a3 10 00          	mov    es:0x10,ax
   22857:	c3                   	ret
   22858:	ff 06 1c 01          	inc    WORD PTR ds:0x11c
   2285c:	26 83 3e 10 00 00    	cmp    WORD PTR es:0x10,0x0
   22862:	74 0f                	je     0x22873
   22864:	26 c6 06 1b 00 01    	mov    BYTE PTR es:0x1b,0x1
   2286a:	26 80 0e 1a 00 04    	or     BYTE PTR es:0x1a,0x4
   22870:	eb 1d                	jmp    0x2288f
   22872:	90                   	nop
   22873:	26 80 0e 1a 00 08    	or     BYTE PTR es:0x1a,0x8
   22879:	e8 92 ff             	call   0x2280e
   2287c:	1e                   	push   ds
   2287d:	48                   	dec    ax
   2287e:	8e d8                	mov    ds,ax
   22880:	8c 06 0e 00          	mov    WORD PTR ds:0xe,es
   22884:	1f                   	pop    ds
   22885:	26 ff 16 18 00       	call   WORD PTR es:0x18
   2288a:	72 42                	jb     0x228ce
   2288c:	e8 5a 01             	call   0x229e9
   2288f:	e8 94 00             	call   0x22926
   22892:	26 a0 1a 00          	mov    al,es:0x1a
   22896:	24 03                	and    al,0x3
   22898:	26 00 06 1b 00       	add    BYTE PTR es:0x1b,al
   2289d:	06                   	push   es
   2289e:	e8 98 01             	call   0x22a39
   228a1:	8e 06 2c 01          	mov    es,WORD PTR ds:0x12c
   228a5:	26 8b 0e 1c 00       	mov    cx,WORD PTR es:0x1c
   228aa:	e3 20                	jcxz   0x228cc
   228ac:	3b 06 18 01          	cmp    ax,WORD PTR ds:0x118
   228b0:	73 1a                	jae    0x228cc
   228b2:	51                   	push   cx
   228b3:	50                   	push   ax
   228b4:	26 80 3e 1b 00 00    	cmp    BYTE PTR es:0x1b,0x0
   228ba:	74 04                	je     0x228c0
   228bc:	33 c0                	xor    ax,ax
   228be:	eb 06                	jmp    0x228c6
   228c0:	e8 a2 00             	call   0x22965
   228c3:	e8 8f 01             	call   0x22a55
   228c6:	59                   	pop    cx
   228c7:	07                   	pop    es
   228c8:	03 c1                	add    ax,cx
   228ca:	eb d9                	jmp    0x228a5
   228cc:	07                   	pop    es
   228cd:	c3                   	ret
   228ce:	ea 7b 02 00 00       	jmp    0x0:0x27b
   228d3:	e8 8f 00             	call   0x22965
   228d6:	26 81 3e 18 00 ca 04 	cmp    WORD PTR es:0x18,0x4ca
   228dd:	75 04                	jne    0x228e3
   228df:	ff 16 80 00          	call   WORD PTR ds:0x80
   228e3:	26 c7 06 10 00 00 00 	mov    WORD PTR es:0x10,0x0
   228ea:	c3                   	ret
   228eb:	a1 2c 01             	mov    ax,ds:0x12c
   228ee:	33 c9                	xor    cx,cx
   228f0:	41                   	inc    cx
   228f1:	50                   	push   ax
   228f2:	8e c0                	mov    es,ax
   228f4:	26 a1 1c 00          	mov    ax,es:0x1c
   228f8:	0b c0                	or     ax,ax
   228fa:	75 f4                	jne    0x228f0
   228fc:	a3 2c 01             	mov    ds:0x12c,ax
   228ff:	a1 26 01             	mov    ax,ds:0x126
   22902:	a3 20 01             	mov    ds:0x120,ax
   22905:	07                   	pop    es
   22906:	51                   	push   cx
   22907:	a1 2c 01             	mov    ax,ds:0x12c
   2290a:	26 a3 1c 00          	mov    es:0x1c,ax
   2290e:	8c 06 2c 01          	mov    WORD PTR ds:0x12c,es
   22912:	e8 40 01             	call   0x22a55
   22915:	29 06 20 01          	sub    WORD PTR ds:0x120,ax
   22919:	e8 7c 00             	call   0x22998
   2291c:	59                   	pop    cx
   2291d:	e2 e6                	loop   0x22905
   2291f:	a1 24 01             	mov    ax,ds:0x124
   22922:	a3 20 01             	mov    ds:0x120,ax
   22925:	c3                   	ret
   22926:	26 83 3e 0c 00 00    	cmp    WORD PTR es:0xc,0x0
   2292c:	75 01                	jne    0x2292f
   2292e:	c3                   	ret
   2292f:	26 80 3e 20 00 ea    	cmp    BYTE PTR es:0x20,0xea
   22935:	74 2d                	je     0x22964
   22937:	26 8b 0e 02 00       	mov    cx,WORD PTR es:0x2
   2293c:	e3 09                	jcxz   0x22947
   2293e:	26 a1 10 00          	mov    ax,es:0x10
   22942:	8c c2                	mov    dx,es
   22944:	e8 c0 00             	call   0x22a07
   22947:	26 8b 1e 10 00       	mov    bx,WORD PTR es:0x10
   2294c:	26 8b 0e 0c 00       	mov    cx,WORD PTR es:0xc
   22951:	bf 20 00             	mov    di,0x20
   22954:	fc                   	cld
   22955:	26 8b 55 02          	mov    dx,WORD PTR es:[di+0x2]
   22959:	b0 ea                	mov    al,0xea
   2295b:	aa                   	stos   BYTE PTR es:[di],al
   2295c:	8b c2                	mov    ax,dx
   2295e:	ab                   	stos   WORD PTR es:[di],ax
   2295f:	8b c3                	mov    ax,bx
   22961:	ab                   	stos   WORD PTR es:[di],ax
   22962:	e2 f1                	loop   0x22955
   22964:	c3                   	ret
   22965:	26 80 3e 20 00 cd    	cmp    BYTE PTR es:0x20,0xcd
   2296b:	74 2a                	je     0x22997
   2296d:	8c c0                	mov    ax,es
   2296f:	26 8b 16 10 00       	mov    dx,WORD PTR es:0x10
   22974:	33 c9                	xor    cx,cx
   22976:	e8 8e 00             	call   0x22a07
   22979:	26 89 0e 02 00       	mov    WORD PTR es:0x2,cx
   2297e:	26 8b 0e 0c 00       	mov    cx,WORD PTR es:0xc
   22983:	bf 20 00             	mov    di,0x20
   22986:	fc                   	cld
   22987:	26 8b 55 01          	mov    dx,WORD PTR es:[di+0x1]
   2298b:	a1 10 01             	mov    ax,ds:0x110
   2298e:	ab                   	stos   WORD PTR es:[di],ax
   2298f:	8b c2                	mov    ax,dx
   22991:	ab                   	stos   WORD PTR es:[di],ax
   22992:	32 c0                	xor    al,al
   22994:	aa                   	stos   BYTE PTR es:[di],al
   22995:	e2 f0                	loop   0x22987
   22997:	c3                   	ret
   22998:	a1 20 01             	mov    ax,ds:0x120
   2299b:	26 8b 16 10 00       	mov    dx,WORD PTR es:0x10
   229a0:	26 a3 10 00          	mov    es:0x10,ax
   229a4:	26 8b 0e 08 00       	mov    cx,WORD PTR es:0x8
   229a9:	41                   	inc    cx
   229aa:	d1 e9                	shr    cx,1
   229ac:	33 f6                	xor    si,si
   229ae:	fc                   	cld
   229af:	3b c2                	cmp    ax,dx
   229b1:	72 06                	jb     0x229b9
   229b3:	8b f1                	mov    si,cx
   229b5:	4e                   	dec    si
   229b6:	d1 e6                	shl    si,1
   229b8:	fd                   	std
   229b9:	8b fe                	mov    di,si
   229bb:	1e                   	push   ds
   229bc:	06                   	push   es
   229bd:	8e da                	mov    ds,dx
   229bf:	8e c0                	mov    es,ax
   229c1:	f3 a5                	rep movs WORD PTR es:[di],WORD PTR ds:[si]
   229c3:	fc                   	cld
   229c4:	48                   	dec    ax
   229c5:	8e d8                	mov    ds,ax
   229c7:	07                   	pop    es
   229c8:	8c 06 0e 00          	mov    WORD PTR ds:0xe,es
   229cc:	40                   	inc    ax
   229cd:	1f                   	pop    ds
   229ce:	26 80 3e 20 00 cd    	cmp    BYTE PTR es:0x20,0xcd
   229d4:	74 12                	je     0x229e8
   229d6:	e8 3a 00             	call   0x22a13
   229d9:	26 8b 0e 0c 00       	mov    cx,WORD PTR es:0xc
   229de:	bf 23 00             	mov    di,0x23
   229e1:	fc                   	cld
   229e2:	ab                   	stos   WORD PTR es:[di],ax
   229e3:	83 c7 03             	add    di,0x3
   229e6:	e2 fa                	loop   0x229e2
   229e8:	c3                   	ret
   229e9:	e8 69 00             	call   0x22a55
   229ec:	01 06 20 01          	add    WORD PTR ds:0x120,ax
   229f0:	1e                   	push   ds
   229f1:	b8 37 16             	mov    ax,0x1637
   229f4:	8e d8                	mov    ds,ax
   229f6:	a1 1c 00             	mov    ax,ds:0x1c
   229f9:	0b c0                	or     ax,ax
   229fb:	75 f7                	jne    0x229f4
   229fd:	8c 06 1c 00          	mov    WORD PTR ds:0x1c,es
   22a01:	26 a3 1c 00          	mov    es:0x1c,ax
   22a05:	1f                   	pop    ds
   22a06:	c3                   	ret
   22a07:	e8 09 00             	call   0x22a13
   22a0a:	0b db                	or     bx,bx
   22a0c:	74 04                	je     0x22a12
   22a0e:	36 87 4f 02          	xchg   WORD PTR ss:[bx+0x2],cx
   22a12:	c3                   	ret
   22a13:	33 db                	xor    bx,bx
   22a15:	51                   	push   cx
   22a16:	55                   	push   bp
   22a17:	eb 04                	jmp    0x22a1d
   22a19:	d1 e1                	shl    cx,1
   22a1b:	8b e9                	mov    bp,cx
   22a1d:	8b 4e 00             	mov    cx,WORD PTR [bp+0x0]
   22a20:	d1 e9                	shr    cx,1
   22a22:	74 12                	je     0x22a36
   22a24:	72 f3                	jb     0x22a19
   22a26:	3b 56 04             	cmp    dx,WORD PTR [bp+0x4]
   22a29:	75 ee                	jne    0x22a19
   22a2b:	89 46 04             	mov    WORD PTR [bp+0x4],ax
   22a2e:	0b db                	or     bx,bx
   22a30:	75 e7                	jne    0x22a19
   22a32:	8b dd                	mov    bx,bp
   22a34:	eb e3                	jmp    0x22a19
   22a36:	5d                   	pop    bp
   22a37:	59                   	pop    cx
   22a38:	c3                   	ret
   22a39:	a1 2c 01             	mov    ax,ds:0x12c
   22a3c:	0b c0                	or     ax,ax
   22a3e:	74 0c                	je     0x22a4c
   22a40:	8e c0                	mov    es,ax
   22a42:	26 a1 10 00          	mov    ax,es:0x10
   22a46:	2b 06 20 01          	sub    ax,WORD PTR ds:0x120
   22a4a:	73 08                	jae    0x22a54
   22a4c:	a1 26 01             	mov    ax,ds:0x126
   22a4f:	2b 06 20 01          	sub    ax,WORD PTR ds:0x120
   22a53:	f9                   	stc
   22a54:	c3                   	ret
   22a55:	26 a1 08 00          	mov    ax,es:0x8
   22a59:	05 11 00             	add    ax,0x11
   22a5c:	b1 04                	mov    cl,0x4
   22a5e:	d3 e8                	shr    ax,cl
   22a60:	c3                   	ret
   22a61:	b1 04                	mov    cl,0x4
   22a63:	26 a1 08 00          	mov    ax,es:0x8
   22a67:	05 11 00             	add    ax,0x11
   22a6a:	d3 e8                	shr    ax,cl
   22a6c:	26 8b 16 0a 00       	mov    dx,WORD PTR es:0xa
   22a71:	83 c2 0f             	add    dx,0xf
   22a74:	d3 ea                	shr    dx,cl
   22a76:	03 d0                	add    dx,ax
   22a78:	c3                   	ret
   22a79:	1e                   	push   ds
   22a7a:	06                   	push   es
   22a7b:	2e 8e 1e 09 00       	mov    ds,WORD PTR cs:0x9
   22a80:	3b 06 24 01          	cmp    ax,WORD PTR ds:0x124
   22a84:	72 23                	jb     0x22aa9
   22a86:	3b 06 26 01          	cmp    ax,WORD PTR ds:0x126
   22a8a:	73 1d                	jae    0x22aa9
   22a8c:	48                   	dec    ax
   22a8d:	8e c0                	mov    es,ax
   22a8f:	26 8e 06 0e 00       	mov    es,WORD PTR es:0xe
   22a94:	40                   	inc    ax
   22a95:	8b 1e 10 01          	mov    bx,WORD PTR ds:0x110
   22a99:	26 3b 1e 00 00       	cmp    bx,WORD PTR es:0x0
   22a9e:	75 09                	jne    0x22aa9
   22aa0:	26 3b 06 10 00       	cmp    ax,WORD PTR es:0x10
   22aa5:	8c c0                	mov    ax,es
   22aa7:	74 03                	je     0x22aac
   22aa9:	33 c0                	xor    ax,ax
   22aab:	f9                   	stc
   22aac:	07                   	pop    es
   22aad:	1f                   	pop    ds
   22aae:	cb                   	retf
   22aaf:	55                   	push   bp
   22ab0:	8b ec                	mov    bp,sp
   22ab2:	83 ec 02             	sub    sp,0x2
   22ab5:	c6 46 fe 00          	mov    BYTE PTR [bp-0x2],0x0
   22ab9:	1e                   	push   ds
   22aba:	2e 8e 1e 09 00       	mov    ds,WORD PTR cs:0x9
   22abf:	56                   	push   si
   22ac0:	57                   	push   di
   22ac1:	8b dd                	mov    bx,bp
   22ac3:	a1 10 01             	mov    ax,ds:0x110
   22ac6:	8b 16 24 01          	mov    dx,WORD PTR ds:0x124
   22aca:	eb 04                	jmp    0x22ad0
   22acc:	d1 e6                	shl    si,1
   22ace:	8b de                	mov    bx,si
   22ad0:	3b d9                	cmp    bx,cx
   22ad2:	73 2a                	jae    0x22afe
   22ad4:	36 8b 37             	mov    si,WORD PTR ss:[bx]
   22ad7:	d1 ee                	shr    si,1
   22ad9:	74 23                	je     0x22afe
   22adb:	72 ef                	jb     0x22acc
   22add:	36 8b 7f 04          	mov    di,WORD PTR ss:[bx+0x4]
   22ae1:	3b fa                	cmp    di,dx
   22ae3:	73 e7                	jae    0x22acc
   22ae5:	8e c7                	mov    es,di
   22ae7:	36 8b 7f 02          	mov    di,WORD PTR ss:[bx+0x2]
   22aeb:	0b ff                	or     di,di
   22aed:	75 dd                	jne    0x22acc
   22aef:	26 39 05             	cmp    WORD PTR es:[di],ax
   22af2:	75 d8                	jne    0x22acc
   22af4:	c6 46 fe 01          	mov    BYTE PTR [bp-0x2],0x1
   22af8:	26 89 7d 02          	mov    WORD PTR es:[di+0x2],di
   22afc:	eb ce                	jmp    0x22acc
   22afe:	80 7e fe 01          	cmp    BYTE PTR [bp-0x2],0x1
   22b02:	74 07                	je     0x22b0b
   22b04:	eb 3a                	jmp    0x22b40
   22b06:	90                   	nop
   22b07:	d1 e6                	shl    si,1
   22b09:	8b de                	mov    bx,si
   22b0b:	36 8b 37             	mov    si,WORD PTR ss:[bx]
   22b0e:	d1 ee                	shr    si,1
   22b10:	74 2e                	je     0x22b40
   22b12:	72 f3                	jb     0x22b07
   22b14:	36 8b 7f 04          	mov    di,WORD PTR ss:[bx+0x4]
   22b18:	3b fa                	cmp    di,dx
   22b1a:	73 eb                	jae    0x22b07
   22b1c:	8e c7                	mov    es,di
   22b1e:	36 8b 7f 02          	mov    di,WORD PTR ss:[bx+0x2]
   22b22:	0b ff                	or     di,di
   22b24:	74 e1                	je     0x22b07
   22b26:	26 39 06 00 00       	cmp    WORD PTR es:0x0,ax
   22b2b:	75 da                	jne    0x22b07
   22b2d:	26 83 3e 02 00 00    	cmp    WORD PTR es:0x2,0x0
   22b33:	75 d2                	jne    0x22b07
   22b35:	26 87 3e 02 00       	xchg   WORD PTR es:0x2,di
   22b3a:	36 89 7f 02          	mov    WORD PTR ss:[bx+0x2],di
   22b3e:	eb c7                	jmp    0x22b07
   22b40:	5f                   	pop    di
   22b41:	5e                   	pop    si
   22b42:	1f                   	pop    ds
   22b43:	8b e5                	mov    sp,bp
   22b45:	5d                   	pop    bp
   22b46:	cb                   	retf
   22b47:	55                   	push   bp
   22b48:	8b ec                	mov    bp,sp
   22b4a:	1e                   	push   ds
   22b4b:	2e 8e 1e 09 00       	mov    ds,WORD PTR cs:0x9
   22b50:	8e 46 08             	mov    es,WORD PTR [bp+0x8]
   22b53:	8b 0e 10 01          	mov    cx,WORD PTR ds:0x110
   22b57:	26 3b 0e 00 00       	cmp    cx,WORD PTR es:0x0
   22b5c:	75 3e                	jne    0x22b9c
   22b5e:	26 83 3e 10 00 00    	cmp    WORD PTR es:0x10,0x0
   22b64:	74 08                	je     0x22b6e
   22b66:	26 80 3e 20 00 cd    	cmp    BYTE PTR es:0x20,0xcd
   22b6c:	75 27                	jne    0x22b95
   22b6e:	c7 46 08 00 00       	mov    WORD PTR [bp+0x8],0x0
   22b73:	56                   	push   si
   22b74:	57                   	push   di
   22b75:	e8 e0 fc             	call   0x22858
   22b78:	5f                   	pop    di
   22b79:	5e                   	pop    si
   22b7a:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   22b7d:	06                   	push   es
   22b7e:	26 a0 1a 00          	mov    al,es:0x1a
   22b82:	24 08                	and    al,0x8
   22b84:	26 80 26 1a 00 f7    	and    BYTE PTR es:0x1a,0xf7
   22b8a:	98                   	cbw
   22b8b:	2e 8e 1e 09 00       	mov    ds,WORD PTR cs:0x9
   22b90:	ff 1e 86 00          	call   DWORD PTR ds:0x86
   22b94:	07                   	pop    es
   22b95:	26 a1 10 00          	mov    ax,es:0x10
   22b99:	89 46 08             	mov    WORD PTR [bp+0x8],ax
   22b9c:	1f                   	pop    ds
   22b9d:	5d                   	pop    bp
   22b9e:	cb                   	retf
