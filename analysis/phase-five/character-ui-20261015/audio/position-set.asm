
lale/SDISB16.DSD:     file format binary


Disassembly of section .data:

00003941 <.data+0x3941>:
    3941:	c8 00 00 00          	enter  $0x0,$0x0
    3945:	1e                   	push   %ds
    3946:	b8 d3 03             	mov    $0x3d3,%ax
    3949:	8e d8                	mov    %ax,%ds
    394b:	b8 ff ff             	mov    $0xffff,%ax
    394e:	f6 06 8e 08 02       	testb  $0x2,0x88e
    3953:	74 28                	je     0x397d
    3955:	66 8b 5e 0a          	mov    0xa(%bp),%ebx
    3959:	3b 1e 27 0a          	cmp    0xa27,%bx
    395d:	73 1e                	jae    0x397d
    395f:	d1 e3                	shl    $1,%bx
    3961:	2e 8b 9f a5 16       	mov    %cs:0x16a5(%bx),%bx
    3966:	66 8b 46 0a          	mov    0xa(%bp),%eax
    396a:	24 1f                	and    $0x1f,%al
    396c:	0c 80                	or     $0x80,%al
    396e:	a2 65 1d             	mov    %al,0x1d65
    3971:	66 8b 46 06          	mov    0x6(%bp),%eax
    3975:	66 a3 60 1d          	mov    %eax,0x1d60
    3979:	0e                   	push   %cs
    397a:	e8 5a fb             	call   0x34d7
    397d:	1f                   	pop    %ds
    397e:	c9                   	leave
    397f:	ca 08 00             	lret   $0x8
    3982:	d1 e3                	shl    $1,%bx
    3984:	2e 8b 9f a5 16       	mov    %cs:0x16a5(%bx),%bx
    3989:	f7 87 65 0a 01 00    	testw  $0x1,0xa65(%bx)
    398f:	74 1e                	je     0x39af
    3991:	66 3b 87 6b 0a       	cmp    0xa6b(%bx),%eax
    3996:	72 0c                	jb     0x39a4
    3998:	66 8b 87 6b 0a       	mov    0xa6b(%bx),%eax
    399d:	66 89 87 73 0a       	mov    %eax,0xa73(%bx)
    39a2:	eb 0b                	jmp    0x39af
    39a4:	66 89 87 73 0a       	mov    %eax,0xa73(%bx)
    39a9:	c7 87 88 0a 00 00    	movw   $0x0,0xa88(%bx)
    39af:	c3                   	ret
