
analysis/phase-five/navigation-renderer-20261016/allocator/allocator-original.bin:     file format binary


Disassembly of section .data:

00011593 <.data>:
   11593:	c8 06 00 00          	enter  0x6,0x0
   11597:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   1159c:	eb 15                	jmp    0x115b3
   1159e:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   115a1:	6b c0 12             	imul   ax,ax,0x12
   115a4:	c4 1e b4 e7          	les    bx,DWORD PTR ds:0xe7b4
   115a8:	03 d8                	add    bx,ax
   115aa:	26 83 3f 00          	cmp    WORD PTR es:[bx],0x0
   115ae:	74 0c                	je     0x115bc
   115b0:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   115b3:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   115b6:	3b 06 a8 e7          	cmp    ax,WORD PTR ds:0xe7a8
   115ba:	7c e2                	jl     0x1159e
   115bc:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   115bf:	3b 06 a8 e7          	cmp    ax,WORD PTR ds:0xe7a8
   115c3:	75 57                	jne    0x1161c
   115c5:	6a 12                	push   0x12
   115c7:	a1 a8 e7             	mov    ax,ds:0xe7a8
   115ca:	05 80 00             	add    ax,0x80
   115cd:	50                   	push   ax
   115ce:	9a 64 1f 00 00       	call   0x0:0x1f64
   115d3:	83 c4 04             	add    sp,0x4
   115d6:	89 56 fc             	mov    WORD PTR [bp-0x4],dx
   115d9:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   115dc:	a1 a8 e7             	mov    ax,ds:0xe7a8
   115df:	6b c0 12             	imul   ax,ax,0x12
   115e2:	50                   	push   ax
   115e3:	ff 36 b6 e7          	push   WORD PTR ds:0xe7b6
   115e7:	ff 36 b4 e7          	push   WORD PTR ds:0xe7b4
   115eb:	ff 76 fc             	push   WORD PTR [bp-0x4]
   115ee:	ff 76 fa             	push   WORD PTR [bp-0x6]
   115f1:	9a 01 40 00 00       	call   0x0:0x4001
   115f6:	83 c4 0a             	add    sp,0xa
   115f9:	81 06 a8 e7 80 00    	add    WORD PTR ds:0xe7a8,0x80
   115ff:	ff 36 b6 e7          	push   WORD PTR ds:0xe7b6
   11603:	ff 36 b4 e7          	push   WORD PTR ds:0xe7b4
   11607:	9a c2 24 00 00       	call   0x0:0x24c2
   1160c:	83 c4 04             	add    sp,0x4
   1160f:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   11612:	8b 56 fa             	mov    dx,WORD PTR [bp-0x6]
   11615:	a3 b6 e7             	mov    ds:0xe7b6,ax
   11618:	89 16 b4 e7          	mov    WORD PTR ds:0xe7b4,dx
   1161c:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   1161f:	6b c0 12             	imul   ax,ax,0x12
   11622:	c4 1e b4 e7          	les    bx,DWORD PTR ds:0xe7b4
   11626:	03 d8                	add    bx,ax
   11628:	26 c7 07 ff ff       	mov    WORD PTR es:[bx],0xffff
   1162d:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   11630:	6b c0 12             	imul   ax,ax,0x12
   11633:	8b 16 b6 e7          	mov    dx,WORD PTR ds:0xe7b6
   11637:	50                   	push   ax
   11638:	a1 b4 e7             	mov    ax,ds:0xe7b4
   1163b:	5b                   	pop    bx
   1163c:	03 c3                	add    ax,bx
   1163e:	c9                   	leave
   1163f:	cb                   	retf
   11640:	55                   	push   bp
   11641:	8b ec                	mov    bp,sp
   11643:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   11646:	26 c7 07 00 00       	mov    WORD PTR es:[bx],0x0
   1164b:	5d                   	pop    bp
   1164c:	cb                   	retf
   1164d:	c8 1a 00 00          	enter  0x1a,0x0
   11651:	1e                   	push   ds
   11652:	b8 e0 16             	mov    ax,0x16e0
   11655:	8e d8                	mov    ds,ax
   11657:	83 3e 00 87 00       	cmp    WORD PTR ds:0x8700,0x0
   1165c:	74 06                	je     0x11664
   1165e:	b8 ff ff             	mov    ax,0xffff
   11661:	e9 7c 02             	jmp    0x118e0
   11664:	c7 46 e6 00 3d       	mov    WORD PTR [bp-0x1a],0x3d00
   11669:	c7 46 ec 04 87       	mov    WORD PTR [bp-0x14],0x8704
   1166e:	8c 5e fc             	mov    WORD PTR [bp-0x4],ds
   11671:	16                   	push   ss
   11672:	8d 46 f6             	lea    ax,[bp-0xa]
   11675:	50                   	push   ax
   11676:	16                   	push   ss
   11677:	8d 46 e6             	lea    ax,[bp-0x1a]
   1167a:	50                   	push   ax
   1167b:	16                   	push   ss
   1167c:	8d 46 e6             	lea    ax,[bp-0x1a]
   1167f:	50                   	push   ax
   11680:	9a 18 2d 00 00       	call   0x0:0x2d18
   11685:	83 c4 0c             	add    sp,0xc
   11688:	83 7e f2 00          	cmp    WORD PTR [bp-0xe],0x0
   1168c:	75 44                	jne    0x116d2
   1168e:	8b 46 e6             	mov    ax,WORD PTR [bp-0x1a]
   11691:	89 46 e8             	mov    WORD PTR [bp-0x18],ax
   11694:	c7 46 e6 00 44       	mov    WORD PTR [bp-0x1a],0x4400
   11699:	16                   	push   ss
   1169a:	8d 46 e6             	lea    ax,[bp-0x1a]
   1169d:	50                   	push   ax
   1169e:	16                   	push   ss
   1169f:	8d 46 e6             	lea    ax,[bp-0x1a]
   116a2:	50                   	push   ax
   116a3:	9a ea 2c 00 00       	call   0x0:0x2cea
   116a8:	83 c4 08             	add    sp,0x8
   116ab:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   116ae:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   116b1:	c7 46 e6 00 3e       	mov    WORD PTR [bp-0x1a],0x3e00
   116b6:	16                   	push   ss
   116b7:	8d 46 e6             	lea    ax,[bp-0x1a]
   116ba:	50                   	push   ax
   116bb:	16                   	push   ss
   116bc:	8d 46 e6             	lea    ax,[bp-0x1a]
   116bf:	50                   	push   ax
   116c0:	9a ea 2c 00 00       	call   0x0:0x2cea
   116c5:	83 c4 08             	add    sp,0x8
   116c8:	83 7e fe 01          	cmp    WORD PTR [bp-0x2],0x1
   116cc:	75 06                	jne    0x116d4
   116ce:	eb 8e                	jmp    0x1165e
   116d0:	eb 02                	jmp    0x116d4
   116d2:	eb 8a                	jmp    0x1165e
   116d4:	9a 0e 00 34 11       	call   0x1134:0xe
   116d9:	0b c0                	or     ax,ax
   116db:	74 03                	je     0x116e0
   116dd:	e9 7e ff             	jmp    0x1165e
   116e0:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   116e3:	99                   	cwd
   116e4:	b1 0a                	mov    cl,0xa
   116e6:	9a 8d 13 00 00       	call   0x0:0x138d
   116eb:	89 16 ee 86          	mov    WORD PTR ds:0x86ee,dx
   116ef:	a3 ec 86             	mov    ds:0x86ec,ax
   116f2:	9a c8 00 34 11       	call   0x1134:0xc8
   116f7:	c1 e0 04             	shl    ax,0x4
   116fa:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   116fd:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   11700:	3b 46 08             	cmp    ax,WORD PTR [bp+0x8]
   11703:	73 02                	jae    0x11707
   11705:	eb 38                	jmp    0x1173f
   11707:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   1170a:	3b 46 06             	cmp    ax,WORD PTR [bp+0x6]
   1170d:	76 1d                	jbe    0x1172c
   1170f:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   11712:	05 0f 00             	add    ax,0xf
   11715:	bb 10 00             	mov    bx,0x10
   11718:	99                   	cwd
   11719:	f7 fb                	idiv   bx
   1171b:	50                   	push   ax
   1171c:	9a 49 00 34 11       	call   0x1134:0x49
   11721:	a3 aa e7             	mov    ds:0xe7aa,ax
   11724:	0b c0                	or     ax,ax
   11726:	7d 30                	jge    0x11758
   11728:	eb 15                	jmp    0x1173f
   1172a:	eb 2c                	jmp    0x11758
   1172c:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   1172f:	c1 e8 04             	shr    ax,0x4
   11732:	50                   	push   ax
   11733:	9a 49 00 34 11       	call   0x1134:0x49
   11738:	a3 aa e7             	mov    ds:0xe7aa,ax
   1173b:	0b c0                	or     ax,ax
   1173d:	7d 06                	jge    0x11745
   1173f:	b8 fe ff             	mov    ax,0xfffe
   11742:	e9 9b 01             	jmp    0x118e0
   11745:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   11748:	33 d2                	xor    dx,dx
   1174a:	b1 0a                	mov    cl,0xa
   1174c:	9a 8d 13 00 00       	call   0x0:0x138d
   11751:	89 16 ee 86          	mov    WORD PTR ds:0x86ee,dx
   11755:	a3 ec 86             	mov    ds:0x86ec,ax
   11758:	6a 12                	push   0x12
   1175a:	b8 80 00             	mov    ax,0x80
   1175d:	a3 a8 e7             	mov    ds:0xe7a8,ax
   11760:	50                   	push   ax
   11761:	9a 64 1f 00 00       	call   0x0:0x1f64
   11766:	83 c4 04             	add    sp,0x4
   11769:	89 16 b6 e7          	mov    WORD PTR ds:0xe7b6,dx
   1176d:	a3 b4 e7             	mov    ds:0xe7b4,ax
   11770:	0e                   	push   cs
   11771:	e8 1f fe             	call   0x11593
   11774:	89 16 f2 86          	mov    WORD PTR ds:0x86f2,dx
   11778:	a3 f0 86             	mov    ds:0x86f0,ax
   1177b:	0e                   	push   cs
   1177c:	e8 14 fe             	call   0x11593
   1177f:	89 16 f6 86          	mov    WORD PTR ds:0x86f6,dx
   11783:	a3 f4 86             	mov    ds:0x86f4,ax
   11786:	c4 1e f0 86          	les    bx,DWORD PTR ds:0x86f0
   1178a:	26 c7 07 ff ff       	mov    WORD PTR es:[bx],0xffff
   1178f:	c4 1e f0 86          	les    bx,DWORD PTR ds:0x86f0
   11793:	33 c0                	xor    ax,ax
   11795:	33 d2                	xor    dx,dx
   11797:	26 89 47 08          	mov    WORD PTR es:[bx+0x8],ax
   1179b:	26 89 57 06          	mov    WORD PTR es:[bx+0x6],dx
   1179f:	c4 1e f0 86          	les    bx,DWORD PTR ds:0x86f0
   117a3:	26 89 47 04          	mov    WORD PTR es:[bx+0x4],ax
   117a7:	26 89 57 02          	mov    WORD PTR es:[bx+0x2],dx
   117ab:	c4 1e f0 86          	les    bx,DWORD PTR ds:0x86f0
   117af:	a1 f6 86             	mov    ax,ds:0x86f6
   117b2:	8b 16 f4 86          	mov    dx,WORD PTR ds:0x86f4
   117b6:	26 89 47 0c          	mov    WORD PTR es:[bx+0xc],ax
   117ba:	26 89 57 0a          	mov    WORD PTR es:[bx+0xa],dx
   117be:	c4 1e f0 86          	les    bx,DWORD PTR ds:0x86f0
   117c2:	26 c7 47 10 00 00    	mov    WORD PTR es:[bx+0x10],0x0
   117c8:	26 c7 47 0e 00 00    	mov    WORD PTR es:[bx+0xe],0x0
   117ce:	6a 12                	push   0x12
   117d0:	ff 36 f2 86          	push   WORD PTR ds:0x86f2
   117d4:	ff 36 f0 86          	push   WORD PTR ds:0x86f0
   117d8:	ff 36 f6 86          	push   WORD PTR ds:0x86f6
   117dc:	ff 36 f4 86          	push   WORD PTR ds:0x86f4
   117e0:	9a 01 40 00 00       	call   0x0:0x4001
   117e5:	83 c4 0a             	add    sp,0xa
   117e8:	c4 1e f4 86          	les    bx,DWORD PTR ds:0x86f4
   117ec:	26 c7 47 0c 00 00    	mov    WORD PTR es:[bx+0xc],0x0
   117f2:	26 c7 47 0a 00 00    	mov    WORD PTR es:[bx+0xa],0x0
   117f8:	c4 1e f4 86          	les    bx,DWORD PTR ds:0x86f4
   117fc:	a1 f2 86             	mov    ax,ds:0x86f2
   117ff:	8b 16 f0 86          	mov    dx,WORD PTR ds:0x86f0
   11803:	26 89 47 10          	mov    WORD PTR es:[bx+0x10],ax
   11807:	26 89 57 0e          	mov    WORD PTR es:[bx+0xe],dx
   1180b:	c4 1e f4 86          	les    bx,DWORD PTR ds:0x86f4
   1180f:	a1 ee 86             	mov    ax,ds:0x86ee
   11812:	8b 16 ec 86          	mov    dx,WORD PTR ds:0x86ec
   11816:	26 89 47 04          	mov    WORD PTR es:[bx+0x4],ax
   1181a:	26 89 57 02          	mov    WORD PTR es:[bx+0x2],dx
   1181e:	c7 06 00 87 01 00    	mov    WORD PTR ds:0x8700,0x1
   11824:	9a f6 00 34 11       	call   0x1134:0xf6
   11829:	a3 a6 e7             	mov    ds:0xe7a6,ax
   1182c:	c7 06 a4 e7 00 00    	mov    WORD PTR ds:0xe7a4,0x0
   11832:	68 54 11             	push   0x1154
   11835:	68 a5 03             	push   0x3a5
   11838:	9a c5 10 00 00       	call   0x0:0x10c5
   1183d:	83 c4 04             	add    sp,0x4
   11840:	1e                   	push   ds
   11841:	68 0d 87             	push   0x870d
   11844:	68 54 11             	push   0x1154
   11847:	68 10 04             	push   0x410
   1184a:	9a 1b 01 f2 0d       	call   0xdf2:0x11b
   1184f:	0b c0                	or     ax,ax
   11851:	74 03                	je     0x11856
   11853:	e9 85 00             	jmp    0x118db
   11856:	1e                   	push   ds
   11857:	68 16 87             	push   0x8716
   1185a:	68 54 11             	push   0x1154
   1185d:	68 1b 06             	push   0x61b
   11860:	9a 1b 01 f2 0d       	call   0xdf2:0x11b
   11865:	0b c0                	or     ax,ax
   11867:	75 72                	jne    0x118db
   11869:	1e                   	push   ds
   1186a:	68 1e 87             	push   0x871e
   1186d:	68 54 11             	push   0x1154
   11870:	68 63 09             	push   0x963
   11873:	9a 1b 01 f2 0d       	call   0xdf2:0x11b
   11878:	0b c0                	or     ax,ax
   1187a:	75 5f                	jne    0x118db
   1187c:	1e                   	push   ds
   1187d:	68 28 87             	push   0x8728
   11880:	68 54 11             	push   0x1154
   11883:	68 0d 0a             	push   0xa0d
   11886:	9a 1b 01 f2 0d       	call   0xdf2:0x11b
   1188b:	0b c0                	or     ax,ax
   1188d:	75 4c                	jne    0x118db
   1188f:	1e                   	push   ds
   11890:	68 34 87             	push   0x8734
   11893:	68 54 11             	push   0x1154
   11896:	68 b7 0a             	push   0xab7
   11899:	9a 1b 01 f2 0d       	call   0xdf2:0x11b
   1189e:	0b c0                	or     ax,ax
   118a0:	75 39                	jne    0x118db
   118a2:	1e                   	push   ds
   118a3:	68 3c 87             	push   0x873c
   118a6:	68 54 11             	push   0x1154
   118a9:	68 88 06             	push   0x688
   118ac:	9a 1b 01 f2 0d       	call   0xdf2:0x11b
   118b1:	0b c0                	or     ax,ax
   118b3:	75 26                	jne    0x118db
   118b5:	1e                   	push   ds
   118b6:	68 44 87             	push   0x8744
   118b9:	68 54 11             	push   0x1154
   118bc:	68 f4 0b             	push   0xbf4
   118bf:	9a 1b 01 f2 0d       	call   0xdf2:0x11b
   118c4:	0b c0                	or     ax,ax
   118c6:	75 13                	jne    0x118db
   118c8:	1e                   	push   ds
   118c9:	68 54 87             	push   0x8754
   118cc:	68 54 11             	push   0x1154
   118cf:	68 ab 0b             	push   0xbab
   118d2:	9a 1b 01 f2 0d       	call   0xdf2:0x11b
   118d7:	0b c0                	or     ax,ax
   118d9:	74 03                	je     0x118de
   118db:	e9 80 fd             	jmp    0x1165e
   118de:	33 c0                	xor    ax,ax
   118e0:	1f                   	pop    ds
   118e1:	c9                   	leave
   118e2:	ca 04 00             	retf   0x4
   118e5:	83 3e 00 87 01       	cmp    WORD PTR ds:0x8700,0x1
   118ea:	75 63                	jne    0x1194f
   118ec:	9a dc 00 34 11       	call   0x1134:0xdc
   118f1:	c7 06 00 87 00 00    	mov    WORD PTR ds:0x8700,0x0
   118f7:	ff 36 b6 e7          	push   WORD PTR ds:0xe7b6
   118fb:	ff 36 b4 e7          	push   WORD PTR ds:0xe7b4
   118ff:	9a c2 24 00 00       	call   0x0:0x24c2
   11904:	83 c4 04             	add    sp,0x4
   11907:	1e                   	push   ds
   11908:	68 0d 87             	push   0x870d
   1190b:	9a 4a 04 f2 0d       	call   0xdf2:0x44a
   11910:	1e                   	push   ds
   11911:	68 16 87             	push   0x8716
   11914:	9a 4a 04 f2 0d       	call   0xdf2:0x44a
   11919:	1e                   	push   ds
   1191a:	68 1e 87             	push   0x871e
   1191d:	9a 4a 04 f2 0d       	call   0xdf2:0x44a
   11922:	1e                   	push   ds
   11923:	68 28 87             	push   0x8728
   11926:	9a 4a 04 f2 0d       	call   0xdf2:0x44a
   1192b:	1e                   	push   ds
   1192c:	68 34 87             	push   0x8734
   1192f:	9a 4a 04 f2 0d       	call   0xdf2:0x44a
   11934:	1e                   	push   ds
   11935:	68 3c 87             	push   0x873c
   11938:	9a 4a 04 f2 0d       	call   0xdf2:0x44a
   1193d:	1e                   	push   ds
   1193e:	68 0d 87             	push   0x870d
   11941:	9a 4a 04 f2 0d       	call   0xdf2:0x44a
   11946:	1e                   	push   ds
   11947:	68 44 87             	push   0x8744
   1194a:	9a 4a 04 f2 0d       	call   0xdf2:0x44a
   1194f:	cb                   	retf
   11950:	c8 16 00 00          	enter  0x16,0x0
   11954:	1e                   	push   ds
   11955:	b8 e0 16             	mov    ax,0x16e0
   11958:	8e d8                	mov    ds,ax
   1195a:	a1 f2 86             	mov    ax,ds:0x86f2
   1195d:	8b 16 f0 86          	mov    dx,WORD PTR ds:0x86f0
   11961:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   11964:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
   11967:	a1 f2 86             	mov    ax,ds:0x86f2
   1196a:	8b 16 f0 86          	mov    dx,WORD PTR ds:0x86f0
   1196e:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   11971:	89 56 f4             	mov    WORD PTR [bp-0xc],dx
   11974:	c7 46 f2 00 02       	mov    WORD PTR [bp-0xe],0x200
   11979:	c7 46 f0 00 00       	mov    WORD PTR [bp-0x10],0x0
   1197e:	c7 46 ea 00 00       	mov    WORD PTR [bp-0x16],0x0
   11983:	83 3e 00 87 01       	cmp    WORD PTR ds:0x8700,0x1
   11988:	74 06                	je     0x11990
   1198a:	b8 ff ff             	mov    ax,0xffff
   1198d:	e9 c6 01             	jmp    0x11b56
   11990:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   11993:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   11996:	83 c2 0f             	add    dx,0xf
   11999:	15 00 00             	adc    ax,0x0
   1199c:	83 e2 f0             	and    dx,0xfff0
   1199f:	25 ff ff             	and    ax,0xffff
   119a2:	89 46 08             	mov    WORD PTR [bp+0x8],ax
   119a5:	89 56 06             	mov    WORD PTR [bp+0x6],dx
   119a8:	83 7e 08 00          	cmp    WORD PTR [bp+0x8],0x0
   119ac:	7d 03                	jge    0x119b1
   119ae:	e9 bf 00             	jmp    0x11a70
   119b1:	75 0a                	jne    0x119bd
   119b3:	81 7e 06 00 c0       	cmp    WORD PTR [bp+0x6],0xc000
   119b8:	73 03                	jae    0x119bd
   119ba:	e9 b3 00             	jmp    0x11a70
   119bd:	c7 46 ea 01 00       	mov    WORD PTR [bp-0x16],0x1
   119c2:	e9 ab 00             	jmp    0x11a70
   119c5:	e9 a8 00             	jmp    0x11a70
   119c8:	83 7e ea 00          	cmp    WORD PTR [bp-0x16],0x0
   119cc:	74 26                	je     0x119f4
   119ce:	c4 5e f8             	les    bx,DWORD PTR [bp-0x8]
   119d1:	26 8b 47 04          	mov    ax,WORD PTR es:[bx+0x4]
   119d5:	26 8b 57 02          	mov    dx,WORD PTR es:[bx+0x2]
   119d9:	c4 5e f8             	les    bx,DWORD PTR [bp-0x8]
   119dc:	26 03 57 06          	add    dx,WORD PTR es:[bx+0x6]
   119e0:	26 13 47 08          	adc    ax,WORD PTR es:[bx+0x8]
   119e4:	81 c2 ff 3f          	add    dx,0x3fff
   119e8:	15 00 00             	adc    ax,0x0
   119eb:	81 e2 00 c0          	and    dx,0xc000
   119ef:	25 ff ff             	and    ax,0xffff
   119f2:	eb 16                	jmp    0x11a0a
   119f4:	c4 5e f8             	les    bx,DWORD PTR [bp-0x8]
   119f7:	26 8b 47 04          	mov    ax,WORD PTR es:[bx+0x4]
   119fb:	26 8b 57 02          	mov    dx,WORD PTR es:[bx+0x2]
   119ff:	c4 5e f8             	les    bx,DWORD PTR [bp-0x8]
   11a02:	26 03 57 06          	add    dx,WORD PTR es:[bx+0x6]
   11a06:	26 13 47 08          	adc    ax,WORD PTR es:[bx+0x8]
   11a0a:	c4 5e f8             	les    bx,DWORD PTR [bp-0x8]
   11a0d:	26 c4 5f 0a          	les    bx,DWORD PTR es:[bx+0xa]
   11a11:	26 8b 4f 04          	mov    cx,WORD PTR es:[bx+0x4]
   11a15:	26 8b 5f 02          	mov    bx,WORD PTR es:[bx+0x2]
   11a19:	2b da                	sub    bx,dx
   11a1b:	1b c8                	sbb    cx,ax
   11a1d:	89 4e ee             	mov    WORD PTR [bp-0x12],cx
   11a20:	89 5e ec             	mov    WORD PTR [bp-0x14],bx
   11a23:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
   11a26:	8b 56 ec             	mov    dx,WORD PTR [bp-0x14]
   11a29:	3b 46 08             	cmp    ax,WORD PTR [bp+0x8]
   11a2c:	7c 31                	jl     0x11a5f
   11a2e:	75 05                	jne    0x11a35
   11a30:	3b 56 06             	cmp    dx,WORD PTR [bp+0x6]
   11a33:	72 2a                	jb     0x11a5f
   11a35:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
   11a38:	8b 56 ec             	mov    dx,WORD PTR [bp-0x14]
   11a3b:	3b 46 f2             	cmp    ax,WORD PTR [bp-0xe]
   11a3e:	7f 1f                	jg     0x11a5f
   11a40:	7c 05                	jl     0x11a47
   11a42:	3b 56 f0             	cmp    dx,WORD PTR [bp-0x10]
   11a45:	73 18                	jae    0x11a5f
   11a47:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
   11a4a:	8b 56 ec             	mov    dx,WORD PTR [bp-0x14]
   11a4d:	89 46 f2             	mov    WORD PTR [bp-0xe],ax
   11a50:	89 56 f0             	mov    WORD PTR [bp-0x10],dx
   11a53:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   11a56:	8b 56 f8             	mov    dx,WORD PTR [bp-0x8]
   11a59:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   11a5c:	89 56 f4             	mov    WORD PTR [bp-0xc],dx
   11a5f:	c4 5e f8             	les    bx,DWORD PTR [bp-0x8]
   11a62:	26 8b 47 0c          	mov    ax,WORD PTR es:[bx+0xc]
   11a66:	26 8b 57 0a          	mov    dx,WORD PTR es:[bx+0xa]
   11a6a:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   11a6d:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
   11a70:	c4 5e f8             	les    bx,DWORD PTR [bp-0x8]
   11a73:	26 8b 47 0a          	mov    ax,WORD PTR es:[bx+0xa]
   11a77:	26 0b 47 0c          	or     ax,WORD PTR es:[bx+0xc]
   11a7b:	74 03                	je     0x11a80
   11a7d:	e9 48 ff             	jmp    0x119c8
   11a80:	81 7e f2 00 02       	cmp    WORD PTR [bp-0xe],0x200
   11a85:	75 0c                	jne    0x11a93
   11a87:	83 7e f0 00          	cmp    WORD PTR [bp-0x10],0x0
   11a8b:	75 06                	jne    0x11a93
   11a8d:	b8 fe ff             	mov    ax,0xfffe
   11a90:	e9 c3 00             	jmp    0x11b56
   11a93:	0e                   	push   cs
   11a94:	e8 fc fa             	call   0x11593
   11a97:	89 56 fe             	mov    WORD PTR [bp-0x2],dx
   11a9a:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   11a9d:	c4 5e f4             	les    bx,DWORD PTR [bp-0xc]
   11aa0:	26 8b 47 0c          	mov    ax,WORD PTR es:[bx+0xc]
   11aa4:	26 8b 57 0a          	mov    dx,WORD PTR es:[bx+0xa]
   11aa8:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   11aab:	26 89 47 0c          	mov    WORD PTR es:[bx+0xc],ax
   11aaf:	26 89 57 0a          	mov    WORD PTR es:[bx+0xa],dx
   11ab3:	c4 5e f4             	les    bx,DWORD PTR [bp-0xc]
   11ab6:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   11ab9:	8b 56 fc             	mov    dx,WORD PTR [bp-0x4]
   11abc:	26 89 47 0c          	mov    WORD PTR es:[bx+0xc],ax
   11ac0:	26 89 57 0a          	mov    WORD PTR es:[bx+0xa],dx
   11ac4:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   11ac7:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   11aca:	8b 56 f4             	mov    dx,WORD PTR [bp-0xc]
   11acd:	26 89 47 10          	mov    WORD PTR es:[bx+0x10],ax
   11ad1:	26 89 57 0e          	mov    WORD PTR es:[bx+0xe],dx
   11ad5:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   11ad8:	26 c4 5f 0a          	les    bx,DWORD PTR es:[bx+0xa]
   11adc:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   11adf:	8b 56 fc             	mov    dx,WORD PTR [bp-0x4]
   11ae2:	26 89 47 10          	mov    WORD PTR es:[bx+0x10],ax
   11ae6:	26 89 57 0e          	mov    WORD PTR es:[bx+0xe],dx
   11aea:	c4 5e f4             	les    bx,DWORD PTR [bp-0xc]
   11aed:	26 8b 47 04          	mov    ax,WORD PTR es:[bx+0x4]
   11af1:	26 8b 57 02          	mov    dx,WORD PTR es:[bx+0x2]
   11af5:	c4 5e f4             	les    bx,DWORD PTR [bp-0xc]
   11af8:	26 03 57 06          	add    dx,WORD PTR es:[bx+0x6]
   11afc:	26 13 47 08          	adc    ax,WORD PTR es:[bx+0x8]
   11b00:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   11b03:	26 89 47 04          	mov    WORD PTR es:[bx+0x4],ax
   11b07:	26 89 57 02          	mov    WORD PTR es:[bx+0x2],dx
   11b0b:	83 7e ea 00          	cmp    WORD PTR [bp-0x16],0x0
   11b0f:	74 24                	je     0x11b35
   11b11:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   11b14:	26 8b 47 04          	mov    ax,WORD PTR es:[bx+0x4]
   11b18:	26 8b 57 02          	mov    dx,WORD PTR es:[bx+0x2]
   11b1c:	81 c2 ff 3f          	add    dx,0x3fff
   11b20:	15 00 00             	adc    ax,0x0
   11b23:	81 e2 00 c0          	and    dx,0xc000
   11b27:	25 ff ff             	and    ax,0xffff
   11b2a:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   11b2d:	26 89 47 04          	mov    WORD PTR es:[bx+0x4],ax
   11b31:	26 89 57 02          	mov    WORD PTR es:[bx+0x2],dx
   11b35:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   11b38:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   11b3b:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   11b3e:	26 89 47 08          	mov    WORD PTR es:[bx+0x8],ax
   11b42:	26 89 57 06          	mov    WORD PTR es:[bx+0x6],dx
   11b46:	ff 06 02 87          	inc    WORD PTR ds:0x8702
   11b4a:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   11b4d:	a1 02 87             	mov    ax,ds:0x8702
   11b50:	26 89 07             	mov    WORD PTR es:[bx],ax
   11b53:	a1 02 87             	mov    ax,ds:0x8702
   11b56:	1f                   	pop    ds
   11b57:	c9                   	leave
   11b58:	ca 04 00             	retf   0x4
   11b5b:	c8 04 00 00          	enter  0x4,0x0
   11b5f:	1e                   	push   ds
   11b60:	b8 e0 16             	mov    ax,0x16e0
   11b63:	8e d8                	mov    ds,ax
   11b65:	83 3e 00 87 01       	cmp    WORD PTR ds:0x8700,0x1
   11b6a:	75 57                	jne    0x11bc3
   11b6c:	ff 76 06             	push   WORD PTR [bp+0x6]
   11b6f:	0e                   	push   cs
   11b70:	e8 ce f9             	call   0x11541
   11b73:	59                   	pop    cx
   11b74:	89 56 fe             	mov    WORD PTR [bp-0x2],dx
   11b77:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   11b7a:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   11b7d:	0b 46 fe             	or     ax,WORD PTR [bp-0x2]
   11b80:	74 41                	je     0x11bc3
   11b82:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   11b85:	26 8b 47 0c          	mov    ax,WORD PTR es:[bx+0xc]
   11b89:	26 8b 57 0a          	mov    dx,WORD PTR es:[bx+0xa]
   11b8d:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   11b90:	26 c4 5f 0e          	les    bx,DWORD PTR es:[bx+0xe]
   11b94:	26 89 47 0c          	mov    WORD PTR es:[bx+0xc],ax
   11b98:	26 89 57 0a          	mov    WORD PTR es:[bx+0xa],dx
   11b9c:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   11b9f:	26 8b 47 10          	mov    ax,WORD PTR es:[bx+0x10]
   11ba3:	26 8b 57 0e          	mov    dx,WORD PTR es:[bx+0xe]
   11ba7:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   11baa:	26 c4 5f 0a          	les    bx,DWORD PTR es:[bx+0xa]
   11bae:	26 89 47 10          	mov    WORD PTR es:[bx+0x10],ax
   11bb2:	26 89 57 0e          	mov    WORD PTR es:[bx+0xe],dx
   11bb6:	ff 76 fe             	push   WORD PTR [bp-0x2]
   11bb9:	ff 76 fc             	push   WORD PTR [bp-0x4]
   11bbc:	0e                   	push   cs
   11bbd:	e8 80 fa             	call   0x11640
   11bc0:	83 c4 04             	add    sp,0x4
   11bc3:	1f                   	pop    ds
   11bc4:	c9                   	leave
   11bc5:	ca 02 00             	retf   0x2
   11bc8:	c8 10 00 00          	enter  0x10,0x0
   11bcc:	56                   	push   si
   11bcd:	1e                   	push   ds
   11bce:	b8 e0 16             	mov    ax,0x16e0
   11bd1:	8e d8                	mov    ds,ax
   11bd3:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   11bd8:	c7 46 f8 00 00       	mov    WORD PTR [bp-0x8],0x0
   11bdd:	c7 46 f4 00 00       	mov    WORD PTR [bp-0xc],0x0
   11be2:	83 3e 00 87 01       	cmp    WORD PTR ds:0x8700,0x1
   11be7:	74 07                	je     0x11bf0
   11be9:	33 d2                	xor    dx,dx
   11beb:	33 c0                	xor    ax,ax
   11bed:	e9 3e 01             	jmp    0x11d2e
   11bf0:	ff 76 0c             	push   WORD PTR [bp+0xc]
   11bf3:	0e                   	push   cs
   11bf4:	e8 4a f9             	call   0x11541
   11bf7:	59                   	pop    cx
   11bf8:	89 56 fe             	mov    WORD PTR [bp-0x2],dx
   11bfb:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   11bfe:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   11c01:	0b 46 fe             	or     ax,WORD PTR [bp-0x2]
   11c04:	75 02                	jne    0x11c08
   11c06:	eb e1                	jmp    0x11be9
   11c08:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   11c0b:	26 8b 47 08          	mov    ax,WORD PTR es:[bx+0x8]
   11c0f:	26 8b 57 06          	mov    dx,WORD PTR es:[bx+0x6]
   11c13:	3b 46 0a             	cmp    ax,WORD PTR [bp+0xa]
   11c16:	7f 09                	jg     0x11c21
   11c18:	7c 05                	jl     0x11c1f
   11c1a:	3b 56 08             	cmp    dx,WORD PTR [bp+0x8]
   11c1d:	73 02                	jae    0x11c21
   11c1f:	eb c8                	jmp    0x11be9
   11c21:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   11c24:	33 d2                	xor    dx,dx
   11c26:	03 46 08             	add    ax,WORD PTR [bp+0x8]
   11c29:	13 56 0a             	adc    dx,WORD PTR [bp+0xa]
   11c2c:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   11c2f:	26 3b 57 08          	cmp    dx,WORD PTR es:[bx+0x8]
   11c33:	7c 15                	jl     0x11c4a
   11c35:	7f 06                	jg     0x11c3d
   11c37:	26 3b 47 06          	cmp    ax,WORD PTR es:[bx+0x6]
   11c3b:	76 0d                	jbe    0x11c4a
   11c3d:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   11c40:	26 8b 47 06          	mov    ax,WORD PTR es:[bx+0x6]
   11c44:	2b 46 08             	sub    ax,WORD PTR [bp+0x8]
   11c47:	89 46 06             	mov    WORD PTR [bp+0x6],ax
   11c4a:	6a 00                	push   0x0
   11c4c:	68 00 40             	push   0x4000
   11c4f:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   11c52:	26 8b 47 04          	mov    ax,WORD PTR es:[bx+0x4]
   11c56:	26 8b 57 02          	mov    dx,WORD PTR es:[bx+0x2]
   11c5a:	03 56 08             	add    dx,WORD PTR [bp+0x8]
   11c5d:	13 46 0a             	adc    ax,WORD PTR [bp+0xa]
   11c60:	50                   	push   ax
   11c61:	52                   	push   dx
   11c62:	9a df 12 00 00       	call   0x0:0x12df
   11c67:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   11c6a:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   11c6d:	26 8b 47 02          	mov    ax,WORD PTR es:[bx+0x2]
   11c71:	03 46 08             	add    ax,WORD PTR [bp+0x8]
   11c74:	8b 56 f6             	mov    dx,WORD PTR [bp-0xa]
   11c77:	c1 e2 0e             	shl    dx,0xe
   11c7a:	2b c2                	sub    ax,dx
   11c7c:	8b 16 a6 e7          	mov    dx,WORD PTR ds:0xe7a6
   11c80:	8b 1e a4 e7          	mov    bx,WORD PTR ds:0xe7a4
   11c84:	03 d8                	add    bx,ax
   11c86:	89 56 f2             	mov    WORD PTR [bp-0xe],dx
   11c89:	89 5e f0             	mov    WORD PTR [bp-0x10],bx
   11c8c:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   11c8f:	99                   	cwd
   11c90:	b1 0e                	mov    cl,0xe
   11c92:	9a 8d 13 00 00       	call   0x0:0x138d
   11c97:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   11c9a:	33 c9                	xor    cx,cx
   11c9c:	be 00 40             	mov    si,0x4000
   11c9f:	26 2b 77 02          	sub    si,WORD PTR es:[bx+0x2]
   11ca3:	26 1b 4f 04          	sbb    cx,WORD PTR es:[bx+0x4]
   11ca7:	2b 76 08             	sub    si,WORD PTR [bp+0x8]
   11caa:	1b 4e 0a             	sbb    cx,WORD PTR [bp+0xa]
   11cad:	03 f0                	add    si,ax
   11caf:	13 ca                	adc    cx,dx
   11cb1:	89 4e fa             	mov    WORD PTR [bp-0x6],cx
   11cb4:	89 76 f8             	mov    WORD PTR [bp-0x8],si
   11cb7:	ff 76 f6             	push   WORD PTR [bp-0xa]
   11cba:	ff 76 f4             	push   WORD PTR [bp-0xc]
   11cbd:	9a 7a 00 34 11       	call   0x1134:0x7a
   11cc2:	0b c0                	or     ax,ax
   11cc4:	74 03                	je     0x11cc9
   11cc6:	e9 20 ff             	jmp    0x11be9
   11cc9:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
   11ccc:	d1 e3                	shl    bx,1
   11cce:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   11cd1:	89 87 f8 86          	mov    WORD PTR [bx-0x7908],ax
   11cd5:	eb 40                	jmp    0x11d17
   11cd7:	ff 46 f6             	inc    WORD PTR [bp-0xa]
   11cda:	ff 46 f4             	inc    WORD PTR [bp-0xc]
   11cdd:	83 7e f4 03          	cmp    WORD PTR [bp-0xc],0x3
   11ce1:	7e 02                	jle    0x11ce5
   11ce3:	eb 43                	jmp    0x11d28
   11ce5:	ff 76 f6             	push   WORD PTR [bp-0xa]
   11ce8:	ff 76 f4             	push   WORD PTR [bp-0xc]
   11ceb:	9a 7a 00 34 11       	call   0x1134:0x7a
   11cf0:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
   11cf3:	d1 e3                	shl    bx,1
   11cf5:	89 87 f8 86          	mov    WORD PTR [bx-0x7908],ax
   11cf9:	0b c0                	or     ax,ax
   11cfb:	75 17                	jne    0x11d14
   11cfd:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
   11d00:	d1 e3                	shl    bx,1
   11d02:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   11d05:	89 87 f8 86          	mov    WORD PTR [bx-0x7908],ax
   11d09:	81 46 f8 00 40       	add    WORD PTR [bp-0x8],0x4000
   11d0e:	83 56 fa 00          	adc    WORD PTR [bp-0x6],0x0
   11d12:	eb 03                	jmp    0x11d17
   11d14:	e9 d2 fe             	jmp    0x11be9
   11d17:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   11d1a:	33 d2                	xor    dx,dx
   11d1c:	3b 56 fa             	cmp    dx,WORD PTR [bp-0x6]
   11d1f:	7f b6                	jg     0x11cd7
   11d21:	75 05                	jne    0x11d28
   11d23:	3b 46 f8             	cmp    ax,WORD PTR [bp-0x8]
   11d26:	77 af                	ja     0x11cd7
   11d28:	8b 56 f2             	mov    dx,WORD PTR [bp-0xe]
   11d2b:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   11d2e:	1f                   	pop    ds
   11d2f:	5e                   	pop    si
   11d30:	c9                   	leave
   11d31:	ca 08 00             	retf   0x8
