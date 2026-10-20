
lale/SDISB16.DSD:     file format binary


Disassembly of section .data:

000030cb <.data+0x30cb>:
    30cb:	06                   	push   %es
    30cc:	57                   	push   %di
    30cd:	fc                   	cld
    30ce:	8e 06 0a 0a          	mov    0xa0a,%es
    30d2:	2b ff                	sub    %di,%di
    30d4:	be 6d 0f             	mov    $0xf6d,%si
    30d7:	89 5e f8             	mov    %bx,-0x8(%bp)
    30da:	c7 46 fa 20 00       	movw   $0x20,-0x6(%bp)
    30df:	c7 46 fe 80 ff       	movw   $0xff80,-0x2(%bp)
    30e4:	b9 00 01             	mov    $0x100,%cx
    30e7:	66 0f bf 46 fe       	movswl -0x2(%bp),%eax
    30ec:	66 c1 e0 08          	shl    $0x8,%eax
    30f0:	66 0f b7 1c          	movzwl (%si),%ebx
    30f4:	66 f7 eb             	imul   %ebx
    30f7:	66 0f b7 5e f8       	movzwl -0x8(%bp),%ebx
    30fc:	66 f7 fb             	idiv   %ebx
    30ff:	66 c1 f8 05          	sar    $0x5,%eax
    3103:	26 89 05             	mov    %ax,%es:(%di)
    3106:	83 c7 02             	add    $0x2,%di
    3109:	ff 46 fe             	incw   -0x2(%bp)
    310c:	e2 d9                	loop   0x30e7
    310e:	83 c6 02             	add    $0x2,%si
    3111:	ff 4e fa             	decw   -0x6(%bp)
    3114:	75 c9                	jne    0x30df
    3116:	5f                   	pop    %di
    3117:	07                   	pop    %es
    3118:	c9                   	leave
    3119:	cb                   	lret
