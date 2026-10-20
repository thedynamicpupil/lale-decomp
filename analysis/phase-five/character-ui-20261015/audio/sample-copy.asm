
lale/SDISB16.DSD:     file format binary


Disassembly of section .data:

00003699 <.data+0x3699>:
    3699:	c8 00 00 00          	enter  $0x0,$0x0
    369d:	1e                   	push   %ds
    369e:	06                   	push   %es
    369f:	56                   	push   %si
    36a0:	57                   	push   %di
    36a1:	b8 d3 03             	mov    $0x3d3,%ax
    36a4:	8e d8                	mov    %ax,%ds
    36a6:	b8 ff ff             	mov    $0xffff,%ax
    36a9:	f6 06 8e 08 02       	testb  $0x2,0x88e
    36ae:	74 4d                	je     0x36fd
    36b0:	66 8b 5e 0a          	mov    0xa(%bp),%ebx
    36b4:	3b 1e 27 0a          	cmp    0xa27,%bx
    36b8:	73 43                	jae    0x36fd
    36ba:	d1 e3                	shl    $1,%bx
    36bc:	2e 8b 9f a5 16       	mov    %cs:0x16a5(%bx),%bx
    36c1:	66 8b 46 0a          	mov    0xa(%bp),%eax
    36c5:	24 1f                	and    $0x1f,%al
    36c7:	0c 00                	or     $0x0,%al
    36c9:	a2 65 1d             	mov    %al,0x1d65
    36cc:	66 2b ff             	sub    %edi,%edi
    36cf:	8b 3e dc 1f          	mov    0x1fdc,%di
    36d3:	66 89 3e 60 1d       	mov    %edi,0x1d60
    36d8:	66 6b ff 13          	imul   $0x13,%edi,%edi
    36dc:	1e                   	push   %ds
    36dd:	81 c7 7c 1d          	add    $0x1d7c,%di
    36e1:	1e                   	push   %ds
    36e2:	07                   	pop    %es
    36e3:	c5 76 06             	lds    0x6(%bp),%si
    36e6:	b9 13 00             	mov    $0x13,%cx
    36e9:	fc                   	cld
    36ea:	f3 a4                	rep movsb %ds:(%si),%es:(%di)
    36ec:	1f                   	pop    %ds
    36ed:	0e                   	push   %cs
    36ee:	e8 e6 fd             	call   0x34d7
    36f1:	ff 0e dc 1f          	decw   0x1fdc
    36f5:	79 06                	jns    0x36fd
    36f7:	c7 06 dc 1f 1f 00    	movw   $0x1f,0x1fdc
    36fd:	5f                   	pop    %di
    36fe:	5e                   	pop    %si
    36ff:	07                   	pop    %es
    3700:	1f                   	pop    %ds
    3701:	c9                   	leave
    3702:	ca 08 00             	lret   $0x8
