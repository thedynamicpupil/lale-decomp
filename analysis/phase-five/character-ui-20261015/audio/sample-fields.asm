
lale/SDISB16.DSD:     file format binary


Disassembly of section .data:

00003705 <.data+0x3705>:
    3705:	56                   	push   %si
    3706:	d1 e3                	shl    $1,%bx
    3708:	2e 8b 9f a5 16       	mov    %cs:0x16a5(%bx),%bx
    370d:	0f b6 f0             	movzbw %al,%si
    3710:	6b f6 13             	imul   $0x13,%si,%si
    3713:	81 c6 7c 1d          	add    $0x1d7c,%si
    3717:	1e                   	push   %ds
    3718:	07                   	pop    %es
    3719:	66 26 8b 04          	mov    %es:(%si),%eax
    371d:	66 0b c0             	or     %eax,%eax
    3720:	74 66                	je     0x3788
    3722:	66 89 87 67 0a       	mov    %eax,0xa67(%bx)
    3727:	66 26 8b 44 04       	mov    %es:0x4(%si),%eax
    372c:	66 0b c0             	or     %eax,%eax
    372f:	74 57                	je     0x3788
    3731:	66 89 87 6b 0a       	mov    %eax,0xa6b(%bx)
    3736:	26 f6 44 10 01       	testb  $0x1,%es:0x10(%si)
    373b:	74 22                	je     0x375f
    373d:	66 8b 87 73 0a       	mov    0xa73(%bx),%eax
    3742:	66 26 83 7c 0c 00    	cmpl   $0x0,%es:0xc(%si)
    3748:	74 0e                	je     0x3758
    374a:	66 26 3b 44 0c       	cmp    %es:0xc(%si),%eax
    374f:	72 16                	jb     0x3767
    3751:	66 26 8b 44 08       	mov    %es:0x8(%si),%eax
    3756:	eb 0a                	jmp    0x3762
    3758:	66 3b 87 6b 0a       	cmp    0xa6b(%bx),%eax
    375d:	72 08                	jb     0x3767
    375f:	66 2b c0             	sub    %eax,%eax
    3762:	66 89 87 73 0a       	mov    %eax,0xa73(%bx)
    3767:	66 26 8b 44 08       	mov    %es:0x8(%si),%eax
    376c:	66 89 87 77 0a       	mov    %eax,0xa77(%bx)
    3771:	66 26 8b 44 0c       	mov    %es:0xc(%si),%eax
    3776:	66 89 87 7b 0a       	mov    %eax,0xa7b(%bx)
    377b:	26 8b 44 11          	mov    %es:0x11(%si),%ax
    377f:	89 87 8a 0a          	mov    %ax,0xa8a(%bx)
    3783:	83 8f 65 0a 08       	orw    $0x8,0xa65(%bx)
    3788:	5e                   	pop    %si
    3789:	c3                   	ret
