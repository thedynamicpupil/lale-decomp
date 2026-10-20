
analysis/phase-five/lifecycle-20261014/runtime/default-timer-target.bin:     file format binary


Disassembly of section .data:

0003a28a <.data>:
   3a28a:	55                   	push   bp
   3a28b:	8b ec                	mov    bp,sp
   3a28d:	b8 88 01             	mov    ax,0x188
   3a290:	8e c0                	mov    es,ax
   3a292:	26 a1 4a e7          	mov    ax,es:0xe74a
   3a296:	2b 06 82 ba          	sub    ax,WORD PTR ds:0xba82
   3a29a:	3d 64 00             	cmp    ax,0x64
   3a29d:	73 03                	jae    0x3a2a2
   3a29f:	e9 90 01             	jmp    0x3a432
   3a2a2:	b8 88 01             	mov    ax,0x188
   3a2a5:	8e c0                	mov    es,ax
   3a2a7:	26 a1 4a e7          	mov    ax,es:0xe74a
   3a2ab:	a3 82 ba             	mov    ds:0xba82,ax
   3a2ae:	83 3e 72 3d 00       	cmp    WORD PTR ds:0x3d72,0x0
   3a2b3:	75 0a                	jne    0x3a2bf
   3a2b5:	83 3e 70 3d 00       	cmp    WORD PTR ds:0x3d70,0x0
   3a2ba:	75 03                	jne    0x3a2bf
   3a2bc:	e9 e1 00             	jmp    0x3a3a0
   3a2bf:	83 3e 72 3d 00       	cmp    WORD PTR ds:0x3d72,0x0
   3a2c4:	7e 0b                	jle    0x3a2d1
   3a2c6:	80 3e 76 3d 00       	cmp    BYTE PTR ds:0x3d76,0x0
   3a2cb:	7d 13                	jge    0x3a2e0
   3a2cd:	eb 09                	jmp    0x3a2d8
   3a2cf:	eb 0f                	jmp    0x3a2e0
   3a2d1:	80 3e 76 3d 00       	cmp    BYTE PTR ds:0x3d76,0x0
   3a2d6:	7e 08                	jle    0x3a2e0
   3a2d8:	a0 76 3d             	mov    al,ds:0x3d76
   3a2db:	f6 d8                	neg    al
   3a2dd:	a2 76 3d             	mov    ds:0x3d76,al
   3a2e0:	83 3e 70 3d 00       	cmp    WORD PTR ds:0x3d70,0x0
   3a2e5:	7e 0b                	jle    0x3a2f2
   3a2e7:	80 3e 75 3d 00       	cmp    BYTE PTR ds:0x3d75,0x0
   3a2ec:	7d 13                	jge    0x3a301
   3a2ee:	eb 09                	jmp    0x3a2f9
   3a2f0:	eb 0f                	jmp    0x3a301
   3a2f2:	80 3e 75 3d 00       	cmp    BYTE PTR ds:0x3d75,0x0
   3a2f7:	7e 08                	jle    0x3a301
   3a2f9:	a0 75 3d             	mov    al,ds:0x3d75
   3a2fc:	f6 d8                	neg    al
   3a2fe:	a2 75 3d             	mov    ds:0x3d75,al
   3a301:	83 3e 4d bb 01       	cmp    WORD PTR ds:0xbb4d,0x1
   3a306:	74 06                	je     0x3a30e
   3a308:	c7 06 72 3d 00 00    	mov    WORD PTR ds:0x3d72,0x0
   3a30e:	83 3e 72 3d 00       	cmp    WORD PTR ds:0x3d72,0x0
   3a313:	74 06                	je     0x3a31b
   3a315:	a0 76 3d             	mov    al,ds:0x3d76
   3a318:	98                   	cbw
   3a319:	eb 02                	jmp    0x3a31d
   3a31b:	33 c0                	xor    ax,ax
   3a31d:	50                   	push   ax
   3a31e:	83 3e 70 3d 00       	cmp    WORD PTR ds:0x3d70,0x0
   3a323:	74 06                	je     0x3a32b
   3a325:	a0 75 3d             	mov    al,ds:0x3d75
   3a328:	98                   	cbw
   3a329:	eb 02                	jmp    0x3a32d
   3a32b:	33 c0                	xor    ax,ax
   3a32d:	50                   	push   ax
   3a32e:	6a 00                	push   0x0
   3a330:	9a 3f 07 30 00       	call   0x30:0x73f
   3a335:	83 c4 06             	add    sp,0x6
   3a338:	83 3e 72 3d 00       	cmp    WORD PTR ds:0x3d72,0x0
   3a33d:	74 2d                	je     0x3a36c
   3a33f:	a0 76 3d             	mov    al,ds:0x3d76
   3a342:	98                   	cbw
   3a343:	29 06 72 3d          	sub    WORD PTR ds:0x3d72,ax
   3a347:	80 3e 76 3d 00       	cmp    BYTE PTR ds:0x3d76,0x0
   3a34c:	7e 10                	jle    0x3a35e
   3a34e:	83 3e 72 3d 00       	cmp    WORD PTR ds:0x3d72,0x0
   3a353:	7e 05                	jle    0x3a35a
   3a355:	a1 72 3d             	mov    ax,ds:0x3d72
   3a358:	eb 0f                	jmp    0x3a369
   3a35a:	eb 0b                	jmp    0x3a367
   3a35c:	eb 0b                	jmp    0x3a369
   3a35e:	83 3e 72 3d 00       	cmp    WORD PTR ds:0x3d72,0x0
   3a363:	7d 02                	jge    0x3a367
   3a365:	eb ee                	jmp    0x3a355
   3a367:	33 c0                	xor    ax,ax
   3a369:	a3 72 3d             	mov    ds:0x3d72,ax
   3a36c:	83 3e 70 3d 00       	cmp    WORD PTR ds:0x3d70,0x0
   3a371:	74 2d                	je     0x3a3a0
   3a373:	a0 75 3d             	mov    al,ds:0x3d75
   3a376:	98                   	cbw
   3a377:	29 06 70 3d          	sub    WORD PTR ds:0x3d70,ax
   3a37b:	80 3e 75 3d 00       	cmp    BYTE PTR ds:0x3d75,0x0
   3a380:	7e 10                	jle    0x3a392
   3a382:	83 3e 70 3d 00       	cmp    WORD PTR ds:0x3d70,0x0
   3a387:	7e 05                	jle    0x3a38e
   3a389:	a1 70 3d             	mov    ax,ds:0x3d70
   3a38c:	eb 0f                	jmp    0x3a39d
   3a38e:	eb 0b                	jmp    0x3a39b
   3a390:	eb 0b                	jmp    0x3a39d
   3a392:	83 3e 70 3d 00       	cmp    WORD PTR ds:0x3d70,0x0
   3a397:	7d 02                	jge    0x3a39b
   3a399:	eb ee                	jmp    0x3a389
   3a39b:	33 c0                	xor    ax,ax
   3a39d:	a3 70 3d             	mov    ds:0x3d70,ax
   3a3a0:	83 3e 6e 3d 00       	cmp    WORD PTR ds:0x3d6e,0x0
   3a3a5:	75 03                	jne    0x3a3aa
   3a3a7:	e9 88 00             	jmp    0x3a432
   3a3aa:	83 3e 6e 3d 00       	cmp    WORD PTR ds:0x3d6e,0x0
   3a3af:	7e 0b                	jle    0x3a3bc
   3a3b1:	80 3e 74 3d 00       	cmp    BYTE PTR ds:0x3d74,0x0
   3a3b6:	7d 13                	jge    0x3a3cb
   3a3b8:	eb 09                	jmp    0x3a3c3
   3a3ba:	eb 0f                	jmp    0x3a3cb
   3a3bc:	80 3e 74 3d 00       	cmp    BYTE PTR ds:0x3d74,0x0
   3a3c1:	7e 08                	jle    0x3a3cb
   3a3c3:	a0 74 3d             	mov    al,ds:0x3d74
   3a3c6:	f6 d8                	neg    al
   3a3c8:	a2 74 3d             	mov    ds:0x3d74,al
   3a3cb:	b8 88 01             	mov    ax,0x188
   3a3ce:	8e c0                	mov    es,ax
   3a3d0:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   3a3d6:	74 1f                	je     0x3a3f7
   3a3d8:	83 3e 4d bb 01       	cmp    WORD PTR ds:0xbb4d,0x1
   3a3dd:	75 18                	jne    0x3a3f7
   3a3df:	b8 88 01             	mov    ax,0x188
   3a3e2:	8e c0                	mov    es,ax
   3a3e4:	26 a1 1c 73          	mov    ax,es:0x731c
   3a3e8:	03 06 6e 3d          	add    ax,WORD PTR ds:0x3d6e
   3a3ec:	c1 e0 08             	shl    ax,0x8
   3a3ef:	99                   	cwd
   3a3f0:	52                   	push   dx
   3a3f1:	50                   	push   ax
   3a3f2:	9a b9 14 68 00       	call   0x68:0x14b9
   3a3f7:	a0 74 3d             	mov    al,ds:0x3d74
   3a3fa:	98                   	cbw
   3a3fb:	29 06 6e 3d          	sub    WORD PTR ds:0x3d6e,ax
   3a3ff:	80 3e 74 3d 00       	cmp    BYTE PTR ds:0x3d74,0x0
   3a404:	7e 10                	jle    0x3a416
   3a406:	83 3e 6e 3d 00       	cmp    WORD PTR ds:0x3d6e,0x0
   3a40b:	7e 05                	jle    0x3a412
   3a40d:	a1 6e 3d             	mov    ax,ds:0x3d6e
   3a410:	eb 0f                	jmp    0x3a421
   3a412:	eb 0b                	jmp    0x3a41f
   3a414:	eb 0b                	jmp    0x3a421
   3a416:	83 3e 6e 3d 00       	cmp    WORD PTR ds:0x3d6e,0x0
   3a41b:	7d 02                	jge    0x3a41f
   3a41d:	eb ee                	jmp    0x3a40d
   3a41f:	33 c0                	xor    ax,ax
   3a421:	a3 6e 3d             	mov    ds:0x3d6e,ax
   3a424:	a0 74 3d             	mov    al,ds:0x3d74
   3a427:	98                   	cbw
   3a428:	ba 88 01             	mov    dx,0x188
   3a42b:	8e c2                	mov    es,dx
   3a42d:	26 01 06 1c 73       	add    WORD PTR es:0x731c,ax
   3a432:	5d                   	pop    bp
   3a433:	cb                   	retf
