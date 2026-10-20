
lale/IST.EXE:     file format binary


Disassembly of section .data:

0003f5a0 <.data+0x3f5a0>:
   3f5a0:	55                   	push   %bp
   3f5a1:	8b ec                	mov    %sp,%bp
   3f5a3:	83 ec 0e             	sub    $0xe,%sp
   3f5a6:	b8 88 01             	mov    $0x188,%ax
   3f5a9:	8e c0                	mov    %ax,%es
   3f5ab:	26 a1 4c e7          	mov    %es:0xe74c,%ax
   3f5af:	26 8b 16 4a e7       	mov    %es:-0x18b6,%dx
   3f5b4:	89 46 fe             	mov    %ax,-0x2(%bp)
   3f5b7:	89 56 fc             	mov    %dx,-0x4(%bp)
   3f5ba:	8b 46 fe             	mov    -0x2(%bp),%ax
   3f5bd:	8b 56 fc             	mov    -0x4(%bp),%dx
   3f5c0:	03 56 0a             	add    0xa(%bp),%dx
   3f5c3:	15 00 00             	adc    $0x0,%ax
   3f5c6:	89 46 f6             	mov    %ax,-0xa(%bp)
   3f5c9:	89 56 f4             	mov    %dx,-0xc(%bp)
   3f5cc:	9a 45 2e 00 00       	lcall  $0x0,$0x2e45
   3f5d1:	0b c0                	or     %ax,%ax
   3f5d3:	74 07                	je     0x3f5dc
   3f5d5:	9a d7 29 00 00       	lcall  $0x0,$0x29d7
   3f5da:	eb 48                	jmp    0x3f624
   3f5dc:	16                   	push   %ss
   3f5dd:	8d 46 f2             	lea    -0xe(%bp),%ax
   3f5e0:	50                   	push   %ax
   3f5e1:	16                   	push   %ss
   3f5e2:	8d 46 f2             	lea    -0xe(%bp),%ax
   3f5e5:	50                   	push   %ax
   3f5e6:	16                   	push   %ss
   3f5e7:	8d 46 f2             	lea    -0xe(%bp),%ax
   3f5ea:	50                   	push   %ax
   3f5eb:	9a af 04 30 00       	lcall  $0x30,$0x4af
   3f5f0:	83 c4 0c             	add    $0xc,%sp
   3f5f3:	0b c0                	or     %ax,%ax
   3f5f5:	74 05                	je     0x3f5fc
   3f5f7:	b8 20 00             	mov    $0x20,%ax
   3f5fa:	eb 28                	jmp    0x3f624
   3f5fc:	b8 88 01             	mov    $0x188,%ax
   3f5ff:	8e c0                	mov    %ax,%es
   3f601:	26 a1 4c e7          	mov    %es:0xe74c,%ax
   3f605:	26 8b 16 4a e7       	mov    %es:-0x18b6,%dx
   3f60a:	89 46 fa             	mov    %ax,-0x6(%bp)
   3f60d:	89 56 f8             	mov    %dx,-0x8(%bp)
   3f610:	8b 46 fa             	mov    -0x6(%bp),%ax
   3f613:	8b 56 f8             	mov    -0x8(%bp),%dx
   3f616:	3b 46 f6             	cmp    -0xa(%bp),%ax
   3f619:	77 07                	ja     0x3f622
   3f61b:	72 af                	jb     0x3f5cc
   3f61d:	3b 56 f4             	cmp    -0xc(%bp),%dx
   3f620:	72 aa                	jb     0x3f5cc
   3f622:	33 c0                	xor    %ax,%ax
   3f624:	c9                   	leave
   3f625:	cb                   	lret
   3f626:	55                   	push   %bp
   3f627:	8b ec                	mov    %sp,%bp
   3f629:	83 ec 3c             	sub    $0x3c,%sp
   3f62c:	c6 46 fa 00          	movb   $0x0,-0x6(%bp)
   3f630:	c6 46 f9 00          	movb   $0x0,-0x7(%bp)
   3f634:	8b 46 0e             	mov    0xe(%bp),%ax
   3f637:	bb 0b 00             	mov    $0xb,%bx
   3f63a:	33 d2                	xor    %dx,%dx
   3f63c:	f7 f3                	div    %bx
   3f63e:	89 46 f6             	mov    %ax,-0xa(%bp)
   3f641:	c6 46 f3 00          	movb   $0x0,-0xd(%bp)
   3f645:	c4 5e 06             	les    0x6(%bp),%bx
   3f648:	26 80 7f 08 00       	cmpb   $0x0,%es:0x8(%bx)
   3f64d:	75 14                	jne    0x3f663
   3f64f:	c6 46 f9 01          	movb   $0x1,-0x7(%bp)
   3f653:	6a 01                	push   $0x1
   3f655:	ff 76 08             	push   0x8(%bp)
   3f658:	ff 76 06             	push   0x6(%bp)
   3f65b:	9a f4 05 20 00       	lcall  $0x20,$0x5f4
   3f660:	83 c4 06             	add    $0x6,%sp
   3f663:	c4 5e 0a             	les    0xa(%bp),%bx
   3f666:	26 80 7f 08 00       	cmpb   $0x0,%es:0x8(%bx)
   3f66b:	75 16                	jne    0x3f683
   3f66d:	c6 46 fa 01          	movb   $0x1,-0x6(%bp)
   3f671:	6a 01                	push   $0x1
   3f673:	ff 76 0c             	push   0xc(%bp)
   3f676:	ff 76 0a             	push   0xa(%bp)
   3f679:	9a f4 05 20 00       	lcall  $0x20,$0x5f4
   3f67e:	83 c4 06             	add    $0x6,%sp
   3f681:	eb 2e                	jmp    0x3f6b1
   3f683:	c4 5e 06             	les    0x6(%bp),%bx
   3f686:	26 8b 47 06          	mov    %es:0x6(%bx),%ax
   3f68a:	26 8b 57 04          	mov    %es:0x4(%bx),%dx
   3f68e:	c4 5e 0a             	les    0xa(%bp),%bx
   3f691:	26 3b 47 06          	cmp    %es:0x6(%bx),%ax
   3f695:	75 06                	jne    0x3f69d
   3f697:	26 3b 57 04          	cmp    %es:0x4(%bx),%dx
   3f69b:	74 14                	je     0x3f6b1
   3f69d:	6a 68                	push   $0x68
   3f69f:	6a 00                	push   $0x0
   3f6a1:	6a 00                	push   $0x0
   3f6a3:	6a 67                	push   $0x67
   3f6a5:	1e                   	push   %ds
   3f6a6:	68 46 4b             	push   $0x4b46
   3f6a9:	9a 2a 00 58 01       	lcall  $0x158,$0x2a
   3f6ae:	83 c4 0c             	add    $0xc,%sp
   3f6b1:	6a 00                	push   $0x0
   3f6b3:	c4 5e 06             	les    0x6(%bp),%bx
   3f6b6:	26 ff 77 06          	push   %es:0x6(%bx)
   3f6ba:	26 ff 77 04          	push   %es:0x4(%bx)
   3f6be:	9a 64 01 20 00       	lcall  $0x20,$0x164
   3f6c3:	83 c4 06             	add    $0x6,%sp
   3f6c6:	89 56 fe             	mov    %dx,-0x2(%bp)
   3f6c9:	89 46 fc             	mov    %ax,-0x4(%bp)
   3f6cc:	6a 00                	push   $0x0
   3f6ce:	b8 88 01             	mov    $0x188,%ax
   3f6d1:	8e c0                	mov    %ax,%es
   3f6d3:	26 ff 36 31 e5       	push   %es:-0x1acf
   3f6d8:	26 ff 36 2f e5       	push   %es:-0x1ad1
   3f6dd:	9a ab 04 20 00       	lcall  $0x20,$0x4ab
   3f6e2:	83 c4 06             	add    $0x6,%sp
   3f6e5:	bb 88 01             	mov    $0x188,%bx
   3f6e8:	8e c3                	mov    %bx,%es
   3f6ea:	26 89 16 6e e5       	mov    %dx,%es:-0x1a92
   3f6ef:	26 a3 6c e5          	mov    %ax,%es:0xe56c
   3f6f3:	b8 88 01             	mov    $0x188,%ax
   3f6f6:	8e c0                	mov    %ax,%es
   3f6f8:	26 c4 1e 6c e5       	les    %es:-0x1a94,%bx
   3f6fd:	26 ff 77 02          	push   %es:0x2(%bx)
   3f701:	26 ff 37             	push   %es:(%bx)
   3f704:	ff 76 fe             	push   -0x2(%bp)
   3f707:	ff 76 fc             	push   -0x4(%bp)
   3f70a:	ff 76 0c             	push   0xc(%bp)
   3f70d:	ff 76 0a             	push   0xa(%bp)
   3f710:	ff 76 08             	push   0x8(%bp)
   3f713:	ff 76 06             	push   0x6(%bp)
   3f716:	9a fc 08 30 00       	lcall  $0x30,$0x8fc
   3f71b:	83 c4 10             	add    $0x10,%sp
   3f71e:	6a 01                	push   $0x1
   3f720:	ff 76 fe             	push   -0x2(%bp)
   3f723:	ff 76 fc             	push   -0x4(%bp)
   3f726:	9a ab 04 20 00       	lcall  $0x20,$0x4ab
   3f72b:	83 c4 06             	add    $0x6,%sp
   3f72e:	89 56 da             	mov    %dx,-0x26(%bp)
   3f731:	89 46 d8             	mov    %ax,-0x28(%bp)
   3f734:	c6 46 fb 07          	movb   $0x7,-0x5(%bp)
   3f738:	eb 55                	jmp    0x3f78f
   3f73a:	b8 88 01             	mov    $0x188,%ax
   3f73d:	8e c0                	mov    %ax,%es
   3f73f:	26 c4 1e 6c e5       	les    %es:-0x1a94,%bx
   3f744:	26 ff 77 02          	push   %es:0x2(%bx)
   3f748:	26 ff 37             	push   %es:(%bx)
   3f74b:	ff 76 fe             	push   -0x2(%bp)
   3f74e:	ff 76 fc             	push   -0x4(%bp)
   3f751:	ff 76 fe             	push   -0x2(%bp)
   3f754:	ff 76 fc             	push   -0x4(%bp)
   3f757:	ff 76 0c             	push   0xc(%bp)
   3f75a:	ff 76 0a             	push   0xa(%bp)
   3f75d:	9a fc 08 30 00       	lcall  $0x30,$0x8fc
   3f762:	83 c4 10             	add    $0x10,%sp
   3f765:	6a 01                	push   $0x1
   3f767:	ff 76 fe             	push   -0x2(%bp)
   3f76a:	ff 76 fc             	push   -0x4(%bp)
   3f76d:	9a ab 04 20 00       	lcall  $0x20,$0x4ab
   3f772:	83 c4 06             	add    $0x6,%sp
   3f775:	50                   	push   %ax
   3f776:	8a 46 fb             	mov    -0x5(%bp),%al
   3f779:	98                   	cbtw
   3f77a:	c1 e0 02             	shl    $0x2,%ax
   3f77d:	8d 5e c4             	lea    -0x3c(%bp),%bx
   3f780:	03 c3                	add    %bx,%ax
   3f782:	8b d8                	mov    %ax,%bx
   3f784:	36 89 57 02          	mov    %dx,%ss:0x2(%bx)
   3f788:	58                   	pop    %ax
   3f789:	36 89 07             	mov    %ax,%ss:(%bx)
   3f78c:	fe 46 fb             	incb   -0x5(%bp)
   3f78f:	80 7e fb 0b          	cmpb   $0xb,-0x5(%bp)
   3f793:	7c a5                	jl     0x3f73a
   3f795:	ff 76 fe             	push   -0x2(%bp)
   3f798:	ff 76 fc             	push   -0x4(%bp)
   3f79b:	ff 76 da             	push   -0x26(%bp)
   3f79e:	ff 76 d8             	push   -0x28(%bp)
   3f7a1:	9a 8a 06 20 00       	lcall  $0x20,$0x68a
   3f7a6:	83 c4 08             	add    $0x8,%sp
   3f7a9:	b8 88 01             	mov    $0x188,%ax
   3f7ac:	8e c0                	mov    %ax,%es
   3f7ae:	26 c4 1e 6c e5       	les    %es:-0x1a94,%bx
   3f7b3:	26 ff 77 02          	push   %es:0x2(%bx)
   3f7b7:	26 ff 37             	push   %es:(%bx)
   3f7ba:	ff 76 fe             	push   -0x2(%bp)
   3f7bd:	ff 76 fc             	push   -0x4(%bp)
   3f7c0:	ff 76 fe             	push   -0x2(%bp)
   3f7c3:	ff 76 fc             	push   -0x4(%bp)
   3f7c6:	ff 76 e2             	push   -0x1e(%bp)
   3f7c9:	ff 76 e0             	push   -0x20(%bp)
   3f7cc:	9a fc 08 30 00       	lcall  $0x30,$0x8fc
   3f7d1:	83 c4 10             	add    $0x10,%sp
   3f7d4:	6a 01                	push   $0x1
   3f7d6:	ff 76 fe             	push   -0x2(%bp)
   3f7d9:	ff 76 fc             	push   -0x4(%bp)
   3f7dc:	9a ab 04 20 00       	lcall  $0x20,$0x4ab
   3f7e1:	83 c4 06             	add    $0x6,%sp
   3f7e4:	89 56 de             	mov    %dx,-0x22(%bp)
   3f7e7:	89 46 dc             	mov    %ax,-0x24(%bp)
   3f7ea:	ff 76 fe             	push   -0x2(%bp)
   3f7ed:	ff 76 fc             	push   -0x4(%bp)
   3f7f0:	ff 76 da             	push   -0x26(%bp)
   3f7f3:	ff 76 d8             	push   -0x28(%bp)
   3f7f6:	9a 8a 06 20 00       	lcall  $0x20,$0x68a
   3f7fb:	83 c4 08             	add    $0x8,%sp
   3f7fe:	c6 46 fb 03          	movb   $0x3,-0x5(%bp)
   3f802:	eb 55                	jmp    0x3f859
   3f804:	b8 88 01             	mov    $0x188,%ax
   3f807:	8e c0                	mov    %ax,%es
   3f809:	26 c4 1e 6c e5       	les    %es:-0x1a94,%bx
   3f80e:	26 ff 77 02          	push   %es:0x2(%bx)
   3f812:	26 ff 37             	push   %es:(%bx)
   3f815:	ff 76 fe             	push   -0x2(%bp)
   3f818:	ff 76 fc             	push   -0x4(%bp)
   3f81b:	ff 76 fe             	push   -0x2(%bp)
   3f81e:	ff 76 fc             	push   -0x4(%bp)
   3f821:	ff 76 08             	push   0x8(%bp)
   3f824:	ff 76 06             	push   0x6(%bp)
   3f827:	9a fc 08 30 00       	lcall  $0x30,$0x8fc
   3f82c:	83 c4 10             	add    $0x10,%sp
   3f82f:	6a 01                	push   $0x1
   3f831:	ff 76 fe             	push   -0x2(%bp)
   3f834:	ff 76 fc             	push   -0x4(%bp)
   3f837:	9a ab 04 20 00       	lcall  $0x20,$0x4ab
   3f83c:	83 c4 06             	add    $0x6,%sp
   3f83f:	50                   	push   %ax
   3f840:	8a 46 fb             	mov    -0x5(%bp),%al
   3f843:	98                   	cbtw
   3f844:	c1 e0 02             	shl    $0x2,%ax
   3f847:	8d 5e c4             	lea    -0x3c(%bp),%bx
   3f84a:	03 c3                	add    %bx,%ax
   3f84c:	8b d8                	mov    %ax,%bx
   3f84e:	36 89 57 02          	mov    %dx,%ss:0x2(%bx)
   3f852:	58                   	pop    %ax
   3f853:	36 89 07             	mov    %ax,%ss:(%bx)
   3f856:	fe 4e fb             	decb   -0x5(%bp)
   3f859:	80 7e fb 00          	cmpb   $0x0,-0x5(%bp)
   3f85d:	7d a5                	jge    0x3f804
   3f85f:	ff 76 fe             	push   -0x2(%bp)
   3f862:	ff 76 fc             	push   -0x4(%bp)
   3f865:	ff 76 da             	push   -0x26(%bp)
   3f868:	ff 76 d8             	push   -0x28(%bp)
   3f86b:	9a 8a 06 20 00       	lcall  $0x20,$0x68a
   3f870:	83 c4 08             	add    $0x8,%sp
   3f873:	b8 88 01             	mov    $0x188,%ax
   3f876:	8e c0                	mov    %ax,%es
   3f878:	26 c4 1e 6c e5       	les    %es:-0x1a94,%bx
   3f87d:	26 ff 77 02          	push   %es:0x2(%bx)
   3f881:	26 ff 37             	push   %es:(%bx)
   3f884:	ff 76 fe             	push   -0x2(%bp)
   3f887:	ff 76 fc             	push   -0x4(%bp)
   3f88a:	ff 76 fe             	push   -0x2(%bp)
   3f88d:	ff 76 fc             	push   -0x4(%bp)
   3f890:	ff 76 d2             	push   -0x2e(%bp)
   3f893:	ff 76 d0             	push   -0x30(%bp)
   3f896:	9a fc 08 30 00       	lcall  $0x30,$0x8fc
   3f89b:	83 c4 10             	add    $0x10,%sp
   3f89e:	6a 01                	push   $0x1
   3f8a0:	ff 76 fe             	push   -0x2(%bp)
   3f8a3:	ff 76 fc             	push   -0x4(%bp)
   3f8a6:	9a ab 04 20 00       	lcall  $0x20,$0x4ab
   3f8ab:	83 c4 06             	add    $0x6,%sp
   3f8ae:	89 56 d6             	mov    %dx,-0x2a(%bp)
   3f8b1:	89 46 d4             	mov    %ax,-0x2c(%bp)
   3f8b4:	ff 76 14             	push   0x14(%bp)
   3f8b7:	8a 46 12             	mov    0x12(%bp),%al
   3f8ba:	50                   	push   %ax
   3f8bb:	8a 46 10             	mov    0x10(%bp),%al
   3f8be:	50                   	push   %ax
   3f8bf:	0e                   	push   %cs
   3f8c0:	e8 dd fc             	call   0x3f5a0
   3f8c3:	83 c4 06             	add    $0x6,%sp
   3f8c6:	89 46 f0             	mov    %ax,-0x10(%bp)
   3f8c9:	0b c0                	or     %ax,%ax
   3f8cb:	74 15                	je     0x3f8e2
   3f8cd:	8b 46 f0             	mov    -0x10(%bp),%ax
   3f8d0:	3d 1b 00             	cmp    $0x1b,%ax
   3f8d3:	74 02                	je     0x3f8d7
   3f8d5:	eb 07                	jmp    0x3f8de
   3f8d7:	c6 46 f3 01          	movb   $0x1,-0xd(%bp)
   3f8db:	e9 78 01             	jmp    0x3fa56
   3f8de:	c6 46 f3 02          	movb   $0x2,-0xd(%bp)
   3f8e2:	b8 88 01             	mov    $0x188,%ax
   3f8e5:	8e c0                	mov    %ax,%es
   3f8e7:	26 a1 4a e7          	mov    %es:0xe74a,%ax
   3f8eb:	03 46 f6             	add    -0xa(%bp),%ax
   3f8ee:	89 46 f4             	mov    %ax,-0xc(%bp)
   3f8f1:	b8 88 01             	mov    $0x188,%ax
   3f8f4:	8e c0                	mov    %ax,%es
   3f8f6:	26 a1 a1 e2          	mov    %es:0xe2a1,%ax
   3f8fa:	26 8b 16 9f e2       	mov    %es:-0x1d61,%dx
   3f8ff:	3b 46 08             	cmp    0x8(%bp),%ax
   3f902:	75 05                	jne    0x3f909
   3f904:	3b 56 06             	cmp    0x6(%bp),%dx
   3f907:	74 47                	je     0x3f950
   3f909:	ba da 03             	mov    $0x3da,%dx
   3f90c:	ec                   	in     (%dx),%al
   3f90d:	b4 00                	mov    $0x0,%ah
   3f90f:	25 08 00             	and    $0x8,%ax
   3f912:	3d 08 00             	cmp    $0x8,%ax
   3f915:	75 f2                	jne    0x3f909
   3f917:	ba da 03             	mov    $0x3da,%dx
   3f91a:	ec                   	in     (%dx),%al
   3f91b:	a8 08                	test   $0x8,%al
   3f91d:	75 f8                	jne    0x3f917
   3f91f:	c4 5e 06             	les    0x6(%bp),%bx
   3f922:	26 ff 77 06          	push   %es:0x6(%bx)
   3f926:	26 ff 77 04          	push   %es:0x4(%bx)
   3f92a:	6a 00                	push   $0x0
   3f92c:	ff 76 16             	push   0x16(%bp)
   3f92f:	6a 00                	push   $0x0
   3f931:	6a 00                	push   $0x0
   3f933:	b8 88 01             	mov    $0x188,%ax
   3f936:	8e c0                	mov    %ax,%es
   3f938:	26 ff 36 a1 e2       	push   %es:-0x1d5f
   3f93d:	26 ff 36 9f e2       	push   %es:-0x1d61
   3f942:	ff 76 08             	push   0x8(%bp)
   3f945:	ff 76 06             	push   0x6(%bp)
   3f948:	9a c9 07 20 00       	lcall  $0x20,$0x7c9
   3f94d:	83 c4 14             	add    $0x14,%sp
   3f950:	b8 88 01             	mov    $0x188,%ax
   3f953:	8e c0                	mov    %ax,%es
   3f955:	26 a1 4a e7          	mov    %es:0xe74a,%ax
   3f959:	3b 46 f4             	cmp    -0xc(%bp),%ax
   3f95c:	72 f2                	jb     0x3f950
   3f95e:	c6 46 fb 00          	movb   $0x0,-0x5(%bp)
   3f962:	e9 84 00             	jmp    0x3f9e9
   3f965:	b8 88 01             	mov    $0x188,%ax
   3f968:	8e c0                	mov    %ax,%es
   3f96a:	26 a1 4a e7          	mov    %es:0xe74a,%ax
   3f96e:	03 46 f6             	add    -0xa(%bp),%ax
   3f971:	89 46 f4             	mov    %ax,-0xc(%bp)
   3f974:	ba da 03             	mov    $0x3da,%dx
   3f977:	ec                   	in     (%dx),%al
   3f978:	b4 00                	mov    $0x0,%ah
   3f97a:	25 08 00             	and    $0x8,%ax
   3f97d:	3d 08 00             	cmp    $0x8,%ax
   3f980:	75 f2                	jne    0x3f974
   3f982:	ba da 03             	mov    $0x3da,%dx
   3f985:	ec                   	in     (%dx),%al
   3f986:	a8 08                	test   $0x8,%al
   3f988:	75 f8                	jne    0x3f982
   3f98a:	8a 46 fb             	mov    -0x5(%bp),%al
   3f98d:	98                   	cbtw
   3f98e:	c1 e0 02             	shl    $0x2,%ax
   3f991:	8d 56 c4             	lea    -0x3c(%bp),%dx
   3f994:	03 c2                	add    %dx,%ax
   3f996:	8b d8                	mov    %ax,%bx
   3f998:	36 c4 1f             	les    %ss:(%bx),%bx
   3f99b:	26 ff 77 06          	push   %es:0x6(%bx)
   3f99f:	26 ff 77 04          	push   %es:0x4(%bx)
   3f9a3:	6a 00                	push   $0x0
   3f9a5:	ff 76 16             	push   0x16(%bp)
   3f9a8:	6a 00                	push   $0x0
   3f9aa:	6a 00                	push   $0x0
   3f9ac:	b8 88 01             	mov    $0x188,%ax
   3f9af:	8e c0                	mov    %ax,%es
   3f9b1:	26 ff 36 a1 e2       	push   %es:-0x1d5f
   3f9b6:	26 ff 36 9f e2       	push   %es:-0x1d61
   3f9bb:	8a 46 fb             	mov    -0x5(%bp),%al
   3f9be:	98                   	cbtw
   3f9bf:	c1 e0 02             	shl    $0x2,%ax
   3f9c2:	8d 56 c4             	lea    -0x3c(%bp),%dx
   3f9c5:	03 c2                	add    %dx,%ax
   3f9c7:	8b d8                	mov    %ax,%bx
   3f9c9:	36 ff 77 02          	push   %ss:0x2(%bx)
   3f9cd:	36 ff 37             	push   %ss:(%bx)
   3f9d0:	9a c9 07 20 00       	lcall  $0x20,$0x7c9
   3f9d5:	83 c4 14             	add    $0x14,%sp
   3f9d8:	b8 88 01             	mov    $0x188,%ax
   3f9db:	8e c0                	mov    %ax,%es
   3f9dd:	26 a1 4a e7          	mov    %es:0xe74a,%ax
   3f9e1:	3b 46 f4             	cmp    -0xc(%bp),%ax
   3f9e4:	72 f2                	jb     0x3f9d8
   3f9e6:	fe 46 fb             	incb   -0x5(%bp)
   3f9e9:	80 7e fb 0b          	cmpb   $0xb,-0x5(%bp)
   3f9ed:	7d 03                	jge    0x3f9f2
   3f9ef:	e9 73 ff             	jmp    0x3f965
   3f9f2:	b8 88 01             	mov    $0x188,%ax
   3f9f5:	8e c0                	mov    %ax,%es
   3f9f7:	26 a1 4a e7          	mov    %es:0xe74a,%ax
   3f9fb:	03 46 f6             	add    -0xa(%bp),%ax
   3f9fe:	89 46 f4             	mov    %ax,-0xc(%bp)
   3fa01:	ba da 03             	mov    $0x3da,%dx
   3fa04:	ec                   	in     (%dx),%al
   3fa05:	b4 00                	mov    $0x0,%ah
   3fa07:	25 08 00             	and    $0x8,%ax
   3fa0a:	3d 08 00             	cmp    $0x8,%ax
   3fa0d:	75 f2                	jne    0x3fa01
   3fa0f:	ba da 03             	mov    $0x3da,%dx
   3fa12:	ec                   	in     (%dx),%al
   3fa13:	a8 08                	test   $0x8,%al
   3fa15:	75 f8                	jne    0x3fa0f
   3fa17:	c4 5e 0a             	les    0xa(%bp),%bx
   3fa1a:	26 ff 77 06          	push   %es:0x6(%bx)
   3fa1e:	26 ff 77 04          	push   %es:0x4(%bx)
   3fa22:	6a 00                	push   $0x0
   3fa24:	ff 76 16             	push   0x16(%bp)
   3fa27:	6a 00                	push   $0x0
   3fa29:	6a 00                	push   $0x0
   3fa2b:	b8 88 01             	mov    $0x188,%ax
   3fa2e:	8e c0                	mov    %ax,%es
   3fa30:	26 ff 36 a1 e2       	push   %es:-0x1d5f
   3fa35:	26 ff 36 9f e2       	push   %es:-0x1d61
   3fa3a:	ff 76 0c             	push   0xc(%bp)
   3fa3d:	ff 76 0a             	push   0xa(%bp)
   3fa40:	9a c9 07 20 00       	lcall  $0x20,$0x7c9
   3fa45:	83 c4 14             	add    $0x14,%sp
   3fa48:	b8 88 01             	mov    $0x188,%ax
   3fa4b:	8e c0                	mov    %ax,%es
   3fa4d:	26 a1 4a e7          	mov    %es:0xe74a,%ax
   3fa51:	3b 46 f4             	cmp    -0xc(%bp),%ax
   3fa54:	72 f2                	jb     0x3fa48
