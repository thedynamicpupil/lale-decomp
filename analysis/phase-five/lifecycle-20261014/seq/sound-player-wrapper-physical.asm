
lale/IST.EXE:     file format binary


Disassembly of section .data:

0000f96f <.data+0xf96f>:
    f96f:	c8 68 00 00          	enter  $0x68,$0x0
    f973:	a0 d0 73             	mov    0x73d0,%al
    f976:	98                   	cbtw
    f977:	0b c0                	or     %ax,%ax
    f979:	75 03                	jne    0xf97e
    f97b:	e9 90 00             	jmp    0xfa0e
    f97e:	83 7e 0a 00          	cmpw   $0x0,0xa(%bp)
    f982:	7f 44                	jg     0xf9c8
    f984:	7c 06                	jl     0xf98c
    f986:	83 7e 08 00          	cmpw   $0x0,0x8(%bp)
    f98a:	73 3c                	jae    0xf9c8
    f98c:	ff 76 0e             	push   0xe(%bp)
    f98f:	ff 76 0c             	push   0xc(%bp)
    f992:	ff 76 0a             	push   0xa(%bp)
    f995:	ff 76 08             	push   0x8(%bp)
    f998:	ff 76 06             	push   0x6(%bp)
    f99b:	8a 46 14             	mov    0x14(%bp),%al
    f99e:	b4 00                	mov    $0x0,%ah
    f9a0:	50                   	push   %ax
    f9a1:	1e                   	push   %ds
    f9a2:	68 de 73             	push   $0x73de
    f9a5:	16                   	push   %ss
    f9a6:	8d 46 98             	lea    -0x68(%bp),%ax
    f9a9:	50                   	push   %ax
    f9aa:	9a b4 48 00 00       	lcall  $0x0,$0x48b4
    f9af:	83 c4 14             	add    $0x14,%sp
    f9b2:	6a ff                	push   $0xffff
    f9b4:	16                   	push   %ss
    f9b5:	8d 46 98             	lea    -0x68(%bp),%ax
    f9b8:	50                   	push   %ax
    f9b9:	68 20 01             	push   $0x120
    f9bc:	1e                   	push   %ds
    f9bd:	68 3a 74             	push   $0x743a
    f9c0:	9a 2a 00 c1 16       	lcall  $0x16c1,$0x2a
    f9c5:	83 c4 0c             	add    $0xc,%sp
    f9c8:	8a 46 14             	mov    0x14(%bp),%al
    f9cb:	b4 00                	mov    $0x0,%ah
    f9cd:	99                   	cwtd
    f9ce:	52                   	push   %dx
    f9cf:	50                   	push   %ax
    f9d0:	8b 46 06             	mov    0x6(%bp),%ax
    f9d3:	6b c0 17             	imul   $0x17,%ax,%ax
    f9d6:	05 38 de             	add    $0xde38,%ax
    f9d9:	68 e0 16             	push   $0x16e0
    f9dc:	50                   	push   %ax
    f9dd:	9a 8f 00 ae 0e       	lcall  $0xeae,$0x8f
    f9e2:	8a 46 14             	mov    0x14(%bp),%al
    f9e5:	b4 00                	mov    $0x0,%ah
    f9e7:	99                   	cwtd
    f9e8:	52                   	push   %dx
    f9e9:	50                   	push   %ax
    f9ea:	ff 76 12             	push   0x12(%bp)
    f9ed:	ff 76 10             	push   0x10(%bp)
    f9f0:	9a b4 01 ae 0e       	lcall  $0xeae,$0x1b4
    f9f5:	8a 46 14             	mov    0x14(%bp),%al
    f9f8:	b4 00                	mov    $0x0,%ah
    f9fa:	99                   	cwtd
    f9fb:	52                   	push   %dx
    f9fc:	50                   	push   %ax
    f9fd:	ff 76 0a             	push   0xa(%bp)
    fa00:	ff 76 08             	push   0x8(%bp)
    fa03:	ff 76 0e             	push   0xe(%bp)
    fa06:	ff 76 0c             	push   0xc(%bp)
    fa09:	9a b8 00 ae 0e       	lcall  $0xeae,$0xb8
    fa0e:	c9                   	leave
    fa0f:	cb                   	lret
