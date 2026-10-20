
analysis/phase-five/lifecycle-20261014/runtime/default-callback.bin:     file format binary


Disassembly of section .data:

00008ab6 <.data>:
    8ab6:	55                   	push   bp
    8ab7:	8b ec                	mov    bp,sp
    8ab9:	9a 39 00 d3 16       	call   0x16d3:0x39
    8abe:	b4 00                	mov    ah,0x0
    8ac0:	0b c0                	or     ax,ax
    8ac2:	74 07                	je     0x8acb
    8ac4:	3d ff 00             	cmp    ax,0xff
    8ac7:	74 12                	je     0x8adb
    8ac9:	eb 25                	jmp    0x8af0
    8acb:	6a ff                	push   0xffff
    8acd:	6a ff                	push   0xffff
    8acf:	6a 00                	push   0x0
    8ad1:	9a 34 00 d3 16       	call   0x16d3:0x34
    8ad6:	83 c4 06             	add    sp,0x6
    8ad9:	eb 15                	jmp    0x8af0
    8adb:	6a 39                	push   0x39
    8add:	6a 00                	push   0x0
    8adf:	6a 00                	push   0x0
    8ae1:	68 91 00             	push   0x91
    8ae4:	1e                   	push   ds
    8ae5:	68 4a 6c             	push   0x6c4a
    8ae8:	9a 2a 00 c1 16       	call   0x16c1:0x2a
    8aed:	83 c4 0c             	add    sp,0xc
    8af0:	ff 76 08             	push   WORD PTR [bp+0x8]
    8af3:	ff 76 06             	push   WORD PTR [bp+0x6]
    8af6:	9a 9d 00 70 16       	call   0x1670:0x9d
    8afb:	83 c4 04             	add    sp,0x4
    8afe:	5d                   	pop    bp
    8aff:	cb                   	retf
