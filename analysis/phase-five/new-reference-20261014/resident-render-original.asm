
analysis/phase-four/IST-resident-raw.bin:     file format binary


Disassembly of section .data:

00015dc4 <.data+0x5dc4>:
   15dc4:	55                   	push   bp
   15dc5:	8b ec                	mov    bp,sp
   15dc7:	83 ec 02             	sub    sp,0x2
   15dca:	83 7e 10 07          	cmp    WORD PTR [bp+0x10],0x7
   15dce:	75 07                	jne    0x15dd7
   15dd0:	c7 46 fe 02 00       	mov    WORD PTR [bp-0x2],0x2
   15dd5:	eb 05                	jmp    0x15ddc
   15dd7:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   15ddc:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   15ddf:	3d 01 00             	cmp    ax,0x1
   15de2:	74 08                	je     0x15dec
   15de4:	3d 02 00             	cmp    ax,0x2
   15de7:	74 56                	je     0x15e3f
   15de9:	e9 9f 00             	jmp    0x15e8b
   15dec:	6a 05                	push   0x5
   15dee:	b8 e0 16             	mov    ax,0x16e0
   15df1:	8e c0                	mov    es,ax
   15df3:	26 a0 67 96          	mov    al,es:0x9667
   15df7:	b4 00                	mov    ah,0x0
   15df9:	50                   	push   ax
   15dfa:	ff 76 08             	push   WORD PTR [bp+0x8]
   15dfd:	ff 76 06             	push   WORD PTR [bp+0x6]
   15e00:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
   15e03:	f7 6e 10             	imul   WORD PTR [bp+0x10]
   15e06:	40                   	inc    ax
   15e07:	50                   	push   ax
   15e08:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   15e0b:	c1 e0 03             	shl    ax,0x3
   15e0e:	40                   	inc    ax
   15e0f:	50                   	push   ax
   15e10:	6a 17                	push   0x17
   15e12:	9a 34 00 da 16       	call   0x16da:0x34
   15e17:	83 c4 0e             	add    sp,0xe
   15e1a:	6a 05                	push   0x5
   15e1c:	ff 76 0e             	push   WORD PTR [bp+0xe]
   15e1f:	ff 76 08             	push   WORD PTR [bp+0x8]
   15e22:	ff 76 06             	push   WORD PTR [bp+0x6]
   15e25:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
   15e28:	f7 6e 10             	imul   WORD PTR [bp+0x10]
   15e2b:	50                   	push   ax
   15e2c:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   15e2f:	c1 e0 03             	shl    ax,0x3
   15e32:	50                   	push   ax
   15e33:	6a 17                	push   0x17
   15e35:	9a 34 00 da 16       	call   0x16da:0x34
   15e3a:	83 c4 0e             	add    sp,0xe
   15e3d:	eb 4c                	jmp    0x15e8b
   15e3f:	b8 e0 16             	mov    ax,0x16e0
   15e42:	8e c0                	mov    es,ax
   15e44:	26 a0 67 96          	mov    al,es:0x9667
   15e48:	b4 00                	mov    ah,0x0
   15e4a:	50                   	push   ax
   15e4b:	ff 76 08             	push   WORD PTR [bp+0x8]
   15e4e:	ff 76 06             	push   WORD PTR [bp+0x6]
   15e51:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
   15e54:	f7 6e 10             	imul   WORD PTR [bp+0x10]
   15e57:	40                   	inc    ax
   15e58:	50                   	push   ax
   15e59:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   15e5c:	c1 e0 03             	shl    ax,0x3
   15e5f:	50                   	push   ax
   15e60:	6a 17                	push   0x17
   15e62:	9a 39 00 da 16       	call   0x16da:0x39
   15e67:	83 c4 0c             	add    sp,0xc
   15e6a:	ff 76 0e             	push   WORD PTR [bp+0xe]
   15e6d:	ff 76 08             	push   WORD PTR [bp+0x8]
   15e70:	ff 76 06             	push   WORD PTR [bp+0x6]
   15e73:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
   15e76:	f7 6e 10             	imul   WORD PTR [bp+0x10]
   15e79:	50                   	push   ax
   15e7a:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   15e7d:	c1 e0 03             	shl    ax,0x3
   15e80:	50                   	push   ax
   15e81:	6a 17                	push   0x17
   15e83:	9a 39 00 da 16       	call   0x16da:0x39
   15e88:	83 c4 0c             	add    sp,0xc
   15e8b:	c9                   	leave
   15e8c:	cb                   	retf

analysis/phase-four/IST-resident-raw.bin:     file format binary


Disassembly of section .data:

000163a4 <.data+0x63a4>:
   163a4:	55                   	push   bp
   163a5:	8b ec                	mov    bp,sp
   163a7:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   163aa:	c1 e3 03             	shl    bx,0x3
   163ad:	b8 e0 16             	mov    ax,0x16e0
   163b0:	8b 56 08             	mov    dx,WORD PTR [bp+0x8]
   163b3:	c1 e2 03             	shl    dx,0x3
   163b6:	8e c0                	mov    es,ax
   163b8:	26 89 97 f5 e5       	mov    WORD PTR es:[bx-0x1a0b],dx
   163bd:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   163c0:	f7 6e 0c             	imul   WORD PTR [bp+0xc]
   163c3:	ba e0 16             	mov    dx,0x16e0
   163c6:	8e c2                	mov    es,dx
   163c8:	26 03 06 58 96       	add    ax,WORD PTR es:0x9658
   163cd:	2d 08 00             	sub    ax,0x8
   163d0:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   163d3:	c1 e3 03             	shl    bx,0x3
   163d6:	ba e0 16             	mov    dx,0x16e0
   163d9:	8e c2                	mov    es,dx
   163db:	26 89 87 f7 e5       	mov    WORD PTR es:[bx-0x1a09],ax
   163e0:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   163e3:	c1 e3 03             	shl    bx,0x3
   163e6:	b8 e0 16             	mov    ax,0x16e0
   163e9:	8e c0                	mov    es,ax
   163eb:	26 8b 87 f5 e5       	mov    ax,WORD PTR es:[bx-0x1a0b]
   163f0:	05 8a 00             	add    ax,0x8a
   163f3:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   163f6:	c1 e3 03             	shl    bx,0x3
   163f9:	ba e0 16             	mov    dx,0x16e0
   163fc:	8e c2                	mov    es,dx
   163fe:	26 89 87 f9 e5       	mov    WORD PTR es:[bx-0x1a07],ax
   16403:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   16406:	c1 e3 03             	shl    bx,0x3
   16409:	b8 e0 16             	mov    ax,0x16e0
   1640c:	8e c0                	mov    es,ax
   1640e:	26 8b 87 f7 e5       	mov    ax,WORD PTR es:[bx-0x1a09]
   16413:	03 46 0c             	add    ax,WORD PTR [bp+0xc]
   16416:	05 09 00             	add    ax,0x9
   16419:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   1641c:	c1 e3 03             	shl    bx,0x3
   1641f:	ba e0 16             	mov    dx,0x16e0
   16422:	8e c2                	mov    es,dx
   16424:	26 89 87 fb e5       	mov    WORD PTR es:[bx-0x1a05],ax
   16429:	5d                   	pop    bp
   1642a:	cb                   	retf

analysis/phase-four/IST-resident-raw.bin:     file format binary


Disassembly of section .data:

