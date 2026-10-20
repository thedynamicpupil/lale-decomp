
lale/IST.EXE:     file format binary


Disassembly of section .data:

00058701 <.data+0x58701>:
   58701:	55                   	push   %bp
   58702:	8b ec                	mov    %sp,%bp
   58704:	83 ec 04             	sub    $0x4,%sp
   58707:	8b 5e 08             	mov    0x8(%bp),%bx
   5870a:	33 c9                	xor    %cx,%cx
   5870c:	8b 46 0a             	mov    0xa(%bp),%ax
   5870f:	99                   	cwtd
   58710:	9a 42 12 00 00       	lcall  $0x0,$0x1242
   58715:	89 56 fe             	mov    %dx,-0x2(%bp)
   58718:	89 46 fc             	mov    %ax,-0x4(%bp)
   5871b:	81 7e 08 00 c0       	cmpw   $0xc000,0x8(%bp)
   58720:	76 14                	jbe    0x58736
   58722:	6a 10                	push   $0x10
   58724:	6a 00                	push   $0x0
   58726:	6a 00                	push   $0x0
   58728:	6a 2d                	push   $0x2d
   5872a:	1e                   	push   %ds
   5872b:	68 fe 68             	push   $0x68fe
   5872e:	9a 2a 00 58 01       	lcall  $0x158,$0x2a
   58733:	83 c4 0c             	add    $0xc,%sp
   58736:	6a 13                	push   $0x13
   58738:	6a 00                	push   $0x0
   5873a:	8b 46 06             	mov    0x6(%bp),%ax
   5873d:	6b c0 17             	imul   $0x17,%ax,%ax
   58740:	05 38 de             	add    $0xde38,%ax
   58743:	68 88 01             	push   $0x188
   58746:	50                   	push   %ax
   58747:	9a 49 40 00 00       	lcall  $0x0,$0x4049
   5874c:	83 c4 08             	add    $0x8,%sp
   5874f:	8b 5e 06             	mov    0x6(%bp),%bx
   58752:	6b db 17             	imul   $0x17,%bx,%bx
   58755:	b8 88 01             	mov    $0x188,%ax
   58758:	8e c0                	mov    %ax,%es
   5875a:	26 8b 87 34 de       	mov    %es:-0x21cc(%bx),%ax
   5875f:	26 0b 87 36 de       	or     %es:-0x21ca(%bx),%ax
   58764:	74 14                	je     0x5877a
   58766:	6a 25                	push   $0x25
   58768:	6a 00                	push   $0x0
   5876a:	6a 00                	push   $0x0
   5876c:	6a 31                	push   $0x31
   5876e:	1e                   	push   %ds
   5876f:	68 17 69             	push   $0x6917
   58772:	9a 2a 00 58 01       	lcall  $0x158,$0x2a
   58777:	83 c4 0c             	add    $0xc,%sp
   5877a:	6a 01                	push   $0x1
   5877c:	ff 76 fe             	push   -0x2(%bp)
   5877f:	ff 76 fc             	push   -0x4(%bp)
   58782:	9a 64 01 20 00       	lcall  $0x20,$0x164
   58787:	83 c4 06             	add    $0x6,%sp
   5878a:	8b 5e 06             	mov    0x6(%bp),%bx
   5878d:	6b db 17             	imul   $0x17,%bx,%bx
   58790:	b9 88 01             	mov    $0x188,%cx
   58793:	8e c1                	mov    %cx,%es
   58795:	26 89 97 36 de       	mov    %dx,%es:-0x21ca(%bx)
   5879a:	26 89 87 34 de       	mov    %ax,%es:-0x21cc(%bx)
   5879f:	8b 5e 06             	mov    0x6(%bp),%bx
   587a2:	6b db 17             	imul   $0x17,%bx,%bx
   587a5:	b8 88 01             	mov    $0x188,%ax
   587a8:	8e c0                	mov    %ax,%es
   587aa:	26 c4 9f 34 de       	les    %es:-0x21cc(%bx),%bx
   587af:	33 c0                	xor    %ax,%ax
   587b1:	26 0b 07             	or     %es:(%bx),%ax
   587b4:	8b 5e 06             	mov    0x6(%bp),%bx
   587b7:	6b db 17             	imul   $0x17,%bx,%bx
   587ba:	ba 88 01             	mov    $0x188,%dx
   587bd:	8e c2                	mov    %dx,%es
   587bf:	26 c7 87 3a de ff ff 	movw   $0xffff,%es:-0x21c6(%bx)
   587c6:	26 89 87 38 de       	mov    %ax,%es:-0x21c8(%bx)
   587cb:	8b 5e 06             	mov    0x6(%bp),%bx
   587ce:	6b db 17             	imul   $0x17,%bx,%bx
   587d1:	b8 88 01             	mov    $0x188,%ax
   587d4:	8e c0                	mov    %ax,%es
   587d6:	26 c4 9f 34 de       	les    %es:-0x21cc(%bx),%bx
   587db:	26 8b 07             	mov    %es:(%bx),%ax
   587de:	8b 5e 06             	mov    0x6(%bp),%bx
   587e1:	6b db 17             	imul   $0x17,%bx,%bx
   587e4:	ba 88 01             	mov    $0x188,%dx
   587e7:	8e c2                	mov    %dx,%es
   587e9:	26 89 87 49 de       	mov    %ax,%es:-0x21b7(%bx)
   587ee:	8b 5e 06             	mov    0x6(%bp),%bx
   587f1:	6b db 17             	imul   $0x17,%bx,%bx
   587f4:	b8 88 01             	mov    $0x188,%ax
   587f7:	8b 56 fe             	mov    -0x2(%bp),%dx
   587fa:	8b 4e fc             	mov    -0x4(%bp),%cx
   587fd:	8e c0                	mov    %ax,%es
   587ff:	26 89 97 3e de       	mov    %dx,%es:-0x21c2(%bx)
   58804:	26 89 8f 3c de       	mov    %cx,%es:-0x21c4(%bx)
   58809:	8b 5e 06             	mov    0x6(%bp),%bx
   5880c:	6b db 17             	imul   $0x17,%bx,%bx
   5880f:	b8 88 01             	mov    $0x188,%ax
   58812:	8e c0                	mov    %ax,%es
   58814:	26 c7 87 42 de 00 00 	movw   $0x0,%es:-0x21be(%bx)
   5881b:	26 c7 87 40 de 00 00 	movw   $0x0,%es:-0x21c0(%bx)
   58822:	8b 5e 06             	mov    0x6(%bp),%bx
   58825:	6b db 17             	imul   $0x17,%bx,%bx
   58828:	b8 88 01             	mov    $0x188,%ax
   5882b:	8b 56 fe             	mov    -0x2(%bp),%dx
   5882e:	8b 4e fc             	mov    -0x4(%bp),%cx
   58831:	8e c0                	mov    %ax,%es
   58833:	26 89 97 46 de       	mov    %dx,%es:-0x21ba(%bx)
   58838:	26 89 8f 44 de       	mov    %cx,%es:-0x21bc(%bx)
   5883d:	8b 5e 06             	mov    0x6(%bp),%bx
   58840:	6b db 17             	imul   $0x17,%bx,%bx
   58843:	b8 88 01             	mov    $0x188,%ax
   58846:	8e c0                	mov    %ax,%es
   58848:	26 c6 87 48 de 00    	movb   $0x0,%es:-0x21b8(%bx)
   5884e:	c9                   	leave
   5884f:	cb                   	lret
