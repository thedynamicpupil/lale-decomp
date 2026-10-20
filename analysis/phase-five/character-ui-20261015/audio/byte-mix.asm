
lale/SDISB16.DSD:     file format binary


Disassembly of section .data:

00001d2e <.data+0x1d2e>:
    1d2e:	1e                   	push   %ds
    1d2f:	66 81 e3 ff ff 00 00 	and    $0xffff,%ebx
    1d36:	66 81 e7 ff ff 00 00 	and    $0xffff,%edi
    1d3d:	66 c1 e0 10          	shl    $0x10,%eax
    1d41:	66 0b f8             	or     %eax,%edi
    1d44:	66 c1 c2 10          	rol    $0x10,%edx
    1d48:	ba 02 00             	mov    $0x2,%dx
    1d4b:	8e 1e 0e 0a          	mov    0xa0e,%ds
    1d4f:	83 ef 02             	sub    $0x2,%di
    1d52:	53                   	push   %bx
    1d53:	8b d9                	mov    %cx,%bx
    1d55:	c1 e9 03             	shr    $0x3,%cx
    1d58:	41                   	inc    %cx
    1d59:	83 e3 07             	and    $0x7,%bx
    1d5c:	03 db                	add    %bx,%bx
    1d5e:	2e 8b 87 6e 17       	mov    %cs:0x176e(%bx),%ax
    1d63:	5b                   	pop    %bx
    1d64:	ff e0                	jmp    *%ax
    1d66:	26 8a 1c             	mov    %es:(%si),%bl
    1d69:	66 03 fa             	add    %edx,%edi
    1d6c:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    1d70:	13 f5                	adc    %bp,%si
    1d72:	65 01 05             	add    %ax,%gs:(%di)
    1d75:	26 8a 1c             	mov    %es:(%si),%bl
    1d78:	66 03 fa             	add    %edx,%edi
    1d7b:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    1d7f:	13 f5                	adc    %bp,%si
    1d81:	65 01 05             	add    %ax,%gs:(%di)
    1d84:	26 8a 1c             	mov    %es:(%si),%bl
    1d87:	66 03 fa             	add    %edx,%edi
    1d8a:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    1d8e:	13 f5                	adc    %bp,%si
    1d90:	65 01 05             	add    %ax,%gs:(%di)
    1d93:	26 8a 1c             	mov    %es:(%si),%bl
    1d96:	66 03 fa             	add    %edx,%edi
    1d99:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    1d9d:	13 f5                	adc    %bp,%si
    1d9f:	65 01 05             	add    %ax,%gs:(%di)
    1da2:	26 8a 1c             	mov    %es:(%si),%bl
    1da5:	66 03 fa             	add    %edx,%edi
    1da8:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    1dac:	13 f5                	adc    %bp,%si
    1dae:	65 01 05             	add    %ax,%gs:(%di)
    1db1:	26 8a 1c             	mov    %es:(%si),%bl
    1db4:	66 03 fa             	add    %edx,%edi
    1db7:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    1dbb:	13 f5                	adc    %bp,%si
    1dbd:	65 01 05             	add    %ax,%gs:(%di)
    1dc0:	26 8a 1c             	mov    %es:(%si),%bl
    1dc3:	66 03 fa             	add    %edx,%edi
    1dc6:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    1dca:	13 f5                	adc    %bp,%si
    1dcc:	65 01 05             	add    %ax,%gs:(%di)
    1dcf:	26 8a 1c             	mov    %es:(%si),%bl
    1dd2:	66 03 fa             	add    %edx,%edi
    1dd5:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    1dd9:	13 f5                	adc    %bp,%si
    1ddb:	65 01 05             	add    %ax,%gs:(%di)
    1dde:	49                   	dec    %cx
    1ddf:	75 85                	jne    0x1d66
    1de1:	83 c7 02             	add    $0x2,%di
    1de4:	eb 00                	jmp    0x1de6
    1de6:	66 8b c7             	mov    %edi,%eax
    1de9:	66 c1 e8 10          	shr    $0x10,%eax
    1ded:	1f                   	pop    %ds
    1dee:	c3                   	ret
