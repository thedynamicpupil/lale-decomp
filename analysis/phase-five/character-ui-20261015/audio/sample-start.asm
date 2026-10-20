
lale/SDISB16.DSD:     file format binary


Disassembly of section .data:

0000378a <.data+0x378a>:
    378a:	c8 00 00 00          	enter  $0x0,$0x0
    378e:	1e                   	push   %ds
    378f:	b8 d3 03             	mov    $0x3d3,%ax
    3792:	8e d8                	mov    %ax,%ds
    3794:	b8 ff ff             	mov    $0xffff,%ax
    3797:	f6 06 8e 08 02       	testb  $0x2,0x88e
    379c:	74 2e                	je     0x37cc
    379e:	66 8b 5e 0e          	mov    0xe(%bp),%ebx
    37a2:	3b 1e 27 0a          	cmp    0xa27,%bx
    37a6:	73 24                	jae    0x37cc
    37a8:	d1 e3                	shl    $1,%bx
    37aa:	2e 8b 9f a5 16       	mov    %cs:0x16a5(%bx),%bx
    37af:	66 8b 46 0e          	mov    0xe(%bp),%eax
    37b3:	24 1f                	and    $0x1f,%al
    37b5:	0c 20                	or     $0x20,%al
    37b7:	a2 65 1d             	mov    %al,0x1d65
    37ba:	66 8b 46 0a          	mov    0xa(%bp),%eax
    37be:	66 a3 60 1d          	mov    %eax,0x1d60
    37c2:	8a 46 06             	mov    0x6(%bp),%al
    37c5:	a2 64 1d             	mov    %al,0x1d64
    37c8:	0e                   	push   %cs
    37c9:	e8 0b fd             	call   0x34d7
    37cc:	1f                   	pop    %ds
    37cd:	c9                   	leave
    37ce:	ca 0c 00             	lret   $0xc
    37d1:	66 57                	push   %edi
    37d3:	66 56                	push   %esi
    37d5:	d1 e3                	shl    $1,%bx
    37d7:	2e 8b 9f a5 16       	mov    %cs:0x16a5(%bx),%bx
    37dc:	66 8b f8             	mov    %eax,%edi
    37df:	66 8b f1             	mov    %ecx,%esi
    37e2:	f7 87 65 0a 08 00    	testw  $0x8,0xa65(%bx)
    37e8:	74 6c                	je     0x3856
    37ea:	66 8b c6             	mov    %esi,%eax
    37ed:	fe c0                	inc    %al
    37ef:	d0 e8                	shr    $1,%al
    37f1:	3c 20                	cmp    $0x20,%al
    37f3:	76 02                	jbe    0x37f7
    37f5:	b0 20                	mov    $0x20,%al
    37f7:	88 87 7f 0a          	mov    %al,0xa7f(%bx)
    37fb:	66 8b c7             	mov    %edi,%eax
    37fe:	66 2b d2             	sub    %edx,%edx
    3801:	66 0f a4 c2 17       	shld   $0x17,%eax,%edx
    3806:	66 c1 e0 17          	shl    $0x17,%eax
    380a:	66 0f b7 0e 19 0a    	movzwl 0xa19,%ecx
    3810:	66 f7 f1             	div    %ecx
    3813:	66 89 87 6f 0a       	mov    %eax,0xa6f(%bx)
    3818:	66 8b c7             	mov    %edi,%eax
    381b:	66 89 87 80 0a       	mov    %eax,0xa80(%bx)
    3820:	66 2b d2             	sub    %edx,%edx
    3823:	66 f7 f1             	div    %ecx
    3826:	89 87 84 0a          	mov    %ax,0xa84(%bx)
    382a:	66 2b c0             	sub    %eax,%eax
    382d:	66 0f ac d0 10       	shrd   $0x10,%edx,%eax
    3832:	66 c1 ea 10          	shr    $0x10,%edx
    3836:	66 f7 f1             	div    %ecx
    3839:	89 87 86 0a          	mov    %ax,0xa86(%bx)
    383d:	66 c7 87 73 0a 00 00 	movl   $0x0,0xa73(%bx)
    3844:	00 00 
    3846:	c7 87 88 0a 00 00    	movw   $0x0,0xa88(%bx)
    384c:	83 8f 65 0a 01       	orw    $0x1,0xa65(%bx)
    3851:	83 a7 65 0a fd       	andw   $0xfffd,0xa65(%bx)
    3856:	66 5e                	pop    %esi
    3858:	66 5f                	pop    %edi
    385a:	c3                   	ret
