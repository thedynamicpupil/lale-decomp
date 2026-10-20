
lale/IST.EXE:     file format binary


Disassembly of section .data:

000595e6 <.data+0x595e6>:
   595e6:	55                   	push   %bp
   595e7:	8b ec                	mov    %sp,%bp
   595e9:	83 ec 02             	sub    $0x2,%sp
   595ec:	c6 46 ff 00          	movb   $0x0,-0x1(%bp)
   595f0:	68 00 fa             	push   $0xfa00
   595f3:	6a 00                	push   $0x0
   595f5:	6a 00                	push   $0x0
   595f7:	b8 88 01             	mov    $0x188,%ax
   595fa:	8e c0                	mov    %ax,%es
   595fc:	26 c4 1e 9f e2       	les    %es:-0x1d61,%bx
   59601:	26 ff 77 02          	push   %es:0x2(%bx)
   59605:	26 ff 37             	push   %es:(%bx)
   59608:	9a 8f 02 e0 01       	lcall  $0x1e0,$0x28f
   5960d:	83 c4 0a             	add    $0xa,%sp
   59610:	1e                   	push   %ds
   59611:	68 30 d6             	push   $0xd630
   59614:	9a 50 00 30 00       	lcall  $0x30,$0x50
   59619:	83 c4 04             	add    $0x4,%sp
   5961c:	c7 06 1a d6 00 00    	movw   $0x0,-0x29e6
   59622:	c7 06 f2 d5 00 00    	movw   $0x0,-0x2a0e
   59628:	b8 ff ff             	mov    $0xffff,%ax
   5962b:	a3 16 d6             	mov    %ax,0xd616
   5962e:	a3 18 d6             	mov    %ax,0xd618
   59631:	6a 00                	push   $0x0
   59633:	0e                   	push   %cs
   59634:	e8 1f f8             	call   0x58e56
   59637:	59                   	pop    %cx
   59638:	b8 88 01             	mov    $0x188,%ax
   5963b:	8e c0                	mov    %ax,%es
   5963d:	26 a1 4c e7          	mov    %es:0xe74c,%ax
   59641:	26 8b 16 4a e7       	mov    %es:-0x18b6,%dx
   59646:	a3 10 d6             	mov    %ax,0xd610
   59649:	89 16 0e d6          	mov    %dx,-0x29f2
   5964d:	b8 88 01             	mov    $0x188,%ax
   59650:	8e c0                	mov    %ax,%es
   59652:	26 80 3e d0 73 00    	cmpb   $0x0,%es:0x73d0
   59658:	74 4f                	je     0x596a9
   5965a:	83 3e 26 d6 00       	cmpw   $0x0,-0x29da
   5965f:	76 48                	jbe    0x596a9
   59661:	b8 88 01             	mov    $0x188,%ax
   59664:	8e c0                	mov    %ax,%es
   59666:	26 a0 d7 73          	mov    %es:0x73d7,%al
   5966a:	04 ff                	add    $0xff,%al
   5966c:	50                   	push   %ax
   5966d:	6a 00                	push   $0x0
   5966f:	6a 00                	push   $0x0
   59671:	6a 00                	push   $0x0
   59673:	6a 40                	push   $0x40
   59675:	6a 00                	push   $0x0
   59677:	ff 36 26 d6          	push   -0x29da
   5967b:	6a 30                	push   $0x30
   5967d:	9a 4f 01 38 00       	lcall  $0x38,$0x14f
   59682:	83 c4 10             	add    $0x10,%sp
   59685:	b8 88 01             	mov    $0x188,%ax
   59688:	8e c0                	mov    %ax,%es
   5968a:	26 a0 d7 73          	mov    %es:0x73d7,%al
   5968e:	04 fe                	add    $0xfe,%al
   59690:	50                   	push   %ax
   59691:	6a 00                	push   $0x0
   59693:	6a 00                	push   $0x0
   59695:	6a 00                	push   $0x0
   59697:	6a 40                	push   $0x40
   59699:	6a 00                	push   $0x0
   5969b:	ff 36 26 d6          	push   -0x29da
   5969f:	6a 30                	push   $0x30
   596a1:	9a 4f 01 38 00       	lcall  $0x38,$0x14f
   596a6:	83 c4 10             	add    $0x10,%sp
   596a9:	9a 45 2e 00 00       	lcall  $0x0,$0x2e45
   596ae:	0b c0                	or     %ax,%ax
   596b0:	74 0c                	je     0x596be
   596b2:	9a d7 29 00 00       	lcall  $0x0,$0x29d7
   596b7:	88 46 ff             	mov    %al,-0x1(%bp)
   596ba:	3c 1b                	cmp    $0x1b,%al
   596bc:	74 2f                	je     0x596ed
   596be:	b8 88 01             	mov    $0x188,%ax
   596c1:	8e c0                	mov    %ax,%es
   596c3:	26 a1 4c e7          	mov    %es:0xe74c,%ax
   596c7:	26 8b 16 4a e7       	mov    %es:-0x18b6,%dx
   596cc:	a3 14 d6             	mov    %ax,0xd614
   596cf:	89 16 12 d6          	mov    %dx,-0x29ee
   596d3:	0e                   	push   %cs
   596d4:	e8 47 f7             	call   0x58e1e
   596d7:	a1 f2 d5             	mov    0xd5f2,%ax
   596da:	3b 06 23 d6          	cmp    -0x29dd,%ax
   596de:	73 0d                	jae    0x596ed
   596e0:	6a 01                	push   $0x1
   596e2:	0e                   	push   %cs
   596e3:	e8 70 f7             	call   0x58e56
   596e6:	59                   	pop    %cx
   596e7:	0e                   	push   %cs
   596e8:	e8 bd fb             	call   0x592a8
   596eb:	eb bc                	jmp    0x596a9
   596ed:	b8 88 01             	mov    $0x188,%ax
   596f0:	8e c0                	mov    %ax,%es
   596f2:	26 80 3e d0 73 00    	cmpb   $0x0,%es:0x73d0
   596f8:	74 31                	je     0x5972b
   596fa:	83 3e 26 d6 00       	cmpw   $0x0,-0x29da
   596ff:	76 2a                	jbe    0x5972b
   59701:	b8 88 01             	mov    $0x188,%ax
   59704:	8e c0                	mov    %ax,%es
   59706:	26 a0 d7 73          	mov    %es:0x73d7,%al
   5970a:	b4 00                	mov    $0x0,%ah
   5970c:	48                   	dec    %ax
   5970d:	99                   	cwtd
   5970e:	52                   	push   %dx
   5970f:	50                   	push   %ax
   59710:	9a e6 00 60 00       	lcall  $0x60,$0xe6
   59715:	b8 88 01             	mov    $0x188,%ax
   59718:	8e c0                	mov    %ax,%es
   5971a:	26 a0 d7 73          	mov    %es:0x73d7,%al
   5971e:	b4 00                	mov    $0x0,%ah
   59720:	05 fe ff             	add    $0xfffe,%ax
   59723:	99                   	cwtd
   59724:	52                   	push   %dx
   59725:	50                   	push   %ax
   59726:	9a e6 00 60 00       	lcall  $0x60,$0xe6
   5972b:	8a 46 ff             	mov    -0x1(%bp),%al
   5972e:	c9                   	leave
   5972f:	cb                   	lret
   59730:	55                   	push   %bp
   59731:	8b ec                	mov    %sp,%bp
   59733:	83 ec 06             	sub    $0x6,%sp
   59736:	8c 5e fe             	mov    %ds,-0x2(%bp)
   59739:	c7 46 fc d9 6b       	movw   $0x6bd9,-0x4(%bp)
   5973e:	ff 76 08             	push   0x8(%bp)
   59741:	ff 76 06             	push   0x6(%bp)
   59744:	9a cc 49 00 00       	lcall  $0x0,$0x49cc
   59749:	83 c4 04             	add    $0x4,%sp
   5974c:	3d 08 00             	cmp    $0x8,%ax
   5974f:	76 14                	jbe    0x59765
   59751:	6a ff                	push   $0xffff
   59753:	1e                   	push   %ds
   59754:	68 fa 6b             	push   $0x6bfa
   59757:	6a 16                	push   $0x16
   59759:	1e                   	push   %ds
   5975a:	68 e7 6b             	push   $0x6be7
   5975d:	9a 2a 00 58 01       	lcall  $0x158,$0x2a
   59762:	83 c4 0c             	add    $0xc,%sp
   59765:	1e                   	push   %ds
   59766:	68 16 6c             	push   $0x6c16
   59769:	6a 19                	push   $0x19
   5976b:	68 88 01             	push   $0x188
   5976e:	68 26 de             	push   $0xde26
   59771:	9a 81 0a 20 00       	lcall  $0x20,$0xa81
   59776:	83 c4 0a             	add    $0xa,%sp
   59779:	ff 76 08             	push   0x8(%bp)
   5977c:	ff 76 06             	push   0x6(%bp)
   5977f:	1e                   	push   %ds
   59780:	68 29 6c             	push   $0x6c29
   59783:	ff 76 fe             	push   -0x2(%bp)
   59786:	ff 76 fc             	push   -0x4(%bp)
   59789:	9a b4 48 00 00       	lcall  $0x0,$0x48b4
   5978e:	83 c4 0c             	add    $0xc,%sp
   59791:	ff 76 fe             	push   -0x2(%bp)
   59794:	ff 76 fc             	push   -0x4(%bp)
   59797:	0e                   	push   %cs
   59798:	e8 f5 f1             	call   0x58990
   5979b:	83 c4 04             	add    $0x4,%sp
   5979e:	ff 76 08             	push   0x8(%bp)
   597a1:	ff 76 06             	push   0x6(%bp)
   597a4:	1e                   	push   %ds
   597a5:	68 30 6c             	push   $0x6c30
   597a8:	ff 76 fe             	push   -0x2(%bp)
   597ab:	ff 76 fc             	push   -0x4(%bp)
   597ae:	9a b4 48 00 00       	lcall  $0x0,$0x48b4
   597b3:	83 c4 0c             	add    $0xc,%sp
   597b6:	ff 76 fe             	push   -0x2(%bp)
   597b9:	ff 76 fc             	push   -0x4(%bp)
   597bc:	0e                   	push   %cs
   597bd:	e8 aa f3             	call   0x58b6a
   597c0:	83 c4 04             	add    $0x4,%sp
   597c3:	0e                   	push   %cs
   597c4:	e8 1f fe             	call   0x595e6
   597c7:	88 46 fb             	mov    %al,-0x5(%bp)
   597ca:	0e                   	push   %cs
   597cb:	e8 d4 f5             	call   0x58da2
   597ce:	68 88 01             	push   $0x188
   597d1:	68 26 de             	push   $0xde26
   597d4:	9a 22 0b 20 00       	lcall  $0x20,$0xb22
   597d9:	83 c4 04             	add    $0x4,%sp
   597dc:	8a 46 fb             	mov    -0x5(%bp),%al
   597df:	c9                   	leave
   597e0:	cb                   	lret
