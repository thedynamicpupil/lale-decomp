
lale/IST.EXE:     file format binary


Disassembly of section .data:

00058850 <.data+0x58850>:
   58850:	55                   	push   %bp
   58851:	8b ec                	mov    %sp,%bp
   58853:	83 ec 0a             	sub    $0xa,%sp
   58856:	8b 46 08             	mov    0x8(%bp),%ax
   58859:	8b 56 06             	mov    0x6(%bp),%dx
   5885c:	81 c2 00 fa          	add    $0xfa00,%dx
   58860:	89 46 fc             	mov    %ax,-0x4(%bp)
   58863:	89 56 fa             	mov    %dx,-0x6(%bp)
   58866:	8b 46 0c             	mov    0xc(%bp),%ax
   58869:	8b 56 0a             	mov    0xa(%bp),%dx
   5886c:	03 56 0e             	add    0xe(%bp),%dx
   5886f:	89 46 f8             	mov    %ax,-0x8(%bp)
   58872:	89 56 f6             	mov    %dx,-0xa(%bp)
   58875:	c4 5e 0a             	les    0xa(%bp),%bx
   58878:	26 8a 07             	mov    %es:(%bx),%al
   5887b:	88 46 ff             	mov    %al,-0x1(%bp)
   5887e:	f6 46 ff 80          	testb  $0x80,-0x1(%bp)
   58882:	74 02                	je     0x58886
   58884:	eb 70                	jmp    0x588f6
   58886:	f6 46 ff 40          	testb  $0x40,-0x1(%bp)
   5888a:	74 03                	je     0x5888f
   5888c:	e9 9d 00             	jmp    0x5892c
   5888f:	f6 46 ff 10          	testb  $0x10,-0x1(%bp)
   58893:	75 0c                	jne    0x588a1
   58895:	f6 46 ff 20          	testb  $0x20,-0x1(%bp)
   58899:	75 27                	jne    0x588c2
   5889b:	80 66 ff 0f          	andb   $0xf,-0x1(%bp)
   5889f:	eb 2f                	jmp    0x588d0
   588a1:	f6 46 ff 20          	testb  $0x20,-0x1(%bp)
   588a5:	75 0d                	jne    0x588b4
   588a7:	80 66 ff 0f          	andb   $0xf,-0x1(%bp)
   588ab:	d0 66 ff             	shlb   $1,-0x1(%bp)
   588ae:	80 46 ff 10          	addb   $0x10,-0x1(%bp)
   588b2:	eb 1c                	jmp    0x588d0
   588b4:	80 66 ff 0f          	andb   $0xf,-0x1(%bp)
   588b8:	c0 66 ff 03          	shlb   $0x3,-0x1(%bp)
   588bc:	80 46 ff 70          	addb   $0x70,-0x1(%bp)
   588c0:	eb 0e                	jmp    0x588d0
   588c2:	80 66 ff 0f          	andb   $0xf,-0x1(%bp)
   588c6:	c0 66 ff 02          	shlb   $0x2,-0x1(%bp)
   588ca:	80 46 ff 30          	addb   $0x30,-0x1(%bp)
   588ce:	eb 00                	jmp    0x588d0
   588d0:	80 46 ff 03          	addb   $0x3,-0x1(%bp)
   588d4:	ff 46 0a             	incw   0xa(%bp)
   588d7:	8a 46 ff             	mov    -0x1(%bp),%al
   588da:	b4 00                	mov    $0x0,%ah
   588dc:	50                   	push   %ax
   588dd:	c4 5e 0a             	les    0xa(%bp),%bx
   588e0:	26 8a 07             	mov    %es:(%bx),%al
   588e3:	b4 00                	mov    $0x0,%ah
   588e5:	50                   	push   %ax
   588e6:	ff 76 08             	push   0x8(%bp)
   588e9:	ff 76 06             	push   0x6(%bp)
   588ec:	9a 49 40 00 00       	lcall  $0x0,$0x4049
   588f1:	83 c4 08             	add    $0x8,%sp
   588f4:	eb 7a                	jmp    0x58970
   588f6:	80 66 ff 7f          	andb   $0x7f,-0x1(%bp)
   588fa:	fe 46 ff             	incb   -0x1(%bp)
   588fd:	ff 46 0a             	incw   0xa(%bp)
   58900:	8a 46 ff             	mov    -0x1(%bp),%al
   58903:	b4 00                	mov    $0x0,%ah
   58905:	50                   	push   %ax
   58906:	ff 76 0c             	push   0xc(%bp)
   58909:	ff 76 0a             	push   0xa(%bp)
   5890c:	ff 76 08             	push   0x8(%bp)
   5890f:	ff 76 06             	push   0x6(%bp)
   58912:	9a af 02 e0 01       	lcall  $0x1e0,$0x2af
   58917:	83 c4 0a             	add    $0xa,%sp
   5891a:	8a 46 ff             	mov    -0x1(%bp),%al
   5891d:	b4 00                	mov    $0x0,%ah
   5891f:	01 46 06             	add    %ax,0x6(%bp)
   58922:	8a 46 ff             	mov    -0x1(%bp),%al
   58925:	b4 00                	mov    $0x0,%ah
   58927:	01 46 0a             	add    %ax,0xa(%bp)
   5892a:	eb 4f                	jmp    0x5897b
   5892c:	f6 46 ff 10          	testb  $0x10,-0x1(%bp)
   58930:	75 0c                	jne    0x5893e
   58932:	f6 46 ff 20          	testb  $0x20,-0x1(%bp)
   58936:	75 27                	jne    0x5895f
   58938:	80 66 ff 0f          	andb   $0xf,-0x1(%bp)
   5893c:	eb 2f                	jmp    0x5896d
   5893e:	f6 46 ff 20          	testb  $0x20,-0x1(%bp)
   58942:	75 0d                	jne    0x58951
   58944:	80 66 ff 0f          	andb   $0xf,-0x1(%bp)
   58948:	d0 66 ff             	shlb   $1,-0x1(%bp)
   5894b:	80 46 ff 10          	addb   $0x10,-0x1(%bp)
   5894f:	eb 1c                	jmp    0x5896d
   58951:	80 66 ff 0f          	andb   $0xf,-0x1(%bp)
   58955:	c0 66 ff 03          	shlb   $0x3,-0x1(%bp)
   58959:	80 46 ff 70          	addb   $0x70,-0x1(%bp)
   5895d:	eb 0e                	jmp    0x5896d
   5895f:	80 66 ff 0f          	andb   $0xf,-0x1(%bp)
   58963:	c0 66 ff 02          	shlb   $0x2,-0x1(%bp)
   58967:	80 46 ff 30          	addb   $0x30,-0x1(%bp)
   5896b:	eb 00                	jmp    0x5896d
   5896d:	fe 46 ff             	incb   -0x1(%bp)
   58970:	8a 46 ff             	mov    -0x1(%bp),%al
   58973:	b4 00                	mov    $0x0,%ah
   58975:	01 46 06             	add    %ax,0x6(%bp)
   58978:	ff 46 0a             	incw   0xa(%bp)
   5897b:	8b 46 0a             	mov    0xa(%bp),%ax
   5897e:	3b 46 f6             	cmp    -0xa(%bp),%ax
   58981:	73 0b                	jae    0x5898e
   58983:	8b 46 06             	mov    0x6(%bp),%ax
   58986:	3b 46 fa             	cmp    -0x6(%bp),%ax
   58989:	73 03                	jae    0x5898e
   5898b:	e9 e7 fe             	jmp    0x58875
   5898e:	c9                   	leave
   5898f:	cb                   	lret