00016700 <.data+0x6700>:
   16700:	55                   	push   bp
   16701:	8b ec                	mov    bp,sp
   16703:	83 ec 02             	sub    sp,0x2
   16706:	c6 46 ff 00          	mov    BYTE PTR [bp-0x1],0x0
   1670a:	b8 e0 16             	mov    ax,0x16e0
   1670d:	8a 56 ff             	mov    dl,BYTE PTR [bp-0x1]
   16710:	8e c0                	mov    es,ax
   16712:	26 88 16 6a 98       	mov    BYTE PTR es:0x986a,dl
   16717:	fe 46 ff             	inc    BYTE PTR [bp-0x1]
   1671a:	b8 e0 16             	mov    ax,0x16e0
   1671d:	8e c0                	mov    es,ax
   1671f:	26 c7 06 26 98 dc 05 	mov    WORD PTR es:0x9826,0x5dc
   16726:	26 c7 06 24 98 e9 00 	mov    WORD PTR es:0x9824,0xe9
   1672d:	b8 e0 16             	mov    ax,0x16e0
   16730:	8e c0                	mov    es,ax
   16732:	26 c7 06 2a 98 dc 05 	mov    WORD PTR es:0x982a,0x5dc
   16739:	26 c7 06 28 98 7b 02 	mov    WORD PTR es:0x9828,0x27b
   16740:	b8 e0 16             	mov    ax,0x16e0
   16743:	8e c0                	mov    es,ax
   16745:	26 c7 06 32 98 dc 05 	mov    WORD PTR es:0x9832,0x5dc
   1674c:	26 c7 06 30 98 e4 05 	mov    WORD PTR es:0x9830,0x5e4
   16753:	b8 e0 16             	mov    ax,0x16e0
   16756:	8e c0                	mov    es,ax
   16758:	26 c7 06 2e 98 dc 05 	mov    WORD PTR es:0x982e,0x5dc
   1675f:	26 c7 06 2c 98 6b 06 	mov    WORD PTR es:0x982c,0x66b
   16766:	b8 e0 16             	mov    ax,0x16e0
   16769:	8e c0                	mov    es,ax
   1676b:	26 c7 06 36 98 dc 05 	mov    WORD PTR es:0x9836,0x5dc
   16772:	26 c7 06 34 98 31 08 	mov    WORD PTR es:0x9834,0x831
   16779:	b8 e0 16             	mov    ax,0x16e0
   1677c:	8e c0                	mov    es,ax
   1677e:	26 c7 06 3a 98 dc 05 	mov    WORD PTR es:0x983a,0x5dc
   16785:	26 c7 06 38 98 81 08 	mov    WORD PTR es:0x9838,0x881
   1678c:	b8 e0 16             	mov    ax,0x16e0
   1678f:	8e c0                	mov    es,ax
   16791:	26 c7 06 3e 98 dc 05 	mov    WORD PTR es:0x983e,0x5dc
   16798:	26 c7 06 3c 98 04 00 	mov    WORD PTR es:0x983c,0x4
   1679f:	b8 e0 16             	mov    ax,0x16e0
   167a2:	8e c0                	mov    es,ax
   167a4:	26 c7 06 4a 98 70 16 	mov    WORD PTR es:0x984a,0x1670
   167ab:	26 c7 06 48 98 84 00 	mov    WORD PTR es:0x9848,0x84
   167b2:	b8 e0 16             	mov    ax,0x16e0
   167b5:	8e c0                	mov    es,ax
   167b7:	26 c7 06 50 98 94 00 	mov    WORD PTR es:0x9850,0x94
   167be:	b8 e0 16             	mov    ax,0x16e0
   167c1:	8e c0                	mov    es,ax
   167c3:	26 c7 06 52 98 34 00 	mov    WORD PTR es:0x9852,0x34
   167ca:	b8 e0 16             	mov    ax,0x16e0
   167cd:	8e c0                	mov    es,ax
   167cf:	26 c7 06 54 98 25 00 	mov    WORD PTR es:0x9854,0x25
   167d6:	b8 e0 16             	mov    ax,0x16e0
   167d9:	8e c0                	mov    es,ax
   167db:	26 c6 06 5e 98 f5    	mov    BYTE PTR es:0x985e,0xf5
   167e1:	b8 e0 16             	mov    ax,0x16e0
   167e4:	8e c0                	mov    es,ax
   167e6:	26 c6 06 61 98 fa    	mov    BYTE PTR es:0x9861,0xfa
   167ec:	b8 e0 16             	mov    ax,0x16e0
   167ef:	8e c0                	mov    es,ax
   167f1:	26 c6 06 62 98 f0    	mov    BYTE PTR es:0x9862,0xf0
   167f7:	b8 e0 16             	mov    ax,0x16e0
   167fa:	8e c0                	mov    es,ax
   167fc:	26 c6 06 63 98 a0    	mov    BYTE PTR es:0x9863,0xa0
   16802:	b8 e0 16             	mov    ax,0x16e0
   16805:	8e c0                	mov    es,ax
   16807:	26 c6 06 64 98 aa    	mov    BYTE PTR es:0x9864,0xaa
   1680d:	b8 e0 16             	mov    ax,0x16e0
   16810:	8e c0                	mov    es,ax
   16812:	26 c7 06 4e 98 70 16 	mov    WORD PTR es:0x984e,0x1670
   16819:	26 c7 06 4c 98 a2 00 	mov    WORD PTR es:0x984c,0xa2
   16820:	b8 e0 16             	mov    ax,0x16e0
   16823:	8e c0                	mov    es,ax
   16825:	26 c6 06 60 98 40    	mov    BYTE PTR es:0x9860,0x40
   1682b:	b8 e0 16             	mov    ax,0x16e0
   1682e:	8e c0                	mov    es,ax
   16830:	26 c7 06 46 98 70 16 	mov    WORD PTR es:0x9846,0x1670
   16837:	26 c7 06 44 98 9d 00 	mov    WORD PTR es:0x9844,0x9d
   1683e:	b8 e0 16             	mov    ax,0x16e0
   16841:	8e c0                	mov    es,ax
   16843:	26 c6 06 5d 98 ff    	mov    BYTE PTR es:0x985d,0xff
   16849:	b8 e0 16             	mov    ax,0x16e0
   1684c:	8e c0                	mov    es,ax
   1684e:	26 c6 06 5c 98 dc    	mov    BYTE PTR es:0x985c,0xdc
   16854:	b8 e0 16             	mov    ax,0x16e0
   16857:	8e c0                	mov    es,ax
   16859:	26 c6 06 5f 98 00    	mov    BYTE PTR es:0x985f,0x0
   1685f:	b8 e0 16             	mov    ax,0x16e0
   16862:	8e c0                	mov    es,ax
   16864:	26 c7 06 56 98 c8 00 	mov    WORD PTR es:0x9856,0xc8
   1686b:	b8 e0 16             	mov    ax,0x16e0
   1686e:	8e c0                	mov    es,ax
   16870:	26 c6 06 69 98 2c    	mov    BYTE PTR es:0x9869,0x2c
   16876:	b8 e0 16             	mov    ax,0x16e0
   16879:	8e c0                	mov    es,ax
   1687b:	26 c7 06 42 98 89 16 	mov    WORD PTR es:0x9842,0x1689
   16882:	26 c7 06 40 98 3e 00 	mov    WORD PTR es:0x9840,0x3e
   16889:	b8 e0 16             	mov    ax,0x16e0
   1688c:	8e c0                	mov    es,ax
   1688e:	26 c6 06 6b 98 01    	mov    BYTE PTR es:0x986b,0x1
   16894:	68 e0 16             	push   0x16e0
   16897:	68 24 98             	push   0x9824
   1689a:	68 e0 16             	push   0x16e0
   1689d:	68 bc 96             	push   0x96bc
   168a0:	0e                   	push   cs
   168a1:	e8 f7 fd             	call   0x1669b
   168a4:	83 c4 08             	add    sp,0x8
   168a7:	68 e0 16             	push   0x16e0
   168aa:	68 24 98             	push   0x9824
   168ad:	68 e0 16             	push   0x16e0
   168b0:	68 dc 97             	push   0x97dc
   168b3:	0e                   	push   cs
   168b4:	e8 e4 fd             	call   0x1669b
   168b7:	83 c4 08             	add    sp,0x8
   168ba:	68 e0 16             	push   0x16e0
   168bd:	68 24 98             	push   0x9824
   168c0:	68 e0 16             	push   0x16e0
   168c3:	68 04 97             	push   0x9704
   168c6:	0e                   	push   cs
   168c7:	e8 d1 fd             	call   0x1669b
   168ca:	83 c4 08             	add    sp,0x8
   168cd:	68 e0 16             	push   0x16e0
   168d0:	68 24 98             	push   0x9824
   168d3:	68 e0 16             	push   0x16e0
   168d6:	68 74 96             	push   0x9674
   168d9:	0e                   	push   cs
   168da:	e8 be fd             	call   0x1669b
   168dd:	83 c4 08             	add    sp,0x8
   168e0:	b8 e0 16             	mov    ax,0x16e0
   168e3:	8a 56 ff             	mov    dl,BYTE PTR [bp-0x1]
   168e6:	8e c0                	mov    es,ax
   168e8:	26 88 16 92 97       	mov    BYTE PTR es:0x9792,dl
   168ed:	fe 46 ff             	inc    BYTE PTR [bp-0x1]
   168f0:	b8 e0 16             	mov    ax,0x16e0
   168f3:	8e c0                	mov    es,ax
   168f5:	26 c7 06 4e 97 dc 05 	mov    WORD PTR es:0x974e,0x5dc
   168fc:	26 c7 06 4c 97 cd 00 	mov    WORD PTR es:0x974c,0xcd
   16903:	b8 e0 16             	mov    ax,0x16e0
   16906:	8e c0                	mov    es,ax
   16908:	26 c7 06 52 97 94 16 	mov    WORD PTR es:0x9752,0x1694
   1690f:	26 c7 06 50 97 43 00 	mov    WORD PTR es:0x9750,0x43
   16916:	b8 dc 05             	mov    ax,0x5dc
   16919:	ba 68 05             	mov    dx,0x568
   1691c:	bb e0 16             	mov    bx,0x16e0
   1691f:	8e c3                	mov    es,bx
   16921:	26 a3 a2 97          	mov    es:0x97a2,ax
   16925:	26 89 16 a0 97       	mov    WORD PTR es:0x97a0,dx
   1692a:	bb e0 16             	mov    bx,0x16e0
   1692d:	8e c3                	mov    es,bx
   1692f:	26 a3 5a 97          	mov    es:0x975a,ax
   16933:	26 89 16 58 97       	mov    WORD PTR es:0x9758,dx
   16938:	b8 94 16             	mov    ax,0x1694
   1693b:	ba 48 00             	mov    dx,0x48
   1693e:	bb e0 16             	mov    bx,0x16e0
   16941:	8e c3                	mov    es,bx
   16943:	26 a3 9e 97          	mov    es:0x979e,ax
   16947:	26 89 16 9c 97       	mov    WORD PTR es:0x979c,dx
   1694c:	bb e0 16             	mov    bx,0x16e0
   1694f:	8e c3                	mov    es,bx
   16951:	26 a3 56 97          	mov    es:0x9756,ax
   16955:	26 89 16 54 97       	mov    WORD PTR es:0x9754,dx
   1695a:	b8 94 16             	mov    ax,0x1694
   1695d:	ba 4d 00             	mov    dx,0x4d
   16960:	bb e0 16             	mov    bx,0x16e0
   16963:	8e c3                	mov    es,bx
   16965:	26 a3 aa 97          	mov    es:0x97aa,ax
   16969:	26 89 16 a8 97       	mov    WORD PTR es:0x97a8,dx
   1696e:	bb e0 16             	mov    bx,0x16e0
   16971:	8e c3                	mov    es,bx
   16973:	26 a3 62 97          	mov    es:0x9762,ax
   16977:	26 89 16 60 97       	mov    WORD PTR es:0x9760,dx
   1697c:	bb e0 16             	mov    bx,0x16e0
   1697f:	8e c3                	mov    es,bx
   16981:	26 a3 a6 97          	mov    es:0x97a6,ax
   16985:	26 89 16 a4 97       	mov    WORD PTR es:0x97a4,dx
   1698a:	bb e0 16             	mov    bx,0x16e0
   1698d:	8e c3                	mov    es,bx
   1698f:	26 a3 5e 97          	mov    es:0x975e,ax
   16993:	26 89 16 5c 97       	mov    WORD PTR es:0x975c,dx
   16998:	b8 94 16             	mov    ax,0x1694
   1699b:	ba 52 00             	mov    dx,0x52
   1699e:	bb e0 16             	mov    bx,0x16e0
   169a1:	8e c3                	mov    es,bx
   169a3:	26 a3 ae 97          	mov    es:0x97ae,ax
   169a7:	26 89 16 ac 97       	mov    WORD PTR es:0x97ac,dx
   169ac:	bb e0 16             	mov    bx,0x16e0
   169af:	8e c3                	mov    es,bx
   169b1:	26 a3 66 97          	mov    es:0x9766,ax
   169b5:	26 89 16 64 97       	mov    WORD PTR es:0x9764,dx
   169ba:	b8 e0 16             	mov    ax,0x16e0
   169bd:	8e c0                	mov    es,ax
   169bf:	26 c6 06 89 97 2a    	mov    BYTE PTR es:0x9789,0x2a
   169c5:	b8 e0 16             	mov    ax,0x16e0
   169c8:	8e c0                	mov    es,ax
   169ca:	26 c6 06 8a 97 88    	mov    BYTE PTR es:0x978a,0x88
   169d0:	b8 e0 16             	mov    ax,0x16e0
   169d3:	8e c0                	mov    es,ax
   169d5:	26 c6 06 8b 97 aa    	mov    BYTE PTR es:0x978b,0xaa
   169db:	b8 e0 16             	mov    ax,0x16e0
   169de:	8e c0                	mov    es,ax
   169e0:	26 c7 06 76 97 94 16 	mov    WORD PTR es:0x9776,0x1694
   169e7:	26 c7 06 74 97 06 01 	mov    WORD PTR es:0x9774,0x106
   169ee:	b8 e0 16             	mov    ax,0x16e0
   169f1:	8a 56 ff             	mov    dl,BYTE PTR [bp-0x1]
   169f4:	8e c0                	mov    es,ax
   169f6:	26 88 16 da 97       	mov    BYTE PTR es:0x97da,dl
   169fb:	fe 46 ff             	inc    BYTE PTR [bp-0x1]
   169fe:	b8 e0 16             	mov    ax,0x16e0
   16a01:	8e c0                	mov    es,ax
   16a03:	26 c7 06 96 97 dc 05 	mov    WORD PTR es:0x9796,0x5dc
   16a0a:	26 c7 06 94 97 cd 00 	mov    WORD PTR es:0x9794,0xcd
   16a11:	b8 e0 16             	mov    ax,0x16e0
   16a14:	8e c0                	mov    es,ax
   16a16:	26 c7 06 9a 97 dc 05 	mov    WORD PTR es:0x979a,0x5dc
   16a1d:	26 c7 06 98 97 1c 04 	mov    WORD PTR es:0x9798,0x41c
   16a24:	b8 e0 16             	mov    ax,0x16e0
   16a27:	8e c0                	mov    es,ax
   16a29:	26 c6 06 ce 97 f0    	mov    BYTE PTR es:0x97ce,0xf0
   16a2f:	b8 e0 16             	mov    ax,0x16e0
   16a32:	8e c0                	mov    es,ax
   16a34:	26 c6 06 d1 97 af    	mov    BYTE PTR es:0x97d1,0xaf
   16a3a:	b8 e0 16             	mov    ax,0x16e0
   16a3d:	8e c0                	mov    es,ax
   16a3f:	26 c6 06 d2 97 b0    	mov    BYTE PTR es:0x97d2,0xb0
   16a45:	b8 e0 16             	mov    ax,0x16e0
   16a48:	8e c0                	mov    es,ax
   16a4a:	26 c6 06 d3 97 cc    	mov    BYTE PTR es:0x97d3,0xcc
   16a50:	b8 e0 16             	mov    ax,0x16e0
   16a53:	8e c0                	mov    es,ax
   16a55:	26 c6 06 d4 97 a0    	mov    BYTE PTR es:0x97d4,0xa0
   16a5b:	b8 e0 16             	mov    ax,0x16e0
   16a5e:	8e c0                	mov    es,ax
   16a60:	26 c6 06 d5 97 d9    	mov    BYTE PTR es:0x97d5,0xd9
   16a66:	b8 e0 16             	mov    ax,0x16e0
   16a69:	b2 ff                	mov    dl,0xff
   16a6b:	8e c0                	mov    es,ax
   16a6d:	26 88 16 cd 97       	mov    BYTE PTR es:0x97cd,dl
   16a72:	8a c2                	mov    al,dl
   16a74:	ba e0 16             	mov    dx,0x16e0
   16a77:	8e c2                	mov    es,dx
   16a79:	26 a2 85 97          	mov    es:0x9785,al
   16a7d:	b8 e0 16             	mov    ax,0x16e0
   16a80:	b2 dc                	mov    dl,0xdc
   16a82:	8e c0                	mov    es,ax
   16a84:	26 88 16 84 97       	mov    BYTE PTR es:0x9784,dl
   16a89:	8a c2                	mov    al,dl
   16a8b:	ba e0 16             	mov    dx,0x16e0
   16a8e:	8e c2                	mov    es,dx
   16a90:	26 a2 cc 97          	mov    es:0x97cc,al
   16a94:	b8 dc 05             	mov    ax,0x5dc
   16a97:	ba d9 00             	mov    dx,0xd9
   16a9a:	bb e0 16             	mov    bx,0x16e0
   16a9d:	8e c3                	mov    es,bx
   16a9f:	26 a3 72 97          	mov    es:0x9772,ax
   16aa3:	26 89 16 70 97       	mov    WORD PTR es:0x9770,dx
   16aa8:	bb e0 16             	mov    bx,0x16e0
   16aab:	8e c3                	mov    es,bx
   16aad:	26 a3 ba 97          	mov    es:0x97ba,ax
   16ab1:	26 89 16 b8 97       	mov    WORD PTR es:0x97b8,dx
   16ab6:	bb e0 16             	mov    bx,0x16e0
   16ab9:	8e c3                	mov    es,bx
   16abb:	26 a3 da 98          	mov    es:0x98da,ax
   16abf:	26 89 16 d8 98       	mov    WORD PTR es:0x98d8,dx
   16ac4:	bb e0 16             	mov    bx,0x16e0
   16ac7:	8e c3                	mov    es,bx
   16ac9:	26 a3 92 98          	mov    es:0x9892,ax
   16acd:	26 89 16 90 98       	mov    WORD PTR es:0x9890,dx
   16ad2:	bb e0 16             	mov    bx,0x16e0
   16ad5:	8e c3                	mov    es,bx
   16ad7:	26 a3 2a 97          	mov    es:0x972a,ax
   16adb:	26 89 16 28 97       	mov    WORD PTR es:0x9728,dx
   16ae0:	b8 dc 05             	mov    ax,0x5dc
   16ae3:	ba cd 00             	mov    dx,0xcd
   16ae6:	bb e0 16             	mov    bx,0x16e0
   16ae9:	8e c3                	mov    es,bx
   16aeb:	26 a3 96 98          	mov    es:0x9896,ax
   16aef:	26 89 16 94 98       	mov    WORD PTR es:0x9894,dx
   16af4:	bb e0 16             	mov    bx,0x16e0
   16af7:	8e c3                	mov    es,bx
   16af9:	26 a3 de 98          	mov    es:0x98de,ax
   16afd:	26 89 16 dc 98       	mov    WORD PTR es:0x98dc,dx
   16b02:	bb e0 16             	mov    bx,0x16e0
   16b05:	8e c3                	mov    es,bx
   16b07:	26 a3 be 97          	mov    es:0x97be,ax
   16b0b:	26 89 16 bc 97       	mov    WORD PTR es:0x97bc,dx
   16b10:	bb e0 16             	mov    bx,0x16e0
   16b13:	8e c3                	mov    es,bx
   16b15:	26 a3 06 98          	mov    es:0x9806,ax
   16b19:	26 89 16 04 98       	mov    WORD PTR es:0x9804,dx
   16b1e:	bb e0 16             	mov    bx,0x16e0
   16b21:	8e c3                	mov    es,bx
   16b23:	26 a3 2e 97          	mov    es:0x972e,ax
   16b27:	26 89 16 2c 97       	mov    WORD PTR es:0x972c,dx
   16b2c:	b8 e0 16             	mov    ax,0x16e0
   16b2f:	b2 f5                	mov    dl,0xf5
   16b31:	8e c0                	mov    es,ax
   16b33:	26 88 16 16 98       	mov    BYTE PTR es:0x9816,dl
   16b38:	8a c2                	mov    al,dl
   16b3a:	ba e0 16             	mov    dx,0x16e0
   16b3d:	8e c2                	mov    es,dx
   16b3f:	26 a2 86 97          	mov    es:0x9786,al
   16b43:	b8 e0 16             	mov    ax,0x16e0
   16b46:	b2 00                	mov    dl,0x0
   16b48:	8e c0                	mov    es,ax
   16b4a:	26 88 16 17 98       	mov    BYTE PTR es:0x9817,dl
   16b4f:	8a c2                	mov    al,dl
   16b51:	ba e0 16             	mov    dx,0x16e0
   16b54:	8e c2                	mov    es,dx
   16b56:	26 a2 cf 97          	mov    es:0x97cf,al
   16b5a:	ba e0 16             	mov    dx,0x16e0
   16b5d:	8e c2                	mov    es,dx
   16b5f:	26 a2 87 97          	mov    es:0x9787,al
   16b63:	b8 e0 16             	mov    ax,0x16e0
   16b66:	ba c8 00             	mov    dx,0xc8
   16b69:	8e c0                	mov    es,ax
   16b6b:	26 89 16 c6 97       	mov    WORD PTR es:0x97c6,dx
   16b70:	8b c2                	mov    ax,dx
   16b72:	ba e0 16             	mov    dx,0x16e0
   16b75:	8e c2                	mov    es,dx
   16b77:	26 a3 7e 97          	mov    es:0x977e,ax
   16b7b:	b8 dc 05             	mov    ax,0x5dc
   16b7e:	ba cd 00             	mov    dx,0xcd
   16b81:	bb e0 16             	mov    bx,0x16e0
   16b84:	8e c3                	mov    es,bx
   16b86:	26 a3 b6 97          	mov    es:0x97b6,ax
   16b8a:	26 89 16 b4 97       	mov    WORD PTR es:0x97b4,dx
   16b8f:	bb e0 16             	mov    bx,0x16e0
   16b92:	8e c3                	mov    es,bx
   16b94:	26 a3 6e 97          	mov    es:0x976e,ax
   16b98:	26 89 16 6c 97       	mov    WORD PTR es:0x976c,dx
   16b9d:	b8 e0 16             	mov    ax,0x16e0
   16ba0:	b2 2d                	mov    dl,0x2d
   16ba2:	8e c0                	mov    es,ax
   16ba4:	26 88 16 d9 97       	mov    BYTE PTR es:0x97d9,dl
   16ba9:	8a c2                	mov    al,dl
   16bab:	ba e0 16             	mov    dx,0x16e0
   16bae:	8e c2                	mov    es,dx
   16bb0:	26 a2 91 97          	mov    es:0x9791,al
   16bb4:	b8 e0 16             	mov    ax,0x16e0
   16bb7:	8e c0                	mov    es,ax
   16bb9:	26 c6 06 21 98 2c    	mov    BYTE PTR es:0x9821,0x2c
   16bbf:	b8 e0 16             	mov    ax,0x16e0
   16bc2:	b2 00                	mov    dl,0x0
   16bc4:	8e c0                	mov    es,ax
   16bc6:	26 88 16 d0 97       	mov    BYTE PTR es:0x97d0,dl
   16bcb:	8a c2                	mov    al,dl
   16bcd:	ba e0 16             	mov    dx,0x16e0
   16bd0:	8e c2                	mov    es,dx
   16bd2:	26 a2 88 97          	mov    es:0x9788,al
   16bd6:	ba e0 16             	mov    dx,0x16e0
   16bd9:	8e c2                	mov    es,dx
   16bdb:	26 a2 f0 98          	mov    es:0x98f0,al
   16bdf:	b8 dc 05             	mov    ax,0x5dc
   16be2:	ba cd 00             	mov    dx,0xcd
   16be5:	bb e0 16             	mov    bx,0x16e0
   16be8:	8e c3                	mov    es,bx
   16bea:	26 a3 fa 97          	mov    es:0x97fa,ax
   16bee:	26 89 16 f8 97       	mov    WORD PTR es:0x97f8,dx
   16bf3:	bb e0 16             	mov    bx,0x16e0
   16bf6:	8e c3                	mov    es,bx
   16bf8:	26 a3 b2 97          	mov    es:0x97b2,ax
   16bfc:	26 89 16 b0 97       	mov    WORD PTR es:0x97b0,dx
   16c01:	bb e0 16             	mov    bx,0x16e0
   16c04:	8e c3                	mov    es,bx
   16c06:	26 a3 8a 98          	mov    es:0x988a,ax
   16c0a:	26 89 16 88 98       	mov    WORD PTR es:0x9888,dx
   16c0f:	bb e0 16             	mov    bx,0x16e0
   16c12:	8e c3                	mov    es,bx
   16c14:	26 a3 d2 98          	mov    es:0x98d2,ax
   16c18:	26 89 16 d0 98       	mov    WORD PTR es:0x98d0,dx
   16c1d:	bb e0 16             	mov    bx,0x16e0
   16c20:	8e c3                	mov    es,bx
   16c22:	26 a3 6a 97          	mov    es:0x976a,ax
   16c26:	26 89 16 68 97       	mov    WORD PTR es:0x9768,dx
   16c2b:	b8 e0 16             	mov    ax,0x16e0
   16c2e:	8a 56 ff             	mov    dl,BYTE PTR [bp-0x1]
   16c31:	8e c0                	mov    es,ax
   16c33:	26 88 16 fa 98       	mov    BYTE PTR es:0x98fa,dl
   16c38:	fe 46 ff             	inc    BYTE PTR [bp-0x1]
   16c3b:	b8 e0 16             	mov    ax,0x16e0
   16c3e:	8e c0                	mov    es,ax
   16c40:	26 c7 06 b6 98 dc 05 	mov    WORD PTR es:0x98b6,0x5dc
   16c47:	26 c7 06 b4 98 67 01 	mov    WORD PTR es:0x98b4,0x167
   16c4e:	b8 e0 16             	mov    ax,0x16e0
   16c51:	8e c0                	mov    es,ax
   16c53:	26 c7 06 ba 98 dc 05 	mov    WORD PTR es:0x98ba,0x5dc
   16c5a:	26 c7 06 b8 98 08 03 	mov    WORD PTR es:0x98b8,0x308
   16c61:	b8 e0 16             	mov    ax,0x16e0
   16c64:	8e c0                	mov    es,ax
   16c66:	26 c7 06 c2 98 dc 05 	mov    WORD PTR es:0x98c2,0x5dc
   16c6d:	26 c7 06 c0 98 e4 05 	mov    WORD PTR es:0x98c0,0x5e4
   16c74:	b8 e0 16             	mov    ax,0x16e0
   16c77:	8e c0                	mov    es,ax
   16c79:	26 c7 06 be 98 dc 05 	mov    WORD PTR es:0x98be,0x5dc
   16c80:	26 c7 06 bc 98 6b 06 	mov    WORD PTR es:0x98bc,0x66b
   16c87:	b8 e0 16             	mov    ax,0x16e0
   16c8a:	8e c0                	mov    es,ax
   16c8c:	26 c7 06 c6 98 dc 05 	mov    WORD PTR es:0x98c6,0x5dc
   16c93:	26 c7 06 c4 98 31 08 	mov    WORD PTR es:0x98c4,0x831
   16c9a:	b8 e0 16             	mov    ax,0x16e0
   16c9d:	8e c0                	mov    es,ax
   16c9f:	26 c7 06 ca 98 dc 05 	mov    WORD PTR es:0x98ca,0x5dc
   16ca6:	26 c7 06 c8 98 81 08 	mov    WORD PTR es:0x98c8,0x881
   16cad:	b8 e0 16             	mov    ax,0x16e0
   16cb0:	8e c0                	mov    es,ax
   16cb2:	26 c7 06 ce 98 dc 05 	mov    WORD PTR es:0x98ce,0x5dc
   16cb9:	26 c7 06 cc 98 04 00 	mov    WORD PTR es:0x98cc,0x4
   16cc0:	b8 e0 16             	mov    ax,0x16e0
   16cc3:	8e c0                	mov    es,ax
   16cc5:	26 c7 06 e0 98 87 00 	mov    WORD PTR es:0x98e0,0x87
   16ccc:	b8 e0 16             	mov    ax,0x16e0
   16ccf:	8e c0                	mov    es,ax
   16cd1:	26 c7 06 e2 98 3c 00 	mov    WORD PTR es:0x98e2,0x3c
   16cd8:	b8 e0 16             	mov    ax,0x16e0
   16cdb:	8e c0                	mov    es,ax
   16cdd:	26 c7 06 e4 98 25 00 	mov    WORD PTR es:0x98e4,0x25
   16ce4:	b8 e0 16             	mov    ax,0x16e0
   16ce7:	8e c0                	mov    es,ax
   16ce9:	26 c6 06 ed 98 f8    	mov    BYTE PTR es:0x98ed,0xf8
   16cef:	b8 e0 16             	mov    ax,0x16e0
   16cf2:	8e c0                	mov    es,ax
   16cf4:	26 c6 06 ec 98 ff    	mov    BYTE PTR es:0x98ec,0xff
   16cfa:	b8 e0 16             	mov    ax,0x16e0
   16cfd:	8e c0                	mov    es,ax
   16cff:	26 c6 06 ee 98 1f    	mov    BYTE PTR es:0x98ee,0x1f
   16d05:	b8 e0 16             	mov    ax,0x16e0
   16d08:	8e c0                	mov    es,ax
   16d0a:	26 c7 06 e6 98 bc 00 	mov    WORD PTR es:0x98e6,0xbc
   16d11:	b8 e0 16             	mov    ax,0x16e0
   16d14:	8e c0                	mov    es,ax
   16d16:	26 c6 06 f9 98 32    	mov    BYTE PTR es:0x98f9,0x32
   16d1c:	b8 e0 16             	mov    ax,0x16e0
   16d1f:	8e c0                	mov    es,ax
   16d21:	26 c6 06 ef 98 f4    	mov    BYTE PTR es:0x98ef,0xf4
   16d27:	b8 e0 16             	mov    ax,0x16e0
   16d2a:	8e c0                	mov    es,ax
   16d2c:	26 c7 06 d6 98 dc 05 	mov    WORD PTR es:0x98d6,0x5dc
   16d33:	26 c7 06 d4 98 f6 08 	mov    WORD PTR es:0x98d4,0x8f6
   16d3a:	b8 e0 16             	mov    ax,0x16e0
   16d3d:	8a 56 ff             	mov    dl,BYTE PTR [bp-0x1]
   16d40:	8e c0                	mov    es,ax
   16d42:	26 88 16 b2 98       	mov    BYTE PTR es:0x98b2,dl
   16d47:	fe 46 ff             	inc    BYTE PTR [bp-0x1]
   16d4a:	b8 e0 16             	mov    ax,0x16e0
   16d4d:	8e c0                	mov    es,ax
   16d4f:	26 c7 06 6e 98 dc 05 	mov    WORD PTR es:0x986e,0x5dc
   16d56:	26 c7 06 6c 98 67 01 	mov    WORD PTR es:0x986c,0x167
   16d5d:	b8 e0 16             	mov    ax,0x16e0
   16d60:	8e c0                	mov    es,ax
   16d62:	26 c7 06 72 98 dc 05 	mov    WORD PTR es:0x9872,0x5dc
   16d69:	26 c7 06 70 98 08 03 	mov    WORD PTR es:0x9870,0x308
   16d70:	b8 e0 16             	mov    ax,0x16e0
   16d73:	8e c0                	mov    es,ax
   16d75:	26 c7 06 7a 98 dc 05 	mov    WORD PTR es:0x987a,0x5dc
   16d7c:	26 c7 06 78 98 e4 05 	mov    WORD PTR es:0x9878,0x5e4
   16d83:	b8 e0 16             	mov    ax,0x16e0
   16d86:	8e c0                	mov    es,ax
   16d88:	26 c7 06 76 98 dc 05 	mov    WORD PTR es:0x9876,0x5dc
   16d8f:	26 c7 06 74 98 6b 06 	mov    WORD PTR es:0x9874,0x66b
   16d96:	b8 e0 16             	mov    ax,0x16e0
   16d99:	8e c0                	mov    es,ax
   16d9b:	26 c7 06 7e 98 dc 05 	mov    WORD PTR es:0x987e,0x5dc
   16da2:	26 c7 06 7c 98 31 08 	mov    WORD PTR es:0x987c,0x831
   16da9:	b8 e0 16             	mov    ax,0x16e0
   16dac:	8e c0                	mov    es,ax
   16dae:	26 c7 06 82 98 dc 05 	mov    WORD PTR es:0x9882,0x5dc
   16db5:	26 c7 06 80 98 81 08 	mov    WORD PTR es:0x9880,0x881
   16dbc:	b8 e0 16             	mov    ax,0x16e0
   16dbf:	8e c0                	mov    es,ax
   16dc1:	26 c7 06 86 98 dc 05 	mov    WORD PTR es:0x9886,0x5dc
   16dc8:	26 c7 06 84 98 04 00 	mov    WORD PTR es:0x9884,0x4
   16dcf:	b8 e0 16             	mov    ax,0x16e0
   16dd2:	8e c0                	mov    es,ax
   16dd4:	26 c7 06 98 98 87 00 	mov    WORD PTR es:0x9898,0x87
   16ddb:	b8 e0 16             	mov    ax,0x16e0
   16dde:	8e c0                	mov    es,ax
   16de0:	26 c7 06 9a 98 3c 00 	mov    WORD PTR es:0x989a,0x3c
   16de7:	b8 e0 16             	mov    ax,0x16e0
   16dea:	8e c0                	mov    es,ax
   16dec:	26 c7 06 9c 98 25 00 	mov    WORD PTR es:0x989c,0x25
   16df3:	b8 e0 16             	mov    ax,0x16e0
   16df6:	8e c0                	mov    es,ax
   16df8:	26 c6 06 a5 98 fc    	mov    BYTE PTR es:0x98a5,0xfc
   16dfe:	b8 e0 16             	mov    ax,0x16e0
   16e01:	8e c0                	mov    es,ax
   16e03:	26 c6 06 a4 98 fe    	mov    BYTE PTR es:0x98a4,0xfe
   16e09:	b8 e0 16             	mov    ax,0x16e0
   16e0c:	8e c0                	mov    es,ax
   16e0e:	26 c6 06 a6 98 f5    	mov    BYTE PTR es:0x98a6,0xf5
   16e14:	b8 e0 16             	mov    ax,0x16e0
   16e17:	8e c0                	mov    es,ax
   16e19:	26 c6 06 b1 98 33    	mov    BYTE PTR es:0x98b1,0x33
   16e1f:	b8 e0 16             	mov    ax,0x16e0
   16e22:	8e c0                	mov    es,ax
   16e24:	26 c6 06 a8 98 fa    	mov    BYTE PTR es:0x98a8,0xfa
   16e2a:	b8 e0 16             	mov    ax,0x16e0
   16e2d:	8e c0                	mov    es,ax
   16e2f:	26 c7 06 9e 98 9f 00 	mov    WORD PTR es:0x989e,0x9f
   16e36:	b8 e0 16             	mov    ax,0x16e0
   16e39:	8e c0                	mov    es,ax
   16e3b:	26 c7 06 8e 98 70 16 	mov    WORD PTR es:0x988e,0x1670
   16e42:	26 c7 06 8c 98 9d 00 	mov    WORD PTR es:0x988c,0x9d
   16e49:	b8 e0 16             	mov    ax,0x16e0
   16e4c:	8a 56 ff             	mov    dl,BYTE PTR [bp-0x1]
   16e4f:	8e c0                	mov    es,ax
   16e51:	26 88 16 22 98       	mov    BYTE PTR es:0x9822,dl
   16e56:	fe 46 ff             	inc    BYTE PTR [bp-0x1]
   16e59:	b8 e0 16             	mov    ax,0x16e0
   16e5c:	8e c0                	mov    es,ax
   16e5e:	26 c7 06 02 98 89 16 	mov    WORD PTR es:0x9802,0x1689
   16e65:	26 c7 06 00 98 98 00 	mov    WORD PTR es:0x9800,0x98
   16e6c:	b8 e0 16             	mov    ax,0x16e0
   16e6f:	8e c0                	mov    es,ax
   16e71:	26 c7 06 08 98 00 00 	mov    WORD PTR es:0x9808,0x0
   16e78:	b8 e0 16             	mov    ax,0x16e0
   16e7b:	8e c0                	mov    es,ax
   16e7d:	26 c7 06 0a 98 3e 00 	mov    WORD PTR es:0x980a,0x3e
   16e84:	b8 e0 16             	mov    ax,0x16e0
   16e87:	8e c0                	mov    es,ax
   16e89:	26 c7 06 0c 98 1d 00 	mov    WORD PTR es:0x980c,0x1d
   16e90:	b8 e0 16             	mov    ax,0x16e0
   16e93:	8a 56 ff             	mov    dl,BYTE PTR [bp-0x1]
   16e96:	8e c0                	mov    es,ax
   16e98:	26 88 16 4a 97       	mov    BYTE PTR es:0x974a,dl
   16e9d:	fe 46 ff             	inc    BYTE PTR [bp-0x1]
   16ea0:	b8 e0 16             	mov    ax,0x16e0
   16ea3:	8a 56 ff             	mov    dl,BYTE PTR [bp-0x1]
   16ea6:	8e c0                	mov    es,ax
   16ea8:	26 88 16 02 97       	mov    BYTE PTR es:0x9702,dl
   16ead:	fe 46 ff             	inc    BYTE PTR [bp-0x1]
   16eb0:	b8 e0 16             	mov    ax,0x16e0
   16eb3:	8e c0                	mov    es,ax
   16eb5:	26 c7 06 da 96 dc 05 	mov    WORD PTR es:0x96da,0x5dc
   16ebc:	26 c7 06 d8 96 cd 00 	mov    WORD PTR es:0x96d8,0xcd
   16ec3:	b8 e0 16             	mov    ax,0x16e0
   16ec6:	8e c0                	mov    es,ax
   16ec8:	26 c6 06 03 97 02    	mov    BYTE PTR es:0x9703,0x2
   16ece:	b8 e0 16             	mov    ax,0x16e0
   16ed1:	8a 56 ff             	mov    dl,BYTE PTR [bp-0x1]
   16ed4:	8e c0                	mov    es,ax
   16ed6:	26 88 16 ba 96       	mov    BYTE PTR es:0x96ba,dl
   16edb:	fe 46 ff             	inc    BYTE PTR [bp-0x1]
   16ede:	b8 e0 16             	mov    ax,0x16e0
   16ee1:	8e c0                	mov    es,ax
   16ee3:	26 c7 06 96 96 dc 05 	mov    WORD PTR es:0x9696,0x5dc
   16eea:	26 c7 06 94 96 f6 08 	mov    WORD PTR es:0x9694,0x8f6
   16ef1:	c9                   	leave
   16ef2:	cb                   	retf

