
lale/IST.EXE:     file format binary


Disassembly of section .data:

0000ebfc <.data+0xebfc>:
    ebfc:	55                   	push   %bp
    ebfd:	8b ec                	mov    %sp,%bp
    ebff:	56                   	push   %si
    ec00:	1e                   	push   %ds
    ec01:	c5 76 0a             	lds    0xa(%bp),%si
    ec04:	ba c6 03             	mov    $0x3c6,%dx
    ec07:	b0 ff                	mov    $0xff,%al
    ec09:	ee                   	out    %al,(%dx)
    ec0a:	8a 5e 06             	mov    0x6(%bp),%bl
    ec0d:	ba c8 03             	mov    $0x3c8,%dx
    ec10:	88 d8                	mov    %bl,%al
    ec12:	ee                   	out    %al,(%dx)
    ec13:	8b 46 08             	mov    0x8(%bp),%ax
    ec16:	31 d2                	xor    %dx,%dx
    ec18:	f7 76 0e             	divw   0xe(%bp)
    ec1b:	29 46 08             	sub    %ax,0x8(%bp)
    ec1e:	b9 03 00             	mov    $0x3,%cx
    ec21:	f7 e1                	mul    %cx
    ec23:	89 c1                	mov    %ax,%cx
    ec25:	ba da 03             	mov    $0x3da,%dx
    ec28:	ec                   	in     (%dx),%al
    ec29:	24 08                	and    $0x8,%al
    ec2b:	74 fb                	je     0xec28
    ec2d:	ec                   	in     (%dx),%al
    ec2e:	24 08                	and    $0x8,%al
    ec30:	75 fb                	jne    0xec2d
    ec32:	ba c9 03             	mov    $0x3c9,%dx
    ec35:	f3 6e                	rep outsb %ds:(%si),(%dx)
    ec37:	ff 4e 0e             	decw   0xe(%bp)
    ec3a:	75 d7                	jne    0xec13
    ec3c:	1f                   	pop    %ds
    ec3d:	5e                   	pop    %si
    ec3e:	5d                   	pop    %bp
    ec3f:	cb                   	lret
    ec40:	55                   	push   %bp
    ec41:	8b ec                	mov    %sp,%bp
    ec43:	6a 01                	push   $0x1
    ec45:	ff 76 08             	push   0x8(%bp)
    ec48:	ff 76 06             	push   0x6(%bp)
    ec4b:	68 00 01             	push   $0x100
    ec4e:	6a 00                	push   $0x0
    ec50:	0e                   	push   %cs
    ec51:	e8 a8 ff             	call   0xebfc
    ec54:	83 c4 0a             	add    $0xa,%sp
    ec57:	5d                   	pop    %bp
    ec58:	cb                   	lret
