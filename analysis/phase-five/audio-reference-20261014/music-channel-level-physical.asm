
lale/IST.EXE:     file format binary


Disassembly of section .data:

00012985 <.data+0x12985>:
   12985:	c8 00 00 00          	enter  $0x0,$0x0
   12989:	1e                   	push   %ds
   1298a:	b8 e0 16             	mov    $0x16e0,%ax
   1298d:	8e d8                	mov    %ax,%ds
   1298f:	66 8b 5e 0a          	mov    0xa(%bp),%ebx
   12993:	66 8b 46 06          	mov    0x6(%bp),%eax
   12997:	66 83 fb ff          	cmp    $0xffffffff,%ebx
   1299b:	75 0e                	jne    0x129ab
   1299d:	b9 20 00             	mov    $0x20,%cx
   129a0:	2b db                	sub    %bx,%bx
   129a2:	88 87 71 85          	mov    %al,-0x7a8f(%bx)
   129a6:	43                   	inc    %bx
   129a7:	e2 f9                	loop   0x129a2
   129a9:	eb 09                	jmp    0x129b4
   129ab:	83 fb 1f             	cmp    $0x1f,%bx
   129ae:	77 04                	ja     0x129b4
   129b0:	88 87 71 85          	mov    %al,-0x7a8f(%bx)
   129b4:	1f                   	pop    %ds
   129b5:	c9                   	leave
   129b6:	ca 08 00             	lret   $0x8