analysis/phase-four/IST-resident-raw.bin:     file format binary


Disassembly of section .data:

00016ef3 <.data+0x6ef3>:
   16ef3:	55                   	push   bp
   16ef4:	8b ec                	mov    bp,sp
   16ef6:	83 ec 0c             	sub    sp,0xc
   16ef9:	83 7e 14 01          	cmp    WORD PTR [bp+0x14],0x1
   16efd:	75 07                	jne    0x16f06
   16eff:	c7 46 fe 0b 00       	mov    WORD PTR [bp-0x2],0xb
   16f04:	eb 05                	jmp    0x16f0b
   16f06:	c7 46 fe 07 00       	mov    WORD PTR [bp-0x2],0x7
   16f0b:	b8 e0 16             	mov    ax,0x16e0
   16f0e:	8e c0                	mov    es,ax
   16f10:	26 c7 06 d8 d5 01 00 	mov    WORD PTR es:0xd5d8,0x1
   16f17:	c7 46 f4 fd ff       	mov    WORD PTR [bp-0xc],0xfffd
   16f1c:	83 7e 08 02          	cmp    WORD PTR [bp+0x8],0x2
   16f20:	7e 05                	jle    0x16f27
   16f22:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   16f25:	eb 03                	jmp    0x16f2a
   16f27:	b8 02 00             	mov    ax,0x2
   16f2a:	89 46 08             	mov    WORD PTR [bp+0x8],ax
   16f2d:	b8 e0 16             	mov    ax,0x16e0
   16f30:	8e c0                	mov    es,ax
   16f32:	26 a1 dc d5          	mov    ax,es:0xd5dc
   16f36:	3b 46 08             	cmp    ax,WORD PTR [bp+0x8]
   16f39:	7d 0b                	jge    0x16f46
   16f3b:	b8 e0 16             	mov    ax,0x16e0
   16f3e:	8e c0                	mov    es,ax
   16f40:	26 a1 dc d5          	mov    ax,es:0xd5dc
   16f44:	eb 03                	jmp    0x16f49
   16f46:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   16f49:	3b 46 06             	cmp    ax,WORD PTR [bp+0x6]
   16f4c:	7d 1e                	jge    0x16f6c
   16f4e:	b8 e0 16             	mov    ax,0x16e0
   16f51:	8e c0                	mov    es,ax
   16f53:	26 a1 dc d5          	mov    ax,es:0xd5dc
   16f57:	3b 46 08             	cmp    ax,WORD PTR [bp+0x8]
   16f5a:	7d 0b                	jge    0x16f67
   16f5c:	b8 e0 16             	mov    ax,0x16e0
   16f5f:	8e c0                	mov    es,ax
   16f61:	26 a1 dc d5          	mov    ax,es:0xd5dc
   16f65:	eb 03                	jmp    0x16f6a
   16f67:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   16f6a:	eb 03                	jmp    0x16f6f
   16f6c:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   16f6f:	3d 01 00             	cmp    ax,0x1
   16f72:	7e 44                	jle    0x16fb8
   16f74:	b8 e0 16             	mov    ax,0x16e0
   16f77:	8e c0                	mov    es,ax
   16f79:	26 a1 dc d5          	mov    ax,es:0xd5dc
   16f7d:	3b 46 08             	cmp    ax,WORD PTR [bp+0x8]
   16f80:	7d 0b                	jge    0x16f8d
   16f82:	b8 e0 16             	mov    ax,0x16e0
   16f85:	8e c0                	mov    es,ax
   16f87:	26 a1 dc d5          	mov    ax,es:0xd5dc
   16f8b:	eb 03                	jmp    0x16f90
   16f8d:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   16f90:	3b 46 06             	cmp    ax,WORD PTR [bp+0x6]
   16f93:	7d 1e                	jge    0x16fb3
   16f95:	b8 e0 16             	mov    ax,0x16e0
   16f98:	8e c0                	mov    es,ax
   16f9a:	26 a1 dc d5          	mov    ax,es:0xd5dc
   16f9e:	3b 46 08             	cmp    ax,WORD PTR [bp+0x8]
   16fa1:	7d 0b                	jge    0x16fae
   16fa3:	b8 e0 16             	mov    ax,0x16e0
   16fa6:	8e c0                	mov    es,ax
   16fa8:	26 a1 dc d5          	mov    ax,es:0xd5dc
   16fac:	eb 03                	jmp    0x16fb1
   16fae:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   16fb1:	eb 03                	jmp    0x16fb6
   16fb3:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   16fb6:	eb 03                	jmp    0x16fbb
   16fb8:	b8 01 00             	mov    ax,0x1
   16fbb:	ba e0 16             	mov    dx,0x16e0
   16fbe:	8e c2                	mov    es,dx
   16fc0:	26 a3 dc d5          	mov    es:0xd5dc,ax
   16fc4:	ba e0 16             	mov    dx,0x16e0
   16fc7:	8e c2                	mov    es,dx
   16fc9:	26 a3 e4 d5          	mov    es:0xd5e4,ax
   16fcd:	ff 76 06             	push   WORD PTR [bp+0x6]
   16fd0:	16                   	push   ss
   16fd1:	8d 46 12             	lea    ax,[bp+0x12]
   16fd4:	50                   	push   ax
   16fd5:	b8 e0 16             	mov    ax,0x16e0
   16fd8:	8e c0                	mov    es,ax
   16fda:	26 ff 1e 2c 96       	call   DWORD PTR es:0x962c
   16fdf:	83 c4 06             	add    sp,0x6
   16fe2:	9a b6 06 7f 0c       	call   0xc7f:0x6b6
   16fe7:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   16fea:	3b 46 12             	cmp    ax,WORD PTR [bp+0x12]
   16fed:	7e 05                	jle    0x16ff4
   16fef:	b8 01 00             	mov    ax,0x1
   16ff2:	eb 02                	jmp    0x16ff6
   16ff4:	33 c0                	xor    ax,ax
   16ff6:	50                   	push   ax
   16ff7:	ff 76 fe             	push   WORD PTR [bp-0x2]
   16ffa:	ff 76 0a             	push   WORD PTR [bp+0xa]
   16ffd:	ff 76 08             	push   WORD PTR [bp+0x8]
   17000:	b8 e0 16             	mov    ax,0x16e0
   17003:	8e c0                	mov    es,ax
   17005:	26 ff 1e 30 96       	call   DWORD PTR es:0x9630
   1700a:	83 c4 08             	add    sp,0x8
   1700d:	b8 e0 16             	mov    ax,0x16e0
   17010:	8e c0                	mov    es,ax
   17012:	26 a1 d8 d5          	mov    ax,es:0xd5d8
   17016:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   17019:	c7 46 fa 01 00       	mov    WORD PTR [bp-0x6],0x1
   1701e:	eb 4e                	jmp    0x1706e
   17020:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   17023:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   17026:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   17029:	ff 76 fe             	push   WORD PTR [bp-0x2]
   1702c:	ff 76 0c             	push   WORD PTR [bp+0xc]
   1702f:	ff 76 f8             	push   WORD PTR [bp-0x8]
   17032:	ff 76 08             	push   WORD PTR [bp+0x8]
   17035:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   17038:	6b c0 64             	imul   ax,ax,0x64
   1703b:	05 d8 a5             	add    ax,0xa5d8
   1703e:	68 e0 16             	push   0x16e0
   17041:	50                   	push   ax
   17042:	b8 e0 16             	mov    ax,0x16e0
   17045:	8e c0                	mov    es,ax
   17047:	26 ff 1e 44 96       	call   DWORD PTR es:0x9644
   1704c:	83 c4 0c             	add    sp,0xc
   1704f:	ff 76 fe             	push   WORD PTR [bp-0x2]
   17052:	ff 76 f8             	push   WORD PTR [bp-0x8]
   17055:	ff 76 08             	push   WORD PTR [bp+0x8]
   17058:	ff 76 fc             	push   WORD PTR [bp-0x4]
   1705b:	b8 e0 16             	mov    ax,0x16e0
   1705e:	8e c0                	mov    es,ax
   17060:	26 ff 1e 38 96       	call   DWORD PTR es:0x9638
   17065:	83 c4 08             	add    sp,0x8
   17068:	ff 46 fc             	inc    WORD PTR [bp-0x4]
   1706b:	ff 46 fa             	inc    WORD PTR [bp-0x6]
   1706e:	b8 e0 16             	mov    ax,0x16e0
   17071:	8e c0                	mov    es,ax
   17073:	26 a1 d8 d5          	mov    ax,es:0xd5d8
   17077:	03 46 12             	add    ax,WORD PTR [bp+0x12]
   1707a:	48                   	dec    ax
   1707b:	3b 46 fc             	cmp    ax,WORD PTR [bp-0x4]
   1707e:	7c 06                	jl     0x17086
   17080:	83 7e fa 23          	cmp    WORD PTR [bp-0x6],0x23
   17084:	7c 9a                	jl     0x17020
   17086:	ff 76 fe             	push   WORD PTR [bp-0x2]
   17089:	ff 76 0e             	push   WORD PTR [bp+0xe]
   1708c:	b8 e0 16             	mov    ax,0x16e0
   1708f:	8e c0                	mov    es,ax
   17091:	26 a1 dc d5          	mov    ax,es:0xd5dc
   17095:	ba e0 16             	mov    dx,0x16e0
   17098:	8e c2                	mov    es,dx
   1709a:	26 2b 06 d8 d5       	sub    ax,WORD PTR es:0xd5d8
   1709f:	03 46 0a             	add    ax,WORD PTR [bp+0xa]
   170a2:	40                   	inc    ax
   170a3:	50                   	push   ax
   170a4:	ff 76 08             	push   WORD PTR [bp+0x8]
   170a7:	b8 e0 16             	mov    ax,0x16e0
   170aa:	8e c0                	mov    es,ax
   170ac:	26 a1 dc d5          	mov    ax,es:0xd5dc
   170b0:	6b c0 64             	imul   ax,ax,0x64
   170b3:	05 d8 a5             	add    ax,0xa5d8
   170b6:	68 e0 16             	push   0x16e0
   170b9:	50                   	push   ax
   170ba:	b8 e0 16             	mov    ax,0x16e0
   170bd:	8e c0                	mov    es,ax
   170bf:	26 ff 1e 44 96       	call   DWORD PTR es:0x9644
   170c4:	83 c4 0c             	add    sp,0xc
   170c7:	ff 76 fe             	push   WORD PTR [bp-0x2]
   170ca:	ff 76 0a             	push   WORD PTR [bp+0xa]
   170cd:	ff 76 08             	push   WORD PTR [bp+0x8]
   170d0:	b8 e0 16             	mov    ax,0x16e0
   170d3:	8e c0                	mov    es,ax
   170d5:	26 ff 1e 34 96       	call   DWORD PTR es:0x9634
   170da:	83 c4 06             	add    sp,0x6
   170dd:	9a e3 01 b7 0d       	call   0xdb7:0x1e3
   170e2:	b8 e0 16             	mov    ax,0x16e0
   170e5:	8e c0                	mov    es,ax
   170e7:	26 ff 36 62 96       	push   WORD PTR es:0x9662
   170ec:	26 ff 36 60 96       	push   WORD PTR es:0x9660
   170f1:	b8 e0 16             	mov    ax,0x16e0
   170f4:	8e c0                	mov    es,ax
   170f6:	26 ff 1e 4c 96       	call   DWORD PTR es:0x964c
   170fb:	83 c4 04             	add    sp,0x4
   170fe:	6a 01                	push   0x1
   17100:	9a 3f 1f 00 00       	call   0x0:0x1f3f
   17105:	59                   	pop    cx
   17106:	c1 f8 08             	sar    ax,0x8
   17109:	ba e0 16             	mov    dx,0x16e0
   1710c:	8e c2                	mov    es,dx
   1710e:	26 a3 d6 d5          	mov    es:0xd5d6,ax
   17112:	b8 e0 16             	mov    ax,0x16e0
   17115:	8e c0                	mov    es,ax
   17117:	26 a0 e3 e5          	mov    al,es:0xe5e3
   1711b:	50                   	push   ax
   1711c:	9a 6b 02 7f 0c       	call   0xc7f:0x26b
   17121:	59                   	pop    cx
   17122:	9a 15 05 7f 0c       	call   0xc7f:0x515
   17127:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   1712a:	b8 e0 16             	mov    ax,0x16e0
   1712d:	8e c0                	mov    es,ax
   1712f:	26 83 3e d6 d5 48    	cmp    WORD PTR es:0xd5d6,0x48
   17135:	74 1f                	je     0x17156
   17137:	b8 e0 16             	mov    ax,0x16e0
   1713a:	8e c0                	mov    es,ax
   1713c:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
   17142:	74 03                	je     0x17147
   17144:	e9 e6 00             	jmp    0x1722d
   17147:	6a 26                	push   0x26
   17149:	9a c7 05 7f 0c       	call   0xc7f:0x5c7
   1714e:	59                   	pop    cx
   1714f:	0a c0                	or     al,al
   17151:	75 03                	jne    0x17156
   17153:	e9 d7 00             	jmp    0x1722d
   17156:	b8 e0 16             	mov    ax,0x16e0
   17159:	8e c0                	mov    es,ax
   1715b:	26 a1 dc d5          	mov    ax,es:0xd5dc
   1715f:	ba e0 16             	mov    dx,0x16e0
   17162:	8e c2                	mov    es,dx
   17164:	26 3b 06 d8 d5       	cmp    ax,WORD PTR es:0xd5d8
   17169:	75 7b                	jne    0x171e6
   1716b:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   1716e:	3b 46 12             	cmp    ax,WORD PTR [bp+0x12]
   17171:	74 73                	je     0x171e6
   17173:	ff 76 06             	push   WORD PTR [bp+0x6]
   17176:	6a 01                	push   0x1
   17178:	6a ff                	push   0xffff
   1717a:	68 e0 16             	push   0x16e0
   1717d:	68 dc d5             	push   0xd5dc
   17180:	9a 25 00 94 16       	call   0x1694:0x25
   17185:	83 c4 0a             	add    sp,0xa
   17188:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   1718b:	2b 46 12             	sub    ax,WORD PTR [bp+0x12]
   1718e:	40                   	inc    ax
   1718f:	50                   	push   ax
   17190:	6a 01                	push   0x1
   17192:	6a ff                	push   0xffff
   17194:	68 e0 16             	push   0x16e0
   17197:	68 d8 d5             	push   0xd5d8
   1719a:	9a 25 00 94 16       	call   0x1694:0x25
   1719f:	83 c4 0a             	add    sp,0xa
   171a2:	b8 e0 16             	mov    ax,0x16e0
   171a5:	8e c0                	mov    es,ax
   171a7:	26 a1 dc d5          	mov    ax,es:0xd5dc
   171ab:	ba e0 16             	mov    dx,0x16e0
   171ae:	8e c2                	mov    es,dx
   171b0:	26 a3 e4 d5          	mov    es:0xd5e4,ax
   171b4:	b8 e0 16             	mov    ax,0x16e0
   171b7:	8e c0                	mov    es,ax
   171b9:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
   171bf:	74 03                	je     0x171c4
   171c1:	e9 1e fe             	jmp    0x16fe2
   171c4:	eb 10                	jmp    0x171d6
   171c6:	b8 e0 16             	mov    ax,0x16e0
   171c9:	8e c0                	mov    es,ax
   171cb:	26 a0 e3 e5          	mov    al,es:0xe5e3
   171cf:	50                   	push   ax
   171d0:	9a 6b 02 7f 0c       	call   0xc7f:0x26b
   171d5:	59                   	pop    cx
   171d6:	b8 e0 16             	mov    ax,0x16e0
   171d9:	8e c0                	mov    es,ax
   171db:	26 83 3e e5 e5 00    	cmp    WORD PTR es:0xe5e5,0x0
   171e1:	75 e3                	jne    0x171c6
   171e3:	e9 fc fd             	jmp    0x16fe2
   171e6:	ff 76 06             	push   WORD PTR [bp+0x6]
   171e9:	6a 01                	push   0x1
   171eb:	6a ff                	push   0xffff
   171ed:	68 e0 16             	push   0x16e0
   171f0:	68 dc d5             	push   0xd5dc
   171f3:	9a 25 00 94 16       	call   0x1694:0x25
   171f8:	83 c4 0a             	add    sp,0xa
   171fb:	b8 e0 16             	mov    ax,0x16e0
   171fe:	8e c0                	mov    es,ax
   17200:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
   17206:	74 03                	je     0x1720b
   17208:	e9 d7 fd             	jmp    0x16fe2
   1720b:	eb 10                	jmp    0x1721d
   1720d:	b8 e0 16             	mov    ax,0x16e0
   17210:	8e c0                	mov    es,ax
   17212:	26 a0 e3 e5          	mov    al,es:0xe5e3
   17216:	50                   	push   ax
   17217:	9a 6b 02 7f 0c       	call   0xc7f:0x26b
   1721c:	59                   	pop    cx
   1721d:	b8 e0 16             	mov    ax,0x16e0
   17220:	8e c0                	mov    es,ax
   17222:	26 83 3e e5 e5 00    	cmp    WORD PTR es:0xe5e5,0x0
   17228:	75 e3                	jne    0x1720d
   1722a:	e9 b5 fd             	jmp    0x16fe2
   1722d:	b8 e0 16             	mov    ax,0x16e0
   17230:	8e c0                	mov    es,ax
   17232:	26 83 3e d6 d5 50    	cmp    WORD PTR es:0xd5d6,0x50
   17238:	74 1f                	je     0x17259
   1723a:	b8 e0 16             	mov    ax,0x16e0
   1723d:	8e c0                	mov    es,ax
   1723f:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
   17245:	74 03                	je     0x1724a
   17247:	e9 eb 00             	jmp    0x17335
   1724a:	6a 27                	push   0x27
   1724c:	9a c7 05 7f 0c       	call   0xc7f:0x5c7
   17251:	59                   	pop    cx
   17252:	0a c0                	or     al,al
   17254:	75 03                	jne    0x17259
   17256:	e9 dc 00             	jmp    0x17335
   17259:	b8 e0 16             	mov    ax,0x16e0
   1725c:	ba e0 16             	mov    dx,0x16e0
   1725f:	8e c2                	mov    es,dx
   17261:	26 8b 16 d8 d5       	mov    dx,WORD PTR es:0xd5d8
   17266:	03 56 12             	add    dx,WORD PTR [bp+0x12]
   17269:	4a                   	dec    dx
   1726a:	8e c0                	mov    es,ax
   1726c:	26 39 16 dc d5       	cmp    WORD PTR es:0xd5dc,dx
   17271:	75 7b                	jne    0x172ee
   17273:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   17276:	3b 46 12             	cmp    ax,WORD PTR [bp+0x12]
   17279:	74 73                	je     0x172ee
   1727b:	ff 76 06             	push   WORD PTR [bp+0x6]
   1727e:	6a 01                	push   0x1
   17280:	6a 01                	push   0x1
   17282:	68 e0 16             	push   0x16e0
   17285:	68 dc d5             	push   0xd5dc
   17288:	9a 25 00 94 16       	call   0x1694:0x25
   1728d:	83 c4 0a             	add    sp,0xa
   17290:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   17293:	2b 46 12             	sub    ax,WORD PTR [bp+0x12]
   17296:	40                   	inc    ax
   17297:	50                   	push   ax
   17298:	6a 01                	push   0x1
   1729a:	6a 01                	push   0x1
   1729c:	68 e0 16             	push   0x16e0
   1729f:	68 d8 d5             	push   0xd5d8
   172a2:	9a 25 00 94 16       	call   0x1694:0x25
   172a7:	83 c4 0a             	add    sp,0xa
   172aa:	b8 e0 16             	mov    ax,0x16e0
   172ad:	8e c0                	mov    es,ax
   172af:	26 a1 dc d5          	mov    ax,es:0xd5dc
   172b3:	ba e0 16             	mov    dx,0x16e0
   172b6:	8e c2                	mov    es,dx
   172b8:	26 a3 e4 d5          	mov    es:0xd5e4,ax
   172bc:	b8 e0 16             	mov    ax,0x16e0
   172bf:	8e c0                	mov    es,ax
   172c1:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
   172c7:	74 03                	je     0x172cc
   172c9:	e9 16 fd             	jmp    0x16fe2
   172cc:	eb 10                	jmp    0x172de
   172ce:	b8 e0 16             	mov    ax,0x16e0
   172d1:	8e c0                	mov    es,ax
   172d3:	26 a0 e3 e5          	mov    al,es:0xe5e3
   172d7:	50                   	push   ax
   172d8:	9a 6b 02 7f 0c       	call   0xc7f:0x26b
   172dd:	59                   	pop    cx
   172de:	b8 e0 16             	mov    ax,0x16e0
   172e1:	8e c0                	mov    es,ax
   172e3:	26 83 3e e5 e5 00    	cmp    WORD PTR es:0xe5e5,0x0
   172e9:	75 e3                	jne    0x172ce
   172eb:	e9 f4 fc             	jmp    0x16fe2
   172ee:	ff 76 06             	push   WORD PTR [bp+0x6]
   172f1:	6a 01                	push   0x1
   172f3:	6a 01                	push   0x1
   172f5:	68 e0 16             	push   0x16e0
   172f8:	68 dc d5             	push   0xd5dc
   172fb:	9a 25 00 94 16       	call   0x1694:0x25
   17300:	83 c4 0a             	add    sp,0xa
   17303:	b8 e0 16             	mov    ax,0x16e0
   17306:	8e c0                	mov    es,ax
   17308:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
   1730e:	74 03                	je     0x17313
   17310:	e9 cf fc             	jmp    0x16fe2
   17313:	eb 10                	jmp    0x17325
   17315:	b8 e0 16             	mov    ax,0x16e0
   17318:	8e c0                	mov    es,ax
   1731a:	26 a0 e3 e5          	mov    al,es:0xe5e3
   1731e:	50                   	push   ax
   1731f:	9a 6b 02 7f 0c       	call   0xc7f:0x26b
   17324:	59                   	pop    cx
   17325:	b8 e0 16             	mov    ax,0x16e0
   17328:	8e c0                	mov    es,ax
   1732a:	26 83 3e e5 e5 00    	cmp    WORD PTR es:0xe5e5,0x0
   17330:	75 e3                	jne    0x17315
   17332:	e9 ad fc             	jmp    0x16fe2
   17335:	b8 e0 16             	mov    ax,0x16e0
   17338:	8e c0                	mov    es,ax
   1733a:	26 83 3e d6 d5 01    	cmp    WORD PTR es:0xd5d6,0x1
   17340:	74 0d                	je     0x1734f
   17342:	b8 e0 16             	mov    ax,0x16e0
   17345:	8e c0                	mov    es,ax
   17347:	26 83 3e e5 e5 02    	cmp    WORD PTR es:0xe5e5,0x2
   1734d:	75 23                	jne    0x17372
   1734f:	b8 e0 16             	mov    ax,0x16e0
   17352:	33 d2                	xor    dx,dx
   17354:	8e c0                	mov    es,ax
   17356:	26 89 16 e4 d5       	mov    WORD PTR es:0xd5e4,dx
   1735b:	8b c2                	mov    ax,dx
   1735d:	ba e0 16             	mov    dx,0x16e0
   17360:	8e c2                	mov    es,dx
   17362:	26 a3 d8 d5          	mov    es:0xd5d8,ax
   17366:	ba e0 16             	mov    dx,0x16e0
   17369:	8e c2                	mov    es,dx
   1736b:	26 a3 dc d5          	mov    es:0xd5dc,ax
   1736f:	e9 85 01             	jmp    0x174f7
   17372:	b8 e0 16             	mov    ax,0x16e0
   17375:	8e c0                	mov    es,ax
   17377:	26 83 3e d6 d5 1c    	cmp    WORD PTR es:0xd5d6,0x1c
   1737d:	75 03                	jne    0x17382
   1737f:	e9 75 01             	jmp    0x174f7
   17382:	b8 e0 16             	mov    ax,0x16e0
   17385:	8e c0                	mov    es,ax
   17387:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
   1738d:	75 0f                	jne    0x1739e
   1738f:	83 7e f6 23          	cmp    WORD PTR [bp-0xa],0x23
   17393:	7d 09                	jge    0x1739e
   17395:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   17399:	74 03                	je     0x1739e
   1739b:	e9 59 01             	jmp    0x174f7
   1739e:	b8 e0 16             	mov    ax,0x16e0
   173a1:	8e c0                	mov    es,ax
   173a3:	26 a1 dc d5          	mov    ax,es:0xd5dc
   173a7:	3b 46 f6             	cmp    ax,WORD PTR [bp-0xa]
   173aa:	74 70                	je     0x1741c
   173ac:	83 7e f6 23          	cmp    WORD PTR [bp-0xa],0x23
   173b0:	7d 6a                	jge    0x1741c
   173b2:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   173b6:	74 64                	je     0x1741c
   173b8:	b8 e0 16             	mov    ax,0x16e0
   173bb:	8e c0                	mov    es,ax
   173bd:	26 83 3e d6 d5 00    	cmp    WORD PTR es:0xd5d6,0x0
   173c3:	74 3b                	je     0x17400
   173c5:	b8 e0 16             	mov    ax,0x16e0
   173c8:	8e c0                	mov    es,ax
   173ca:	26 8b 1e dc d5       	mov    bx,WORD PTR es:0xd5dc
   173cf:	c1 e3 03             	shl    bx,0x3
   173d2:	b8 e0 16             	mov    ax,0x16e0
   173d5:	8e c0                	mov    es,ax
   173d7:	26 ff b7 f7 e5       	push   WORD PTR es:[bx-0x1a09]
   173dc:	b8 e0 16             	mov    ax,0x16e0
   173df:	8e c0                	mov    es,ax
   173e1:	26 ff 36 e9 e5       	push   WORD PTR es:0xe5e9
   173e6:	9a 48 00 ba 16       	call   0x16ba:0x48
   173eb:	83 c4 04             	add    sp,0x4
   173ee:	b8 e0 16             	mov    ax,0x16e0
   173f1:	8e c0                	mov    es,ax
   173f3:	26 a0 e3 e5          	mov    al,es:0xe5e3
   173f7:	50                   	push   ax
   173f8:	9a 6b 02 7f 0c       	call   0xc7f:0x26b
   173fd:	59                   	pop    cx
   173fe:	eb 1c                	jmp    0x1741c
   17400:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   17403:	3b 46 f6             	cmp    ax,WORD PTR [bp-0xa]
   17406:	74 14                	je     0x1741c
   17408:	9a 15 05 7f 0c       	call   0xc7f:0x515
   1740d:	ba e0 16             	mov    dx,0x16e0
   17410:	8e c2                	mov    es,dx
   17412:	26 a3 dc d5          	mov    es:0xd5dc,ax
   17416:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   17419:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   1741c:	b8 e0 16             	mov    ax,0x16e0
   1741f:	8e c0                	mov    es,ax
   17421:	26 a1 e4 d5          	mov    ax,es:0xd5e4
   17425:	ba e0 16             	mov    dx,0x16e0
   17428:	8e c2                	mov    es,dx
   1742a:	26 3b 06 dc d5       	cmp    ax,WORD PTR es:0xd5dc
   1742f:	75 03                	jne    0x17434
   17431:	e9 b0 00             	jmp    0x174e4
   17434:	b8 e0 16             	mov    ax,0x16e0
   17437:	8e c0                	mov    es,ax
   17439:	26 83 3e dc d5 23    	cmp    WORD PTR es:0xd5dc,0x23
   1743f:	7c 03                	jl     0x17444
   17441:	e9 a0 00             	jmp    0x174e4
   17444:	ff 76 fe             	push   WORD PTR [bp-0x2]
   17447:	ff 76 0c             	push   WORD PTR [bp+0xc]
   1744a:	b8 e0 16             	mov    ax,0x16e0
   1744d:	8b 56 0a             	mov    dx,WORD PTR [bp+0xa]
   17450:	8e c0                	mov    es,ax
   17452:	26 03 16 e4 d5       	add    dx,WORD PTR es:0xd5e4
   17457:	b8 e0 16             	mov    ax,0x16e0
   1745a:	8e c0                	mov    es,ax
   1745c:	26 2b 16 d8 d5       	sub    dx,WORD PTR es:0xd5d8
   17461:	42                   	inc    dx
   17462:	52                   	push   dx
   17463:	ff 76 08             	push   WORD PTR [bp+0x8]
   17466:	b8 e0 16             	mov    ax,0x16e0
   17469:	8e c0                	mov    es,ax
   1746b:	26 a1 e4 d5          	mov    ax,es:0xd5e4
   1746f:	6b c0 64             	imul   ax,ax,0x64
   17472:	05 d8 a5             	add    ax,0xa5d8
   17475:	68 e0 16             	push   0x16e0
   17478:	50                   	push   ax
   17479:	b8 e0 16             	mov    ax,0x16e0
   1747c:	8e c0                	mov    es,ax
   1747e:	26 ff 1e 44 96       	call   DWORD PTR es:0x9644
   17483:	83 c4 0c             	add    sp,0xc
   17486:	ff 76 fe             	push   WORD PTR [bp-0x2]
   17489:	ff 76 0e             	push   WORD PTR [bp+0xe]
   1748c:	b8 e0 16             	mov    ax,0x16e0
   1748f:	8b 56 0a             	mov    dx,WORD PTR [bp+0xa]
   17492:	8e c0                	mov    es,ax
   17494:	26 03 16 dc d5       	add    dx,WORD PTR es:0xd5dc
   17499:	b8 e0 16             	mov    ax,0x16e0
   1749c:	8e c0                	mov    es,ax
   1749e:	26 2b 16 d8 d5       	sub    dx,WORD PTR es:0xd5d8
   174a3:	42                   	inc    dx
   174a4:	52                   	push   dx
   174a5:	ff 76 08             	push   WORD PTR [bp+0x8]
   174a8:	b8 e0 16             	mov    ax,0x16e0
   174ab:	8e c0                	mov    es,ax
   174ad:	26 a1 dc d5          	mov    ax,es:0xd5dc
   174b1:	6b c0 64             	imul   ax,ax,0x64
   174b4:	05 d8 a5             	add    ax,0xa5d8
   174b7:	68 e0 16             	push   0x16e0
   174ba:	50                   	push   ax
   174bb:	b8 e0 16             	mov    ax,0x16e0
   174be:	8e c0                	mov    es,ax
   174c0:	26 ff 1e 44 96       	call   DWORD PTR es:0x9644
   174c5:	83 c4 0c             	add    sp,0xc
   174c8:	b8 e0 16             	mov    ax,0x16e0
   174cb:	8e c0                	mov    es,ax
   174cd:	26 ff 1e 3c 96       	call   DWORD PTR es:0x963c
   174d2:	b8 e0 16             	mov    ax,0x16e0
   174d5:	8e c0                	mov    es,ax
   174d7:	26 a1 dc d5          	mov    ax,es:0xd5dc
   174db:	ba e0 16             	mov    dx,0x16e0
   174de:	8e c2                	mov    es,dx
   174e0:	26 a3 e4 d5          	mov    es:0xd5e4,ax
   174e4:	b8 e0 16             	mov    ax,0x16e0
   174e7:	8e c0                	mov    es,ax
   174e9:	26 83 3e d6 d5 00    	cmp    WORD PTR es:0xd5d6,0x0
   174ef:	75 03                	jne    0x174f4
   174f1:	e9 ee fb             	jmp    0x170e2
   174f4:	e9 e6 fb             	jmp    0x170dd
   174f7:	9a 14 07 7f 0c       	call   0xc7f:0x714
   174fc:	ff 76 fe             	push   WORD PTR [bp-0x2]
   174ff:	ff 76 10             	push   WORD PTR [bp+0x10]
   17502:	b8 e0 16             	mov    ax,0x16e0
   17505:	8e c0                	mov    es,ax
   17507:	26 a1 dc d5          	mov    ax,es:0xd5dc
   1750b:	ba e0 16             	mov    dx,0x16e0
   1750e:	8e c2                	mov    es,dx
   17510:	26 2b 06 d8 d5       	sub    ax,WORD PTR es:0xd5d8
   17515:	03 46 0a             	add    ax,WORD PTR [bp+0xa]
   17518:	40                   	inc    ax
   17519:	50                   	push   ax
   1751a:	ff 76 08             	push   WORD PTR [bp+0x8]
   1751d:	b8 e0 16             	mov    ax,0x16e0
   17520:	8e c0                	mov    es,ax
   17522:	26 a1 dc d5          	mov    ax,es:0xd5dc
   17526:	6b c0 64             	imul   ax,ax,0x64
   17529:	05 d8 a5             	add    ax,0xa5d8
   1752c:	68 e0 16             	push   0x16e0
   1752f:	50                   	push   ax
   17530:	b8 e0 16             	mov    ax,0x16e0
   17533:	8e c0                	mov    es,ax
   17535:	26 ff 1e 44 96       	call   DWORD PTR es:0x9644
   1753a:	83 c4 0c             	add    sp,0xc
   1753d:	b8 e0 16             	mov    ax,0x16e0
   17540:	8e c0                	mov    es,ax
   17542:	26 ff 1e 40 96       	call   DWORD PTR es:0x9640
   17547:	9a e3 01 b7 0d       	call   0xdb7:0x1e3
   1754c:	c9                   	leave
   1754d:	cb                   	retf

