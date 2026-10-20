
analysis/phase-four/continuation/character-spec-20261014/original-16da.bin:     file format binary


Disassembly of section .data:

0005d674 <.data+0x6b4>:
   5d674:	c8 12 00 00          	enter  0x12,0x0
   5d678:	c7 46 fc 00 00       	mov    WORD PTR [bp-0x4],0x0
   5d67d:	c7 46 f6 01 00       	mov    WORD PTR [bp-0xa],0x1
   5d682:	c7 46 f4 00 00       	mov    WORD PTR [bp-0xc],0x0
   5d687:	80 7e 0a 01          	cmp    BYTE PTR [bp+0xa],0x1
   5d68b:	74 03                	je     0x5d690
   5d68d:	e9 c7 01             	jmp    0x5d857
   5d690:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   5d695:	e9 a7 01             	jmp    0x5d83f
   5d698:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d69b:	03 5e fe             	add    bx,WORD PTR [bp-0x2]
   5d69e:	26 80 3f 21          	cmp    BYTE PTR es:[bx],0x21
   5d6a2:	7c 24                	jl     0x5d6c8
   5d6a4:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d6a7:	03 5e fe             	add    bx,WORD PTR [bp-0x2]
   5d6aa:	26 80 3f 40          	cmp    BYTE PTR es:[bx],0x40
   5d6ae:	7f 18                	jg     0x5d6c8
   5d6b0:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d6b3:	03 5e fe             	add    bx,WORD PTR [bp-0x2]
   5d6b6:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   5d6b9:	98                   	cbw
   5d6ba:	05 df ff             	add    ax,0xffdf
   5d6bd:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   5d6c0:	c7 46 f8 01 00       	mov    WORD PTR [bp-0x8],0x1
   5d6c5:	e9 01 01             	jmp    0x5d7c9
   5d6c8:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d6cb:	03 5e fe             	add    bx,WORD PTR [bp-0x2]
   5d6ce:	26 80 3f 61          	cmp    BYTE PTR es:[bx],0x61
   5d6d2:	7c 1b                	jl     0x5d6ef
   5d6d4:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d6d7:	03 5e fe             	add    bx,WORD PTR [bp-0x2]
   5d6da:	26 80 3f 7a          	cmp    BYTE PTR es:[bx],0x7a
   5d6de:	7f 0f                	jg     0x5d6ef
   5d6e0:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d6e3:	03 5e fe             	add    bx,WORD PTR [bp-0x2]
   5d6e6:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   5d6e9:	98                   	cbw
   5d6ea:	05 bf ff             	add    ax,0xffbf
   5d6ed:	eb ce                	jmp    0x5d6bd
   5d6ef:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d6f2:	03 5e fe             	add    bx,WORD PTR [bp-0x2]
   5d6f5:	26 80 3f 5b          	cmp    BYTE PTR es:[bx],0x5b
   5d6f9:	7c 0e                	jl     0x5d709
   5d6fb:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d6fe:	03 5e fe             	add    bx,WORD PTR [bp-0x2]
   5d701:	26 80 3f 60          	cmp    BYTE PTR es:[bx],0x60
   5d705:	7f 02                	jg     0x5d709
   5d707:	eb a7                	jmp    0x5d6b0
   5d709:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d70c:	03 5e fe             	add    bx,WORD PTR [bp-0x2]
   5d70f:	26 80 3f 7b          	cmp    BYTE PTR es:[bx],0x7b
   5d713:	7c 1b                	jl     0x5d730
   5d715:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d718:	03 5e fe             	add    bx,WORD PTR [bp-0x2]
   5d71b:	26 80 3f 7f          	cmp    BYTE PTR es:[bx],0x7f
   5d71f:	77 0f                	ja     0x5d730
   5d721:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d724:	03 5e fe             	add    bx,WORD PTR [bp-0x2]
   5d727:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   5d72a:	98                   	cbw
   5d72b:	05 c5 ff             	add    ax,0xffc5
   5d72e:	eb 8d                	jmp    0x5d6bd
   5d730:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d733:	03 5e fe             	add    bx,WORD PTR [bp-0x2]
   5d736:	26 80 3f 41          	cmp    BYTE PTR es:[bx],0x41
   5d73a:	7c 1e                	jl     0x5d75a
   5d73c:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d73f:	03 5e fe             	add    bx,WORD PTR [bp-0x2]
   5d742:	26 80 3f 5b          	cmp    BYTE PTR es:[bx],0x5b
   5d746:	7f 12                	jg     0x5d75a
   5d748:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d74b:	03 5e fe             	add    bx,WORD PTR [bp-0x2]
   5d74e:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   5d751:	98                   	cbw
   5d752:	05 bf ff             	add    ax,0xffbf
   5d755:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   5d758:	eb 5f                	jmp    0x5d7b9
   5d75a:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d75d:	03 5e fe             	add    bx,WORD PTR [bp-0x2]
   5d760:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   5d763:	b4 00                	mov    ah,0x0
   5d765:	89 46 ee             	mov    WORD PTR [bp-0x12],ax
   5d768:	b9 0c 00             	mov    cx,0xc
   5d76b:	bb b7 08             	mov    bx,0x8b7
   5d76e:	2e 8b 07             	mov    ax,WORD PTR cs:[bx]
   5d771:	3b 46 ee             	cmp    ax,WORD PTR [bp-0x12]
   5d774:	74 07                	je     0x5d77d
   5d776:	83 c3 02             	add    bx,0x2
   5d779:	e2 f3                	loop   0x5d76e
   5d77b:	eb 43                	jmp    0x5d7c0
   5d77d:	2e ff 67 18          	jmp    WORD PTR cs:[bx+0x18]
   5d781:	c7 46 fa 45 00       	mov    WORD PTR [bp-0x6],0x45
   5d786:	e9 37 ff             	jmp    0x5d6c0
   5d789:	c7 46 fa 46 00       	mov    WORD PTR [bp-0x6],0x46
   5d78e:	e9 2f ff             	jmp    0x5d6c0
   5d791:	c7 46 fa 47 00       	mov    WORD PTR [bp-0x6],0x47
   5d796:	e9 27 ff             	jmp    0x5d6c0
   5d799:	c7 46 fa 48 00       	mov    WORD PTR [bp-0x6],0x48
   5d79e:	e9 1f ff             	jmp    0x5d6c0
   5d7a1:	c7 46 fa 49 00       	mov    WORD PTR [bp-0x6],0x49
   5d7a6:	e9 17 ff             	jmp    0x5d6c0
   5d7a9:	c7 46 fa 4a 00       	mov    WORD PTR [bp-0x6],0x4a
   5d7ae:	e9 0f ff             	jmp    0x5d6c0
   5d7b1:	c7 46 fa 4b 00       	mov    WORD PTR [bp-0x6],0x4b
   5d7b6:	e9 07 ff             	jmp    0x5d6c0
   5d7b9:	c7 46 f8 02 00       	mov    WORD PTR [bp-0x8],0x2
   5d7be:	eb 09                	jmp    0x5d7c9
   5d7c0:	83 46 fc 03          	add    WORD PTR [bp-0x4],0x3
   5d7c4:	c7 46 f8 00 00       	mov    WORD PTR [bp-0x8],0x0
   5d7c9:	83 7e f8 01          	cmp    WORD PTR [bp-0x8],0x1
   5d7cd:	75 63                	jne    0x5d832
   5d7cf:	1e                   	push   ds
   5d7d0:	68 65 8f             	push   0x8f65
   5d7d3:	68 a9 00             	push   0xa9
   5d7d6:	68 88 01             	push   0x188
   5d7d9:	68 26 de             	push   0xde26
   5d7dc:	9a 81 0a 20 00       	call   0x20:0xa81
   5d7e1:	83 c4 0a             	add    sp,0xa
   5d7e4:	c7 46 f6 01 00       	mov    WORD PTR [bp-0xa],0x1
   5d7e9:	c7 46 f4 00 00       	mov    WORD PTR [bp-0xc],0x0
   5d7ee:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   5d7f1:	69 c0 8f 00          	imul   ax,ax,0x8f
   5d7f5:	6a 00                	push   0x0
   5d7f7:	50                   	push   ax
   5d7f8:	16                   	push   ss
   5d7f9:	8d 46 f4             	lea    ax,[bp-0xc]
   5d7fc:	50                   	push   ax
   5d7fd:	16                   	push   ss
   5d7fe:	8d 46 f6             	lea    ax,[bp-0xa]
   5d801:	50                   	push   ax
   5d802:	16                   	push   ss
   5d803:	8d 46 f0             	lea    ax,[bp-0x10]
   5d806:	50                   	push   ax
   5d807:	68 88 01             	push   0x188
   5d80a:	68 b7 e2             	push   0xe2b7
   5d80d:	9a b4 0b 20 00       	call   0x20:0xbb4
   5d812:	83 c4 14             	add    sp,0x14
   5d815:	c4 5e f0             	les    bx,DWORD PTR [bp-0x10]
   5d818:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   5d81b:	98                   	cbw
   5d81c:	05 02 00             	add    ax,0x2
   5d81f:	01 46 fc             	add    WORD PTR [bp-0x4],ax
   5d822:	68 88 01             	push   0x188
   5d825:	68 26 de             	push   0xde26
   5d828:	9a 22 0b 20 00       	call   0x20:0xb22
   5d82d:	83 c4 04             	add    sp,0x4
   5d830:	eb 0a                	jmp    0x5d83c
   5d832:	83 7e f8 02          	cmp    WORD PTR [bp-0x8],0x2
   5d836:	75 04                	jne    0x5d83c
   5d838:	83 46 fc 14          	add    WORD PTR [bp-0x4],0x14
   5d83c:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   5d83f:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d842:	ff 76 06             	push   WORD PTR [bp+0x6]
   5d845:	9a cc 49 00 00       	call   0x0:0x49cc
   5d84a:	83 c4 04             	add    sp,0x4
   5d84d:	3b 46 fe             	cmp    ax,WORD PTR [bp-0x2]
   5d850:	76 03                	jbe    0x5d855
   5d852:	e9 43 fe             	jmp    0x5d698
   5d855:	eb 1a                	jmp    0x5d871
   5d857:	80 7e 0a 02          	cmp    BYTE PTR [bp+0xa],0x2
   5d85b:	75 14                	jne    0x5d871
   5d85d:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d860:	ff 76 06             	push   WORD PTR [bp+0x6]
   5d863:	9a cc 49 00 00       	call   0x0:0x49cc
   5d868:	83 c4 04             	add    sp,0x4
   5d86b:	c1 e0 02             	shl    ax,0x2
   5d86e:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   5d871:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   5d874:	48                   	dec    ax
   5d875:	c9                   	leave
   5d876:	cb                   	retf
