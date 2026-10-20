
analysis/phase-five/acquisition-20261016/modal-wait-original.bin:     file format binary


Disassembly of section .data:

0000af8a <.data>:
    af8a:	55                   	push   %bp
    af8b:	8b ec                	mov    %sp,%bp
    af8d:	83 ec 0a             	sub    $0xa,%sp
    af90:	8b 46 06             	mov    0x6(%bp),%ax
    af93:	89 46 f6             	mov    %ax,-0xa(%bp)
    af96:	16                   	push   %ss
    af97:	8d 46 fc             	lea    -0x4(%bp),%ax
    af9a:	50                   	push   %ax
    af9b:	16                   	push   %ss
    af9c:	8d 46 fc             	lea    -0x4(%bp),%ax
    af9f:	50                   	push   %ax
    afa0:	16                   	push   %ss
    afa1:	8d 46 fc             	lea    -0x4(%bp),%ax
    afa4:	50                   	push   %ax
    afa5:	9a af 04 7f 0c       	lcall  $0xc7f,$0x4af
    afaa:	83 c4 0c             	add    $0xc,%sp
    afad:	89 46 f8             	mov    %ax,-0x8(%bp)
    afb0:	9a e3 01 b7 0d       	lcall  $0xdb7,$0x1e3
    afb5:	e9 e9 00             	jmp    0xb0a1
    afb8:	b8 e0 16             	mov    $0x16e0,%ax
    afbb:	8e c0                	mov    %ax,%es
    afbd:	26 a1 4a e7          	mov    %es:0xe74a,%ax
    afc1:	89 46 fe             	mov    %ax,-0x2(%bp)
    afc4:	eb 2a                	jmp    0xaff0
    afc6:	b8 e0 16             	mov    $0x16e0,%ax
    afc9:	8e c0                	mov    %ax,%es
    afcb:	26 ff 36 62 96       	push   %es:-0x699e
    afd0:	26 ff 36 60 96       	push   %es:-0x69a0
    afd5:	b8 e0 16             	mov    $0x16e0,%ax
    afd8:	8e c0                	mov    %ax,%es
    afda:	26 ff 1e 4c 96       	lcall  *%es:-0x69b4
    afdf:	83 c4 04             	add    $0x4,%sp
    afe2:	68 dc 05             	push   $0x5dc
    afe5:	68 9a 2d             	push   $0x2d9a
    afe8:	9a a1 04 7f 0c       	lcall  $0xc7f,$0x4a1
    afed:	83 c4 04             	add    $0x4,%sp
    aff0:	b8 e0 16             	mov    $0x16e0,%ax
    aff3:	8e c0                	mov    %ax,%es
    aff5:	26 a1 4a e7          	mov    %es:0xe74a,%ax
    aff9:	2b 46 fe             	sub    -0x2(%bp),%ax
    affc:	3d 14 00             	cmp    $0x14,%ax
    afff:	72 c5                	jb     0xafc6
    b001:	9a 45 2e 00 00       	lcall  $0x0,$0x2e45
    b006:	0b c0                	or     %ax,%ax
    b008:	74 2a                	je     0xb034
    b00a:	9a d7 29 00 00       	lcall  $0x0,$0x29d7
    b00f:	89 46 fa             	mov    %ax,-0x6(%bp)
    b012:	9a e3 01 b7 0d       	lcall  $0xdb7,$0x1e3
    b017:	83 7e fa 1b          	cmpw   $0x1b,-0x6(%bp)
    b01b:	74 0c                	je     0xb029
    b01d:	83 7e fa 20          	cmpw   $0x20,-0x6(%bp)
    b021:	74 06                	je     0xb029
    b023:	83 7e fa 0d          	cmpw   $0xd,-0x6(%bp)
    b027:	75 0b                	jne    0xb034
    b029:	8b 46 f6             	mov    -0xa(%bp),%ax
    b02c:	2b 46 06             	sub    0x6(%bp),%ax
    b02f:	3d 14 00             	cmp    $0x14,%ax
    b032:	7f 76                	jg     0xb0aa
    b034:	16                   	push   %ss
    b035:	8d 46 fc             	lea    -0x4(%bp),%ax
    b038:	50                   	push   %ax
    b039:	16                   	push   %ss
    b03a:	8d 46 fc             	lea    -0x4(%bp),%ax
    b03d:	50                   	push   %ax
    b03e:	16                   	push   %ss
    b03f:	8d 46 fc             	lea    -0x4(%bp),%ax
    b042:	50                   	push   %ax
    b043:	9a af 04 7f 0c       	lcall  $0xc7f,$0x4af
    b048:	83 c4 0c             	add    $0xc,%sp
    b04b:	3b 46 f8             	cmp    -0x8(%bp),%ax
    b04e:	74 3e                	je     0xb08e
    b050:	b8 e0 16             	mov    $0x16e0,%ax
    b053:	8e c0                	mov    %ax,%es
    b055:	26 a0 5c 96          	mov    %es:0x965c,%al
    b059:	50                   	push   %ax
    b05a:	9a c7 05 7f 0c       	lcall  $0xc7f,$0x5c7
    b05f:	59                   	pop    %cx
    b060:	0a c0                	or     %al,%al
    b062:	74 2a                	je     0xb08e
    b064:	9a 14 07 7f 0c       	lcall  $0xc7f,$0x714
    b069:	16                   	push   %ss
    b06a:	8d 46 fc             	lea    -0x4(%bp),%ax
    b06d:	50                   	push   %ax
    b06e:	16                   	push   %ss
    b06f:	8d 46 fc             	lea    -0x4(%bp),%ax
    b072:	50                   	push   %ax
    b073:	16                   	push   %ss
    b074:	8d 46 fc             	lea    -0x4(%bp),%ax
    b077:	50                   	push   %ax
    b078:	9a af 04 7f 0c       	lcall  $0xc7f,$0x4af
    b07d:	83 c4 0c             	add    $0xc,%sp
    b080:	89 46 f8             	mov    %ax,-0x8(%bp)
    b083:	8b 46 f6             	mov    -0xa(%bp),%ax
    b086:	2b 46 06             	sub    0x6(%bp),%ax
    b089:	3d 14 00             	cmp    $0x14,%ax
    b08c:	7f 1c                	jg     0xb0aa
    b08e:	b8 e0 16             	mov    $0x16e0,%ax
    b091:	8e c0                	mov    %ax,%es
    b093:	26 a0 e3 e5          	mov    %es:0xe5e3,%al
    b097:	50                   	push   %ax
    b098:	9a 6b 02 7f 0c       	lcall  $0xc7f,$0x26b
    b09d:	59                   	pop    %cx
    b09e:	ff 4e 06             	decw   0x6(%bp)
    b0a1:	83 7e 06 00          	cmpw   $0x0,0x6(%bp)
    b0a5:	7e 03                	jle    0xb0aa
    b0a7:	e9 0e ff             	jmp    0xafb8
    b0aa:	c9                   	leave
    b0ab:	cb                   	lret