analysis/phase-four/IST-resident-raw.bin:     file format binary


Disassembly of section .data:

00019d62 <.data+0x9d62>:
   19d62:	55                   	push   bp
   19d63:	8b ec                	mov    bp,sp
   19d65:	56                   	push   si
   19d66:	57                   	push   di
   19d67:	1e                   	push   ds
   19d68:	8b 4e 0e             	mov    cx,WORD PTR [bp+0xe]
   19d6b:	c5 76 06             	lds    si,DWORD PTR [bp+0x6]
   19d6e:	c4 7e 0a             	les    di,DWORD PTR [bp+0xa]
   19d71:	8a 66 12             	mov    ah,BYTE PTR [bp+0x12]
   19d74:	8a 56 10             	mov    dl,BYTE PTR [bp+0x10]
   19d77:	ac                   	lods   al,BYTE PTR ds:[si]
   19d78:	38 d0                	cmp    al,dl
   19d7a:	75 08                	jne    0x19d84
   19d7c:	88 e0                	mov    al,ah
   19d7e:	aa                   	stos   BYTE PTR es:[di],al
   19d7f:	e2 f6                	loop   0x19d77
   19d81:	1f                   	pop    ds
   19d82:	eb 04                	jmp    0x19d88
   19d84:	47                   	inc    di
   19d85:	e2 f0                	loop   0x19d77
   19d87:	1f                   	pop    ds
   19d88:	5f                   	pop    di
   19d89:	5e                   	pop    si
   19d8a:	5d                   	pop    bp
   19d8b:	cb                   	retf

