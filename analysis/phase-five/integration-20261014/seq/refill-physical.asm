
lale/IST.EXE:     file format binary


Disassembly of section .data:

000592a8 <.data+0x592a8>:
   592a8:	55                   	push   %bp
   592a9:	8b ec                	mov    %sp,%bp
   592ab:	83 ec 0e             	sub    $0xe,%sp
   592ae:	c7 46 f6 00 00       	movw   $0x0,-0xa(%bp)
   592b3:	a1 f2 d5             	mov    0xd5f2,%ax
   592b6:	40                   	inc    %ax
   592b7:	89 46 f4             	mov    %ax,-0xc(%bp)
   592ba:	a1 16 d6             	mov    0xd616,%ax
   592bd:	40                   	inc    %ax
   592be:	3b 06 f2 d5          	cmp    -0x2a0e,%ax
   592c2:	7d 3e                	jge    0x59302
   592c4:	a1 f2 d5             	mov    0xd5f2,%ax
   592c7:	c1 e0 03             	shl    $0x3,%ax
   592ca:	c4 1e 1c d6          	les    -0x29e4,%bx
   592ce:	03 d8                	add    %ax,%bx
   592d0:	26 80 3f 00          	cmpb   $0x0,%es:(%bx)
   592d4:	75 2c                	jne    0x59302
   592d6:	eb 03                	jmp    0x592db
   592d8:	ff 46 f4             	incw   -0xc(%bp)
   592db:	8b 46 f4             	mov    -0xc(%bp),%ax
   592de:	3b 06 23 d6          	cmp    -0x29dd,%ax
   592e2:	73 12                	jae    0x592f6
   592e4:	8b 46 f4             	mov    -0xc(%bp),%ax
   592e7:	c1 e0 03             	shl    $0x3,%ax
   592ea:	c4 1e 1c d6          	les    -0x29e4,%bx
   592ee:	03 d8                	add    %ax,%bx
   592f0:	26 80 3f 00          	cmpb   $0x0,%es:(%bx)
   592f4:	74 e2                	je     0x592d8
   592f6:	8b 46 f4             	mov    -0xc(%bp),%ax
   592f9:	3b 06 23 d6          	cmp    -0x29dd,%ax
   592fd:	72 03                	jb     0x59302
   592ff:	e9 e2 02             	jmp    0x595e4
   59302:	8b 46 f4             	mov    -0xc(%bp),%ax
   59305:	c1 e0 03             	shl    $0x3,%ax
   59308:	c4 1e 1c d6          	les    -0x29e4,%bx
   5930c:	03 d8                	add    %ax,%bx
   5930e:	26 f6 47 07 80       	testb  $0x80,%es:0x7(%bx)
   59313:	74 05                	je     0x5931a
   59315:	c7 46 f6 00 03       	movw   $0x300,-0xa(%bp)
   5931a:	8b 46 f4             	mov    -0xc(%bp),%ax
   5931d:	c1 e0 03             	shl    $0x3,%ax
   59320:	c4 1e 1c d6          	les    -0x29e4,%bx
   59324:	03 d8                	add    %ax,%bx
   59326:	26 8b 47 05          	mov    %es:0x5(%bx),%ax
   5932a:	26 8b 57 03          	mov    %es:0x3(%bx),%dx
   5932e:	2b 56 f6             	sub    -0xa(%bp),%dx
   59331:	1d 00 00             	sbb    $0x0,%ax
   59334:	3b 06 0a d6          	cmp    -0x29f6,%ax
   59338:	73 03                	jae    0x5933d
   5933a:	e9 92 00             	jmp    0x593cf
   5933d:	77 0e                	ja     0x5934d
   5933f:	3b 16 08 d6          	cmp    -0x29f8,%dx
   59343:	77 03                	ja     0x59348
   59345:	e9 87 00             	jmp    0x593cf
   59348:	eb 03                	jmp    0x5934d
   5934a:	ff 46 f4             	incw   -0xc(%bp)
   5934d:	8b 46 f4             	mov    -0xc(%bp),%ax
   59350:	3b 06 23 d6          	cmp    -0x29dd,%ax
   59354:	73 12                	jae    0x59368
   59356:	8b 46 f4             	mov    -0xc(%bp),%ax
   59359:	c1 e0 03             	shl    $0x3,%ax
   5935c:	c4 1e 1c d6          	les    -0x29e4,%bx
   59360:	03 d8                	add    %ax,%bx
   59362:	26 80 3f 00          	cmpb   $0x0,%es:(%bx)
   59366:	74 e2                	je     0x5934a
   59368:	8b 46 f4             	mov    -0xc(%bp),%ax
   5936b:	3b 06 23 d6          	cmp    -0x29dd,%ax
   5936f:	72 03                	jb     0x59374
   59371:	e9 70 02             	jmp    0x595e4
   59374:	8b 46 f4             	mov    -0xc(%bp),%ax
   59377:	c1 e0 03             	shl    $0x3,%ax
   5937a:	c4 1e 1c d6          	les    -0x29e4,%bx
   5937e:	03 d8                	add    %ax,%bx
   59380:	26 f6 47 07 80       	testb  $0x80,%es:0x7(%bx)
   59385:	74 05                	je     0x5938c
   59387:	c7 46 f6 00 03       	movw   $0x300,-0xa(%bp)
   5938c:	8b 46 f4             	mov    -0xc(%bp),%ax
   5938f:	c1 e0 03             	shl    $0x3,%ax
   59392:	c4 1e 1c d6          	les    -0x29e4,%bx
   59396:	03 d8                	add    %ax,%bx
   59398:	26 8b 47 05          	mov    %es:0x5(%bx),%ax
   5939c:	26 8b 57 03          	mov    %es:0x3(%bx),%dx
   593a0:	2b 56 f6             	sub    -0xa(%bp),%dx
   593a3:	1d 00 00             	sbb    $0x0,%ax
   593a6:	a3 0a d6             	mov    %ax,0xd60a
   593a9:	89 16 08 d6          	mov    %dx,-0x29f8
   593ad:	ff 36 0c d6          	push   -0x29f4
   593b1:	ff 36 0c d6          	push   -0x29f4
   593b5:	9a 3e 00 70 01       	lcall  $0x170,$0x3e
   593ba:	8b 1e 0a d6          	mov    -0x29f6,%bx
   593be:	8b 0e 08 d6          	mov    -0x29f8,%cx
   593c2:	2b c8                	sub    %ax,%cx
   593c4:	1b da                	sbb    %dx,%bx
   593c6:	53                   	push   %bx
   593c7:	51                   	push   %cx
   593c8:	6a 01                	push   $0x1
   593ca:	9a 39 00 70 01       	lcall  $0x170,$0x39
   593cf:	a1 02 d6             	mov    0xd602,%ax
   593d2:	8b 16 00 d6          	mov    -0x2a00,%dx
   593d6:	89 46 fe             	mov    %ax,-0x2(%bp)
   593d9:	89 56 fc             	mov    %dx,-0x4(%bp)
   593dc:	a1 06 d6             	mov    0xd606,%ax
   593df:	8b 16 04 d6          	mov    -0x29fc,%dx
   593e3:	2b 16 08 d6          	sub    -0x29f8,%dx
   593e7:	1b 06 0a d6          	sbb    -0x29f6,%ax
   593eb:	3b 46 fe             	cmp    -0x2(%bp),%ax
   593ee:	7f 1c                	jg     0x5940c
   593f0:	7c 05                	jl     0x593f7
   593f2:	3b 56 fc             	cmp    -0x4(%bp),%dx
   593f5:	73 15                	jae    0x5940c
   593f7:	a1 06 d6             	mov    0xd606,%ax
   593fa:	8b 16 04 d6          	mov    -0x29fc,%dx
   593fe:	2b 16 08 d6          	sub    -0x29f8,%dx
   59402:	1b 06 0a d6          	sbb    -0x29f6,%ax
   59406:	89 46 fe             	mov    %ax,-0x2(%bp)
   59409:	89 56 fc             	mov    %dx,-0x4(%bp)
   5940c:	8b 46 f4             	mov    -0xc(%bp),%ax
   5940f:	c1 e0 03             	shl    $0x3,%ax
   59412:	c4 1e 1c d6          	les    -0x29e4,%bx
   59416:	03 d8                	add    %ax,%bx
   59418:	26 8b 47 05          	mov    %es:0x5(%bx),%ax
   5941c:	26 8b 57 03          	mov    %es:0x3(%bx),%dx
   59420:	2b 56 f6             	sub    -0xa(%bp),%dx
   59423:	1d 00 00             	sbb    $0x0,%ax
   59426:	8b 1e 0a d6          	mov    -0x29f6,%bx
   5942a:	8b 0e 08 d6          	mov    -0x29f8,%cx
   5942e:	2b ca                	sub    %dx,%cx
   59430:	1b d8                	sbb    %ax,%bx
   59432:	a1 02 d6             	mov    0xd602,%ax
   59435:	8b 16 00 d6          	mov    -0x2a00,%dx
   59439:	2b d1                	sub    %cx,%dx
   5943b:	1b c3                	sbb    %bx,%ax
   5943d:	3b 46 fe             	cmp    -0x2(%bp),%ax
   59440:	77 3e                	ja     0x59480
   59442:	72 05                	jb     0x59449
   59444:	3b 56 fc             	cmp    -0x4(%bp),%dx
   59447:	73 37                	jae    0x59480
   59449:	8b 46 f4             	mov    -0xc(%bp),%ax
   5944c:	c1 e0 03             	shl    $0x3,%ax
   5944f:	c4 1e 1c d6          	les    -0x29e4,%bx
   59453:	03 d8                	add    %ax,%bx
   59455:	26 8b 47 05          	mov    %es:0x5(%bx),%ax
   59459:	26 8b 57 03          	mov    %es:0x3(%bx),%dx
   5945d:	2b 56 f6             	sub    -0xa(%bp),%dx
   59460:	1d 00 00             	sbb    $0x0,%ax
   59463:	8b 1e 0a d6          	mov    -0x29f6,%bx
   59467:	8b 0e 08 d6          	mov    -0x29f8,%cx
   5946b:	2b ca                	sub    %dx,%cx
   5946d:	1b d8                	sbb    %ax,%bx
   5946f:	a1 02 d6             	mov    0xd602,%ax
   59472:	8b 16 00 d6          	mov    -0x2a00,%dx
   59476:	2b d1                	sub    %cx,%dx
   59478:	1b c3                	sbb    %bx,%ax
   5947a:	89 46 fe             	mov    %ax,-0x2(%bp)
   5947d:	89 56 fc             	mov    %dx,-0x4(%bp)
   59480:	ff 36 02 d6          	push   -0x29fe
   59484:	ff 36 00 d6          	push   -0x2a00
   59488:	ff 36 0a d6          	push   -0x29f6
   5948c:	ff 36 08 d6          	push   -0x29f8
   59490:	9a f6 12 00 00       	lcall  $0x0,$0x12f6
   59495:	8b 1e 02 d6          	mov    -0x29fe,%bx
   59499:	8b 0e 00 d6          	mov    -0x2a00,%cx
   5949d:	2b c8                	sub    %ax,%cx
   5949f:	1b da                	sbb    %dx,%bx
   594a1:	3b 5e fe             	cmp    -0x2(%bp),%bx
   594a4:	7f 2e                	jg     0x594d4
   594a6:	7c 05                	jl     0x594ad
   594a8:	3b 4e fc             	cmp    -0x4(%bp),%cx
   594ab:	73 27                	jae    0x594d4
   594ad:	ff 36 02 d6          	push   -0x29fe
   594b1:	ff 36 00 d6          	push   -0x2a00
   594b5:	ff 36 0a d6          	push   -0x29f6
   594b9:	ff 36 08 d6          	push   -0x29f8
   594bd:	9a f6 12 00 00       	lcall  $0x0,$0x12f6
   594c2:	8b 1e 02 d6          	mov    -0x29fe,%bx
   594c6:	8b 0e 00 d6          	mov    -0x2a00,%cx
   594ca:	2b c8                	sub    %ax,%cx
   594cc:	1b da                	sbb    %dx,%bx
   594ce:	89 5e fe             	mov    %bx,-0x2(%bp)
   594d1:	89 4e fc             	mov    %cx,-0x4(%bp)
   594d4:	83 7e fe 00          	cmpw   $0x0,-0x2(%bp)
   594d8:	7c 15                	jl     0x594ef
   594da:	7f 07                	jg     0x594e3
   594dc:	81 7e fc 00 c0       	cmpw   $0xc000,-0x4(%bp)
   594e1:	76 0c                	jbe    0x594ef
   594e3:	c7 46 fe 00 00       	movw   $0x0,-0x2(%bp)
   594e8:	c7 46 fc 00 c0       	movw   $0xc000,-0x4(%bp)
   594ed:	eb 14                	jmp    0x59503
   594ef:	83 7e fe 00          	cmpw   $0x0,-0x2(%bp)
   594f3:	7f 0e                	jg     0x59503
   594f5:	74 03                	je     0x594fa
   594f7:	e9 ea 00             	jmp    0x595e4
   594fa:	83 7e fc 00          	cmpw   $0x0,-0x4(%bp)
   594fe:	77 03                	ja     0x59503
   59500:	e9 e1 00             	jmp    0x595e4
   59503:	c4 1e f4 d5          	les    -0x2a0c,%bx
   59507:	26 ff 37             	push   %es:(%bx)
   5950a:	ff 36 02 d6          	push   -0x29fe
   5950e:	ff 36 00 d6          	push   -0x2a00
   59512:	ff 36 0a d6          	push   -0x29f6
   59516:	ff 36 08 d6          	push   -0x29f8
   5951a:	9a f6 12 00 00       	lcall  $0x0,$0x12f6
   5951f:	52                   	push   %dx
   59520:	50                   	push   %ax
   59521:	ff 76 fc             	push   -0x4(%bp)
   59524:	9a 88 06 98 00       	lcall  $0x98,$0x688
   59529:	89 56 fa             	mov    %dx,-0x6(%bp)
   5952c:	89 46 f8             	mov    %ax,-0x8(%bp)
   5952f:	0b c2                	or     %dx,%ax
   59531:	74 03                	je     0x59536
   59533:	e9 89 00             	jmp    0x595bf
   59536:	6a 10                	push   $0x10
   59538:	6a 00                	push   $0x0
   5953a:	6a 00                	push   $0x0
   5953c:	68 a8 00             	push   $0xa8
   5953f:	1e                   	push   %ds
   59540:	68 8e 6b             	push   $0x6b8e
   59543:	9a 2a 00 58 01       	lcall  $0x158,$0x2a
   59548:	83 c4 0c             	add    $0xc,%sp
   5954b:	eb 72                	jmp    0x595bf
   5954d:	eb 70                	jmp    0x595bf
   5954f:	83 7e fe 00          	cmpw   $0x0,-0x2(%bp)
   59553:	7f 0e                	jg     0x59563
   59555:	7c 07                	jl     0x5955e
   59557:	81 7e fc 00 08       	cmpw   $0x800,-0x4(%bp)
   5955c:	73 05                	jae    0x59563
   5955e:	8b 46 fc             	mov    -0x4(%bp),%ax
   59561:	eb 03                	jmp    0x59566
   59563:	b8 00 08             	mov    $0x800,%ax
   59566:	89 46 f2             	mov    %ax,-0xe(%bp)
   59569:	83 7e f2 00          	cmpw   $0x0,-0xe(%bp)
   5956d:	7e 75                	jle    0x595e4
   5956f:	ff 36 0c d6          	push   -0x29f4
   59573:	ff 76 fa             	push   -0x6(%bp)
   59576:	ff 76 f8             	push   -0x8(%bp)
   59579:	8b 46 f2             	mov    -0xe(%bp),%ax
   5957c:	99                   	cwtd
   5957d:	52                   	push   %dx
   5957e:	50                   	push   %ax
   5957f:	9a 2f 00 70 01       	lcall  $0x170,$0x2f
   59584:	0b c2                	or     %dx,%ax
   59586:	74 1b                	je     0x595a3
   59588:	6a ff                	push   $0xffff
   5958a:	1e                   	push   %ds
   5958b:	68 c2 6b             	push   $0x6bc2
   5958e:	68 b2 00             	push   $0xb2
   59591:	1e                   	push   %ds
   59592:	68 a8 6b             	push   $0x6ba8
   59595:	9a 2a 00 58 01       	lcall  $0x158,$0x2a
   5959a:	83 c4 0c             	add    $0xc,%sp
   5959d:	eb 04                	jmp    0x595a3
   5959f:	eb 02                	jmp    0x595a3
   595a1:	eb 41                	jmp    0x595e4
   595a3:	8b 46 f2             	mov    -0xe(%bp),%ax
   595a6:	99                   	cwtd
   595a7:	29 46 fc             	sub    %ax,-0x4(%bp)
   595aa:	19 56 fe             	sbb    %dx,-0x2(%bp)
   595ad:	8b 46 f2             	mov    -0xe(%bp),%ax
   595b0:	01 46 f8             	add    %ax,-0x8(%bp)
   595b3:	8b 46 f2             	mov    -0xe(%bp),%ax
   595b6:	99                   	cwtd
   595b7:	01 06 08 d6          	add    %ax,-0x29f8
   595bb:	11 16 0a d6          	adc    %dx,-0x29f6
   595bf:	a0 25 d6             	mov    0xd625,%al
   595c2:	b4 00                	mov    $0x0,%ah
   595c4:	50                   	push   %ax
   595c5:	b8 e8 03             	mov    $0x3e8,%ax
   595c8:	99                   	cwtd
   595c9:	5b                   	pop    %bx
   595ca:	f7 fb                	idiv   %bx
   595cc:	ba 88 01             	mov    $0x188,%dx
   595cf:	8e c2                	mov    %dx,%es
   595d1:	26 8b 16 4a e7       	mov    %es:-0x18b6,%dx
   595d6:	2b 16 12 d6          	sub    -0x29ee,%dx
   595da:	2b c2                	sub    %dx,%ax
   595dc:	3d 0a 00             	cmp    $0xa,%ax
   595df:	7e 03                	jle    0x595e4
   595e1:	e9 6b ff             	jmp    0x5954f
   595e4:	c9                   	leave
   595e5:	cb                   	lret
