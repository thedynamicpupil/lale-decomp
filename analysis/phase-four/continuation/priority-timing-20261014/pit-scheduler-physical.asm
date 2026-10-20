
lale/IST.EXE:     file format binary


Disassembly of section .data:

00013326 <.data+0x13326>:
   13326:	9c                   	pushf
   13327:	fa                   	cli
   13328:	8b d8                	mov    %ax,%bx
   1332a:	b0 36                	mov    $0x36,%al
   1332c:	e6 43                	out    %al,$0x43
   1332e:	8b c3                	mov    %bx,%ax
   13330:	e6 40                	out    %al,$0x40
   13332:	8a c4                	mov    %ah,%al
   13334:	e6 40                	out    %al,$0x40
   13336:	9d                   	popf
   13337:	c3                   	ret
   13338:	50                   	push   %ax
   13339:	53                   	push   %bx
   1333a:	51                   	push   %cx
   1333b:	1e                   	push   %ds
   1333c:	b0 20                	mov    $0x20,%al
   1333e:	e6 20                	out    %al,$0x20
   13340:	b8 e0 16             	mov    $0x16e0,%ax
   13343:	8e d8                	mov    %ax,%ds
   13345:	8b 0e ae 86          	mov    -0x7952,%cx
   13349:	2b db                	sub    %bx,%bx
   1334b:	41                   	inc    %cx
   1334c:	fb                   	sti
   1334d:	80 bf da 85 01       	cmpb   $0x1,-0x7a26(%bx)
   13352:	75 0f                	jne    0x13363
   13354:	8b 87 d6 85          	mov    -0x7a2a(%bx),%ax
   13358:	01 87 d8 85          	add    %ax,-0x7a28(%bx)
   1335c:	73 05                	jae    0x13363
   1335e:	9c                   	pushf
   1335f:	ff 9f ce 85          	lcall  *-0x7a32(%bx)
   13363:	83 c3 0e             	add    $0xe,%bx
   13366:	e2 e5                	loop   0x1334d
   13368:	1f                   	pop    %ds
   13369:	59                   	pop    %cx
   1336a:	5b                   	pop    %bx
   1336b:	58                   	pop    %ax
   1336c:	cf                   	iret
   1336d:	1e                   	push   %ds
   1336e:	57                   	push   %di
   1336f:	b8 e0 16             	mov    $0x16e0,%ax
   13372:	8e d8                	mov    %ax,%ds
   13374:	b8 ff ff             	mov    $0xffff,%ax
   13377:	80 3e b1 86 be       	cmpb   $0xbe,-0x794f
   1337c:	74 4e                	je     0x133cc
   1337e:	c6 06 b0 86 01       	movb   $0x1,-0x7950
   13383:	c7 06 ae 86 00 00    	movw   $0x0,-0x7952
   13389:	1e                   	push   %ds
   1338a:	07                   	pop    %es
   1338b:	bf ce 85             	mov    $0x85ce,%di
   1338e:	2a c0                	sub    %al,%al
   13390:	fc                   	cld
   13391:	b9 e0 00             	mov    $0xe0,%cx
   13394:	f3 aa                	rep stos %al,%es:(%di)
   13396:	b8 ff ff             	mov    $0xffff,%ax
   13399:	a3 b2 86             	mov    %ax,0x86b2
   1339c:	a3 d2 85             	mov    %ax,0x85d2
   1339f:	a3 d6 85             	mov    %ax,0x85d6
   133a2:	e8 81 ff             	call   0x13326
   133a5:	06                   	push   %es
   133a6:	b8 08 35             	mov    $0x3508,%ax
   133a9:	cd 21                	int    $0x21
   133ab:	8c 06 d0 85          	mov    %es,-0x7a30
   133af:	89 1e ce 85          	mov    %bx,-0x7a32
   133b3:	c6 06 da 85 01       	movb   $0x1,-0x7a26
   133b8:	07                   	pop    %es
   133b9:	1e                   	push   %ds
   133ba:	0e                   	push   %cs
   133bb:	1f                   	pop    %ds
   133bc:	ba 48 00             	mov    $0x48,%dx
   133bf:	b8 08 25             	mov    $0x2508,%ax
   133c2:	cd 21                	int    $0x21
   133c4:	1f                   	pop    %ds
   133c5:	c6 06 b1 86 be       	movb   $0xbe,-0x794f
   133ca:	2b c0                	sub    %ax,%ax
   133cc:	5f                   	pop    %di
   133cd:	1f                   	pop    %ds
   133ce:	cb                   	lret
   133cf:	1e                   	push   %ds
   133d0:	b8 e0 16             	mov    $0x16e0,%ax
   133d3:	8e d8                	mov    %ax,%ds
   133d5:	80 3e b1 86 be       	cmpb   $0xbe,-0x794f
   133da:	75 22                	jne    0x133fe
   133dc:	fa                   	cli
   133dd:	a1 d2 85             	mov    0x85d2,%ax
   133e0:	e8 43 ff             	call   0x13326
   133e3:	a1 d2 85             	mov    0x85d2,%ax
   133e6:	e8 3d ff             	call   0x13326
   133e9:	1e                   	push   %ds
   133ea:	8b 16 ce 85          	mov    -0x7a32,%dx
   133ee:	8e 1e d0 85          	mov    -0x7a30,%ds
   133f2:	b8 08 25             	mov    $0x2508,%ax
   133f5:	cd 21                	int    $0x21
   133f7:	1f                   	pop    %ds
   133f8:	fb                   	sti
   133f9:	c6 06 b1 86 00       	movb   $0x0,-0x794f
   133fe:	1f                   	pop    %ds
   133ff:	cb                   	lret
   13400:	c8 00 00 00          	enter  $0x0,$0x0
   13404:	1e                   	push   %ds
   13405:	b8 e0 16             	mov    $0x16e0,%ax
   13408:	8e d8                	mov    %ax,%ds
   1340a:	b8 ff ff             	mov    $0xffff,%ax
   1340d:	80 3e b1 86 be       	cmpb   $0xbe,-0x794f
   13412:	75 4f                	jne    0x13463
   13414:	66 6b 5e 0a 0e       	imul   $0xe,0xa(%bp),%ebx
   13419:	80 bf da 85 01       	cmpb   $0x1,-0x7a26(%bx)
   1341e:	75 43                	jne    0x13463
   13420:	8b 46 06             	mov    0x6(%bp),%ax
   13423:	89 87 d2 85          	mov    %ax,-0x7a2e(%bx)
   13427:	3b 06 b2 86          	cmp    -0x794e,%ax
   1342b:	73 06                	jae    0x13433
   1342d:	a3 b2 86             	mov    %ax,0x86b2
   13430:	e8 f3 fe             	call   0x13326
   13433:	8b 0e ae 86          	mov    -0x7952,%cx
   13437:	41                   	inc    %cx
   13438:	2b db                	sub    %bx,%bx
   1343a:	80 bf da 85 01       	cmpb   $0x1,-0x7a26(%bx)
   1343f:	75 1b                	jne    0x1345c
   13441:	8b 16 b2 86          	mov    -0x794e,%dx
   13445:	b8 ff ff             	mov    $0xffff,%ax
   13448:	39 97 d2 85          	cmp    %dx,-0x7a2e(%bx)
   1344c:	76 04                	jbe    0x13452
   1344e:	f7 b7 d2 85          	divw   -0x7a2e(%bx)
   13452:	89 87 d6 85          	mov    %ax,-0x7a2a(%bx)
   13456:	c7 87 d8 85 ff ff    	movw   $0xffff,-0x7a28(%bx)
   1345c:	83 c3 0e             	add    $0xe,%bx
   1345f:	e2 d9                	loop   0x1343a
   13461:	2b c0                	sub    %ax,%ax
   13463:	1f                   	pop    %ds
   13464:	c9                   	leave
   13465:	ca 08 00             	lret   $0x8
   13468:	c8 02 00 00          	enter  $0x2,$0x0
   1346c:	1e                   	push   %ds
   1346d:	57                   	push   %di
   1346e:	56                   	push   %si
   1346f:	b8 e0 16             	mov    $0x16e0,%ax
   13472:	8e d8                	mov    %ax,%ds
   13474:	b8 ff ff             	mov    $0xffff,%ax
   13477:	80 3e b1 86 be       	cmpb   $0xbe,-0x794f
   1347c:	75 71                	jne    0x134ef
   1347e:	b8 fe ff             	mov    $0xfffe,%ax
   13481:	80 3e b0 86 10       	cmpb   $0x10,-0x7950
   13486:	7d 67                	jge    0x134ef
   13488:	b8 01 00             	mov    $0x1,%ax
   1348b:	b9 0f 00             	mov    $0xf,%cx
   1348e:	50                   	push   %ax
   1348f:	6b c0 0e             	imul   $0xe,%ax,%ax
   13492:	8b d8                	mov    %ax,%bx
   13494:	58                   	pop    %ax
   13495:	80 bf da 85 00       	cmpb   $0x0,-0x7a26(%bx)
   1349a:	74 08                	je     0x134a4
   1349c:	40                   	inc    %ax
   1349d:	e2 ef                	loop   0x1348e
   1349f:	b8 fe ff             	mov    $0xfffe,%ax
   134a2:	eb 4b                	jmp    0x134ef
   134a4:	88 46 fe             	mov    %al,-0x2(%bp)
   134a7:	3b 06 ae 86          	cmp    -0x7952,%ax
   134ab:	7e 03                	jle    0x134b0
   134ad:	a3 ae 86             	mov    %ax,0x86ae
   134b0:	66 8b 46 0a          	mov    0xa(%bp),%eax
   134b4:	66 89 87 ce 85       	mov    %eax,-0x7a32(%bx)
   134b9:	c6 87 da 85 01       	movb   $0x1,-0x7a26(%bx)
   134be:	c6 87 db 85 00       	movb   $0x0,-0x7a25(%bx)
   134c3:	8b 46 06             	mov    0x6(%bp),%ax
   134c6:	89 87 d2 85          	mov    %ax,-0x7a2e(%bx)
   134ca:	53                   	push   %bx
   134cb:	66 0f b6 46 fe       	movzbl -0x2(%bp),%eax
   134d0:	66 50                	push   %eax
   134d2:	66 ff 76 06          	pushl  0x6(%bp)
   134d6:	0e                   	push   %cs
   134d7:	e8 26 ff             	call   0x13400
   134da:	5b                   	pop    %bx
   134db:	0b c0                	or     %ax,%ax
   134dd:	74 07                	je     0x134e6
   134df:	c6 87 da 85 00       	movb   $0x0,-0x7a26(%bx)
   134e4:	eb 09                	jmp    0x134ef
   134e6:	fe 06 b0 86          	incb   -0x7950
   134ea:	66 0f b6 46 fe       	movzbl -0x2(%bp),%eax
   134ef:	5e                   	pop    %si
   134f0:	5f                   	pop    %di
   134f1:	1f                   	pop    %ds
   134f2:	c9                   	leave
   134f3:	ca 08 00             	lret   $0x8
   134f6:	c8 00 00 00          	enter  $0x0,$0x0
   134fa:	1e                   	push   %ds
   134fb:	b8 e0 16             	mov    $0x16e0,%ax
   134fe:	8e d8                	mov    %ax,%ds
   13500:	b8 ff ff             	mov    $0xffff,%ax
   13503:	80 3e b1 86 be       	cmpb   $0xbe,-0x794f
   13508:	75 44                	jne    0x1354e
   1350a:	b8 fe ff             	mov    $0xfffe,%ax
   1350d:	8b 56 06             	mov    0x6(%bp),%dx
   13510:	83 fa 01             	cmp    $0x1,%dx
   13513:	7c 39                	jl     0x1354e
   13515:	83 fa 0f             	cmp    $0xf,%dx
   13518:	7f 34                	jg     0x1354e
   1351a:	8a c2                	mov    %dl,%al
   1351c:	b4 0e                	mov    $0xe,%ah
   1351e:	f6 e4                	mul    %ah
   13520:	8b d8                	mov    %ax,%bx
   13522:	b8 fe ff             	mov    $0xfffe,%ax
   13525:	80 bf da 85 01       	cmpb   $0x1,-0x7a26(%bx)
   1352a:	75 22                	jne    0x1354e
   1352c:	c6 87 da 85 00       	movb   $0x0,-0x7a26(%bx)
   13531:	fe 0e b0 86          	decb   -0x7950
   13535:	b9 10 00             	mov    $0x10,%cx
   13538:	2b db                	sub    %bx,%bx
   1353a:	2b c0                	sub    %ax,%ax
   1353c:	80 bf da 85 01       	cmpb   $0x1,-0x7a26(%bx)
   13541:	75 03                	jne    0x13546
   13543:	a3 ae 86             	mov    %ax,0x86ae
   13546:	40                   	inc    %ax
   13547:	83 c3 0e             	add    $0xe,%bx
   1354a:	e2 f0                	loop   0x1353c
   1354c:	2b c0                	sub    %ax,%ax
   1354e:	1f                   	pop    %ds
   1354f:	c9                   	leave
   13550:	ca 04 00             	lret   $0x4
   13553:	c8 00 00 00          	enter  $0x0,$0x0
   13557:	1e                   	push   %ds
   13558:	b8 e0 16             	mov    $0x16e0,%ax
   1355b:	8e d8                	mov    %ax,%ds
   1355d:	b8 ff ff             	mov    $0xffff,%ax
   13560:	80 3e b1 86 be       	cmpb   $0xbe,-0x794f
   13565:	75 39                	jne    0x135a0
   13567:	8b 46 06             	mov    0x6(%bp),%ax
   1356a:	a3 b2 86             	mov    %ax,0x86b2
   1356d:	e8 b6 fd             	call   0x13326
   13570:	8b 0e ae 86          	mov    -0x7952,%cx
   13574:	41                   	inc    %cx
   13575:	2b db                	sub    %bx,%bx
   13577:	80 bf da 85 01       	cmpb   $0x1,-0x7a26(%bx)
   1357c:	75 1b                	jne    0x13599
   1357e:	8b 16 b2 86          	mov    -0x794e,%dx
   13582:	b8 ff ff             	mov    $0xffff,%ax
   13585:	39 97 d2 85          	cmp    %dx,-0x7a2e(%bx)
   13589:	76 04                	jbe    0x1358f
   1358b:	f7 b7 d2 85          	divw   -0x7a2e(%bx)
   1358f:	89 87 d6 85          	mov    %ax,-0x7a2a(%bx)
   13593:	c7 87 d8 85 ff ff    	movw   $0xffff,-0x7a28(%bx)
   13599:	83 c3 0e             	add    $0xe,%bx
   1359c:	e2 d9                	loop   0x13577
   1359e:	2b c0                	sub    %ax,%ax
   135a0:	1f                   	pop    %ds
   135a1:	c9                   	leave
   135a2:	ca 04 00             	lret   $0x4
   135a5:	1e                   	push   %ds
   135a6:	b8 e0 16             	mov    $0x16e0,%ax
   135a9:	8e d8                	mov    %ax,%ds
   135ab:	66 0f b7 06 b2 86    	movzwl -0x794e,%eax
   135b1:	1f                   	pop    %ds
   135b2:	cb                   	lret