analysis/phase-four/IST-resident-raw.bin:     file format binary


Disassembly of section .data:

0001cd05 <.data+0xcd05>:
   1cd05:	c8 06 00 00          	enter  0x6,0x0
   1cd09:	83 3e e3 e5 2c       	cmp    WORD PTR ds:0xe5e3,0x2c
   1cd0e:	7d 0c                	jge    0x1cd1c
   1cd10:	83 3e e3 e5 21       	cmp    WORD PTR ds:0xe5e3,0x21
   1cd15:	74 05                	je     0x1cd1c
   1cd17:	b8 07 00             	mov    ax,0x7
   1cd1a:	eb 02                	jmp    0x1cd1e
   1cd1c:	33 c0                	xor    ax,ax
   1cd1e:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   1cd21:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   1cd24:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   1cd27:	01 06 e9 e5          	add    WORD PTR ds:0xe5e9,ax
   1cd2b:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   1cd2e:	01 06 e7 e5          	add    WORD PTR ds:0xe5e7,ax
   1cd32:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   1cd37:	eb 5b                	jmp    0x1cd94
   1cd39:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   1cd3c:	c1 e3 03             	shl    bx,0x3
   1cd3f:	b8 e0 16             	mov    ax,0x16e0
   1cd42:	8e c0                	mov    es,ax
   1cd44:	26 8b 87 f5 e5       	mov    ax,WORD PTR es:[bx-0x1a0b]
   1cd49:	3b 06 e9 e5          	cmp    ax,WORD PTR ds:0xe5e9
   1cd4d:	7f 42                	jg     0x1cd91
   1cd4f:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   1cd52:	c1 e3 03             	shl    bx,0x3
   1cd55:	b8 e0 16             	mov    ax,0x16e0
   1cd58:	8e c0                	mov    es,ax
   1cd5a:	26 8b 87 f9 e5       	mov    ax,WORD PTR es:[bx-0x1a07]
   1cd5f:	3b 06 e9 e5          	cmp    ax,WORD PTR ds:0xe5e9
   1cd63:	7c 2c                	jl     0x1cd91
   1cd65:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   1cd68:	c1 e3 03             	shl    bx,0x3
   1cd6b:	b8 e0 16             	mov    ax,0x16e0
   1cd6e:	8e c0                	mov    es,ax
   1cd70:	26 8b 87 f7 e5       	mov    ax,WORD PTR es:[bx-0x1a09]
   1cd75:	3b 06 e7 e5          	cmp    ax,WORD PTR ds:0xe5e7
   1cd79:	7f 16                	jg     0x1cd91
   1cd7b:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   1cd7e:	c1 e3 03             	shl    bx,0x3
   1cd81:	b8 e0 16             	mov    ax,0x16e0
   1cd84:	8e c0                	mov    es,ax
   1cd86:	26 8b 87 fb e5       	mov    ax,WORD PTR es:[bx-0x1a05]
   1cd8b:	3b 06 e7 e5          	cmp    ax,WORD PTR ds:0xe5e7
   1cd8f:	7d 09                	jge    0x1cd9a
   1cd91:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   1cd94:	83 7e fe 28          	cmp    WORD PTR [bp-0x2],0x28
   1cd98:	7e 9f                	jle    0x1cd39
   1cd9a:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   1cd9d:	29 06 e9 e5          	sub    WORD PTR ds:0xe5e9,ax
   1cda1:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   1cda4:	29 06 e7 e5          	sub    WORD PTR ds:0xe5e7,ax
   1cda8:	83 7e fe 28          	cmp    WORD PTR [bp-0x2],0x28
   1cdac:	7e 04                	jle    0x1cdb2
   1cdae:	33 c0                	xor    ax,ax
   1cdb0:	eb 03                	jmp    0x1cdb5
   1cdb2:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   1cdb5:	c9                   	leave
   1cdb6:	cb                   	retf

analysis/phase-four/IST-resident-raw.bin:     file format binary


Disassembly of section .data:

0001cf2f <.data+0xcf2f>:
   1cf2f:	c8 08 00 00          	enter  0x8,0x0
   1cf33:	a1 18 73             	mov    ax,ds:0x7318
   1cf36:	03 46 08             	add    ax,WORD PTR [bp+0x8]
   1cf39:	3b 06 1e 73          	cmp    ax,WORD PTR ds:0x731e
   1cf3d:	7e 0a                	jle    0x1cf49
   1cf3f:	a1 1e 73             	mov    ax,ds:0x731e
   1cf42:	2b 06 18 73          	sub    ax,WORD PTR ds:0x7318
   1cf46:	89 46 08             	mov    WORD PTR [bp+0x8],ax
   1cf49:	a1 18 73             	mov    ax,ds:0x7318
   1cf4c:	03 46 08             	add    ax,WORD PTR [bp+0x8]
   1cf4f:	7d 08                	jge    0x1cf59
   1cf51:	a1 18 73             	mov    ax,ds:0x7318
   1cf54:	f7 d8                	neg    ax
   1cf56:	89 46 08             	mov    WORD PTR [bp+0x8],ax
   1cf59:	a1 1a 73             	mov    ax,ds:0x731a
   1cf5c:	03 46 0a             	add    ax,WORD PTR [bp+0xa]
   1cf5f:	3b 06 20 73          	cmp    ax,WORD PTR ds:0x7320
   1cf63:	7e 0a                	jle    0x1cf6f
   1cf65:	a1 20 73             	mov    ax,ds:0x7320
   1cf68:	2b 06 1a 73          	sub    ax,WORD PTR ds:0x731a
   1cf6c:	89 46 0a             	mov    WORD PTR [bp+0xa],ax
   1cf6f:	a1 1a 73             	mov    ax,ds:0x731a
   1cf72:	03 46 0a             	add    ax,WORD PTR [bp+0xa]
   1cf75:	7d 08                	jge    0x1cf7f
   1cf77:	a1 1a 73             	mov    ax,ds:0x731a
   1cf7a:	f7 d8                	neg    ax
   1cf7c:	89 46 0a             	mov    WORD PTR [bp+0xa],ax
   1cf7f:	b8 e0 16             	mov    ax,0x16e0
   1cf82:	8e c0                	mov    es,ax
   1cf84:	26 a1 4a e7          	mov    ax,es:0xe74a
   1cf88:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   1cf8b:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   1cf90:	e9 c0 00             	jmp    0x1d053
   1cf93:	83 7e 08 00          	cmp    WORD PTR [bp+0x8],0x0
   1cf97:	74 64                	je     0x1cffd
   1cf99:	6a 00                	push   0x0
   1cf9b:	ff 76 06             	push   WORD PTR [bp+0x6]
   1cf9e:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   1cfa1:	99                   	cwd
   1cfa2:	50                   	push   ax
   1cfa3:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   1cfa6:	52                   	push   dx
   1cfa7:	99                   	cwd
   1cfa8:	59                   	pop    cx
   1cfa9:	5b                   	pop    bx
   1cfaa:	9a 42 12 00 00       	call   0x0:0x1242
   1cfaf:	52                   	push   dx
   1cfb0:	50                   	push   ax
   1cfb1:	9a df 12 00 00       	call   0x0:0x12df
   1cfb6:	8b 16 18 73          	mov    dx,WORD PTR ds:0x7318
   1cfba:	03 d0                	add    dx,ax
   1cfbc:	89 56 fc             	mov    WORD PTR [bp-0x4],dx
   1cfbf:	c7 46 f8 00 00       	mov    WORD PTR [bp-0x8],0x0
   1cfc4:	eb 21                	jmp    0x1cfe7
   1cfc6:	c4 1e ef e5          	les    bx,DWORD PTR ds:0xe5ef
   1cfca:	03 5e f8             	add    bx,WORD PTR [bp-0x8]
   1cfcd:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   1cfd0:	b4 00                	mov    ah,0x0
   1cfd2:	f7 6e fc             	imul   WORD PTR [bp-0x4]
   1cfd5:	99                   	cwd
   1cfd6:	f7 3e 1e 73          	idiv   WORD PTR ds:0x731e
   1cfda:	c4 1e eb e5          	les    bx,DWORD PTR ds:0xe5eb
   1cfde:	03 5e f8             	add    bx,WORD PTR [bp-0x8]
   1cfe1:	26 88 07             	mov    BYTE PTR es:[bx],al
   1cfe4:	ff 46 f8             	inc    WORD PTR [bp-0x8]
   1cfe7:	81 7e f8 00 03       	cmp    WORD PTR [bp-0x8],0x300
   1cfec:	72 d8                	jb     0x1cfc6
   1cfee:	ff 36 ed e5          	push   WORD PTR ds:0xe5ed
   1cff2:	ff 36 eb e5          	push   WORD PTR ds:0xe5eb
   1cff6:	0e                   	push   cs
   1cff7:	e8 46 f8             	call   0x1c840
   1cffa:	83 c4 04             	add    sp,0x4
   1cffd:	83 7e 0a 00          	cmp    WORD PTR [bp+0xa],0x0
   1d001:	74 41                	je     0x1d044
   1d003:	b8 e0 16             	mov    ax,0x16e0
   1d006:	8e c0                	mov    es,ax
   1d008:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   1d00e:	74 34                	je     0x1d044
   1d010:	6a ff                	push   0xffff
   1d012:	6a ff                	push   0xffff
   1d014:	6a 00                	push   0x0
   1d016:	ff 76 06             	push   WORD PTR [bp+0x6]
   1d019:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   1d01c:	99                   	cwd
   1d01d:	50                   	push   ax
   1d01e:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   1d021:	52                   	push   dx
   1d022:	99                   	cwd
   1d023:	59                   	pop    cx
   1d024:	5b                   	pop    bx
   1d025:	9a 42 12 00 00       	call   0x0:0x1242
   1d02a:	52                   	push   dx
   1d02b:	50                   	push   ax
   1d02c:	9a df 12 00 00       	call   0x0:0x12df
   1d031:	50                   	push   ax
   1d032:	a1 1a 73             	mov    ax,ds:0x731a
   1d035:	52                   	push   dx
   1d036:	99                   	cwd
   1d037:	5b                   	pop    bx
   1d038:	59                   	pop    cx
   1d039:	03 c1                	add    ax,cx
   1d03b:	13 d3                	adc    dx,bx
   1d03d:	52                   	push   dx
   1d03e:	50                   	push   ax
   1d03f:	9a 25 16 f6 0e       	call   0xef6:0x1625
   1d044:	b8 e0 16             	mov    ax,0x16e0
   1d047:	8e c0                	mov    es,ax
   1d049:	26 a1 4a e7          	mov    ax,es:0xe74a
   1d04d:	2b 46 fa             	sub    ax,WORD PTR [bp-0x6]
   1d050:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   1d053:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   1d056:	3b 46 06             	cmp    ax,WORD PTR [bp+0x6]
   1d059:	73 03                	jae    0x1d05e
   1d05b:	e9 35 ff             	jmp    0x1cf93
   1d05e:	83 7e 08 00          	cmp    WORD PTR [bp+0x8],0x0
   1d062:	74 53                	je     0x1d0b7
   1d064:	c7 46 f8 00 00       	mov    WORD PTR [bp-0x8],0x0
   1d069:	eb 36                	jmp    0x1d0a1
   1d06b:	a1 1e 73             	mov    ax,ds:0x731e
   1d06e:	99                   	cwd
   1d06f:	52                   	push   dx
   1d070:	50                   	push   ax
   1d071:	c4 1e ef e5          	les    bx,DWORD PTR ds:0xe5ef
   1d075:	03 5e f8             	add    bx,WORD PTR [bp-0x8]
   1d078:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   1d07b:	b4 00                	mov    ah,0x0
   1d07d:	33 c9                	xor    cx,cx
   1d07f:	50                   	push   ax
   1d080:	a1 18 73             	mov    ax,ds:0x7318
   1d083:	03 46 08             	add    ax,WORD PTR [bp+0x8]
   1d086:	99                   	cwd
   1d087:	5b                   	pop    bx
   1d088:	9a 42 12 00 00       	call   0x0:0x1242
   1d08d:	52                   	push   dx
   1d08e:	50                   	push   ax
   1d08f:	9a df 12 00 00       	call   0x0:0x12df
   1d094:	c4 1e eb e5          	les    bx,DWORD PTR ds:0xe5eb
   1d098:	03 5e f8             	add    bx,WORD PTR [bp-0x8]
   1d09b:	26 88 07             	mov    BYTE PTR es:[bx],al
   1d09e:	ff 46 f8             	inc    WORD PTR [bp-0x8]
   1d0a1:	81 7e f8 00 03       	cmp    WORD PTR [bp-0x8],0x300
   1d0a6:	72 c3                	jb     0x1d06b
   1d0a8:	ff 36 ed e5          	push   WORD PTR ds:0xe5ed
   1d0ac:	ff 36 eb e5          	push   WORD PTR ds:0xe5eb
   1d0b0:	0e                   	push   cs
   1d0b1:	e8 8c f7             	call   0x1c840
   1d0b4:	83 c4 04             	add    sp,0x4
   1d0b7:	83 7e 0a 00          	cmp    WORD PTR [bp+0xa],0x0
   1d0bb:	74 1f                	je     0x1d0dc
   1d0bd:	b8 e0 16             	mov    ax,0x16e0
   1d0c0:	8e c0                	mov    es,ax
   1d0c2:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   1d0c8:	74 12                	je     0x1d0dc
   1d0ca:	6a ff                	push   0xffff
   1d0cc:	6a ff                	push   0xffff
   1d0ce:	a1 1a 73             	mov    ax,ds:0x731a
   1d0d1:	03 46 0a             	add    ax,WORD PTR [bp+0xa]
   1d0d4:	99                   	cwd
   1d0d5:	52                   	push   dx
   1d0d6:	50                   	push   ax
   1d0d7:	9a 25 16 f6 0e       	call   0xef6:0x1625
   1d0dc:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   1d0df:	01 06 18 73          	add    WORD PTR ds:0x7318,ax
   1d0e3:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   1d0e6:	01 06 1a 73          	add    WORD PTR ds:0x731a,ax
   1d0ea:	c9                   	leave
   1d0eb:	cb                   	retf

analysis/phase-four/IST-resident-raw.bin:     file format binary


Disassembly of section .data:

0001dd64 <.data+0xdd64>:
   1dd64:	50                   	push   ax
   1dd65:	53                   	push   bx
   1dd66:	51                   	push   cx
   1dd67:	52                   	push   dx
   1dd68:	06                   	push   es
   1dd69:	1e                   	push   ds
   1dd6a:	56                   	push   si
   1dd6b:	57                   	push   di
   1dd6c:	55                   	push   bp
   1dd6d:	bd e0 16             	mov    bp,0x16e0
   1dd70:	8e dd                	mov    ds,bp
   1dd72:	66 50                	push   eax
   1dd74:	66 a1 4a e7          	mov    eax,ds:0xe74a
   1dd78:	66 05 0a 00 00 00    	add    eax,0xa
   1dd7e:	66 a3 4a e7          	mov    ds:0xe74a,eax
   1dd82:	66 58                	pop    eax
   1dd84:	5d                   	pop    bp
   1dd85:	5f                   	pop    di
   1dd86:	5e                   	pop    si
   1dd87:	1f                   	pop    ds
   1dd88:	07                   	pop    es
   1dd89:	5a                   	pop    dx
   1dd8a:	59                   	pop    cx
   1dd8b:	5b                   	pop    bx
   1dd8c:	58                   	pop    ax
   1dd8d:	cf                   	iret
   1dd8e:	68 b7 0d             	push   0xdb7
   1dd91:	68 f4 01             	push   0x1f4
   1dd94:	6a 00                	push   0x0
   1dd96:	68 9b 2e             	push   0x2e9b
   1dd99:	9a 78 01 ef 10       	call   0x10ef:0x178
   1dd9e:	cb                   	retf

analysis/phase-four/IST-resident-raw.bin:     file format binary


Disassembly of section .data:

00021950 <.data+0x11950>:
   21950:	c8 16 00 00          	enter  0x16,0x0
   21954:	1e                   	push   ds
   21955:	b8 e0 16             	mov    ax,0x16e0
   21958:	8e d8                	mov    ds,ax
   2195a:	a1 f2 86             	mov    ax,ds:0x86f2
   2195d:	8b 16 f0 86          	mov    dx,WORD PTR ds:0x86f0
   21961:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   21964:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
   21967:	a1 f2 86             	mov    ax,ds:0x86f2
   2196a:	8b 16 f0 86          	mov    dx,WORD PTR ds:0x86f0
   2196e:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   21971:	89 56 f4             	mov    WORD PTR [bp-0xc],dx
   21974:	c7 46 f2 00 02       	mov    WORD PTR [bp-0xe],0x200
   21979:	c7 46 f0 00 00       	mov    WORD PTR [bp-0x10],0x0
   2197e:	c7 46 ea 00 00       	mov    WORD PTR [bp-0x16],0x0
   21983:	83 3e 00 87 01       	cmp    WORD PTR ds:0x8700,0x1
   21988:	74 06                	je     0x21990
   2198a:	b8 ff ff             	mov    ax,0xffff
   2198d:	e9 c6 01             	jmp    0x21b56
   21990:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   21993:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   21996:	83 c2 0f             	add    dx,0xf
   21999:	15 00 00             	adc    ax,0x0
   2199c:	83 e2 f0             	and    dx,0xfff0
   2199f:	25 ff ff             	and    ax,0xffff
   219a2:	89 46 08             	mov    WORD PTR [bp+0x8],ax
   219a5:	89 56 06             	mov    WORD PTR [bp+0x6],dx
   219a8:	83 7e 08 00          	cmp    WORD PTR [bp+0x8],0x0
   219ac:	7d 03                	jge    0x219b1
   219ae:	e9 bf 00             	jmp    0x21a70
   219b1:	75 0a                	jne    0x219bd
   219b3:	81 7e 06 00 c0       	cmp    WORD PTR [bp+0x6],0xc000
   219b8:	73 03                	jae    0x219bd
   219ba:	e9 b3 00             	jmp    0x21a70
   219bd:	c7 46 ea 01 00       	mov    WORD PTR [bp-0x16],0x1
   219c2:	e9 ab 00             	jmp    0x21a70
   219c5:	e9 a8 00             	jmp    0x21a70
   219c8:	83 7e ea 00          	cmp    WORD PTR [bp-0x16],0x0
   219cc:	74 26                	je     0x219f4
   219ce:	c4 5e f8             	les    bx,DWORD PTR [bp-0x8]
   219d1:	26 8b 47 04          	mov    ax,WORD PTR es:[bx+0x4]
   219d5:	26 8b 57 02          	mov    dx,WORD PTR es:[bx+0x2]
   219d9:	c4 5e f8             	les    bx,DWORD PTR [bp-0x8]
   219dc:	26 03 57 06          	add    dx,WORD PTR es:[bx+0x6]
   219e0:	26 13 47 08          	adc    ax,WORD PTR es:[bx+0x8]
   219e4:	81 c2 ff 3f          	add    dx,0x3fff
   219e8:	15 00 00             	adc    ax,0x0
   219eb:	81 e2 00 c0          	and    dx,0xc000
   219ef:	25 ff ff             	and    ax,0xffff
   219f2:	eb 16                	jmp    0x21a0a
   219f4:	c4 5e f8             	les    bx,DWORD PTR [bp-0x8]
   219f7:	26 8b 47 04          	mov    ax,WORD PTR es:[bx+0x4]
   219fb:	26 8b 57 02          	mov    dx,WORD PTR es:[bx+0x2]
   219ff:	c4 5e f8             	les    bx,DWORD PTR [bp-0x8]
   21a02:	26 03 57 06          	add    dx,WORD PTR es:[bx+0x6]
   21a06:	26 13 47 08          	adc    ax,WORD PTR es:[bx+0x8]
   21a0a:	c4 5e f8             	les    bx,DWORD PTR [bp-0x8]
   21a0d:	26 c4 5f 0a          	les    bx,DWORD PTR es:[bx+0xa]
   21a11:	26 8b 4f 04          	mov    cx,WORD PTR es:[bx+0x4]
   21a15:	26 8b 5f 02          	mov    bx,WORD PTR es:[bx+0x2]
   21a19:	2b da                	sub    bx,dx
   21a1b:	1b c8                	sbb    cx,ax
   21a1d:	89 4e ee             	mov    WORD PTR [bp-0x12],cx
   21a20:	89 5e ec             	mov    WORD PTR [bp-0x14],bx
   21a23:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
   21a26:	8b 56 ec             	mov    dx,WORD PTR [bp-0x14]
   21a29:	3b 46 08             	cmp    ax,WORD PTR [bp+0x8]
   21a2c:	7c 31                	jl     0x21a5f
   21a2e:	75 05                	jne    0x21a35
   21a30:	3b 56 06             	cmp    dx,WORD PTR [bp+0x6]
   21a33:	72 2a                	jb     0x21a5f
   21a35:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
   21a38:	8b 56 ec             	mov    dx,WORD PTR [bp-0x14]
   21a3b:	3b 46 f2             	cmp    ax,WORD PTR [bp-0xe]
   21a3e:	7f 1f                	jg     0x21a5f
   21a40:	7c 05                	jl     0x21a47
   21a42:	3b 56 f0             	cmp    dx,WORD PTR [bp-0x10]
   21a45:	73 18                	jae    0x21a5f
   21a47:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
   21a4a:	8b 56 ec             	mov    dx,WORD PTR [bp-0x14]
   21a4d:	89 46 f2             	mov    WORD PTR [bp-0xe],ax
   21a50:	89 56 f0             	mov    WORD PTR [bp-0x10],dx
   21a53:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   21a56:	8b 56 f8             	mov    dx,WORD PTR [bp-0x8]
   21a59:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   21a5c:	89 56 f4             	mov    WORD PTR [bp-0xc],dx
   21a5f:	c4 5e f8             	les    bx,DWORD PTR [bp-0x8]
   21a62:	26 8b 47 0c          	mov    ax,WORD PTR es:[bx+0xc]
   21a66:	26 8b 57 0a          	mov    dx,WORD PTR es:[bx+0xa]
   21a6a:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   21a6d:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
   21a70:	c4 5e f8             	les    bx,DWORD PTR [bp-0x8]
   21a73:	26 8b 47 0a          	mov    ax,WORD PTR es:[bx+0xa]
   21a77:	26 0b 47 0c          	or     ax,WORD PTR es:[bx+0xc]
   21a7b:	74 03                	je     0x21a80
   21a7d:	e9 48 ff             	jmp    0x219c8
   21a80:	81 7e f2 00 02       	cmp    WORD PTR [bp-0xe],0x200
   21a85:	75 0c                	jne    0x21a93
   21a87:	83 7e f0 00          	cmp    WORD PTR [bp-0x10],0x0
   21a8b:	75 06                	jne    0x21a93
   21a8d:	b8 fe ff             	mov    ax,0xfffe
   21a90:	e9 c3 00             	jmp    0x21b56
   21a93:	0e                   	push   cs
   21a94:	e8 fc fa             	call   0x21593
   21a97:	89 56 fe             	mov    WORD PTR [bp-0x2],dx
   21a9a:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   21a9d:	c4 5e f4             	les    bx,DWORD PTR [bp-0xc]
   21aa0:	26 8b 47 0c          	mov    ax,WORD PTR es:[bx+0xc]
   21aa4:	26 8b 57 0a          	mov    dx,WORD PTR es:[bx+0xa]
   21aa8:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   21aab:	26 89 47 0c          	mov    WORD PTR es:[bx+0xc],ax
   21aaf:	26 89 57 0a          	mov    WORD PTR es:[bx+0xa],dx
   21ab3:	c4 5e f4             	les    bx,DWORD PTR [bp-0xc]
   21ab6:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   21ab9:	8b 56 fc             	mov    dx,WORD PTR [bp-0x4]
   21abc:	26 89 47 0c          	mov    WORD PTR es:[bx+0xc],ax
   21ac0:	26 89 57 0a          	mov    WORD PTR es:[bx+0xa],dx
   21ac4:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   21ac7:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   21aca:	8b 56 f4             	mov    dx,WORD PTR [bp-0xc]
   21acd:	26 89 47 10          	mov    WORD PTR es:[bx+0x10],ax
   21ad1:	26 89 57 0e          	mov    WORD PTR es:[bx+0xe],dx
   21ad5:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   21ad8:	26 c4 5f 0a          	les    bx,DWORD PTR es:[bx+0xa]
   21adc:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   21adf:	8b 56 fc             	mov    dx,WORD PTR [bp-0x4]
   21ae2:	26 89 47 10          	mov    WORD PTR es:[bx+0x10],ax
   21ae6:	26 89 57 0e          	mov    WORD PTR es:[bx+0xe],dx
   21aea:	c4 5e f4             	les    bx,DWORD PTR [bp-0xc]
   21aed:	26 8b 47 04          	mov    ax,WORD PTR es:[bx+0x4]
   21af1:	26 8b 57 02          	mov    dx,WORD PTR es:[bx+0x2]
   21af5:	c4 5e f4             	les    bx,DWORD PTR [bp-0xc]
   21af8:	26 03 57 06          	add    dx,WORD PTR es:[bx+0x6]
   21afc:	26 13 47 08          	adc    ax,WORD PTR es:[bx+0x8]
   21b00:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   21b03:	26 89 47 04          	mov    WORD PTR es:[bx+0x4],ax
   21b07:	26 89 57 02          	mov    WORD PTR es:[bx+0x2],dx
   21b0b:	83 7e ea 00          	cmp    WORD PTR [bp-0x16],0x0
   21b0f:	74 24                	je     0x21b35
   21b11:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   21b14:	26 8b 47 04          	mov    ax,WORD PTR es:[bx+0x4]
   21b18:	26 8b 57 02          	mov    dx,WORD PTR es:[bx+0x2]
   21b1c:	81 c2 ff 3f          	add    dx,0x3fff
   21b20:	15 00 00             	adc    ax,0x0
   21b23:	81 e2 00 c0          	and    dx,0xc000
   21b27:	25 ff ff             	and    ax,0xffff
   21b2a:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   21b2d:	26 89 47 04          	mov    WORD PTR es:[bx+0x4],ax
   21b31:	26 89 57 02          	mov    WORD PTR es:[bx+0x2],dx
   21b35:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   21b38:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   21b3b:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   21b3e:	26 89 47 08          	mov    WORD PTR es:[bx+0x8],ax
   21b42:	26 89 57 06          	mov    WORD PTR es:[bx+0x6],dx
   21b46:	ff 06 02 87          	inc    WORD PTR ds:0x8702
   21b4a:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   21b4d:	a1 02 87             	mov    ax,ds:0x8702
   21b50:	26 89 07             	mov    WORD PTR es:[bx],ax
   21b53:	a1 02 87             	mov    ax,ds:0x8702
   21b56:	1f                   	pop    ds
   21b57:	c9                   	leave
   21b58:	ca 04 00             	retf   0x4

analysis/phase-four/IST-resident-raw.bin:     file format binary


Disassembly of section .data:

00035e3d <.data+0x25e3d>:
   35e3d:	c8 14 00 00          	enter  0x14,0x0
   35e41:	1e                   	push   ds
   35e42:	55                   	push   bp
   35e43:	c5 76 06             	lds    si,DWORD PTR [bp+0x6]
   35e46:	c4 7e 0e             	les    di,DWORD PTR [bp+0xe]
   35e49:	0f b5 5e 0a          	lgs    bx,DWORD PTR [bp+0xa]
   35e4d:	8b 46 16             	mov    ax,WORD PTR [bp+0x16]
   35e50:	03 c7                	add    ax,di
   35e52:	0f b4 6e 12          	lfs    bp,DWORD PTR [bp+0x12]
   35e56:	50                   	push   ax
   35e57:	8a 04                	mov    al,BYTE PTR [si]
   35e59:	46                   	inc    si
   35e5a:	65 8a 0f             	mov    cl,BYTE PTR gs:[bx]
   35e5d:	43                   	inc    bx
   35e5e:	3a c1                	cmp    al,cl
   35e60:	74 21                	je     0x35e83
   35e62:	90                   	nop
   35e63:	90                   	nop
   35e64:	72 04                	jb     0x35e6a
   35e66:	90                   	nop
   35e67:	90                   	nop
   35e68:	86 c1                	xchg   cl,al
   35e6a:	ba fd 01             	mov    dx,0x1fd
   35e6d:	32 e4                	xor    ah,ah
   35e6f:	2b d0                	sub    dx,ax
   35e71:	f7 e2                	mul    dx
   35e73:	d1 e8                	shr    ax,1
   35e75:	48                   	dec    ax
   35e76:	02 c1                	add    al,cl
   35e78:	80 d4 00             	adc    ah,0x0
   35e7b:	55                   	push   bp
   35e7c:	03 e8                	add    bp,ax
   35e7e:	64 8a 46 00          	mov    al,BYTE PTR fs:[bp+0x0]
   35e82:	5d                   	pop    bp
   35e83:	26 88 05             	mov    BYTE PTR es:[di],al
   35e86:	47                   	inc    di
   35e87:	58                   	pop    ax
   35e88:	3b f8                	cmp    di,ax
   35e8a:	72 ca                	jb     0x35e56
   35e8c:	5d                   	pop    bp
   35e8d:	1f                   	pop    ds
   35e8e:	c9                   	leave
   35e8f:	cb                   	retf
