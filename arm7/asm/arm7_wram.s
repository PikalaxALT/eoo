	.include "asm/macros.inc"
	.include "global.inc"

	.text

	arm_func_start FUN_023801B0
FUN_023801B0: ; 0x023801B0
	ldr r1, _023801DC ; =_0239A8B8
	ldr r2, [r1, #0x550]
	strh r0, [r2, #0x32]
	add r1, r2, #0x100
	ldrh r1, [r1, #0x88]
	cmp r1, #0
	addeq r0, r0, #2
	streqh r0, [r2, #0x3a]
	addne r0, r0, #2
	strneh r0, [r2, #0x38]
	bx lr
	.align 2, 0
_023801DC: .word _0239A8B8
	arm_func_end FUN_023801B0

	arm_func_start FUN_023801E0
FUN_023801E0: ; 0x023801E0
	ldr r1, _0238020C ; =_0239A8B8
	ldr r2, [r1, #0x550]
	strh r0, [r2, #0x30]
	add r1, r2, #0x100
	ldrh r1, [r1, #0x88]
	cmp r1, #0
	addeq r0, r0, #4
	streqh r0, [r2, #0x38]
	addne r0, r0, #4
	strneh r0, [r2, #0x3a]
	bx lr
	.align 2, 0
_0238020C: .word _0239A8B8
	arm_func_end FUN_023801E0

	arm_func_start FUN_02380210
FUN_02380210: ; 0x02380210
	ldr r1, _0238025C ; =_0239A8B8
	ldr r2, [r1, #0x550]
	strh r0, [r2, #0x36]
	strh r0, [r2, #0x32]
	add r1, r2, #0x100
	ldrh r1, [r1, #0x88]
	cmp r1, #0
	addne r0, r0, #2
	movne r0, r0, lsl #0x10
	movne r0, r0, lsr #0x10
	strneh r0, [r2, #0x3c]
	strneh r0, [r2, #0x38]
	bxne lr
	add r0, r0, #2
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	strh r0, [r2, #0x3e]
	strh r0, [r2, #0x3a]
	bx lr
	.align 2, 0
_0238025C: .word _0239A8B8
	arm_func_end FUN_02380210

	arm_func_start FUN_02380260
FUN_02380260: ; 0x02380260
	ldr r1, _023802AC ; =_0239A8B8
	ldr r2, [r1, #0x550]
	strh r0, [r2, #0x30]
	strh r0, [r2, #0x34]
	add r1, r2, #0x100
	ldrh r1, [r1, #0x88]
	cmp r1, #0
	addne r0, r0, #4
	movne r0, r0, lsl #0x10
	movne r0, r0, lsr #0x10
	strneh r0, [r2, #0x3e]
	strneh r0, [r2, #0x3a]
	bxne lr
	add r0, r0, #4
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	strh r0, [r2, #0x3c]
	strh r0, [r2, #0x38]
	bx lr
	.align 2, 0
_023802AC: .word _0239A8B8
	arm_func_end FUN_02380260

	arm_func_start FUN_023802B0
FUN_023802B0: ; 0x023802B0
	ldr r0, _023802E0 ; =_0239A8B8
	ldr r1, [r0, #0x550]
	mov r0, #0
	strh r0, [r1, #0x38]
	strh r0, [r1, #0x3a]
	strh r0, [r1, #0x30]
	strh r0, [r1, #0x32]
	strh r0, [r1, #0x3c]
	strh r0, [r1, #0x3e]
	strh r0, [r1, #0x34]
	strh r0, [r1, #0x36]
	bx lr
	.align 2, 0
_023802E0: .word _0239A8B8
	arm_func_end FUN_023802B0

	arm_func_start FUN_023802E4
FUN_023802E4: ; 0x023802E4
	stmdb sp!, {r4, lr}
	mov r4, #0
	bl FUN_037FAD78
	ldr r1, _02380350 ; =_0239A8B8
	ldr r2, [r1, #0x54c]
	cmp r2, #0
	beq _02380340
	mov ip, r4
	b _02380338
_02380308:
	mov r3, ip, lsl #4
	add r1, r2, ip, lsl #4
	ldr r1, [r1, #0xd0]
	ands r1, r1, #0x8000
	beq _02380334
	add r2, r2, #0xd0
	add r4, r2, r3
	ldr r1, [r2, r3]
	bic r1, r1, #0x8000
	str r1, [r2, r3]
	b _02380340
_02380334:
	add ip, ip, #1
_02380338:
	cmp ip, #0x20
	blt _02380308
_02380340:
	bl FUN_037FAD8C
	mov r0, r4
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02380350: .word _0239A8B8
	arm_func_end FUN_023802E4

	arm_func_start FUN_02380354
FUN_02380354: ; 0x02380354
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_03801E40
	strh r6, [r0]
	mov r1, #1
	strh r1, [r0, #2]
	strh r5, [r0, #4]
	strh r4, [r0, #6]
	bl FUN_03801E9C
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	arm_func_end FUN_02380354

	arm_func_start FUN_02380388
FUN_02380388: ; 0x02380388
	stmdb sp!, {r4, lr}
	bl FUN_037FAD78
	mov r4, r0
	bl FUN_037F8CA4
	ldr r0, _023803DC ; =_03804424
	ldr r1, _023803E0 ; =_0239A8B8
	ldr r1, [r1, #0x578]
	bl FUN_037F8DD4
	bl FUN_02388CF0
	ldr r1, _023803E0 ; =_0239A8B8
	ldr r1, [r1, #0x57c]
	bl FUN_037F8DD4
	ldr r0, _023803E4 ; =_03804380
	ldr r1, _023803E0 ; =_0239A8B8
	ldr r1, [r1, #0x580]
	bl FUN_037F8DD4
	bl FUN_037F8C6C
	mov r0, r4
	bl FUN_037FAD8C
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_023803DC: .word _03804424
_023803E0: .word _0239A8B8
_023803E4: .word _03804380
	arm_func_end FUN_02380388

	arm_func_start FUN_023803E8
FUN_023803E8: ; 0x023803E8
	stmdb sp!, {r4, lr}
	bl FUN_037FAD78
	mov r4, r0
	bl FUN_037F8CA4
	ldr r0, _0238043C ; =_03804380
	ldr r1, _02380440 ; =_0239A8B8
	ldr r1, [r1, #0x58c]
	bl FUN_037F8DD4
	bl FUN_02388CF0
	ldr r1, _02380440 ; =_0239A8B8
	ldr r1, [r1, #0x588]
	bl FUN_037F8DD4
	ldr r0, _02380444 ; =_03804424
	ldr r1, _02380440 ; =_0239A8B8
	ldr r1, [r1, #0x584]
	bl FUN_037F8DD4
	bl FUN_037F8C6C
	mov r0, r4
	bl FUN_037FAD8C
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_0238043C: .word _03804380
_02380440: .word _0239A8B8
_02380444: .word _03804424
	arm_func_end FUN_023803E8

	arm_func_start FUN_02380448
FUN_02380448: ; 0x02380448
	ldr r1, _023804AC ; =_0239A8B8
	ldr r1, [r1, #0x54c]
	ldrb r1, [r1, #0x53]
	cmp r1, #8
	bne _02380484
	cmp r0, #0x16
	movlo r0, #0
	bxlo lr
	cmp r0, #0x1c
	movlo r0, #1
	bxlo lr
	cmp r0, #0x22
	movlo r0, #2
	movhs r0, #3
	bx lr
_02380484:
	cmp r0, #8
	movlo r0, #0
	bxlo lr
	cmp r0, #0xe
	movlo r0, #1
	bxlo lr
	cmp r0, #0x14
	movlo r0, #2
	movhs r0, #3
	bx lr
	.align 2, 0
_023804AC: .word _0239A8B8
	arm_func_end FUN_02380448

	arm_func_start FUN_023804B0
FUN_023804B0: ; 0x023804B0
	mov r2, #0
	mov r3, r2
	ldr r1, _023804E4 ; =_023998B8
_023804BC:
	add r0, r1, r3
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x554]
	add r2, r2, r0
	add r3, r3, #1
	cmp r3, #0x20
	blt _023804BC
	mov r0, r2, lsr #5
	ldr ip, _023804E8 ; =FUN_02380448
	bx ip
	.align 2, 0
_023804E4: .word _023998B8
_023804E8: .word FUN_02380448
	arm_func_end FUN_023804B0

	arm_func_start FUN_023804EC
FUN_023804EC: ; 0x023804EC
	mov r3, #0
	ldr r2, _0238051C ; =_023998B8
_023804F4:
	add r1, r2, r3
	add r1, r1, #0x1000
	strb r0, [r1, #0x554]
	add r3, r3, #1
	cmp r3, #0x20
	blt _023804F4
	mov r1, #0
	ldr r0, _02380520 ; =_0239A8B8
	str r1, [r0, #0x574]
	bx lr
	.align 2, 0
_0238051C: .word _023998B8
_02380520: .word _0239A8B8
	arm_func_end FUN_023804EC

	arm_func_start FUN_02380524
FUN_02380524: ; 0x02380524
	ldr r1, _0238055C ; =_0239A8B8
	ldr r3, [r1, #0x574]
	ldr r2, _02380560 ; =_0239AE0C
	strb r0, [r2, r3]
	ldr r2, [r1, #0x574]
	add r2, r2, #1
	and r2, r2, #0x1f
	str r2, [r1, #0x574]
	ldr r2, _02380564 ; =0x027FFF98
	ldrh r1, [r2]
	eor r0, r0, r1, lsl #1
	eor r0, r0, r0, lsr #16
	strh r0, [r2]
	bx lr
	.align 2, 0
_0238055C: .word _0239A8B8
_02380560: .word _0239AE0C
_02380564: .word 0x027FFF98
	arm_func_end FUN_02380524

	arm_func_start FUN_02380568
FUN_02380568: ; 0x02380568
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	ldr r0, _023806AC ; =_0239A8B8
	ldr r4, [r0, #0x550]
	add r0, r4, #0xe0
	add r1, r5, #0x10
	mov r2, #6
	bl FUN_037FB078
	mov r0, #7
	strh r0, [r5, #0x16]
	add r0, r4, #0x100
	ldrh r1, [r0, #0xf4]
	strh r1, [r5, #0x18]
	ldrh r1, [r0, #0xec]
	strh r1, [r5, #0x1e]
	ldrh r1, [r4, #0xe6]
	strh r1, [r5, #0x1c]
	ldr r1, [r4, #0x198]
	cmp r1, #0
	bne _023805E0
	mov r0, #0
	strh r0, [r5, #0x20]
	strh r0, [r5, #0x22]
	add r1, r5, #0x24
	mov r2, #0x50
	bl FUN_037FAF38
	mov r0, #0
	strh r0, [r5, #0x9e]
	b _02380608
_023805E0:
	ldrh r0, [r0, #0x96]
	strh r0, [r5, #0x20]
	ldrh r0, [r4, #0xc4]
	strh r0, [r5, #0x22]
	add r0, r4, #0x19c
	add r1, r5, #0x24
	mov r2, #0x50
	bl FUN_037FB078
	mov r0, #1
	strh r0, [r5, #0x9e]
_02380608:
	mov r0, #1
	strh r0, [r5, #0x74]
	strh r0, [r5, #0x76]
	ldrh r0, [r4, #0xe6]
	cmp r0, #1
	moveq r0, #0
	streqh r0, [r5, #0x78]
	movne r0, #0x10
	strneh r0, [r5, #0x78]
	mov r0, #0xa
	strh r0, [r5, #0x7a]
	cmp r6, #0x26
	bne _02380650
	mov r0, #0
	add r1, r5, #0x7c
	mov r2, #0x20
	bl FUN_037FAF38
	b _02380670
_02380650:
	mov r0, #0
	add r1, r5, #0x7c
	mov r2, #8
	bl FUN_037FAF38
	ldr r0, _023806B0 ; =0x0000FFFF
	add r1, r5, #0x84
	mov r2, #0x18
	bl FUN_037FAF38
_02380670:
	add r0, r4, #0x100
	ldrh r0, [r0, #0xee]
	strh r0, [r5, #0x9c]
	mov r0, r5
	bl FUN_02382884
	ldrh r2, [r0, #4]
	cmp r2, #0
	moveq r0, #1
	beq _023806A4
	mov r0, r6
	mov r1, #0x200
	bl FUN_02380354
	mov r0, #0
_023806A4:
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_023806AC: .word _0239A8B8
_023806B0: .word 0x0000FFFF
	arm_func_end FUN_02380568

	arm_func_start FUN_023806B4
FUN_023806B4: ; 0x023806B4
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r2, r0
	ldr r0, [r1, #8]
	str r0, [r2, #4]
	ldrh r0, [r1, #0xc]
	strh r0, [r2, #8]
	ldrh r0, [r1, #0x12]
	cmp r0, #0
	movne r3, #2
	moveq r3, #0
	ldrh r0, [r1, #0xe]
	cmp r0, #0
	movne ip, #1
	moveq ip, #0
	ldrh r0, [r1, #0x14]
	cmp r0, #0
	movne lr, #4
	moveq lr, #0
	orr r0, ip, r3
	orr r0, lr, r0
	strb r0, [r2, #0xb]
	ldrh r0, [r1, #4]
	strb r0, [r2, #0xa]
	mov r0, #1
	strh r0, [r2]
	strb r0, [r2, #2]
	mov r0, #0
	strb r0, [r2, #3]
	ldrh r0, [r1, #0x34]
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #0x36]
	strh r0, [r2, #0xe]
	ldrb r3, [r2, #0xa]
	cmp r3, #0
	beq _02380758
	ldr r0, [r1]
	add r1, r2, #0x10
	add r2, r3, #1
	bic r2, r2, #1
	bl FUN_037FB078
_02380758:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_023806B4

	arm_func_start FUN_02380764
FUN_02380764: ; 0x02380764
	ldr r1, _023807DC ; =_0239A8B8
	ldr r1, [r1, #0x550]
	add r3, r1, #0xe0
	ldrb r2, [r0]
	ldrb r1, [r1, #0xe0]
	cmp r2, r1
	bne _023807D4
	ldrb r2, [r0, #1]
	ldrb r1, [r3, #1]
	cmp r2, r1
	bne _023807D4
	ldrb r2, [r0, #2]
	ldrb r1, [r3, #2]
	cmp r2, r1
	bne _023807D4
	ldrb r2, [r0, #3]
	ldrb r1, [r3, #3]
	cmp r2, r1
	bne _023807D4
	ldrb r2, [r0, #4]
	ldrb r1, [r3, #4]
	cmp r2, r1
	bne _023807D4
	ldrb r1, [r0, #5]
	ldrb r0, [r3, #5]
	cmp r1, r0
	moveq r0, #1
	bxeq lr
_023807D4:
	mov r0, #0
	bx lr
	.align 2, 0
_023807DC: .word _0239A8B8
	arm_func_end FUN_02380764

	arm_func_start FUN_023807E0
FUN_023807E0: ; 0x023807E0
	stmdb sp!, {r4, lr}
	mov r4, r1
	cmp r2, #0
	bne _02380838
	ldr r0, _02380840 ; =_02399940
	mov r2, #0
	bl FUN_037F97F0
	cmp r0, #0
	bne _02380838
	ldr r0, _02380844 ; =_0239A8B8
	ldr r0, [r0, #0x54c]
	cmp r0, #0
	beq _02380838
	bl FUN_03801E40
	ldrh r1, [r4]
	strh r1, [r0]
	mov r1, #8
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	bl FUN_03801E9C
_02380838:
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02380840: .word _02399940
_02380844: .word _0239A8B8
	arm_func_end FUN_023807E0

	arm_func_start FUN_02380848
FUN_02380848: ; 0x02380848
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r1, r0
	ldr r0, _023808C0 ; =_023998B8
	mov r2, #1
	bl FUN_037F97F0
	ldr r0, _023808C4 ; =_02399910
	add r1, sp, #0
	mov r2, #1
	bl FUN_037F9750
	ldr r1, [sp]
	ldrh r0, [r1, #0xe]
	add r0, r1, r0, lsl #1
	ldrh r0, [r0, #0x14]
	cmp r0, #0xe
	bne _023808B0
	bl FUN_03801E40
	mov r1, #0x80
	strh r1, [r0]
	mov r1, #0x13
	strh r1, [r0, #2]
	mov r1, #0x18
	strh r1, [r0, #4]
	bl FUN_03801E9C
	bl FUN_037FB660
	bl FUN_037FAEA0
_023808B0:
	ldr r0, [sp]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_023808C0: .word _023998B8
_023808C4: .word _02399910
	arm_func_end FUN_02380848

	arm_func_start FUN_023808C8
FUN_023808C8: ; 0x023808C8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r0
	mov r4, r1
	ldr r1, [r4]
	ldr r0, _02380A54 ; =_0239A8B8
	str r1, [r0, #0x540]
	ldr r1, [r5, #0x24]
	str r1, [r0, #0x544]
	ldr r1, [r5, #0x28]
	str r1, [r0, #0x548]
	mov r1, #0
	str r1, [r0, #0x54c]
	str r1, [r0, #0x550]
	ldr r0, _02380A58 ; =_023998B8
	ldr r1, _02380A5C ; =_023998D8
	mov r2, #2
	bl FUN_037F9884
	ldr r0, _02380A60 ; =_023998E0
	ldr r1, _02380A64 ; =_02399900
	mov r2, #4
	bl FUN_037F9884
	ldr r0, _02380A68 ; =_02399910
	ldr r1, _02380A6C ; =_02399930
	mov r2, #4
	bl FUN_037F9884
	ldr r0, _02380A70 ; =_02399940
	ldr r1, _02380A74 ; =_02399960
	mov r2, #0x20
	bl FUN_037F9884
	ldr r0, _02380A58 ; =_023998B8
	str r0, [r5, #0x10]
	ldr r0, _02380A60 ; =_023998E0
	str r0, [r5, #0x14]
	ldr r1, [r4, #8]
	ldr r0, _02380A54 ; =_0239A8B8
	str r1, [r0, #0x578]
	ldr r1, [r4, #0x18]
	str r1, [r0, #0x57c]
	ldr r1, [r4, #0x10]
	str r1, [r0, #0x580]
	ldr r1, [r4, #4]
	str r1, [r0, #0x584]
	ldr r1, [r4, #0x14]
	str r1, [r0, #0x588]
	ldr r1, [r4, #0xc]
	str r1, [r0, #0x58c]
	ldr r0, _02380A78 ; =_0239ADE0
	bl FUN_037F9A34
	mov r0, #0x400
	str r0, [sp]
	ldr r0, [r4, #4]
	str r0, [sp, #4]
	ldr r0, _02380A7C ; =_03804424
	ldr r1, _02380A80 ; =FUN_0238215C
	mov r2, #0
	ldr r3, _02380A78 ; =_0239ADE0
	bl FUN_037F9110
	ldr r0, _02380A7C ; =_03804424
	bl FUN_037F8ED0
	mov r0, #0x1000
	str r0, [sp]
	ldr r0, [r4, #0xc]
	str r0, [sp, #4]
	ldr r0, _02380A84 ; =_03804380
	ldr r1, _02380A88 ; =FUN_023821FC
	mov r2, #0
	ldr r3, _02380A8C ; =_0239A9E0
	bl FUN_037F9110
	ldr r0, _02380A84 ; =_03804380
	bl FUN_037F8ED0
	mov r3, #0
	mov r2, r3
	ldr r1, _02380A58 ; =_023998B8
_023809F0:
	add r0, r1, r3
	add r0, r0, #0x1000
	strb r2, [r0, #0x554]
	add r3, r3, #1
	cmp r3, #0x20
	blt _023809F0
	ldr r0, _02380A54 ; =_0239A8B8
	str r2, [r0, #0x574]
	bl FUN_037FACEC
	cmp r0, #0
	bne _02380A20
	bl FUN_037FACFC
_02380A20:
	bl FUN_037FB1B0
	mov r0, #0xa
	ldr r1, _02380A90 ; =FUN_023807E0
	bl FUN_037FB3A8
	mov r0, #2
	str r0, [r5, #0x18]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0xc]
	mov r0, r5
	bl FUN_02388D04
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_02380A54: .word _0239A8B8
_02380A58: .word _023998B8
_02380A5C: .word _023998D8
_02380A60: .word _023998E0
_02380A64: .word _02399900
_02380A68: .word _02399910
_02380A6C: .word _02399930
_02380A70: .word _02399940
_02380A74: .word _02399960
_02380A78: .word _0239ADE0
_02380A7C: .word _03804424
_02380A80: .word FUN_0238215C
_02380A84: .word _03804380
_02380A88: .word FUN_023821FC
_02380A8C: .word _0239A9E0
_02380A90: .word FUN_023807E0
	arm_func_end FUN_023808C8

	arm_func_start FUN_02380A94
FUN_02380A94: ; 0x02380A94
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _02380AB8 ; =_038044F4
	bl FUN_037FA61C
	ldr r0, _02380ABC ; =_038044C8
	bl FUN_037FA61C
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02380AB8: .word _038044F4
_02380ABC: .word _038044C8
	arm_func_end FUN_02380A94

	arm_func_start FUN_02380AC0
FUN_02380AC0: ; 0x02380AC0
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_03801E40
	mov r1, #0x80
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	mov r1, #0x13
	strh r1, [r0, #4]
	bl FUN_03801E9C
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_02380AC0

	arm_func_start FUN_02380AF4
FUN_02380AF4: ; 0x02380AF4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov r8, r0
	ldr r0, _02380DB4 ; =_0239A8B8
	ldr r6, [r0, #0x550]
	ldrh r0, [r6]
	cmp r0, #7
	beq _02380B1C
	cmp r0, #9
	bne _02380CA8
_02380B1C:
	add r0, r8, #0x10
	add r1, sp, #0
	mov r2, #6
	bl FUN_037FB078
	mov r5, #0
	mov r7, r5
	mov r4, #1
	mov sb, #6
	b _02380C20
_02380B40:
	bl FUN_037FAD78
	mov fp, r0
	add ip, r6, #0x100
	ldrh r3, [ip, #0x82]
	add r1, r7, #1
	mov r0, r4, lsl r1
	ands r0, r3, r0
	beq _02380C14
	mul r2, r7, sb
	add r0, r6, r2
	ldrb lr, [sp]
	ldrb sl, [r0, #0x128]
	cmp lr, sl
	bne _02380C14
	ldrb lr, [sp, #1]
	ldrb sl, [r0, #0x129]
	cmp lr, sl
	bne _02380C14
	ldrb lr, [sp, #2]
	ldrb sl, [r0, #0x12a]
	cmp lr, sl
	bne _02380C14
	ldrb lr, [sp, #3]
	ldrb sl, [r0, #0x12b]
	cmp lr, sl
	bne _02380C14
	ldrb sl, [sp, #4]
	ldrb lr, [r0, #0x12c]
	cmp sl, lr
	bne _02380C14
	ldrb sl, [sp, #5]
	ldrb r0, [r0, #0x12d]
	cmp sl, r0
	bne _02380C14
	mov r0, r1, lsl #0x10
	mov r5, r0, lsr #0x10
	mvn r1, r4, lsl r5
	and r0, r3, r1
	strh r0, [ip, #0x82]
	ldrh r0, [r6, #0x86]
	and r0, r0, r1
	strh r0, [r6, #0x86]
	mov r1, #0
	add r0, r6, r5, lsl #3
	str r1, [r0, #0x738]
	str r1, [r0, #0x73c]
	add r0, r6, #0x128
	add r0, r0, r2
	mov r2, #6
	bl FUN_037FAFE4
	mov r0, fp
	bl FUN_037FAD8C
	b _02380C28
_02380C14:
	mov r0, fp
	bl FUN_037FAD8C
	add r7, r7, #1
_02380C20:
	cmp r7, #0xf
	blt _02380B40
_02380C28:
	cmp r5, #0
	beq _02380DA8
	bl FUN_03801E40
	mov r4, r0
	mov r0, #8
	strh r0, [r4]
	mov r0, #0
	strh r0, [r4, #2]
	mov r0, #9
	strh r0, [r4, #8]
	ldrh r0, [r8, #0x16]
	strh r0, [r4, #0x12]
	strh r5, [r4, #0x10]
	add r0, r8, #0x10
	add r1, r4, #0xa
	mov r2, #6
	bl FUN_037FB078
	ldrh r0, [r6, #0x30]
	strh r0, [r4, #0x2c]
	ldrh r0, [r6, #0x32]
	strh r0, [r4, #0x2e]
	mov r0, r4
	bl FUN_03801E9C
	ldr r0, [r6, #0xc]
	cmp r0, #1
	bne _02380DA8
	mov r0, #1
	mov r0, r0, lsl r5
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl FUN_02386F94
	b _02380DA8
_02380CA8:
	mov r5, #0
	bl FUN_037FAD78
	mov r4, r0
	add r1, r6, #0x100
	ldrh r1, [r1, #0x82]
	cmp r1, #0
	bne _02380CCC
	bl FUN_037FAD8C
	b _02380DA8
_02380CCC:
	ldr r0, [r6, #0xc]
	cmp r0, #1
	bne _02380CEC
	mov r0, r5
	str r0, [r6, #0xc]
	mov r5, #1
	bl FUN_023869CC
	bl FUN_023803E8
_02380CEC:
	mov r1, #0
	add r0, r6, #0x100
	strh r1, [r0, #0x82]
	strh r1, [r6, #0x86]
	str r1, [r6, #0x14]
	str r1, [r6, #0x10]
	str r1, [r6, #0x1c]
	str r1, [r6, #0x198]
	strh r1, [r0, #0x96]
	add r0, r6, #0x19c
	mov r2, #0x50
	bl FUN_037FAFE4
	bl FUN_023802B0
	mov r0, #0
	strh r0, [r6, #0xc2]
	mov r0, #3
	strh r0, [r6]
	mov r0, r4
	bl FUN_037FAD8C
	bl FUN_03801E40
	mov r4, r0
	mov r0, #0xc
	strh r0, [r4]
	mov r0, #0
	strh r0, [r4, #2]
	mov r0, #9
	strh r0, [r4, #8]
	ldrh r0, [r8, #0x16]
	strh r0, [r4, #0xc]
	add r0, r6, #0x100
	ldrh r0, [r0, #0x88]
	strh r0, [r4, #0xa]
	ldr r0, _02380DB8 ; =0x0000018A
	add r0, r6, r0
	add r1, r4, #0x10
	mov r2, #6
	bl FUN_037FB078
	ldrh r0, [r6, #0x30]
	strh r0, [r4, #0x16]
	ldrh r0, [r6, #0x32]
	strh r0, [r4, #0x18]
	mov r0, r4
	bl FUN_03801E9C
	cmp r5, #0
	beq _02380DA8
	mov r0, #1
	bl FUN_02386F94
_02380DA8:
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_02380DB4: .word _0239A8B8
_02380DB8: .word 0x0000018A
	arm_func_end FUN_02380AF4

	arm_func_start FUN_02380DBC
FUN_02380DBC: ; 0x02380DBC
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	ldr r0, _02380F3C ; =_0239A8B8
	ldr r5, [r0, #0x550]
	ldrh r6, [r7, #0x16]
	cmp r6, #0
	beq _02380F30
	cmp r6, #0x10
	bhs _02380F30
	ldrh r0, [r5, #0xf6]
	cmp r0, #0
	bne _02380E5C
	bl FUN_023802E4
	movs r4, r0
	moveq r0, #0
	beq _02380E28
	mov r0, #0x22
	str r0, [r4]
	add r0, r7, #0x10
	add r1, r4, #4
	mov r2, #6
	bl FUN_037FB078
	ldr r0, _02380F40 ; =_02399940
	mov r1, r4
	mov r2, #0
	bl FUN_037F97F0
_02380E28:
	cmp r0, #0
	bne _02380F30
	bl FUN_03801E40
	mov r1, #0x80
	strh r1, [r0]
	mov r1, #8
	strh r1, [r0, #2]
	mov r1, #0x16
	strh r1, [r0, #4]
	mov r1, #0x22
	strh r1, [r0, #6]
	bl FUN_03801E9C
	b _02380F30
_02380E5C:
	bl FUN_037FAD78
	mov r4, r0
	mov r2, #1
	add r0, r5, #0x100
	ldrh r1, [r0, #0x82]
	orr r1, r1, r2, lsl r6
	strh r1, [r0, #0x82]
	ldrh r1, [r5, #0x86]
	mvn r0, r2, lsl r6
	and r0, r1, r0
	strh r0, [r5, #0x86]
	bl FUN_037FA080
	orr r1, r1, #0
	orr r2, r0, #1
	add r0, r5, r6, lsl #3
	str r2, [r0, #0x738]
	str r1, [r0, #0x73c]
	add r0, r7, #0x10
	add r1, r5, #0x128
	sub r3, r6, #1
	mov r2, #6
	mla r1, r3, r2, r1
	bl FUN_037FB078
	mov r0, r4
	bl FUN_037FAD8C
	mov r0, #1
	add r1, r5, #0x1f8
	add r1, r1, r6, lsl #4
	mov r2, #0x10
	bl FUN_037FAF38
	bl FUN_03801E40
	mov r4, r0
	mov r0, #8
	strh r0, [r4]
	mov r0, #0
	strh r0, [r4, #2]
	mov r0, #7
	strh r0, [r4, #8]
	add r0, r7, #0x10
	add r1, r4, #0xa
	mov r2, #6
	bl FUN_037FB078
	strh r6, [r4, #0x10]
	add r0, r7, #0x22
	add r1, r4, #0x14
	mov r2, #0x18
	bl FUN_037FAF50
	ldrh r0, [r5, #0x30]
	strh r0, [r4, #0x2c]
	ldrh r0, [r5, #0x32]
	strh r0, [r4, #0x2e]
	mov r0, r4
	bl FUN_03801E9C
_02380F30:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_02380F3C: .word _0239A8B8
_02380F40: .word _02399940
	arm_func_end FUN_02380DBC

	arm_func_start FUN_02380F44
FUN_02380F44: ; 0x02380F44
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_03801E40
	mov r1, #0x80
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	mov r1, #0x12
	strh r1, [r0, #4]
	bl FUN_03801E9C
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_02380F44

	arm_func_start FUN_02380F78
FUN_02380F78: ; 0x02380F78
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_03801E40
	mov r1, #0x80
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	mov r1, #0x11
	strh r1, [r0, #4]
	bl FUN_03801E9C
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_02380F78

	arm_func_start FUN_02380FAC
FUN_02380FAC: ; 0x02380FAC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r1, _023810D0 ; =_0239A8B8
	ldr r5, [r1, #0x550]
	ldrh r1, [r5, #0x9a]
	cmp r1, #1
	bne _02381030
	ldrh r0, [r0, #0x10]
	cmp r0, #0x20
	bne _02381030
	bl FUN_037FAD78
	mov r4, r0
	ldr r0, _023810D4 ; =_038044C8
	bl FUN_037FA36C
	mov r0, #0
	strh r0, [r5, #0x84]
	mov r0, r4
	bl FUN_037FAD8C
	mov r1, #0
	strh r1, [r5, #0x8a]
	mov r0, #1
	bl FUN_023871A4
	bl FUN_03801E40
	mov r1, #0x80
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	mov r1, #0x17
	strh r1, [r0, #4]
	mov r1, #1
	strh r1, [r0, #6]
	bl FUN_03801E9C
	b _023810C4
_02381030:
	bl FUN_023802E4
	movs r1, r0
	moveq r0, #0
	beq _02381094
	mov r0, #0x25
	str r0, [r1]
	ldr r0, _023810D8 ; =0x00008003
	str r0, [r1, #8]
	ldrh r0, [r5]
	cmp r0, #9
	beq _02381064
	cmp r0, #7
	bne _02381070
_02381064:
	ldr r0, _023810DC ; =0x00007FFE
	str r0, [r1, #4]
	b _02381088
_02381070:
	cmp r0, #0xa
	beq _02381080
	cmp r0, #8
	bne _02381088
_02381080:
	mov r0, #1
	str r0, [r1, #4]
_02381088:
	ldr r0, _023810E0 ; =_02399940
	mov r2, #0
	bl FUN_037F97F0
_02381094:
	cmp r0, #0
	bne _023810C4
	bl FUN_03801E40
	mov r1, #0x80
	strh r1, [r0]
	mov r1, #8
	strh r1, [r0, #2]
	mov r1, #0x16
	strh r1, [r0, #4]
	mov r1, #0x25
	strh r1, [r0, #6]
	bl FUN_03801E9C
_023810C4:
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_023810D0: .word _0239A8B8
_023810D4: .word _038044C8
_023810D8: .word 0x00008003
_023810DC: .word 0x00007FFE
_023810E0: .word _02399940
	arm_func_end FUN_02380FAC

	arm_func_start FUN_023810E4
FUN_023810E4: ; 0x023810E4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r0, _023811D4 ; =_0239A8B8
	ldr r4, [r0, #0x550]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _023811C8
	ldrb r1, [r5, #0x1f]
	ands r0, r1, #2
	movne r0, r1, asr #2
	andne r0, r0, #0xff
	moveq r0, r1, asr #2
	addeq r0, r0, #0x19
	andeq r0, r0, #0xff
	bl FUN_02380524
	bl FUN_023804B0
	strh r0, [r4, #0xbc]
	add r5, r5, #0x10
	add r0, r5, #0x1e
	bl FUN_02380764
	cmp r0, #1
	beq _023811C8
	ldrh r1, [r5, #6]
	ldr r0, _023811D8 ; =0x000005E4
	cmp r1, r0
	bhi _023811C8
	ldrh r0, [r4, #0xae]
	eor r0, r0, #1
	strh r0, [r4, #0xae]
	ldrh r0, [r4, #0xae]
	add r0, r4, r0, lsl #2
	ldr r4, [r0, #0xb0]
	mov r0, r5
	mov r1, r4
	ldrh r2, [r5, #6]
	add r2, r2, #0x2c
	add r2, r2, #1
	bic r2, r2, #1
	bl FUN_037FB078
	add r0, r5, #0x18
	add r1, r4, #0x18
	mov r2, #6
	bl FUN_037FB078
	add r0, r5, #0x1e
	add r1, r4, #0x1e
	mov r2, #6
	bl FUN_037FB078
	bl FUN_03801E40
	mov r1, #0x11
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	mov r1, #0xf
	strh r1, [r0, #4]
	str r4, [r0, #8]
	bl FUN_03801E9C
_023811C8:
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_023811D4: .word _0239A8B8
_023811D8: .word 0x000005E4
	arm_func_end FUN_023810E4

	arm_func_start FUN_023811DC
FUN_023811DC: ; 0x023811DC
	stmdb sp!, {r4, lr}
	bl FUN_023802E4
	movs r1, r0
	ldr r4, _02381264 ; =_023998B8
	ldr r0, _02381268 ; =_0239A8B8
	ldr r0, [r0, #0x550]
	mov r2, #0
	strh r2, [r0, #0x5e]
	strh r2, [r0, #0x60]
	strh r2, [r0, #0x88]
	beq _0238121C
	mov r0, #0x2c
	str r0, [r1]
	add r0, r4, #0x88
	bl FUN_037F97F0
	mov r2, r0
_0238121C:
	cmp r2, #0
	bne _0238125C
	add r0, r4, #0x1000
	ldr r0, [r0, #0x54c]
	cmp r0, #0
	beq _0238125C
	bl FUN_03801E40
	mov r1, #0x80
	strh r1, [r0]
	mov r1, #8
	strh r1, [r0, #2]
	mov r1, #0x16
	strh r1, [r0, #4]
	mov r1, #0x2c
	strh r1, [r0, #6]
	bl FUN_03801E9C
_0238125C:
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02381264: .word _023998B8
_02381268: .word _0239A8B8
	arm_func_end FUN_023811DC

	arm_func_start FUN_0238126C
FUN_0238126C: ; 0x0238126C
	ldr ip, _02381274 ; =FUN_023811DC
	bx ip
	.align 2, 0
_02381274: .word FUN_023811DC
	arm_func_end FUN_0238126C

	arm_func_start FUN_02381278
FUN_02381278: ; 0x02381278
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	add sb, r0, #0x10
	ldr r1, _023814D0 ; =_0239A8B8
	ldr r5, [r1, #0x550]
	mov r7, #0
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _023814C4
	ldrh r0, [r0, #0xe]
	cmp r0, #0
	bne _023812F4
	mov r8, #1
	ldr r2, _023814D4 ; =0x048080F8
	ldrh r1, [r2]
	ldr r0, _023814D8 ; =0x048080FA
	ldrh r3, [r0]
	ldrh r2, [r2]
	cmp r1, r2
	ldrhih r3, [r0]
	mov r0, r3, lsl #0xc
	orr r0, r0, r2, asr #4
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	ldrh r0, [r5, #0x82]
	sub r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	cmp r0, #0
	bgt _023812F8
	b _023814C4
_023812F4:
	mov r8, r7
_023812F8:
	bl FUN_037FAD78
	mov r4, r0
	ldrh r1, [r5, #0x84]
	cmp r1, #0
	bne _02381314
	bl FUN_037FAD8C
	b _023814C4
_02381314:
	mov r0, #0
	strh r0, [r5, #0x84]
	ldrh r6, [r5, #0x90]
	ldr r0, _023814DC ; =_038044C8
	bl FUN_037FA36C
	mov r0, r4
	bl FUN_037FAD8C
	mov r0, #1
	ldrh r3, [r5, #0x8c]
	cmp r3, #0
	beq _02381364
	cmp r8, #0
	bne _02381360
	ldrh r2, [sb, #0x2e]
	add r1, r5, #0x100
	ldrh r1, [r1, #0x88]
	mov r1, r0, lsl r1
	ands r1, r2, r1
	bne _02381364
_02381360:
	mov r0, #0
_02381364:
	cmp r3, #0
	movne r1, #0
	strneh r1, [r5, #0x8c]
	ldrh r1, [r5, #0x8e]
	cmp r1, #0
	beq _023813A0
	mov r1, #0
	strh r1, [r5, #0x8e]
	cmp r0, #0
	movne r1, #1
	mov r0, r8
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_023871A4
	mov r7, r0
_023813A0:
	cmp r6, #0
	beq _023814C4
	bl FUN_03801E40
	mov r4, r0
	mov r0, #0xe
	strh r0, [r4]
	cmp r8, #0
	movne r0, #9
	strneh r0, [r4, #2]
	bne _023813F0
	ldrh r2, [sb, #0x2e]
	mov r1, #1
	add r0, r5, #0x100
	ldrh r0, [r0, #0x88]
	mov r0, r1, lsl r0
	ands r0, r2, r0
	movne r0, #0xf
	strneh r0, [r4, #2]
	moveq r0, #0
	streqh r0, [r4, #2]
_023813F0:
	mov r0, #0xd
	strh r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #8]
	cmp r8, #0
	bne _02381450
	ldrh r0, [sb, #0xc]
	strh r0, [r4, #0xc]
	ldrh r0, [sb, #0xe]
	strh r0, [r4, #0xe]
	add r0, sb, #0x18
	add r1, r4, #0x10
	mov r2, #6
	bl FUN_037FB078
	add r0, sb, #0x1e
	add r1, r4, #0x16
	mov r2, #6
	bl FUN_037FB078
	ldrh r0, [sb, #0x2a]
	strh r0, [r4, #0x1c]
	ldrh r0, [sb, #0x2c]
	strh r0, [r4, #0x1e]
	ldrh r0, [sb, #0x2e]
	strh r0, [r4, #0x20]
_02381450:
	mov r0, r4
	bl FUN_03801E9C
	cmp r6, #0
	beq _023814C4
	cmp r7, #1
	beq _02381474
	ldrh r0, [r5, #0x5e]
	cmp r0, #0
	bne _023814B0
_02381474:
	ldrh r0, [r5, #0x46]
	cmp r0, #0
	beq _023814A8
	ldr r0, _023814E0 ; =_038044F4
	bl FUN_037FA36C
	mov r0, #0
	str r0, [sp]
	ldr r0, _023814E0 ; =_038044F4
	ldr r1, [r5, #0x50]
	ldr r2, [r5, #0x54]
	ldr r3, _023814E4 ; =FUN_0238126C
	bl FUN_037FA478
	b _023814C4
_023814A8:
	bl FUN_023811DC
	b _023814C4
_023814B0:
	mov r1, #0
	strh r1, [r5, #0x5e]
	mov r0, #1
	strh r0, [r5, #0x60]
	strh r1, [r5, #0x88]
_023814C4:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	.align 2, 0
_023814D0: .word _0239A8B8
_023814D4: .word 0x048080F8
_023814D8: .word 0x048080FA
_023814DC: .word _038044C8
_023814E0: .word _038044F4
_023814E4: .word FUN_0238126C
	arm_func_end FUN_02381278

	arm_func_start FUN_023814E8
FUN_023814E8: ; 0x023814E8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r5, _02381578 ; =_023998B8
	ldr r1, _0238157C ; =_0239A8B8
	ldr r0, [r1, #0x544]
	ldr r1, [r1, #0x548]
	mov r2, #0x40
	bl FUN_037F9E54
	mov r4, r0
	ldr r0, _02381580 ; =0x00000185
	strh r0, [r4, #0xc]
	mov r2, #0
	strh r2, [r4, #0xe]
	ldr r0, _02381584 ; =_023998E0
	mov r1, r4
	bl FUN_037F97F0
	cmp r0, #0
	bne _0238156C
	mov r0, r4
	bl FUN_02381FD0
	add r0, r5, #0x1000
	ldr r0, [r0, #0x54c]
	cmp r0, #0
	beq _0238156C
	bl FUN_03801E40
	mov r2, #0x80
	strh r2, [r0]
	mov r1, #8
	strh r1, [r0, #2]
	mov r1, #0x16
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	bl FUN_03801E9C
_0238156C:
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_02381578: .word _023998B8
_0238157C: .word _0239A8B8
_02381580: .word 0x00000185
_02381584: .word _023998E0
	arm_func_end FUN_023814E8

	arm_func_start FUN_02381588
FUN_02381588: ; 0x02381588
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov sl, r0
	ldr r0, _023818BC ; =_0239A8B8
	ldr r5, [r0, #0x550]
	ldrb r1, [sl, #0x1f]
	ands r0, r1, #2
	movne r0, r1, asr #2
	andne r1, r0, #0xff
	moveq r0, r1, asr #2
	addeq r0, r0, #0x19
	andeq r1, r0, #0xff
	ldrh r0, [r5, #0xbe]
	cmp r0, r1
	strhih r1, [r5, #0xbe]
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _023818B0
	ldrh r0, [r5, #0x60]
	cmp r0, #1
	moveq r0, #0
	streqh r0, [r5, #0x60]
	ldrh r6, [r5, #0x8e]
	ldrh r0, [r5, #0x70]
	eor r0, r0, #1
	strh r0, [r5, #0x70]
	ldrh r0, [r5, #0x70]
	add r0, r5, r0, lsl #2
	ldr r8, [r0, #0x74]
	ldrh r0, [sl, #0x16]
	add r2, r0, #0x30
	ldrh r0, [r5, #0x72]
	cmp r0, r2
	movlo r2, r0
	add r0, sl, #0x10
	mov r1, r8
	bl FUN_037FB078
	bl FUN_037FAD78
	mov fp, r0
	mov r7, #0
	ldrh r0, [r5, #0x84]
	cmp r0, #1
	bne _02381640
	mov r7, #1
	ldr r0, _023818C0 ; =_038044C8
	bl FUN_037FA36C
_02381640:
	mov sb, #1
	strh sb, [r5, #0x84]
	ldrh r0, [r8, #0xa]
	strh r0, [r5, #0x82]
	ldrh r4, [sl, #0x18]
	ands r0, r4, #0x2000
	moveq sb, #0
	strh sb, [r5, #0x90]
	mov lr, #0
	str lr, [sp]
	ldr r0, _023818C0 ; =_038044C8
	ldrh r2, [r8, #0xa]
	ldrh r1, [r8, #0xc]
	sub r1, r2, r1
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	add r1, r1, #0x80
	mov r2, r1, lsl #4
	mov r1, r2, asr #0x1f
	ldr r3, _023818C4 ; =0x000082EA
	umull ip, r3, r2, r3
	mla r3, r2, lr, r3
	ldr r2, _023818C4 ; =0x000082EA
	mla r3, r1, r2, r3
	mov lr, r3, lsr #6
	mov r1, ip, lsr #6
	orr r1, r1, r3, lsl #26
	mov r2, lr, lsr #0xa
	mov r1, r1, lsr #0xa
	orr r1, r1, lr, lsl #22
	ldr r3, _023818C8 ; =FUN_023814E8
	bl FUN_037FA478
	and r0, r4, #0x2800
	cmp r0, #0x2800
	moveq r1, #1
	movne r1, #0
	and r0, r4, #0x6000
	cmp r0, #0x6000
	moveq r2, #1
	movne r2, #0
	cmp r2, #0
	movne r0, #0
	strneh r0, [r5, #0x8a]
	cmp r1, #0
	movne r0, #1
	moveq r0, #0
	strh r0, [r5, #0x8e]
	cmp r2, #0
	movne r0, #1
	moveq r0, #0
	strh r0, [r5, #0x8c]
	cmp sb, #0
	beq _02381750
	ldrh r0, [r8, #0x2c]
	sub r0, r0, #0x66
	mov r1, #4
	bl FUN_03801848
	subs r1, r0, #0x20
	bmi _02381750
	ldrh r0, [r5, #0x36]
	cmp r1, r0
	movgt r1, r0
	ldrh r0, [r5, #0x32]
	cmp r1, r0
	beq _02381750
	mov r0, r1, lsl #0x10
	mov r0, r0, lsr #0x10
	bl FUN_023801B0
_02381750:
	mov r0, fp
	bl FUN_037FAD8C
	cmp r7, #0
	beq _0238179C
	cmp r6, #1
	bne _02381774
	mov r0, r7
	mov r1, #0
	bl FUN_023871A4
_02381774:
	bl FUN_03801E40
	mov r1, #0xe
	strh r1, [r0]
	mov r1, #9
	strh r1, [r0, #2]
	mov r1, #0xd
	strh r1, [r0, #4]
	mov r1, #0
	str r1, [r0, #8]
	bl FUN_03801E9C
_0238179C:
	cmp sb, #0
	bne _023817C8
	ldrh r0, [r8, #6]
	cmp r0, #2
	blo _023818B0
	ldrh r0, [r8, #0x30]
	ands r0, r0, #0x8000
	movne r0, #1
	moveq r0, #0
	strh r0, [r5, #0x5e]
	b _023818B0
_023817C8:
	add r0, sl, #0x28
	add r1, r8, #0x18
	mov r2, #6
	bl FUN_037FB078
	add r0, sl, #0x2e
	add r1, r8, #0x1e
	mov r2, #6
	bl FUN_037FB078
	ldrh r0, [r8, #6]
	cmp r0, #2
	blo _02381858
	sub r0, r0, #2
	strh r0, [r8, #6]
	ldrh r0, [r8, #0x30]
	ands r0, r0, #0x8000
	movne r0, #1
	moveq r0, #0
	strh r0, [r5, #0x5e]
	bl FUN_03801E40
	mov r1, #0xe
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	mov r1, #0xc
	strh r1, [r0, #4]
	str r8, [r0, #8]
	bl FUN_03801E9C
	ldrh r3, [r8, #6]
	cmp r3, #0
	beq _02381884
	str r8, [sp]
	mov r0, #0
	ldrh r1, [r8, #0x30]
	add r2, r8, #0x32
	bl FUN_02386CF8
	b _02381884
_02381858:
	mov r0, #0
	strh r0, [r8, #6]
	strh r0, [r5, #0x5e]
	bl FUN_03801E40
	mov r1, #0xe
	strh r1, [r0]
	strh r1, [r0, #2]
	mov r1, #0xc
	strh r1, [r0, #4]
	str r8, [r0, #8]
	bl FUN_03801E9C
_02381884:
	ldr r2, [r5, #0x7b8]
	ldr r1, [r5, #0x7bc]
	mov r0, #0
	cmp r1, r0
	cmpeq r2, r0
	beq _023818B0
	bl FUN_037FA080
	orr r1, r1, #0
	orr r0, r0, #1
	str r0, [r5, #0x738]
	str r1, [r5, #0x73c]
_023818B0:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_023818BC: .word _0239A8B8
_023818C0: .word _038044C8
_023818C4: .word 0x000082EA
_023818C8: .word FUN_023814E8
	arm_func_end FUN_02381588

	arm_func_start FUN_023818CC
FUN_023818CC: ; 0x023818CC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r2, _02381948 ; =_0239A8B8
	ldr lr, [r2, #0x550]
	ldrh r4, [lr, #0xbe]
	cmp r1, #0
	bne _0238193C
	ldrh r3, [r0, #0x14]
	cmp r3, #1
	blo _0238193C
	mov r5, #0
	add ip, r0, #0x1a
	b _02381930
_02381900:
	ldrh r2, [r0, #0x16]
	mla r1, r2, r5, ip
	ldrb r2, [r1, #3]
	ands r1, r2, #2
	movne r1, r2, asr #2
	andne r1, r1, #0xff
	moveq r1, r2, asr #2
	addeq r1, r1, #0x19
	andeq r1, r1, #0xff
	cmp r1, r4
	movlo r4, r1
	add r5, r5, #1
_02381930:
	cmp r5, r3
	blt _02381900
	strh r4, [lr, #0xbe]
_0238193C:
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_02381948: .word _0239A8B8
	arm_func_end FUN_023818CC

	arm_func_start FUN_0238194C
FUN_0238194C: ; 0x0238194C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	bl FUN_023802E4
	movs r1, r0
	ldr r4, _023819D0 ; =_023998B8
	moveq r0, #0
	beq _02381984
	mov r0, #0x2b
	str r0, [r1]
	str r5, [r1, #4]
	add r0, r4, #0x88
	mov r2, #0
	bl FUN_037F97F0
_02381984:
	cmp r0, #0
	bne _023819C4
	add r0, r4, #0x1000
	ldr r0, [r0, #0x54c]
	cmp r0, #0
	beq _023819C4
	bl FUN_03801E40
	mov r1, #0x80
	strh r1, [r0]
	mov r1, #8
	strh r1, [r0, #2]
	mov r1, #0x16
	strh r1, [r0, #4]
	mov r1, #0x2b
	strh r1, [r0, #6]
	bl FUN_03801E9C
_023819C4:
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_023819D0: .word _023998B8
	arm_func_end FUN_0238194C

	arm_func_start FUN_023819D4
FUN_023819D4: ; 0x023819D4
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldr ip, _023819E4 ; =FUN_0238194C
	bx ip
	.align 2, 0
_023819E4: .word FUN_0238194C
	arm_func_end FUN_023819D4

	arm_func_start FUN_023819E8
FUN_023819E8: ; 0x023819E8
	stmdb sp!, {r4, lr}
	ldr r0, _02381A60 ; =_0239A8B8
	ldr r4, [r0, #0x550]
	bl FUN_023802E4
	movs r1, r0
	moveq r0, #0
	beq _02381A20
	mov r0, #0x2d
	str r0, [r1]
	ldrh r0, [r4, #0x68]
	str r0, [r1, #4]
	ldr r0, _02381A64 ; =_02399940
	mov r2, #0
	bl FUN_037F97F0
_02381A20:
	cmp r0, #0
	movne r0, #1
	strneh r0, [r4, #0x66]
	bne _02381A58
	bl FUN_03801E40
	mov r1, #0x80
	strh r1, [r0]
	mov r1, #8
	strh r1, [r0, #2]
	mov r1, #0x16
	strh r1, [r0, #4]
	mov r1, #0x2d
	strh r1, [r0, #6]
	bl FUN_03801E9C
_02381A58:
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02381A60: .word _0239A8B8
_02381A64: .word _02399940
	arm_func_end FUN_023819E8

	arm_func_start FUN_02381A68
FUN_02381A68: ; 0x02381A68
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x2c
	mov sl, r0
	ldr r0, _02381DB8 ; =_0239A8B8
	ldr r8, [r0, #0x550]
	mov r5, #0
	ldr r0, [r8, #0xc]
	cmp r0, #0
	beq _02381DAC
	ldrh r0, [sl, #0x12]
	cmp r0, #0
	bne _02381AB0
	ldrh r1, [r8, #0x66]
	cmp r1, #1
	bne _02381AB8
	ldrh r0, [sl, #0x10]
	cmp r0, #0
	beq _02381AB8
_02381AB0:
	bl FUN_023819E8
	b _02381DAC
_02381AB8:
	cmp r1, #0
	movne r0, #0
	strneh r0, [r8, #0x66]
	ldrh r0, [r8, #0x70]
	add r0, r8, r0, lsl #2
	ldr r7, [r0, #0x74]
	ldrh r1, [sl, #0x16]
	ldrh r0, [sl, #0x14]
	mul r0, r1, r0
	add r2, r0, #0xa
	ldrh r0, [r8, #0x72]
	cmp r0, r2
	movlo r2, r0
	add r0, sl, #0x10
	mov r1, r7
	bl FUN_037FB078
	mov r0, sl
	ldrh r1, [r7]
	ldrh r2, [r8, #0x92]
	bl FUN_023818CC
	bl FUN_037FA080
	mov sb, #0
	mov r2, #1
	str r2, [sp, #0x10]
	orr r1, r1, #0
	str r1, [sp, #8]
	orr r0, r0, #1
	str r0, [sp, #4]
	add r6, r7, #0xa
	ldrh fp, [r7]
	str sb, [sp, #0x14]
	mov r0, #0x25
	str r0, [sp, #0x18]
	mov r0, #0x80
	str r0, [sp, #0x1c]
	mov r0, #8
	str r0, [sp, #0x20]
	mov r0, #0x16
	str r0, [sp, #0x24]
	b _02381CC0
_02381B58:
	ldrh r4, [r6, #4]
	ldrh r1, [r6]
	cmp r4, #1
	blo _02381CAC
	cmp r4, #0xf
	bhi _02381CAC
	cmp r1, #2
	blo _02381BD4
	ldr r0, _02381DBC ; =0x0000FFFF
	cmp r1, r0
	beq _02381BD4
	sub r0, r1, #2
	strh r0, [r6]
	ldrh r2, [r8, #0x86]
	ldr r1, [sp, #0x10]
	orr r1, r2, r1, lsl r4
	strh r1, [r8, #0x86]
	add r2, r8, r4, lsl #3
	ldr r1, [sp, #4]
	str r1, [r2, #0x738]
	ldr r1, [sp, #8]
	str r1, [r2, #0x73c]
	mov r0, r0, lsl #0x10
	movs r3, r0, lsr #0x10
	beq _02381CAC
	str r7, [sp]
	mov r0, r4
	ldrh r1, [r6, #8]
	add r2, r6, #0xa
	bl FUN_02386CF8
	b _02381CAC
_02381BD4:
	cmp r1, #0
	bne _02381CAC
	add r1, r8, r4, lsl #3
	ldr r0, [r1, #0x738]
	ldr r3, [r1, #0x73c]
	ldr r1, [sp, #0x10]
	mov r1, r1, lsl r4
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x10]
	orr fp, fp, r1, lsl r4
	ldr r2, [r8, #0x7b8]
	ldr r1, [r8, #0x7bc]
	mov ip, #0
	cmp r1, ip
	cmpeq r2, ip
	beq _02381CAC
	cmp r3, ip
	cmpeq r0, ip
	beq _02381CAC
	ldr ip, [sp, #4]
	subs r0, ip, r0
	ldr ip, [sp, #8]
	sbc r3, ip, r3
	cmp r3, r1
	cmpeq r0, r2
	bls _02381CAC
	bl FUN_023802E4
	movs r1, r0
	add r2, r8, r4, lsl #3
	ldr r0, [sp, #0x14]
	str r0, [r2, #0x738]
	str r0, [r2, #0x73c]
	beq _02381C7C
	ldr r0, [sp, #0x18]
	str r0, [r1]
	ldr r0, [sp, #0xc]
	str r0, [r1, #4]
	ldr r0, _02381DC0 ; =0x00008001
	str r0, [r1, #8]
	ldr r0, _02381DC4 ; =_02399940
	ldr r2, [sp, #0x14]
	bl FUN_037F97F0
_02381C7C:
	cmp r0, #0
	bne _02381CAC
	bl FUN_03801E40
	ldr r1, [sp, #0x1c]
	strh r1, [r0]
	ldr r1, [sp, #0x20]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x24]
	strh r1, [r0, #4]
	ldr r1, [sp, #0x18]
	strh r1, [r0, #6]
	bl FUN_03801E9C
_02381CAC:
	add r0, sb, #1
	mov r0, r0, lsl #0x10
	mov sb, r0, lsr #0x10
	ldrh r0, [r7, #6]
	add r6, r6, r0
_02381CC0:
	ldrh r0, [r7, #4]
	cmp sb, r0
	blo _02381B58
	mov r0, #0
	mov r1, fp, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_023871A4
	ldrh r0, [r7]
	cmp r0, #0
	movne r5, #1
	bl FUN_03801E40
	mov r1, #0xe
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	mov r1, #0xb
	strh r1, [r0, #4]
	str r7, [r0, #8]
	bl FUN_03801E9C
	ldrh r0, [r8, #0x70]
	eor r0, r0, #1
	strh r0, [r8, #0x70]
	bl FUN_037FAD78
	cmp r5, #0
	ldreqsh r1, [r8, #0x62]
	subeq r1, r1, #1
	streqh r1, [r8, #0x62]
	ldrsh r1, [r8, #0x64]
	cmp r1, #0
	subgt r1, r1, #1
	strgth r1, [r8, #0x64]
	ldrsh r1, [r8, #0x62]
	cmp r1, #0
	ble _02381D58
	ldrsh r1, [r8, #0x64]
	cmp r1, #0
	movgt r4, #1
	bgt _02381D5C
_02381D58:
	mov r4, #0
_02381D5C:
	bl FUN_037FAD8C
	cmp r4, #0
	beq _02381DAC
	cmp r5, #1
	ldreqh r4, [sl, #0x10]
	ldrne r4, _02381DBC ; =0x0000FFFF
	ldrh r0, [r8, #0x44]
	cmp r0, #0
	beq _02381DA4
	ldr r0, _02381DC8 ; =_038044F4
	bl FUN_037FA36C
	str r4, [sp]
	ldr r0, _02381DC8 ; =_038044F4
	ldr r1, [r8, #0x48]
	ldr r2, [r8, #0x4c]
	ldr r3, _02381DCC ; =FUN_023819D4
	bl FUN_037FA478
	b _02381DAC
_02381DA4:
	mov r0, r4
	bl FUN_0238194C
_02381DAC:
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_02381DB8: .word _0239A8B8
_02381DBC: .word 0x0000FFFF
_02381DC0: .word 0x00008001
_02381DC4: .word _02399940
_02381DC8: .word _038044F4
_02381DCC: .word FUN_023819D4
	arm_func_end FUN_02381A68

	arm_func_start FUN_02381DD0
FUN_02381DD0: ; 0x02381DD0
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _02381E18 ; =_0239A8B8
	ldr r0, [r0, #0x550]
	ldrh r0, [r0, #0xc2]
	cmp r0, #0
	beq _02381E0C
	bl FUN_03801E40
	mov r1, #0xc
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	mov r1, #8
	strh r1, [r0, #8]
	bl FUN_03801E9C
_02381E0C:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02381E18: .word _0239A8B8
	arm_func_end FUN_02381DD0

	arm_func_start FUN_02381E1C
FUN_02381E1C: ; 0x02381E1C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	ldr r0, _02381F70 ; =_0239A8B8
	ldr r4, [r0, #0x550]
	add r6, r7, #0x3c
	ldrb r1, [r7, #0x1f]
	ands r0, r1, #2
	movne r0, r1, asr #2
	andne r2, r0, #0xff
	moveq r0, r1, asr #2
	addeq r0, r0, #0x19
	andeq r2, r0, #0xff
	ldr r1, _02381F74 ; =0x027FFF98
	ldrh r0, [r1]
	eor r0, r2, r0, lsl #1
	eor r0, r0, r0, lsr #16
	strh r0, [r1]
	ldrh r0, [r4]
	cmp r0, #8
	beq _02381E78
	cmp r0, #0xa
	bne _02381F64
_02381E78:
	ldrh r1, [r4, #0xba]
	ldrh r0, [r6, #8]
	cmp r1, r0
	beq _02381EF0
	bl FUN_023802E4
	movs r1, r0
	moveq r0, #0
	beq _02381EBC
	mov r0, #0x25
	str r0, [r1]
	mov r0, #1
	str r0, [r1, #4]
	ldr r0, _02381F78 ; =0x00008002
	str r0, [r1, #8]
	ldr r0, _02381F7C ; =_02399940
	mov r2, #0
	bl FUN_037F97F0
_02381EBC:
	cmp r0, #0
	bne _02381F64
	bl FUN_03801E40
	mov r1, #0x80
	strh r1, [r0]
	mov r1, #8
	strh r1, [r0, #2]
	mov r1, #0x16
	strh r1, [r0, #4]
	mov r1, #0x25
	strh r1, [r0, #6]
	bl FUN_03801E9C
	b _02381F64
_02381EF0:
	ldr r0, _02381F70 ; =_0239A8B8
	ldr r0, [r0, #0x550]
	ldrh r0, [r0, #0xc2]
	cmp r0, #0
	beq _02381F64
	bl FUN_03801E40
	mov r5, r0
	mov r0, #0x80
	strh r0, [r5]
	mov r0, #0
	strh r0, [r5, #2]
	mov r0, #0x10
	strh r0, [r5, #4]
	ldrh r0, [r6, #8]
	strh r0, [r5, #6]
	ldrh r0, [r4]
	strh r0, [r5, #8]
	ldrh r0, [r7, #0x16]
	strh r0, [r5, #0xa]
	ldrh r2, [r5, #0xa]
	cmp r2, #0x80
	bhi _02381F5C
	mov r0, r6
	add r1, r5, #0xc
	add r2, r2, #1
	bic r2, r2, #1
	bl FUN_037FAF50
_02381F5C:
	mov r0, r5
	bl FUN_03801E9C
_02381F64:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_02381F70: .word _0239A8B8
_02381F74: .word 0x027FFF98
_02381F78: .word 0x00008002
_02381F7C: .word _02399940
	arm_func_end FUN_02381E1C

	arm_func_start FUN_02381F80
FUN_02381F80: ; 0x02381F80
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _02381FC8 ; =_0239A8B8
	ldr r0, [r0, #0x550]
	ldrh r0, [r0, #0xc2]
	cmp r0, #0
	beq _02381FBC
	bl FUN_03801E40
	mov r1, #8
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	mov r1, #2
	strh r1, [r0, #8]
	bl FUN_03801E9C
_02381FBC:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02381FC8: .word _0239A8B8
	arm_func_end FUN_02381F80

	arm_func_start FUN_02381FCC
FUN_02381FCC: ; 0x02381FCC
	bx lr
	arm_func_end FUN_02381FCC

	arm_func_start FUN_02381FD0
FUN_02381FD0: ; 0x02381FD0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	bl FUN_037FAD78
	mov r4, r0
	ldr r1, _0238200C ; =_0239A8B8
	ldr r0, [r1, #0x544]
	ldr r1, [r1, #0x548]
	mov r2, r5
	bl FUN_037F9DE0
	mov r0, r4
	bl FUN_037FAD8C
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_0238200C: .word _0239A8B8
	arm_func_end FUN_02381FD0

	arm_func_start FUN_02382010
FUN_02382010: ; 0x02382010
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, _0238214C ; =_0239A8B8
	ldr r2, [r1, #0x54c]
	cmp r2, #0
	beq _02382144
	ldr r1, [r1, #0x550]
	ldrh r1, [r1]
	cmp r1, #1
	beq _02382144
	ldrh r2, [r4, #0xc]
	ldr r1, _02382150 ; =0x00000182
	cmp r2, r1
	bgt _02382098
	cmp r2, r1
	bge _02382114
	cmp r2, #0x8d
	bgt _0238208C
	subs r1, r2, #0x84
	addpl pc, pc, r1, lsl #2
	b _02382134
_02382064: ; jump table
	b _023820C8 ; case 0
	b _023820D0 ; case 1
	b _023820D8 ; case 2
	b _023820E0 ; case 3
	b _023820E8 ; case 4
	b _02382134 ; case 5
	b _02382134 ; case 6
	b _023820F0 ; case 7
	b _023820F8 ; case 8
	b _02382100 ; case 9
_0238208C:
	cmp r2, #0x180
	beq _02382108
	b _02382134
_02382098:
	ldr r1, _02382154 ; =0x00000185
	cmp r2, r1
	bgt _023820B8
	cmp r2, r1
	bge _02382124
	cmp r2, #0x184
	beq _0238211C
	b _02382134
_023820B8:
	ldr r1, _02382158 ; =0x00000186
	cmp r2, r1
	beq _0238212C
	b _02382134
_023820C8:
	bl FUN_02380AC0
	b _0238213C
_023820D0:
	bl FUN_02380AF4
	b _0238213C
_023820D8:
	bl FUN_02380DBC
	b _0238213C
_023820E0:
	bl FUN_02380F44
	b _0238213C
_023820E8:
	bl FUN_02380F78
	b _0238213C
_023820F0:
	bl FUN_02381DD0
	b _0238213C
_023820F8:
	bl FUN_02381F80
	b _0238213C
_02382100:
	bl FUN_02381E1C
	b _0238213C
_02382108:
	mov r0, r4
	bl FUN_023810E4
	b _0238213C
_02382114:
	bl FUN_02381588
	b _0238213C
_0238211C:
	bl FUN_02381A68
	b _0238213C
_02382124:
	bl FUN_02381278
	b _0238213C
_0238212C:
	bl FUN_02380FAC
	b _0238213C
_02382134:
	mov r0, r4
	bl FUN_02381FCC
_0238213C:
	mov r0, r4
	bl FUN_02381FD0
_02382144:
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_0238214C: .word _0239A8B8
_02382150: .word 0x00000182
_02382154: .word 0x00000185
_02382158: .word 0x00000186
	arm_func_end FUN_02382010

	arm_func_start FUN_0238215C
FUN_0238215C: ; 0x0238215C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	ldr r0, _023821F4 ; =_023998B8
	add r7, r0, #0x58
	mov r4, #1
	add r6, r0, #0x28
	add r5, sp, #0
_02382178:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_037F9750
	ldr r1, [sp]
	cmp r1, #0
	bne _0238219C
	bl FUN_037F90E4
	b _023821E8
_0238219C:
	ldrh r2, [r1, #0xc]
	and r0, r2, #0xff
	mov r0, r0, lsl #0x10
	mov r3, r0, lsr #0x10
	and r0, r2, #0xff00
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _023821C4
	cmp r0, #0x100
	bne _023821D8
_023821C4:
	ands r0, r3, #0x80
	beq _023821D8
	mov r0, r1
	bl FUN_02382010
	b _02382178
_023821D8:
	mov r0, r7
	mov r2, r4
	bl FUN_037F97F0
	b _02382178
_023821E8:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_023821F4: .word _023998B8
	arm_func_end FUN_0238215C

	arm_func_start FUN_023821F8
FUN_023821F8: ; 0x023821F8
	bx lr
	arm_func_end FUN_023821F8

	arm_func_start FUN_023821FC
FUN_023821FC: ; 0x023821FC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #8
	ldr r1, _0238229C ; =_023998B8
	ldr r0, _023822A0 ; =_0239A8B8
	ldr sl, [r0, #0x550]
	mov r6, #1
	ldr r5, _023822A4 ; =_023991C0
	mov r4, #0
	add r8, r1, #0x88
	add r7, sp, #0
_02382224:
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl FUN_037F9750
	ldr r0, [sp]
	cmp r0, #0
	bne _02382248
	bl FUN_037F90E4
	b _02382290
_02382248:
	ldrh sb, [r0]
	ands r0, sb, #0x8000
	bicne r0, sb, #0x8000
	movne r0, r0, lsl #0x10
	movne sb, r0, lsr #0x10
	cmp sb, #0x2e
	bhs _02382280
	str r6, [sl, #4]
	strh sb, [sl, #2]
	ldr r0, [sp]
	ldr r1, [r5, sb, lsl #2]
	mov lr, pc
	bx r1
	arm_func_end FUN_023821FC

	arm_func_start FUN_0238227C
FUN_0238227C: ; 0x0238227C
	str r4, [sl, #4]
_02382280:
	orr r1, sb, #0x8000
	ldr r0, [sp]
	strh r1, [r0]
	b _02382224
_02382290:
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	.align 2, 0
_0238229C: .word _023998B8
_023822A0: .word _0239A8B8
_023822A4: .word _023991C0
	arm_func_end FUN_0238227C

	arm_func_start FUN_023822A8
FUN_023822A8: ; 0x023822A8
	stmdb sp!, {r4, lr}
	mov r3, #0
	strh r3, [r0]
	strh r3, [r0, #2]
	strh r3, [r0, #4]
	strh r3, [r0, #6]
	strh r3, [r0, #8]
	strh r3, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r3, [r0, #0xe]
	ldrh r1, [r0, #0xe]
	add r3, r0, r1, lsl #1
	add r4, r3, #0x10
	ldrh r1, [r0, #0xc]
	strh r1, [r3, #0x10]
	strh r2, [r4, #2]
	bl FUN_02380848
	mov r0, r4
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_023822A8

	arm_func_start FUN_023822F8
FUN_023822F8: ; 0x023822F8
	stmdb sp!, {r4, lr}
	mov ip, #0
	strh ip, [r0]
	strh ip, [r0, #2]
	strh ip, [r0, #4]
	strh ip, [r0, #6]
	strh ip, [r0, #8]
	strh ip, [r0, #0xa]
	ldr ip, _02382368 ; =0x00000309
	strh ip, [r0, #0xc]
	mov ip, #4
	strh ip, [r0, #0xe]
	strh r1, [r0, #0x10]
	strh r2, [r0, #0x12]
	strh r3, [r0, #0x14]
	ldrh r1, [sp, #8]
	strh r1, [r0, #0x16]
	ldrh r1, [r0, #0xe]
	add r2, r0, r1, lsl #1
	add r4, r2, #0x10
	ldrh r1, [r0, #0xc]
	strh r1, [r2, #0x10]
	mov r1, #1
	strh r1, [r4, #2]
	bl FUN_02380848
	mov r0, r4
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02382368: .word 0x00000309
	arm_func_end FUN_023822F8

	arm_func_start FUN_0238236C
FUN_0238236C: ; 0x0238236C
	mov r1, #0x308
	mov r2, #2
	ldr ip, _0238237C ; =FUN_023822A8
	bx ip
	.align 2, 0
_0238237C: .word FUN_023822A8
	arm_func_end FUN_0238236C

	arm_func_start FUN_02382380
FUN_02382380: ; 0x02382380
	ldr r1, _02382390 ; =0x00000307
	mov r2, #0x5c
	ldr ip, _02382394 ; =FUN_023822A8
	bx ip
	.align 2, 0
_02382390: .word 0x00000307
_02382394: .word FUN_023822A8
	arm_func_end FUN_02382380

	arm_func_start FUN_02382398
FUN_02382398: ; 0x02382398
	ldr r1, _023823A8 ; =0x00000306
	mov r2, #9
	ldr ip, _023823AC ; =FUN_023822A8
	bx ip
	.align 2, 0
_023823A8: .word 0x00000306
_023823AC: .word FUN_023822A8
	arm_func_end FUN_02382398

	arm_func_start FUN_023823B0
FUN_023823B0: ; 0x023823B0
	ldr r1, _023823C0 ; =0x00000305
	mov r2, #1
	ldr ip, _023823C4 ; =FUN_023822A8
	bx ip
	.align 2, 0
_023823C0: .word 0x00000305
_023823C4: .word FUN_023822A8
	arm_func_end FUN_023823B0

	arm_func_start FUN_023823C8
FUN_023823C8: ; 0x023823C8
	mov r1, #0x304
	mov r2, #1
	ldr ip, _023823D8 ; =FUN_023822A8
	bx ip
	.align 2, 0
_023823D8: .word FUN_023822A8
	arm_func_end FUN_023823C8

	arm_func_start FUN_023823DC
FUN_023823DC: ; 0x023823DC
	ldr r1, _023823EC ; =0x00000303
	mov r2, #1
	ldr ip, _023823F0 ; =FUN_023822A8
	bx ip
	.align 2, 0
_023823EC: .word 0x00000303
_023823F0: .word FUN_023822A8
	arm_func_end FUN_023823DC

	arm_func_start FUN_023823F4
FUN_023823F4: ; 0x023823F4
	ldr r1, _02382404 ; =0x00000302
	mov r2, #1
	ldr ip, _02382408 ; =FUN_023822A8
	bx ip
	.align 2, 0
_02382404: .word 0x00000302
_02382408: .word FUN_023822A8
	arm_func_end FUN_023823F4

	arm_func_start FUN_0238240C
FUN_0238240C: ; 0x0238240C
	ldr r1, _0238241C ; =0x00000301
	mov r2, #1
	ldr ip, _02382420 ; =FUN_023822A8
	bx ip
	.align 2, 0
_0238241C: .word 0x00000301
_02382420: .word FUN_023822A8
	arm_func_end FUN_0238240C

	arm_func_start FUN_02382424
FUN_02382424: ; 0x02382424
	mov r1, #0x284
	mov r2, #2
	ldr ip, _02382434 ; =FUN_023822A8
	bx ip
	.align 2, 0
_02382434: .word FUN_023822A8
	arm_func_end FUN_02382424

	arm_func_start FUN_02382438
FUN_02382438: ; 0x02382438
	ldr r1, _02382448 ; =0x00000283
	mov r2, #3
	ldr ip, _0238244C ; =FUN_023822A8
	bx ip
	.align 2, 0
_02382448: .word 0x00000283
_0238244C: .word FUN_023822A8
	arm_func_end FUN_02382438

	arm_func_start FUN_02382450
FUN_02382450: ; 0x02382450
	ldr r1, _02382460 ; =0x00000281
	mov r2, #4
	ldr ip, _02382464 ; =FUN_023822A8
	bx ip
	.align 2, 0
_02382460: .word 0x00000281
_02382464: .word FUN_023822A8
	arm_func_end FUN_02382450

	arm_func_start FUN_02382468
FUN_02382468: ; 0x02382468
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r6, r1
	mov r5, r2
	mov r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	strh r0, [r4, #8]
	strh r0, [r4, #0xa]
	ldr r0, _023824F4 ; =0x00000245
	strh r0, [r4, #0xc]
	add r0, r6, #1
	mov r1, #2
	bl FUN_03801848
	add r0, r0, #1
	strh r0, [r4, #0xe]
	strh r6, [r4, #0x10]
	mov r0, r5
	add r1, r4, #0x12
	mov r2, r6
	bl FUN_037FAF50
	ldrh r0, [r4, #0xe]
	add r1, r4, r0, lsl #1
	add r5, r1, #0x10
	ldrh r0, [r4, #0xc]
	strh r0, [r1, #0x10]
	mov r0, #1
	strh r0, [r5, #2]
	mov r0, r4
	bl FUN_02380848
	mov r0, r5
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_023824F4: .word 0x00000245
	arm_func_end FUN_02382468

	arm_func_start FUN_023824F8
FUN_023824F8: ; 0x023824F8
	stmdb sp!, {r4, lr}
	mov r2, #0
	strh r2, [r0]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	ldr r2, _02382554 ; =0x00000242
	strh r2, [r0, #0xc]
	mov r3, #1
	strh r3, [r0, #0xe]
	strh r1, [r0, #0x10]
	ldrh r1, [r0, #0xe]
	add r2, r0, r1, lsl #1
	add r4, r2, #0x10
	ldrh r1, [r0, #0xc]
	strh r1, [r2, #0x10]
	strh r3, [r4, #2]
	bl FUN_02380848
	mov r0, r4
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02382554: .word 0x00000242
	arm_func_end FUN_023824F8

	arm_func_start FUN_02382558
FUN_02382558: ; 0x02382558
	stmdb sp!, {r4, lr}
	mov r2, #0
	strh r2, [r0]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	ldr r2, _023825B4 ; =0x00000216
	strh r2, [r0, #0xc]
	mov r3, #1
	strh r3, [r0, #0xe]
	strh r1, [r0, #0x10]
	ldrh r1, [r0, #0xe]
	add r2, r0, r1, lsl #1
	add r4, r2, #0x10
	ldrh r1, [r0, #0xc]
	strh r1, [r2, #0x10]
	strh r3, [r4, #2]
	bl FUN_02380848
	mov r0, r4
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_023825B4: .word 0x00000216
	arm_func_end FUN_02382558

	arm_func_start FUN_023825B8
FUN_023825B8: ; 0x023825B8
	stmdb sp!, {r4, lr}
	mov r2, #0
	strh r2, [r0]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	ldr r2, _02382614 ; =0x00000215
	strh r2, [r0, #0xc]
	mov r3, #1
	strh r3, [r0, #0xe]
	strh r1, [r0, #0x10]
	ldrh r1, [r0, #0xe]
	add r2, r0, r1, lsl #1
	add r4, r2, #0x10
	ldrh r1, [r0, #0xc]
	strh r1, [r2, #0x10]
	strh r3, [r4, #2]
	bl FUN_02380848
	mov r0, r4
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02382614: .word 0x00000215
	arm_func_end FUN_023825B8

	arm_func_start FUN_02382618
FUN_02382618: ; 0x02382618
	stmdb sp!, {r4, lr}
	mov r2, #0
	strh r2, [r0]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	ldr r2, _02382674 ; =0x00000212
	strh r2, [r0, #0xc]
	mov r3, #1
	strh r3, [r0, #0xe]
	strh r1, [r0, #0x10]
	ldrh r1, [r0, #0xe]
	add r2, r0, r1, lsl #1
	add r4, r2, #0x10
	ldrh r1, [r0, #0xc]
	strh r1, [r2, #0x10]
	strh r3, [r4, #2]
	bl FUN_02380848
	mov r0, r4
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02382674: .word 0x00000212
	arm_func_end FUN_02382618

	arm_func_start FUN_02382678
FUN_02382678: ; 0x02382678
	stmdb sp!, {r4, lr}
	mov ip, #0
	strh ip, [r0]
	strh ip, [r0, #2]
	strh ip, [r0, #4]
	strh ip, [r0, #6]
	strh ip, [r0, #8]
	strh ip, [r0, #0xa]
	ldr ip, _023826E0 ; =0x00000211
	strh ip, [r0, #0xc]
	mov ip, #3
	strh ip, [r0, #0xe]
	strh r1, [r0, #0x10]
	strh r2, [r0, #0x12]
	strh r3, [r0, #0x14]
	ldrh r1, [r0, #0xe]
	add r2, r0, r1, lsl #1
	add r4, r2, #0x10
	ldrh r1, [r0, #0xc]
	strh r1, [r2, #0x10]
	mov r1, #1
	strh r1, [r4, #2]
	bl FUN_02380848
	mov r0, r4
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_023826E0: .word 0x00000211
	arm_func_end FUN_02382678

	arm_func_start FUN_023826E4
FUN_023826E4: ; 0x023826E4
	stmdb sp!, {r4, lr}
	mov r2, #0
	strh r2, [r0]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	ldr r2, _02382740 ; =0x0000020E
	strh r2, [r0, #0xc]
	mov r3, #1
	strh r3, [r0, #0xe]
	strh r1, [r0, #0x10]
	ldrh r1, [r0, #0xe]
	add r2, r0, r1, lsl #1
	add r4, r2, #0x10
	ldrh r1, [r0, #0xc]
	strh r1, [r2, #0x10]
	strh r3, [r4, #2]
	bl FUN_02380848
	mov r0, r4
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02382740: .word 0x0000020E
	arm_func_end FUN_023826E4

	arm_func_start FUN_02382744
FUN_02382744: ; 0x02382744
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	strh r0, [r4, #8]
	strh r0, [r4, #0xa]
	ldr r0, _023827C0 ; =0x0000020D
	strh r0, [r4, #0xc]
	mov r0, #0x10
	strh r0, [r4, #0xe]
	mov r0, r1
	add r1, r4, #0x10
	mov r2, #0x20
	bl FUN_037FAF50
	ldrh r0, [r4, #0xe]
	add r1, r4, r0, lsl #1
	add r5, r1, #0x10
	ldrh r0, [r4, #0xc]
	strh r0, [r1, #0x10]
	mov r0, #1
	strh r0, [r5, #2]
	mov r0, r4
	bl FUN_02380848
	mov r0, r5
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_023827C0: .word 0x0000020D
	arm_func_end FUN_02382744

	arm_func_start FUN_023827C4
FUN_023827C4: ; 0x023827C4
	stmdb sp!, {r4, lr}
	mov r2, #0
	strh r2, [r0]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	ldr r2, _02382820 ; =0x0000020B
	strh r2, [r0, #0xc]
	mov r3, #1
	strh r3, [r0, #0xe]
	strh r1, [r0, #0x10]
	ldrh r1, [r0, #0xe]
	add r2, r0, r1, lsl #1
	add r4, r2, #0x10
	ldrh r1, [r0, #0xc]
	strh r1, [r2, #0x10]
	strh r3, [r4, #2]
	bl FUN_02380848
	mov r0, r4
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02382820: .word 0x0000020B
	arm_func_end FUN_023827C4

	arm_func_start FUN_02382824
FUN_02382824: ; 0x02382824
	stmdb sp!, {r4, lr}
	mov r2, #0
	strh r2, [r0]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	ldr r2, _02382880 ; =0x00000207
	strh r2, [r0, #0xc]
	mov r3, #1
	strh r3, [r0, #0xe]
	strh r1, [r0, #0x10]
	ldrh r1, [r0, #0xe]
	add r2, r0, r1, lsl #1
	add r4, r2, #0x10
	ldrh r1, [r0, #0xc]
	strh r1, [r2, #0x10]
	strh r3, [r4, #2]
	bl FUN_02380848
	mov r0, r4
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02382880: .word 0x00000207
	arm_func_end FUN_02382824

	arm_func_start FUN_02382884
FUN_02382884: ; 0x02382884
	stmdb sp!, {r4, lr}
	mov r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	mov r1, #0x200
	strh r1, [r0, #0xc]
	mov r1, #0x48
	strh r1, [r0, #0xe]
	ldrh r1, [r0, #0xe]
	add r2, r0, r1, lsl #1
	add r4, r2, #0x10
	ldrh r1, [r0, #0xc]
	strh r1, [r2, #0x10]
	mov r1, #1
	strh r1, [r4, #2]
	bl FUN_02380848
	mov r0, r4
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_02382884

	arm_func_start FUN_023828E0
FUN_023828E0: ; 0x023828E0
	stmdb sp!, {r4, lr}
	mov r2, #0
	strh r2, [r0]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	mov r2, #0x104
	strh r2, [r0, #0xc]
	mov r3, #1
	strh r3, [r0, #0xe]
	strh r1, [r0, #0x10]
	ldrh r1, [r0, #0xe]
	add r2, r0, r1, lsl #1
	add r4, r2, #0x10
	ldrh r1, [r0, #0xc]
	strh r1, [r2, #0x10]
	strh r3, [r4, #2]
	bl FUN_02380848
	mov r0, r4
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_023828E0

	arm_func_start FUN_0238293C
FUN_0238293C: ; 0x0238293C
	stmdb sp!, {r4, lr}
	mov ip, #0
	strh ip, [r0]
	strh ip, [r0, #2]
	strh ip, [r0, #4]
	strh ip, [r0, #6]
	strh ip, [r0, #8]
	strh ip, [r0, #0xa]
	ldr ip, _023829D4 ; =0x00000102
	strh ip, [r0, #0xc]
	mov ip, #0xa
	strh ip, [r0, #0xe]
	strh r1, [r0, #0x10]
	strh r2, [r0, #0x12]
	strh r3, [r0, #0x14]
	ldrh r1, [sp, #8]
	strh r1, [r0, #0x16]
	ldrh r1, [sp, #0xc]
	strh r1, [r0, #0x18]
	ldrh r1, [sp, #0x10]
	strh r1, [r0, #0x1a]
	ldrh r1, [sp, #0x14]
	strh r1, [r0, #0x1c]
	ldrh r1, [sp, #0x18]
	strh r1, [r0, #0x1e]
	ldr r1, [sp, #0x1c]
	str r1, [r0, #0x20]
	ldrh r1, [r0, #0xe]
	add r2, r0, r1, lsl #1
	add r4, r2, #0x10
	ldrh r1, [r0, #0xc]
	strh r1, [r2, #0x10]
	mov r1, #1
	strh r1, [r4, #2]
	bl FUN_02380848
	mov r0, r4
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_023829D4: .word 0x00000102
	arm_func_end FUN_0238293C

	arm_func_start FUN_023829D8
FUN_023829D8: ; 0x023829D8
	stmdb sp!, {r4, lr}
	mov ip, #0
	strh ip, [r0]
	strh ip, [r0, #2]
	strh ip, [r0, #4]
	strh ip, [r0, #6]
	strh ip, [r0, #8]
	strh ip, [r0, #0xa]
	ldr ip, _02382A40 ; =0x00000101
	strh ip, [r0, #0xc]
	mov ip, #4
	strh ip, [r0, #0xe]
	strh r1, [r0, #0x10]
	strh r2, [r0, #0x12]
	str r3, [r0, #0x14]
	ldrh r1, [r0, #0xe]
	add r2, r0, r1, lsl #1
	add r4, r2, #0x10
	ldrh r1, [r0, #0xc]
	strh r1, [r2, #0x10]
	mov r1, #1
	strh r1, [r4, #2]
	bl FUN_02380848
	mov r0, r4
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02382A40: .word 0x00000101
	arm_func_end FUN_023829D8

	arm_func_start FUN_02382A44
FUN_02382A44: ; 0x02382A44
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r5, r1
	mov r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	strh r0, [r4, #8]
	strh r0, [r4, #0xa]
	mov r0, #0x100
	strh r0, [r4, #0xc]
	mov r0, #0x18
	strh r0, [r4, #0xe]
	mov r0, r5
	add r1, r4, #0x10
	mov r2, #0x30
	bl FUN_037FAF50
	mov r0, #0
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	strh r0, [r5, #8]
	strh r0, [r5, #0xa]
	strh r0, [r5, #0xc]
	strh r0, [r5, #0x10]
	strh r0, [r5, #0x12]
	strh r0, [r5, #0x14]
	strh r0, [r5, #0x16]
	strh r0, [r5, #0x24]
	strh r0, [r5, #0x26]
	strh r0, [r5, #0x28]
	strh r0, [r5, #0x2a]
	ldrh r0, [r4, #0xe]
	add r1, r4, r0, lsl #1
	add r5, r1, #0x10
	ldrh r0, [r4, #0xc]
	strh r0, [r1, #0x10]
	mov r0, #2
	strh r0, [r5, #2]
	mov r0, r4
	bl FUN_02380848
	mov r0, r5
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_02382A44

	arm_func_start FUN_02382AFC
FUN_02382AFC: ; 0x02382AFC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r0
	mov ip, #0
	strh ip, [r4]
	strh ip, [r4, #2]
	strh ip, [r4, #4]
	strh ip, [r4, #6]
	strh ip, [r4, #8]
	strh ip, [r4, #0xa]
	mov r0, #0xa
	strh r0, [r4, #0xc]
	mov r0, #0xc
	strh r0, [r4, #0xe]
	strh ip, [r4, #0x10]
	strh r1, [r4, #0x12]
	strh r2, [r4, #0x14]
	strh r3, [r4, #0x16]
	ldr r0, [sp, #0x10]
	add r1, r4, #0x18
	mov r2, #0x10
	bl FUN_037FAF50
	ldrh r0, [r4, #0xe]
	add r1, r4, r0, lsl #1
	add r5, r1, #0x10
	ldrh r0, [r4, #0xc]
	strh r0, [r1, #0x10]
	mov r0, #0x12
	strh r0, [r5, #2]
	mov r0, r4
	bl FUN_02380848
	mov r0, r5
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_02382AFC

	arm_func_start FUN_02382B88
FUN_02382B88: ; 0x02382B88
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	mov r0, #0
	strh r0, [r7]
	strh r0, [r7, #2]
	strh r0, [r7, #4]
	strh r0, [r7, #6]
	strh r0, [r7, #8]
	strh r0, [r7, #0xa]
	mov r0, #9
	strh r0, [r7, #0xc]
	ldrh r0, [sp, #0x28]
	add r0, r0, #1
	mov r1, #2
	bl FUN_03801848
	add r0, r0, #0x17
	strh r0, [r7, #0xe]
	strh r6, [r7, #0x10]
	mov r0, r5
	add r1, r7, #0x12
	mov r2, #0x20
	bl FUN_037FAF50
	strh r4, [r7, #0x32]
	ldrh r0, [sp, #0x18]
	strh r0, [r7, #0x34]
	ldrh r0, [sp, #0x1c]
	strh r0, [r7, #0x36]
	ldrh r0, [sp, #0x20]
	strh r0, [r7, #0x38]
	ldrh r0, [sp, #0x24]
	strh r0, [r7, #0x3a]
	ldrh r2, [sp, #0x28]
	strh r2, [r7, #0x3c]
	ldr r0, [sp, #0x2c]
	add r1, r7, #0x3e
	bl FUN_037FAF50
	ldrh r0, [r7, #0xe]
	add r1, r7, r0, lsl #1
	add r4, r1, #0x10
	ldrh r0, [r7, #0xc]
	strh r0, [r1, #0x10]
	mov r0, #1
	strh r0, [r4, #2]
	mov r0, r7
	bl FUN_02380848
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end FUN_02382B88

	arm_func_start FUN_02382C5C
FUN_02382C5C: ; 0x02382C5C
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r6, r2
	mov r5, r3
	mov r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	strh r0, [r4, #8]
	strh r0, [r4, #0xa]
	mov r2, #6
	strh r2, [r4, #0xc]
	mov r0, #5
	strh r0, [r4, #0xe]
	mov r0, r1
	add r1, r4, #0x10
	bl FUN_037FAF50
	strh r6, [r4, #0x16]
	strh r5, [r4, #0x18]
	ldrh r0, [r4, #0xe]
	add r1, r4, r0, lsl #1
	add r5, r1, #0x10
	ldrh r0, [r4, #0xc]
	strh r0, [r1, #0x10]
	mov r0, #3
	strh r0, [r5, #2]
	mov r0, r4
	bl FUN_02380848
	mov r0, r5
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	arm_func_end FUN_02382C5C

	arm_func_start FUN_02382CDC
FUN_02382CDC: ; 0x02382CDC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r5, r2
	mov r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	strh r0, [r4, #8]
	strh r0, [r4, #0xa]
	mov r0, #5
	strh r0, [r4, #0xc]
	mov r0, #4
	strh r0, [r4, #0xe]
	mov r0, r1
	add r1, r4, #0x10
	mov r2, #6
	bl FUN_037FAF50
	strh r5, [r4, #0x16]
	ldrh r0, [r4, #0xe]
	add r1, r4, r0, lsl #1
	add r5, r1, #0x10
	ldrh r0, [r4, #0xc]
	strh r0, [r1, #0x10]
	mov r0, #4
	strh r0, [r5, #2]
	mov r0, r4
	bl FUN_02380848
	mov r0, r5
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_02382CDC

	arm_func_start FUN_02382D60
FUN_02382D60: ; 0x02382D60
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r6, r2
	mov r5, r3
	mov r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	strh r0, [r4, #8]
	strh r0, [r4, #0xa]
	mov r0, #4
	strh r0, [r4, #0xc]
	mov r0, #5
	strh r0, [r4, #0xe]
	mov r0, r1
	add r1, r4, #0x10
	mov r2, #6
	bl FUN_037FAF50
	strh r6, [r4, #0x16]
	strh r5, [r4, #0x18]
	ldrh r0, [r4, #0xe]
	add r1, r4, r0, lsl #1
	add r5, r1, #0x10
	ldrh r0, [r4, #0xc]
	strh r0, [r1, #0x10]
	mov r0, #6
	strh r0, [r5, #2]
	mov r0, r4
	bl FUN_02380848
	mov r0, r5
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	arm_func_end FUN_02382D60

	arm_func_start FUN_02382DE4
FUN_02382DE4: ; 0x02382DE4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r3, #0
	strh r3, [r4]
	strh r3, [r4, #2]
	strh r3, [r4, #4]
	strh r3, [r4, #6]
	strh r3, [r4, #8]
	strh r3, [r4, #0xa]
	mov r0, #3
	strh r0, [r4, #0xc]
	mov r0, #0x22
	strh r0, [r4, #0xe]
	strh r1, [r4, #0x10]
	strh r3, [r4, #0x12]
	mov r0, r2
	add r1, r4, #0x14
	mov r2, #0x44
	bl FUN_037FAF50
	ldrh r0, [r4, #0xe]
	add r1, r4, r0, lsl #1
	add r5, r1, #0x10
	ldrh r0, [r4, #0xc]
	strh r0, [r1, #0x10]
	mov r0, #5
	strh r0, [r5, #2]
	mov r0, r4
	bl FUN_02380848
	mov r0, r5
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_02382DE4

	arm_func_start FUN_02382E68
FUN_02382E68: ; 0x02382E68
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, r1
	mov r6, r3
	mov r0, #0
	strh r0, [r5]
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	strh r0, [r5, #6]
	strh r0, [r5, #8]
	strh r0, [r5, #0xa]
	mov r0, #2
	strh r0, [r5, #0xc]
	mov r0, #0x1f
	strh r0, [r5, #0xe]
	mov r0, r2
	add r1, r5, #0x10
	mov r2, #6
	bl FUN_037FAF50
	strh r6, [r5, #0x16]
	ldr r0, [sp, #0x10]
	add r1, r5, #0x18
	mov r2, #0x20
	bl FUN_037FAF50
	ldrh r0, [sp, #0x14]
	strh r0, [r5, #0x38]
	ldr r0, [sp, #0x18]
	add r1, r5, #0x3a
	mov r2, #0x10
	bl FUN_037FAF50
	ldrh r0, [sp, #0x1c]
	strh r0, [r5, #0x4a]
	mov r0, #0
	strh r0, [r5, #0x4c]
	ldrh r0, [r5, #0xe]
	add r1, r5, r0, lsl #1
	add r6, r1, #0x10
	ldrh r0, [r5, #0xc]
	strh r0, [r1, #0x10]
	mov r0, r4, lsr #1
	sub r0, r0, #0x2c
	strh r0, [r6, #2]
	mov r0, r5
	bl FUN_02380848
	mov r0, r6
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	arm_func_end FUN_02382E68

	arm_func_start FUN_02382F24
FUN_02382F24: ; 0x02382F24
	stmdb sp!, {r4, lr}
	mov ip, #0
	strh ip, [r0]
	strh ip, [r0, #2]
	strh ip, [r0, #4]
	strh ip, [r0, #6]
	strh ip, [r0, #8]
	strh ip, [r0, #0xa]
	mov lr, #1
	strh lr, [r0, #0xc]
	mov ip, #3
	strh ip, [r0, #0xe]
	strh r1, [r0, #0x10]
	strh r2, [r0, #0x12]
	strh r3, [r0, #0x14]
	ldrh r1, [r0, #0xe]
	add r2, r0, r1, lsl #1
	add r4, r2, #0x10
	ldrh r1, [r0, #0xc]
	strh r1, [r2, #0x10]
	strh lr, [r4, #2]
	bl FUN_02380848
	mov r0, r4
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_02382F24

	arm_func_start FUN_02382F88
FUN_02382F88: ; 0x02382F88
	stmdb sp!, {r4, lr}
	mov r2, #0
	strh r2, [r0]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	mov r3, #1
	strh r3, [r0, #0xe]
	strh r1, [r0, #0x10]
	ldrh r1, [r0, #0xe]
	add r2, r0, r1, lsl #1
	add r4, r2, #0x10
	ldrh r1, [r0, #0xc]
	strh r1, [r2, #0x10]
	strh r3, [r4, #2]
	bl FUN_02380848
	mov r0, r4
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_02382F88

	arm_func_start FUN_02382FE0
FUN_02382FE0: ; 0x02382FE0
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldr r4, [r0, #4]
	ldr r1, _0238308C ; =_0239A8B8
	str r4, [r1, #0x54c]
	ldr r2, [r0, #8]
	str r2, [r1, #0x550]
	str r2, [r4]
	ldr r0, [r0, #0xc]
	str r0, [r4, #8]
	bl FUN_02388158
	mov r0, #0xf
	bl FUN_037FE760
	mov r1, #1
	ldr r0, [r4]
	strh r1, [r0]
	add r0, sp, #0
	add r1, sp, #2
	bl FUN_023883B4
	cmp r0, #0
	bne _02383060
	bl FUN_03801E40
	mov r1, #0
	strh r1, [r0]
	mov r1, #1
	strh r1, [r0, #2]
	ldrh r1, [sp]
	strh r1, [r0, #4]
	ldrh r1, [sp, #2]
	strh r1, [r0, #6]
	bl FUN_03801E9C
	b _02383080
_02383060:
	mov r1, #2
	ldr r0, [r4]
	strh r1, [r0]
	bl FUN_03801E40
	mov r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	bl FUN_03801E9C
_02383080:
	add sp, sp, #8
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_0238308C: .word _0239A8B8
	arm_func_end FUN_02382FE0

	arm_func_start FUN_02383090
FUN_02383090: ; 0x02383090
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	bl FUN_03801E40
	mov r1, #1
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r5, [r0, #4]
	strh r4, [r0, #6]
	bl FUN_03801E9C
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_02383090

	arm_func_start FUN_023830C8
FUN_023830C8: ; 0x023830C8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x214
	ldr r0, _023834B4 ; =_0239A8B8
	ldr r7, [r0, #0x550]
	mov r5, #0
	bl FUN_037FAD78
	mov r4, r0
	ldr r0, [r7, #0xc]
	cmp r0, #1
	bne _02383124
	mov r0, r5
	str r0, [r7, #0xc]
	mov r5, #1
	bl FUN_023869CC
	bl FUN_023803E8
	ldrh r0, [r7]
	cmp r0, #0xa
	moveq r0, #8
	streqh r0, [r7]
	beq _02383124
	cmp r0, #9
	moveq r0, #7
	streqh r0, [r7]
_02383124:
	ldrh r1, [r7]
	ldr r0, _023834B8 ; =0x0000FFF9
	add r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #1
	bhi _02383158
	add r0, r7, #0x100
	ldrh sb, [r0, #0x82]
	cmp r1, #7
	moveq sl, #1
	movne sl, #0
	b _0238315C
_02383158:
	mov sb, #0
_0238315C:
	mov r1, #0
	add r0, r7, #0x100
	strh r1, [r0, #0x82]
	strh r1, [r7, #0x86]
	str r1, [r7, #0x14]
	str r1, [r7, #0x10]
	str r1, [r7, #0x1c]
	strh r1, [r7, #0xc2]
	mov r0, r4
	bl FUN_037FAD8C
	cmp r5, #0
	beq _02383194
	ldr r0, _023834BC ; =0x0000FFFF
	bl FUN_02386F94
_02383194:
	cmp sl, #0
	movne r0, #0
	strneh r0, [r7, #0xf6]
	cmp sb, #0
	beq _023831F8
	mov r8, #0
	add r5, r7, #0x128
	ldr r0, _023834C0 ; =0x0000018A
	add fp, r7, r0
	mov r6, #1
	mov r4, #6
_023831C0:
	mov r0, r6, lsl r8
	ands r0, sb, r0
	beq _023831EC
	cmp r8, #0
	moveq r2, fp
	subne r0, r8, #1
	mlane r2, r0, r4, r5
	mov r0, sl
	mov r1, r8, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_02384CC0
_023831EC:
	add r8, r8, #1
	cmp r8, #0x10
	blt _023831C0
_023831F8:
	add r0, r7, #0x128
	mov r1, #0
	mov r2, #0x5a
	bl FUN_037FAFE4
	add r0, sp, #0x10
	bl FUN_0238236C
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _02383228
	mov r0, #0x308
	bl FUN_02383090
	b _023834A8
_02383228:
	ldrh r4, [r0, #6]
	add r0, sp, #0x10
	bl FUN_02382424
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _0238324C
	mov r0, #0x284
	bl FUN_02383090
	b _023834A8
_0238324C:
	ldrh r1, [r0, #6]
	cmp r4, #0x20
	bgt _023832A0
	cmp r4, #0x20
	bge _0238337C
	cmp r4, #0
	bgt _02383274
	cmp r4, #0
	beq _023833A0
	b _02383480
_02383274:
	cmp r4, #0x12
	bgt _02383480
	cmp r4, #0x10
	blt _02383480
	cmp r4, #0x10
	beq _023833C0
	cmp r4, #0x11
	beq _02383418
	cmp r4, #0x12
	beq _02383418
	b _02383480
_023832A0:
	cmp r4, #0x30
	bgt _023832B4
	cmp r4, #0x30
	beq _023832BC
	b _02383480
_023832B4:
	cmp r4, #0x40
	bne _02383480
_023832BC:
	ldr r0, _023834C4 ; =0x0000FFFE
	add r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #1
	bhi _02383344
	ldr r0, _023834C0 ; =0x0000018A
	add r0, r7, r0
	add r1, sp, #4
	mov r2, #6
	bl FUN_037FB078
	mov r6, #0
	add r5, sp, #4
	mov r4, #3
	b _02383338
_023832F8:
	add r0, sp, #0x10
	mov r1, r5
	mov r2, r4
	bl FUN_02382CDC
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _02383328
	cmp r0, #7
	beq _02383334
	cmp r0, #0xc
	beq _02383334
	b _0238337C
_02383328:
	mov r0, #3
	strh r0, [r7]
	b _0238337C
_02383334:
	add r6, r6, #1
_02383338:
	cmp r6, #2
	blt _023832F8
	b _0238337C
_02383344:
	cmp r1, #1
	bne _0238337C
	add r0, sp, #0xa
	mov r1, #0xff
	mov r2, #6
	bl FUN_037FAFE4
	add r0, sp, #0x10
	add r1, sp, #0xa
	mov r2, #3
	bl FUN_02382CDC
	ldrh r0, [r0, #4]
	cmp r0, #0
	moveq r0, #3
	streqh r0, [r7]
_0238337C:
	add r0, sp, #0x10
	mov r1, #1
	bl FUN_02382F88
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _023833A0
	mov r0, #0
	bl FUN_02383090
	b _023834A8
_023833A0:
	add r0, sp, #0x10
	bl FUN_023823F4
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _023833C0
	ldr r0, _023834C8 ; =0x00000302
	bl FUN_02383090
	b _023834A8
_023833C0:
	add r0, r7, #0x100
	ldrh r0, [r0, #0xee]
	cmp r0, #0
	bne _02383400
	add r0, sp, #0x10
	mov r1, #1
	bl FUN_023826E4
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _023833F4
	ldr r0, _023834CC ; =0x0000020E
	bl FUN_02383090
	b _023834A8
_023833F4:
	mov r1, #1
	add r0, r7, #0x100
	strh r1, [r0, #0xee]
_02383400:
	mov r0, #2
	strh r0, [r7]
	mov r0, #0
	str r0, [r7, #0x198]
	bl FUN_023802B0
	b _02383490
_02383418:
	cmp r1, #0
	bne _02383454
	mov r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	mov r1, #0
	mov r2, r1
	mov r3, #0x14
	bl FUN_023822F8
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _02383454
	ldr r0, _023834D0 ; =0x00000309
	bl FUN_02383090
	b _023834A8
_02383454:
	add r0, sp, #0x10
	bl FUN_023823F4
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _02383474
	ldr r0, _023834C8 ; =0x00000302
	bl FUN_02383090
	b _023834A8
_02383474:
	mov r0, #2
	strh r0, [r7]
	b _02383490
_02383480:
	mov r0, #0x308
	mov r1, #0
	bl FUN_02383090
	b _023834A8
_02383490:
	bl FUN_03801E40
	mov r1, #1
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	bl FUN_03801E9C
_023834A8:
	add sp, sp, #0x214
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_023834B4: .word _0239A8B8
_023834B8: .word 0x0000FFF9
_023834BC: .word 0x0000FFFF
_023834C0: .word 0x0000018A
_023834C4: .word 0x0000FFFE
_023834C8: .word 0x00000302
_023834CC: .word 0x0000020E
_023834D0: .word 0x00000309
	arm_func_end FUN_023830C8

	arm_func_start FUN_023834D4
FUN_023834D4: ; 0x023834D4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	bl FUN_03801E40
	mov r1, #2
	strh r1, [r0]
	mov r1, #1
	strh r1, [r0, #2]
	strh r5, [r0, #4]
	strh r4, [r0, #6]
	bl FUN_03801E9C
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_023834D4

	arm_func_start FUN_02383510
FUN_02383510: ; 0x02383510
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x200
	ldr r0, _023835A0 ; =_0239A8B8
	ldr r4, [r0, #0x550]
	ldrh r0, [r4]
	cmp r0, #2
	beq _02383548
	bl FUN_03801E40
	mov r1, #2
	strh r1, [r0]
	mov r1, #3
	strh r1, [r0, #2]
	bl FUN_03801E9C
	b _02383594
_02383548:
	add r0, sp, #0
	bl FUN_0238240C
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _02383568
	ldr r0, _023835A4 ; =0x00000301
	bl FUN_023834D4
	b _02383594
_02383568:
	mov r0, #1
	strh r0, [r4]
	bl FUN_037FE760
	mov r0, #0
	strh r0, [r4]
	bl FUN_03801E40
	mov r1, #2
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	bl FUN_03801E9C
_02383594:
	add sp, sp, #0x200
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_023835A0: .word _0239A8B8
_023835A4: .word 0x00000301
	arm_func_end FUN_02383510

	arm_func_start FUN_023835A8
FUN_023835A8: ; 0x023835A8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	bl FUN_03801E40
	mov r1, #7
	strh r1, [r0]
	mov r1, #1
	strh r1, [r0, #2]
	strh r5, [r0, #4]
	strh r4, [r0, #6]
	bl FUN_03801E9C
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_023835A8

	arm_func_start FUN_023835E4
FUN_023835E4: ; 0x023835E4
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x200
	ldr r1, _02383684 ; =_0239A8B8
	ldr r4, [r1, #0x550]
	ldr r0, [r0, #4]
	add r1, r4, #0xe8
	mov r2, #0x40
	bl FUN_037FB078
	mov r2, #1
	add r0, r4, #0x100
	ldrh r1, [r0, #0x1a]
	mov r1, r2, lsl r1
	ldrh r0, [r0, #0xf4]
	ands r0, r1, r0
	bne _0238363C
	bl FUN_03801E40
	mov r1, #7
	strh r1, [r0]
	mov r1, #6
	strh r1, [r0, #2]
	bl FUN_03801E9C
	b _02383678
_0238363C:
	add r0, sp, #0
	ldrh r1, [r4, #0xf8]
	bl FUN_02382618
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _02383660
	ldr r0, _02383688 ; =0x00000212
	bl FUN_023835A8
	b _02383678
_02383660:
	bl FUN_03801E40
	mov r1, #7
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	bl FUN_03801E9C
_02383678:
	add sp, sp, #0x200
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02383684: .word _0239A8B8
_02383688: .word 0x00000212
	arm_func_end FUN_023835E4

	arm_func_start FUN_0238368C
FUN_0238368C: ; 0x0238368C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	bl FUN_03801E40
	mov r1, #8
	strh r1, [r0]
	mov r1, #1
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #8]
	strh r5, [r0, #4]
	strh r4, [r0, #6]
	bl FUN_03801E9C
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_0238368C

	arm_func_start FUN_023836D0
FUN_023836D0: ; 0x023836D0
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x2b8
	ldr r1, _0238394C ; =_0239A8B8
	ldr r4, [r1, #0x550]
	add r6, sp, #0x38
	ldrh r1, [r4]
	cmp r1, #2
	beq _02383714
	bl FUN_03801E40
	mov r1, #8
	strh r1, [r0]
	mov r1, #3
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #8]
	bl FUN_03801E9C
	b _02383940
_02383714:
	ldr r5, [r0, #4]
	add r0, r4, #0x100
	ldrh r3, [r0, #0xf6]
	mov r2, #1
	ldrh r1, [r0, #0x1a]
	mov r1, r2, lsl r1
	mov r1, r1, asr #1
	ands r1, r3, r1
	bne _0238375C
	bl FUN_03801E40
	mov r1, #8
	strh r1, [r0]
	mov r1, #6
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #8]
	bl FUN_03801E9C
	b _02383940
_0238375C:
	strh r2, [r4, #0xe6]
	mov r1, #0
	strh r1, [r0, #0x88]
	bl FUN_037FAD78
	mov r2, #0
	add r1, r4, #0x100
	strh r2, [r1, #0x82]
	strh r2, [r4, #0x86]
	bl FUN_037FAD8C
	mov r1, #1
	add r0, r4, #0x100
	strh r1, [r0, #0xee]
	mov r0, #8
	mov r1, r6
	bl FUN_02380568
	cmp r0, #0
	beq _02383940
	mov r0, r6
	bl FUN_023823DC
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _023837C0
	ldr r0, _02383950 ; =0x00000303
	bl FUN_0238368C
	b _02383940
_023837C0:
	cmp r5, #0
	movne r0, #1
	moveq r0, #0
	mov r0, r0, lsl #0x10
	mov r5, r0, lsr #0x10
	mov r0, r6
	mov r1, r5
	mov r2, #0
	mov r3, #1
	bl FUN_02382F24
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _02383800
	mov r0, #1
	bl FUN_0238368C
	b _02383940
_02383800:
	strh r5, [r4, #0xc6]
	add r5, r4, #0xe8
	mov r0, #0
	add r1, sp, #0x238
	mov r2, #0x80
	bl FUN_037FAF38
	add r0, sp, #0x238
	mov r1, r5
	bl FUN_023806B4
	mov r0, #0
	add r1, sp, #0x18
	mov r2, #0x20
	bl FUN_037FAF38
	ldr r0, [r5, #8]
	strh r0, [sp, #0x18]
	ldr r0, [r5, #8]
	mov r0, r0, lsr #0x10
	strh r0, [sp, #0x1a]
	ldrh r0, [r5, #0xc]
	strh r0, [sp, #0x1c]
	mov r0, #0
	strh r0, [sp, #0x1e]
	mov r0, #2
	str r0, [sp]
	ldrh r0, [r5, #0x32]
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldrh r0, [r5, #4]
	add r0, r0, #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [sp, #0x10]
	add r0, sp, #0x238
	str r0, [sp, #0x14]
	mov r0, r6
	mov r1, #0x20
	add r2, sp, #0x18
	ldrh r3, [r5, #0x18]
	bl FUN_02382B88
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _023838BC
	mov r0, #9
	bl FUN_0238368C
	b _02383940
_023838BC:
	ldrh r0, [r5, #0x14]
	cmp r0, #0
	movne r1, #0x2a
	moveq r1, #0
	ldrh r0, [r5, #0x34]
	add r0, r0, r1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl FUN_02380260
	ldrh r0, [r5, #0x14]
	cmp r0, #0
	movne r1, #6
	moveq r1, #0
	ldrh r0, [r5, #0x36]
	add r0, r0, r1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl FUN_02380210
	bl FUN_03801E40
	mov r1, #7
	strh r1, [r4]
	mov r1, #8
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	strh r1, [r0, #8]
	ldrh r1, [r4, #0x30]
	strh r1, [r0, #0x2c]
	ldrh r1, [r4, #0x32]
	strh r1, [r0, #0x2e]
	bl FUN_03801E9C
	mov r0, #1
	strh r0, [r4, #0xc2]
_02383940:
	add sp, sp, #0x2b8
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_0238394C: .word _0239A8B8
_02383950: .word 0x00000303
	arm_func_end FUN_023836D0

	arm_func_start FUN_02383954
FUN_02383954: ; 0x02383954
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	bl FUN_03801E40
	mov r1, #9
	strh r1, [r0]
	mov r1, #1
	strh r1, [r0, #2]
	strh r5, [r0, #4]
	strh r4, [r0, #6]
	bl FUN_03801E9C
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_02383954

	arm_func_start FUN_02383990
FUN_02383990: ; 0x02383990
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x214
	ldr r0, _02383B5C ; =_0239A8B8
	ldr r8, [r0, #0x550]
	ldrh r0, [r8]
	cmp r0, #7
	beq _023839C8
	bl FUN_03801E40
	mov r1, #9
	strh r1, [r0]
	mov r1, #3
	strh r1, [r0, #2]
	bl FUN_03801E9C
	b _02383B50
_023839C8:
	mov r6, #0
	strh r6, [r8, #0xf6]
	mov sl, #1
	add r4, r8, #0x128
	mov fp, #6
	mov r0, #3
	str r0, [sp]
	str sl, [sp, #4]
	mov r5, sl
_023839EC:
	mov r7, r5, lsl sl
	add r0, r8, #0x100
	ldrh r0, [r0, #0x82]
	ands r0, r0, r7
	beq _02383AB0
	sub r1, sl, #1
	mov r0, #6
	mla r0, r1, r0, r4
	add r1, sp, #8
	mov r2, fp
	bl FUN_037FB078
	mov sb, r6
	b _02383A50
_02383A20:
	add r0, sp, #0x10
	add r1, sp, #8
	ldr r2, [sp]
	bl FUN_02382CDC
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _02383A58
	cmp r0, #7
	beq _02383A4C
	cmp r0, #0xc
	bne _02383A58
_02383A4C:
	add sb, sb, #1
_02383A50:
	cmp sb, #2
	blt _02383A20
_02383A58:
	bl FUN_037FAD78
	add r1, r8, #0x100
	ldrh r2, [r1, #0x82]
	ands r3, r2, r7
	beq _02383AAC
	mvn r3, r7
	and r2, r2, r3
	strh r2, [r1, #0x82]
	ldrh r1, [r8, #0x86]
	and r1, r1, r3
	strh r1, [r8, #0x86]
	add r1, r8, sl, lsl #3
	str r6, [r1, #0x738]
	str r6, [r1, #0x73c]
	bl FUN_037FAD8C
	ldr r0, [sp, #4]
	mov r1, sl, lsl #0x10
	mov r1, r1, lsr #0x10
	add r2, sp, #8
	bl FUN_02384CC0
	b _02383AB0
_02383AAC:
	bl FUN_037FAD8C
_02383AB0:
	add sl, sl, #1
	cmp sl, #0x10
	blt _023839EC
	add r0, sp, #0x10
	mov r1, #1
	bl FUN_02382F88
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _02383AE0
	mov r0, #0
	bl FUN_02383954
	b _02383B50
_02383AE0:
	mov r0, #0
	strh r0, [r8, #0xc2]
	mov r0, #3
	strh r0, [r8]
	add r0, sp, #0x10
	bl FUN_023823F4
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _02383B10
	ldr r0, _02383B60 ; =0x00000302
	bl FUN_02383954
	b _02383B50
_02383B10:
	mov r0, #2
	strh r0, [r8]
	mov r1, #0
	str r1, [r8, #0x198]
	add r0, r8, #0x100
	strh r1, [r0, #0x96]
	add r0, r8, #0x19c
	mov r2, #0x50
	bl FUN_037FAFE4
	bl FUN_023802B0
	bl FUN_03801E40
	mov r1, #9
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	bl FUN_03801E9C
_02383B50:
	add sp, sp, #0x214
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_02383B5C: .word _0239A8B8
_02383B60: .word 0x00000302
	arm_func_end FUN_02383990

	arm_func_start FUN_02383B64
FUN_02383B64: ; 0x02383B64
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_03801E40
	cmp r4, #0
	movne r1, #0x26
	strneh r1, [r0]
	moveq r1, #0xa
	streqh r1, [r0]
	mov r1, #1
	strh r1, [r0, #2]
	mov r1, #4
	strh r1, [r0, #8]
	strh r6, [r0, #4]
	strh r5, [r0, #6]
	bl FUN_03801E9C
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	arm_func_end FUN_02383B64

	arm_func_start FUN_02383BB0
FUN_02383BB0: ; 0x02383BB0
	stmdb sp!, {r4, lr}
	mov r4, r0
	sub r0, r4, #0x40
	mov r1, #0x42
	bl FUN_03801A54
	sub r0, r4, r0, lsl #1
	add r0, r0, #0x5e
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_02383BB0

	arm_func_start FUN_02383BD4
FUN_02383BD4: ; 0x02383BD4
	ldrh r2, [r0, #0xa]
	cmp r2, #0
	moveq r0, #0
	bxeq lr
	cmp r2, #0x20
	movhi r0, #0
	bxhi lr
	mov r3, #0
	b _02383C10
_02383BF8:
	add r1, r0, r3
	ldrb r1, [r1, #0xc]
	cmp r1, #0
	movne r0, #1
	bxne lr
	add r3, r3, #1
_02383C10:
	cmp r3, r2
	blt _02383BF8
	mov r0, #0
	bx lr
	arm_func_end FUN_02383BD4

	arm_func_start FUN_02383C20
FUN_02383C20: ; 0x02383C20
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr ip, _0238413C ; =0x000004CC
	sub sp, sp, ip
	mov r8, r0
	ldr r0, _02384140 ; =_0239A8B8
	ldr r4, [r0, #0x550]
	ldrh r0, [r4]
	cmp r0, #2
	beq _02383C78
	cmp r0, #3
	beq _02383C78
	cmp r0, #5
	beq _02383C78
	bl FUN_03801E40
	mov r1, #0x26
	strh r1, [r0]
	mov r1, #3
	strh r1, [r0, #2]
	mov r1, #4
	strh r1, [r0, #8]
	bl FUN_03801E9C
	b _0238412C
_02383C78:
	ldr r0, [r8, #4]
	str r0, [r4, #0x184]
	ldrh sl, [r8, #2]
	add r0, r4, #0x100
	strh sl, [r0, #0x90]
	ldrh fp, [r8, #0xa]
	add r0, r8, #0xc
	add r1, sp, #0x1c
	mov r2, #6
	bl FUN_037FB078
	ldrh r6, [r8, #0x36]
	ldrh r7, [r8, #0x12]
	cmp r7, #2
	beq _02383CBC
	cmp r7, #3
	beq _02383CC8
	b _02383CD4
_02383CBC:
	mov r5, #1
	mov r7, #0
	b _02383CD8
_02383CC8:
	mov r5, #1
	mov r7, r5
	b _02383CD8
_02383CD4:
	mov r5, #0
_02383CD8:
	ldrh sb, [r8, #0x14]
	add r0, r8, #0x16
	add r1, sp, #0x22
	mov r2, #0x20
	bl FUN_037FB078
	ldrh r0, [r8, #8]
	str r0, [sp, #0x10]
	ldrh r1, [sp, #0x1c]
	ldr r0, _02384144 ; =0x0000FFFF
	cmp r1, r0
	beq _02383D10
	ands r0, r1, #1
	bicne r0, r1, #1
	strneh r0, [sp, #0x1c]
_02383D10:
	mov r0, sl, lsl #0x11
	mov r1, r0, lsr #0x10
	add r0, r4, #0x100
	ldrh r0, [r0, #0xf4]
	ands sl, r1, r0
	bne _02383D4C
	bl FUN_03801E40
	mov r1, #0x26
	strh r1, [r0]
	mov r1, #6
	strh r1, [r0, #2]
	mov r1, #4
	strh r1, [r0, #8]
	bl FUN_03801E9C
	b _0238412C
_02383D4C:
	ldr r0, [r8, #4]
	cmp r0, #0
	beq _02383D6C
	ands r0, r0, #3
	bne _02383D6C
	ldrh r0, [r8, #8]
	cmp r0, #0x40
	bhs _02383D90
_02383D6C:
	bl FUN_03801E40
	mov r1, #0x26
	strh r1, [r0]
	mov r1, #6
	strh r1, [r0, #2]
	mov r1, #4
	strh r1, [r0, #8]
	bl FUN_03801E9C
	b _0238412C
_02383D90:
	mov r0, #2
	strh r0, [r4, #0xe6]
	add r0, sp, #0x74
	bl FUN_0238236C
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _02383DBC
	mov r0, #0x308
	mov r2, #1
	bl FUN_02383B64
	b _0238412C
_02383DBC:
	ldrh r0, [r0, #6]
	cmp r0, #0x10
	bne _02383E40
	mov r0, #0x26
	add r1, sp, #0x74
	bl FUN_02380568
	cmp r0, #0
	beq _0238412C
	add r0, sp, #0x74
	bl FUN_023823DC
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _02383E00
	ldr r0, _02384148 ; =0x00000303
	mov r2, #1
	bl FUN_02383B64
	b _0238412C
_02383E00:
	mov r0, #3
	strh r0, [r4]
	add r0, sp, #0x74
	mov r1, #1
	mov r2, #0
	mov r3, r1
	bl FUN_02382F24
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _02383E38
	mov r0, #1
	mov r2, r0
	bl FUN_02383B64
	b _0238412C
_02383E38:
	mov r0, #1
	strh r0, [r4, #0xc6]
_02383E40:
	cmp r7, #0
	bne _02383E90
	add r0, r4, #0x100
	ldrh r0, [r0, #0xee]
	cmp r0, #1
	bne _02383ED4
	add r0, sp, #0x74
	mov r1, #0
	bl FUN_023826E4
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _02383E80
	ldr r0, _0238414C ; =0x0000020E
	mov r2, #1
	bl FUN_02383B64
	b _0238412C
_02383E80:
	mov r1, #0
	add r0, r4, #0x100
	strh r1, [r0, #0xee]
	b _02383ED4
_02383E90:
	add r0, r4, #0x100
	ldrh r0, [r0, #0xee]
	cmp r0, #0
	bne _02383ED4
	add r0, sp, #0x74
	mov r1, #1
	bl FUN_023826E4
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _02383EC8
	ldr r0, _0238414C ; =0x0000020E
	mov r2, #1
	bl FUN_02383B64
	b _0238412C
_02383EC8:
	mov r1, #1
	add r0, r4, #0x100
	strh r1, [r0, #0xee]
_02383ED4:
	cmp r5, #1
	bne _02383F2C
	add r0, sp, #0x42
	mov r1, #0xff
	mov r2, #0x20
	bl FUN_037FAFE4
	cmp r6, #0x20
	bhi _02383F04
	add r0, sp, #0x42
	mov r1, #0
	mov r2, r6
	bl FUN_037FAFE4
_02383F04:
	add r0, sp, #0x74
	add r1, sp, #0x42
	bl FUN_02382744
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _02383F2C
	ldr r0, _02384150 ; =0x0000020D
	mov r2, #1
	bl FUN_02383B64
	b _0238412C
_02383F2C:
	mov r0, #5
	strh r0, [r4]
	mov r5, #0
	add r0, sp, #0x62
	mov r1, r5
	mov r2, #0x10
	bl FUN_037FAFE4
	mov r3, #1
	add r1, sp, #0x62
	mov r2, r3
_02383F54:
	mov r0, r2, lsl r3
	ands r0, sl, r0
	strneb r3, [r1, r5]
	addne r0, r5, #1
	movne r0, r0, lsl #0x10
	movne r5, r0, lsr #0x10
	add r0, r3, #1
	mov r0, r0, lsl #0x10
	mov r3, r0, lsr #0x10
	cmp r3, #0xf
	blo _02383F54
	ldr r0, [sp, #0x10]
	bl FUN_02383BB0
	mov r1, r0
	add r0, sp, #0x22
	str r0, [sp]
	str r7, [sp, #4]
	add r0, sp, #0x62
	str r0, [sp, #8]
	str fp, [sp, #0xc]
	add r0, sp, #0x74
	add r2, sp, #0x1c
	mov r3, sb
	bl FUN_02382E68
	mov r8, r0
	ldrh r1, [r8, #4]
	cmp r1, #0
	beq _02383FD4
	mov r0, #2
	mov r2, #1
	bl FUN_02383B64
	b _0238412C
_02383FD4:
	bl FUN_03801E40
	mov r7, r0
	ldrh r0, [r8, #8]
	cmp r0, #0
	bne _02384010
	mov r0, #0x26
	strh r0, [r7]
	mov r1, #0
	strh r1, [r7, #2]
	mov r0, #4
	strh r0, [r7, #8]
	strh r1, [r7, #0xe]
	mov r0, sl, asr #1
	strh r0, [r7, #0xa]
	b _02384124
_02384010:
	add r5, r8, #0xa
	ldr r4, [r4, #0x184]
	mov r0, #0
	mov r1, r4
	ldr r2, [sp, #0x10]
	bl FUN_037FAF38
	mov r6, #0
	mov r0, #0x20
	str r0, [sp, #0x18]
	b _023840F0
_02384038:
	ldrh r0, [r5]
	mov r0, r0, lsl #0x11
	mov r0, r0, lsr #0x10
	str r0, [sp, #0x14]
	mov r0, r5
	mov r1, r4
	ldr r2, [sp, #0x14]
	bl FUN_037FB078
	cmp sb, #0
	beq _02384084
	mov r0, r4
	bl FUN_02383BD4
	cmp r0, #0
	bne _02384084
	strh sb, [r4, #0xa]
	add r0, sp, #0x22
	add r1, r4, #0xc
	ldr r2, [sp, #0x18]
	bl FUN_037FB078
_02384084:
	add r0, r7, r6, lsl #2
	str r4, [r0, #0x10]
	ldrh r0, [r5, #2]
	and r1, r0, #0xff
	ands r0, r1, #2
	movne r0, r1, asr #2
	andne fp, r0, #0xff
	moveq r0, r1, asr #2
	addeq r0, r0, #0x19
	andeq fp, r0, #0xff
	mov r0, fp
	bl FUN_02380448
	add r1, r7, r6, lsl #1
	strh r0, [r1, #0x50]
	ldr r0, _02384154 ; =0x027FFF98
	ldrh r0, [r0]
	eor r0, fp, r0, lsl #1
	eor r1, r0, r0, lsr #16
	ldr r0, _02384154 ; =0x027FFF98
	strh r1, [r0]
	ldr r0, [sp, #0x14]
	add r5, r5, r0
	add r4, r4, r0
	ands r0, r4, #2
	addne r0, r4, #2
	bicne r4, r0, #3
	add r6, r6, #1
_023840F0:
	ldrh r0, [r8, #8]
	cmp r6, r0
	blt _02384038
	mov r0, #0x26
	strh r0, [r7]
	mov r0, #0
	strh r0, [r7, #2]
	mov r0, #5
	strh r0, [r7, #8]
	ldrh r0, [r8, #8]
	strh r0, [r7, #0xe]
	mov r0, sl, asr #1
	strh r0, [r7, #0xa]
_02384124:
	mov r0, r7
	bl FUN_03801E9C
_0238412C:
	ldr ip, _0238413C ; =0x000004CC
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_0238413C: .word 0x000004CC
_02384140: .word _0239A8B8
_02384144: .word 0x0000FFFF
_02384148: .word 0x00000303
_0238414C: .word 0x0000020E
_02384150: .word 0x0000020D
_02384154: .word 0x027FFF98
	arm_func_end FUN_02383C20

	arm_func_start FUN_02384158
FUN_02384158: ; 0x02384158
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x24c
	add r6, sp, #0x48
	ldr r1, _023844E0 ; =_0239A8B8
	ldr r4, [r1, #0x550]
	ldrh r1, [r4]
	cmp r1, #2
	beq _023841AC
	cmp r1, #3
	beq _023841AC
	cmp r1, #5
	beq _023841AC
	bl FUN_03801E40
	mov r1, #0xa
	strh r1, [r0]
	mov r1, #3
	strh r1, [r0, #2]
	mov r1, #4
	strh r1, [r0, #8]
	bl FUN_03801E9C
	b _023844D4
_023841AC:
	ldr r1, [r0, #4]
	str r1, [r4, #0x184]
	ldrh r7, [r0, #2]
	add r1, r4, #0x100
	strh r7, [r1, #0x90]
	ldrh r5, [r0, #8]
	add r0, r0, #0xa
	add r1, sp, #0x10
	mov r2, #6
	bl FUN_037FB078
	ldrh r1, [sp, #0x10]
	ldr r0, _023844E4 ; =0x0000FFFF
	cmp r1, r0
	beq _023841F0
	ands r0, r1, #1
	bicne r0, r1, #1
	strneh r0, [sp, #0x10]
_023841F0:
	cmp r7, #0
	bne _0238421C
	bl FUN_03801E40
	mov r1, #0xa
	strh r1, [r0]
	mov r1, #6
	strh r1, [r0, #2]
	mov r1, #4
	strh r1, [r0, #8]
	bl FUN_03801E9C
	b _023844D4
_0238421C:
	mov r0, #1
	mov r1, r0, lsl r7
	add r0, r4, #0x100
	ldrh r0, [r0, #0xf4]
	ands r0, r1, r0
	bne _02384258
	bl FUN_03801E40
	mov r1, #0xa
	strh r1, [r0]
	mov r1, #6
	strh r1, [r0, #2]
	mov r1, #4
	strh r1, [r0, #8]
	bl FUN_03801E9C
	b _023844D4
_02384258:
	mov r0, #2
	strh r0, [r4, #0xe6]
	mov r0, r6
	bl FUN_0238236C
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _02384284
	mov r0, #0x308
	mov r2, #0
	bl FUN_02383B64
	b _023844D4
_02384284:
	ldrh r0, [r0, #6]
	cmp r0, #0x10
	bne _02384308
	mov r0, #0xa
	mov r1, r6
	bl FUN_02380568
	cmp r0, #0
	beq _023844D4
	mov r0, r6
	bl FUN_023823DC
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _023842C8
	ldr r0, _023844E8 ; =0x00000303
	mov r2, #0
	bl FUN_02383B64
	b _023844D4
_023842C8:
	mov r0, #3
	strh r0, [r4]
	mov r0, r6
	mov r1, #1
	mov r2, #0
	mov r3, r1
	bl FUN_02382F24
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _02384300
	mov r0, #1
	mov r2, #0
	bl FUN_02383B64
	b _023844D4
_02384300:
	mov r0, #1
	strh r0, [r4, #0xc6]
_02384308:
	mov r0, #5
	strh r0, [r4]
	ldr r0, _023844E4 ; =0x0000FFFF
	add r1, sp, #0x16
	mov r2, #0x20
	bl FUN_037FAF38
	strb r7, [sp, #0x36]
	add r0, sp, #0x37
	mov r1, #0
	mov r2, #0xf
	bl FUN_037FAFE4
	add r0, sp, #0x16
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, sp, #0x36
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	mov r0, r6
	ldr r1, _023844EC ; =0x0000011E
	add r2, sp, #0x10
	mov r3, #0
	bl FUN_02382E68
	mov r6, r0
	ldrh r1, [r6, #4]
	cmp r1, #0
	beq _02384384
	mov r0, #2
	mov r2, #0
	bl FUN_02383B64
	b _023844D4
_02384384:
	bl FUN_03801E40
	mov r5, r0
	ldrh r0, [r6, #8]
	cmp r0, #0
	bne _023843BC
	mov r0, #0xa
	strh r0, [r5]
	mov r1, #0
	strh r1, [r5, #2]
	mov r0, #4
	strh r0, [r5, #8]
	strh r7, [r5, #0x10]
	strh r1, [r5, #0x12]
	b _023844CC
_023843BC:
	mov r0, #0
	ldr r1, [r4, #0x184]
	add r1, r1, #0x40
	mov r2, #0x80
	bl FUN_037FAF38
	add r0, r6, #0xa
	ldr r1, [r4, #0x184]
	ldrh r2, [r6, #0xa]
	mov r2, r2, lsl #1
	bl FUN_037FB078
	mov r0, #0xa
	strh r0, [r5]
	mov r0, #0
	strh r0, [r5, #2]
	mov r0, #5
	strh r0, [r5, #8]
	ldrh r0, [r6, #0x40]
	strh r0, [r5, #0x10]
	ldrh r0, [r6, #0xc]
	and r1, r0, #0xff
	ands r0, r1, #2
	movne r0, r1, asr #2
	andne r4, r0, #0xff
	moveq r0, r1, asr #2
	addeq r0, r0, #0x19
	andeq r4, r0, #0xff
	mov r0, r4
	bl FUN_02380448
	strh r0, [r5, #0x12]
	ldr r1, _023844F0 ; =0x027FFF98
	ldrh r0, [r1]
	eor r0, r4, r0, lsl #1
	eor r0, r0, r0, lsr #16
	strh r0, [r1]
	ldrh r0, [r6, #0x14]
	strh r0, [r5, #0x14]
	add r0, r6, #0xe
	add r1, r5, #0xa
	mov r2, #6
	bl FUN_037FB078
	add r0, r6, #0x16
	add r1, r5, #0x16
	mov r2, #0x20
	bl FUN_037FAF50
	ldrh r0, [r6, #0x46]
	strh r0, [r5, #0x36]
	ldrh r0, [r5, #0x36]
	cmp r0, #0x80
	bls _023844A4
	mov r0, #0xa
	strh r0, [r5]
	mov r1, #0
	strh r1, [r5, #2]
	mov r0, #4
	strh r0, [r5, #8]
	strh r7, [r5, #0x10]
	strh r1, [r5, #0x12]
	b _023844CC
_023844A4:
	mov r0, #0
	add r1, r5, #0x38
	mov r2, #0x80
	bl FUN_037FAF38
	add r0, r6, #0x4a
	add r1, r5, #0x38
	ldrh r2, [r5, #0x36]
	add r2, r2, #1
	bic r2, r2, #1
	bl FUN_037FAF50
_023844CC:
	mov r0, r5
	bl FUN_03801E9C
_023844D4:
	add sp, sp, #0x24c
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_023844E0: .word _0239A8B8
_023844E4: .word 0x0000FFFF
_023844E8: .word 0x00000303
_023844EC: .word 0x0000011E
_023844F0: .word 0x027FFF98
	arm_func_end FUN_02384158

	arm_func_start FUN_023844F4
FUN_023844F4: ; 0x023844F4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	bl FUN_03801E40
	mov r1, #0xb
	strh r1, [r0]
	mov r1, #1
	strh r1, [r0, #2]
	strh r5, [r0, #4]
	strh r4, [r0, #6]
	bl FUN_03801E9C
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_023844F4

	arm_func_start FUN_02384530
FUN_02384530: ; 0x02384530
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x204
	add r5, sp, #0
	ldr r0, _023845F8 ; =_0239A8B8
	ldr r4, [r0, #0x550]
	ldrh r0, [r4]
	cmp r0, #5
	beq _0238456C
	bl FUN_03801E40
	mov r1, #0xb
	strh r1, [r0]
	mov r1, #3
	strh r1, [r0, #2]
	bl FUN_03801E9C
	b _023845EC
_0238456C:
	mov r0, r5
	bl FUN_023823F4
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _0238458C
	ldr r0, _023845FC ; =0x00000302
	bl FUN_023844F4
	b _023845EC
_0238458C:
	mov r0, #2
	strh r0, [r4]
	add r0, r4, #0x100
	ldrh r0, [r0, #0xee]
	cmp r0, #0
	bne _023845D4
	mov r0, r5
	mov r1, #1
	bl FUN_023826E4
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _023845C8
	ldr r0, _02384600 ; =0x0000020E
	bl FUN_023844F4
	b _023845EC
_023845C8:
	mov r1, #1
	add r0, r4, #0x100
	strh r1, [r0, #0xee]
_023845D4:
	bl FUN_03801E40
	mov r1, #0xb
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	bl FUN_03801E9C
_023845EC:
	add sp, sp, #0x204
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_023845F8: .word _0239A8B8
_023845FC: .word 0x00000302
_02384600: .word 0x0000020E
	arm_func_end FUN_02384530

	arm_func_start FUN_02384604
FUN_02384604: ; 0x02384604
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_03801E40
	mov r1, #0xc
	strh r1, [r0]
	mov r1, #1
	strh r1, [r0, #2]
	strh r6, [r0, #4]
	strh r5, [r0, #6]
	strh r4, [r0, #0xe]
	bl FUN_03801E9C
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	arm_func_end FUN_02384604

	arm_func_start FUN_02384640
FUN_02384640: ; 0x02384640
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x250
	mov r6, r0
	add r4, sp, #0xc
	ldr r0, _02384C0C ; =_0239A8B8
	ldr r7, [r0, #0x54c]
	ldr r5, [r0, #0x550]
	ldrh r0, [r5]
	cmp r0, #2
	beq _0238468C
	bl FUN_03801E40
	mov r1, #0xc
	strh r1, [r0]
	mov r1, #3
	strh r1, [r0, #2]
	mov r1, #6
	strh r1, [r0, #8]
	bl FUN_03801E9C
	b _02384C00
_0238468C:
	ldr r0, [r6, #4]
	add r1, r7, #0x10
	mov r2, #0xc0
	bl FUN_037FB078
	ldrh r0, [r7, #0x4c]
	cmp r0, #0x10
	blo _023846D8
	ldrb r0, [r7, #0x5b]
	ands r0, r0, #1
	bne _023846D8
	bl FUN_03801E40
	mov r1, #0xc
	strh r1, [r0]
	mov r1, #0xb
	strh r1, [r0, #2]
	mov r1, #6
	strh r1, [r0, #8]
	bl FUN_03801E9C
	b _02384C00
_023846D8:
	mov r1, #1
	ldrh r0, [r7, #0x46]
	mov r1, r1, lsl r0
	add r0, r5, #0x100
	ldrh r0, [r0, #0xf4]
	ands r0, r1, r0
	beq _02384704
	mov r1, r1, asr #1
	ldr r0, _02384C10 ; =0x00001FFF
	ands r0, r1, r0
	bne _02384724
_02384704:
	bl FUN_03801E40
	mov r1, #0xc
	strh r1, [r0]
	mov r1, #6
	strh r1, [r0, #2]
	strh r1, [r0, #8]
	bl FUN_03801E9C
	b _02384C00
_02384724:
	bl FUN_03801E40
	mov r1, #0xc
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	mov r1, #6
	strh r1, [r0, #8]
	bl FUN_03801E9C
	add r0, r5, #0x100
	ldrh r1, [r0, #0xec]
	cmp r1, #1
	bne _02384770
	ldrh r1, [r7, #0x3e]
	ands r1, r1, #1
	movne r1, #1
	strneh r1, [r0, #0xec]
	moveq r1, #2
	streqh r1, [r0, #0xec]
	b _02384788
_02384770:
	ldrh r1, [r7, #0x3e]
	ands r1, r1, #2
	movne r1, #2
	strneh r1, [r0, #0xec]
	moveq r1, #1
	streqh r1, [r0, #0xec]
_02384788:
	ldrh r0, [r7, #0x3c]
	ands r0, r0, #0x20
	movne r1, #1
	addne r0, r5, #0x100
	strneh r1, [r0, #0xee]
	moveq r1, #0
	addeq r0, r5, #0x100
	streqh r1, [r0, #0xee]
	ldrh r0, [r7, #0x4c]
	cmp r0, #0
	moveq r0, #3
	streqh r0, [r5, #0xe6]
	movne r0, #2
	strneh r0, [r5, #0xe6]
	mov r0, #0xc
	mov r1, r4
	bl FUN_02380568
	cmp r0, #0
	beq _02384C00
	mov r0, r4
	mov r1, #0
	bl FUN_02382558
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _023847FC
	ldr r0, _02384C14 ; =0x00000216
	mov r2, #0
	bl FUN_02384604
	b _02384C00
_023847FC:
	ldrh r0, [r7, #0x4c]
	cmp r0, #0x10
	bhs _02384858
	ldrh r1, [r7, #0x42]
	cmp r1, #0
	moveq r0, #1
	beq _02384824
	ldr r0, _02384C18 ; =0x00002710
	bl FUN_03801848
	add r0, r0, #1
_02384824:
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	cmp r1, #0xff
	movhi r1, #0xff
	mov r0, r4
	bl FUN_023827C4
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _02384858
	ldr r0, _02384C1C ; =0x0000020B
	mov r2, #0
	bl FUN_02384604
	b _02384C00
_02384858:
	mov r0, r4
	bl FUN_023823DC
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _0238487C
	ldr r0, _02384C20 ; =0x00000303
	mov r2, #0
	bl FUN_02384604
	b _02384C00
_0238487C:
	mov r0, #3
	strh r0, [r5]
	ldr r0, [r6, #0x20]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
	mov r0, r4
	mov r1, r8
	mov r2, #0
	mov r3, #1
	bl FUN_02382F24
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _023848CC
	mov r0, #1
	mov r2, #0
	bl FUN_02384604
	b _02384C00
_023848CC:
	strh r8, [r5, #0xc6]
	add r0, r7, #0x10
	add r1, sp, #0x20c
	mov r2, #0x40
	bl FUN_037FB078
	ldrh r0, [r5, #0xe6]
	cmp r0, #2
	bne _0238492C
	mov r1, #0x20
	add r0, sp, #0x200
	strh r1, [r0, #0x16]
	ldr r1, [r7, #0x54]
	strh r1, [r0, #0x18]
	ldr r1, [r7, #0x54]
	mov r1, r1, lsr #0x10
	strh r1, [r0, #0x1a]
	ldrh r1, [r7, #0x58]
	strh r1, [r0, #0x1c]
	mov r1, #0
	strh r1, [r0, #0x1e]
	add r0, r6, #8
	add r1, sp, #0x220
	mov r2, #0x18
	bl FUN_037FB078
_0238492C:
	mov r0, r4
	mov r1, #0x7d0
	add r2, sp, #0x20c
	bl FUN_02382DE4
	mov r2, r0
	ldrh r1, [r2, #4]
	cmp r1, #0
	bne _02384958
	ldrh r0, [r2, #6]
	cmp r0, #0
	beq _02384968
_02384958:
	mov r0, #3
	ldrh r2, [r2, #6]
	bl FUN_02384604
	b _02384C00
_02384968:
	add r0, r2, #8
	ldr r1, _02384C24 ; =0x0000018A
	add r1, r5, r1
	mov r2, #6
	bl FUN_037FB078
	ldr r0, _02384C24 ; =0x0000018A
	add r0, r5, r0
	add r1, sp, #0
	mov r2, #6
	bl FUN_037FB078
	mov r0, r4
	add r1, sp, #0
	ldrh r2, [r6, #0x26]
	mov r3, #0x7d0
	bl FUN_02382D60
	mov r2, r0
	ldrh r1, [r2, #4]
	cmp r1, #0xc
	bne _023849E0
	ldrh r0, [r2, #6]
	cmp r0, #0x13
	bne _023849E0
	bl FUN_03801E40
	mov r1, #0xc
	strh r1, [r0]
	strh r1, [r0, #2]
	mov r1, #6
	strh r1, [r0, #8]
	bl FUN_03801E9C
	b _02384C00
_023849E0:
	cmp r1, #0
	bne _023849F4
	ldrh r0, [r2, #6]
	cmp r0, #0
	beq _02384A04
_023849F4:
	mov r0, #4
	ldrh r2, [r2, #6]
	bl FUN_02384604
	b _02384C00
_02384A04:
	ldr r0, _02384C24 ; =0x0000018A
	add r0, r5, r0
	add r1, sp, #6
	mov r2, #6
	bl FUN_037FB078
	mov r0, r4
	add r1, sp, #6
	mov r2, #1
	mov r3, #0x7d0
	bl FUN_02382C5C
	mov r4, r0
	bl FUN_037FAD78
	mov r6, r0
	ldrh r2, [r4, #4]
	cmp r2, #0xc
	bne _02384A74
	ldrh r1, [r4, #6]
	cmp r1, #0x13
	bne _02384A74
	bl FUN_037FAD8C
	bl FUN_03801E40
	mov r1, #0xc
	strh r1, [r0]
	strh r1, [r0, #2]
	mov r1, #6
	strh r1, [r0, #8]
	bl FUN_03801E9C
	b _02384C00
_02384A74:
	cmp r2, #0
	bne _02384A88
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _02384AA4
_02384A88:
	mov r0, r6
	bl FUN_037FAD8C
	mov r0, #6
	ldrh r1, [r4, #4]
	ldrh r2, [r4, #6]
	bl FUN_02384604
	b _02384C00
_02384AA4:
	ldrh r1, [r4, #8]
	add r0, r5, #0x100
	strh r1, [r0, #0x88]
	ldrh r0, [r7, #0x58]
	strh r0, [r5, #0xba]
	mov r0, #1
	add r1, r5, #0x1f8
	mov r2, #0x10
	bl FUN_037FAF38
	ldrh r0, [r7, #0x12]
	and r1, r0, #0xff
	ands r0, r1, #2
	movne r0, r1, asr #2
	andne r4, r0, #0xff
	moveq r0, r1, asr #2
	addeq r0, r0, #0x19
	andeq r4, r0, #0xff
	mov r0, r4
	bl FUN_02380448
	strh r0, [r5, #0xbc]
	mov r0, r4
	bl FUN_023804EC
	bl FUN_037FAD78
	mov r4, r0
	mov r1, #1
	add r0, r5, #0x100
	strh r1, [r0, #0x82]
	strh r1, [r5, #0x86]
	ldr r2, [r5, #0x7b8]
	ldr r1, [r5, #0x7bc]
	mov r0, #0
	cmp r1, r0
	cmpeq r2, r0
	beq _02384B40
	bl FUN_037FA080
	orr r1, r1, #0
	orr r0, r0, #1
	str r0, [r5, #0x738]
	str r1, [r5, #0x73c]
_02384B40:
	mov r0, #8
	strh r0, [r5]
	ldrb r0, [r7, #0x5b]
	ands r0, r0, #4
	movne r1, #0x2a
	moveq r1, #0
	ldrh r0, [r7, #0x5c]
	add r0, r0, r1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl FUN_02380260
	ldrb r0, [r7, #0x5b]
	ands r0, r0, #4
	movne r1, #6
	moveq r1, #0
	ldrh r0, [r7, #0x5e]
	add r0, r0, r1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl FUN_02380210
	mov r0, r4
	bl FUN_037FAD8C
	mov r0, #1
	strh r0, [r5, #0xc2]
	bl FUN_03801E40
	mov r4, r0
	mov r0, #0xc
	strh r0, [r4]
	mov r0, #0
	strh r0, [r4, #2]
	mov r0, #7
	strh r0, [r4, #8]
	add r0, r5, #0x100
	ldrh r0, [r0, #0x88]
	strh r0, [r4, #0xa]
	ldr r0, _02384C24 ; =0x0000018A
	add r0, r5, r0
	add r1, r4, #0x10
	mov r2, #6
	bl FUN_037FB078
	ldrh r0, [r5, #0x30]
	strh r0, [r4, #0x16]
	ldrh r0, [r5, #0x32]
	strh r0, [r4, #0x18]
	mov r0, r4
	bl FUN_03801E9C
	mov r0, r6
	bl FUN_037FAD8C
_02384C00:
	add sp, sp, #0x250
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_02384C0C: .word _0239A8B8
_02384C10: .word 0x00001FFF
_02384C14: .word 0x00000216
_02384C18: .word 0x00002710
_02384C1C: .word 0x0000020B
_02384C20: .word 0x00000303
_02384C24: .word 0x0000018A
	arm_func_end FUN_02384640

	arm_func_start FUN_02384C28
FUN_02384C28: ; 0x02384C28
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl FUN_03801E40
	mov r1, #0x25
	strh r1, [r0]
	mov r1, #1
	strh r1, [r0, #2]
	strh r7, [r0, #4]
	strh r6, [r0, #6]
	strh r5, [r0, #8]
	strh r4, [r0, #0xa]
	bl FUN_03801E9C
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end FUN_02384C28

	arm_func_start FUN_02384C74
FUN_02384C74: ; 0x02384C74
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl FUN_03801E40
	mov r1, #0xd
	strh r1, [r0]
	mov r1, #1
	strh r1, [r0, #2]
	strh r7, [r0, #4]
	strh r6, [r0, #6]
	strh r5, [r0, #8]
	strh r4, [r0, #0xa]
	bl FUN_03801E9C
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end FUN_02384C74

	arm_func_start FUN_02384CC0
FUN_02384CC0: ; 0x02384CC0
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	ldr r0, _02384D84 ; =_0239A8B8
	ldr r4, [r0, #0x550]
	bl FUN_03801E40
	mov r5, r0
	mov r0, #0
	strh r0, [r5, #2]
	cmp r8, #0
	beq _02384D30
	mov r0, #8
	strh r0, [r5]
	mov r0, #0x1a
	strh r0, [r5, #8]
	ldr r0, _02384D88 ; =0x0000F001
	strh r0, [r5, #0x12]
	strh r7, [r5, #0x10]
	mov r0, r6
	add r1, r5, #0xa
	mov r2, #6
	bl FUN_037FB078
	ldrh r0, [r4, #0x30]
	strh r0, [r5, #0x2c]
	ldrh r0, [r4, #0x32]
	strh r0, [r5, #0x2e]
	b _02384D74
_02384D30:
	mov r0, #0xc
	strh r0, [r5]
	mov r0, #0x1a
	strh r0, [r5, #8]
	ldr r0, _02384D88 ; =0x0000F001
	strh r0, [r5, #0xc]
	add r0, r4, #0x100
	ldrh r0, [r0, #0x88]
	strh r0, [r5, #0xa]
	mov r0, r6
	add r1, r5, #0x10
	mov r2, #6
	bl FUN_037FB078
	ldrh r0, [r4, #0x30]
	strh r0, [r5, #0x16]
	ldrh r0, [r4, #0x32]
	strh r0, [r5, #0x18]
_02384D74:
	mov r0, r5
	bl FUN_03801E9C
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_02384D84: .word _0239A8B8
_02384D88: .word 0x0000F001
	arm_func_end FUN_02384CC0

	arm_func_start FUN_02384D8C
FUN_02384D8C: ; 0x02384D8C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x244
	movs sl, r1
	str r2, [sp]
	ldr r1, _02385380 ; =_0239A8B8
	ldr r5, [r1, #0x550]
	ldr r1, [r0, #4]
	mov r1, r1, lsl #0x10
	mov sb, r1, lsr #0x10
	ldrne r0, [r0, #8]
	moveq r0, #0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [sp, #4]
	mov r8, #0
	mov r7, r8
	ldrh r0, [r5]
	cmp r0, #9
	beq _02384DE0
	cmp r0, #7
	bne _02384DF0
_02384DE0:
	ldr r0, [r5, #0xc]
	cmp r0, #1
	moveq r7, #1
	b _02384EEC
_02384DF0:
	cmp r0, #0xa
	beq _02384E00
	cmp r0, #8
	bne _02384EB0
_02384E00:
	bl FUN_037FAD78
	mov r4, r0
	add r1, r5, #0x100
	ldrh r1, [r1, #0x82]
	cmp r1, #0
	bne _02384E58
	bl FUN_037FAD8C
	cmp sl, #0
	bne _02384E50
	bl FUN_03801E40
	mov r1, #0xd
	strh r1, [r0]
	mov r1, #3
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh sb, [r0, #8]
	strh r1, [r0, #0xa]
	bl FUN_03801E9C
_02384E50:
	mov r0, #0
	b _02385374
_02384E58:
	ldr r0, [r5, #0xc]
	cmp r0, #1
	bne _02384E88
	mov r0, #0
	str r0, [r5, #0xc]
	mov r7, #1
	bl FUN_023869CC
	bl FUN_023803E8
	ldrh r0, [r5]
	cmp r0, #0xa
	moveq r0, #8
	streqh r0, [r5]
_02384E88:
	mov r1, #0
	add r0, r5, #0x100
	strh r1, [r0, #0x82]
	strh r1, [r5, #0x86]
	str r1, [r5, #0x14]
	str r1, [r5, #0x10]
	str r1, [r5, #0x1c]
	mov r0, r4
	bl FUN_037FAD8C
	b _02384EEC
_02384EB0:
	cmp sl, #0
	bne _02384EE4
	bl FUN_03801E40
	mov r1, #0xd
	strh r1, [r0]
	mov r1, #3
	strh r1, [r0, #2]
	mov r1, r8
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh sb, [r0, #8]
	strh r1, [r0, #0xa]
	bl FUN_03801E9C
_02384EE4:
	mov r0, #0
	b _02385374
_02384EEC:
	ldrh r0, [r5]
	cmp r0, #0xa
	beq _02384F00
	cmp r0, #8
	bne _02385144
_02384F00:
	ldr r0, _02385384 ; =0x0000018A
	add r0, r5, r0
	add r1, sp, #0x38
	mov r2, #6
	bl FUN_037FB078
	mov r8, #0
	add r6, sp, #0x38
	mov r4, #3
	b _02384FC0
_02384F24:
	add r0, sp, #0x44
	mov r1, r6
	mov r2, r4
	bl FUN_02382CDC
	ldrh r1, [r0, #4]
	cmp r1, #7
	bgt _02384F6C
	cmp r1, #7
	bge _02384F74
	cmp r1, #1
	bgt _02384F7C
	cmp r1, #0
	blt _02384F7C
	cmp r1, #0
	beq _02384FC8
	cmp r1, #1
	beq _02384FC8
	b _02384F7C
_02384F6C:
	cmp r1, #0xc
	bne _02384F7C
_02384F74:
	add r8, r8, #1
	b _02384FC0
_02384F7C:
	cmp sl, #0
	beq _02384F98
	mov r0, #5
	mov r2, sb
	mov r3, #0
	bl FUN_02384C28
	b _02384FA8
_02384F98:
	mov r0, #5
	mov r2, sb
	mov r3, #0
	bl FUN_02384C74
_02384FA8:
	cmp r7, #0
	beq _02384FB8
	mov r0, #1
	bl FUN_02386F94
_02384FB8:
	mov r0, #0
	b _02385374
_02384FC0:
	cmp r8, #2
	blt _02384F24
_02384FC8:
	mov r8, #1
	mov r0, #0
	strh r0, [r5, #0xc2]
	mov r0, #3
	strh r0, [r5]
	add r0, sp, #0x44
	mov r1, r8
	bl FUN_02382F88
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _02385038
	cmp sl, #0
	beq _02385010
	mov r0, #0
	mov r2, sb
	mov r3, r8
	bl FUN_02384C28
	b _02385020
_02385010:
	mov r0, #0
	mov r2, sb
	mov r3, r8
	bl FUN_02384C74
_02385020:
	cmp r7, #0
	beq _02385030
	mov r0, #1
	bl FUN_02386F94
_02385030:
	mov r0, #0
	b _02385374
_02385038:
	add r0, sp, #0x44
	bl FUN_023823F4
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _02385090
	cmp sl, #0
	beq _02385068
	ldr r0, _02385388 ; =0x00000302
	mov r2, sb
	mov r3, r8
	bl FUN_02384C28
	b _02385078
_02385068:
	ldr r0, _02385388 ; =0x00000302
	mov r2, sb
	mov r3, r8
	bl FUN_02384C74
_02385078:
	cmp r7, #0
	beq _02385088
	mov r0, #1
	bl FUN_02386F94
_02385088:
	mov r0, #0
	b _02385374
_02385090:
	mov r0, #2
	strh r0, [r5]
	mov r1, #0
	str r1, [r5, #0x198]
	add r0, r5, #0x100
	strh r1, [r0, #0x96]
	add r0, r5, #0x19c
	mov r2, #0x50
	bl FUN_037FAFE4
	bl FUN_023802B0
	cmp sl, #1
	bne _02385120
	bl FUN_03801E40
	mov r4, r0
	mov r0, #0xc
	strh r0, [r4]
	mov r0, #0
	strh r0, [r4, #2]
	mov r0, #9
	strh r0, [r4, #8]
	ldr r0, [sp, #4]
	strh r0, [r4, #0xc]
	add r0, r5, #0x100
	ldrh r0, [r0, #0x88]
	strh r0, [r4, #0xa]
	add r0, sp, #0x38
	add r1, r4, #0x10
	mov r2, #6
	bl FUN_037FB078
	ldrh r0, [r5, #0x30]
	strh r0, [r4, #0x16]
	ldrh r0, [r5, #0x32]
	strh r0, [r4, #0x18]
	mov r0, r4
	bl FUN_03801E9C
	b _02385130
_02385120:
	mov r0, #0
	mov r1, r0
	add r2, sp, #0x38
	bl FUN_02384CC0
_02385130:
	cmp r7, #0
	beq _02385364
	mov r0, #1
	bl FUN_02386F94
	b _02385364
_02385144:
	mov r6, #1
	str r6, [sp, #0x24]
	mov r0, #0
	str r0, [sp, #0x18]
	mov r0, #6
	str r0, [sp, #0x14]
	str r6, [sp, #0x34]
	mov r0, #8
	str r0, [sp, #0x2c]
	mov r0, #9
	str r0, [sp, #0x30]
	mov r0, #3
	str r0, [sp, #0x1c]
	str r6, [sp, #0x10]
	b _0238535C
_02385180:
	ldr r0, [sp, #0x10]
	mov r4, r0, lsl r6
	add r0, r5, #0x100
	ldrh r0, [r0, #0x82]
	and r0, r0, sb
	ands r0, r4, r0
	beq _02385358
	mov r0, r6, lsl #0x10
	mov fp, r0, lsr #0x10
	add r2, r5, #0x128
	sub r1, r6, #1
	mov r0, #6
	mla r0, r1, r0, r2
	str r0, [sp, #0xc]
	add r1, sp, #0x3e
	ldr r2, [sp, #0x14]
	bl FUN_037FB078
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	b _02385250
_023851D0:
	add r0, sp, #0x44
	add r1, sp, #0x3e
	ldr r2, [sp, #0x1c]
	bl FUN_02382CDC
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _0238525C
	cmp r1, #7
	beq _023851FC
	cmp r1, #0xc
	bne _0238520C
_023851FC:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	b _02385250
_0238520C:
	cmp sl, #0
	beq _02385228
	mov r0, #5
	mov r2, sb
	mov r3, r8
	bl FUN_02384C28
	b _02385238
_02385228:
	mov r0, #5
	mov r2, sb
	mov r3, r8
	bl FUN_02384C74
_02385238:
	cmp r7, #0
	beq _02385248
	mov r0, #1
	bl FUN_02386F94
_02385248:
	mov r0, #0
	b _02385374
_02385250:
	ldr r0, [sp, #8]
	cmp r0, #2
	blt _023851D0
_0238525C:
	bl FUN_037FAD78
	str r0, [sp, #0x20]
	add r2, r5, #0x100
	ldrh r1, [r2, #0x82]
	ands r3, r1, r4
	beq _02385354
	ldr r0, [sp, #0x24]
	orr r0, r8, r0, lsl fp
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
	mvn r3, r4
	and r0, r1, r3
	strh r0, [r2, #0x82]
	ldrh r0, [r5, #0x86]
	and r0, r0, r3
	strh r0, [r5, #0x86]
	add r1, r5, fp, lsl #3
	ldr r0, [sp, #0x18]
	str r0, [r1, #0x738]
	str r0, [r1, #0x73c]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x14]
	bl FUN_037FAFE4
	ldr r0, [sp, #0x20]
	bl FUN_037FAD8C
	cmp sl, #1
	bne _02385328
	bl FUN_03801E40
	str r0, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	strh r1, [r0]
	ldr r1, [sp, #0x18]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x30]
	strh r1, [r0, #8]
	ldr r1, [sp, #4]
	strh r1, [r0, #0x12]
	strh fp, [r0, #0x10]
	add r0, sp, #0x3e
	ldr r1, [sp, #0x28]
	add r1, r1, #0xa
	ldr r2, [sp, #0x14]
	bl FUN_037FB078
	ldrh r1, [r5, #0x30]
	ldr r0, [sp, #0x28]
	strh r1, [r0, #0x2c]
	ldrh r1, [r5, #0x32]
	strh r1, [r0, #0x2e]
	bl FUN_03801E9C
	b _0238533C
_02385328:
	ldr r0, [sp, #0x34]
	mov r1, r6, lsl #0x10
	mov r1, r1, lsr #0x10
	add r2, sp, #0x3e
	bl FUN_02384CC0
_0238533C:
	cmp r7, #0
	beq _02385358
	mov r0, r4, lsl #0x10
	mov r0, r0, lsr #0x10
	bl FUN_02386F94
	b _02385358
_02385354:
	bl FUN_037FAD8C
_02385358:
	add r6, r6, #1
_0238535C:
	cmp r6, #0x10
	blt _02385180
_02385364:
	ldr r0, [sp]
	cmp r0, #0
	strneh r8, [r0]
	mov r0, #1
_02385374:
	add sp, sp, #0x244
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_02385380: .word _0239A8B8
_02385384: .word 0x0000018A
_02385388: .word 0x00000302
	arm_func_end FUN_02384D8C

	arm_func_start FUN_0238538C
FUN_0238538C: ; 0x0238538C
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, [r0, #4]
	mov r1, r1, lsl #0x10
	mov r4, r1, lsr #0x10
	mov r1, #0
	add r2, sp, #0
	bl FUN_02384D8C
	cmp r0, #1
	bne _023853D8
	bl FUN_03801E40
	mov r1, #0xd
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	strh r4, [r0, #8]
	ldrh r1, [sp]
	strh r1, [r0, #0xa]
	bl FUN_03801E9C
_023853D8:
	add sp, sp, #8
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_0238538C

	arm_func_start FUN_023853E4
FUN_023853E4: ; 0x023853E4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x200
	ldr r1, _02385694 ; =_023998B8
	ldr r2, _02385698 ; =_0239A8B8
	ldr r4, [r2, #0x550]
	mov sl, #0
	ldr sb, [r0, #4]
	ldr r8, [r0, #8]
	ldr r7, [r0, #0xc]
	ldr r6, [r0, #0x10]
	add r5, r0, #0x14
	ldrh r0, [r4, #0x9c]
	cmp r0, #0
	bne _0238546C
	ldrh r0, [r4, #0x3c]
	add r0, r0, #0x1f
	bic r0, r0, #0x1f
	cmp r6, r0
	movlo sl, #6
	add r0, r4, #0x100
	ldrh r0, [r0, #0x88]
	cmp r0, #0
	ldrneh r0, [r4, #0x3e]
	addne r0, r0, #0x51
	bicne r0, r0, #0x1f
	bne _02385464
	ldrh r0, [r4, #0x3e]
	add r2, r0, #0xc
	ldrh r0, [r4, #0xf8]
	mul r0, r2, r0
	add r0, r0, #0x29
	bic r0, r0, #0x1f
_02385464:
	cmp r8, r0
	movlo sl, #6
_0238546C:
	ldrh r0, [r4, #0xe6]
	cmp r0, #2
	bne _023854A0
	add r0, r4, #0x100
	ldrh r0, [r0, #0xf6]
	mov r2, #1
	add r1, r1, #0x1000
	ldr r1, [r1, #0x54c]
	ldrh r1, [r1, #0x46]
	mov r1, r2, lsl r1
	mov r1, r1, asr #1
	ands r0, r0, r1
	moveq sl, #6
_023854A0:
	cmp sl, #0
	beq _023854C8
	bl FUN_03801E40
	mov r1, #0xe
	strh r1, [r0]
	strh sl, [r0, #2]
	mov r1, #0xa
	strh r1, [r0, #4]
	bl FUN_03801E9C
	b _02385688
_023854C8:
	mov r1, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	strne r1, [r4, #0xc]
	movne r1, #1
	cmp r1, #0
	beq _023854EC
	ldr r0, _0238569C ; =0x0000FFFF
	bl FUN_02386F94
_023854EC:
	bl FUN_02387F54
	mov r0, r5
	mov r1, #0
	bl FUN_023886FC
	bl FUN_037FAD78
	mov r5, r0
	ldrh r2, [r4]
	ldr r1, _023856A0 ; =0x0000FFF9
	add r1, r2, r1
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	cmp r1, #1
	bhi _02385664
	mov r2, #0
	strh r2, [r4, #0x84]
	strh r2, [r4, #0x5e]
	mov r1, #1
	strh r1, [r4, #0x60]
	strh r2, [r4, #0x88]
	strh r2, [r4, #0x9e]
	mov r0, #0x3c
	strh r0, [r4, #0xa0]
	str r2, [r4, #0x734]
	strh r2, [r4, #0x8a]
	strh r2, [r4, #0x8c]
	strh r2, [r4, #0x8e]
	strh r2, [r4, #0x90]
	strh r2, [r4, #0x66]
	str sb, [r4, #0x74]
	strh r8, [r4, #0x72]
	add r0, sb, r8
	str r0, [r4, #0x78]
	strh r2, [r4, #0x70]
	str r7, [r4, #0x7c]
	strh r6, [r4, #0x80]
	strh r2, [r4, #0x62]
	strh r2, [r4, #0x64]
	strh r2, [r4, #0x68]
	strh r2, [r4, #0x6a]
	ldr r0, _0238569C ; =0x0000FFFF
	strh r0, [r4, #0xbe]
	strh r1, [r4, #0xc0]
	bl FUN_037FA080
	mov r2, #0
	orr r1, r1, #0
	orr r3, r0, #1
_023855A4:
	add r0, r4, r2, lsl #3
	str r3, [r0, #0x738]
	str r1, [r0, #0x73c]
	add r2, r2, #1
	cmp r2, #0x10
	blt _023855A4
	bl FUN_02380388
	mov r0, #0
	strh r0, [r4, #0xce]
	bl FUN_0238693C
	ldrh r0, [r4]
	cmp r0, #8
	moveq r0, #0xa
	streqh r0, [r4]
	beq _023855EC
	cmp r0, #7
	moveq r0, #9
	streqh r0, [r4]
_023855EC:
	bl FUN_03801E40
	mov r1, #0xe
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	mov r1, #0xa
	strh r1, [r0, #4]
	bl FUN_03801E9C
	mov r0, #1
	str r0, [r4, #0xc]
	mov r0, r5
	bl FUN_037FAD8C
	add r0, sp, #0
	mov r1, #1
	bl FUN_02382558
	mov r4, r0
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _02385688
	bl FUN_03801E40
	mov r1, #0xe
	strh r1, [r0]
	mov r1, #1
	strh r1, [r0, #2]
	ldr r1, _023856A4 ; =0x00000216
	strh r1, [r0, #4]
	ldrh r1, [r4, #4]
	strh r1, [r0, #6]
	bl FUN_03801E9C
	b _02385688
_02385664:
	bl FUN_037FAD8C
	bl FUN_03801E40
	mov r1, #0xe
	strh r1, [r0]
	mov r1, #3
	strh r1, [r0, #2]
	mov r1, #0xa
	strh r1, [r0, #4]
	bl FUN_03801E9C
_02385688:
	add sp, sp, #0x200
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	.align 2, 0
_02385694: .word _023998B8
_02385698: .word _0239A8B8
_0238569C: .word 0x0000FFFF
_023856A0: .word 0x0000FFF9
_023856A4: .word 0x00000216
	arm_func_end FUN_023853E4

	arm_func_start FUN_023856A8
FUN_023856A8: ; 0x023856A8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	ldr r1, _023857E8 ; =_0239A8B8
	ldr r4, [r1, #0x550]
	add r2, r4, #0x100
	ldrh r5, [r2, #0x82]
	ldr sl, [r0, #4]
	ldr r1, [r0, #8]
	mov r1, r1, lsl #0x10
	mov sb, r1, lsr #0x10
	ldr r8, [r0, #0xc]
	ldr r1, [r0, #0x10]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	str r1, [sp, #0x10]
	ldr r1, [r0, #0x14]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	ldr r7, [r0, #0x18]
	ldr fp, [r0, #0x1c]
	ldrh r0, [r2, #0x88]
	cmp r0, #0
	movne r8, #1
	ldr r0, [r4, #0xc]
	cmp r0, #0
	moveq r6, #3
	beq _02385744
	ands r0, r8, r5
	moveq r6, #0
	beq _02385744
	str sl, [sp]
	str sb, [sp, #4]
	str r7, [sp, #8]
	str fp, [sp, #0xc]
	mov r0, r5
	ldr r2, [sp, #0x10]
	mov r3, r8
	bl FUN_023874E8
	mov r6, r0
_02385744:
	cmp r6, #2
	beq _023857DC
	bl FUN_03801E40
	mov r1, #0x81
	strh r1, [r0]
	strh r6, [r0, #2]
	mov r1, #0x14
	strh r1, [r0, #8]
	ldr r1, [sp, #0x10]
	strh r1, [r0, #0xa]
	strh r8, [r0, #0xc]
	cmp r6, #0xa
	andeq r1, r8, r5
	streqh r1, [r0, #0xe]
	movne r1, #0
	strneh r1, [r0, #0xe]
	mov r1, #0
	strh r1, [r0, #0x10]
	strh sb, [r0, #0x18]
	str sl, [r0, #0x14]
	str r7, [r0, #0x1c]
	str fp, [r0, #0x20]
	ldr r1, _023857EC ; =0x0000FFFF
	strh r1, [r0, #0x1a]
	ldrh r2, [r4, #0x30]
	ldrh r3, [r4, #0x32]
	add r1, r4, #0x100
	ldrh r1, [r1, #0x88]
	cmp r1, #0
	moveq r1, r2
	movne r1, r3
	strh r1, [r0, #0x24]
	add r1, r4, #0x100
	ldrh r1, [r1, #0x88]
	cmp r1, #0
	movne r3, r2
	strh r3, [r0, #0x26]
	bl FUN_03801E9C
_023857DC:
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_023857E8: .word _0239A8B8
_023857EC: .word 0x0000FFFF
	arm_func_end FUN_023856A8

	arm_func_start FUN_023857F0
FUN_023857F0: ; 0x023857F0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	bl FUN_03801E40
	mov r1, #0x10
	strh r1, [r0]
	mov r1, #1
	strh r1, [r0, #2]
	strh r5, [r0, #4]
	strh r4, [r0, #6]
	bl FUN_03801E9C
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_023857F0

	arm_func_start FUN_0238582C
FUN_0238582C: ; 0x0238582C
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x200
	ldr r0, _02385940 ; =_0239A8B8
	ldr r4, [r0, #0x550]
	mov r6, #0
	ldrh r0, [r4]
	cmp r0, #9
	beq _02385870
	cmp r0, #0xa
	beq _02385870
	bl FUN_03801E40
	mov r1, #0x10
	strh r1, [r0]
	mov r1, #3
	strh r1, [r0, #2]
	bl FUN_03801E9C
	b _02385934
_02385870:
	bl FUN_037FAD78
	mov r5, r0
	ldr r0, [r4, #0xc]
	cmp r0, #1
	moveq r6, #1
	mov r0, #0
	str r0, [r4, #0xc]
	bl FUN_023869CC
	bl FUN_023803E8
	ldrh r0, [r4]
	cmp r0, #0xa
	moveq r0, #8
	streqh r0, [r4]
	beq _023858B4
	cmp r0, #9
	moveq r0, #7
	streqh r0, [r4]
_023858B4:
	mov r0, r5
	bl FUN_037FAD8C
	add r0, sp, #0
	mov r1, #0
	bl FUN_02382558
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _023858E0
	ldr r0, _02385944 ; =0x00000216
	bl FUN_023857F0
	b _02385934
_023858E0:
	add r0, sp, #0
	mov r1, #7
	bl FUN_023828E0
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _02385904
	mov r0, #0x104
	bl FUN_023857F0
	b _02385934
_02385904:
	mov r0, #0
	strh r0, [r4, #0x8a]
	cmp r6, #0
	beq _0238591C
	ldr r0, _02385948 ; =0x0000FFFF
	bl FUN_02386F94
_0238591C:
	bl FUN_03801E40
	mov r1, #0x10
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	bl FUN_03801E9C
_02385934:
	add sp, sp, #0x200
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_02385940: .word _0239A8B8
_02385944: .word 0x00000216
_02385948: .word 0x0000FFFF
	arm_func_end FUN_0238582C

	arm_func_start FUN_0238594C
FUN_0238594C: ; 0x0238594C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr r1, _023859D4 ; =_0239A8B8
	ldr r5, [r1, #0x550]
	ldr r8, [r0, #4]
	ldr r0, [r0, #8]
	mov r6, r0, lsl #0x10
	mov r7, r6, lsr #0x10
	bl FUN_037FAD78
	mov r4, r0
	str r8, [r5, #0xb0]
	strh r7, [r5, #0xb8]
	add r0, r8, r6, lsr #16
	str r0, [r5, #0xb4]
	mov r0, #0
	strh r0, [r5, #0xae]
	str r0, [r5, #0xa8]
	strh r0, [r5, #0xac]
	str r0, [r5, #0x18]
	mov r0, #0xb
	strh r0, [r5]
	bl FUN_03801E40
	mov r1, #0x11
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	mov r1, #0xe
	strh r1, [r0, #4]
	bl FUN_03801E9C
	mov r0, #1
	str r0, [r5, #0x10]
	mov r0, r4
	bl FUN_037FAD8C
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_023859D4: .word _0239A8B8
	arm_func_end FUN_0238594C

	arm_func_start FUN_023859D8
FUN_023859D8: ; 0x023859D8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x234
	mov r5, r0
	ldr r0, _02385ACC ; =_0239A8B8
	ldr r4, [r0, #0x550]
	add r0, r5, #4
	add r1, r4, #0xa2
	mov r2, #6
	bl FUN_037FB078
	ldr r0, [r5, #0xc]
	str r0, [r4, #0xa8]
	ldr r0, [r5, #0x10]
	strh r0, [r4, #0xac]
	mov r0, #1
	str r0, [r4, #0x18]
	mov r0, #0
	add r1, sp, #0
	mov r2, #0x30
	bl FUN_037FAF38
	mov r0, #0
	strh r0, [sp]
	ldr r0, [r5, #0x10]
	strh r0, [sp, #6]
	add r0, r4, #0x100
	ldrh r0, [r0, #0xec]
	cmp r0, #2
	moveq r0, #0x14
	movne r0, #0xa
	strb r0, [sp, #0xe]
	add r0, r5, #4
	add r1, sp, #0x18
	mov r2, #6
	bl FUN_037FB078
	add r0, r4, #0xe0
	add r1, sp, #0x1e
	mov r2, #6
	bl FUN_037FB078
	ldr r0, [r5, #0xc]
	str r0, [sp, #0x2c]
	add r0, sp, #0x30
	add r1, sp, #0
	bl FUN_02382A44
	mov r4, r0
	bl FUN_03801E40
	mov r1, #0x12
	strh r1, [r0]
	ldrh r1, [r4, #4]
	cmp r1, #0
	moveq r1, #0
	movne r1, #1
	strh r1, [r0, #2]
	ldrh r1, [r4, #4]
	cmp r1, #0
	movne r1, #0x100
	strneh r1, [r0, #4]
	ldrneh r1, [r4, #4]
	strneh r1, [r0, #6]
	bl FUN_03801E9C
	add sp, sp, #0x234
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_02385ACC: .word _0239A8B8
	arm_func_end FUN_023859D8

	arm_func_start FUN_02385AD0
FUN_02385AD0: ; 0x02385AD0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	bl FUN_03801E40
	mov r1, #0x13
	strh r1, [r0]
	mov r1, #1
	strh r1, [r0, #2]
	strh r5, [r0, #4]
	strh r4, [r0, #6]
	bl FUN_03801E9C
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_02385AD0

	arm_func_start FUN_02385B0C
FUN_02385B0C: ; 0x02385B0C
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x200
	ldr r0, _02385BA8 ; =_0239A8B8
	ldr r4, [r0, #0x550]
	bl FUN_037FAD78
	ldrh r1, [r4]
	cmp r1, #0xb
	beq _02385B4C
	bl FUN_037FAD8C
	bl FUN_03801E40
	mov r1, #0x13
	strh r1, [r0]
	mov r1, #3
	strh r1, [r0, #2]
	bl FUN_03801E9C
	b _02385B9C
_02385B4C:
	mov r1, #0
	str r1, [r4, #0x10]
	mov r1, #8
	strh r1, [r4]
	bl FUN_037FAD8C
	add r0, sp, #0
	mov r1, #7
	bl FUN_023828E0
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _02385B84
	mov r0, #0x104
	bl FUN_02385AD0
	b _02385B9C
_02385B84:
	bl FUN_03801E40
	mov r1, #0x13
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	bl FUN_03801E9C
_02385B9C:
	add sp, sp, #0x200
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02385BA8: .word _0239A8B8
	arm_func_end FUN_02385B0C

	arm_func_start FUN_02385BAC
FUN_02385BAC: ; 0x02385BAC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	bl FUN_03801E40
	mov r1, #0x14
	strh r1, [r0]
	mov r1, #1
	strh r1, [r0, #2]
	strh r5, [r0, #4]
	strh r4, [r0, #6]
	bl FUN_03801E9C
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_02385BAC

	arm_func_start FUN_02385BE8
FUN_02385BE8: ; 0x02385BE8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x204
	mov r5, r0
	ldr r0, _02385CC4 ; =_0239A8B8
	ldr r4, [r0, #0x550]
	ldr r1, [r5, #4]
	add r0, r4, #0x100
	strh r1, [r0, #0x96]
	ldrh r0, [r0, #0x96]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _02385C40
_02385C18: ; jump table
	b _02385C28 ; case 0
	b _02385C34 ; case 1
	b _02385C34 ; case 2
	b _02385C34 ; case 3
_02385C28:
	mov r0, #0
	str r0, [r4, #0x198]
	b _02385C48
_02385C34:
	mov r0, #1
	str r0, [r4, #0x198]
	b _02385C48
_02385C40:
	mov r0, #0
	str r0, [r4, #0x198]
_02385C48:
	ldr r0, [r4, #0x198]
	cmp r0, #1
	bne _02385C68
	ldr r0, [r5, #8]
	add r1, r4, #0x19c
	mov r2, #0x50
	bl FUN_037FB078
	b _02385C78
_02385C68:
	add r0, r4, #0x19c
	mov r1, #0
	mov r2, #0x50
	bl FUN_037FAFE4
_02385C78:
	ldr r0, [r5, #0xc]
	strh r0, [r4, #0xc4]
	add r0, sp, #0
	ldrh r1, [r4, #0xc4]
	bl FUN_02382824
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _02385CA0
	ldr r0, _02385CC8 ; =0x00000207
	bl FUN_02385BAC
_02385CA0:
	bl FUN_03801E40
	mov r1, #0x27
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	bl FUN_03801E9C
	add sp, sp, #0x204
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_02385CC4: .word _0239A8B8
_02385CC8: .word 0x00000207
	arm_func_end FUN_02385BE8

	arm_func_start FUN_02385CCC
FUN_02385CCC: ; 0x02385CCC
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _02385D7C ; =_0239A8B8
	ldr r3, [r1, #0x550]
	ldr r2, [r0, #4]
	add r1, r3, #0x100
	strh r2, [r1, #0x96]
	ldrh r1, [r1, #0x96]
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _02385D20
_02385CF8: ; jump table
	b _02385D08 ; case 0
	b _02385D14 ; case 1
	b _02385D14 ; case 2
	b _02385D14 ; case 3
_02385D08:
	mov r1, #0
	str r1, [r3, #0x198]
	b _02385D28
_02385D14:
	mov r1, #1
	str r1, [r3, #0x198]
	b _02385D28
_02385D20:
	mov r1, #0
	str r1, [r3, #0x198]
_02385D28:
	ldr r1, [r3, #0x198]
	cmp r1, #1
	bne _02385D48
	ldr r0, [r0, #8]
	add r1, r3, #0x19c
	mov r2, #0x50
	bl FUN_037FB078
	b _02385D58
_02385D48:
	add r0, r3, #0x19c
	mov r1, #0
	mov r2, #0x50
	bl FUN_037FAFE4
_02385D58:
	bl FUN_03801E40
	mov r1, #0x14
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	bl FUN_03801E9C
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02385D7C: .word _0239A8B8
	arm_func_end FUN_02385CCC

	arm_func_start FUN_02385D80
FUN_02385D80: ; 0x02385D80
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x280
	ldr r1, _02385E6C ; =_0239A8B8
	ldr r4, [r1, #0x550]
	ldr r1, [r0, #4]
	str r1, [r4, #0xe8]
	ldr r1, [r0, #8]
	strh r1, [r4, #0xec]
	ldr r1, [r0, #0xc]
	str r1, [r4, #0xf0]
	ldr r1, [r0, #0x10]
	strh r1, [r4, #0xf4]
	ldr r0, [r0, #0x14]
	and r1, r0, #0xff
	ands r0, r1, #1
	movne r0, #1
	moveq r0, #0
	strh r0, [r4, #0xf6]
	ands r0, r1, #2
	movne r0, #1
	moveq r0, #0
	strh r0, [r4, #0xfa]
	ands r0, r1, #4
	movne r0, #1
	moveq r0, #0
	strh r0, [r4, #0xfc]
	ands r0, r1, #8
	movne r0, #1
	moveq r0, #0
	strh r0, [r4, #0xfe]
	add r0, sp, #0x200
	add r1, r4, #0xe8
	bl FUN_023806B4
	add r0, sp, #0
	ldrh r1, [r4, #0xec]
	add r1, r1, #0x10
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	add r2, sp, #0x200
	bl FUN_02382468
	mov r4, r0
	bl FUN_03801E40
	mov r1, #0x18
	strh r1, [r0]
	ldrh r1, [r4, #4]
	cmp r1, #0
	moveq r1, #0
	movne r1, #1
	strh r1, [r0, #2]
	ldrh r1, [r4, #4]
	cmp r1, #0
	ldrne r1, _02385E70 ; =0x00000245
	strneh r1, [r0, #4]
	ldrneh r1, [r4, #4]
	strneh r1, [r0, #6]
	bl FUN_03801E9C
	add sp, sp, #0x280
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02385E6C: .word _0239A8B8
_02385E70: .word 0x00000245
	arm_func_end FUN_02385D80

	arm_func_start FUN_02385E74
FUN_02385E74: ; 0x02385E74
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	bl FUN_03801E40
	mov r1, #0x19
	strh r1, [r0]
	mov r1, #1
	strh r1, [r0, #2]
	strh r5, [r0, #4]
	strh r4, [r0, #6]
	bl FUN_03801E9C
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_02385E74

	arm_func_start FUN_02385EB0
FUN_02385EB0: ; 0x02385EB0
	stmdb sp!, {lr}
	sub sp, sp, #0x204
	mov r1, r0
	add r0, sp, #0
	ldr r1, [r1, #4]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_023825B8
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _02385EE8
	ldr r0, _02385F0C ; =0x00000215
	bl FUN_02385E74
	b _02385F00
_02385EE8:
	bl FUN_03801E40
	mov r1, #0x19
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	bl FUN_03801E9C
_02385F00:
	add sp, sp, #0x204
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02385F0C: .word 0x00000215
	arm_func_end FUN_02385EB0

	arm_func_start FUN_02385F10
FUN_02385F10: ; 0x02385F10
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_03801E40
	mov r1, #0x1a
	strh r1, [r0]
	mov r1, #4
	strh r1, [r0, #2]
	bl FUN_03801E9C
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_02385F10

	arm_func_start FUN_02385F3C
FUN_02385F3C: ; 0x02385F3C
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_03801E40
	mov r1, #0x1b
	strh r1, [r0]
	mov r1, #4
	strh r1, [r0, #2]
	bl FUN_03801E9C
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_02385F3C

	arm_func_start FUN_02385F68
FUN_02385F68: ; 0x02385F68
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	bl FUN_03801E40
	mov r1, #0x1d
	strh r1, [r0]
	mov r1, #1
	strh r1, [r0, #2]
	strh r5, [r0, #4]
	strh r4, [r0, #6]
	bl FUN_03801E9C
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_02385F68

	arm_func_start FUN_02385FA4
FUN_02385FA4: ; 0x02385FA4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x204
	mov r3, r0
	ldr r0, _023860B4 ; =_0239A8B8
	ldr r4, [r0, #0x550]
	ldr r0, [r3, #0x10]
	mov r0, r0, lsl #0x10
	mov r5, r0, lsr #0x10
	add r0, sp, #0
	ldr r1, [r3, #4]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	ldr r2, [r3, #8]
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	ldr r3, [r3, #0xc]
	mov r3, r3, lsl #0x10
	mov r3, r3, lsr #0x10
	bl FUN_02382678
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _02386008
	ldr r0, _023860B8 ; =0x00000211
	bl FUN_02385F68
	b _023860A8
_02386008:
	ldr r0, _023860BC ; =0x0000FFFF
	cmp r5, r0
	beq _0238605C
	cmp r5, #0
	moveq r1, #1
	moveq r0, #0
	beq _02386050
	mov r0, #0x64
	mul r3, r5, r0
	mov r2, r3, asr #0x1f
	mov r1, #0
	ldr r0, _023860C0 ; =0x000082EA
	umull ip, r5, r3, r0
	mla r5, r3, r1, r5
	mla r5, r2, r0, r5
	mov r0, r5, lsr #6
	mov r1, ip, lsr #6
	orr r1, r1, r5, lsl #26
_02386050:
	str r1, [r4, #0x7b8]
	str r0, [r4, #0x7bc]
	b _02386068
_0238605C:
	mov r0, #0
	str r0, [r4, #0x7b8]
	str r0, [r4, #0x7bc]
_02386068:
	bl FUN_037FA080
	mov r2, #0
	orr r1, r1, #0
	orr r3, r0, #1
_02386078:
	add r0, r4, r2, lsl #3
	str r3, [r0, #0x738]
	str r1, [r0, #0x73c]
	add r2, r2, #1
	cmp r2, #0x10
	blt _02386078
	bl FUN_03801E40
	mov r1, #0x1d
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	bl FUN_03801E9C
_023860A8:
	add sp, sp, #0x204
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_023860B4: .word _0239A8B8
_023860B8: .word 0x00000211
_023860BC: .word 0x0000FFFF
_023860C0: .word 0x000082EA
	arm_func_end FUN_02385FA4

	arm_func_start FUN_023860C4
FUN_023860C4: ; 0x023860C4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	bl FUN_03801E40
	mov r1, #0x1e
	strh r1, [r0]
	mov r1, #1
	strh r1, [r0, #2]
	strh r5, [r0, #4]
	strh r4, [r0, #6]
	bl FUN_03801E9C
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_023860C4

	arm_func_start FUN_02386100
FUN_02386100: ; 0x02386100
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x214
	mov r8, r0
	ldr r0, _023862A8 ; =_0239A8B8
	ldr r4, [r0, #0x550]
	add r7, sp, #0x14
	ldrh r0, [r4]
	cmp r0, #2
	beq _02386140
	bl FUN_03801E40
	mov r1, #0x1e
	strh r1, [r0]
	mov r1, #3
	strh r1, [r0, #2]
	bl FUN_03801E9C
	b _0238629C
_02386140:
	mov r0, r7
	bl FUN_0238236C
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _02386160
	mov r0, #0x308
	bl FUN_023860C4
	b _0238629C
_02386160:
	ldrh r1, [r0, #6]
	mov r0, #2
	strh r0, [r4, #0xe6]
	cmp r1, #0x10
	bne _023861E4
	mov r0, #0xa
	mov r1, r7
	bl FUN_02380568
	cmp r0, #0
	beq _0238629C
	mov r0, r7
	bl FUN_023823DC
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _023861A8
	ldr r0, _023862AC ; =0x00000303
	bl FUN_023860C4
	b _0238629C
_023861A8:
	mov r0, #3
	strh r0, [r4]
	mov r0, r7
	mov r1, #1
	mov r2, #0
	mov r3, r1
	bl FUN_02382F24
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _023861DC
	mov r0, #1
	bl FUN_023860C4
	b _0238629C
_023861DC:
	mov r0, #1
	strh r0, [r4, #0xc6]
_023861E4:
	ldrh r6, [r8, #2]
	ldrh r5, [r8, #4]
	ldrh sb, [r8, #6]
	ldrh r8, [r8, #8]
	add r0, sp, #4
	mov r1, #0
	mov r2, #0x10
	bl FUN_037FAFE4
	strb sb, [sp, #4]
	add r0, sp, #4
	str r0, [sp]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r8
	bl FUN_02382AFC
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _0238623C
	mov r0, #0xa
	bl FUN_023860C4
	b _0238629C
_0238623C:
	ldrh r1, [r0, #8]
	and r0, r1, #0xff
	mov r0, r0, lsl #0x10
	mov r5, r0, lsr #0x10
	mov r0, r1, lsl #8
	mov r6, r0, lsr #0x10
	mov r0, r7
	bl FUN_023823F4
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _02386274
	ldr r0, _023862B0 ; =0x00000302
	bl FUN_023860C4
	b _0238629C
_02386274:
	mov r0, #2
	strh r0, [r4]
	bl FUN_03801E40
	mov r1, #0x1e
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	strh r5, [r0, #8]
	strh r6, [r0, #0xa]
	bl FUN_03801E9C
_0238629C:
	add sp, sp, #0x214
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	.align 2, 0
_023862A8: .word _0239A8B8
_023862AC: .word 0x00000303
_023862B0: .word 0x00000302
	arm_func_end FUN_02386100

	arm_func_start FUN_023862B4
FUN_023862B4: ; 0x023862B4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	bl FUN_03801E40
	mov r1, #0x1f
	strh r1, [r0]
	mov r1, #1
	strh r1, [r0, #2]
	strh r5, [r0, #4]
	strh r4, [r0, #6]
	bl FUN_03801E9C
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_023862B4

	arm_func_start FUN_023862F0
FUN_023862F0: ; 0x023862F0
	stmdb sp!, {lr}
	sub sp, sp, #0x204
	add r0, sp, #0
	bl FUN_023823B0
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _02386318
	ldr r0, _0238633C ; =0x00000305
	bl FUN_023862B4
	b _02386330
_02386318:
	bl FUN_03801E40
	mov r1, #0x1f
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	bl FUN_03801E9C
_02386330:
	add sp, sp, #0x204
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_0238633C: .word 0x00000305
	arm_func_end FUN_023862F0

	arm_func_start FUN_02386340
FUN_02386340: ; 0x02386340
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	bl FUN_03801E40
	mov r1, #0x20
	strh r1, [r0]
	mov r1, #1
	strh r1, [r0, #2]
	strh r5, [r0, #4]
	strh r4, [r0, #6]
	bl FUN_03801E9C
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_02386340

	arm_func_start FUN_0238637C
FUN_0238637C: ; 0x0238637C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x204
	add r0, sp, #0
	bl FUN_02382380
	mov r5, r0
	ldrh r1, [r5, #4]
	cmp r1, #0
	beq _023863A8
	ldr r0, _023863E4 ; =0x00000307
	bl FUN_02386340
	b _023863D8
_023863A8:
	bl FUN_03801E40
	mov r4, r0
	mov r0, #0x20
	strh r0, [r4]
	mov r0, #0
	strh r0, [r4, #2]
	add r0, r5, #8
	add r1, r4, #8
	mov r2, #0xb4
	bl FUN_037FAF50
	mov r0, r4
	bl FUN_03801E9C
_023863D8:
	add sp, sp, #0x204
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_023863E4: .word 0x00000307
	arm_func_end FUN_0238637C

	arm_func_start FUN_023863E8
FUN_023863E8: ; 0x023863E8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r5, _02386498 ; =_023998B8
	ldr r0, _0238649C ; =_0239A8B8
	ldr r4, [r0, #0x550]
	bl FUN_037FAD78
	ldrh r1, [r4, #0xce]
	cmp r1, #1
	bne _02386414
	bl FUN_037FAD8C
	b _0238648C
_02386414:
	mov r1, #1
	strh r1, [r4, #0xce]
	bl FUN_037FAD8C
	bl FUN_023802E4
	movs r1, r0
	moveq r0, #0
	beq _02386444
	mov r0, #0x1c
	str r0, [r1]
	add r0, r5, #0x88
	mov r2, #0
	bl FUN_037F97F0
_02386444:
	cmp r0, #0
	bne _0238648C
	mov r0, #0
	strh r0, [r4, #0xce]
	add r0, r5, #0x1000
	ldr r0, [r0, #0x54c]
	cmp r0, #0
	beq _0238648C
	bl FUN_03801E40
	mov r1, #0x80
	strh r1, [r0]
	mov r1, #8
	strh r1, [r0, #2]
	mov r1, #0x16
	strh r1, [r0, #4]
	mov r1, #0x1c
	strh r1, [r0, #6]
	bl FUN_03801E9C
_0238648C:
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_02386498: .word _023998B8
_0238649C: .word _0239A8B8
	arm_func_end FUN_023863E8

	arm_func_start FUN_023864A0
FUN_023864A0: ; 0x023864A0
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _023864DC ; =_0239A8B8
	ldr r0, [r0, #0x550]
	ldr r0, [r0, #0xc]
	cmp r0, #1
	bne _023864D0
	mov r0, #0xd1
	ldr r1, _023864E0 ; =FUN_023864E4
	mov r2, #3
	bl FUN_02386904
	bl FUN_023863E8
_023864D0:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_023864DC: .word _0239A8B8
_023864E0: .word FUN_023864E4
	arm_func_end FUN_023864A0

	arm_func_start FUN_023864E4
FUN_023864E4: ; 0x023864E4
	stmdb sp!, {r4, lr}
	ldr r0, _02386544 ; =_0239A8B8
	ldr r4, [r0, #0x550]
	ldrh r0, [r4, #0xdc]
	cmp r0, #0x3c
	blo _02386520
	ldr r1, _02386548 ; =0x04000006
	ldrh r0, [r1]
	cmp r0, #0xd1
	blt _02386528
	cmp r0, #0xd4
	strlth r0, [r1]
	movlt r0, #0
	strlth r0, [r4, #0xdc]
	b _02386528
_02386520:
	add r0, r0, #1
	strh r0, [r4, #0xdc]
_02386528:
	bl FUN_023868AC
	ldrsh r0, [r4, #0x40]
	ldr r1, _0238654C ; =FUN_023864A0
	mov r2, #5
	bl FUN_02386904
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02386544: .word _0239A8B8
_02386548: .word 0x04000006
_0238654C: .word FUN_023864A0
	arm_func_end FUN_023864E4

	arm_func_start FUN_02386550
FUN_02386550: ; 0x02386550
	stmdb sp!, {r4, lr}
	ldr r0, _02386648 ; =_0239A8B8
	ldr r4, [r0, #0x550]
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _02386640
	mov r0, #0xc8
	ldr r1, _0238664C ; =FUN_02386698
	mov r2, #1
	bl FUN_02386904
	ldr r2, [r4, #0x7b8]
	ldr r1, [r4, #0x7bc]
	mov r0, #0
	cmp r1, r0
	cmpeq r2, r0
	beq _0238663C
	bl FUN_037FA080
	mov r2, #0
	orr r3, r1, #0
	orr ip, r0, #1
	ldr r1, [r4, #0x738]
	ldr r0, [r4, #0x73c]
	cmp r0, r2
	cmpeq r1, r2
	beq _0238663C
	subs ip, ip, r1
	sbc r3, r3, r0
	ldr r1, [r4, #0x7b8]
	ldr r0, [r4, #0x7bc]
	cmp r3, r0
	cmpeq ip, r1
	bls _0238663C
	str r2, [r4, #0x738]
	str r2, [r4, #0x73c]
	bl FUN_023802E4
	movs r1, r0
	moveq r0, #0
	beq _02386608
	mov r0, #0x25
	str r0, [r1]
	mov r2, #0
	str r2, [r1, #4]
	ldr r0, _02386650 ; =0x00008001
	str r0, [r1, #8]
	ldr r0, _02386654 ; =_02399940
	bl FUN_037F97F0
_02386608:
	cmp r0, #0
	bne _02386640
	bl FUN_03801E40
	mov r1, #0x80
	strh r1, [r0]
	mov r1, #8
	strh r1, [r0, #2]
	mov r1, #0x16
	strh r1, [r0, #4]
	mov r1, #0x25
	strh r1, [r0, #6]
	bl FUN_03801E9C
	b _02386640
_0238663C:
	bl FUN_023863E8
_02386640:
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02386648: .word _0239A8B8
_0238664C: .word FUN_02386698
_02386650: .word 0x00008001
_02386654: .word _02399940
	arm_func_end FUN_02386550

	arm_func_start FUN_02386658
FUN_02386658: ; 0x02386658
	stmdb sp!, {r4, lr}
	ldr r0, _02386690 ; =_0239A8B8
	ldr r4, [r0, #0x550]
	bl FUN_02386718
	ldr r0, [r4, #0xd8]
	cmp r0, #0x7f
	movhs r0, #0
	strhs r0, [r4, #0x1c]
	ldrsh r0, [r4, #0x42]
	ldr r1, _02386694 ; =FUN_02386550
	mov r2, #4
	bl FUN_02386904
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02386690: .word _0239A8B8
_02386694: .word FUN_02386550
	arm_func_end FUN_02386658

	arm_func_start FUN_02386698
FUN_02386698: ; 0x02386698
	stmdb sp!, {r4, lr}
	ldr r0, _02386708 ; =_0239A8B8
	ldr r4, [r0, #0x550]
	ldr r0, _0238670C ; =0x0380FFF0
	ldrh r0, [r0]
	str r0, [r4, #0xd0]
	ldr r1, [r4, #0xd0]
	ldr r0, [r4, #0xd4]
	cmp r0, r1
	beq _023866C8
	str r1, [r4, #0xd4]
	bl FUN_023867AC
_023866C8:
	ldr r0, [r4, #0xd8]
	cmp r0, #0x7f
	bls _023866E8
	mov r0, #0xd0
	ldr r1, _02386710 ; =FUN_02386658
	mov r2, #2
	bl FUN_02386904
	b _02386700
_023866E8:
	mov r0, #1
	str r0, [r4, #0x1c]
	ldrsh r0, [r4, #0x42]
	ldr r1, _02386714 ; =FUN_02386550
	mov r2, #4
	bl FUN_02386904
_02386700:
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02386708: .word _0239A8B8
_0238670C: .word 0x0380FFF0
_02386710: .word FUN_02386658
_02386714: .word FUN_02386550
	arm_func_end FUN_02386698

	arm_func_start FUN_02386718
FUN_02386718: ; 0x02386718
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _023867A4 ; =_0239A8B8
	ldr ip, [r0, #0x550]
	ldr r0, _023867A8 ; =0x04000006
	ldrh r3, [r0]
	cmp r3, #0xd0
	blt _02386798
	cmp r3, #0xd4
	bge _02386798
	ldr r2, [ip, #0xd8]
	cmp r2, #0x7f
	blo _02386798
	mov lr, #1
	mov r0, #0x3f
	b _0238676C
_02386758:
	mul r1, lr, r0
	add r1, r1, #0x7f
	cmp r2, r1
	blo _02386774
	add lr, lr, #1
_0238676C:
	cmp lr, #7
	blt _02386758
_02386774:
	rsb r0, lr, #1
	add r1, r3, r0
	ldr r0, _023867A8 ; =0x04000006
	strh r1, [r0]
	ldr r1, [ip, #0xd8]
	mov r0, #0x3f
	mul r0, lr, r0
	sub r0, r1, r0
	str r0, [ip, #0xd8]
_02386798:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_023867A4: .word _0239A8B8
_023867A8: .word 0x04000006
	arm_func_end FUN_02386718

	arm_func_start FUN_023867AC
FUN_023867AC: ; 0x023867AC
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _0238688C ; =_0239A8B8
	ldr r0, [r0, #0x550]
	ldr r1, [r0, #0xd0]
	mov r1, r1, lsl #6
	str r1, [r0, #0xd0]
	ldr r3, _02386890 ; =0x048080F8
	ldrh r2, [r3]
	ldr r1, _02386894 ; =0x048080FA
	ldrh ip, [r1]
	ldrh r3, [r3]
	cmp r2, r3
	ldrhih ip, [r1]
	orr ip, r3, ip, lsl #16
	ldr r1, _02386898 ; =0x04000006
	ldrh r3, [r1]
	ldr r2, _0238689C ; =0x003FFFC0
	and ip, ip, r2
	ldr r1, _023868A0 ; =0x00000107
	sub r3, r1, r3
	mov r1, #0x7f
	mul r1, r3, r1
	add r1, r1, ip, lsl #1
	and ip, r2, r1, lsr #1
	ldr r1, [r0, #0xd0]
	cmp r1, ip
	movhi r1, #0
	strhi r1, [r0, #0xd8]
	bhi _02386880
	mov lr, #1
	add r3, r0, #0xd0
	ldr r1, _023868A4 ; =0x0000414B
	b _02386870
_02386834:
	ldr r2, [r3]
	add r2, r2, r1
	str r2, [r3]
	ldr r2, [r0, #0xd0]
	cmp r2, ip
	bls _0238686C
	sub r1, r2, ip
	str r1, [r0, #0xd8]
	ldr r2, [r0, #0xd8]
	ldr r1, _023868A8 ; =0x0000400E
	cmp r2, r1
	movhi r1, #0
	strhi r1, [r0, #0xd8]
	b _02386880
_0238686C:
	add lr, lr, #1
_02386870:
	cmp lr, #0x1e
	blt _02386834
	mov r1, #0
	str r1, [r0, #0xd8]
_02386880:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_0238688C: .word _0239A8B8
_02386890: .word 0x048080F8
_02386894: .word 0x048080FA
_02386898: .word 0x04000006
_0238689C: .word 0x003FFFC0
_023868A0: .word 0x00000107
_023868A4: .word 0x0000414B
_023868A8: .word 0x0000400E
	arm_func_end FUN_023867AC

	arm_func_start FUN_023868AC
FUN_023868AC: ; 0x023868AC
	ldr r0, _023868F4 ; =0x04000006
	ldrh ip, [r0]
	ldr r2, _023868F8 ; =0x048080F8
	ldrh r1, [r2]
	ldr r0, _023868FC ; =0x048080FA
	ldrh r3, [r0]
	ldrh r2, [r2]
	cmp r1, r2
	ldrhih r3, [r0]
	orr r0, r2, r3, lsl #16
	mov r1, r0, lsl #1
	mov r0, #0x7f
	mul r0, ip, r0
	sub r0, r1, r0
	mov r1, r0, lsr #7
	ldr r0, _02386900 ; =0x0380FFF0
	strh r1, [r0]
	bx lr
	.align 2, 0
_023868F4: .word 0x04000006
_023868F8: .word 0x048080F8
_023868FC: .word 0x048080FA
_02386900: .word 0x0380FFF0
	arm_func_end FUN_023868AC

	arm_func_start FUN_02386904
FUN_02386904: ; 0x02386904
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov ip, r0
	mov r3, r1
	str r2, [sp]
	ldr r0, _02386934 ; =_03804520
	mov r1, ip
	ldr r2, _02386938 ; =0x00000107
	bl FUN_037FAB3C
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02386934: .word _03804520
_02386938: .word 0x00000107
	arm_func_end FUN_02386904

	arm_func_start FUN_0238693C
FUN_0238693C: ; 0x0238693C
	stmdb sp!, {r4, lr}
	ldr r0, _023869BC ; =_0239A8B8
	ldr r4, [r0, #0x550]
	ldr r0, _023869C0 ; =_03804520
	ldrh r1, [r4, #0xe6]
	cmp r1, #1
	bne _0238697C
	ldr r1, [r0]
	cmp r1, #0
	beq _02386968
	bl FUN_037FA9C8
_02386968:
	mov r0, #0xd1
	ldr r1, _023869C4 ; =FUN_023864E4
	mov r2, #3
	bl FUN_02386904
	b _023869B4
_0238697C:
	cmp r1, #2
	bne _023869B4
	mov r1, #0
	str r1, [r4, #0x1c]
	ldr r1, [r0]
	cmp r1, #0
	beq _0238699C
	bl FUN_037FA9C8
_0238699C:
	mov r0, #0xc8
	ldr r1, _023869C8 ; =FUN_02386698
	mov r2, #1
	bl FUN_02386904
	mov r0, #0
	str r0, [r4, #0xd8]
_023869B4:
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_023869BC: .word _0239A8B8
_023869C0: .word _03804520
_023869C4: .word FUN_023864E4
_023869C8: .word FUN_02386698
	arm_func_end FUN_0238693C

	arm_func_start FUN_023869CC
FUN_023869CC: ; 0x023869CC
	ldr r0, _023869D8 ; =_03804520
	ldr ip, _023869DC ; =FUN_037FA9C8
	bx ip
	.align 2, 0
_023869D8: .word _03804520
_023869DC: .word FUN_037FA9C8
	arm_func_end FUN_023869CC

	arm_func_start FUN_023869E0
FUN_023869E0: ; 0x023869E0
	ldr r0, _023869EC ; =_03804520
	ldr ip, _023869F0 ; =FUN_037FABD4
	bx ip
	.align 2, 0
_023869EC: .word _03804520
_023869F0: .word FUN_037FABD4
	arm_func_end FUN_023869E0

	arm_func_start FUN_023869F4
FUN_023869F4: ; 0x023869F4
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _02386A2C ; =_0239A8B8
	ldr r1, [r1, #0x550]
	ldrh r1, [r1]
	cmp r1, #9
	bne _02386A20
	ldr r0, [r0, #4]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl FUN_02387B80
_02386A20:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02386A2C: .word _0239A8B8
	arm_func_end FUN_023869F4

	arm_func_start FUN_02386A30
FUN_02386A30: ; 0x02386A30
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _02386A5C ; =_0239A8B8
	ldr r0, [r0, #0x550]
	ldrh r0, [r0]
	cmp r0, #0xa
	bne _02386A50
	bl FUN_02387E84
_02386A50:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02386A5C: .word _0239A8B8
	arm_func_end FUN_02386A30

	arm_func_start FUN_02386A60
FUN_02386A60: ; 0x02386A60
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _02386A98 ; =_0239A8B8
	ldr r1, [r1, #0x550]
	ldrh r1, [r1]
	cmp r1, #9
	bne _02386A8C
	ldr r0, [r0, #4]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl FUN_02387C84
_02386A8C:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02386A98: .word _0239A8B8
	arm_func_end FUN_02386A60

	arm_func_start FUN_02386A9C
FUN_02386A9C: ; 0x02386A9C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r0, _02386C3C ; =_0239A8B8
	ldr r4, [r0, #0x550]
	mov r0, #0
	strh r0, [r4, #0xce]
	mov r0, #1
	strh r0, [r4, #0x88]
	ldrh r0, [r4, #0xc0]
	sub r0, r0, #1
	strh r0, [r4, #0xc0]
	ldrh r0, [r4, #0xc0]
	cmp r0, #0
	bne _02386B0C
	ldrh r1, [r4, #0xbe]
	ldr r0, _02386C40 ; =0x0000FFFF
	cmp r1, r0
	moveq r0, #4
	streqh r0, [r4, #0xbe]
	ldrh r0, [r4, #0xbe]
	and r0, r0, #0xff
	bl FUN_02380524
	bl FUN_023804B0
	strh r0, [r4, #0xbc]
	ldr r0, _02386C40 ; =0x0000FFFF
	strh r0, [r4, #0xbe]
	mov r0, #1
	strh r0, [r4, #0xc0]
_02386B0C:
	ldrh r0, [r4]
	cmp r0, #9
	bne _02386BFC
	bl FUN_037FAD78
	add r1, r4, #0x100
	ldrh r1, [r1, #0x82]
	cmp r1, #0
	bne _02386B3C
	mov r1, #0
	strh r1, [r4, #0x62]
	bl FUN_037FAD8C
	b _02386C30
_02386B3C:
	mov r3, #1
	ldrsh r2, [r4, #0x62]
	cmp r2, #0
	ble _02386B58
	ldrsh r1, [r4, #0x64]
	cmp r1, #0
	movgt r3, #0
_02386B58:
	cmp r2, #0
	movlt r1, #0
	strlth r1, [r4, #0x62]
	ldrsh r2, [r4, #0x62]
	ldrsh r1, [r4, #0x5a]
	add r1, r2, r1
	strh r1, [r4, #0x62]
	ldrsh r1, [r4, #0x62]
	cmp r1, #0x100
	movgt r1, #0x100
	strgth r1, [r4, #0x62]
	ldrh r1, [r4, #0x5c]
	strh r1, [r4, #0x64]
	cmp r3, #0
	beq _02386BB0
	ldrsh r1, [r4, #0x62]
	cmp r1, #0
	ble _02386BB0
	ldrsh r1, [r4, #0x64]
	cmp r1, #0
	movgt r5, #1
	bgt _02386BB4
_02386BB0:
	mov r5, #0
_02386BB4:
	bl FUN_037FAD8C
	cmp r5, #0
	beq _02386BC8
	ldr r0, _02386C40 ; =0x0000FFFF
	bl FUN_02387C84
_02386BC8:
	ldrh r0, [r4, #0x92]
	cmp r0, #1
	bne _02386C30
	ldrh r0, [r4, #0xa0]
	sub r0, r0, #1
	strh r0, [r4, #0xa0]
	ldrh r0, [r4, #0xa0]
	cmp r0, #0
	moveq r0, #1
	streqh r0, [r4, #0x9e]
	moveq r0, #0x3c
	streqh r0, [r4, #0xa0]
	b _02386C30
_02386BFC:
	cmp r0, #0xa
	bne _02386C30
	mov r5, #0
	bl FUN_037FAD78
	ldr r1, [r4, #0x734]
	cmp r1, #1
	movne r5, #1
	movne r1, #0
	strneh r1, [r4, #0x60]
	bl FUN_037FAD8C
	cmp r5, #1
	bne _02386C30
	bl FUN_02387E84
_02386C30:
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_02386C3C: .word _0239A8B8
_02386C40: .word 0x0000FFFF
	arm_func_end FUN_02386A9C

	arm_func_start FUN_02386C44
FUN_02386C44: ; 0x02386C44
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r3
	ands r0, r5, #0x8000
	ldrne r0, _02386CE8 ; =0x00007FFF
	andne r5, r5, r0
	addeq r0, r5, #0x1c
	moveq r0, r0, lsl #2
	addeq r5, r0, #0x66
	mov r0, r2
	bl FUN_037FCCA4
	add r1, r6, #0x22
	mov r1, r1, lsl #2
	add r1, r1, #0x60
	mul r0, r5, r0
	add r0, r0, #0x388
	add r3, r1, r0
	ldr r0, _02386CEC ; =0x04000006
	ldrh r1, [r0]
	sub r0, r4, #2
	subs r4, r0, r1
	bpl _02386CAC
	ldr r0, _02386CF0 ; =0x00000107
_02386CA4:
	adds r4, r4, r0
	bmi _02386CA4
_02386CAC:
	mov r0, #0x7f
	mul r2, r4, r0
	ldr r1, _02386CF4 ; =0x66666667
	smull r0, r4, r1, r2
	mov r4, r4, asr #3
	mov r0, r2, lsr #0x1f
	add r4, r0, r4
	mov r0, #0xa
	mul r0, r4, r0
	cmp r0, r3
	movlo r4, #0
	mov r0, r4, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_02386CE8: .word 0x00007FFF
_02386CEC: .word 0x04000006
_02386CF0: .word 0x00000107
_02386CF4: .word 0x66666667
	arm_func_end FUN_02386C44

	arm_func_start FUN_02386CF8
FUN_02386CF8: ; 0x02386CF8
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x2c
	str r0, [sp]
	mov sl, r2
	movs sb, r3
	ldr r0, [sp, #0x60]
	str r0, [sp, #0x60]
	ldr r0, _02386F8C ; =_0239A8B8
	ldr r8, [r0, #0x550]
	addeq sp, sp, #0x2c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldrh r0, [r8, #0x3e]
	cmp sb, r0
	addhi sp, sp, #0x2c
	ldmhiia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addhi sp, sp, #0x10
	bxhi lr
	add r0, r8, #0x100
	ldrh r1, [r0, #0x88]
	ldr r0, [sp]
	cmp r0, r1
	addeq sp, sp, #0x2c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addeq sp, sp, #0x10
	bxeq lr
	cmp r0, #0x10
	addhs sp, sp, #0x2c
	ldmhsia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addhs sp, sp, #0x10
	bxhs lr
	ands r0, sb, #1
	addne sp, sp, #0x2c
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addne sp, sp, #0x10
	bxne lr
	mov r0, #1
	str r0, [sp, #4]
	cmp sb, #0
	addle sp, sp, #0x2c
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addle sp, sp, #0x10
	bxle lr
	add r1, r8, #0x1f8
	ldr r0, [sp]
	add fp, r1, r0, lsl #4
	mov r4, #0
	mov r0, #0x200
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #2
	str r0, [sp, #0x18]
	mov r0, #0x82
	str r0, [sp, #0x20]
	mov r0, #0x15
	str r0, [sp, #0x24]
	ldr r0, [sp, #4]
	str r0, [sp, #0x1c]
_02386DF0:
	ldr r5, _02386F90 ; =0x0000FFFF
	ldr r0, [sp, #4]
	cmp r0, #1
	streq r4, [sp, #4]
	addeq r0, sp, #0x54
	movne r0, sl
	addne sl, sl, #2
	subne sb, sb, #2
	ldrh r1, [r0]
	and r0, r1, #0xff
	movs r7, r0, lsl #1
	ldreq r7, [sp, #0xc]
	ands r0, r1, #0x1000
	ldrne r2, [sp, #0x10]
	moveq r2, r4
	ands r0, r1, #0x800
	ldrne r3, [sp, #0x14]
	moveq r3, r4
	cmp r2, #0
	ldrne r6, [sp, #0x18]
	moveq r6, r4
	cmp r3, #0
	ldrne r0, [sp, #0x18]
	moveq r0, r4
	add r0, r7, r0
	add r0, r0, r6
	subs sb, sb, r0
	addmi sp, sp, #0x2c
	ldmmiia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addmi sp, sp, #0x10
	bxmi lr
	and r1, r1, #0xf00
	mov r1, r1, lsl #8
	mov r6, r1, lsr #0x10
	str sl, [sp, #8]
	add r1, sl, r7
	add sl, sl, r0
	cmp r3, #1
	bne _02386ECC
	and r0, r6, #7
	mov r3, r0, lsl #1
	add r0, fp, r0, lsl #1
	ldrh ip, [fp, r3]
	ldrh r5, [r1], #2
	ands r3, ip, #1
	movne r3, r5, lsl #1
	strneh r3, [r0]
	bne _02386ECC
	mov r5, r5, lsl #1
	sub r3, ip, r5
	mov r3, r3, lsl #0x10
	mov r3, r3, lsr #0x10
	cmp r3, #0x100
	blo _02386F74
	strh r5, [r0]
_02386ECC:
	cmp r2, #1
	bne _02386EF0
	ldrh r2, [r1]
	add r0, r8, #0x100
	ldrh r1, [r0, #0x88]
	ldr r0, [sp, #0x1c]
	mov r0, r0, lsl r1
	ands r0, r2, r0
	beq _02386F74
_02386EF0:
	cmp r7, #0
	ble _02386F74
	bl FUN_03801E40
	ldr r1, [sp, #0x20]
	strh r1, [r0]
	strh r4, [r0, #2]
	ldr r1, [sp, #0x24]
	strh r1, [r0, #4]
	strh r6, [r0, #6]
	ldr r1, [sp, #0x60]
	str r1, [r0, #8]
	ldr r1, [sp, #8]
	str r1, [r0, #0xc]
	strh r7, [r0, #0x10]
	ldr r1, [sp]
	strh r1, [r0, #0x12]
	add r1, r8, #0x100
	ldrh r2, [r1, #0x88]
	strh r2, [r0, #0x20]
	strh r5, [r0, #0x1a]
	ldrh r2, [r8, #0x30]
	ldrh r3, [r8, #0x32]
	ldrh r1, [r1, #0x88]
	cmp r1, #0
	moveq r1, r2
	movne r1, r3
	strh r1, [r0, #0x40]
	add r1, r8, #0x100
	ldrh r1, [r1, #0x88]
	cmp r1, #0
	movne r3, r2
	strh r3, [r0, #0x42]
	bl FUN_03801E9C
_02386F74:
	cmp sb, #0
	bgt _02386DF0
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_02386F8C: .word _0239A8B8
_02386F90: .word 0x0000FFFF
	arm_func_end FUN_02386CF8

	arm_func_start FUN_02386F94
FUN_02386F94: ; 0x02386F94
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	ldr r1, _02387194 ; =_0239A8B8
	ldr r6, [r1, #0x550]
	add sb, r6, #0x2f8
	mvn r1, r0
	add r0, r6, #0x100
	ldrh r0, [r0, #0x82]
	and r0, r1, r0
	str r0, [sp, #8]
	ldr r0, _02387198 ; =0x0000071C
	add r0, r6, r0
	bl FUN_037F99A8
	mov r0, #0
	str r0, [sp]
	ldr r0, _0238719C ; =0x0000070C
	add r0, r6, r0
	str r0, [sp, #0xc]
	mov r0, #0x81
	str r0, [sp, #0x14]
	ldr r0, [sp]
	str r0, [sp, #0x18]
	mov r0, #0x14
	str r0, [sp, #0x1c]
	ldr r4, _023871A0 ; =0x0000FFFF
	ldr r0, [sp]
	str r0, [sp, #0x10]
_02387000:
	ldr r0, [sp, #0x10]
	str r0, [sp, #4]
	ldr r5, [sp, #0xc]
_0238700C:
	mov fp, r5
	mov r8, r4
	ldrh sl, [r5]
	cmp sl, r4
	beq _02387150
_02387020:
	add r7, sb, sl, lsl #5
	ldrh r1, [r7, #6]
	ldr r0, [sp, #8]
	and r0, r1, r0
	strh r0, [r7, #6]
	ldrh r1, [r7, #0xa]
	ldr r0, [sp, #8]
	and r0, r1, r0
	strh r0, [r7, #0xa]
	ldrh r0, [r7, #6]
	cmp r0, #0
	bne _02387128
	bl FUN_03801E40
	ldr r1, [sp, #0x14]
	strh r1, [r0]
	ldr r1, [sp, #0x18]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x1c]
	strh r1, [r0, #8]
	ldrh r1, [r7, #2]
	strh r1, [r0, #0xa]
	ldrh r1, [r7, #4]
	strh r1, [r0, #0xc]
	ldrh r1, [r7, #6]
	strh r1, [r0, #0xe]
	ldrh r1, [r7, #8]
	strh r1, [r0, #0x10]
	ldrh r1, [r7, #0xe]
	strh r1, [r0, #0x18]
	ldr r1, [r7, #0x14]
	str r1, [r0, #0x14]
	ldr r1, [r7, #0x18]
	str r1, [r0, #0x1c]
	ldr r1, [r7, #0x1c]
	str r1, [r0, #0x20]
	ldrh r1, [r7, #0x10]
	strh r1, [r0, #0x1a]
	ldrh r1, [r6, #0x30]
	ldrh r2, [r6, #0x32]
	add r3, r6, #0x100
	ldrh r3, [r3, #0x88]
	cmp r3, #0
	moveq r3, r1
	movne r3, r2
	strh r3, [r0, #0x24]
	add r3, r6, #0x100
	ldrh r3, [r3, #0x88]
	cmp r3, #0
	movne r2, r1
	strh r2, [r0, #0x26]
	bl FUN_03801E9C
	ldrh r0, [r7]
	cmp r0, r4
	streqh r8, [r5, #2]
	ldrh r0, [r7]
	strh r0, [fp]
	strh r4, [r7]
	add r0, r6, #0x600
	ldrh r1, [r0, #0xfa]
	cmp r1, r4
	streqh sl, [r0, #0xf8]
	movne r0, r1, lsl #5
	strneh sl, [sb, r0]
	add r0, r6, #0x600
	strh sl, [r0, #0xfa]
	mov sl, r8
_02387128:
	cmp sl, r4
	addne fp, sb, sl, lsl #5
	moveq fp, r5
	mov r8, sl
	cmp sl, r4
	movne r0, sl, lsl #5
	ldrneh sl, [sb, r0]
	ldreqh sl, [r5]
	cmp sl, r4
	bne _02387020
_02387150:
	add r5, r5, #4
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	blt _0238700C
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #2
	blt _02387000
	ldr r0, _02387198 ; =0x0000071C
	add r0, r6, r0
	bl FUN_037F9938
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_02387194: .word _0239A8B8
_02387198: .word 0x0000071C
_0238719C: .word 0x0000070C
_023871A0: .word 0x0000FFFF
	arm_func_end FUN_02386F94

	arm_func_start FUN_023871A4
FUN_023871A4: ; 0x023871A4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x2c
	str r0, [sp]
	mov r4, r1
	ldr r0, _023874D8 ; =_0239A8B8
	ldr r6, [r0, #0x550]
	add sl, r6, #0x2f8
	mov r0, #0
	str r0, [sp, #8]
	ldrh r0, [r6]
	cmp r0, #9
	moveq r5, #1
	beq _023871F4
	cmp r0, #0xa
	ldreq r5, [sp, #8]
	beq _023871F4
	ldr r0, [sp, #8]
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_023871F4:
	ldr r0, _023874DC ; =0x0000071C
	add r0, r6, r0
	bl FUN_037F99A8
	ldr r0, [r6, #0x734]
	cmp r0, #0
	bne _02387228
	ldr r0, _023874DC ; =0x0000071C
	add r0, r6, r0
	bl FUN_037F9938
	mov r0, #0
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_02387228:
	cmp r5, #0
	moveq fp, #1
	beq _02387244
	bl FUN_037FAD78
	add r1, r6, #0x100
	ldrh fp, [r1, #0x82]
	bl FUN_037FAD8C
_02387244:
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _023874E0 ; =0x000006FC
	add r8, r6, r0
	mvn r0, r4
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x18]
	ldr r4, _023874E4 ; =0x0000FFFF
	ldr r0, [sp, #4]
	str r0, [sp, #0x14]
	mov r0, #0x81
	str r0, [sp, #0x1c]
	mov r0, #0xf
	str r0, [sp, #0x24]
	ldr r0, [sp, #4]
	str r0, [sp, #0x20]
	mov r0, #0x14
	str r0, [sp, #0x28]
_02387290:
	mov r5, r4
	str r4, [sp, #0xc]
	ldrh sb, [r8]
	cmp sb, r4
	beq _0238745C
_023872A4:
	add r7, sl, sb, lsl #5
	ldr r0, [sp]
	cmp r0, #0
	bne _023872E0
	ldrh r2, [r7, #8]
	ldrh r1, [r7, #0xa]
	ldr r0, [sp, #0x10]
	and r0, r1, r0
	orr r0, r2, r0
	strh r0, [r7, #8]
	ldrh r1, [r7, #6]
	ldrh r0, [r7, #8]
	mvn r0, r0
	and r0, r1, r0
	strh r0, [r7, #6]
_023872E0:
	ldrh r0, [r7, #6]
	and r0, r0, fp
	strh r0, [r7, #6]
	ldr r0, [sp, #0x14]
	strh r0, [r7, #0xa]
	ldrh r0, [r7, #6]
	cmp r0, #0
	beq _0238736C
	ldrh r0, [r7, #2]
	ands r0, r0, #8
	bne _02387318
	ldrh r0, [r7, #0x12]
	cmp r0, #0
	beq _0238736C
_02387318:
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldrh r0, [r7, #0x12]
	cmp r0, #0
	subne r0, r0, #1
	strneh r0, [r7, #0x12]
	ldrh r0, [r7]
	cmp r0, r4
	streqh r4, [r8, #2]
	ldrh r0, [r7]
	strh r0, [r8]
	strh r4, [r7]
	cmp r5, r4
	moveq r0, sb, lsl #0x10
	moveq r0, r0, lsr #0x10
	streq r0, [sp, #0xc]
	movne r0, r5, lsl #5
	strneh sb, [sl, r0]
	mov r0, sb, lsl #0x10
	mov r5, r0, lsr #0x10
	b _02387450
_0238736C:
	bl FUN_03801E40
	ldr r1, [sp, #0x1c]
	strh r1, [r0]
	ldrh r1, [r7, #6]
	cmp r1, #0
	ldreq r1, [sp, #0x20]
	streqh r1, [r0, #2]
	ldrne r1, [sp, #0x24]
	strneh r1, [r0, #2]
	ldr r1, [sp, #0x28]
	strh r1, [r0, #8]
	ldrh r1, [r7, #2]
	strh r1, [r0, #0xa]
	ldrh r1, [r7, #4]
	strh r1, [r0, #0xc]
	ldrh r1, [r7, #6]
	strh r1, [r0, #0xe]
	ldrh r1, [r7, #8]
	strh r1, [r0, #0x10]
	ldrh r1, [r7, #0xe]
	strh r1, [r0, #0x18]
	ldr r1, [r7, #0x14]
	str r1, [r0, #0x14]
	ldr r1, [r7, #0x18]
	str r1, [r0, #0x1c]
	ldr r1, [r7, #0x1c]
	str r1, [r0, #0x20]
	ldrh r1, [r7, #0x10]
	strh r1, [r0, #0x1a]
	ldrh r1, [r6, #0x30]
	ldrh r2, [r6, #0x32]
	add r3, r6, #0x100
	ldrh r3, [r3, #0x88]
	cmp r3, #0
	moveq r3, r1
	movne r3, r2
	strh r3, [r0, #0x24]
	add r3, r6, #0x100
	ldrh r3, [r3, #0x88]
	cmp r3, #0
	movne r2, r1
	strh r2, [r0, #0x26]
	bl FUN_03801E9C
	ldrh r0, [r7]
	cmp r0, r4
	streqh r4, [r8, #2]
	ldrh r0, [r7]
	strh r0, [r8]
	strh r4, [r7]
	add r0, r6, #0x600
	ldrh r1, [r0, #0xfa]
	cmp r1, r4
	streqh sb, [r0, #0xf8]
	movne r0, r1, lsl #5
	strneh sb, [sl, r0]
	add r0, r6, #0x600
	strh sb, [r0, #0xfa]
_02387450:
	ldrh sb, [r8]
	cmp sb, r4
	bne _023872A4
_0238745C:
	cmp r5, r4
	beq _0238749C
	ldr r0, [sp, #4]
	add r0, r6, r0, lsl #2
	add r0, r0, #0x700
	ldrh r2, [r0, #0xc]
	mov r1, r5, lsl #5
	strh r2, [sl, r1]
	ldrh r1, [r0, #0xe]
	cmp r1, r4
	streqh r5, [r0, #0xe]
	ldr r0, [sp, #4]
	add r0, r6, r0, lsl #2
	add r1, r0, #0x700
	ldr r0, [sp, #0xc]
	strh r0, [r1, #0xc]
_0238749C:
	add r8, r8, #4
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	blt _02387290
	mov r0, #0
	str r0, [r6, #0x734]
	ldr r0, _023874DC ; =0x0000071C
	add r0, r6, r0
	bl FUN_037F9938
	ldr r0, [sp, #8]
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_023874D8: .word _0239A8B8
_023874DC: .word 0x0000071C
_023874E0: .word 0x000006FC
_023874E4: .word 0x0000FFFF
	arm_func_end FUN_023871A4

	arm_func_start FUN_023874E8
FUN_023874E8: ; 0x023874E8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	mov r8, r0
	mov r7, r2
	mov r6, r3
	ldr r0, _02387634 ; =_0239A8B8
	ldr sb, [r0, #0x550]
	add r5, sb, #0x2f8
	ldr r0, _02387638 ; =0x0000070C
	add r0, sb, r0
	add r4, r0, r1, lsl #2
	ldrh r0, [sp, #0x24]
	cmp r0, #0
	moveq r0, #6
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bxeq lr
	ands r0, r7, #8
	movne r1, #2
	moveq r1, #0
	ldrh r0, [sp, #0x24]
	add r1, r0, r1
	ldrh r0, [sb, #0x3c]
	cmp r1, r0
	movgt r0, #6
	addgt sp, sp, #4
	ldmgtia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bxgt lr
	ldr r0, _0238763C ; =0x0000071C
	add r0, sb, r0
	bl FUN_037F99A8
	add r2, sb, #0x600
	ldrh r0, [r2, #0xf8]
	ldr r3, _02387640 ; =0x0000FFFF
	cmp r0, r3
	bne _02387594
	ldr r0, _0238763C ; =0x0000071C
	add r0, sb, r0
	bl FUN_037F9938
	mov r0, #0xa
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
_02387594:
	mov ip, r0, lsl #5
	add r1, r5, r0, lsl #5
	ldrh ip, [r5, ip]
	strh ip, [r2, #0xf8]
	ldrh ip, [r2, #0xfa]
	cmp ip, r0
	streqh r3, [r2, #0xfa]
	strh r7, [r1, #2]
	strh r6, [r1, #4]
	and r2, r6, r8
	strh r2, [r1, #6]
	mov r2, #0
	strh r2, [r1, #8]
	strh r2, [r1, #0xa]
	ldr r2, [sp, #0x20]
	str r2, [r1, #0x14]
	ldrh r2, [sp, #0x24]
	strh r2, [r1, #0xe]
	ldr r2, [sp, #0x28]
	str r2, [r1, #0x18]
	ldr r2, [sp, #0x2c]
	str r2, [r1, #0x1c]
	ldr r3, _02387640 ; =0x0000FFFF
	strh r3, [r1]
	strh r3, [r1, #0x10]
	ldrh r2, [sb, #0x98]
	strh r2, [r1, #0x12]
	ldrh r1, [r4, #2]
	cmp r1, r3
	streqh r0, [r4]
	movne r1, r1, lsl #5
	strneh r0, [r5, r1]
	strh r0, [r4, #2]
	ldr r0, _0238763C ; =0x0000071C
	add r0, sb, r0
	bl FUN_037F9938
	mov r0, #2
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	.align 2, 0
_02387634: .word _0239A8B8
_02387638: .word 0x0000070C
_0238763C: .word 0x0000071C
_02387640: .word 0x0000FFFF
	arm_func_end FUN_023874E8

	arm_func_start FUN_02387644
FUN_02387644: ; 0x02387644
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x64
	mov sl, r3
	ldr r3, [sp, #0x88]
	str r3, [sp, #0x88]
	ldr r3, [sp, #0x8c]
	str r3, [sp, #0x8c]
	ldr r3, _02387B68 ; =_0239A8B8
	ldr r3, [r3, #0x550]
	str r3, [sp, #0x38]
	ldrh r8, [r3, #0x38]
	ldr r7, [r3, #0x7c]
	ldrh r4, [r3, #0x80]
	add r3, r8, #0x1f
	bic r3, r3, #0x1f
	cmp r4, r3
	movlt r0, #1
	addlt sp, sp, #0x64
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxlt lr
	ldr r3, [sp, #0x38]
	add r3, r3, #0x100
	ldrh r3, [r3, #0x88]
	cmp r3, #0x10
	movhs r0, #1
	addhs sp, sp, #0x64
	ldmhsia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxhs lr
	ldr r3, [sp, #0x38]
	ldrh r3, [r3]
	cmp r3, #9
	moveq r3, #1
	streq r3, [sp, #0x10]
	beq _023876EC
	cmp r3, #0xa
	moveq r3, #0
	streq r3, [sp, #0x10]
	beq _023876EC
	mov r0, #1
	add sp, sp, #0x64
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_023876EC:
	mov r3, #0
	str r3, [sp, #0x14]
	strh r3, [sl]
	mov r4, r3
	ldr r3, [sp, #0x88]
	str r4, [r3]
	ldr r4, [sp, #0x14]
	ldr r3, [sp, #0x8c]
	str r4, [r3]
	mov r6, r4
	cmp r8, #0
	movlt r0, #1
	addlt sp, sp, #0x64
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxlt lr
	str r2, [sp, #0x1c]
	mov r3, #1
	str r3, [sp, #0x18]
	ldr r3, [sp, #0x10]
	cmp r3, #0
	beq _0238775C
	ldr r3, [sp, #0x38]
	ldrh r3, [r3, #0x92]
	cmp r3, #0
	strne r1, [sp, #0x1c]
	movne r1, r4
	strne r1, [sp, #0x18]
	b _02387764
_0238775C:
	mov r1, r4
	str r1, [sp, #0x18]
_02387764:
	and r4, r2, r0
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r1, _02387B6C ; =0x0000071C
	ldr r0, [sp, #0x38]
	add r0, r0, r1
	bl FUN_037F99A8
	ldr r0, [sp, #0x38]
	ldr r0, [r0, #0x734]
	cmp r0, #1
	bne _023877B8
	ldr r1, _02387B6C ; =0x0000071C
	ldr r0, [sp, #0x38]
	add r0, r0, r1
	bl FUN_037F9938
	mov r0, #1
	add sp, sp, #0x64
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_023877B8:
	mov r1, #1
	str r1, [sp, #0x40]
	ldr r0, [sp, #0x38]
	str r1, [r0, #0x734]
	add r0, r0, #0x2f8
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0x24]
	ldr r1, _02387B70 ; =0x0000070C
	ldr r0, [sp, #0x38]
	add fp, r0, r1
	ldr r1, _02387B74 ; =0x000006FC
	add r0, r0, r1
	str r0, [sp, #0x28]
	mvn r0, r4
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	str r0, [sp, #0x50]
	mov r0, #2
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x54]
	str r0, [sp, #0x58]
	str r0, [sp, #0x5c]
	str r0, [sp, #0x60]
	b _02387B20
_02387828:
	str fp, [sp, #0x2c]
	ldr r0, _02387B78 ; =0x0000FFFF
	str r0, [sp, #0x30]
	ldrh sb, [fp]
	b _02387AF0
_0238783C:
	ldr r0, [sp, #0x20]
	add r5, r0, sb, lsl #5
	ldrh r0, [r5, #2]
	ldr r1, [sp, #0x40]
	mov r1, r1, lsl r0
	str r1, [sp, #0x34]
	ldr r2, [sp, #8]
	ands r1, r2, r1
	bne _02387ABC
	ldr r1, [sp, #0x34]
	orr r1, r2, r1
	str r1, [sp, #8]
	ldrh r2, [r5, #6]
	ldr r1, [sp, #0x1c]
	and r4, r2, r1
	ldr r1, [sp, #0x18]
	cmp r1, #0
	beq _02387890
	ldr r1, [sp, #0x3c]
	ands r1, r4, r1
	bne _02387ABC
_02387890:
	ands r0, r0, #8
	ldrne r0, [sp, #0x40]
	strne r0, [sp, #4]
	ldreq r0, [sp, #0x44]
	streq r0, [sp, #4]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _023878C8
	orr r1, r4, #1
	ldr r0, _02387B78 ; =0x0000FFFF
	cmp r1, r0
	ldrne r0, [sp, #0x40]
	strne r0, [sp]
	bne _023878D0
_023878C8:
	ldr r0, [sp, #0x48]
	str r0, [sp]
_023878D0:
	ldrh r0, [r5, #0xe]
	and r1, r0, #1
	cmp r1, #1
	addeq r0, r0, #1
	streqh r0, [r5, #0xe]
	ldr r0, [sp, #4]
	cmp r0, #0
	ldrne r0, [sp, #0x4c]
	ldreq r0, [sp, #0x50]
	ldr r1, [sp, #0xc]
	cmp r1, #0
	ldrne r3, [sp, #0x54]
	ldreq r3, [sp, #0x4c]
	ldr r1, [sp]
	cmp r1, #0
	ldrne r1, [sp, #0x4c]
	ldreq r1, [sp, #0x58]
	ldrh r2, [r5, #0xe]
	add r2, r2, r3
	add r0, r2, r0
	add r0, r1, r0
	cmp r0, r8
	bgt _02387ABC
	ldr r0, [sp, #0xc]
	cmp r0, #0
	moveq sl, r7
	ldreq r0, [sp, #0x5c]
	streqh r0, [r7], #2
	addeq r6, r6, #2
	subeq r8, r8, #2
	ldrh r0, [sl]
	ldrh r1, [r5, #2]
	mov r1, r1, lsl #8
	and r2, r1, #0xf00
	ldrh r1, [r5, #0xe]
	mov r1, r1, lsr #1
	and r1, r1, #0xff
	orr r1, r2, r1
	orr r0, r0, r1
	strh r0, [sl]
	ldr r0, [r5, #0x14]
	mov r1, r7
	ldrh r2, [r5, #0xe]
	bl FUN_037FAF50
	ldrh r1, [r5, #0xe]
	bic r0, r1, #1
	add r7, r7, r0
	add r6, r6, r1
	sub r8, r8, r1
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _023879FC
	ldrh r1, [r5, #0x10]
	ands r0, r1, #1
	moveq r2, r1, asr #1
	beq _023879E8
	ldr r0, [sp, #0x38]
	add r0, r0, #0x100
	ldrh r2, [r0, #0x88]
	ldrh r0, [r5, #2]
	and r1, r0, #7
	ldr r0, [sp, #0x38]
	add r0, r0, r2, lsl #4
	add r0, r0, r1, lsl #1
	add r0, r0, #0x100
	ldrh r2, [r0, #0xf8]
	add r1, r2, #1
	strh r1, [r0, #0xf8]
	mov r0, r2, lsl #1
	strh r0, [r5, #0x10]
_023879E8:
	ldr r0, _02387B7C ; =0x00007FFF
	and r0, r2, r0
	strh r0, [r7], #2
	add r6, r6, #2
	sub r8, r8, #2
_023879FC:
	ldr r0, [sp]
	cmp r0, #1
	bne _02387A20
	ldrh r0, [sl]
	orr r0, r0, #0x1000
	strh r0, [sl]
	strh r4, [r7], #2
	add r6, r6, #2
	sub r8, r8, #2
_02387A20:
	ldr r0, [sp, #0xc]
	cmp r0, #1
	ldreq r0, [sp, #0x60]
	streq r0, [sp, #0xc]
	ldrh r0, [fp, #2]
	cmp r0, sb
	ldreq r0, [sp, #0x30]
	streqh r0, [fp, #2]
	ldrh r1, [r5]
	ldr r0, [sp, #0x2c]
	strh r1, [r0]
	ldr r0, _02387B78 ; =0x0000FFFF
	strh r0, [r5]
	ldr r0, [sp, #0x28]
	ldrh r1, [r0, #2]
	ldr r0, _02387B78 ; =0x0000FFFF
	cmp r1, r0
	ldreq r0, [sp, #0x28]
	streqh sb, [r0]
	movne r1, r1, lsl #5
	ldrne r0, [sp, #0x20]
	strneh sb, [r0, r1]
	ldr r0, [sp, #0x28]
	strh sb, [r0, #2]
	strh r4, [r5, #0xa]
	ldr r0, [sp, #0x34]
	mvn r1, r0
	ldr r0, [sp, #8]
	and r0, r0, r1
	str r0, [sp, #8]
	ldrh r1, [r5, #4]
	ldr r0, [sp, #0x14]
	orr r0, r0, r1
	str r0, [sp, #0x14]
	ldr sb, [sp, #0x30]
	ldr r0, [sp, #0x38]
	ldrh r0, [r0, #0x94]
	cmp r0, #1
	beq _02387B34
_02387ABC:
	ldr r0, _02387B78 ; =0x0000FFFF
	cmp sb, r0
	ldrne r0, [sp, #0x20]
	addne r0, r0, sb, lsl #5
	strne r0, [sp, #0x2c]
	streq fp, [sp, #0x2c]
	str sb, [sp, #0x30]
	ldr r0, _02387B78 ; =0x0000FFFF
	cmp sb, r0
	movne r1, sb, lsl #5
	ldrne r0, [sp, #0x20]
	ldrneh sb, [r0, r1]
	ldreqh sb, [fp]
_02387AF0:
	ldr r0, _02387B78 ; =0x0000FFFF
	cmp sb, r0
	beq _02387B04
	cmp r8, #2
	bgt _0238783C
_02387B04:
	add fp, fp, #4
	ldr r0, [sp, #0x28]
	add r0, r0, #4
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0x24]
_02387B20:
	ldr r0, [sp, #0x24]
	cmp r0, #4
	bhs _02387B34
	cmp r8, #2
	bgt _02387828
_02387B34:
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x88]
	str r1, [r0]
	ldr r0, [sp, #0x8c]
	str r6, [r0]
	ldr r1, _02387B6C ; =0x0000071C
	ldr r0, [sp, #0x38]
	add r0, r0, r1
	bl FUN_037F9938
	mov r0, #0
	add sp, sp, #0x64
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_02387B68: .word _0239A8B8
_02387B6C: .word 0x0000071C
_02387B70: .word 0x0000070C
_02387B74: .word 0x000006FC
_02387B78: .word 0x0000FFFF
_02387B7C: .word 0x00007FFF
	arm_func_end FUN_02387644

	arm_func_start FUN_02387B80
FUN_02387B80: ; 0x02387B80
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x218
	mov r7, r0
	ldr r0, _02387C78 ; =_0239A8B8
	ldr r4, [r0, #0x550]
	bl FUN_037FAD78
	bl FUN_037FAD8C
	ldr r0, _02387C7C ; =0x048080F8
	ldrh r6, [r0]
	ldrh r5, [r4, #0x6a]
	add r0, r4, #0x100
	ldrh r0, [r0, #0x82]
	and r7, r7, r0
	ldrh r8, [r4, #0x3a]
	mov r0, r7
	bl FUN_037FCCA4
	ldrh r2, [r4, #0x72]
	add r1, r8, #0xc
	mul r0, r1, r0
	add r0, r0, #0x29
	bic r0, r0, #0x1f
	cmp r2, r0
	bge _02387BF4
	mov r0, #2
	bl FUN_037F8D30
	bl FUN_023819E8
	add sp, sp, #0x218
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
_02387BF4:
	ldrsh r0, [r4, #0x62]
	cmp r0, #1
	beq _02387C0C
	ldrsh r0, [r4, #0x64]
	cmp r0, #1
	bne _02387C28
_02387C0C:
	ldrh r0, [r4, #0x6e]
	ldrh r1, [r4, #0x6c]
	mov r2, r7
	ldrh r3, [r4, #0x40]
	bl FUN_02386C44
	orr r5, r5, #0x8000
	b _02387C30
_02387C28:
	mov r0, #0
	bic r5, r5, #0x8000
_02387C30:
	mov r1, r7, lsl #0x10
	mov r1, r1, lsr #0x10
	str r1, [sp]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	mov r0, r5, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	add r0, sp, #0x18
	ldr r1, _02387C80 ; =0x0000800C
	mov r3, r2
	bl FUN_0238293C
	add sp, sp, #0x218
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_02387C78: .word _0239A8B8
_02387C7C: .word 0x048080F8
_02387C80: .word 0x0000800C
	arm_func_end FUN_02387B80

	arm_func_start FUN_02387C84
FUN_02387C84: ; 0x02387C84
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x228
	mov r8, r0
	ldr r0, _02387E74 ; =_0239A8B8
	ldr r4, [r0, #0x550]
	bl FUN_037FAD78
	add r1, r4, #0x100
	ldrh r7, [r1, #0x82]
	ldrh r6, [r4, #0x86]
	bl FUN_037FAD8C
	mov r1, #0
	strh r1, [sp, #0x18]
	ldrh r0, [r4, #0x88]
	cmp r0, #1
	ldreq r8, _02387E78 ; =0x0000FFFF
	streqh r1, [r4, #0x88]
	ldrh r0, [r4, #0x9e]
	cmp r0, #0
	bne _02387DBC
	ldrh r5, [r4, #0x3a]
	add r0, sp, #0x1c
	str r0, [sp]
	add r0, sp, #0x20
	str r0, [sp, #4]
	mov r0, r8
	mov r1, r7
	mov r2, r6
	add r3, sp, #0x18
	bl FUN_02387644
	cmp r0, #1
	moveq r0, #0
	streqh r0, [r4, #0x62]
	streqh r0, [r4, #0x64]
	addeq sp, sp, #0x228
	ldmeqia sp!, {r4, r5, r6, r7, r8, lr}
	bxeq lr
	add r6, r5, #2
	ldrh r0, [r4, #0x92]
	cmp r0, #1
	ldreq r8, [sp, #0x1c]
	and r8, r8, r7
	mov r0, r8
	bl FUN_037FCCA4
	ldrh r2, [r4, #0x72]
	add r1, r5, #0xc
	mul r0, r1, r0
	add r0, r0, #0x29
	bic r0, r0, #0x1f
	cmp r2, r0
	bge _02387D74
	mov r0, #0
	mov r1, r8, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_023871A4
	mov r0, #0
	strh r0, [r4, #0x62]
	strh r0, [r4, #0x64]
	add sp, sp, #0x228
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
_02387D74:
	ldrsh r0, [r4, #0x62]
	cmp r0, #1
	beq _02387D8C
	ldrsh r0, [r4, #0x64]
	cmp r0, #1
	bne _02387DB4
_02387D8C:
	ldr r0, [sp, #0x20]
	mov r1, r6
	mov r2, r8
	ldrh r3, [r4, #0x40]
	bl FUN_02386C44
	mov r5, r0
	ldrh r0, [sp, #0x18]
	orr r0, r0, #0x8000
	strh r0, [sp, #0x18]
	b _02387DFC
_02387DB4:
	mov r5, #0
	b _02387DFC
_02387DBC:
	mov r5, #0
	strh r5, [r4, #0x9e]
	mov r8, r7
	ldr r6, _02387E7C ; =0x000080D6
	str r5, [sp, #0x20]
	ldrh r0, [sp, #0x18]
	bic r0, r0, #0x8000
	strh r0, [sp, #0x18]
	bl FUN_037FAD78
	ldrsh r1, [r4, #0x62]
	add r1, r1, #1
	strh r1, [r4, #0x62]
	ldrsh r1, [r4, #0x64]
	add r1, r1, #1
	strh r1, [r4, #0x64]
	bl FUN_037FAD8C
_02387DFC:
	mov r0, r8, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [sp]
	str r5, [sp, #4]
	ldr r0, _02387E80 ; =0x048080F8
	ldrh r0, [r0]
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [sp, #0xc]
	ldrh r0, [sp, #0x18]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x7c]
	str r0, [sp, #0x14]
	add r0, sp, #0x24
	mov r1, #0
	mov r2, r1
	mov r3, r6, lsl #0x10
	mov r3, r3, lsr #0x10
	bl FUN_0238293C
	strh r8, [r4, #0x68]
	ldrh r0, [sp, #0x18]
	strh r0, [r4, #0x6a]
	strh r6, [r4, #0x6c]
	ldr r0, [sp, #0x20]
	strh r0, [r4, #0x6e]
	add sp, sp, #0x228
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_02387E74: .word _0239A8B8
_02387E78: .word 0x0000FFFF
_02387E7C: .word 0x000080D6
_02387E80: .word 0x048080F8
	arm_func_end FUN_02387C84

	arm_func_start FUN_02387E84
FUN_02387E84: ; 0x02387E84
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x218
	ldr r0, _02387F50 ; =_0239A8B8
	ldr r4, [r0, #0x550]
	add r0, r4, #0x100
	ldrh r0, [r0, #0x82]
	cmp r0, #0
	addeq sp, sp, #0x218
	ldmeqia sp!, {r4, lr}
	bxeq lr
	mov r0, #1
	strh r0, [r4, #0x8a]
	mov r1, #0
	strh r1, [sp, #8]
	add r1, sp, #0xc
	str r1, [sp]
	add r1, sp, #0x10
	str r1, [sp, #4]
	mov r1, r0
	mov r2, r0
	add r3, sp, #8
	bl FUN_02387644
	cmp r0, #1
	moveq r0, #0
	streqh r0, [r4, #0x8a]
	addeq sp, sp, #0x218
	ldmeqia sp!, {r4, lr}
	bxeq lr
	ldr r0, [r4, #0x1c]
	cmp r0, #1
	ldreqh r0, [sp, #8]
	orreq r0, r0, #0x8000
	streqh r0, [sp, #8]
	add r0, sp, #0x14
	ldr r1, [sp, #0x10]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	ldrh r2, [sp, #8]
	ldr r3, [r4, #0x7c]
	bl FUN_023829D8
	ldrh r0, [r0, #4]
	cmp r0, #0
	addeq sp, sp, #0x218
	ldmeqia sp!, {r4, lr}
	bxeq lr
	cmp r0, #8
	movne r0, #0
	strneh r0, [r4, #0x8a]
	add sp, sp, #0x218
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02387F50: .word _0239A8B8
	arm_func_end FUN_02387E84

	arm_func_start FUN_02387F54
FUN_02387F54: ; 0x02387F54
	stmdb sp!, {r4, lr}
	ldr r0, _02388008 ; =_0239A8B8
	ldr r4, [r0, #0x550]
	ldr r0, _0238800C ; =0x0000071C
	add r0, r4, r0
	bl FUN_037F99A8
	mov r0, #0
	add r1, r4, #0x2f8
	mov r2, #0x400
	bl FUN_037FAF38
	mov r2, #0
_02387F80:
	add r0, r2, #1
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	add r0, r4, r2, lsl #5
	add r0, r0, #0x200
	strh r1, [r0, #0xf8]
	mov r2, r1
	cmp r1, #0x1f
	blo _02387F80
	ldr r2, _02388010 ; =0x0000FFFF
	add r0, r4, r1, lsl #5
	add r0, r0, #0x200
	strh r2, [r0, #0xf8]
	mov r3, #0
	add r0, r4, #0x600
	strh r3, [r0, #0xf8]
	strh r1, [r0, #0xfa]
_02387FC4:
	add r1, r4, r3, lsl #2
	add r0, r1, #0x700
	strh r2, [r0, #0xc]
	strh r2, [r0, #0xe]
	add r0, r1, #0x600
	strh r2, [r0, #0xfc]
	strh r2, [r0, #0xfe]
	add r0, r3, #1
	mov r0, r0, lsl #0x10
	mov r3, r0, lsr #0x10
	cmp r3, #4
	blo _02387FC4
	ldr r0, _0238800C ; =0x0000071C
	add r0, r4, r0
	bl FUN_037F9938
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02388008: .word _0239A8B8
_0238800C: .word 0x0000071C
_02388010: .word 0x0000FFFF
	arm_func_end FUN_02387F54

	arm_func_start FUN_02388014
FUN_02388014: ; 0x02388014
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x280
	ldr r1, _023880A0 ; =_0239A8B8
	ldr r4, [r1, #0x550]
	ldr r0, [r0, #4]
	strh r0, [r4, #0xf6]
	add r0, sp, #0x200
	add r1, r4, #0xe8
	bl FUN_023806B4
	add r0, sp, #0
	ldrh r1, [r4, #0xec]
	add r1, r1, #0x10
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	add r2, sp, #0x200
	bl FUN_02382468
	mov r4, r0
	bl FUN_03801E40
	mov r1, #0x21
	strh r1, [r0]
	ldrh r1, [r4, #4]
	cmp r1, #0
	moveq r1, #0
	streqh r1, [r0, #2]
	beq _02388090
	mov r1, #1
	strh r1, [r0, #2]
	ldr r1, _023880A4 ; =0x00000245
	strh r1, [r0, #4]
	ldrh r1, [r4, #4]
	strh r1, [r0, #6]
_02388090:
	bl FUN_03801E9C
	add sp, sp, #0x280
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_023880A0: .word _0239A8B8
_023880A4: .word 0x00000245
	arm_func_end FUN_02388014

	arm_func_start FUN_023880A8
FUN_023880A8: ; 0x023880A8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x208
	add r0, r0, #4
	add r1, sp, #0
	mov r2, #6
	bl FUN_037FB078
	mov r8, #0
	add r7, sp, #8
	add r6, sp, #0
	mov r5, #0x13
	b _02388108
_023880D4:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_02382CDC
	mov r4, r0
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _02388110
	cmp r0, #7
	beq _02388104
	cmp r0, #0xc
	bne _02388110
_02388104:
	add r8, r8, #1
_02388108:
	cmp r8, #2
	blt _023880D4
_02388110:
	bl FUN_03801E40
	mov r1, #0x22
	strh r1, [r0]
	ldrh r1, [r4, #4]
	cmp r1, #0
	moveq r1, #0
	streqh r1, [r0, #2]
	beq _02388148
	mov r1, #1
	strh r1, [r0, #2]
	mov r1, #5
	strh r1, [r0, #4]
	ldrh r1, [r4, #4]
	strh r1, [r0, #6]
_02388148:
	bl FUN_03801E9C
	add sp, sp, #0x208
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	arm_func_end FUN_023880A8

	arm_func_start FUN_02388158
FUN_02388158: ; 0x02388158
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	ldr r0, _023882A4 ; =_0239A8B8
	ldr r7, [r0, #0x54c]
	ldr r4, [r0, #0x550]
	mov r6, #0
	bl FUN_037FAD78
	mov r5, r0
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _02388198
	mov r0, r6
	str r0, [r4, #0xc]
	mov r6, #1
	bl FUN_023869CC
	bl FUN_023803E8
_02388198:
	mov r1, #0
	add r0, r4, #0x100
	strh r1, [r0, #0x82]
	strh r1, [r4, #0x86]
	str r1, [r4, #0x14]
	str r1, [r4, #0x10]
	str r1, [r4, #0x1c]
	strh r1, [r4, #0xce]
	strh r1, [r4, #0xc2]
	mov r2, #1
	strh r2, [r4, #0x58]
	strh r2, [r4, #0x5a]
	mov r2, #6
	strh r2, [r4, #0x5c]
	strh r1, [r4, #0x98]
	strh r1, [r4, #0x92]
	strh r1, [r4, #0x94]
	strh r1, [r4, #0x9a]
	strh r1, [r4, #0x9c]
	str r1, [r4, #0x198]
	strh r1, [r0, #0x96]
	add r0, r4, #0x19c
	mov r2, #0x50
	bl FUN_037FAFE4
	bl FUN_023802B0
	mov r0, #0x104
	strh r0, [r4, #0x40]
	mov r0, #0xf0
	strh r0, [r4, #0x42]
	mov r0, #0x3e8
	strh r0, [r4, #0x44]
	mov r1, #0
	strh r1, [r4, #0x46]
	ldr r0, _023882A8 ; =0x0000020B
	str r0, [r4, #0x48]
	str r1, [r4, #0x4c]
	str r1, [r4, #0x50]
	str r1, [r4, #0x54]
	strh r1, [r4, #0xc6]
	mov r1, #1
	add r0, r4, #0x100
	strh r1, [r0, #0xee]
	mov r0, r5
	bl FUN_037FAD8C
	cmp r6, #0
	beq _02388258
	ldr r0, _023882AC ; =0x0000FFFF
	bl FUN_02386F94
_02388258:
	mov r2, #0
	mov r1, #0x8000
_02388260:
	add r0, r7, r2, lsl #4
	str r1, [r0, #0xd0]
	add r2, r2, #1
	cmp r2, #0x20
	blt _02388260
	mov r0, #1
	add r1, r4, #0x1f8
	mov r2, #0x100
	bl FUN_037FAF38
	bl FUN_02380A94
	ldr r0, _023882B0 ; =0x0000071C
	add r0, r4, r0
	bl FUN_037F9A34
	bl FUN_023869E0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_023882A4: .word _0239A8B8
_023882A8: .word 0x0000020B
_023882AC: .word 0x0000FFFF
_023882B0: .word 0x0000071C
	arm_func_end FUN_02388158

	arm_func_start FUN_023882B4
FUN_023882B4: ; 0x023882B4
	stmdb sp!, {r4, lr}
	ldr r4, [r0, #4]
	ldr r1, _02388310 ; =_0239A8B8
	str r4, [r1, #0x54c]
	ldr r2, [r0, #8]
	str r2, [r1, #0x550]
	str r2, [r4]
	ldr r0, [r0, #0xc]
	str r0, [r4, #8]
	bl FUN_02388158
	mov r0, #0xf
	bl FUN_037FE760
	mov r1, #1
	ldr r0, [r4]
	strh r1, [r0]
	bl FUN_03801E40
	mov r1, #3
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	bl FUN_03801E9C
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02388310: .word _0239A8B8
	arm_func_end FUN_023882B4

	arm_func_start FUN_02388314
FUN_02388314: ; 0x02388314
	stmdb sp!, {r4, lr}
	ldr r0, _02388378 ; =_0239A8B8
	ldr r4, [r0, #0x550]
	ldrh r0, [r4]
	cmp r0, #1
	beq _02388348
	bl FUN_03801E40
	mov r1, #4
	strh r1, [r0]
	mov r1, #3
	strh r1, [r0, #2]
	bl FUN_03801E9C
	b _02388370
_02388348:
	mov r0, #1
	bl FUN_037FE760
	mov r0, #0
	strh r0, [r4]
	bl FUN_03801E40
	mov r1, #4
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	bl FUN_03801E9C
_02388370:
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02388378: .word _0239A8B8
	arm_func_end FUN_02388314

	arm_func_start FUN_0238837C
FUN_0238837C: ; 0x0238837C
	mov r1, #0xc8
	ldr r0, _023883A4 ; =0x04808124
	strh r1, [r0]
	mov r1, #0x7d0
	ldr r0, _023883A8 ; =0x04808128
	strh r1, [r0]
	ldr r1, _023883AC ; =0x00000202
	ldr r0, _023883B0 ; =0x04808150
	strh r1, [r0]
	bx lr
	.align 2, 0
_023883A4: .word 0x04808124
_023883A8: .word 0x04808128
_023883AC: .word 0x00000202
_023883B0: .word 0x04808150
	arm_func_end FUN_0238837C

	arm_func_start FUN_023883B4
FUN_023883B4: ; 0x023883B4
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x204
	mov r7, r0
	mov r6, r1
	ldr r0, _02388584 ; =_0239A8B8
	ldr r5, [r0, #0x550]
	add r0, sp, #0
	bl FUN_023823C8
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _023883F8
	mov r1, #0x304
	strh r1, [r7]
	ldrh r0, [r0, #4]
	strh r0, [r6]
	mov r0, #0
	b _02388578
_023883F8:
	add r0, sp, #0
	bl FUN_023823F4
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _02388424
	ldr r1, _02388588 ; =0x00000302
	strh r1, [r7]
	ldrh r0, [r0, #4]
	strh r0, [r6]
	mov r0, #0
	b _02388578
_02388424:
	bl FUN_0238837C
	add r0, sp, #0
	bl FUN_02382438
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _02388454
	ldr r1, _0238858C ; =0x00000283
	strh r1, [r7]
	ldrh r0, [r0, #4]
	strh r0, [r6]
	mov r0, #0
	b _02388578
_02388454:
	ldrh r1, [r0, #6]
	add r0, r5, #0x100
	strh r1, [r0, #0xf4]
	mov r0, r1, lsl #0xf
	mov r0, r0, lsr #0x10
	bl FUN_03801D14
	add r1, r5, #0x100
	strh r0, [r1, #0xf6]
	add r0, sp, #0
	ldr r1, _02388590 ; =0x0000FFFF
	mov r2, #0x28
	mov r3, #5
	bl FUN_02382678
	ldr r1, _02388594 ; =0x001FF621
	mov r0, #0
	str r1, [r5, #0x7b8]
	str r0, [r5, #0x7bc]
	mov r1, #2
	add r0, r5, #0x100
	strh r1, [r0, #0xec]
	mov r1, #1
	strh r1, [r0, #0xee]
	add r0, sp, #0
	bl FUN_02382398
	mov r4, r0
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _023884DC
	ldr r0, _02388598 ; =0x00000306
	strh r0, [r7]
	ldrh r0, [r4, #4]
	strh r0, [r6]
	mov r0, #0
	b _02388578
_023884DC:
	add r0, r4, #6
	add r1, r5, #0x20
	mov r2, #8
	bl FUN_037FAF50
	ldrh r0, [r4, #0xe]
	strh r0, [r5, #0x28]
	ldrh r0, [r4, #0x10]
	strh r0, [r5, #0x2c]
	ldrh r0, [r4, #0x12]
	strh r0, [r5, #0x2e]
	ldrh r0, [r4, #0x14]
	strh r0, [r5, #0x2a]
	add r0, sp, #0
	bl FUN_02382450
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _02388538
	ldr r1, _0238859C ; =0x00000281
	strh r1, [r7]
	ldrh r0, [r0, #4]
	strh r0, [r6]
	mov r0, #0
	b _02388578
_02388538:
	add r0, r0, #6
	add r1, r5, #0xe0
	mov r2, #6
	bl FUN_037FB078
	add r0, sp, #0
	mov r1, #1
	bl FUN_023825B8
	ldrh r1, [r0, #4]
	cmp r1, #0
	moveq r0, #1
	beq _02388578
	ldr r1, _023885A0 ; =0x00000215
	strh r1, [r7]
	ldrh r0, [r0, #4]
	strh r0, [r6]
	mov r0, #0
_02388578:
	add sp, sp, #0x204
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_02388584: .word _0239A8B8
_02388588: .word 0x00000302
_0238858C: .word 0x00000283
_02388590: .word 0x0000FFFF
_02388594: .word 0x001FF621
_02388598: .word 0x00000306
_0238859C: .word 0x00000281
_023885A0: .word 0x00000215
	arm_func_end FUN_023883B4

	arm_func_start FUN_023885A4
FUN_023885A4: ; 0x023885A4
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldr r0, _02388648 ; =_0239A8B8
	ldr r4, [r0, #0x550]
	ldrh r0, [r4]
	cmp r0, #1
	beq _023885DC
	bl FUN_03801E40
	mov r1, #5
	strh r1, [r0]
	mov r1, #3
	strh r1, [r0, #2]
	bl FUN_03801E9C
	b _0238863C
_023885DC:
	add r0, sp, #0
	add r1, sp, #2
	bl FUN_023883B4
	cmp r0, #0
	bne _0238861C
	bl FUN_03801E40
	mov r1, #5
	strh r1, [r0]
	mov r1, #1
	strh r1, [r0, #2]
	ldrh r1, [sp]
	strh r1, [r0, #4]
	ldrh r1, [sp, #2]
	strh r1, [r0, #6]
	bl FUN_03801E9C
	b _0238863C
_0238861C:
	mov r0, #2
	strh r0, [r4]
	bl FUN_03801E40
	mov r1, #5
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	bl FUN_03801E9C
_0238863C:
	add sp, sp, #8
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02388648: .word _0239A8B8
	arm_func_end FUN_023885A4

	arm_func_start FUN_0238864C
FUN_0238864C: ; 0x0238864C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x204
	ldr r0, _023886F4 ; =_0239A8B8
	ldr r5, [r0, #0x550]
	ldrh r0, [r5]
	cmp r0, #2
	beq _02388684
	bl FUN_03801E40
	mov r1, #6
	strh r1, [r0]
	mov r1, #3
	strh r1, [r0, #2]
	bl FUN_03801E9C
	b _023886E8
_02388684:
	add r0, sp, #0
	bl FUN_0238240C
	mov r4, r0
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _023886C8
	bl FUN_03801E40
	mov r1, #6
	strh r1, [r0]
	mov r1, #1
	strh r1, [r0, #2]
	ldr r1, _023886F8 ; =0x00000301
	strh r1, [r0, #4]
	ldrh r1, [r4, #4]
	strh r1, [r0, #6]
	bl FUN_03801E9C
	b _023886E8
_023886C8:
	mov r0, #1
	strh r0, [r5]
	bl FUN_03801E40
	mov r1, #6
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	bl FUN_03801E9C
_023886E8:
	add sp, sp, #0x204
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_023886F4: .word _0239A8B8
_023886F8: .word 0x00000301
	arm_func_end FUN_0238864C

	arm_func_start FUN_023886FC
FUN_023886FC: ; 0x023886FC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	mov sb, r0
	mov r8, r1
	ldr r0, _023889F0 ; =_0239A8B8
	ldr r4, [r0, #0x550]
	mov r6, #0
	ldr r5, [sb]
	ldrh r1, [r4]
	ldr r0, _023889F4 ; =0x0000FFF7
	add r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #1
	bhi _02388744
	ands r0, r5, #0x2c00
	movne r6, #3
	bicne r5, r5, #0x2c00
_02388744:
	bl FUN_037FAD78
	mov r7, r0
	cmp r8, #0
	beq _023887CC
	ldr r0, _023889F8 ; =0x00003FFF
	str r0, [r8]
	ldrh r0, [r4, #0x5a]
	strh r0, [r8, #4]
	ldrh r0, [r4, #0x5a]
	strh r0, [r8, #6]
	ldrh r0, [r4, #0x5a]
	strh r0, [r8, #8]
	ldrh r0, [r4, #0x30]
	strh r0, [r8, #0xa]
	ldrh r0, [r4, #0x32]
	strh r0, [r8, #0xc]
	ldrh r0, [r4, #0x44]
	strh r0, [r8, #0xe]
	ldrh r0, [r4, #0x46]
	strh r0, [r8, #0x10]
	ldrh r0, [r4, #0x40]
	strh r0, [r8, #0x12]
	ldrh r0, [r4, #0x42]
	strh r0, [r8, #0x14]
	ldrh r0, [r4, #0x98]
	strh r0, [r8, #0x16]
	ldrh r0, [r4, #0x92]
	strb r0, [r8, #0x18]
	ldrh r0, [r4, #0x94]
	strb r0, [r8, #0x19]
	ldrh r0, [r4, #0x9a]
	strb r0, [r8, #0x1a]
	ldrh r0, [r4, #0x9c]
	strb r0, [r8, #0x1b]
_023887CC:
	ands r0, r5, #1
	beq _023887E4
	ldrh r0, [sb, #4]
	cmp r0, #0
	moveq r0, #0x10
	strh r0, [r4, #0x58]
_023887E4:
	ands r0, r5, #2
	beq _02388808
	ldrh r1, [sb, #6]
	cmp r1, #0
	moveq r1, #0x10
	strh r1, [r4, #0x5a]
	ldrsh r0, [r4, #0x62]
	cmp r0, r1
	strgth r1, [r4, #0x62]
_02388808:
	ands r0, r5, #4
	beq _0238882C
	ldrh r1, [sb, #8]
	cmp r1, #0
	moveq r1, #0x10
	strh r1, [r4, #0x5c]
	ldrsh r0, [r4, #0x62]
	cmp r0, r1
	strgth r1, [r4, #0x62]
_0238882C:
	ands r0, r5, #8
	beq _0238885C
	ldrh r0, [sb, #0xa]
	add r1, r0, #1
	bic r1, r1, #1
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x10
	ldrh r1, [r4, #0x34]
	cmp r2, r1
	movhi r6, #6
	bhi _0238885C
	bl FUN_023801E0
_0238885C:
	ands r0, r5, #0x10
	beq _0238888C
	ldrh r0, [sb, #0xc]
	add r1, r0, #1
	bic r1, r1, #1
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x10
	ldrh r1, [r4, #0x36]
	cmp r2, r1
	movhi r6, #6
	bhi _0238888C
	bl FUN_023801B0
_0238888C:
	ands r0, r5, #0x20
	beq _023888E0
	ldrh r8, [sb, #0xe]
	ldr r0, _023889FC ; =0x00002710
	cmp r8, r0
	movhi r6, #6
	bhi _023888E0
	strh r8, [r4, #0x44]
	mov r1, #0
	ldr r0, _02388A00 ; =0x000082EA
	umull r3, r2, r8, r0
	mla r2, r8, r1, r2
	mla r2, r1, r0, r2
	mov r0, r2, lsr #6
	mov r1, r3, lsr #6
	orr r1, r1, r2, lsl #26
	mov r2, r0, lsr #0xa
	mov r1, r1, lsr #0xa
	orr r1, r1, r0, lsl #22
	str r1, [r4, #0x48]
	str r2, [r4, #0x4c]
_023888E0:
	ands r0, r5, #0x40
	beq _02388934
	ldrh r8, [sb, #0x10]
	ldr r0, _023889FC ; =0x00002710
	cmp r8, r0
	movhi r6, #6
	bhi _02388934
	strh r8, [r4, #0x46]
	mov r1, #0
	ldr r0, _02388A00 ; =0x000082EA
	umull r3, r2, r8, r0
	mla r2, r8, r1, r2
	mla r2, r1, r0, r2
	mov r0, r2, lsr #6
	mov r1, r3, lsr #6
	orr r1, r1, r2, lsl #26
	mov r2, r0, lsr #0xa
	mov r1, r1, lsr #0xa
	orr r1, r1, r0, lsl #22
	str r1, [r4, #0x50]
	str r2, [r4, #0x54]
_02388934:
	ands r0, r5, #0x80
	beq _02388968
	ldrh r1, [sb, #0x12]
	cmp r1, #0xbe
	bls _0238895C
	cmp r1, #0xdc
	blo _02388964
	ldr r0, _02388A04 ; =0x00000106
	cmp r1, r0
	bhi _02388964
_0238895C:
	strh r1, [r4, #0x40]
	b _02388968
_02388964:
	mov r6, #6
_02388968:
	ands r0, r5, #0x100
	beq _0238899C
	ldrh r1, [sb, #0x14]
	cmp r1, #0xbe
	bls _02388990
	cmp r1, #0xdc
	blo _02388998
	ldr r0, _02388A04 ; =0x00000106
	cmp r1, r0
	bhi _02388998
_02388990:
	strh r1, [r4, #0x42]
	b _0238899C
_02388998:
	mov r6, #6
_0238899C:
	ands r0, r5, #0x200
	ldrneh r0, [sb, #0x16]
	strneh r0, [r4, #0x98]
	ands r0, r5, #0x400
	ldrneb r0, [sb, #0x18]
	strneh r0, [r4, #0x92]
	ands r0, r5, #0x800
	ldrneb r0, [sb, #0x19]
	strneh r0, [r4, #0x94]
	ands r0, r5, #0x1000
	ldrneb r0, [sb, #0x1a]
	strneh r0, [r4, #0x9a]
	ands r0, r5, #0x2000
	ldrneb r0, [sb, #0x1b]
	strneh r0, [r4, #0x9c]
	mov r0, r7
	bl FUN_037FAD8C
	mov r0, r6
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	.align 2, 0
_023889F0: .word _0239A8B8
_023889F4: .word 0x0000FFF7
_023889F8: .word 0x00003FFF
_023889FC: .word 0x00002710
_02388A00: .word 0x000082EA
_02388A04: .word 0x00000106
	arm_func_end FUN_023886FC

	arm_func_start FUN_02388A08
FUN_02388A08: ; 0x02388A08
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x20
	mov r6, r0
	add r0, r6, #4
	add r1, sp, #0
	bl FUN_023886FC
	mov r5, r0
	bl FUN_03801E40
	mov r4, r0
	mov r0, #0x23
	strh r0, [r4]
	strh r5, [r4, #2]
	ldr r0, [r6, #4]
	str r0, [r4, #4]
	add r0, sp, #0
	add r1, r4, #8
	mov r2, #0x1c
	bl FUN_037FB078
	mov r0, r4
	bl FUN_03801E9C
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	arm_func_end FUN_02388A08

	arm_func_start FUN_02388A64
FUN_02388A64: ; 0x02388A64
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	bl FUN_03801E40
	mov r1, #0x24
	strh r1, [r0]
	mov r1, #1
	strh r1, [r0, #2]
	strh r5, [r0, #4]
	strh r4, [r0, #6]
	bl FUN_03801E9C
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_02388A64

	arm_func_start FUN_02388AA0
FUN_02388AA0: ; 0x02388AA0
	stmdb sp!, {lr}
	sub sp, sp, #0x204
	mov r1, r0
	add r0, sp, #0
	ldr r1, [r1, #4]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_023824F8
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _02388AD8
	ldr r0, _02388AFC ; =0x00000242
	bl FUN_02388A64
	b _02388AF0
_02388AD8:
	bl FUN_03801E40
	mov r1, #0x24
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	bl FUN_03801E9C
_02388AF0:
	add sp, sp, #0x204
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02388AFC: .word 0x00000242
	arm_func_end FUN_02388AA0

	arm_func_start FUN_02388B00
FUN_02388B00: ; 0x02388B00
	mov r1, #1
	mov r2, #0
	ldr ip, _02388B10 ; =FUN_02384D8C
	bx ip
	.align 2, 0
_02388B10: .word FUN_02384D8C
	arm_func_end FUN_02388B00

	arm_func_start FUN_02388B14
FUN_02388B14: ; 0x02388B14
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x234
	mov r7, r0
	ldr r0, _02388C90 ; =_0239A8B8
	ldr r4, [r0, #0x550]
	add r6, sp, #0x30
	bl FUN_03801E40
	mov r5, r0
	mov r1, #0x28
	strh r1, [r5]
	ldrh r1, [r4]
	cmp r1, #0xb
	beq _02388B58
	mov r1, #3
	strh r1, [r5, #2]
	bl FUN_03801E9C
	b _02388C84
_02388B58:
	ldr r0, [r7, #4]
	cmp r0, #1
	moveq r1, #1
	movne r1, #0
	mov r0, r6
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r2, #0
	mov r3, #1
	bl FUN_02382F24
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _02388BAC
	mov r1, #1
	strh r1, [r5, #2]
	strh r1, [r5, #4]
	ldrh r0, [r0, #4]
	strh r0, [r5, #6]
	mov r0, r5
	bl FUN_03801E9C
	b _02388C84
_02388BAC:
	ldr r0, _02388C90 ; =_0239A8B8
	ldr r4, [r0, #0x550]
	ldr r0, _02388C94 ; =0x0000018A
	add r0, r4, r0
	add r1, r4, #0xa2
	mov r2, #6
	bl FUN_037FB078
	add r0, sp, #0x30
	str r0, [r4, #0xa8]
	mov r0, #0
	strh r0, [r4, #0xac]
	mov r1, #1
	str r1, [r4, #0x18]
	add r1, sp, #0
	mov r2, #0x30
	bl FUN_037FAF38
	mov r0, #0
	strh r0, [sp]
	strh r0, [sp, #6]
	add r0, r4, #0x100
	ldrh r0, [r0, #0xec]
	cmp r0, #2
	moveq r0, #0x14
	movne r0, #0xa
	strb r0, [sp, #0xe]
	ldr r0, _02388C94 ; =0x0000018A
	add r0, r4, r0
	add r1, sp, #0x18
	mov r2, #6
	bl FUN_037FB078
	add r0, r4, #0xe0
	add r1, sp, #0x1e
	mov r2, #6
	bl FUN_037FB078
	add r0, sp, #0x30
	str r0, [sp, #0x2c]
	add r1, sp, #0
	bl FUN_02382A44
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _02388C74
	mov r1, #1
	strh r1, [r5, #2]
	mov r1, #0x100
	strh r1, [r5, #4]
	ldrh r0, [r0, #4]
	strh r0, [r5, #6]
	mov r0, r5
	bl FUN_03801E9C
	b _02388C84
_02388C74:
	mov r0, #0
	strh r0, [r5, #2]
	mov r0, r5
	bl FUN_03801E9C
_02388C84:
	add sp, sp, #0x234
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_02388C90: .word _0239A8B8
_02388C94: .word 0x0000018A
	arm_func_end FUN_02388B14

	arm_func_start FUN_02388C98
FUN_02388C98: ; 0x02388C98
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_03801E40
	mov r1, #0x29
	strh r1, [r0]
	mov r1, #4
	strh r1, [r0, #2]
	bl FUN_03801E9C
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_02388C98

	arm_func_start FUN_02388CC4
FUN_02388CC4: ; 0x02388CC4
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_03801E40
	mov r1, #0x2a
	strh r1, [r0]
	mov r1, #4
	strh r1, [r0, #2]
	bl FUN_03801E9C
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_02388CC4

	arm_func_start FUN_02388CF0
FUN_02388CF0: ; 0x02388CF0
	ldr r0, _02388D00 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x18
	bx lr
	.align 2, 0
_02388D00: .word 0x0380FFF4
	arm_func_end FUN_02388CF0

	arm_func_start FUN_02388D04
FUN_02388D04: ; 0x02388D04
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r1, [r4]
	ldr r0, _02388EC8 ; =0x0380FFF4
	str r1, [r0]
	mov r0, #0
	ldr r2, _02388ECC ; =0x00000694
	bl FUN_037FAF98
	bl FUN_037F8940
	ldr r2, _02388EC8 ; =0x0380FFF4
	ldr r1, [r2]
	str r0, [r1, #0x314]
	ldr r1, [r4, #0x18]
	ldr r0, [r2]
	str r1, [r0, #0x30c]
	ldr r0, [r4, #0x1c]
	mov r1, r0, lsr #1
	ldr r0, [r2]
	str r1, [r0, #0x310]
	ldr r1, [r2]
	ldr r0, [r1, #0x310]
	cmp r0, #0
	mvneq r0, #0
	streq r0, [r1, #0x310]
	add r0, r4, #0x20
	bl FUN_023892EC
	bl FUN_02398F30
	ldr r1, _02388ED0 ; =0x04000304
	ldrh r0, [r1]
	orr r0, r0, #2
	strh r0, [r1]
	mov r1, #0x30
	ldr r0, _02388ED4 ; =0x04000206
	strh r1, [r0]
	mov r1, #3
	ldr r2, _02388EC8 ; =0x0380FFF4
	ldr r0, [r2]
	str r1, [r0, #0x68c]
	mov r0, #0x3c
	mov r1, #2
	ldr r3, [r2]
	ldr r2, _02388ED8 ; =0x00000692
	add r2, r3, r2
	bl FUN_02399074
	mov r0, #0x3e
	mov r1, #2
	ldr r2, _02388EC8 ; =0x0380FFF4
	ldr r2, [r2]
	add r2, r2, #0x690
	bl FUN_02399074
	ldr r1, [r4, #0x10]
	ldr r2, _02388EC8 ; =0x0380FFF4
	ldr r0, [r2]
	str r1, [r0, #0x308]
	ldr r1, [r4, #0x14]
	ldr r0, [r2]
	str r1, [r0, #0x304]
	ldr r0, [r4, #0x30]
	mov r1, #0x1c
	bl FUN_03801A54
	mov r1, r0
	ldr r0, [r4, #0x2c]
	bl FUN_0238C2D0
	bl FUN_023891B0
	bl FUN_0238F7E8
	bl FUN_0238FC1C
	bl FUN_0238EA2C
	bl FUN_0238A078
	add r0, sp, #8
	bl FUN_02399114
	cmp r0, #0
	beq _02388E44
	ldr r0, _02388EC8 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r1, [r0, #0x3e]
	orr r1, r1, #0x80
	strh r1, [r0, #0x3e]
	b _02388E6C
_02388E44:
	bl FUN_0238A30C
	bl FUN_0238C7CC
	bl FUN_0238B270
	bl FUN_0238A2D4
	bl FUN_0238A0D4
	bl FUN_0238C648
	bl FUN_0238C350
	bl FUN_0238A264
	bl FUN_0238B7A4
	bl FUN_0238B304
_02388E6C:
	ldr r0, [r4, #8]
	str r0, [sp]
	ldr r0, [r4, #0xc]
	str r0, [sp, #4]
	ldr r0, _02388EC8 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x18
	ldr r1, _02388EDC ; =FUN_023890F0
	mov r2, #0
	ldr r3, [r4, #4]
	bl FUN_037F9110
	ldr r0, _02388EC8 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x18
	bl FUN_037F8ED0
	bl FUN_0238C9A0
	ldr r0, _02388EC8 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x3e]
	add sp, sp, #0x10
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02388EC8: .word 0x0380FFF4
_02388ECC: .word 0x00000694
_02388ED0: .word 0x04000304
_02388ED4: .word 0x04000206
_02388ED8: .word 0x00000692
_02388EDC: .word FUN_023890F0
	arm_func_end FUN_02388D04

	arm_func_start FUN_02388EE0
FUN_02388EE0: ; 0x02388EE0
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_02389DE0
	bl FUN_0238B304
	bl FUN_0238A2D4
	bl FUN_02389290
	bl FUN_023891B0
	ldr r0, _02388F30 ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, [r1, #0x31c]
	add r1, r1, #0x300
	ldrh r1, [r1, #0x20]
	bl FUN_0238C2D0
	bl FUN_0238F7E8
	bl FUN_0238FC1C
	bl FUN_0238EA2C
	bl FUN_0238B7A4
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02388F30: .word 0x0380FFF4
	arm_func_end FUN_02388EE0

	arm_func_start FUN_02388F34
FUN_02388F34: ; 0x02388F34
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, [r0]
	cmp r1, #0
	beq _02388F64
	ldr r0, _02388F70 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x200
	bl FUN_0238956C
	mov r0, #2
	mov r1, #0xb
	bl FUN_02389030
_02388F64:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02388F70: .word 0x0380FFF4
	arm_func_end FUN_02388F34

	arm_func_start FUN_02388F74
FUN_02388F74: ; 0x02388F74
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _02388FB4 ; =0x0380FFF4
	ldr r0, [r0]
	ldr r0, [r0, #0x308]
	add r1, sp, #0
	mov r2, #1
	bl FUN_037F9750
	add r0, sp, #0
	bl FUN_02388F34
	mov r0, #3
	mov r1, #0xc
	bl FUN_02389030
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02388FB4: .word 0x0380FFF4
	arm_func_end FUN_02388F74

	arm_func_start FUN_02388FB8
FUN_02388FB8: ; 0x02388FB8
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, _02389024 ; =0x0380FFF4
	ldr r5, [r0]
	ldr r0, _02389028 ; =0x01000010
	bl FUN_037F8774
	mov r6, r4, lsl #1
	ldrh r4, [r5, r6]
	ldr r2, _0238902C ; =0x0000FFFF
	cmp r4, r2
	beq _02389014
	add lr, r5, #0xbc
	mov ip, #0
	mov r3, r4, lsl #3
	add r1, lr, r4, lsl #3
	strh ip, [r1, #2]
	ldrh r1, [lr, r3]
	cmp r1, r2
	streqh r2, [r5, r6]
	addeq r1, r5, r6
	streqh r2, [r1, #8]
	strneh r1, [r5, r6]
	strneh r2, [lr, r3]
_02389014:
	bl FUN_037F87B0
	mov r0, r4
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_02389024: .word 0x0380FFF4
_02389028: .word 0x01000010
_0238902C: .word 0x0000FFFF
	arm_func_end FUN_02388FB8

	arm_func_start FUN_02389030
FUN_02389030: ; 0x02389030
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r6, r1
	ldr r0, _023890E4 ; =0x0380FFF4
	ldr r5, [r0]
	add r4, r5, #0xbc
	ldr r0, _023890E8 ; =0x01000010
	bl FUN_037F8774
	mov ip, r6, lsl #3
	add r2, r4, r6, lsl #3
	ldrh r1, [r2, #2]
	cmp r1, #0
	bne _023890A8
	mov r1, #1
	strh r1, [r2, #2]
	ldr r3, _023890EC ; =0x0000FFFF
	strh r3, [r4, ip]
	mov r2, r7, lsl #1
	add r1, r5, r7, lsl #1
	ldrh r1, [r1, #8]
	cmp r1, r3
	streqh r6, [r5, r2]
	addne r1, r5, r1, lsl #3
	strneh r6, [r1, #0xbc]
	add r1, r5, r7, lsl #1
	strh r6, [r1, #8]
	ldrh r1, [r5, #0x10]
	cmp r7, r1
	strlth r7, [r5, #0x10]
_023890A8:
	bl FUN_037F87B0
	cmp r7, #3
	beq _023890D8
	ldrh r0, [r5, #0x12]
	cmp r0, #3
	bne _023890D8
	ldr r0, _023890E4 ; =0x0380FFF4
	ldr r0, [r0]
	ldr r0, [r0, #0x308]
	mov r1, #0
	mov r2, r1
	bl FUN_037F97F0
_023890D8:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_023890E4: .word 0x0380FFF4
_023890E8: .word 0x01000010
_023890EC: .word 0x0000FFFF
	arm_func_end FUN_02389030

	arm_func_start FUN_023890F0
FUN_023890F0: ; 0x023890F0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #8
	ldr r8, _023891A4 ; =0x0380FFF4
	ldr sb, [r8]
	mov r7, #0
	strh r7, [sb, #0x10]
	strh r7, [sb, #0x14]
	add r6, sp, #0
	ldr r5, _023891A8 ; =0x01000010
	add r4, sb, #0x10
	ldr sl, _023891AC ; =0x0000FFFF
_0238911C:
	ldr r0, [r8]
	ldr r0, [r0, #0x308]
	mov r1, r6
	mov r2, r7
	bl FUN_037F9750
	cmp r0, #0
	beq _02389140
	mov r0, r6
	bl FUN_02388F34
_02389140:
	mov r0, r5
	bl FUN_037F8774
	ldrh r1, [sb, #0x10]
	strh r1, [sb, #0x12]
	ldrh r1, [sb, #0x12]
	mov r1, r1, lsl #1
	ldrh r1, [sb, r1]
	cmp r1, sl
	bne _02389178
	ldrh r1, [r4]
	add r1, r1, #1
	strh r1, [r4]
	bl FUN_037F87B0
	b _0238911C
_02389178:
	bl FUN_037F87B0
	ldrh r0, [sb, #0x12]
	bl FUN_02388FB8
	strh r0, [sb, #0x14]
	ldrh r0, [sb, #0x14]
	add r0, sb, r0, lsl #3
	ldr r0, [r0, #0xc0]
	mov lr, pc
	bx r0
	arm_func_end FUN_023890F0

	arm_func_start FUN_0238919C
FUN_0238919C: ; 0x0238919C
	strh sl, [sb, #0x14]
	b _0238911C
	.align 2, 0
_023891A4: .word 0x0380FFF4
_023891A8: .word 0x01000010
_023891AC: .word 0x0000FFFF
	arm_func_end FUN_0238919C

	arm_func_start FUN_023891B0
FUN_023891B0: ; 0x023891B0
	stmdb sp!, {r4, lr}
	ldr r0, _02389230 ; =0x0380FFF4
	ldr r4, [r0]
	mov r3, #0
	strh r3, [r4, #0x10]
	strh r3, [r4, #0x12]
	ldr r2, _02389234 ; =0x0000FFFF
_023891CC:
	mov r1, r3, lsl #1
	add r0, r4, r3, lsl #1
	strh r2, [r0, #8]
	ldrh r0, [r0, #8]
	strh r0, [r4, r1]
	add r3, r3, #1
	cmp r3, #4
	blo _023891CC
	mov lr, #0
	ldr ip, _02389234 ; =0x0000FFFF
	mov r2, lr
	ldr r1, _02389238 ; =_02399278
_023891FC:
	add r3, r4, lr, lsl #3
	strh ip, [r3, #0xbc]
	strh r2, [r3, #0xbe]
	ldr r0, [r1, lr, lsl #2]
	str r0, [r3, #0xc0]
	add lr, lr, #1
	cmp lr, #0x18
	blo _023891FC
	mov r0, #3
	mov r1, #0xc
	bl FUN_02389030
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02389230: .word 0x0380FFF4
_02389234: .word 0x0000FFFF
_02389238: .word _02399278
	arm_func_end FUN_023891B0

	arm_func_start FUN_0238923C
FUN_0238923C: ; 0x0238923C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	ldr r6, [r7]
	ldrh r0, [r7, #8]
	cmp r0, #0
	beq _02389284
	mvn r4, #0
	b _0238927C
_02389260:
	mov r0, r6
	bl FUN_023893EC
	mov r5, r0
	mov r0, r7
	mov r1, r6
	bl FUN_02389658
	mov r6, r5
_0238927C:
	cmp r6, r4
	bne _02389260
_02389284:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end FUN_0238923C

	arm_func_start FUN_02389290
FUN_02389290: ; 0x02389290
	stmdb sp!, {r4, lr}
	ldr r0, _023892E8 ; =0x0380FFF4
	ldr r0, [r0]
	add r4, r0, #0x17c
	add r0, r4, #0x18
	bl FUN_0238923C
	add r0, r4, #0x24
	bl FUN_0238923C
	add r0, r4, #0x30
	bl FUN_0238923C
	add r0, r4, #0x3c
	bl FUN_0238923C
	add r0, r4, #0x48
	bl FUN_0238923C
	add r0, r4, #0x54
	bl FUN_0238923C
	add r0, r4, #0x60
	bl FUN_0238923C
	add r0, r4, #0x6c
	bl FUN_0238923C
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_023892E8: .word 0x0380FFF4
	arm_func_end FUN_02389290

	arm_func_start FUN_023892EC
FUN_023892EC: ; 0x023892EC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r1, _023893CC ; =0x0380FFF4
	ldr r2, [r1]
	add r5, r2, #0x17c
	add r4, r2, #0x344
	ldr r1, [r0]
	str r1, [r2, #0x17c]
	ldr r1, [r0, #4]
	str r1, [r5, #4]
	ldr r0, [r0, #8]
	str r0, [r5, #8]
	add r0, r5, #0xc
	mov r1, #2
	bl FUN_023893D0
	add r0, r5, #0x18
	mov r1, #3
	bl FUN_023893D0
	add r0, r5, #0x24
	mov r1, #4
	bl FUN_023893D0
	add r0, r5, #0x30
	mov r1, #5
	bl FUN_023893D0
	add r0, r5, #0x3c
	mov r1, #6
	bl FUN_023893D0
	add r0, r5, #0x48
	mov r1, #7
	bl FUN_023893D0
	add r0, r5, #0x54
	mov r1, #8
	bl FUN_023893D0
	add r0, r5, #0x60
	mov r1, #9
	bl FUN_023893D0
	add r0, r5, #0x6c
	mov r1, #0xa
	bl FUN_023893D0
	add r0, r5, #0x78
	mov r1, #0xb
	bl FUN_023893D0
	add r0, r5, #0x84
	mov r1, #0xc
	bl FUN_023893D0
	add r0, r5, #0xc
	mov r1, #0x81
	bl FUN_023896DC
	add r0, r0, #0xc
	str r0, [r4, #0x9c]
	mov r0, #0
	strh r0, [r4, #0xa0]
	strh r0, [r4, #0xa4]
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_023893CC: .word 0x0380FFF4
	arm_func_end FUN_023892EC

	arm_func_start FUN_023893D0
FUN_023893D0: ; 0x023893D0
	mvn r2, #0
	str r2, [r0]
	str r2, [r0, #4]
	mov r2, #0
	strh r2, [r0, #8]
	strh r1, [r0, #0xa]
	bx lr
	arm_func_end FUN_023893D0

	arm_func_start FUN_023893EC
FUN_023893EC: ; 0x023893EC
	ldr r0, [r0, #4]
	bx lr
	arm_func_end FUN_023893EC

	arm_func_start FUN_023893F4
FUN_023893F4: ; 0x023893F4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	ldrh r1, [r4, #0xa]
	ldr r0, _023894D4 ; =0x0000BF1D
	cmp r1, r0
	movne r0, #1
	bne _023894C8
	ldrh r1, [r4, #8]
	ldrh r0, [r5, #0xa]
	cmp r1, r0
	movne r0, #2
	bne _023894C8
	mov r0, #0x1000000
	bl FUN_037F8774
	ldrh r1, [r5, #8]
	sub r1, r1, #1
	strh r1, [r5, #8]
	ldrh r1, [r5, #8]
	cmp r1, #0
	mvneq r1, #0
	streq r1, [r5]
	streq r1, [r5, #4]
	beq _023894B8
	ldr r1, [r5]
	cmp r4, r1
	bne _0238947C
	ldr r1, [r4, #4]
	str r1, [r5]
	mvn r2, #0
	ldr r1, [r5]
	str r2, [r1]
	b _023894B8
_0238947C:
	ldr r1, [r5, #4]
	cmp r4, r1
	bne _023894A0
	ldr r1, [r4]
	str r1, [r5, #4]
	mvn r2, #0
	ldr r1, [r5, #4]
	str r2, [r1, #4]
	b _023894B8
_023894A0:
	ldr r2, [r4]
	ldr r1, [r4, #4]
	str r2, [r1]
	ldr r2, [r4, #4]
	ldr r1, [r4]
	str r2, [r1, #4]
_023894B8:
	mov r1, #0
	strh r1, [r4, #8]
	bl FUN_037F87B0
	mov r0, #0
_023894C8:
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_023894D4: .word 0x0000BF1D
	arm_func_end FUN_023893F4

	arm_func_start FUN_023894D8
FUN_023894D8: ; 0x023894D8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	ldrh r1, [r4, #0xa]
	ldr r0, _02389568 ; =0x0000BF1D
	cmp r1, r0
	movne r0, #1
	bne _0238955C
	ldrh r0, [r4, #8]
	cmp r0, #0
	movne r0, #2
	bne _0238955C
	mov r0, #0x1000000
	bl FUN_037F8774
	ldrh r1, [r5, #8]
	cmp r1, #0
	mvneq r1, #0
	streq r1, [r4]
	streq r4, [r5]
	ldrne r1, [r5, #4]
	strne r1, [r4]
	strne r4, [r1, #4]
	mvn r1, #0
	str r1, [r4, #4]
	ldrh r1, [r5, #0xa]
	strh r1, [r4, #8]
	str r4, [r5, #4]
	ldrh r1, [r5, #8]
	add r1, r1, #1
	strh r1, [r5, #8]
	bl FUN_037F87B0
	mov r0, #0
_0238955C:
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_02389568: .word 0x0000BF1D
	arm_func_end FUN_023894D8

	arm_func_start FUN_0238956C
FUN_0238956C: ; 0x0238956C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	mov r0, #0x1000000
	bl FUN_037F8774
	ldrh r1, [r5, #8]
	cmp r1, #0
	mvneq r1, #0
	streq r1, [r4]
	streq r4, [r5]
	ldrne r1, [r5, #4]
	strne r1, [r4]
	strne r4, [r1, #4]
	mvn r1, #0
	str r1, [r4, #4]
	ldrh r1, [r5, #0xa]
	strh r1, [r4, #8]
	ldr r1, _023895E0 ; =0x0000BF1D
	strh r1, [r4, #0xa]
	str r4, [r5, #4]
	ldrh r1, [r5, #8]
	add r1, r1, #1
	strh r1, [r5, #8]
	bl FUN_037F87B0
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_023895E0: .word 0x0000BF1D
	arm_func_end FUN_0238956C

	arm_func_start FUN_023895E4
FUN_023895E4: ; 0x023895E4
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r7, r1
	mov r6, r2
	ldrh r1, [r6, #0xa]
	ldr r0, _02389654 ; =0x0000BF1D
	cmp r1, r0
	movne r0, #1
	bne _02389648
	mov r0, #0x1000000
	bl FUN_037F8774
	mov r4, r0
	mov r0, r5
	mov r1, r6
	bl FUN_023893F4
	movs r5, r0
	bne _0238963C
	mov r0, r7
	mov r1, r6
	bl FUN_023894D8
	mov r5, r0
_0238963C:
	mov r0, r4
	bl FUN_037F87B0
	mov r0, r5
_02389648:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_02389654: .word 0x0000BF1D
	arm_func_end FUN_023895E4

	arm_func_start FUN_02389658
FUN_02389658: ; 0x02389658
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r1
	ldr r2, _023896D4 ; =0x0380FFF4
	ldr r2, [r2]
	add r6, r2, #0x17c
	ldrh r3, [r4, #0xa]
	ldr r2, _023896D8 ; =0x0000BF1D
	cmp r3, r2
	movne r0, #1
	bne _023896CC
	bl FUN_023893F4
	movs r5, r0
	bne _023896C8
	ldr r0, [r6]
	cmp r0, #0
	beq _023896A4
	cmp r0, #1
	beq _023896B8
	b _023896C8
_023896A4:
	ldr r0, [r6, #4]
	ldr r1, [r6, #8]
	mov r2, r4
	bl FUN_037F9DE0
	b _023896C8
_023896B8:
	mov r0, r4
	ldr r1, [r6, #8]
	mov lr, pc
	bx r1
_023896C8:
	mov r0, r5
_023896CC:
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_023896D4: .word 0x0380FFF4
_023896D8: .word 0x0000BF1D
	arm_func_end FUN_02389658

	arm_func_start FUN_023896DC
FUN_023896DC: ; 0x023896DC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r0, _0238977C ; =0x0380FFF4
	ldr r0, [r0]
	add r3, r0, #0x17c
	cmp r1, #0
	moveq r0, #0
	beq _02389770
	add r2, r1, #0xc
	ldr r0, [r3]
	cmp r0, #0
	beq _0238971C
	cmp r0, #1
	beq _02389730
	b _02389744
_0238971C:
	ldr r0, [r3, #4]
	ldr r1, [r3, #8]
	bl FUN_037F9E54
	mov r4, r0
	b _02389744
_02389730:
	mov r0, r2
	ldr r1, [r3, #4]
	mov lr, pc
	bx r1
	arm_func_end FUN_023896DC

	arm_func_start FUN_02389740
FUN_02389740: ; 0x02389740
	mov r4, r0
_02389744:
	cmp r4, #0
	moveq r0, #0
	beq _02389770
	ldr r0, _02389780 ; =0x0000BF1D
	strh r0, [r4, #0xa]
	mov r0, #0
	strh r0, [r4, #8]
	mov r0, r5
	mov r1, r4
	bl FUN_023894D8
	mov r0, r4
_02389770:
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_0238977C: .word 0x0380FFF4
_02389780: .word 0x0000BF1D
	arm_func_end FUN_02389740

	arm_func_start FUN_02389784
FUN_02389784: ; 0x02389784
	stmdb sp!, {r4, lr}
	ldr r0, _023897D4 ; =0x0380FFF4
	ldr r0, [r0]
	add r4, r0, #0x17c
	bl FUN_0238C978
	add r0, r4, #0xc
	ldr r1, _023897D4 ; =0x0380FFF4
	ldr r1, [r1]
	ldr r1, [r1, #0x318]
	sub r1, r1, #0xc
	bl FUN_02389658
	add r0, r4, #0xc
	ldr r1, _023897D4 ; =0x0380FFF4
	ldr r1, [r1]
	ldr r1, [r1, #0x3e0]
	sub r1, r1, #0xc
	bl FUN_02389658
	bl FUN_037F90E4
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_023897D4: .word 0x0380FFF4
	arm_func_end FUN_02389784

	arm_func_start FUN_023897D8
FUN_023897D8: ; 0x023897D8
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r2, _02389874 ; =0x0380FFF4
	ldr r0, [r2]
	add r0, r0, #0x300
	ldrh r1, [r0, #0x3e]
	orr r1, r1, #0x8000
	strh r1, [r0, #0x3e]
	ldr r0, [r2]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x4c]
	cmp r0, #0
	beq _02389848
	bl FUN_0238A48C
	ldr r2, _02389874 ; =0x0380FFF4
	ldr r0, [r2]
	add r0, r0, #0x400
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _02389844
	mov r1, #0
	strh r1, [r0, #4]
	mov r1, #6
	ldr r0, [r2]
	ldr r0, [r0, #0x420]
	strh r1, [r0, #4]
	bl FUN_023901B8
_02389844:
	bl FUN_0238B304
_02389848:
	mov r0, #3
	bl FUN_02388FB8
	ldr r1, _02389878 ; =0x0000FFFF
	cmp r0, r1
	bne _02389848
	mov r0, #3
	mov r1, #0x17
	bl FUN_02389030
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02389874: .word 0x0380FFF4
_02389878: .word 0x0000FFFF
	arm_func_end FUN_023897D8

	arm_func_start FUN_0238987C
FUN_0238987C: ; 0x0238987C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r0, _023898FC ; =0x0380FFF4
	ldr r1, [r0]
	add r5, r1, #0x344
	ldrh r0, [r5, #0xb0]
	cmp r0, #0
	beq _023898F0
	add r0, r1, #0x188
	mov r1, #0x12
	bl FUN_023896DC
	movs r4, r0
	beq _023898F0
	ldr r0, _02389900 ; =0x00000186
	strh r0, [r4, #0xc]
	mov r0, #1
	strh r0, [r4, #0xe]
	mov r0, #0x1000000
	bl FUN_037F8774
	ldrh r1, [r5, #0xb0]
	strh r1, [r4, #0x10]
	mov r1, #0
	strh r1, [r5, #0xb0]
	bl FUN_037F87B0
	ldr r0, _023898FC ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x188
	mov r1, r4
	bl FUN_0238F86C
_023898F0:
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_023898FC: .word 0x0380FFF4
_02389900: .word 0x00000186
	arm_func_end FUN_0238987C

	arm_func_start FUN_02389904
FUN_02389904: ; 0x02389904
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x1000000
	bl FUN_037F8774
	ldr r1, _02389944 ; =0x0380FFF4
	ldr r1, [r1]
	add r1, r1, #0x300
	ldrh r2, [r1, #0xf4]
	orr r2, r2, r4
	strh r2, [r1, #0xf4]
	bl FUN_037F87B0
	mov r0, #2
	mov r1, #0x15
	bl FUN_02389030
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02389944: .word 0x0380FFF4
	arm_func_end FUN_02389904

	arm_func_start FUN_02389948
FUN_02389948: ; 0x02389948
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r0, _02389A44 ; =0x0380FFF4
	ldr r1, [r0]
	add r5, r1, #0x344
	ldr r0, _02389A48 ; =0x0000042C
	add r4, r1, r0
	add r0, r1, #0x300
	ldrh r0, [r0, #0x50]
	cmp r0, #1
	beq _02389984
	cmp r0, #2
	beq _023899B8
	cmp r0, #3
	b _023899F4
_02389984:
	add r0, r4, #0x78
	bl FUN_02389AE0
	cmp r0, #0
	beq _0238999C
	bl FUN_02389A9C
	bl FUN_02394704
_0238999C:
	add r0, r4, #0x28
	bl FUN_02389AE0
	cmp r0, #0
	beq _023899F4
	add r0, r4, #0x28
	bl FUN_02389A50
	b _023899F4
_023899B8:
	add r0, r4, #0x64
	bl FUN_02389AE0
	add r0, r4, #0x28
	bl FUN_02389AE0
	cmp r0, #0
	beq _023899F4
	ldrh r0, [r4, #0x28]
	cmp r0, #0
	beq _023899E0
	bl FUN_02389A9C
_023899E0:
	ldrh r0, [r5, #0x6a]
	bl FUN_02393DD0
	ldrh r0, [r5, #0xb8]
	add r0, r0, #1
	strh r0, [r5, #0xb8]
_023899F4:
	add r0, r4, #0x14
	bl FUN_02389AE0
	cmp r0, #0
	beq _02389A0C
	add r0, r4, #0x14
	bl FUN_02389A50
_02389A0C:
	mov r0, r4
	bl FUN_02389AE0
	cmp r0, #0
	beq _02389A24
	mov r0, r4
	bl FUN_02389A50
_02389A24:
	ldr r1, _02389A4C ; =0x04808004
	ldrh r0, [r1]
	cmp r0, #0
	moveq r0, #1
	streqh r0, [r1]
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_02389A44: .word 0x0380FFF4
_02389A48: .word 0x0000042C
_02389A4C: .word 0x04808004
	arm_func_end FUN_02389948

	arm_func_start FUN_02389A50
FUN_02389A50: ; 0x02389A50
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4]
	cmp r0, #0
	beq _02389A90
	bl FUN_02389A9C
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	sub r1, r1, #0x10
	bl FUN_02395A94
	ldr r0, _02389A98 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r1, [r0, #0xfc]
	add r1, r1, #1
	strh r1, [r0, #0xfc]
_02389A90:
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02389A98: .word 0x0380FFF4
	arm_func_end FUN_02389A50

	arm_func_start FUN_02389A9C
FUN_02389A9C: ; 0x02389A9C
	mov r1, #0
	ldr r0, _02389AD8 ; =0x04808004
	strh r1, [r0]
	mov r2, #0x10
	ldr r1, _02389ADC ; =0x04808214
	b _02389ACC
_02389AB4:
	ldrh r0, [r1]
	cmp r0, #0
	bxeq lr
	cmp r0, #9
	bxeq lr
	sub r2, r2, #1
_02389ACC:
	cmp r2, #0
	bne _02389AB4
	bx lr
	.align 2, 0
_02389AD8: .word 0x04808004
_02389ADC: .word 0x04808214
	arm_func_end FUN_02389A9C

	arm_func_start FUN_02389AE0
FUN_02389AE0: ; 0x02389AE0
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r3, [r0, #8]
	sub lr, r3, #4
	ldrh r2, [r3, #-4]
	ldr r1, _02389B68 ; =0x0000B6B8
	cmp r2, r1
	bne _02389B10
	ldrh r2, [lr, #2]
	ldr r1, _02389B6C ; =0x00001D46
	cmp r2, r1
	beq _02389B58
_02389B10:
	mov ip, #1
	strh ip, [r3, #0xa]
	ldr r3, _02389B68 ; =0x0000B6B8
	strh r3, [lr]
	ldr r2, _02389B6C ; =0x00001D46
	strh r2, [lr, #2]
	ldr r0, [r0, #8]
	add r1, r0, #0xc
	strh r3, [r0, #0xc]
	strh r2, [r1, #2]
	ldr r0, _02389B70 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r1, [r0, #0xfa]
	add r1, r1, #1
	strh r1, [r0, #0xfa]
	mov r0, ip
	b _02389B5C
_02389B58:
	mov r0, #0
_02389B5C:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02389B68: .word 0x0000B6B8
_02389B6C: .word 0x00001D46
_02389B70: .word 0x0380FFF4
	arm_func_end FUN_02389AE0

	arm_func_start FUN_02389B74
FUN_02389B74: ; 0x02389B74
	and r2, r1, #0xf
	mov r3, r2, lsl #1
	ldr r2, _02389BE4 ; =_0239933C
	ldrh ip, [r2, r3]
	ldr r3, _02389BE8 ; =0x00000FFF
	and r1, r3, r1, asr #4
	mov r1, r1, lsl #0x10
	eor ip, ip, r1, lsr #16
	and r1, r0, #0xf
	mov r1, r1, lsl #1
	ldrh r1, [r2, r1]
	eor r1, ip, r1
	mov r1, r1, lsl #0x10
	mov ip, r1, lsr #0x10
	and r1, r3, ip, asr #4
	mov r1, r1, lsl #0x10
	and r3, ip, #0xf
	mov r3, r3, lsl #1
	ldrh r3, [r2, r3]
	eor r1, r3, r1, lsr #16
	mov r0, r0, asr #4
	and r0, r0, #0xf
	mov r0, r0, lsl #1
	ldrh r0, [r2, r0]
	eor r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
	.align 2, 0
_02389BE4: .word _0239933C
_02389BE8: .word 0x00000FFF
	arm_func_end FUN_02389B74

	arm_func_start FUN_02389BEC
FUN_02389BEC: ; 0x02389BEC
	ldr r0, _02389C18 ; =0x0380FFF4
	ldr r0, [r0]
	add r3, r0, #0x5f0
	ldrh r2, [r3, #2]
	ldrh r1, [r3, #4]
	add r0, r0, #0x500
	ldrh r0, [r0, #0xf0]
	mla r0, r1, r0, r2
	strh r0, [r3, #4]
	ldrh r0, [r3, #4]
	bx lr
	.align 2, 0
_02389C18: .word 0x0380FFF4
	arm_func_end FUN_02389BEC

	arm_func_start FUN_02389C1C
FUN_02389C1C: ; 0x02389C1C
	ldr r1, _02389C30 ; =0x0380FFF4
	ldr r1, [r1]
	add r1, r1, #0x500
	strh r0, [r1, #0xf4]
	bx lr
	.align 2, 0
_02389C30: .word 0x0380FFF4
	arm_func_end FUN_02389C1C

	arm_func_start FUN_02389C34
FUN_02389C34: ; 0x02389C34
	ldr r2, _02389C60 ; =0x0380FFF4
	ldr r3, [r2]
	add ip, r3, #0x5f0
	ldr r2, _02389C64 ; =0x0000FFF8
	and r0, r0, r2
	add r2, r0, #5
	add r0, r3, #0x500
	strh r2, [r0, #0xf0]
	orr r0, r1, #1
	strh r0, [ip, #2]
	bx lr
	.align 2, 0
_02389C60: .word 0x0380FFF4
_02389C64: .word 0x0000FFF8
	arm_func_end FUN_02389C34

	arm_func_start FUN_02389C68
FUN_02389C68: ; 0x02389C68
	ands r1, r0, #1
	ldrneh r0, [r0, #-1]
	movne r0, r0, asr #8
	andne r0, r0, #0xff
	ldreqh r0, [r0]
	andeq r0, r0, #0xff
	and r0, r0, #0xff
	bx lr
	arm_func_end FUN_02389C68

	arm_func_start FUN_02389C88
FUN_02389C88: ; 0x02389C88
	ands r2, r0, #1
	ldrneh r2, [r0, #-1]
	andne r2, r2, #0xff
	orrne r1, r2, r1, lsl #8
	strneh r1, [r0, #-1]
	ldreqh r2, [r0]
	andeq r2, r2, #0xff00
	andeq r1, r1, #0xff
	orreq r1, r2, r1
	streqh r1, [r0]
	bx lr
	arm_func_end FUN_02389C88

	arm_func_start FUN_02389CB4
FUN_02389CB4: ; 0x02389CB4
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r2
	mov r4, r3
	mov r2, #0x12
	bl FUN_02389D40
	cmp r4, #0
	beq _02389CE8
	add r0, r6, #0x28
	mov r1, r5
	add r2, r4, #1
	mov r2, r2, lsr #1
	bl FUN_02389D40
_02389CE8:
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	arm_func_end FUN_02389CB4

	arm_func_start FUN_02389CF0
FUN_02389CF0: ; 0x02389CF0
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r2
	mov r4, r3
	mov r2, #0x12
	bl FUN_02389D40
	cmp r4, #0
	beq _02389D24
	add r0, r6, #0x24
	mov r1, r5
	add r2, r4, #1
	mov r2, r2, lsr #1
	bl FUN_02389D40
_02389D24:
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	arm_func_end FUN_02389CF0

	arm_func_start FUN_02389D2C
FUN_02389D2C: ; 0x02389D2C
	add r2, r2, #1
	mov r2, r2, lsr #1
	ldr ip, _02389D3C ; =FUN_02389D40
	bx ip
	.align 2, 0
_02389D3C: .word FUN_02389D40
	arm_func_end FUN_02389D2C

	arm_func_start FUN_02389D40
FUN_02389D40: ; 0x02389D40
	mov r3, r0
	mov r0, r1
	mov r1, r3
	mov r2, r2, lsl #1
	ldr ip, _02389D58 ; =FUN_037FAF50
	bx ip
	.align 2, 0
_02389D58: .word FUN_037FAF50
	arm_func_end FUN_02389D40

	arm_func_start FUN_02389D5C
FUN_02389D5C: ; 0x02389D5C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r6, r1
	add r0, r2, #1
	bic r2, r0, #1
	add r1, r6, r2
	ldr r0, _02389DD8 ; =0x04805F60
	cmp r1, r0
	subhi r5, r0, r6
	subhi r4, r2, r5
	movls r5, r2
	movls r4, #0
	mov r0, r6
	mov r1, r7
	mov r2, r5
	bl FUN_037FAF50
	cmp r4, #0
	beq _02389DCC
	add r1, r6, r5
	ldr r0, _02389DDC ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0xde]
	sub r0, r1, r0
	add r1, r7, r5
	mov r2, r4
	bl FUN_037FAF50
_02389DCC:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_02389DD8: .word 0x04805F60
_02389DDC: .word 0x0380FFF4
	arm_func_end FUN_02389D5C

	arm_func_start FUN_02389DE0
FUN_02389DE0: ; 0x02389DE0
	ldr r0, _02389DF8 ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, _02389DFC ; =0x00000634
	add r0, r1, r0
	ldr ip, _02389E00 ; =FUN_037FA36C
	bx ip
	.align 2, 0
_02389DF8: .word 0x0380FFF4
_02389DFC: .word 0x00000634
_02389E00: .word FUN_037FA36C
	arm_func_end FUN_02389DE0

	arm_func_start FUN_02389E04
FUN_02389E04: ; 0x02389E04
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	ldr r0, _02389E88 ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, _02389E8C ; =0x00000634
	add r0, r1, r0
	bl FUN_037FA36C
	mov r3, #0
	ldr r0, _02389E90 ; =0x000082EA
	umull ip, r2, r5, r0
	mla r2, r5, r3, r2
	mla r2, r3, r0, r2
	mov r1, r2, lsr #6
	mov r0, ip, lsr #6
	orr r0, r0, r2, lsl #26
	mov r2, #0x3e8
	bl FUN_03801800
	mov r3, r0
	mov r2, r1
	mov r0, #0
	str r0, [sp]
	ldr r0, _02389E88 ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, _02389E8C ; =0x00000634
	add r0, r1, r0
	mov r1, r3
	mov r3, r4
	bl FUN_037FA478
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_02389E88: .word 0x0380FFF4
_02389E8C: .word 0x00000634
_02389E90: .word 0x000082EA
	arm_func_end FUN_02389E04

	arm_func_start FUN_02389E94
FUN_02389E94: ; 0x02389E94
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	ldr r0, _02389F00 ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, _02389F04 ; =0x00000634
	add r0, r1, r0
	bl FUN_037FA36C
	mov r2, #0
	str r2, [sp]
	ldr r0, _02389F00 ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, _02389F04 ; =0x00000634
	add r0, r1, r0
	ldr r1, _02389F08 ; =0x000082EA
	umull ip, r3, r5, r1
	mla r3, r5, r2, r3
	mla r3, r2, r1, r3
	mov r2, r3, lsr #6
	mov r1, ip, lsr #6
	orr r1, r1, r3, lsl #26
	mov r3, r4
	bl FUN_037FA478
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_02389F00: .word 0x0380FFF4
_02389F04: .word 0x00000634
_02389F08: .word 0x000082EA
	arm_func_end FUN_02389E94

	arm_func_start FUN_02389F0C
FUN_02389F0C: ; 0x02389F0C
	stmdb sp!, {r4, lr}
	ldr r0, _02389F88 ; =0x0380FFF4
	ldr r4, [r0]
	ldr r0, [r4, #0x3ec]
	add r0, r0, #1
	str r0, [r4, #0x3ec]
	mov r0, #1
	mov r1, #0xa
	bl FUN_02389030
	mov r0, #2
	mov r1, #0x12
	bl FUN_02389030
	mov r0, #1
	mov r1, #0x11
	bl FUN_02389030
	add r0, r4, #0x100
	ldrh r0, [r0, #0xfc]
	cmp r0, #0
	beq _02389F64
	mov r0, #2
	mov r1, #0x13
	bl FUN_02389030
_02389F64:
	add r0, r4, #0x300
	ldrh r0, [r0, #0xf4]
	cmp r0, #0
	beq _02389F80
	mov r0, #2
	mov r1, #0x15
	bl FUN_02389030
_02389F80:
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02389F88: .word 0x0380FFF4
	arm_func_end FUN_02389F0C

	arm_func_start FUN_02389F8C
FUN_02389F8C: ; 0x02389F8C
	ldr r0, _02389FA4 ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, _02389FA8 ; =0x00000608
	add r0, r1, r0
	ldr ip, _02389FAC ; =FUN_037FA36C
	bx ip
	.align 2, 0
_02389FA4: .word 0x0380FFF4
_02389FA8: .word 0x00000608
_02389FAC: .word FUN_037FA36C
	arm_func_end FUN_02389F8C

	arm_func_start FUN_02389FB0
FUN_02389FB0: ; 0x02389FB0
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r5, r0
	mov r4, r1
	ldr r0, _0238A034 ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, _0238A038 ; =0x00000608
	add r0, r1, r0
	bl FUN_037FA36C
	mov r1, #0
	ldr r0, _0238A03C ; =0x000082EA
	umull r3, r2, r5, r0
	mla r2, r5, r1, r2
	mla r2, r1, r0, r2
	mov r6, r3, lsr #6
	orr r6, r6, r2, lsl #26
	bl FUN_037FA080
	mov r5, #0
	adds ip, r6, r0
	adc r2, r1, #0
	str r4, [sp, #4]
	str r5, [sp, #8]
	mov r3, r6
	str r5, [sp]
	ldr r0, _0238A034 ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, _0238A038 ; =0x00000608
	add r0, r1, r0
	mov r1, ip
	bl FUN_037FA3FC
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_0238A034: .word 0x0380FFF4
_0238A038: .word 0x00000608
_0238A03C: .word 0x000082EA
	arm_func_end FUN_02389FB0

	arm_func_start FUN_0238A040
FUN_0238A040: ; 0x0238A040
	ldr r1, _0238A04C ; =FUN_0238A06C
	ldr ip, _0238A050 ; =FUN_0238F730
	bx ip
	.align 2, 0
_0238A04C: .word FUN_0238A06C
_0238A050: .word FUN_0238F730
	arm_func_end FUN_0238A040

	arm_func_start FUN_0238A054
FUN_0238A054: ; 0x0238A054
	mov r1, #0x3e8
	mul r1, r0, r1
	mov r0, r1
	ldr ip, _0238A068 ; =FUN_0238A040
	bx ip
	.align 2, 0
_0238A068: .word FUN_0238A040
	arm_func_end FUN_0238A054

	arm_func_start FUN_0238A06C
FUN_0238A06C: ; 0x0238A06C
	mov r1, #0
	str r1, [r0]
	bx lr
	arm_func_end FUN_0238A06C

	arm_func_start FUN_0238A078
FUN_0238A078: ; 0x0238A078
	stmdb sp!, {r4, lr}
	ldr r0, _0238A0C8 ; =0x0380FFF4
	ldr r4, [r0]
	bl FUN_037FA62C
	cmp r0, #0
	addeq r0, r4, #0x300
	ldreqh r1, [r0, #0x3e]
	orreq r1, r1, #0x40
	streqh r1, [r0, #0x3e]
	beq _0238A0C0
	ldr r0, _0238A0CC ; =0x00000608
	add r0, r4, r0
	bl FUN_037FA61C
	ldr r0, _0238A0D0 ; =0x00000634
	add r0, r4, r0
	bl FUN_037FA61C
	add r0, r4, #0x660
	bl FUN_037FA61C
_0238A0C0:
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_0238A0C8: .word 0x0380FFF4
_0238A0CC: .word 0x00000608
_0238A0D0: .word 0x00000634
	arm_func_end FUN_0238A078

	arm_func_start FUN_0238A0D4
FUN_0238A0D4: ; 0x0238A0D4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0xc
	ldr r0, _0238A254 ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, _0238A258 ; =0x000005F8
	add r7, r1, r0
	mov r8, #0
	str r8, [sp, #4]
	mov r6, #2
	add r5, sp, #4
	ldr r4, _0238A25C ; =_0239935C
_0238A100:
	mov r0, r8, lsl #1
	add r0, r0, #0x44
	mov r1, r6
	mov r2, r5
	bl FUN_02399074
	ldr r1, [sp, #4]
	mov r0, r8, lsl #1
	ldrh r0, [r4, r0]
	add r0, r0, #0x4800000
	add r0, r0, #0x8000
	strh r1, [r0]
	add r8, r8, #1
	cmp r8, #0x10
	blo _0238A100
	ldrh r0, [r7, #2]
	mov r1, r0, lsr #7
	mov r0, r1, lsl #8
	str r0, [sp]
	ldrh r0, [r7, #2]
	and r0, r0, #0x7f
	orr r1, r0, r1, lsl #8
	str r1, [sp]
	ldr r0, _0238A260 ; =0x04808184
	strh r1, [r0]
	mov r5, #0xce
	ldrh r0, [r7, #2]
	and r0, r0, #0x7f
	add r0, r0, #7
	mov r1, #8
	bl FUN_03801848
	mov r8, r0
	ldrh r4, [r7, #4]
	ldrh r0, [r7]
	cmp r0, #3
	bne _0238A1F0
	add r0, r4, #0xce
	mov r1, #1
	add r2, r7, #8
	bl FUN_02399074
	mov sb, #0
	mov r8, sb
	mov r7, #1
	add r6, sp, #0
	b _0238A1E4
_0238A1B0:
	str r8, [sp]
	mov r0, r5
	mov r1, r7
	mov r2, r6
	bl FUN_02399074
	ldr r1, [sp]
	mov r0, sb, lsl #8
	add r0, r0, #0x50000
	orr r0, r1, r0
	str r0, [sp]
	bl FUN_0238A3F0
	add sb, sb, #1
	add r5, r5, #1
_0238A1E4:
	cmp sb, r4
	blo _0238A1B0
	b _0238A248
_0238A1F0:
	mov r0, #0
	str r0, [sp]
	add r6, sp, #0
	b _0238A240
_0238A200:
	mov r0, r5
	mov r1, r8
	mov r2, r6
	bl FUN_02399074
	ldr r0, [sp]
	bl FUN_0238A3F0
	ldrh r0, [r7]
	cmp r0, #2
	bne _0238A238
	ldr r1, [sp]
	mov r0, r1, lsr #0x12
	cmp r0, #9
	biceq r0, r1, #0x7c00
	streq r0, [r7, #0xc]
_0238A238:
	sub r4, r4, #1
	add r5, r5, r8
_0238A240:
	cmp r4, #0
	bne _0238A200
_0238A248:
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	.align 2, 0
_0238A254: .word 0x0380FFF4
_0238A258: .word 0x000005F8
_0238A25C: .word _0239935C
_0238A260: .word 0x04808184
	arm_func_end FUN_0238A0D4

	arm_func_start FUN_0238A264
FUN_0238A264: ; 0x0238A264
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r1, #0x100
	ldr r0, _0238A2D0 ; =0x04808160
	strh r1, [r0]
	mov r6, #0x64
	mov r7, #0
	str r7, [sp]
	mov r5, #1
	add r4, sp, #0
_0238A28C:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_02399074
	mov r0, r7
	ldr r1, [sp]
	bl FUN_0238A418
	add r6, r6, #1
	add r7, r7, #1
	cmp r7, #0x69
	blo _0238A28C
	mov r0, #0x5a
	mov r1, #2
	bl FUN_0238A418
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_0238A2D0: .word 0x04808160
	arm_func_end FUN_0238A264

	arm_func_start FUN_0238A2D4
FUN_0238A2D4: ; 0x0238A2D4
	mov ip, #0
	ldr r2, _0238A308 ; =_023993CC
_0238A2DC:
	mov r3, ip, lsl #2
	add r0, r2, ip, lsl #2
	ldrh r1, [r0, #2]
	ldrh r0, [r2, r3]
	add r0, r0, #0x4800000
	add r0, r0, #0x8000
	strh r1, [r0]
	add ip, ip, #1
	cmp ip, #0x19
	blo _0238A2DC
	bx lr
	.align 2, 0
_0238A308: .word _023993CC
	arm_func_end FUN_0238A2D4

	arm_func_start FUN_0238A30C
FUN_0238A30C: ; 0x0238A30C
	stmdb sp!, {r4, lr}
	ldr r0, _0238A378 ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, _0238A37C ; =0x000005F8
	add r4, r1, r0
	mov r0, #0
	mov r1, r4
	mov r2, #0x10
	bl FUN_037FAF38
	mov r0, #0x40
	mov r1, #1
	mov r2, r4
	bl FUN_02399074
	mov r0, #0x41
	mov r1, #1
	add r2, r4, #2
	bl FUN_02399074
	mov r0, #0x42
	mov r1, #1
	add r2, r4, #4
	bl FUN_02399074
	mov r0, #0x43
	mov r1, #1
	add r2, r4, #6
	bl FUN_02399074
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_0238A378: .word 0x0380FFF4
_0238A37C: .word 0x000005F8
	arm_func_end FUN_0238A30C

	arm_func_start FUN_0238A380
FUN_0238A380: ; 0x0238A380
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r8, #0x64
	mov r6, #0
	str r6, [sp]
	mov r7, r6
	mov r5, #1
	add r4, sp, #0
_0238A3A0:
	mov r0, r8
	mov r1, r5
	mov r2, r4
	bl FUN_02399074
	cmp r7, #1
	ldreq r0, [sp]
	andeq r0, r0, #0x80
	streq r0, [sp]
	ldr r0, [sp]
	and r0, r0, #0xff
	mov r1, r6
	bl FUN_02389B74
	mov r6, r0
	add r8, r8, #1
	add r7, r7, #1
	cmp r7, #0x69
	blo _0238A3A0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	arm_func_end FUN_0238A380

	arm_func_start FUN_0238A3F0
FUN_0238A3F0: ; 0x0238A3F0
	ldr r1, _0238A40C ; =0x0480817E
	strh r0, [r1]
	mov r1, r0, lsr #0x10
	ldr r0, _0238A410 ; =0x0480817C
	strh r1, [r0]
	ldr ip, _0238A414 ; =FUN_0238F640
	bx ip
	.align 2, 0
_0238A40C: .word 0x0480817E
_0238A410: .word 0x0480817C
_0238A414: .word FUN_0238F640
	arm_func_end FUN_0238A3F0

	arm_func_start FUN_0238A418
FUN_0238A418: ; 0x0238A418
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r2, _0238A450 ; =0x0480815A
	strh r1, [r2]
	orr r1, r0, #0x5000
	ldr r0, _0238A454 ; =0x04808158
	strh r1, [r0]
	bl FUN_0238F674
	cmp r0, #0
	mvnne r0, #0
	moveq r0, #0
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_0238A450: .word 0x0480815A
_0238A454: .word 0x04808158
	arm_func_end FUN_0238A418

	arm_func_start FUN_0238A458
FUN_0238A458: ; 0x0238A458
	stmdb sp!, {lr}
	sub sp, sp, #4
	orr r1, r0, #0x6000
	ldr r0, _0238A484 ; =0x04808158
	strh r1, [r0]
	bl FUN_0238F674
	ldr r0, _0238A488 ; =0x0480815C
	ldrh r0, [r0]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_0238A484: .word 0x04808158
_0238A488: .word 0x0480815C
	arm_func_end FUN_0238A458

	arm_func_start FUN_0238A48C
FUN_0238A48C: ; 0x0238A48C
	stmdb sp!, {r4, lr}
	ldr r0, _0238A51C ; =0x0380FFF4
	ldr r0, [r0]
	add r4, r0, #0x344
	bl FUN_02389F8C
	bl FUN_02389DE0
	mov r0, #0x20
	bl FUN_0238AF00
	mov r1, #0
	strh r1, [r4, #0xa4]
	strh r1, [r4, #0x12]
	ldr r0, _0238A520 ; =0x04808012
	strh r1, [r0]
	ldr r0, _0238A524 ; =0x04808004
	strh r1, [r0]
	ldr r0, _0238A528 ; =0x048080EA
	strh r1, [r0]
	ldr r0, _0238A52C ; =0x048080E8
	strh r1, [r0]
	ldr r0, _0238A530 ; =0x04808008
	strh r1, [r0]
	ldr r0, _0238A534 ; =0x0480800A
	strh r1, [r0]
	ldrh r0, [r4, #0xc]
	cmp r0, #1
	bne _0238A4F8
	bl FUN_02394A70
_0238A4F8:
	ldr r1, _0238A538 ; =0x0000FFFF
	ldr r0, _0238A53C ; =0x048080AC
	strh r1, [r0]
	ldr r0, _0238A540 ; =0x048080B4
	strh r1, [r0]
	bl FUN_02394CAC
	bl FUN_02389290
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_0238A51C: .word 0x0380FFF4
_0238A520: .word 0x04808012
_0238A524: .word 0x04808004
_0238A528: .word 0x048080EA
_0238A52C: .word 0x048080E8
_0238A530: .word 0x04808008
_0238A534: .word 0x0480800A
_0238A538: .word 0x0000FFFF
_0238A53C: .word 0x048080AC
_0238A540: .word 0x048080B4
	arm_func_end FUN_0238A48C

	arm_func_start FUN_0238A544
FUN_0238A544: ; 0x0238A544
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	ldr r0, _0238A958 ; =0x0380FFF4
	ldr r0, [r0]
	add r7, r0, #0x344
	add r4, r0, #0x31c
	bl FUN_0238A48C
	ldr r2, _0238A95C ; =0x04808044
	ldrh r1, [r2]
	ldrh r0, [r2]
	add r0, r1, r0, lsl #8
	ldrh r1, [r2]
	bl FUN_02389C34
	mov r0, #1
	strh r0, [r7, #0x7c]
	ldrh r0, [r4, #0x1e]
	mov r0, r0, lsl #0x1d
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	ldreqh r0, [r7, #0x7c]
	orreq r0, r0, #0x20
	streqh r0, [r7, #0x7c]
	ldrh r0, [r4, #0x18]
	cmp r0, #0
	ldrneh r0, [r7, #0x7c]
	orrne r0, r0, #0x10
	strneh r0, [r7, #0x7c]
	mov r2, #0
	strh r2, [r7, #0x12]
	mov r1, #0x8000
	ldr r0, _0238A960 ; =0x04808032
	strh r1, [r0]
	ldr r1, _0238A964 ; =0x0000FFFF
	ldr r0, _0238A968 ; =0x04808134
	strh r1, [r0]
	ldr r0, _0238A96C ; =0x0480802A
	strh r2, [r0]
	ldr r0, _0238A970 ; =0x04808028
	strh r2, [r0]
	mov r1, #0xf
	ldr r0, _0238A974 ; =0x04808038
	strh r1, [r0]
	bl FUN_0238E9A0
	bl FUN_02398DB8
	bl FUN_023936C4
	bl FUN_02395E50
	mov r1, #0x8000
	ldr r0, _0238A978 ; =0x04808030
	strh r1, [r0]
	ldr r1, _0238A964 ; =0x0000FFFF
	ldr r0, _0238A97C ; =0x04808010
	strh r1, [r0]
	ldr r1, _0238A980 ; =0x00001FFF
	ldr r0, _0238A984 ; =0x048081AE
	strh r1, [r0]
	ldr r0, _0238A958 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x600
	ldrh r0, [r0, #0x90]
	ands r0, r0, #8
	movne r1, #0x400
	ldrne r0, _0238A988 ; =0x048081AA
	strneh r1, [r0]
	moveq r1, #0
	ldreq r0, _0238A988 ; =0x048081AA
	streqh r1, [r0]
	mov r5, #0
	ldr r0, _0238A98C ; =0x04808008
	strh r5, [r0]
	ldr r3, _0238A990 ; =0x0480800A
	strh r5, [r3]
	ldrh r1, [r7, #0xc]
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _0238A91C
_0238A670: ; jump table
	b _0238A684 ; case 0
	b _0238A6C8 ; case 1
	b _0238A7EC ; case 2
	b _0238A880 ; case 3
	b _0238A8F8 ; case 4
_0238A684:
	mov r2, #0x3f
	ldr r1, _0238A994 ; =0x04808012
	strh r2, [r1]
	ldr r2, _0238A964 ; =0x0000FFFF
	ldr r1, _0238A998 ; =0x048080D0
	strh r2, [r1]
	mov r2, #8
	ldr r1, _0238A99C ; =0x048080E0
	strh r2, [r1]
	strh r5, [r0]
	strh r5, [r3]
	ldr r0, _0238A9A0 ; =0x048080E8
	strh r5, [r0]
	mov r1, #1
	ldr r0, _0238A9A4 ; =0x04808004
	strh r1, [r0]
	b _0238A91C
_0238A6C8:
	ldr r2, _0238A9A8 ; =0x0000703F
	ldr r1, _0238A994 ; =0x04808012
	strh r2, [r1]
	ldr r2, _0238A980 ; =0x00001FFF
	ldr r1, _0238A984 ; =0x048081AE
	strh r2, [r1]
	ldr r2, _0238A9AC ; =0x00000301
	ldr r1, _0238A998 ; =0x048080D0
	strh r2, [r1]
	mov r2, #0xd
	ldr r1, _0238A99C ; =0x048080E0
	strh r2, [r1]
	mov r1, #0xe000
	strh r1, [r0]
	mov r1, #1
	ldr r0, _0238A9A4 ; =0x04808004
	strh r1, [r0]
	add r6, sp, #0
	ldr r0, _0238A9B0 ; =0x048080F8
	ldrh r0, [r0]
	strh r0, [r6]
	ldr r0, _0238A9B4 ; =0x048080FA
	ldrh r0, [r0]
	strh r0, [r6, #2]
	ldr r0, _0238A9B8 ; =0x048080FC
	ldrh r0, [r0]
	strh r0, [r6, #4]
	ldr r0, _0238A9BC ; =0x048080FE
	ldrh r0, [r0]
	strh r0, [r6, #6]
	ldrh r0, [r7, #0x6e]
	mov r4, r0, lsl #0xa
	ldr r0, [sp]
	ldr r1, [sp, #4]
	mov r2, r4
	mov r3, r5
	bl FUN_03801800
	str r0, [sp]
	str r1, [sp, #4]
	mov r2, #1
	adds ip, r0, r2
	adc r3, r1, #0
	str ip, [sp]
	str r3, [sp, #4]
	umull r1, r0, ip, r4
	mla r0, ip, r5, r0
	mla r0, r3, r4, r0
	str r1, [sp]
	str r0, [sp, #4]
	ldrh r1, [r6, #6]
	ldr r0, _0238A9C0 ; =0x048080F6
	strh r1, [r0]
	ldrh r1, [r6, #4]
	ldr r0, _0238A9C4 ; =0x048080F4
	strh r1, [r0]
	ldrh r1, [r6, #2]
	ldr r0, _0238A9C8 ; =0x048080F2
	strh r1, [r0]
	ldrh r0, [r6]
	orr r1, r0, #1
	ldr r0, _0238A9CC ; =0x048080F0
	strh r1, [r0]
	ldr r0, _0238A9A0 ; =0x048080E8
	strh r2, [r0]
	ldr r0, _0238A9D0 ; =0x048080EA
	strh r2, [r0]
	mov r0, #0x40
	bl FUN_0238AF00
	bl FUN_02394A98
	mov r1, #2
	ldr r0, _0238A9D4 ; =0x048080AE
	strh r1, [r0]
	b _0238A91C
_0238A7EC:
	ldr r0, _0238A9D8 ; =0x0000E0BF
	ldr r1, _0238A994 ; =0x04808012
	strh r0, [r1]
	ldr r0, _0238A958 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x600
	ldrh r0, [r0, #0x90]
	ands r0, r0, #0x20
	beq _0238A82C
	ldrh r0, [r1]
	orr r0, r0, #0x40
	strh r0, [r1]
	ldr r1, _0238A988 ; =0x048081AA
	ldrh r0, [r1]
	orr r0, r0, #0x68
	strh r0, [r1]
_0238A82C:
	ldrh r0, [r7, #0x64]
	ands r0, r0, #1
	ldrne r1, _0238A9DC ; =0x00000581
	ldrne r0, _0238A998 ; =0x048080D0
	strneh r1, [r0]
	ldreq r1, _0238A9E0 ; =0x00000181
	ldreq r0, _0238A998 ; =0x048080D0
	streqh r1, [r0]
	mov r1, #0xb
	ldr r0, _0238A99C ; =0x048080E0
	strh r1, [r0]
	mov r1, #1
	ldr r0, _0238A9A4 ; =0x04808004
	strh r1, [r0]
	ldr r0, _0238A9A0 ; =0x048080E8
	strh r1, [r0]
	ldr r0, _0238A9D0 ; =0x048080EA
	strh r1, [r0]
	mov r0, #0x20
	bl FUN_0238AF00
	b _0238A91C
_0238A880:
	ldr r1, _0238A964 ; =0x0000FFFF
	ldr r0, _0238A97C ; =0x04808010
	strh r1, [r0]
	ldr r1, _0238A9E4 ; =0x0000C03F
	ldr r0, _0238A994 ; =0x04808012
	strh r1, [r0]
	ldrh r0, [r7, #0x64]
	ands r0, r0, #1
	ldrne r1, _0238A9E8 ; =0x00000401
	ldrne r0, _0238A998 ; =0x048080D0
	strneh r1, [r0]
	moveq r1, #1
	ldreq r0, _0238A998 ; =0x048080D0
	streqh r1, [r0]
	mov r1, #0xb
	ldr r0, _0238A99C ; =0x048080E0
	strh r1, [r0]
	mov r1, #1
	ldr r0, _0238A9A4 ; =0x04808004
	strh r1, [r0]
	ldr r0, _0238A9A0 ; =0x048080E8
	strh r1, [r0]
	ldr r0, _0238A9D0 ; =0x048080EA
	strh r1, [r0]
	mov r1, #0
	ldr r0, _0238A9EC ; =0x04808048
	strh r1, [r0]
	mov r0, #0x20
	bl FUN_0238AF00
	b _0238A91C
_0238A8F8:
	ldr r0, _0238A994 ; =0x04808012
	strh r5, [r0]
	ldr r0, _0238A984 ; =0x048081AE
	strh r5, [r0]
	mov r1, #1
	ldr r0, _0238A9A4 ; =0x04808004
	strh r1, [r0]
	mov r0, #0x20
	bl FUN_0238AF00
_0238A91C:
	mov r1, #0
	ldr r0, _0238A9EC ; =0x04808048
	strh r1, [r0]
	bl FUN_0238B1B4
	mov r0, #2
	ldr r1, _0238A9D4 ; =0x048080AE
	strh r0, [r1]
	ldrh r1, [r7, #0xe]
	cmp r1, #1
	bne _0238A948
	bl FUN_0238B38C
_0238A948:
	bl FUN_0238F7BC
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_0238A958: .word 0x0380FFF4
_0238A95C: .word 0x04808044
_0238A960: .word 0x04808032
_0238A964: .word 0x0000FFFF
_0238A968: .word 0x04808134
_0238A96C: .word 0x0480802A
_0238A970: .word 0x04808028
_0238A974: .word 0x04808038
_0238A978: .word 0x04808030
_0238A97C: .word 0x04808010
_0238A980: .word 0x00001FFF
_0238A984: .word 0x048081AE
_0238A988: .word 0x048081AA
_0238A98C: .word 0x04808008
_0238A990: .word 0x0480800A
_0238A994: .word 0x04808012
_0238A998: .word 0x048080D0
_0238A99C: .word 0x048080E0
_0238A9A0: .word 0x048080E8
_0238A9A4: .word 0x04808004
_0238A9A8: .word 0x0000703F
_0238A9AC: .word 0x00000301
_0238A9B0: .word 0x048080F8
_0238A9B4: .word 0x048080FA
_0238A9B8: .word 0x048080FC
_0238A9BC: .word 0x048080FE
_0238A9C0: .word 0x048080F6
_0238A9C4: .word 0x048080F4
_0238A9C8: .word 0x048080F2
_0238A9CC: .word 0x048080F0
_0238A9D0: .word 0x048080EA
_0238A9D4: .word 0x048080AE
_0238A9D8: .word 0x0000E0BF
_0238A9DC: .word 0x00000581
_0238A9E0: .word 0x00000181
_0238A9E4: .word 0x0000C03F
_0238A9E8: .word 0x00000401
_0238A9EC: .word 0x04808048
	arm_func_end FUN_0238A544

	arm_func_start FUN_0238A9F0
FUN_0238A9F0: ; 0x0238A9F0
	ldr r0, _0238AA38 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r1, [r0, #0x30]
	cmp r1, #0
	beq _0238AA14
	cmp r1, #1
	beq _0238AA28
	b _0238AA30
_0238AA14:
	ldrh r0, [r0, #0xa4]
	ands r0, r0, #1
	beq _0238AA30
	mov r0, #0xa
	bx lr
_0238AA28:
	mov r0, #0xa
	bx lr
_0238AA30:
	mov r0, #0x14
	bx lr
	.align 2, 0
_0238AA38: .word 0x0380FFF4
	arm_func_end FUN_0238A9F0

	arm_func_start FUN_0238AA3C
FUN_0238AA3C: ; 0x0238AA3C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r4, r0
	mov sl, r1
	mov r0, #0
	strh r0, [sl]
	strh r0, [sl, #2]
	add r0, r4, #1
	bl FUN_02389C68
	mov r8, r0
	mov sb, #0
	ldr r6, _0238AAF4 ; =_02399430
	add r7, r4, #2
	add r4, sl, #2
	mov r5, #1
	b _0238AAE4
_0238AA78:
	add r0, r7, sb
	bl FUN_02389C68
	and r1, r0, #0x7f
	sub r1, r1, #1
	cmp r1, #0x78
	bhs _0238AAC4
	mov r1, r1, lsl #1
	ldrh r3, [r6, r1]
	cmp r3, #0xff
	beq _0238AAC4
	mov r2, r5, lsl r3
	ldrh r1, [r4]
	orr r1, r1, r5, lsl r3
	strh r1, [r4]
	ands r0, r0, #0x80
	ldrneh r0, [sl]
	orrne r0, r0, r2
	strneh r0, [sl]
	b _0238AAE0
_0238AAC4:
	ldrh r1, [r4]
	orr r1, r1, #0x8000
	strh r1, [r4]
	ands r0, r0, #0x80
	ldrneh r0, [sl]
	orrne r0, r0, #0x8000
	strneh r0, [sl]
_0238AAE0:
	add sb, sb, #1
_0238AAE4:
	cmp sb, r8
	blo _0238AA78
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	.align 2, 0
_0238AAF4: .word _02399430
	arm_func_end FUN_0238AA3C

	arm_func_start FUN_0238AAF8
FUN_0238AAF8: ; 0x0238AAF8
	mov r2, #1
	ldr r1, _0238AB14 ; =0x0380FFF4
	ldr r1, [r1]
	add r1, r1, #0x300
	ldrh r1, [r1, #0x2c]
	and r0, r1, r2, lsl r0
	bx lr
	.align 2, 0
_0238AB14: .word 0x0380FFF4
	arm_func_end FUN_0238AAF8

	arm_func_start FUN_0238AB18
FUN_0238AB18: ; 0x0238AB18
	ldrh r3, [r0, #4]
	ldrh r2, [r1, #4]
	cmp r3, r2
	bne _0238AB4C
	ldrh r3, [r0, #2]
	ldrh r2, [r1, #2]
	cmp r3, r2
	bne _0238AB4C
	ldrh r2, [r0]
	ldrh r0, [r1]
	cmp r2, r0
	moveq r0, #1
	bxeq lr
_0238AB4C:
	mov r0, #0
	bx lr
	arm_func_end FUN_0238AB18

	arm_func_start FUN_0238AB54
FUN_0238AB54: ; 0x0238AB54
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sb, r0
	mov r8, r1
	ldr r0, _0238AC20 ; =0x0380FFF4
	ldr r0, [r0]
	add r2, r0, #0x344
	cmp sb, #0x20
	movhi r0, #0
	bhi _0238AC18
	ldrh r1, [r2, #0x1e]
	cmp r1, #0
	moveq r0, #1
	beq _0238AC18
	add r0, r0, #0x400
	ldrh r0, [r0, #4]
	cmp r0, #0x13
	bne _0238ABAC
	cmp sb, r1
	movlo r0, #0
	blo _0238AC18
	mov sb, r1
	b _0238ABB8
_0238ABAC:
	cmp sb, r1
	movne r0, #0
	bne _0238AC18
_0238ABB8:
	add r7, r2, #0x20
	add r6, r2, #0x40
	mov r5, #0
	b _0238AC0C
_0238ABC8:
	mov r0, r6
	bl FUN_02389C68
	mov r4, r0
	add r6, r6, #1
	mov r0, r8
	bl FUN_02389C68
	mov sl, r0
	add r8, r8, #1
	mov r0, r7
	bl FUN_02389C68
	add r7, r7, #1
	orr r1, sl, r4
	orr r0, r0, r4
	cmp r1, r0
	movne r0, #0
	bne _0238AC18
	add r5, r5, #1
_0238AC0C:
	cmp r5, sb
	blo _0238ABC8
	mov r0, #1
_0238AC18:
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	.align 2, 0
_0238AC20: .word 0x0380FFF4
	arm_func_end FUN_0238AB54

	arm_func_start FUN_0238AC24
FUN_0238AC24: ; 0x0238AC24
	ldr r0, _0238AE1C ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, _0238AE20 ; =0x0000053C
	add r1, r1, r0
	ldr r0, _0238AE24 ; =0x048081B0
	ldrh r2, [r0]
	ldr r3, [r1, #0x50]
	and r2, r2, #0xff
	add r2, r3, r2
	str r2, [r1, #0x50]
	ldrh ip, [r0, #2]
	ldr r2, [r1, #0x4c]
	add r2, r2, ip, asr #8
	str r2, [r1, #0x4c]
	ldr r3, [r1, #0x5c]
	and r2, ip, #0xff
	add r2, r3, r2
	str r2, [r1, #0x5c]
	ldrh ip, [r0, #4]
	ldr r2, [r1, #0x58]
	add r2, r2, ip, asr #8
	str r2, [r1, #0x58]
	ldr r3, [r1, #0x54]
	and r2, ip, #0xff
	add r2, r3, r2
	str r2, [r1, #0x54]
	ldrh ip, [r0, #6]
	ldr r2, [r1, #0x60]
	add r2, r2, ip, asr #8
	str r2, [r1, #0x60]
	ldr r3, [r1, #0x38]
	and r2, ip, #0xff
	add r2, r3, r2
	str r2, [r1, #0x38]
	ldrh r2, [r0, #8]
	ldr r3, [r1, #0x48]
	and r2, r2, #0xff
	add r2, r3, r2
	str r2, [r1, #0x48]
	ldrh r2, [r0, #0xa]
	ldr r3, [r1, #0x20]
	and r2, r2, #0xff
	add r2, r3, r2
	str r2, [r1, #0x20]
	ldrh ip, [r0, #0xc]
	ldr r2, [r1, #0x30]
	add r2, r2, ip, asr #8
	str r2, [r1, #0x30]
	ldr r3, [r1, #0x44]
	and r2, ip, #0xff
	add r2, r3, r2
	str r2, [r1, #0x44]
	ldrh ip, [r0, #0xe]
	ldr r3, [r1, #0x3c]
	and r2, ip, #0xff
	add r2, r3, r2
	str r2, [r1, #0x3c]
	ldr r2, [r1, #0x40]
	add r2, r2, ip, asr #8
	str r2, [r1, #0x40]
	ldrh r2, [r0, #0x10]
	ldr r3, [r1, #0xc]
	and r2, r2, #0xff
	add r2, r3, r2
	str r2, [r1, #0xc]
	ldrh r3, [r0, #0x20]
	ldr r2, [r1, #0x78]
	add r2, r2, r3, asr #8
	str r2, [r1, #0x78]
	ldrh ip, [r0, #0x22]
	ldr r3, [r1, #0x7c]
	and r2, ip, #0xff
	add r2, r3, r2
	str r2, [r1, #0x7c]
	ldr r2, [r1, #0x80]
	add r2, r2, ip, asr #8
	str r2, [r1, #0x80]
	ldrh ip, [r0, #0x24]
	ldr r3, [r1, #0x84]
	and r2, ip, #0xff
	add r2, r3, r2
	str r2, [r1, #0x84]
	ldr r2, [r1, #0x88]
	add r2, r2, ip, asr #8
	str r2, [r1, #0x88]
	ldrh ip, [r0, #0x26]
	ldr r3, [r1, #0x8c]
	and r2, ip, #0xff
	add r2, r3, r2
	str r2, [r1, #0x8c]
	ldr r2, [r1, #0x90]
	add r2, r2, ip, asr #8
	str r2, [r1, #0x90]
	ldrh ip, [r0, #0x28]
	ldr r3, [r1, #0x94]
	and r2, ip, #0xff
	add r2, r3, r2
	str r2, [r1, #0x94]
	ldr r2, [r1, #0x98]
	add r2, r2, ip, asr #8
	str r2, [r1, #0x98]
	ldrh ip, [r0, #0x2a]
	ldr r3, [r1, #0x9c]
	and r2, ip, #0xff
	add r2, r3, r2
	str r2, [r1, #0x9c]
	ldr r2, [r1, #0xa0]
	add r2, r2, ip, asr #8
	str r2, [r1, #0xa0]
	ldrh ip, [r0, #0x2c]
	ldr r3, [r1, #0xa4]
	and r2, ip, #0xff
	add r2, r3, r2
	str r2, [r1, #0xa4]
	ldr r2, [r1, #0xa8]
	add r2, r2, ip, asr #8
	str r2, [r1, #0xa8]
	ldrh r3, [r0, #0x2e]
	ldr r2, [r1, #0xac]
	and r0, r3, #0xff
	add r0, r2, r0
	str r0, [r1, #0xac]
	ldr r0, [r1, #0xb0]
	add r0, r0, r3, asr #8
	str r0, [r1, #0xb0]
	bx lr
	.align 2, 0
_0238AE1C: .word 0x0380FFF4
_0238AE20: .word 0x0000053C
_0238AE24: .word 0x048081B0
	arm_func_end FUN_0238AC24

	arm_func_start FUN_0238AE28
FUN_0238AE28: ; 0x0238AE28
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_0238AC24
	mov r0, #0
	ldr r1, _0238AE5C ; =0x0380FFF4
	ldr r2, [r1]
	ldr r1, _0238AE60 ; =0x0000053C
	add r1, r2, r1
	mov r2, #0xb4
	bl FUN_037FAF6C
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_0238AE5C: .word 0x0380FFF4
_0238AE60: .word 0x0000053C
	arm_func_end FUN_0238AE28

	arm_func_start FUN_0238AE64
FUN_0238AE64: ; 0x0238AE64
	ldrh ip, [r1]
	strh ip, [r0]
	ldrh ip, [r1, #2]
	strh ip, [r0, #2]
	ldrh r1, [r1, #4]
	strh r1, [r0, #4]
	ldrh r1, [r2]
	strh r1, [r0, #6]
	ldrh r1, [r2, #2]
	strh r1, [r0, #8]
	ldrh r1, [r2, #4]
	strh r1, [r0, #0xa]
	ldrh r1, [r3]
	strh r1, [r0, #0xc]
	ldrh r1, [r3, #2]
	strh r1, [r0, #0xe]
	ldrh r1, [r3, #4]
	strh r1, [r0, #0x10]
	bx lr
	arm_func_end FUN_0238AE64

	arm_func_start FUN_0238AEB0
FUN_0238AEB0: ; 0x0238AEB0
	ldrh r3, [r1]
	strh r3, [r0]
	ldrh r3, [r1, #2]
	strh r3, [r0, #2]
	ldrh r1, [r1, #4]
	strh r1, [r0, #4]
	ldrh r1, [r2]
	strh r1, [r0, #6]
	ldrh r1, [r2, #2]
	strh r1, [r0, #8]
	ldrh r1, [r2, #4]
	strh r1, [r0, #0xa]
	bx lr
	arm_func_end FUN_0238AEB0

	arm_func_start FUN_0238AEE4
FUN_0238AEE4: ; 0x0238AEE4
	ldrh r2, [r1]
	strh r2, [r0]
	ldrh r2, [r1, #2]
	strh r2, [r0, #2]
	ldrh r1, [r1, #4]
	strh r1, [r0, #4]
	bx lr
	arm_func_end FUN_0238AEE4

	arm_func_start FUN_0238AF00
FUN_0238AF00: ; 0x0238AF00
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r0, _0238AF94 ; =0x0380FFF4
	ldr r0, [r0]
	add r4, r0, #0x344
	ldrh r0, [r4, #8]
	cmp r0, r5
	beq _0238AF88
	cmp r0, #0x40
	bne _0238AF30
	bl FUN_02389DE0
_0238AF30:
	cmp r5, #0
	beq _0238AF4C
	cmp r5, #0x10
	beq _0238AF54
	cmp r5, #0x40
	beq _0238AF68
	b _0238AF84
_0238AF4C:
	bl FUN_0238B304
	b _0238AF84
_0238AF54:
	mov r0, #0
	bl FUN_0238B378
	bl FUN_0238A48C
	bl FUN_0238B270
	b _0238AF84
_0238AF68:
	ldrh r0, [r4, #0xc]
	cmp r0, #2
	bne _0238AF78
	bl FUN_0238B184
_0238AF78:
	mov r0, #0x64
	ldr r1, _0238AF98 ; =FUN_02389F0C
	bl FUN_02389FB0
_0238AF84:
	strh r5, [r4, #8]
_0238AF88:
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_0238AF94: .word 0x0380FFF4
_0238AF98: .word FUN_02389F0C
	arm_func_end FUN_0238AF00

	arm_func_start FUN_0238AF9C
FUN_0238AF9C: ; 0x0238AF9C
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _0238AFC4 ; =0x04808094
	ldrh r0, [r0]
	ands r0, r0, #0x8000
	bne _0238AFB8
	bl FUN_0238F6A8
_0238AFB8:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_0238AFC4: .word 0x04808094
	arm_func_end FUN_0238AF9C

	arm_func_start FUN_0238AFC8
FUN_0238AFC8: ; 0x0238AFC8
	ldr r0, _0238AFE4 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r1, [r0, #0xae]
	ldr r0, _0238AFE8 ; =0x04808028
	strh r1, [r0]
	bx lr
	.align 2, 0
_0238AFE4: .word 0x0380FFF4
_0238AFE8: .word 0x04808028
	arm_func_end FUN_0238AFC8

	arm_func_start FUN_0238AFEC
FUN_0238AFEC: ; 0x0238AFEC
	stmdb sp!, {r4, lr}
	ldr r0, _0238B040 ; =0x0380FFF4
	ldr r0, [r0]
	add r4, r0, #0x344
	mov r0, #0
	strh r0, [r4, #0x6a]
	bl FUN_0238F6A8
	mov r1, #0
	ldr r0, _0238B044 ; =0x0480802A
	strh r1, [r0]
	ldrh r0, [r4, #0x88]
	cmp r0, #0
	beq _0238B038
	bl FUN_02394E40
	ldrh r0, [r4, #0x88]
	mov r1, #0x20
	bl FUN_0238F224
	mov r0, #0
	strh r0, [r4, #0x88]
_0238B038:
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_0238B040: .word 0x0380FFF4
_0238B044: .word 0x0480802A
	arm_func_end FUN_0238AFEC

	arm_func_start FUN_0238B048
FUN_0238B048: ; 0x0238B048
	ldr r2, _0238B080 ; =0x0380FFF4
	ldr r1, [r2]
	add r1, r1, #0x300
	strh r0, [r1, #0xae]
	ldr r1, _0238B084 ; =0x0480802A
	strh r0, [r1]
	ldr r1, [r2]
	add r1, r1, #0x300
	ldrh r1, [r1, #0x3a]
	mov r1, r1, lsl #0x18
	movs r1, r1, lsr #0x1f
	ldrne r1, _0238B088 ; =0x04808028
	strneh r0, [r1]
	bx lr
	.align 2, 0
_0238B080: .word 0x0380FFF4
_0238B084: .word 0x0480802A
_0238B088: .word 0x04808028
	arm_func_end FUN_0238B048

	arm_func_start FUN_0238B08C
FUN_0238B08C: ; 0x0238B08C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	mov r5, r1
	ldr r0, _0238B134 ; =0x0380FFF4
	ldr r0, [r0]
	add r4, r0, #0x344
	cmp r6, #0x80
	movhi r0, #4
	bhi _0238B12C
	cmp r6, #0
	beq _0238B11C
	ldrh r0, [r4, #0xa2]
	ands r0, r0, #1
	beq _0238B10C
	ldr r8, [r4, #0x9c]
	mov r0, r8
	mov r1, #0xff
	bl FUN_02389C88
	add r8, r8, #1
	mov r7, #0
	b _0238B100
_0238B0E0:
	mov r0, r5
	bl FUN_02389C68
	mov r1, r0
	mov r0, r8
	bl FUN_02389C88
	add r8, r8, #1
	add r5, r5, #1
	add r7, r7, #1
_0238B100:
	cmp r7, r6
	blo _0238B0E0
	b _0238B11C
_0238B10C:
	mov r0, r5
	ldr r1, [r4, #0x9c]
	add r2, r6, #1
	bl FUN_037FAF50
_0238B11C:
	strh r6, [r4, #0xa0]
	mov r0, #1
	strh r0, [r4, #0xa4]
	mov r0, #0
_0238B12C:
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_0238B134: .word 0x0380FFF4
	arm_func_end FUN_0238B08C

	arm_func_start FUN_0238B138
FUN_0238B138: ; 0x0238B138
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r0, _0238B180 ; =0x0380FFF4
	ldr r0, [r0]
	add r4, r0, #0x344
	cmp r5, #0x80
	movhi r0, #4
	bhi _0238B174
	mov r0, r1
	ldr r1, [r4, #0x9c]
	add r2, r5, #1
	bl FUN_037FAF50
	strh r5, [r4, #0xa0]
	mov r0, #0
_0238B174:
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_0238B180: .word 0x0380FFF4
	arm_func_end FUN_0238B138

	arm_func_start FUN_0238B184
FUN_0238B184: ; 0x0238B184
	mov r1, #0
	ldr r0, _0238B1AC ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	strh r1, [r0, #0xea]
	ldr r1, _0238B1B0 ; =0x04808038
	ldrh r0, [r1]
	orr r0, r0, #2
	strh r0, [r1]
	bx lr
	.align 2, 0
_0238B1AC: .word 0x0380FFF4
_0238B1B0: .word 0x04808038
	arm_func_end FUN_0238B184

	arm_func_start FUN_0238B1B4
FUN_0238B1B4: ; 0x0238B1B4
	mov r2, #1
	ldr r1, _0238B1FC ; =0x0380FFF4
	ldr r0, [r1]
	add r0, r0, #0x300
	strh r2, [r0, #0xea]
	ldr r0, [r1]
	add r0, r0, #0x400
	ldrh r0, [r0, #0x68]
	cmp r0, #0
	bxne lr
	ldr r1, _0238B200 ; =0x04808038
	ldrh r0, [r1]
	bic r0, r0, #2
	strh r0, [r1]
	mov r1, #0
	ldr r0, _0238B204 ; =0x04808048
	strh r1, [r0]
	bx lr
	.align 2, 0
_0238B1FC: .word 0x0380FFF4
_0238B200: .word 0x04808038
_0238B204: .word 0x04808048
	arm_func_end FUN_0238B1B4

	arm_func_start FUN_0238B208
FUN_0238B208: ; 0x0238B208
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, _0238B268 ; =0x0380FFF4
	ldr r0, [r0]
	add r5, r0, #0x344
	add r4, r0, #0x31c
	ldr r0, _0238B26C ; =0x0000FFFF
	cmp r6, r0
	moveq r1, #0xff
	streqh r1, [r4, #0x1c]
	streqh r0, [r5, #0x8c]
	beq _0238B25C
	ldrh r0, [r5, #0x6e]
	mul r0, r6, r0
	mov r1, #0x64
	bl FUN_03801A54
	cmp r0, #0x10000
	movhi r0, #5
	bhi _0238B260
	strh r6, [r4, #0x1c]
	strh r0, [r5, #0x8c]
_0238B25C:
	mov r0, #0
_0238B260:
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_0238B268: .word 0x0380FFF4
_0238B26C: .word 0x0000FFFF
	arm_func_end FUN_0238B208

	arm_func_start FUN_0238B270
FUN_0238B270: ; 0x0238B270
	stmdb sp!, {r4, lr}
	mov r1, #0
	ldr r0, _0238B2F8 ; =0x04808036
	strh r1, [r0]
	mov r0, #8
	bl FUN_0238A054
	mov r1, #0
	ldr r0, _0238B2FC ; =0x04808168
	strh r1, [r0]
	ldr r0, _0238B300 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x500
	ldrh r0, [r0, #0xf8]
	cmp r0, #2
	beq _0238B2B8
	cmp r0, #3
	beq _0238B2EC
	b _0238B2F0
_0238B2B8:
	mov r0, #1
	bl FUN_0238A458
	mov r4, r0
	mov r0, #1
	and r1, r4, #0x7f
	bl FUN_0238A418
	mov r0, #1
	mov r1, r4
	bl FUN_0238A418
	mov r0, #0x28
	bl FUN_0238A054
	bl FUN_0238A0D4
	b _0238B2F0
_0238B2EC:
	bl FUN_0238A0D4
_0238B2F0:
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_0238B2F8: .word 0x04808036
_0238B2FC: .word 0x04808168
_0238B300: .word 0x0380FFF4
	arm_func_end FUN_0238B270

	arm_func_start FUN_0238B304
FUN_0238B304: ; 0x0238B304
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _0238B364 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x500
	ldrh r0, [r0, #0xf8]
	cmp r0, #2
	bne _0238B32C
	ldr r0, _0238B368 ; =0x0000C008
	bl FUN_0238A3F0
_0238B32C:
	mov r0, #0x1e
	bl FUN_0238A458
	orr r1, r0, #0x3f
	mov r0, #0x1e
	bl FUN_0238A418
	ldr r1, _0238B36C ; =0x0000800D
	ldr r0, _0238B370 ; =0x04808168
	strh r1, [r0]
	mov r1, #1
	ldr r0, _0238B374 ; =0x04808036
	strh r1, [r0]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_0238B364: .word 0x0380FFF4
_0238B368: .word 0x0000C008
_0238B36C: .word 0x0000800D
_0238B370: .word 0x04808168
_0238B374: .word 0x04808036
	arm_func_end FUN_0238B304

	arm_func_start FUN_0238B378
FUN_0238B378: ; 0x0238B378
	ldr r1, _0238B388 ; =0x04808040
	strh r0, [r1]
	mov r0, #0
	bx lr
	.align 2, 0
_0238B388: .word 0x04808040
	arm_func_end FUN_0238B378

	arm_func_start FUN_0238B38C
FUN_0238B38C: ; 0x0238B38C
	mov r2, r0, lsr #1
	ldr r1, _0238B3B0 ; =0x0380FFF4
	ldr r1, [r1]
	add r1, r1, #0x300
	strh r2, [r1, #0x54]
	ldr r1, _0238B3B4 ; =0x0480803C
	strh r0, [r1]
	mov r0, #0
	bx lr
	.align 2, 0
_0238B3B0: .word 0x0380FFF4
_0238B3B4: .word 0x0480803C
	arm_func_end FUN_0238B38C

	arm_func_start FUN_0238B3B8
FUN_0238B3B8: ; 0x0238B3B8
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _0238B424 ; =0x0380FFF4
	ldr r1, [r1]
	add r2, r1, #0x31c
	add r1, r1, #0x300
	strh r0, [r1, #0x52]
	cmp r0, #0
	beq _0238B3F8
	ldrh r0, [r2, #0x12]
	cmp r0, #1
	ldrne r1, _0238B428 ; =0x04808006
	ldrneh r0, [r1]
	orrne r0, r0, #0x40
	strneh r0, [r1]
	bne _0238B414
_0238B3F8:
	ldr r1, _0238B428 ; =0x04808006
	ldrh r0, [r1]
	bic r0, r0, #0x40
	strh r0, [r1]
	ldrh r0, [r2, #0x20]
	mov r1, #0
	bl FUN_0238BE94
_0238B414:
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_0238B424: .word 0x0380FFF4
_0238B428: .word 0x04808006
	arm_func_end FUN_0238B3B8

	arm_func_start FUN_0238B42C
FUN_0238B42C: ; 0x0238B42C
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _0238B4A8 ; =0x0000E2E2
	str r0, [sp]
	mov r0, #0x58
	mov r1, #2
	add r2, sp, #0
	bl FUN_02399074
	ldr r1, [sp]
	ldr r0, _0238B4AC ; =0x00000202
	add r0, r1, r0
	str r0, [sp]
	bl FUN_0238A9F0
	cmp r0, #0x14
	bne _0238B490
	ldr r1, [sp]
	ldr r0, _0238B4B0 ; =0x00006161
	sub r1, r1, r0
	str r1, [sp]
	ldr r0, _0238B4B4 ; =0x048080BC
	ldrh r0, [r0]
	ands r0, r0, #2
	ldrne r0, _0238B4B8 ; =0x00006060
	subne r0, r1, r0
	strne r0, [sp]
_0238B490:
	ldr r1, [sp]
	ldr r0, _0238B4BC ; =0x04808140
	strh r1, [r0]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_0238B4A8: .word 0x0000E2E2
_0238B4AC: .word 0x00000202
_0238B4B0: .word 0x00006161
_0238B4B4: .word 0x048080BC
_0238B4B8: .word 0x00006060
_0238B4BC: .word 0x04808140
	arm_func_end FUN_0238B42C

	arm_func_start FUN_0238B4C0
FUN_0238B4C0: ; 0x0238B4C0
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _0238B504 ; =0x0380FFF4
	ldr r1, [r1]
	add r3, r1, #0x3a4
	ldrh r2, [r0]
	add r1, r1, #0x300
	strh r2, [r1, #0xa4]
	ldrh r1, [r0, #2]
	ldrh r0, [r0]
	orr r0, r1, r0
	strh r0, [r3, #2]
	bl FUN_0238B42C
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_0238B504: .word 0x0380FFF4
	arm_func_end FUN_0238B4C0

	arm_func_start FUN_0238B508
FUN_0238B508: ; 0x0238B508
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov sl, r0
	cmp r1, #0
	ldrne sb, _0238B780 ; =FUN_02399024
	ldreq sb, _0238B784 ; =FUN_02399074
	mov r0, sl
	bl FUN_0238AAF8
	cmp r0, #0
	moveq r0, #5
	beq _0238B774
	ldr r1, _0238B788 ; =0x04808040
	ldrh r8, [r1]
	ldr r0, _0238B78C ; =0x00008001
	strh r0, [r1]
	ldr r2, _0238B790 ; =0x0480803C
	ldr r1, _0238B794 ; =0x04808214
_0238B54C:
	ldrh r0, [r2]
	mov r3, r0, asr #8
	ldrh r0, [r1]
	cmp r3, #2
	bne _0238B54C
	cmp r0, #0
	beq _0238B570
	cmp r0, #9
	bne _0238B54C
_0238B570:
	ldr fp, _0238B798 ; =0x0380FFF4
	ldr r0, [fp]
	add r0, r0, #0x300
	strh sl, [r0, #0xbe]
	ldr r0, [fp]
	add r0, r0, #0x500
	ldrh r1, [r0, #0xf8]
	cmp r1, #2
	beq _0238B5A4
	cmp r1, #3
	beq _0238B674
	cmp r1, #5
	bne _0238B75C
_0238B5A4:
	mov r0, #0
	str r0, [sp]
	sub r4, sl, #1
	mov r0, #6
	mul r5, r4, r0
	add r0, r5, #0xf2
	mov r1, #3
	add r2, sp, #0
	mov lr, pc
	bx sb
	arm_func_end FUN_0238B508

	arm_func_start FUN_0238B5CC
FUN_0238B5CC: ; 0x0238B5CC
	ldr r0, [sp]
	bl FUN_0238A3F0
	add r0, r5, #0xf5
	mov r1, #3
	add r2, sp, #0
	mov lr, pc
	bx sb
	arm_func_end FUN_0238B5CC

	arm_func_start FUN_0238B5E8
FUN_0238B5E8: ; 0x0238B5E8
	ldr r0, [sp]
	bl FUN_0238A3F0
	mov r0, #0
	str r0, [sp]
	ldr r0, _0238B798 ; =0x0380FFF4
	ldr r0, [r0]
	ldr r1, [r0, #0x604]
	ands r0, r1, #0x10000
	beq _0238B64C
	ands r0, r1, #0x8000
	bne _0238B75C
	add r0, r4, #0x154
	mov r1, #1
	add r2, sp, #0
	mov lr, pc
	bx sb
	arm_func_end FUN_0238B5E8

	arm_func_start FUN_0238B628
FUN_0238B628: ; 0x0238B628
	ldr r0, _0238B798 ; =0x0380FFF4
	ldr r0, [r0]
	ldr r1, [r0, #0x604]
	ldr r0, [sp]
	and r0, r0, #0x1f
	orr r0, r1, r0, lsl #10
	str r0, [sp]
	bl FUN_0238A3F0
	b _0238B75C
_0238B64C:
	ldr r0, _0238B79C ; =0x00000146
	add r0, r4, r0
	mov r1, #1
	add r2, sp, #0
	mov lr, pc
	bx sb
	arm_func_end FUN_0238B628

	arm_func_start FUN_0238B664
FUN_0238B664: ; 0x0238B664
	mov r0, #0x1e
	ldr r1, [sp]
	bl FUN_0238A418
	b _0238B75C
_0238B674:
	ldrh r0, [r0, #0xfc]
	add r7, r0, #0xcf
	mov r6, #0
	mov r5, r6
	mov r4, #1
	b _0238B6D0
_0238B68C:
	str r5, [sp]
	str r5, [sp, #4]
	mov r0, r7
	mov r1, r4
	add r2, sp, #4
	mov lr, pc
	bx sb
	arm_func_end FUN_0238B664

	arm_func_start FUN_0238B6A8
FUN_0238B6A8: ; 0x0238B6A8
	add r0, r7, sl
	mov r1, r4
	add r2, sp, #0
	mov lr, pc
	bx sb
	arm_func_end FUN_0238B6A8

	arm_func_start FUN_0238B6BC
FUN_0238B6BC: ; 0x0238B6BC
	ldr r0, [sp, #4]
	ldr r1, [sp]
	bl FUN_0238A418
	add r7, r7, #0xf
	add r6, r6, #1
_0238B6D0:
	ldr r0, [fp]
	add r0, r0, #0x600
	ldrh r0, [r0]
	cmp r6, r0
	blo _0238B68C
	mov r6, #0
	mov r5, r6
	mov r4, #1
	ldr fp, _0238B798 ; =0x0380FFF4
	b _0238B748
_0238B6F8:
	str r5, [sp]
	mov r0, r7
	mov r1, r4
	add r2, sp, #0
	mov lr, pc
	bx sb
	arm_func_end FUN_0238B6BC

	arm_func_start FUN_0238B710
FUN_0238B710: ; 0x0238B710
	ldr r0, [sp]
	mov r0, r0, lsl #8
	str r0, [sp]
	add r0, r7, sl
	mov r1, r4
	add r2, sp, #0
	mov lr, pc
	bx sb
	arm_func_end FUN_0238B710

	arm_func_start FUN_0238B730
FUN_0238B730: ; 0x0238B730
	ldr r0, [sp]
	orr r0, r0, #0x50000
	str r0, [sp]
	bl FUN_0238A3F0
	add r7, r7, #0xf
	add r6, r6, #1
_0238B748:
	ldr r0, [fp]
	add r0, r0, #0x500
	ldrh r0, [r0, #0xfe]
	cmp r6, r0
	blo _0238B6F8
_0238B75C:
	ldr r0, _0238B788 ; =0x04808040
	strh r8, [r0]
	mov r1, #3
	ldr r0, _0238B7A0 ; =0x04808048
	strh r1, [r0]
	mov r0, #0
_0238B774:
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_0238B780: .word FUN_02399024
_0238B784: .word FUN_02399074
_0238B788: .word 0x04808040
_0238B78C: .word 0x00008001
_0238B790: .word 0x0480803C
_0238B794: .word 0x04808214
_0238B798: .word 0x0380FFF4
_0238B79C: .word 0x00000146
_0238B7A0: .word 0x04808048
	arm_func_end FUN_0238B730

	arm_func_start FUN_0238B7A4
FUN_0238B7A4: ; 0x0238B7A4
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	mov r0, #0x36
	mov r1, #6
	add r2, sp, #2
	bl FUN_02399074
	mov r0, #0x3c
	mov r1, #2
	add r2, sp, #0
	bl FUN_02399074
	add r0, sp, #2
	bl FUN_0238C270
	mov r0, #7
	bl FUN_0238C23C
	ldrh r1, [sp]
	ldr r0, _0238B8D8 ; =0x00007FFE
	and r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl FUN_0238C1FC
	mov r0, #2
	bl FUN_0238C174
	mov r0, #0
	bl FUN_0238C138
	mov r0, #0
	bl FUN_0238C084
	mov r0, #0
	bl FUN_0238C060
	ldr r0, _0238B8DC ; =_0239937C
	bl FUN_0238BFFC
	mov r0, #0x1f4
	bl FUN_0238B974
	mov r0, #0
	bl FUN_0238BFC4
	mov r0, #0
	bl FUN_0238BF8C
	mov r0, #0x10
	bl FUN_0238BF54
	ldr r0, _0238B8E0 ; =0x0000FFFF
	mov r1, #0
	bl FUN_0238BE94
	ldr r0, _0238B8E4 ; =_0239931C
	bl FUN_0238BE64
	mov r0, #1
	bl FUN_0238BDA4
	mov r0, #0
	bl FUN_0238BD80
	ldr r0, _0238B8E8 ; =_023992D8
	bl FUN_0238B4C0
	mov r0, #0
	mov r1, #0x1f
	bl FUN_0238BD38
	mov r0, #5
	bl FUN_0238B208
	mov r0, #0
	mov r1, r0
	bl FUN_0238BBF4
	mov r0, #0
	bl FUN_0238BCD0
	mov r0, #0
	bl FUN_0238BBB4
	mov r0, #0
	bl FUN_0238BB58
	ldr r2, _0238B8EC ; =0x04808044
	ldrh r1, [r2]
	ldrh r0, [r2]
	add r0, r1, r0, lsl #8
	ldrh r1, [r2]
	bl FUN_02389C34
	mov r1, #1
	ldr r0, _0238B8F0 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	strh r1, [r0, #0x58]
	add sp, sp, #0xc
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_0238B8D8: .word 0x00007FFE
_0238B8DC: .word _0239937C
_0238B8E0: .word 0x0000FFFF
_0238B8E4: .word _0239931C
_0238B8E8: .word _023992D8
_0238B8EC: .word 0x04808044
_0238B8F0: .word 0x0380FFF4
	arm_func_end FUN_0238B7A4

	arm_func_start FUN_0238B8F4
FUN_0238B8F4: ; 0x0238B8F4
	cmp r0, #1
	blo _0238B904
	cmp r0, #0xff
	bls _0238B90C
_0238B904:
	mov r0, #5
	bx lr
_0238B90C:
	ldr r1, _0238B924 ; =0x0380FFF4
	ldr r1, [r1]
	add r1, r1, #0x300
	strh r0, [r1, #0xb4]
	mov r0, #0
	bx lr
	.align 2, 0
_0238B924: .word 0x0380FFF4
	arm_func_end FUN_0238B8F4

	arm_func_start FUN_0238B928
FUN_0238B928: ; 0x0238B928
	cmp r0, #1
	blo _0238B938
	cmp r0, #0xff
	bls _0238B940
_0238B938:
	mov r0, #5
	bx lr
_0238B940:
	ldr r1, _0238B968 ; =0x0380FFF4
	ldr r1, [r1]
	add r1, r1, #0x300
	strh r0, [r1, #0xb8]
	ldr r1, _0238B96C ; =0x0480808E
	strh r0, [r1]
	mov r0, #0
	ldr r1, _0238B970 ; =0x04808088
	strh r0, [r1]
	bx lr
	.align 2, 0
_0238B968: .word 0x0380FFF4
_0238B96C: .word 0x0480808E
_0238B970: .word 0x04808088
	arm_func_end FUN_0238B928

	arm_func_start FUN_0238B974
FUN_0238B974: ; 0x0238B974
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r0, #0xa
	blo _0238B98C
	cmp r0, #0x3e8
	bls _0238B994
_0238B98C:
	mov r0, #5
	b _0238B9C0
_0238B994:
	ldr r2, _0238B9CC ; =0x0380FFF4
	ldr r1, [r2]
	add r1, r1, #0x300
	strh r0, [r1, #0xb2]
	ldr r1, _0238B9D0 ; =0x0480808C
	strh r0, [r1]
	ldr r0, [r2]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x38]
	bl FUN_0238B208
	mov r0, #0
_0238B9C0:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_0238B9CC: .word 0x0380FFF4
_0238B9D0: .word 0x0480808C
	arm_func_end FUN_0238B974

	arm_func_start FUN_0238B9D4
FUN_0238B9D4: ; 0x0238B9D4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	mov r8, r0
	mov r7, r1
	ldr r0, _0238BAEC ; =0x0380FFF4
	ldr r1, [r0]
	add r6, r1, #0x344
	mov r4, #0
	cmp r8, #0x20
	movhi r0, #5
	bhi _0238BAE0
	ldrh r0, [r6, #8]
	cmp r0, #0x40
	bne _0238BA38
	add r0, r1, #0x300
	ldrh r0, [r0, #0x2e]
	cmp r0, #1
	bne _0238BA38
	ldrh r0, [r6, #0x1e]
	cmp r0, r8
	movne r0, #6
	bne _0238BAE0
	ldrh r0, [r6, #0x92]
	cmp r0, #0
	movne r4, #1
_0238BA38:
	mov r5, #0
	add sb, r6, #0x20
	b _0238BA60
_0238BA44:
	mov r0, r7
	bl FUN_02389C68
	mov r1, r0
	add r0, sb, r5
	bl FUN_02389C88
	add r7, r7, #1
	add r5, r5, #1
_0238BA60:
	cmp r5, r8
	blo _0238BA44
	add sb, r6, #0x20
	mov r7, #0
	b _0238BA84
_0238BA74:
	add r0, sb, r5
	mov r1, r7
	bl FUN_02389C88
	add r5, r5, #1
_0238BA84:
	cmp r5, #0x20
	blo _0238BA74
	strh r8, [r6, #0x1e]
	cmp r4, #0
	beq _0238BADC
	ldr r0, _0238BAEC ; =0x0380FFF4
	ldr r0, [r0]
	ldr r0, [r0, #0x4ac]
	add r1, r0, #0x26
	ldrh r0, [r6, #0x92]
	add r7, r1, r0
	mov r5, #0
	add r4, r6, #0x20
	b _0238BAD4
_0238BABC:
	add r0, r4, r5
	bl FUN_02389C68
	mov r1, r0
	add r0, r7, r5
	bl FUN_02389C88
	add r5, r5, #1
_0238BAD4:
	cmp r5, r8
	blo _0238BABC
_0238BADC:
	mov r0, #0
_0238BAE0:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	.align 2, 0
_0238BAEC: .word 0x0380FFF4
	arm_func_end FUN_0238B9D4

	arm_func_start FUN_0238BAF0
FUN_0238BAF0: ; 0x0238BAF0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, _0238BB4C ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x3a8
	mov r1, r4
	bl FUN_0238AEE4
	ldr r0, _0238BB50 ; =0x04808020
	mov r1, r4
	bl FUN_0238AEE4
	ldrh r0, [r4]
	ands r0, r0, #1
	ldrne r1, _0238BB54 ; =0x048080D0
	ldrneh r0, [r1]
	bicne r0, r0, #0x400
	strneh r0, [r1]
	ldreq r1, _0238BB54 ; =0x048080D0
	ldreqh r0, [r1]
	orreq r0, r0, #0x400
	streqh r0, [r1]
	mov r0, #0
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_0238BB4C: .word 0x0380FFF4
_0238BB50: .word 0x04808020
_0238BB54: .word 0x048080D0
	arm_func_end FUN_0238BAF0

	arm_func_start FUN_0238BB58
FUN_0238BB58: ; 0x0238BB58
	cmp r0, #1
	movhi r0, #5
	bxhi lr
	ldr r1, _0238BBA8 ; =0x0380FFF4
	ldr r1, [r1]
	add r2, r1, #0x300
	ldrh r1, [r2, #0x3a]
	bic r3, r1, #0x80
	mov r1, r0, lsl #0x10
	mov r1, r1, lsr #0x10
	and r1, r1, #1
	orr r1, r3, r1, lsl #7
	strh r1, [r2, #0x3a]
	cmp r0, #1
	ldreq r0, _0238BBAC ; =0x0480802A
	ldreqh r1, [r0]
	ldreq r0, _0238BBB0 ; =0x04808028
	streqh r1, [r0]
	mov r0, #0
	bx lr
	.align 2, 0
_0238BBA8: .word 0x0380FFF4
_0238BBAC: .word 0x0480802A
_0238BBB0: .word 0x04808028
	arm_func_end FUN_0238BB58

	arm_func_start FUN_0238BBB4
FUN_0238BBB4: ; 0x0238BBB4
	cmp r0, #1
	movhi r0, #5
	bxhi lr
	ldr r1, _0238BBF0 ; =0x0380FFF4
	ldr r1, [r1]
	add r1, r1, #0x300
	ldrh r2, [r1, #0x3a]
	bic r2, r2, #0x40
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	and r0, r0, #1
	orr r0, r2, r0, lsl #6
	strh r0, [r1, #0x3a]
	mov r0, #0
	bx lr
	.align 2, 0
_0238BBF0: .word 0x0380FFF4
	arm_func_end FUN_0238BBB4

	arm_func_start FUN_0238BBF4
FUN_0238BBF4: ; 0x0238BBF4
	cmp r0, #1
	bhi _0238BC04
	cmp r1, #1
	bls _0238BC0C
_0238BC04:
	mov r0, #5
	bx lr
_0238BC0C:
	cmp r0, #0
	beq _0238BC20
	cmp r0, #1
	beq _0238BC4C
	b _0238BC74
_0238BC20:
	ldr r2, _0238BCC8 ; =0x0380FFF4
	ldr r2, [r2]
	add r2, r2, #0x300
	ldrh r3, [r2, #0x3a]
	bic r3, r3, #0x20
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	and r1, r1, #1
	orr r1, r3, r1, lsl #5
	strh r1, [r2, #0x3a]
	b _0238BC74
_0238BC4C:
	ldr r1, _0238BCC8 ; =0x0380FFF4
	ldr r1, [r1]
	add r1, r1, #0x300
	ldrh r2, [r1, #0x2e]
	cmp r2, #1
	movne r0, #0xb
	bxne lr
	ldrh r2, [r1, #0x3a]
	bic r2, r2, #0x20
	strh r2, [r1, #0x3a]
_0238BC74:
	ldr r3, _0238BCC8 ; =0x0380FFF4
	ldr r1, [r3]
	add r1, r1, #0x300
	ldrh r2, [r1, #0x3a]
	bic r2, r2, #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	and r0, r0, #1
	orr r0, r2, r0, lsl #4
	strh r0, [r1, #0x3a]
	ldr r0, [r3]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x3a]
	mov r1, r0, lsl #0x1a
	mov r1, r1, lsr #0x1f
	mov r0, r0, lsl #0x1c
	eor r1, r1, r0, lsr #31
	ldr r0, _0238BCCC ; =0x04808290
	strh r1, [r0]
	mov r0, #0
	bx lr
	.align 2, 0
_0238BCC8: .word 0x0380FFF4
_0238BCCC: .word 0x04808290
	arm_func_end FUN_0238BBF4

	arm_func_start FUN_0238BCD0
FUN_0238BCD0: ; 0x0238BCD0
	cmp r0, #1
	movhi r0, #5
	bxhi lr
	ldr r3, _0238BD30 ; =0x0380FFF4
	ldr r1, [r3]
	add r1, r1, #0x300
	ldrh r2, [r1, #0x3a]
	bic r2, r2, #8
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	and r0, r0, #1
	orr r0, r2, r0, lsl #3
	strh r0, [r1, #0x3a]
	ldr r0, [r3]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x3a]
	mov r1, r0, lsl #0x1a
	mov r1, r1, lsr #0x1f
	mov r0, r0, lsl #0x1c
	eor r1, r1, r0, lsr #31
	ldr r0, _0238BD34 ; =0x04808290
	strh r1, [r0]
	mov r0, #0
	bx lr
	.align 2, 0
_0238BD30: .word 0x0380FFF4
_0238BD34: .word 0x04808290
	arm_func_end FUN_0238BCD0

	arm_func_start FUN_0238BD38
FUN_0238BD38: ; 0x0238BD38
	stmdb sp!, {r4, lr}
	mov r2, r0
	mov r4, r1
	cmp r2, #3
	movhi r0, #5
	bhi _0238BD78
	cmp r4, #0x3f
	movhi r0, #5
	bhi _0238BD78
	mov r0, #0x13
	mov r1, r2
	bl FUN_0238A418
	mov r0, #0x35
	mov r1, r4
	bl FUN_0238A418
	mov r0, #0
_0238BD78:
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_0238BD38

	arm_func_start FUN_0238BD80
FUN_0238BD80: ; 0x0238BD80
	cmp r0, #1
	movhi r0, #5
	ldrls r1, _0238BDA0 ; =0x0380FFF4
	ldrls r1, [r1]
	addls r1, r1, #0x300
	strlsh r0, [r1, #0x32]
	movls r0, #0
	bx lr
	.align 2, 0
_0238BDA0: .word 0x0380FFF4
	arm_func_end FUN_0238BD80

	arm_func_start FUN_0238BDA4
FUN_0238BDA4: ; 0x0238BDA4
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _0238BE5C ; =0x0380FFF4
	ldr r2, [r1]
	add r1, r2, #0x344
	cmp r0, #1
	movhi r0, #5
	bhi _0238BE50
	add r2, r2, #0x300
	ldrh r3, [r2, #0x3a]
	bic ip, r3, #4
	and r3, r0, #1
	orr r3, ip, r3, lsl #2
	strh r3, [r2, #0x3a]
	cmp r0, #0
	ldreqh r2, [r1, #0x7c]
	biceq r2, r2, #0x20
	streqh r2, [r1, #0x7c]
	ldrneh r2, [r1, #0x7c]
	orrne r2, r2, #0x20
	strneh r2, [r1, #0x7c]
	ldrh r2, [r1, #8]
	cmp r2, #0x40
	bne _0238BE24
	ldr r2, _0238BE5C ; =0x0380FFF4
	ldr r3, [r2]
	add r2, r3, #0x300
	ldrh r2, [r2, #0x2e]
	cmp r2, #1
	ldreqh r2, [r1, #0x7c]
	ldreq r1, [r3, #0x4ac]
	streqh r2, [r1, #0x2e]
_0238BE24:
	cmp r0, #0
	ldreq r1, _0238BE60 ; =0x048080BC
	ldreqh r0, [r1]
	biceq r0, r0, #6
	streqh r0, [r1]
	ldrne r1, _0238BE60 ; =0x048080BC
	ldrneh r0, [r1]
	orrne r0, r0, #6
	strneh r0, [r1]
	bl FUN_0238B42C
	mov r0, #0
_0238BE50:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_0238BE5C: .word 0x0380FFF4
_0238BE60: .word 0x048080BC
	arm_func_end FUN_0238BDA4

	arm_func_start FUN_0238BE64
FUN_0238BE64: ; 0x0238BE64
	ldr r1, _0238BE90 ; =0x0380FFF4
	ldr r1, [r1]
	add r2, r1, #0x384
	mov r3, #0
_0238BE74:
	ldrh r1, [r0], #2
	strh r1, [r2], #2
	add r3, r3, #1
	cmp r3, #0x10
	blo _0238BE74
	mov r0, #0
	bx lr
	.align 2, 0
_0238BE90: .word 0x0380FFF4
	arm_func_end FUN_0238BE64

	arm_func_start FUN_0238BE94
FUN_0238BE94: ; 0x0238BE94
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r0
	cmp r4, #0xa
	movlo r0, #5
	blo _0238BF40
	ldr r0, _0238BF4C ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	strh r4, [r0, #0x3c]
	cmp r1, #0
	ldrne r0, _0238BF50 ; =0x04808134
	strneh r4, [r0]
	ldr r0, _0238BF4C ; =0x0380FFF4
	ldr r1, [r0]
	add r0, r1, #0x400
	ldrh r0, [r0, #0xa4]
	cmp r0, #0
	beq _0238BF3C
	ldr r0, [r1, #0x4ac]
	add r2, r0, #0x24
	add r0, r1, #0x300
	ldrh r1, [r0, #0xda]
	add r1, r2, r1
	add r5, r1, #6
	ldrh r0, [r0, #0x52]
	cmp r0, #1
	bne _0238BF24
	mov r0, r5
	and r1, r4, #0xff
	bl FUN_02389C88
	add r0, r5, #1
	mov r1, r4, asr #8
	and r1, r1, #0xff
	bl FUN_02389C88
	b _0238BF3C
_0238BF24:
	mov r0, r5
	mov r1, #0xff
	bl FUN_02389C88
	add r0, r5, #1
	mov r1, #0xff
	bl FUN_02389C88
_0238BF3C:
	mov r0, #0
_0238BF40:
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_0238BF4C: .word 0x0380FFF4
_0238BF50: .word 0x04808134
	arm_func_end FUN_0238BE94

	arm_func_start FUN_0238BF54
FUN_0238BF54: ; 0x0238BF54
	cmp r0, #0xff
	movhi r0, #5
	bxhi lr
	mov r3, #0
	ldr r2, _0238BF88 ; =0x0380FFF4
	ldr r1, [r2]
	add r1, r1, #0x300
	strh r3, [r1, #0xc4]
	ldr r1, [r2]
	add r1, r1, #0x300
	strh r0, [r1, #0xc2]
	mov r0, r3
	bx lr
	.align 2, 0
_0238BF88: .word 0x0380FFF4
	arm_func_end FUN_0238BF54

	arm_func_start FUN_0238BF8C
FUN_0238BF8C: ; 0x0238BF8C
	cmp r0, #1
	movhi r0, #5
	bxhi lr
	ldr r1, _0238BFC0 ; =0x0380FFF4
	ldr r1, [r1]
	add r1, r1, #0x300
	ldrh r2, [r1, #0x3a]
	bic r2, r2, #2
	and r0, r0, #1
	orr r0, r2, r0, lsl #1
	strh r0, [r1, #0x3a]
	mov r0, #0
	bx lr
	.align 2, 0
_0238BFC0: .word 0x0380FFF4
	arm_func_end FUN_0238BF8C

	arm_func_start FUN_0238BFC4
FUN_0238BFC4: ; 0x0238BFC4
	cmp r0, #1
	movhi r0, #5
	bxhi lr
	ldr r1, _0238BFF8 ; =0x0380FFF4
	ldr r1, [r1]
	add r1, r1, #0x300
	ldrh r2, [r1, #0x3a]
	bic r2, r2, #1
	and r0, r0, #1
	orr r0, r2, r0
	strh r0, [r1, #0x3a]
	mov r0, #0
	bx lr
	.align 2, 0
_0238BFF8: .word 0x0380FFF4
	arm_func_end FUN_0238BFC4

	arm_func_start FUN_0238BFFC
FUN_0238BFFC: ; 0x0238BFFC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, _0238C050 ; =0x04805F80
	mov r1, r4
	mov r2, #0x14
	bl FUN_02389D2C
	ldr r0, _0238C054 ; =0x04805FA0
	add r1, r4, #0x14
	mov r2, #0x14
	bl FUN_02389D2C
	ldr r0, _0238C058 ; =0x04805FC0
	add r1, r4, #0x28
	mov r2, #0x14
	bl FUN_02389D2C
	ldr r0, _0238C05C ; =0x04805FE0
	add r1, r4, #0x3c
	mov r2, #0x14
	bl FUN_02389D2C
	mov r0, #0
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_0238C050: .word 0x04805F80
_0238C054: .word 0x04805FA0
_0238C058: .word 0x04805FC0
_0238C05C: .word 0x04805FE0
	arm_func_end FUN_0238BFFC

	arm_func_start FUN_0238C060
FUN_0238C060: ; 0x0238C060
	cmp r0, #3
	movhi r0, #5
	ldrls r1, _0238C080 ; =0x0380FFF4
	ldrls r1, [r1]
	addls r1, r1, #0x300
	strlsh r0, [r1, #0x36]
	movls r0, #0
	bx lr
	.align 2, 0
_0238C080: .word 0x0380FFF4
	arm_func_end FUN_0238C060

	arm_func_start FUN_0238C084
FUN_0238C084: ; 0x0238C084
	ldr r1, _0238C12C ; =0x0380FFF4
	ldr r1, [r1]
	add r2, r1, #0x344
	cmp r0, #3
	movhi r0, #5
	bxhi lr
	add r1, r1, #0x300
	strh r0, [r1, #0x34]
	cmp r0, #0
	bne _0238C0C8
	ldrh r1, [r2, #0x7c]
	bic r1, r1, #0x10
	strh r1, [r2, #0x7c]
	ldrh r1, [r2, #0x8a]
	bic r1, r1, #0x4000
	strh r1, [r2, #0x8a]
	b _0238C0E0
_0238C0C8:
	ldrh r1, [r2, #0x7c]
	orr r1, r1, #0x10
	strh r1, [r2, #0x7c]
	ldrh r1, [r2, #0x8a]
	orr r1, r1, #0x4000
	strh r1, [r2, #0x8a]
_0238C0E0:
	ldrh r1, [r2, #8]
	cmp r1, #0x40
	bne _0238C104
	cmp r0, #1
	ldreqh r2, [r2, #0x7c]
	ldreq r1, _0238C12C ; =0x0380FFF4
	ldreq r1, [r1]
	ldreq r1, [r1, #0x4ac]
	streqh r2, [r1, #0x2e]
_0238C104:
	cmp r0, #0
	moveq r0, #1
	ldr r3, _0238C130 ; =0x04808006
	ldrh r2, [r3]
	ldr r1, _0238C134 ; =0x0000FFC7
	and r1, r2, r1
	orr r0, r1, r0, lsl #3
	strh r0, [r3]
	mov r0, #0
	bx lr
	.align 2, 0
_0238C12C: .word 0x0380FFF4
_0238C130: .word 0x04808006
_0238C134: .word 0x0000FFC7
	arm_func_end FUN_0238C084

	arm_func_start FUN_0238C138
FUN_0238C138: ; 0x0238C138
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r0, #2
	movhi r0, #5
	bhi _0238C164
	ldr r1, _0238C170 ; =0x0380FFF4
	ldr r1, [r1]
	add r1, r1, #0x300
	strh r0, [r1, #0x30]
	bl FUN_0238B42C
	mov r0, #0
_0238C164:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_0238C170: .word 0x0380FFF4
	arm_func_end FUN_0238C138

	arm_func_start FUN_0238C174
FUN_0238C174: ; 0x0238C174
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r0, #3
	movhi r0, #5
	bhi _0238C1E4
	ldr ip, _0238C1F0 ; =0x0380FFF4
	ldr r1, [ip]
	add r1, r1, #0x300
	strh r0, [r1, #0x2e]
	ldr r1, [ip]
	add r1, r1, #0x300
	strh r0, [r1, #0x50]
	ldr r3, _0238C1F4 ; =0x04808006
	ldrh r2, [r3]
	ldr r1, _0238C1F8 ; =0x0000FFF8
	and r1, r2, r1
	orr r0, r1, r0
	strh r0, [r3]
	ldr r0, [ip]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x52]
	bl FUN_0238B3B8
	ldr r0, _0238C1F0 ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, [r1, #0x340]
	orr r0, r0, #8
	str r0, [r1, #0x340]
	mov r0, #0
_0238C1E4:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_0238C1F0: .word 0x0380FFF4
_0238C1F4: .word 0x04808006
_0238C1F8: .word 0x0000FFF8
	arm_func_end FUN_0238C174

	arm_func_start FUN_0238C1FC
FUN_0238C1FC: ; 0x0238C1FC
	ldr r1, _0238C234 ; =0x00007FFE
	ands r1, r0, r1
	moveq r0, #5
	bxeq lr
	ldr r2, _0238C238 ; =0x0380FFF4
	ldr r1, [r2]
	add r1, r1, #0x300
	strh r0, [r1, #0x2c]
	ldr r1, [r2]
	ldr r0, [r1, #0x340]
	orr r0, r0, #4
	str r0, [r1, #0x340]
	mov r0, #0
	bx lr
	.align 2, 0
_0238C234: .word 0x00007FFE
_0238C238: .word 0x0380FFF4
	arm_func_end FUN_0238C1FC

	arm_func_start FUN_0238C23C
FUN_0238C23C: ; 0x0238C23C
	cmp r0, #0xff
	movhi r0, #5
	bxhi lr
	ldr r1, _0238C268 ; =0x0380FFF4
	ldr r1, [r1]
	add r1, r1, #0x300
	strh r0, [r1, #0x2a]
	ldr r1, _0238C26C ; =0x0480802C
	strh r0, [r1]
	mov r0, #0
	bx lr
	.align 2, 0
_0238C268: .word 0x0380FFF4
_0238C26C: .word 0x0480802C
	arm_func_end FUN_0238C23C

	arm_func_start FUN_0238C270
FUN_0238C270: ; 0x0238C270
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4]
	ands r0, r0, #1
	movne r0, #5
	bne _0238C2C0
	ldr r0, _0238C2C8 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x324
	mov r1, r4
	bl FUN_0238AEE4
	ldr r0, _0238C2CC ; =0x04808018
	mov r1, r4
	bl FUN_0238AEE4
	ldr r0, _0238C2C8 ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, [r1, #0x340]
	orr r0, r0, #2
	str r0, [r1, #0x340]
	mov r0, #0
_0238C2C0:
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_0238C2C8: .word 0x0380FFF4
_0238C2CC: .word 0x04808018
	arm_func_end FUN_0238C270

	arm_func_start FUN_0238C2D0
FUN_0238C2D0: ; 0x0238C2D0
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	ldr r0, _0238C34C ; =0x0380FFF4
	ldr r1, [r0]
	ldr r4, [r1, #0x3e0]
	mov r0, #0
	add r1, r1, #0x31c
	mov r2, #0x28
	bl FUN_037FAF38
	mov r0, #0
	ldr r1, _0238C34C ; =0x0380FFF4
	ldr r1, [r1]
	add r1, r1, #0x344
	mov r2, #0xc0
	bl FUN_037FAF38
	ldr r2, _0238C34C ; =0x0380FFF4
	ldr r0, [r2]
	str r6, [r0, #0x31c]
	mov r0, r5, lsl #0x10
	mov r1, r0, lsr #0x10
	ldr r0, [r2]
	add r0, r0, #0x300
	strh r1, [r0, #0x20]
	ldr r0, [r2]
	add r0, r0, #0x300
	strh r1, [r0, #0x22]
	ldr r0, [r2]
	str r4, [r0, #0x3e0]
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_0238C34C: .word 0x0380FFF4
	arm_func_end FUN_0238C2D0

	arm_func_start FUN_0238C350
FUN_0238C350: ; 0x0238C350
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov sb, #0
	ldr r0, _0238C63C ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x500
	ldrh r0, [r0, #0xf8]
	cmp r0, #5
	ldreq sl, _0238C640 ; =_02399528
	ldrne sl, _0238C644 ; =_0239955C
	mov r6, #0
	mov r5, #0xff
	mvn r4, #0
	b _0238C3A4
_0238C388:
	mov r0, r6
	mov r1, r5
	bl FUN_0238A418
	cmp r0, r4
	moveq sb, #1
	beq _0238C610
	add r6, r6, #1
_0238C3A4:
	cmp r6, #0x69
	blo _0238C388
	mov r4, #0
	mov r5, r4
	b _0238C3F4
_0238C3B8:
	mov r0, r5, lsl #1
	ldrh r0, [sl, r0]
	cmp r4, r0
	addeq r5, r5, #1
	beq _0238C3F0
	mov r0, r4
	bl FUN_0238A458
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #0xff
	beq _0238C3F0
	cmp sb, #0x20
	add sb, sb, #1
	bhi _0238C610
_0238C3F0:
	add r4, r4, #1
_0238C3F4:
	cmp r4, #0x69
	blo _0238C3B8
	mov r5, #0
	mov r4, r5
_0238C404:
	mov r0, r5
	mov r1, r4
	bl FUN_0238A418
	add r5, r5, #1
	cmp r5, #0x69
	blo _0238C404
	mov r5, #0
	mov r4, r5
	b _0238C460
_0238C428:
	mov r0, r4, lsl #1
	ldrh r0, [sl, r0]
	cmp r5, r0
	addeq r4, r4, #1
	beq _0238C45C
	mov r0, r5
	bl FUN_0238A458
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _0238C45C
	cmp sb, #0x20
	add sb, sb, #1
	bhi _0238C610
_0238C45C:
	add r5, r5, #1
_0238C460:
	cmp r5, #0x69
	blo _0238C428
	mov r5, #0x55
	mov r4, #0
_0238C470:
	mov r0, r4
	mov r1, r5
	bl FUN_0238A418
	add r4, r4, #1
	mvn r0, r5
	mov r0, r0, lsl #0x10
	mov r5, r0, lsr #0x10
	cmp r4, #0x69
	blo _0238C470
	mov r5, #0x55
	mov r6, #0
	mov r4, r6
	b _0238C4F0
_0238C4A4:
	mov r0, r4, lsl #1
	ldrh r0, [sl, r0]
	cmp r6, r0
	addeq r4, r4, #1
	beq _0238C4DC
	mov r0, r6
	bl FUN_0238A458
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, r5
	beq _0238C4DC
	cmp sb, #0x20
	add sb, sb, #1
	bhi _0238C610
_0238C4DC:
	add r6, r6, #1
	mvn r0, r5
	and r0, r0, #0xff
	mov r0, r0, lsl #0x10
	mov r5, r0, lsr #0x10
_0238C4F0:
	cmp r6, #0x69
	blo _0238C4A4
	mov r4, #0xff
	mov r5, #0
_0238C500:
	mov r0, r5
	mov r1, r4
	bl FUN_0238A418
	add r5, r5, #1
	sub r0, r4, #1
	mov r0, r0, lsl #0x10
	mov r4, r0, lsr #0x10
	cmp r5, #0x69
	blo _0238C500
	mov r5, #0xff
	mov r6, #0
	mov r4, r6
	b _0238C57C
_0238C534:
	mov r0, r4, lsl #1
	ldrh r0, [sl, r0]
	cmp r6, r0
	addeq r4, r4, #1
	beq _0238C56C
	mov r0, r6
	bl FUN_0238A458
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, r5
	beq _0238C56C
	cmp sb, #0x20
	add sb, sb, #1
	bhi _0238C610
_0238C56C:
	add r6, r6, #1
	sub r0, r5, #1
	mov r0, r0, lsl #0x10
	mov r5, r0, lsr #0x10
_0238C57C:
	cmp r6, #0x69
	blo _0238C534
	mov r6, #0
	mov r5, r6
	mov r4, #1
	mov fp, r6
	b _0238C608
_0238C598:
	mov r0, r5, lsl #1
	ldrh r0, [sl, r0]
	cmp r6, r0
	addeq r5, r5, #1
	beq _0238C604
	mov r7, r4
	mov r8, fp
	b _0238C5FC
_0238C5B8:
	mov r0, r6
	mov r1, r7
	bl FUN_0238A418
	mov r0, r6
	bl FUN_0238A458
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, r7
	beq _0238C5E8
	cmp sb, #0x20
	add sb, sb, #1
	bhi _0238C610
_0238C5E8:
	mov r0, r7, lsl #1
	and r0, r0, #0xff
	mov r0, r0, lsl #0x10
	mov r7, r0, lsr #0x10
	add r8, r8, #1
_0238C5FC:
	cmp r8, #9
	blo _0238C5B8
_0238C604:
	add r6, r6, #1
_0238C608:
	cmp r6, #0x69
	blo _0238C598
_0238C610:
	cmp sb, #0
	beq _0238C630
	ldr r0, _0238C63C ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r1, [r0, #0x3e]
	orr r1, r1, #8
	strh r1, [r0, #0x3e]
_0238C630:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_0238C63C: .word 0x0380FFF4
_0238C640: .word _02399528
_0238C644: .word _0239955C
	arm_func_end FUN_0238C350

	arm_func_start FUN_0238C648
FUN_0238C648: ; 0x0238C648
	mov r0, #0
	ldr r3, _0238C7B8 ; =0x04804000
	ldr r1, _0238C7BC ; =0x0000FFFF
	mov ip, r0
_0238C658:
	mov r2, r1
	sub r1, r1, #1
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	strh r2, [r3], #2
	add ip, ip, #2
	cmp ip, #0x2000
	blo _0238C658
	ldr ip, _0238C7B8 ; =0x04804000
	ldr r3, _0238C7BC ; =0x0000FFFF
	mov r2, #0
	b _0238C6B4
_0238C688:
	ldrh r1, [ip]
	cmp r1, r3
	beq _0238C6A0
	cmp r0, #0x20
	add r0, r0, #1
	bhi _0238C794
_0238C6A0:
	add r2, r2, #2
	add ip, ip, #2
	sub r1, r3, #1
	mov r1, r1, lsl #0x10
	mov r3, r1, lsr #0x10
_0238C6B4:
	cmp r2, #0x2000
	blo _0238C688
	ldr r3, _0238C7B8 ; =0x04804000
	ldr r1, _0238C7C0 ; =0x00005A5A
	mov r2, #0
_0238C6C8:
	strh r1, [r3], #2
	add r2, r2, #2
	mvn r1, r1
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	cmp r2, #0x2000
	blo _0238C6C8
	ldr ip, _0238C7B8 ; =0x04804000
	ldr r3, _0238C7C0 ; =0x00005A5A
	mov r2, #0
	b _0238C720
_0238C6F4:
	ldrh r1, [ip]
	cmp r1, r3
	beq _0238C70C
	cmp r0, #0x20
	add r0, r0, #1
	bhi _0238C794
_0238C70C:
	add r2, r2, #2
	add ip, ip, #2
	mvn r1, r3
	mov r1, r1, lsl #0x10
	mov r3, r1, lsr #0x10
_0238C720:
	cmp r2, #0x2000
	blo _0238C6F4
	ldr r3, _0238C7B8 ; =0x04804000
	ldr r1, _0238C7C4 ; =0x0000A5A5
	mov r2, #0
_0238C734:
	strh r1, [r3], #2
	add r2, r2, #2
	mvn r1, r1
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	cmp r2, #0x2000
	blo _0238C734
	ldr ip, _0238C7B8 ; =0x04804000
	ldr r3, _0238C7C4 ; =0x0000A5A5
	mov r2, #0
	b _0238C78C
_0238C760:
	ldrh r1, [ip]
	cmp r1, r3
	beq _0238C778
	cmp r0, #0x20
	add r0, r0, #1
	bhi _0238C794
_0238C778:
	add r2, r2, #2
	add ip, ip, #2
	mvn r1, r3
	mov r1, r1, lsl #0x10
	mov r3, r1, lsr #0x10
_0238C78C:
	cmp r2, #0x2000
	blo _0238C760
_0238C794:
	cmp r0, #0
	bxeq lr
	ldr r0, _0238C7C8 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r1, [r0, #0x3e]
	orr r1, r1, #2
	strh r1, [r0, #0x3e]
	bx lr
	.align 2, 0
_0238C7B8: .word 0x04804000
_0238C7BC: .word 0x0000FFFF
_0238C7C0: .word 0x00005A5A
_0238C7C4: .word 0x0000A5A5
_0238C7C8: .word 0x0380FFF4
	arm_func_end FUN_0238C648

	arm_func_start FUN_0238C7CC
FUN_0238C7CC: ; 0x0238C7CC
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r3, #0
	mov r2, r3
	mov r1, r3
	ldr r0, _0238C968 ; =_02399594
	ldr r5, _0238C96C ; =_02399520
	b _0238C844
_0238C7EC:
	mov ip, r1
	mov r6, r2, lsl #1
	b _0238C838
_0238C7F8:
	mov r4, ip, lsl #2
	ldrh r7, [r0, r4]
	ldrh r4, [r5, r6]
	add lr, r0, ip, lsl #2
	ldrh lr, [lr, #2]
	and r4, r4, lr
	add lr, r7, #0x4800000
	add lr, lr, #0x8000
	strh r4, [lr]
	ldrh lr, [lr]
	cmp lr, r4
	beq _0238C834
	cmp r3, #0x20
	add r3, r3, #1
	bhi _0238C93C
_0238C834:
	add ip, ip, #1
_0238C838:
	cmp ip, #0x1b
	blo _0238C7F8
	add r2, r2, #1
_0238C844:
	cmp r2, #3
	blo _0238C7EC
	mov r4, #0
	ldr r5, _0238C970 ; =0x00001234
	ldr r2, _0238C968 ; =_02399594
	mov r1, r5
_0238C85C:
	mov ip, r4, lsl #2
	add r0, r2, r4, lsl #2
	ldrh r0, [r0, #2]
	and lr, r5, r0
	ldrh r0, [r2, ip]
	add r0, r0, #0x4800000
	add r0, r0, #0x8000
	strh lr, [r0]
	add r0, r5, r1
	mov r0, r0, lsl #0x10
	mov r5, r0, lsr #0x10
	add r4, r4, #1
	cmp r4, #0x1b
	blo _0238C85C
	mov r0, #0
	ldr r4, _0238C970 ; =0x00001234
	ldr lr, _0238C968 ; =_02399594
	mov r1, r4
	b _0238C8EC
_0238C8A8:
	mov r2, r0, lsl #2
	ldrh r2, [lr, r2]
	add r2, r2, #0x4800000
	add r2, r2, #0x8000
	ldrh ip, [r2]
	add r2, lr, r0, lsl #2
	ldrh r2, [r2, #2]
	and r2, r4, r2
	cmp ip, r2
	beq _0238C8DC
	cmp r3, #0x20
	add r3, r3, #1
	bhi _0238C93C
_0238C8DC:
	add r2, r4, r1
	mov r2, r2, lsl #0x10
	mov r4, r2, lsr #0x10
	add r0, r0, #1
_0238C8EC:
	cmp r0, #0x1b
	blo _0238C8A8
	mov r4, #0
	ldr r2, _0238C968 ; =_02399594
	mov r1, r4
	b _0238C934
_0238C904:
	mov r0, r4, lsl #2
	ldrh r0, [r2, r0]
	add r0, r0, #0x4800000
	add r0, r0, #0x8000
	strh r1, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _0238C930
	cmp r3, #0x20
	add r3, r3, #1
	bhi _0238C93C
_0238C930:
	add r4, r4, #1
_0238C934:
	cmp r4, #0x1b
	blo _0238C904
_0238C93C:
	cmp r3, #0
	beq _0238C95C
	ldr r0, _0238C974 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r1, [r0, #0x3e]
	orr r1, r1, #1
	strh r1, [r0, #0x3e]
_0238C95C:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_0238C968: .word _02399594
_0238C96C: .word _02399520
_0238C970: .word 0x00001234
_0238C974: .word 0x0380FFF4
	arm_func_end FUN_0238C7CC

	arm_func_start FUN_0238C978
FUN_0238C978: ; 0x0238C978
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r0, #0x1000000
	bl FUN_037F8774
	mov r0, #0x1000000
	mov r1, #0
	bl FUN_037F8868
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_0238C978

	arm_func_start FUN_0238C9A0
FUN_0238C9A0: ; 0x0238C9A0
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r0, #0x1000000
	ldr r1, _0238C9C8 ; =FUN_0238DF90
	bl FUN_037F8868
	mov r0, #0x1000000
	bl FUN_037F87B0
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_0238C9C8: .word FUN_0238DF90
	arm_func_end FUN_0238C9A0

	arm_func_start FUN_0238C9CC
FUN_0238C9CC: ; 0x0238C9CC
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldrh r1, [r0]
	cmp r1, #0
	beq _0238CA1C
	ldr r2, [r0, #8]
	ldrh r1, [r2]
	ands r1, r1, #1
	beq _0238CA1C
	ldr r1, _0238CA2C ; =0x00003FFF
	and r1, r2, r1
	mov r1, r1, lsr #1
	orr r2, r1, #0x8000
	ldr r1, _0238CA30 ; =0x04808098
	ldrh r1, [r1]
	cmp r2, r1
	beq _0238CA1C
	bl FUN_023951F8
	mov r0, #1
	b _0238CA20
_0238CA1C:
	mov r0, #0
_0238CA20:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_0238CA2C: .word 0x00003FFF
_0238CA30: .word 0x04808098
	arm_func_end FUN_0238C9CC

	arm_func_start FUN_0238CA34
FUN_0238CA34: ; 0x0238CA34
	stmdb sp!, {r4, lr}
	ldr r0, _0238CA78 ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, _0238CA7C ; =0x0000042C
	add r4, r1, r0
	add r0, r4, #0x50
	bl FUN_0238C9CC
	cmp r0, #0
	movne r0, #1
	bne _0238CA70
	add r0, r4, #0x64
	bl FUN_0238C9CC
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
_0238CA70:
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_0238CA78: .word 0x0380FFF4
_0238CA7C: .word 0x0000042C
	arm_func_end FUN_0238CA34

	arm_func_start FUN_0238CA80
FUN_0238CA80: ; 0x0238CA80
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _0238CAD8 ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, _0238CADC ; =0x0000042C
	add lr, r1, r0
	ldrh r1, [lr, #0xa4]
	ldr r0, _0238CAE0 ; =0x0000FFFF
	cmp r1, r0
	beq _0238CACC
	ldr ip, _0238CAE4 ; =0x04808094
	ldrh r3, [ip]
	strh r1, [ip]
	ldr r2, _0238CAE8 ; =0x04808030
	ldrh r1, [r2]
	orr r1, r1, #0x80
	strh r1, [r2]
	strh r3, [ip]
	strh r0, [lr, #0xa4]
_0238CACC:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_0238CAD8: .word 0x0380FFF4
_0238CADC: .word 0x0000042C
_0238CAE0: .word 0x0000FFFF
_0238CAE4: .word 0x04808094
_0238CAE8: .word 0x04808030
	arm_func_end FUN_0238CA80

	arm_func_start FUN_0238CAEC
FUN_0238CAEC: ; 0x0238CAEC
	ldr r1, _0238CB0C ; =0x04805F60
	cmp r0, r1
	ldrhs r1, _0238CB10 ; =0x0380FFF4
	ldrhs r1, [r1]
	addhs r1, r1, #0x300
	ldrhsh r1, [r1, #0xde]
	subhs r0, r0, r1
	bx lr
	.align 2, 0
_0238CB0C: .word 0x04805F60
_0238CB10: .word 0x0380FFF4
	arm_func_end FUN_0238CAEC

	arm_func_start FUN_0238CB14
FUN_0238CB14: ; 0x0238CB14
	stmdb sp!, {r4, lr}
	mov r0, #0x1000000
	bl FUN_037F8774
	mov r4, r0
	ldr r2, _0238CB78 ; =0x04808210
	ldrh r3, [r2]
	mov r1, #0x1000
	ldr r0, _0238CB7C ; =0x04808244
	strh r1, [r0]
	mov r1, #0x64
	b _0238CB50
_0238CB40:
	ldrh r0, [r2]
	cmp r3, r0
	bne _0238CB58
	sub r1, r1, #1
_0238CB50:
	cmp r1, #0
	bne _0238CB40
_0238CB58:
	mov r0, #0
	ldr r1, _0238CB7C ; =0x04808244
	strh r0, [r1]
	bl FUN_0238D000
	mov r0, r4
	bl FUN_037F87B0
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_0238CB78: .word 0x04808210
_0238CB7C: .word 0x04808244
	arm_func_end FUN_0238CB14

	arm_func_start FUN_0238CB80
FUN_0238CB80: ; 0x0238CB80
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r0, _0238CC4C ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, _0238CC50 ; =0x0000042C
	add r5, r1, r0
	mov r4, #0
	mov r0, #2
	bl FUN_02394F50
	mov r0, #1
	bl FUN_02394F50
	mov r0, r4
	bl FUN_02394F50
	ldrh r0, [r5, #0x28]
	cmp r0, #0
	beq _0238CBD8
	ldr r0, [r5, #0x30]
	ldrh r0, [r0]
	cmp r0, #0
	movne r4, #1
	moveq r0, r4
	streqh r0, [r5, #0x28]
_0238CBD8:
	ldrh r0, [r5, #0x14]
	cmp r0, #0
	beq _0238CBFC
	ldr r0, [r5, #0x1c]
	ldrh r0, [r0]
	cmp r0, #0
	movne r4, #1
	moveq r0, #0
	streqh r0, [r5, #0x14]
_0238CBFC:
	ldrh r0, [r5]
	cmp r0, #0
	beq _0238CC20
	ldr r0, [r5, #8]
	ldrh r0, [r0]
	cmp r0, #0
	movne r4, #1
	moveq r0, #0
	streqh r0, [r5]
_0238CC20:
	cmp r4, #0
	beq _0238CC34
	mov r0, #0
	mov r1, #0xe
	bl FUN_02389030
_0238CC34:
	mov r0, #0
	mov r1, #0x14
	bl FUN_02389030
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_0238CC4C: .word 0x0380FFF4
_0238CC50: .word 0x0000042C
	arm_func_end FUN_0238CB80

	arm_func_start FUN_0238CC54
FUN_0238CC54: ; 0x0238CC54
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr r2, _0238CE84 ; =0x0380FFF4
	ldr r1, [r2]
	add r5, r1, #0x344
	ldr r0, _0238CE88 ; =0x0000042C
	add r4, r1, r0
	mov r1, #0x40
	ldr r0, _0238CE8C ; =0x04808010
	strh r1, [r0]
	ldr r0, [r2]
	add r0, r0, #0x600
	ldrh r0, [r0, #0x90]
	ands r0, r0, #0x20
	beq _0238CE7C
	ldrh r1, [r4, #0xa4]
	ldr r0, _0238CE90 ; =0x0000FFFF
	cmp r1, r0
	bne _0238CE7C
	ldr r0, _0238CE94 ; =0x0480819C
	ldrh r0, [r0]
	and r0, r0, #3
	cmp r0, #3
	bne _0238CE7C
	ldr r0, _0238CE98 ; =0x04808268
	ldrh r2, [r0]
	ldr r0, _0238CE9C ; =0x04808050
	ldrh r1, [r0]
	ldr r0, _0238CEA0 ; =0x00000FFF
	and r0, r0, r1, lsr #1
	cmp r2, r0
	blt _0238CE7C
	ldr r0, _0238CEA4 ; =0x04808054
	ldrh r6, [r0]
	ldr r0, _0238CEA8 ; =0x04804000
	add r0, r0, r6, lsl #1
	add r0, r0, #8
	bl FUN_0238CAEC
	add r0, r0, #4
	bl FUN_0238CAEC
	ldrh r2, [r0]
	ldr r1, _0238CEAC ; =0x0000E7FF
	and r1, r2, r1
	cmp r1, #0x228
	bne _0238CE7C
	add r0, r0, #2
	bl FUN_0238CAEC
	ldr r2, _0238CEB0 ; =0x048080F8
	ldrh r1, [r2]
	sub r7, r1, #0x10000
	ldr r1, _0238CE98 ; =0x04808268
_0238CD1C:
	ldrh r3, [r1]
	sub r3, r3, r6
	mov r3, r3, lsl #0x10
	mov r8, r3, lsr #0x10
	ands r3, r8, #0x8000
	ldrneh r3, [r5, #0x9a]
	addne r3, r8, r3, lsr #1
	movne r3, r3, lsl #0x10
	movne r8, r3, lsr #0x10
	cmp r8, #0xe
	bhi _0238CD64
	ldrh r3, [r2]
	sub r3, r3, r7
	mov r3, r3, lsl #0x10
	mov r3, r3, lsr #0x10
	cmp r3, #0x40
	bls _0238CD1C
	b _0238CE7C
_0238CD64:
	add r0, r0, #8
	mov r8, #0
	b _0238CD94
_0238CD70:
	bl FUN_0238CAEC
	mov r1, r0
	add r0, r1, #2
	ldrh r2, [r1]
	add r1, r5, r8, lsl #1
	ldrh r1, [r1, #0x64]
	cmp r2, r1
	bne _0238CE7C
	add r8, r8, #1
_0238CD94:
	cmp r8, #3
	blo _0238CD70
	add r0, r0, #0xa
	bl FUN_0238CAEC
	ldr r3, _0238CEB0 ; =0x048080F8
	ldr r1, _0238CE98 ; =0x04808268
_0238CDAC:
	ldrh r2, [r1]
	sub r2, r2, r6
	mov r2, r2, lsl #0x10
	mov r8, r2, lsr #0x10
	ands r2, r8, #0x8000
	ldrneh r2, [r5, #0x9a]
	addne r2, r8, r2, lsr #1
	movne r2, r2, lsl #0x10
	movne r8, r2, lsr #0x10
	cmp r8, #0x14
	bhi _0238CDF4
	ldrh r2, [r3]
	sub r2, r2, r7
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	cmp r2, #0x70
	bls _0238CDAC
	b _0238CE7C
_0238CDF4:
	ldrh r2, [r0]
	mov r1, #1
	ldr r0, _0238CEB4 ; =0x04808028
	ldrh r0, [r0]
	mov r0, r1, lsl r0
	ands r0, r2, r0
	bne _0238CE7C
	ldr r0, _0238CEB8 ; =0x04808098
	ldrh r0, [r0]
	strh r0, [r4, #0xa4]
	mov r1, #0x40
	ldr r0, _0238CEBC ; =0x048080B4
	strh r1, [r0]
	ldrh r0, [r5, #0xbe]
	add r0, r0, #1
	strh r0, [r5, #0xbe]
	ldr r1, _0238CE94 ; =0x0480819C
_0238CE38:
	ldrh r0, [r1]
	and r0, r0, #3
	cmp r0, #3
	beq _0238CE38
	ldr r1, _0238CEC0 ; =0x04808244
	ldrh r0, [r1]
	orr r0, r0, #0x40
	strh r0, [r1]
	ldrh r0, [r1]
	bic r0, r0, #0x40
	strh r0, [r1]
	mov r0, #8
	ldr r1, _0238CEC4 ; =0x04808228
	strh r0, [r1]
	mov r0, #0
	strh r0, [r1]
	bl FUN_0238CA80
_0238CE7C:
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_0238CE84: .word 0x0380FFF4
_0238CE88: .word 0x0000042C
_0238CE8C: .word 0x04808010
_0238CE90: .word 0x0000FFFF
_0238CE94: .word 0x0480819C
_0238CE98: .word 0x04808268
_0238CE9C: .word 0x04808050
_0238CEA0: .word 0x00000FFF
_0238CEA4: .word 0x04808054
_0238CEA8: .word 0x04804000
_0238CEAC: .word 0x0000E7FF
_0238CEB0: .word 0x048080F8
_0238CEB4: .word 0x04808028
_0238CEB8: .word 0x04808098
_0238CEBC: .word 0x048080B4
_0238CEC0: .word 0x04808244
_0238CEC4: .word 0x04808228
	arm_func_end FUN_0238CC54

	arm_func_start FUN_0238CEC8
FUN_0238CEC8: ; 0x0238CEC8
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r3, _0238CFD8 ; =0x0380FFF4
	ldr r1, [r3]
	ldr r0, _0238CFDC ; =0x0000042C
	add r0, r1, r0
	mov r2, #0x80
	ldr r1, _0238CFE0 ; =0x04808010
	strh r2, [r1]
	ldr r1, [r3]
	add r1, r1, #0x600
	ldrh r1, [r1, #0x90]
	ands r1, r1, #0x20
	beq _0238CF6C
	ldr r1, _0238CFE4 ; =0x04808214
	ldrh r1, [r1]
	and r1, r1, #0xff
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x10
	ldr r1, _0238CFE8 ; =0x04808268
	ldrh r3, [r1]
	cmp r2, #3
	blo _0238CF6C
	cmp r2, #5
	bhi _0238CF6C
	ldr r2, [r0, #0x58]
	ldr r1, _0238CFEC ; =0x00000FFF
	and r2, r1, r2, lsr #1
	cmp r3, r2
	blo _0238CF6C
	ldr r0, [r0, #0x30]
	and r0, r1, r0, lsr #1
	cmp r3, r0
	bhi _0238CF6C
	ldr r1, _0238CFF0 ; =0x04808244
	ldrh r0, [r1]
	orr r0, r0, #0x80
	strh r0, [r1]
	ldrh r0, [r1]
	bic r0, r0, #0x80
	strh r0, [r1]
_0238CF6C:
	ldr r0, _0238CFF4 ; =0x04808000
	ldrh r0, [r0]
	cmp r0, #0x1440
	beq _0238CFCC
	ldr r0, _0238CFF8 ; =0x0480819C
	ldrh r0, [r0]
	and r0, r0, #0x42
	cmp r0, #0x42
	bne _0238CFCC
	ldr r1, _0238CFFC ; =0x048082B8
	ldrh r2, [r1]
	cmp r2, #0
	beq _0238CFCC
	mov r3, #0
	b _0238CFC0
_0238CFA8:
	cmp r3, #0x3e8
	add r3, r3, #1
	bls _0238CFC0
	mov r0, #0x40
	bl FUN_02389904
	b _0238CFCC
_0238CFC0:
	ldrh r0, [r1]
	cmp r2, r0
	beq _0238CFA8
_0238CFCC:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_0238CFD8: .word 0x0380FFF4
_0238CFDC: .word 0x0000042C
_0238CFE0: .word 0x04808010
_0238CFE4: .word 0x04808214
_0238CFE8: .word 0x04808268
_0238CFEC: .word 0x00000FFF
_0238CFF0: .word 0x04808244
_0238CFF4: .word 0x04808000
_0238CFF8: .word 0x0480819C
_0238CFFC: .word 0x048082B8
	arm_func_end FUN_0238CEC8

	arm_func_start FUN_0238D000
FUN_0238D000: ; 0x0238D000
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr ip, _0238D0F8 ; =0x0380FFF4
	ldr r2, [ip]
	ldr r1, _0238D0FC ; =0x0000042C
	add r1, r2, r1
	mov r3, #0x1000
	ldr r2, _0238D100 ; =0x04808010
	strh r3, [r2]
	ldrh r2, [r1, #0x3c]
	cmp r2, #0
	beq _0238D0EC
	ldr r2, [ip]
	add r2, r2, #0x600
	ldrh r2, [r2, #0x90]
	ands r2, r2, #0x10
	beq _0238D0E0
	cmp r0, #0
	beq _0238D0E0
	ldr r0, _0238D104 ; =0x048080B6
	ldrh r2, [r0]
	ldr r0, _0238D108 ; =0x04808214
	ldrh r0, [r0]
	cmp r0, #3
	beq _0238D06C
	cmp r0, #5
	bne _0238D0E0
_0238D06C:
	cmp r2, #0
	bne _0238D0E0
	ldr r2, [r1, #0x44]
	ldrh r1, [r2, #2]
	mov r3, #0
	b _0238D094
_0238D084:
	and r0, r1, #1
	add r3, r3, r0
	mov r0, r1, lsl #0xf
	mov r1, r0, lsr #0x10
_0238D094:
	cmp r1, #0
	bne _0238D084
	ldrh r1, [r2, #0xa]
	ldrh r0, [r2, #0x24]
	add r0, r0, #0xa
	mul r0, r3, r0
	add r0, r0, #0xc0
	add r0, r0, r1, lsl #2
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldr r1, _0238D10C ; =FUN_0238CB14
	bl FUN_02389E04
	ldr r0, _0238D0F8 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x400
	ldrh r1, [r0]
	add r1, r1, #1
	strh r1, [r0]
	b _0238D0EC
_0238D0E0:
	mov r0, #0
	mov r1, #0x10
	bl FUN_02389030
_0238D0EC:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_0238D0F8: .word 0x0380FFF4
_0238D0FC: .word 0x0000042C
_0238D100: .word 0x04808010
_0238D104: .word 0x048080B6
_0238D108: .word 0x04808214
_0238D10C: .word FUN_0238CB14
	arm_func_end FUN_0238D000

	arm_func_start FUN_0238D110
FUN_0238D110: ; 0x0238D110
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	ldr r0, _0238D54C ; =0x0380FFF4
	ldr r1, [r0]
	add sl, r1, #0x344
	ldr r0, _0238D550 ; =0x000004DC
	add sb, r1, r0
	add r0, r1, #0x600
	ldrh r2, [r0, #0x90]
	mov r1, #1
	ldr r0, _0238D554 ; =0x04808010
	strh r1, [r0]
	ldrh r0, [sl, #0xc]
	cmp r0, #0
	ldreq r0, _0238D558 ; =0x04808054
	ldreqh r1, [r0]
	ldreq r0, _0238D55C ; =0x0480805A
	streqh r1, [r0]
	and r5, r2, #1
	mov r0, #0x3e8
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
_0238D16C:
	ldrh r7, [sb, #4]
	ldr r0, _0238D558 ; =0x04808054
	ldrh r6, [r0]
	cmp r7, r6
	beq _0238D4E8
	ldr r0, _0238D560 ; =0x048080F8
	ldrh r4, [r0]
	ldr r0, _0238D564 ; =0x048080FA
	ldrh r3, [r0]
	ldr r0, _0238D560 ; =0x048080F8
	ldrh r2, [r0]
	ldr r0, _0238D564 ; =0x048080FA
	ldrh r1, [r0]
	cmp r4, r2
	movhi r0, r2, lsr #4
	orrhi fp, r0, r1, lsl #12
	movls r0, r4, lsr #4
	orrls fp, r0, r3, lsl #12
	ldr r0, _0238D568 ; =0x000008C6
	cmp r7, r0
	blo _0238D1D0
	ldr r0, _0238D56C ; =0x000008EF
	cmp r7, r0
	bhi _0238D1D0
	bl FUN_0238AC24
_0238D1D0:
	mov r0, r7, lsl #1
	str r0, [sp, #8]
	ldr r0, _0238D570 ; =0x04804000
	add r8, r0, r7, lsl #1
	add r0, r8, #2
	bl FUN_0238CAEC
	mov r4, r0
	add r0, r4, #2
	bl FUN_0238CAEC
	str r0, [sp, #0xc]
	add r0, r0, #4
	bl FUN_0238CAEC
	str r0, [sp, #0x10]
	add r0, r8, #0xe
	bl FUN_0238CAEC
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	add r0, r0, #0x4800000
	add r0, r0, #0x4000
	ldrh r2, [r0]
	ldrh r1, [r4]
	mov r1, r1, lsl #1
	and r1, r1, #0x400
	orr r1, r2, r1
	strh r1, [r0]
	ldr r0, [sp, #0xc]
	strh fp, [r0]
	ldr r0, [sp, #0x10]
	ldrh r2, [r0]
	add r0, r2, r7, lsl #1
	add r0, r0, #0xf
	mov r0, r0, lsr #2
	mov r7, r0, lsl #1
	cmp r7, #0xfb0
	ldrhsh r0, [sl, #0x9a]
	subhs r7, r7, r0, lsr #1
	ldr r0, _0238D574 ; =0x0000092C
	cmp r2, r0
	bls _0238D288
	ldr r0, _0238D578 ; =0x0000FFFF
	strh r0, [r8]
	mov r7, r6
	ldrh r0, [sl, #0xb4]
	add r0, r0, #1
	strh r0, [sl, #0xb4]
	b _0238D320
_0238D288:
	cmp r5, #0
	beq _0238D320
	cmp r7, r6
	beq _0238D320
	mov r1, r7, lsl #1
	ldr r0, _0238D570 ; =0x04804000
	add r0, r0, r7, lsl #1
	add r1, r1, #0x4800000
	add r1, r1, #0x4000
	ldrh r1, [r1]
	ldr r3, _0238D57C ; =0x04805F5A
	cmp r0, r3
	ldrloh r0, [r0, #6]
	andlo r0, r0, #0xff
	movlo r0, r0, lsl #0x10
	movlo r3, r0, lsr #0x10
	ldrhsh r3, [sl, #0x9a]
	subhs r0, r0, r3
	ldrhsh r3, [r0, #6]
	ands r0, r1, #0x7c00
	bne _0238D2F8
	cmp r3, #0xa
	beq _0238D2EC
	cmp r3, #0x14
	bne _0238D2F8
_0238D2EC:
	ldr r0, _0238D580 ; =0x00000FFF
	cmp r2, r0
	bls _0238D320
_0238D2F8:
	ldrh r0, [sl, #0xb4]
	add r0, r0, #1
	strh r0, [sl, #0xb4]
	ldr r0, _0238D578 ; =0x0000FFFF
	strh r0, [r8]
	mov r0, r6, lsl #0x10
	mov r0, r0, lsr #0x10
	strh r0, [sb, #4]
	strh r0, [r4]
	b _0238D4E8
_0238D320:
	ldrh r0, [r8]
	and r0, r0, #0xf
	cmp r0, #0xc
	bne _0238D47C
	add r0, r8, #0xc
	bl FUN_0238CAEC
	ldrh fp, [r0]
	add r0, r8, #0x22
	bl FUN_0238CAEC
	ldrh r6, [r0]
	ldrh r0, [sb]
	cmp r0, r6
	bne _0238D37C
	ands r0, fp, #0x800
	beq _0238D37C
	ldr r0, _0238D54C ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, [r1, #0x57c]
	add r0, r0, #1
	str r0, [r1, #0x57c]
	ldr r0, _0238D578 ; =0x0000FFFF
	strh r0, [r8]
	b _0238D454
_0238D37C:
	ldr r0, _0238D54C ; =0x0380FFF4
	ldr r0, [r0]
	add r1, r0, #0x300
	ldrh r2, [r1, #0x3a]
	mov r2, r2, lsl #0x18
	movs r2, r2, lsr #0x1f
	bne _0238D454
	ldrh r1, [r1, #0x4c]
	cmp r1, #0x40
	bne _0238D454
	ldr r1, _0238D584 ; =0x04808028
	ldrh r1, [r1]
	cmp r1, #0
	beq _0238D42C
	ldr r1, _0238D588 ; =0x04808098
	ldrh r1, [r1]
	ands r1, r1, #0x8000
	beq _0238D42C
	add r0, r0, #0x660
	bl FUN_037FA36C
	ldr r0, [sp, #4]
	ldrh r2, [r0]
	mov r1, #0
	ldr r0, _0238D58C ; =0x000082EA
	umull r8, r3, r2, r0
	mla r3, r2, r1, r3
	mla r3, r1, r0, r3
	mov r1, r3, lsr #6
	mov r0, r8, lsr #6
	orr r0, r0, r3, lsl #26
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	bl FUN_03801800
	mov r3, r0
	mov r2, r1
	ldr r0, [sp, #0x18]
	str r0, [sp]
	ldr r0, _0238D54C ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x660
	mov r1, r3
	ldr r3, _0238D590 ; =FUN_0238AF9C
	bl FUN_037FA478
	b _0238D454
_0238D42C:
	ldr r6, _0238D578 ; =0x0000FFFF
	mov r1, r6
	ldr r0, _0238D594 ; =0x04805F7E
	strh r1, [r0]
	ldr r0, _0238D598 ; =0x0480824C
	strh r1, [r0]
	ldr r0, _0238D59C ; =0x0480824E
	strh r1, [r0]
	mov r0, r6
	strh r0, [r8]
_0238D454:
	strh r6, [sb]
	bl FUN_0238CA34
	cmp r0, #0
	bne _0238D4D4
	ldr r0, _0238D54C ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, [r1, #0x5a8]
	add r0, r0, #1
	str r0, [r1, #0x5a8]
	b _0238D4D4
_0238D47C:
	cmp r0, #0xd
	bne _0238D4D4
	ldr r0, _0238D54C ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r1, [r0, #0x3a]
	mov r1, r1, lsl #0x18
	movs r1, r1, lsr #0x1f
	bne _0238D4D4
	ldrh r0, [r0, #0x4c]
	cmp r0, #0x40
	bne _0238D4D4
	ldr r0, _0238D584 ; =0x04808028
	ldrh r0, [r0]
	cmp r0, #0
	beq _0238D4CC
	ldr r0, _0238D588 ; =0x04808098
	ldrh r0, [r0]
	ands r0, r0, #0x8000
	bne _0238D4D4
_0238D4CC:
	ldr r0, _0238D578 ; =0x0000FFFF
	strh r0, [r8]
_0238D4D4:
	mov r0, r7, lsl #0x10
	mov r0, r0, lsr #0x10
	strh r0, [sb, #4]
	strh r0, [r4]
	b _0238D16C
_0238D4E8:
	cmp r5, #0
	beq _0238D51C
	ldr r0, _0238D558 ; =0x04808054
	ldrh r4, [r0]
	bl FUN_0238CA34
	cmp r0, #0
	beq _0238D51C
	ldr r0, _0238D558 ; =0x04808054
	ldrh r0, [r0]
	cmp r4, r0
	bne _0238D51C
	mov r0, #0x20
	bl FUN_02389904
_0238D51C:
	ldr r0, _0238D55C ; =0x0480805A
	ldrh r1, [r0]
	ldr r0, _0238D558 ; =0x04808054
	ldrh r0, [r0]
	cmp r1, r0
	beq _0238D540
	mov r0, #0
	mov r1, #0xf
	bl FUN_02389030
_0238D540:
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_0238D54C: .word 0x0380FFF4
_0238D550: .word 0x000004DC
_0238D554: .word 0x04808010
_0238D558: .word 0x04808054
_0238D55C: .word 0x0480805A
_0238D560: .word 0x048080F8
_0238D564: .word 0x048080FA
_0238D568: .word 0x000008C6
_0238D56C: .word 0x000008EF
_0238D570: .word 0x04804000
_0238D574: .word 0x0000092C
_0238D578: .word 0x0000FFFF
_0238D57C: .word 0x04805F5A
_0238D580: .word 0x00000FFF
_0238D584: .word 0x04808028
_0238D588: .word 0x04808098
_0238D58C: .word 0x000082EA
_0238D590: .word FUN_0238AF9C
_0238D594: .word 0x04805F7E
_0238D598: .word 0x0480824C
_0238D59C: .word 0x0480824E
	arm_func_end FUN_0238D110

	arm_func_start FUN_0238D5A0
FUN_0238D5A0: ; 0x0238D5A0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r2, _0238D80C ; =0x0380FFF4
	ldr r1, [r2]
	ldr r0, _0238D810 ; =0x0000042C
	add r5, r1, r0
	mov r0, #2
	ldr r1, _0238D814 ; =0x04808010
	strh r0, [r1]
	ldr r1, [r2]
	add r1, r1, #0x300
	ldrh r1, [r1, #0x4c]
	cmp r1, #0x12
	bne _0238D5E0
	bl FUN_0239262C
	b _0238D800
_0238D5E0:
	ldr r1, _0238D818 ; =0x048080B8
	ldrh r1, [r1]
	and r4, r1, #0xf00
	cmp r4, #0x300
	beq _0238D608
	cmp r4, #0x800
	beq _0238D63C
	cmp r4, #0xb00
	beq _0238D67C
	b _0238D780
_0238D608:
	ldr r0, [r5, #0x8c]
	ands r0, r0, #2
	beq _0238D618
	bl FUN_0238CB80
_0238D618:
	ldr r0, _0238D80C ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, [r1, #0x558]
	add r0, r0, #1
	str r0, [r1, #0x558]
	mov r0, #0
	mov r1, #8
	bl FUN_02389030
	b _0238D780
_0238D63C:
	ldrh r2, [r5, #0x9e]
	ldr r1, [r5, #0x44]
	ldrh r1, [r1, #4]
	and r1, r1, #0xff
	mov r1, r1, lsl #0x10
	cmp r2, r1, lsr #16
	ldrls r1, _0238D81C ; =0x048080AC
	strlsh r0, [r1]
	ldrlsh r0, [r5, #0xa8]
	addls r0, r0, #1
	strlsh r0, [r5, #0xa8]
	ldr r1, [r5, #0x90]
	ldrh r0, [r1, #0x18]
	add r0, r0, #1
	strh r0, [r1, #0x18]
	b _0238D780
_0238D67C:
	ldr r2, _0238D820 ; =0x0000FFFF
	ldr r0, _0238D824 ; =0x04805F70
	strh r2, [r0]
	ldr r0, _0238D828 ; =0x04805F72
	strh r2, [r0]
	ldr r0, _0238D82C ; =0x0480824C
	strh r2, [r0]
	ldr r0, _0238D830 ; =0x0480824E
	strh r2, [r0]
	ldrh r0, [r5, #0x3c]
	cmp r0, #0
	beq _0238D6D8
	ldr r1, [r5, #0x44]
	ldrh r0, [r1, #0x22]
	cmp r0, r2
	bne _0238D6D8
	ldrh r0, [r1, #4]
	cmp r0, #0
	movne r0, #0
	strneh r0, [r1, #4]
	ldrneh r1, [r5, #0x98]
	ldrne r0, [r5, #0x44]
	strneh r1, [r0, #2]
_0238D6D8:
	ldrh r2, [r5, #0x98]
	ldr r0, [r5, #0x44]
	ldrh r1, [r0, #2]
	ldr r0, [r5, #0x90]
	add r0, r0, #0x1a
	cmp r1, #1
	bls _0238D72C
	ldr r3, _0238D80C ; =0x0380FFF4
	ldr r3, [r3]
	add r3, r3, #0x300
	ldrh r3, [r3, #0x3a]
	mov r3, r3, lsl #0x1b
	movs r3, r3, lsr #0x1f
	beq _0238D72C
	ldr r3, _0238D834 ; =0x0480819C
	ldrh r3, [r3]
	ands r3, r3, #1
	ldreq ip, _0238D838 ; =0x04808290
	ldreqh r3, [ip]
	eoreq r3, r3, #1
	streqh r3, [ip]
_0238D72C:
	ldr r3, _0238D80C ; =0x0380FFF4
	ldr r3, [r3]
	add r3, r3, #0x600
	ldrh r3, [r3, #0x90]
	ands r3, r3, #0x40
	beq _0238D780
	b _0238D778
_0238D748:
	mov r1, r1, lsl #0xf
	mov r1, r1, lsr #0x10
	ands r3, r1, #1
	ldrneh r3, [r0, #6]
	addne r3, r3, #1
	strneh r3, [r0, #6]
	mov r2, r2, lsl #0xf
	mov r2, r2, lsr #0x10
	ands r3, r2, #1
	ldrne r3, [r5, #0x90]
	ldrneh r3, [r3, #0x16]
	addne r0, r0, r3
_0238D778:
	cmp r1, #1
	bhi _0238D748
_0238D780:
	cmp r4, #0x800
	beq _0238D7F4
	ldr r0, _0238D83C ; =0x048080B0
	ldrh r0, [r0]
	ands r0, r0, #2
	bne _0238D7F4
	ldrh r0, [r5, #0x3c]
	cmp r0, #0
	beq _0238D7E8
	mov r0, #2
	ldr r1, _0238D840 ; =0x048080B4
	strh r0, [r1]
	mov r2, #0
	ldr r1, _0238D844 ; =0x04808048
	strh r2, [r1]
	ldr r1, _0238D814 ; =0x04808010
	ldrh r1, [r1]
	ands r1, r1, #0x1000
	ldrneh r0, [r5, #0xac]
	addne r0, r0, #1
	strneh r0, [r5, #0xac]
	bne _0238D7DC
	bl FUN_0238D000
_0238D7DC:
	ldrh r0, [r5, #0xaa]
	add r0, r0, #1
	strh r0, [r5, #0xaa]
_0238D7E8:
	mov r1, #2
	ldr r0, _0238D848 ; =0x048080AE
	strh r1, [r0]
_0238D7F4:
	mov r0, #0
	mov r1, #0xe
	bl FUN_02389030
_0238D800:
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_0238D80C: .word 0x0380FFF4
_0238D810: .word 0x0000042C
_0238D814: .word 0x04808010
_0238D818: .word 0x048080B8
_0238D81C: .word 0x048080AC
_0238D820: .word 0x0000FFFF
_0238D824: .word 0x04805F70
_0238D828: .word 0x04805F72
_0238D82C: .word 0x0480824C
_0238D830: .word 0x0480824E
_0238D834: .word 0x0480819C
_0238D838: .word 0x04808290
_0238D83C: .word 0x048080B0
_0238D840: .word 0x048080B4
_0238D844: .word 0x04808048
_0238D848: .word 0x048080AE
	arm_func_end FUN_0238D5A0

	arm_func_start FUN_0238D84C
FUN_0238D84C: ; 0x0238D84C
	stmdb sp!, {r4, lr}
	ldr r4, _0238D9D4 ; =0x0380FFF4
	ldr r1, [r4]
	ldr r0, _0238D9D8 ; =0x000004DC
	add r2, r1, r0
	ldr r0, _0238D9DC ; =0x0000042C
	add r1, r1, r0
	mov r3, #4
	ldr r0, _0238D9E0 ; =0x04808010
	strh r3, [r0]
	ldr r0, _0238D9E4 ; =0x048081A8
	ldrh r0, [r0]
	ldr r3, [r4]
	add r3, r3, #0x600
	ldrh r3, [r3, #0x90]
	ands r3, r3, #8
	beq _0238D94C
	ands r3, r0, #0x400
	beq _0238D94C
	ldr r3, _0238D9E8 ; =0x048080B0
	ldrh r4, [r3]
	ands r3, r4, #1
	beq _0238D8B4
	ldrh r3, [r1]
	cmp r3, #0
	bne _0238D908
_0238D8B4:
	ands r3, r4, #4
	beq _0238D8C8
	ldrh r3, [r1, #0x14]
	cmp r3, #0
	bne _0238D908
_0238D8C8:
	ands r3, r4, #8
	beq _0238D8DC
	ldrh r1, [r1, #0x28]
	cmp r1, #0
	bne _0238D908
_0238D8DC:
	ldr r1, _0238D9EC ; =0x0480819C
	ldrh r1, [r1]
	ands r1, r1, #1
	bne _0238D908
	mov r4, #0
	ldr r3, _0238D9F0 ; =0x04808032
	strh r4, [r3]
	mov r1, #0x8000
	strh r1, [r3]
	strh r4, [r2, #2]
	b _0238D94C
_0238D908:
	ldrh r3, [r2, #2]
	add r1, r3, #1
	strh r1, [r2, #2]
	cmp r3, #0xc
	bls _0238D94C
	mov r1, #0
	strh r1, [r2, #2]
	ldr r2, _0238D9F0 ; =0x04808032
	strh r1, [r2]
	mov r1, #0x8000
	strh r1, [r2]
	ldr r1, _0238D9D4 ; =0x0380FFF4
	ldr r1, [r1]
	add r1, r1, #0x300
	ldrh r2, [r1, #0xfe]
	add r2, r2, #1
	strh r2, [r1, #0xfe]
_0238D94C:
	ldr r1, _0238D9D4 ; =0x0380FFF4
	ldr r1, [r1]
	add r1, r1, #0x600
	ldrh r1, [r1, #0x90]
	ands r1, r1, #1
	beq _0238D9CC
	ands r0, r0, #0x60
	beq _0238D9CC
	ldr r0, _0238D9F4 ; =0x04808054
	ldrh r4, [r0]
	ldr r0, _0238D9F8 ; =0x04808052
	ldrh r0, [r0]
	sub r0, r0, #0x4000
	mov r1, #2
	bl FUN_03801848
	cmp r4, r0
	bge _0238D9AC
	ldr r0, _0238D9FC ; =0x04808050
	ldrh r0, [r0]
	sub r0, r0, #0x4000
	mov r1, #2
	bl FUN_03801848
	cmp r4, r0
	bge _0238D9C8
_0238D9AC:
	ldr r0, _0238DA00 ; =0x0480805A
	ldrh r1, [r0]
	ldr r0, _0238DA04 ; =0x04808056
	strh r1, [r0]
	ldr r1, _0238DA08 ; =0x00008001
	ldr r0, _0238DA0C ; =0x04808030
	strh r1, [r0]
_0238D9C8:
	bl FUN_02389948
_0238D9CC:
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_0238D9D4: .word 0x0380FFF4
_0238D9D8: .word 0x000004DC
_0238D9DC: .word 0x0000042C
_0238D9E0: .word 0x04808010
_0238D9E4: .word 0x048081A8
_0238D9E8: .word 0x048080B0
_0238D9EC: .word 0x0480819C
_0238D9F0: .word 0x04808032
_0238D9F4: .word 0x04808054
_0238D9F8: .word 0x04808052
_0238D9FC: .word 0x04808050
_0238DA00: .word 0x0480805A
_0238DA04: .word 0x04808056
_0238DA08: .word 0x00008001
_0238DA0C: .word 0x04808030
	arm_func_end FUN_0238D84C

	arm_func_start FUN_0238DA10
FUN_0238DA10: ; 0x0238DA10
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r1, #8
	ldr r0, _0238DB24 ; =0x04808010
	strh r1, [r0]
	ldr r0, _0238DB28 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x3a]
	mov r0, r0, lsl #0x1b
	movs r0, r0, lsr #0x1f
	beq _0238DA5C
	ldr r0, _0238DB2C ; =0x0480819C
	ldrh r0, [r0]
	ands r0, r0, #1
	ldreq r1, _0238DB30 ; =0x04808290
	ldreqh r0, [r1]
	eoreq r0, r0, #1
	streqh r0, [r1]
_0238DA5C:
	ldr r0, _0238DB28 ; =0x0380FFF4
	ldr r1, [r0]
	add r0, r1, #0x600
	ldrh r0, [r0, #0x90]
	ands r0, r0, #8
	beq _0238DB18
	add r3, r1, #0x344
	ldr r0, _0238DB34 ; =0x0000042C
	add r1, r1, r0
	mov r2, #0
	mov r5, r2
	ldr r4, _0238DB38 ; =0x04808032
	mov lr, #0x8000
	add ip, r3, #0xba
	mov r3, #0x14
_0238DA98:
	mul r0, r2, r3
	add r6, r1, r0
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _0238DB0C
	ldr r0, [r6, #8]
	ldrh r6, [r0, #0xc]
	ands r6, r6, #0x4000
	beq _0238DB0C
	ldrh r6, [r0, #4]
	ands r6, r6, #0xff
	beq _0238DB0C
	add r7, r0, #0xc
	ldrh r6, [r0, #0xa]
	add r6, r7, r6
	sub r6, r6, #7
	bic r7, r6, #1
	ldrh r6, [r7]
	cmp r6, #0
	bne _0238DB0C
	ldrh r6, [r7, #2]
	cmp r6, #0
	bne _0238DB0C
	strh r5, [r0, #4]
	strh r5, [r4]
	strh lr, [r4]
	ldrh r0, [ip]
	add r0, r0, #1
	strh r0, [ip]
_0238DB0C:
	add r2, r2, #1
	cmp r2, #3
	blo _0238DA98
_0238DB18:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_0238DB24: .word 0x04808010
_0238DB28: .word 0x0380FFF4
_0238DB2C: .word 0x0480819C
_0238DB30: .word 0x04808290
_0238DB34: .word 0x0000042C
_0238DB38: .word 0x04808032
	arm_func_end FUN_0238DA10

	arm_func_start FUN_0238DB3C
FUN_0238DB3C: ; 0x0238DB3C
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_0238AC24
	ldr r1, _0238DB6C ; =0x0000FFFF
	ldr r0, _0238DB70 ; =0x048081AC
	strh r1, [r0]
	mov r1, #0x30
	ldr r0, _0238DB74 ; =0x04808010
	strh r1, [r0]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_0238DB6C: .word 0x0000FFFF
_0238DB70: .word 0x048081AC
_0238DB74: .word 0x04808010
	arm_func_end FUN_0238DB3C

	arm_func_start FUN_0238DB78
FUN_0238DB78: ; 0x0238DB78
	mov r1, #0x800
	ldr r0, _0238DB88 ; =0x04808010
	strh r1, [r0]
	bx lr
	.align 2, 0
_0238DB88: .word 0x04808010
	arm_func_end FUN_0238DB78

	arm_func_start FUN_0238DB8C
FUN_0238DB8C: ; 0x0238DB8C
	ldr r0, _0238DBF8 ; =0x0380FFF4
	ldr r0, [r0]
	add r2, r0, #0x344
	mov r1, #0x2000
	ldr r0, _0238DBFC ; =0x04808010
	strh r1, [r0]
	mov r1, #0xd
	ldr r0, _0238DC00 ; =0x048080AC
	strh r1, [r0]
	ldrh r0, [r2, #0x1a]
	cmp r0, #1
	moveq r0, #2
	streqh r0, [r2, #0x1a]
	bxeq lr
	cmp r0, #2
	moveq r0, #0
	streqh r0, [r2, #0x1a]
	bxeq lr
	ldrh r0, [r2, #0xc]
	cmp r0, #2
	bxne lr
	ldrh r0, [r2, #8]
	cmp r0, #0x40
	movne r1, #0
	ldrne r0, _0238DC04 ; =0x04808048
	strneh r1, [r0]
	bx lr
	.align 2, 0
_0238DBF8: .word 0x0380FFF4
_0238DBFC: .word 0x04808010
_0238DC00: .word 0x048080AC
_0238DC04: .word 0x04808048
	arm_func_end FUN_0238DB8C

	arm_func_start FUN_0238DC08
FUN_0238DC08: ; 0x0238DC08
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	ldr r0, _0238DED8 ; =0x0380FFF4
	ldr r1, [r0]
	add sl, r1, #0x344
	add r4, r1, #0x31c
	ldr r0, _0238DEDC ; =0x0000042C
	add sb, r1, r0
	mov r1, #0x4000
	ldr r0, _0238DEE0 ; =0x04808010
	strh r1, [r0]
	ldrh r0, [sl, #0xc]
	cmp r0, #1
	beq _0238DC54
	cmp r0, #2
	beq _0238DD10
	cmp r0, #3
	beq _0238DD54
	b _0238DECC
_0238DC54:
	ldr r0, [sb, #0x80]
	add r1, r0, #0x24
	ldrh r0, [sl, #0x96]
	add r0, r1, r0
	add r6, r0, #8
	ldr r0, _0238DEE4 ; =0x0380FFF0
	ldrh r5, [r0]
	mov r0, r6
	and r1, r5, #0xff
	bl FUN_02389C88
	add r0, r6, #1
	mov r1, r5, lsr #8
	and r1, r1, #0xff
	bl FUN_02389C88
	ldrh r0, [sl, #0xe]
	cmp r0, #1
	bne _0238DCB0
	ldrh r2, [r4, #0x20]
	ldr r1, _0238DEE8 ; =0x04808134
	ldrh r0, [r1]
	add r0, r2, r0
	add r0, r0, #1
	strh r0, [r1]
_0238DCB0:
	ldr r0, _0238DED8 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x500
	ldrh r1, [r0, #0x2e]
	mvn r2, r1
	ldrh r1, [r0, #0x32]
	orr r1, r2, r1
	strh r1, [r0, #0x30]
	ldr r0, _0238DEEC ; =0x048080B6
	ldrh r1, [r0]
	ands r0, r1, #0x18
	bne _0238DCEC
	and r0, r1, #6
	cmp r0, #2
	bne _0238DD00
_0238DCEC:
	ldr r0, [sb, #0x8c]
	bic r0, r0, #2
	str r0, [sb, #0x8c]
	bl FUN_0238CB80
	b _0238DECC
_0238DD00:
	ldr r0, [sb, #0x8c]
	orr r0, r0, #2
	str r0, [sb, #0x8c]
	b _0238DECC
_0238DD10:
	ldrh r0, [sl, #0x12]
	cmp r0, #0
	ldreq r1, _0238DEF0 ; =0x0000FFFF
	ldreq r0, _0238DEE8 ; =0x04808134
	streqh r1, [r0]
	beq _0238DD40
	ldrh r2, [r4, #0x20]
	ldr r1, _0238DEE8 ; =0x04808134
	ldrh r0, [r1]
	add r0, r2, r0
	add r0, r0, #1
	strh r0, [r1]
_0238DD40:
	ldrh r0, [sl, #0x1a]
	cmp r0, #2
	bne _0238DD54
	mov r0, #2
	bl FUN_0238B38C
_0238DD54:
	ldrh r0, [sl, #8]
	cmp r0, #0x40
	movne r1, #1
	bne _0238DDA4
	mov r1, #0
	ldrh r0, [sl, #0x72]
	cmp r0, #1
	moveq r1, #1
	ldrh r0, [sl, #0x14]
	cmp r0, #0
	beq _0238DDA4
	ldrh r0, [sl, #0x76]
	cmp r0, #1
	beq _0238DDA0
	cmp r0, #0
	bne _0238DDA4
	ldrh r0, [sl, #0x74]
	cmp r0, #1
	bne _0238DDA4
_0238DDA0:
	mov r1, #1
_0238DDA4:
	cmp r1, #0
	ldrne r1, _0238DEF4 ; =0x04808038
	ldrneh r0, [r1]
	orrne r0, r0, #1
	strneh r0, [r1]
	ldreq r1, _0238DEF4 ; =0x04808038
	ldreqh r0, [r1]
	biceq r0, r0, #1
	streqh r0, [r1]
	ldr r0, _0238DEF8 ; =0x04808118
	ldrh r0, [r0]
	cmp r0, #0xa
	movhi r1, #0
	ldrhi r0, _0238DEFC ; =0x04808048
	strhih r1, [r0]
	ldrh r0, [sl, #0x72]
	sub r0, r0, #1
	strh r0, [sl, #0x72]
	ldrh r0, [sl, #0x72]
	cmp r0, #0
	ldreqh r0, [sl, #0x70]
	streqh r0, [sl, #0x72]
	ldrh r1, [sl, #0x76]
	sub r0, r1, #1
	strh r0, [sl, #0x76]
	cmp r1, #0
	ldreqh r0, [sl, #0x74]
	subeq r0, r0, #1
	streqh r0, [sl, #0x76]
	mov r8, #0
	mov r6, #2
	mov fp, r8
	mov r5, #0xe
	mov r4, #0x14
_0238DE2C:
	mul r0, r8, r4
	add r7, sb, r0
	ldrh r0, [sb, r0]
	cmp r0, #0
	beq _0238DEB4
	ldr r2, [r7, #0xc]
	ldrh r0, [r2, #8]
	cmp r0, #0
	bne _0238DEB4
	ldr r1, [sl, #0xa8]
	ldrh r0, [r2, #4]
	sub r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	ldrh r0, [sl, #0x8c]
	cmp r1, r0
	bls _0238DE84
	ldr r2, [r7, #8]
	ldrh r2, [r2, #0xc]
	mov r2, r2, lsl #0x1c
	movs r2, r2, lsr #0x1e
	bne _0238DE8C
_0238DE84:
	cmp r1, r0, lsl #3
	bls _0238DEB4
_0238DE8C:
	mov r0, r8
	bl FUN_02394F50
	ldr r0, [r7, #8]
	strh r6, [r0]
	mov r0, fp
	mov r1, r5
	bl FUN_02389030
	ldrh r0, [sb, #0xae]
	add r0, r0, #1
	strh r0, [sb, #0xae]
_0238DEB4:
	add r8, r8, #1
	cmp r8, #2
	blo _0238DE2C
	mov r1, #0xd
	ldr r0, _0238DF00 ; =0x048080AE
	strh r1, [r0]
_0238DECC:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_0238DED8: .word 0x0380FFF4
_0238DEDC: .word 0x0000042C
_0238DEE0: .word 0x04808010
_0238DEE4: .word 0x0380FFF0
_0238DEE8: .word 0x04808134
_0238DEEC: .word 0x048080B6
_0238DEF0: .word 0x0000FFFF
_0238DEF4: .word 0x04808038
_0238DEF8: .word 0x04808118
_0238DEFC: .word 0x04808048
_0238DF00: .word 0x048080AE
	arm_func_end FUN_0238DC08

	arm_func_start FUN_0238DF04
FUN_0238DF04: ; 0x0238DF04
	stmdb sp!, {r4, lr}
	ldr r0, _0238DF88 ; =0x0380FFF4
	ldr r0, [r0]
	add r4, r0, #0x344
	mov r1, #0x8000
	ldr r0, _0238DF8C ; =0x04808010
	strh r1, [r0]
	ldrh r0, [r4, #8]
	cmp r0, #0x40
	bne _0238DF78
	ldrh r0, [r4, #0x7e]
	cmp r0, #0
	beq _0238DF78
	ldrh r1, [r4, #0x72]
	ldrh r0, [r4, #0x70]
	cmp r1, r0
	bne _0238DF78
	ldrh r0, [r4, #0x80]
	add r0, r0, #1
	strh r0, [r4, #0x80]
	ldrh r1, [r4, #0x80]
	ldrh r0, [r4, #0x7e]
	cmp r1, r0
	bls _0238DF78
	mov r0, #0
	strh r0, [r4, #0x80]
	mov r0, #1
	mov r1, #0xd
	bl FUN_02389030
_0238DF78:
	mov r0, #1
	strh r0, [r4, #0x10]
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_0238DF88: .word 0x0380FFF4
_0238DF8C: .word 0x04808010
	arm_func_end FUN_0238DF04

	arm_func_start FUN_0238DF90
FUN_0238DF90: ; 0x0238DF90
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, #1
	ldr r5, _0238E068 ; =0x04808010
	ldr r4, _0238E06C ; =0x04808012
_0238DFA4:
	ldrh r1, [r5]
	ldrh r0, [r4]
	ands r6, r1, r0
	beq _0238E04C
	ands r0, r6, #0x80
	beq _0238DFC0
	bl FUN_0238CEC8
_0238DFC0:
	ands r0, r6, #0x40
	beq _0238DFCC
	bl FUN_0238CC54
_0238DFCC:
	ands r0, r6, #0x8000
	beq _0238DFD8
	bl FUN_0238DF04
_0238DFD8:
	ands r0, r6, #0x4000
	beq _0238DFE4
	bl FUN_0238DC08
_0238DFE4:
	ands r0, r6, #0x2000
	beq _0238DFF0
	bl FUN_0238DB8C
_0238DFF0:
	ands r0, r6, #0x800
	beq _0238DFFC
	bl FUN_0238DB78
_0238DFFC:
	ands r0, r6, #8
	beq _0238E008
	bl FUN_0238DA10
_0238E008:
	ands r0, r6, #4
	beq _0238E014
	bl FUN_0238D84C
_0238E014:
	ands r0, r6, #1
	beq _0238E020
	bl FUN_0238D110
_0238E020:
	ands r0, r6, #0x30
	beq _0238E02C
	bl FUN_0238DB3C
_0238E02C:
	ands r0, r6, #2
	beq _0238E038
	bl FUN_0238D5A0
_0238E038:
	ands r0, r6, #0x1000
	beq _0238DFA4
	mov r0, r7
	bl FUN_0238D000
	b _0238DFA4
_0238E04C:
	ldr r1, _0238E070 ; =0x0380FFF8
	ldr r0, [r1]
	orr r0, r0, #0x1000000
	str r0, [r1]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_0238E068: .word 0x04808010
_0238E06C: .word 0x04808012
_0238E070: .word 0x0380FFF8
	arm_func_end FUN_0238DF90

	arm_func_start FUN_0238E074
FUN_0238E074: ; 0x0238E074
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	ldr r0, _0238E0E4 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x188
	add r1, r5, #0x22
	bl FUN_023896DC
	cmp r0, #0
	moveq r0, #0
	beq _0238E0DC
	add r4, r0, #0x10
	add r0, r4, #8
	mov r1, r6
	add r2, r5, #0xc
	bl FUN_02389D5C
	sub r0, r5, #0x18
	strh r0, [r4, #6]
	ldrh r0, [r4, #0xe]
	and r1, r0, #0xff
	ldrh r0, [r4, #0x12]
	and r0, r0, #0xff
	mov r0, r0, lsl #0x10
	orr r0, r1, r0, lsr #8
	strh r0, [r4, #0xe]
	mov r0, r4
_0238E0DC:
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_0238E0E4: .word 0x0380FFF4
	arm_func_end FUN_0238E074

	arm_func_start FUN_0238E0E8
FUN_0238E0E8: ; 0x0238E0E8
	stmdb sp!, {r4, lr}
	ldr r0, _0238E1A0 ; =0x0380FFF4
	ldr r1, [r0]
	add r4, r1, #0x17c
	ldr r0, _0238E1A4 ; =0x04808088
	ldrh r0, [r0]
	cmp r0, #0
	bne _0238E12C
	ldrh r0, [r4, #0x38]
	cmp r0, #0
	beq _0238E12C
	mov r1, #8
	ldr r0, _0238E1A8 ; =0x048080AE
	strh r1, [r0]
	mov r0, #2
	bl FUN_02395C00
	b _0238E198
_0238E12C:
	add r0, r1, #0x500
	ldrh r1, [r0, #0x2e]
	ldrh r0, [r0, #0x32]
	mvn r0, r0
	ands r0, r1, r0
	bne _0238E164
	mov r1, #8
	ldr r0, _0238E1A8 ; =0x048080AE
	strh r1, [r0]
	ldrh r0, [r4, #0x38]
	cmp r0, #0
	beq _0238E164
	mov r0, #2
	bl FUN_02395C00
_0238E164:
	mov r1, #5
	ldr r0, _0238E1A8 ; =0x048080AE
	strh r1, [r0]
	ldrh r0, [r4, #0x2c]
	cmp r0, #0
	beq _0238E184
	mov r0, #1
	bl FUN_02395C00
_0238E184:
	ldrh r0, [r4, #0x20]
	cmp r0, #0
	beq _0238E198
	mov r0, #0
	bl FUN_02395C00
_0238E198:
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_0238E1A0: .word 0x0380FFF4
_0238E1A4: .word 0x04808088
_0238E1A8: .word 0x048080AE
	arm_func_end FUN_0238E0E8

	arm_func_start FUN_0238E1AC
FUN_0238E1AC: ; 0x0238E1AC
	stmdb sp!, {r4, lr}
	ldr r0, _0238E290 ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, _0238E294 ; =0x0000042C
	add r4, r1, r0
	ldrh r0, [r4, #0x3c]
	cmp r0, #0
	beq _0238E288
	ldr r0, [r4, #0x90]
	ldrh r1, [r0, #0x10]
	ldr r0, [r4, #0x44]
	ldrh r0, [r0, #2]
	cmp r1, r0
	beq _0238E1E8
	bl FUN_0238E298
_0238E1E8:
	ldr r0, [r4, #0x44]
	ldrh r0, [r0, #4]
	ands r2, r0, #0xff
	ldreq r0, _0238E290 ; =0x0380FFF4
	ldreq r1, [r0]
	ldreq r0, [r1, #0x5a0]
	addeq r0, r0, #1
	streq r0, [r1, #0x5a0]
	beq _0238E220
	ldr r0, _0238E290 ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, [r1, #0x5a0]
	add r0, r0, r2
	str r0, [r1, #0x5a0]
_0238E220:
	ldrh r0, [r4, #0x40]
	add r0, r0, #1
	strh r0, [r4, #0x40]
	ldr r2, [r4, #0x90]
	ldrh r1, [r2, #0x10]
	ldr r0, [r4, #0x44]
	ldrh r0, [r0, #2]
	eor r0, r1, r0
	strh r0, [r2, #0x12]
	ldr r0, [r4, #0x90]
	ldrh r0, [r0, #0x10]
	strh r0, [r4, #0xa0]
	mov r0, #0
	strh r0, [r4, #0x3c]
	ldr r0, _0238E290 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0xea]
	cmp r0, #0
	beq _0238E274
	bl FUN_0238B1B4
_0238E274:
	ldr r0, _0238E290 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x188
	ldr r1, [r4, #0x90]
	bl FUN_0238F86C
_0238E288:
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_0238E290: .word 0x0380FFF4
_0238E294: .word 0x0000042C
	arm_func_end FUN_0238E1AC

	arm_func_start FUN_0238E298
FUN_0238E298: ; 0x0238E298
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x34
	ldr sl, _0238E648 ; =0x0380FFF4
	ldr r1, [sl]
	ldr r0, _0238E64C ; =0x000004DC
	add r7, r1, r0
	add r6, r1, #0x17c
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #0xc]
	mov r8, #1
	str r0, [sp, #0x28]
	mov r0, #7
	str r0, [sp, #0x24]
	ldr r0, [sp]
	str r0, [sp, #0x20]
	str r0, [sp, #0x18]
	mov fp, #2
	mov r0, #6
	str r0, [sp, #0x1c]
	ldr r0, [sp]
	str r0, [sp, #0x10]
	mov r0, #9
	str r0, [sp, #0x14]
	ldr r0, [sp]
	str r0, [sp, #0x2c]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #4]
_0238E310:
	ldr r0, _0238E650 ; =0x0480805A
	ldrh r5, [r0]
	ldrh r0, [r7, #4]
	cmp r5, r0
	beq _0238E63C
	ldr r0, _0238E654 ; =0x000008C6
	cmp r5, r0
	blo _0238E334
	bl FUN_0238AC24
_0238E334:
	mov r4, r5, lsl #1
	ldr r0, _0238E658 ; =0x04804000
	add r5, r0, r5, lsl #1
	add r0, r5, #2
	bl FUN_0238CAEC
	ldrh sb, [r0]
	add r0, r4, #0x4800000
	add r0, r0, #0x4000
	ldrh r1, [r0]
	ldr r0, _0238E65C ; =0x0000FFFF
	cmp r1, r0
	ldreq r0, _0238E650 ; =0x0480805A
	streqh sb, [r0]
	beq _0238E62C
	add r0, r5, #8
	bl FUN_0238CAEC
	ldrh r1, [r0]
	mov r0, r5
	bl FUN_0238E074
	movs r4, r0
	ldr r0, _0238E650 ; =0x0480805A
	strh sb, [r0]
	bne _0238E3B8
	ldrh r0, [r5]
	and r0, r0, #0xf
	cmp r0, #0xc
	bne _0238E3AC
	ldr r0, [sp, #4]
	bl FUN_02389904
	b _0238E62C
_0238E3AC:
	ldr r0, [sp, #8]
	bl FUN_02389904
	b _0238E62C
_0238E3B8:
	ldr r0, [sl]
	add r0, r0, #0x600
	ldrh r0, [r0, #0x90]
	ands r0, r0, #8
	beq _0238E3DC
	ldrh r0, [r4, #0x14]
	ands r0, r0, #0x4000
	ldrne r0, [sp, #0xc]
	strneh r0, [r7, #2]
_0238E3DC:
	ldrh r1, [r4, #8]
	mov sb, r8
	ands r0, r1, #0x200
	beq _0238E434
	ldrh r0, [r4, #0x14]
	mov r0, r0, lsl #0x15
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	beq _0238E410
	ldrh r0, [r4, #0x2a]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	beq _0238E5D4
_0238E410:
	ldr sb, [sp, #0x10]
	add r0, r6, #0xc
	add r1, r6, #0x6c
	sub r2, r4, #0x10
	bl FUN_023895E4
	mov r0, fp
	ldr r1, [sp, #0x14]
	bl FUN_02389030
	b _0238E5D4
_0238E434:
	and r0, r1, #0xf
	cmp r0, #0xf
	addls pc, pc, r0, lsl #2
	b _0238E5D4
_0238E444: ; jump table
	b _0238E4D0 ; case 0
	b _0238E4B8 ; case 1
	b _0238E5D4 ; case 2
	b _0238E5D4 ; case 3
	b _0238E5D4 ; case 4
	b _0238E500 ; case 5
	b _0238E5D4 ; case 6
	b _0238E5D4 ; case 7
	b _0238E484 ; case 8
	b _0238E5D4 ; case 9
	b _0238E5D4 ; case 10
	b _0238E5D4 ; case 11
	b _0238E558 ; case 12
	b _0238E5A4 ; case 13
	b _0238E538 ; case 14
	b _0238E538 ; case 15
_0238E484:
	ldrh r0, [r4, #0x14]
	and r0, r0, #0xf
	cmp r0, #8
	bne _0238E5D4
	ldr sb, [sp, #0x18]
	add r0, r6, #0xc
	add r1, r6, #0x48
	sub r2, r4, #0x10
	bl FUN_023895E4
	mov r0, fp
	ldr r1, [sp, #0x1c]
	bl FUN_02389030
	b _0238E5D4
_0238E4B8:
	ldrh r0, [r4, #0x14]
	cmp r0, #0x80
	bne _0238E5D4
	mov r0, r4
	bl FUN_02397F5C
	b _0238E5D4
_0238E4D0:
	ldrh r0, [r4, #0x14]
	ands r0, r0, #0xf
	bne _0238E5D4
	ldr sb, [sp, #0x20]
	add r0, r6, #0xc
	add r1, r6, #0x60
	sub r2, r4, #0x10
	bl FUN_023895E4
	mov r0, r8
	ldr r1, [sp, #0x24]
	bl FUN_02389030
	b _0238E5D4
_0238E500:
	ldrh r1, [r4, #0x14]
	ldr r0, _0238E660 ; =0x0000E7FF
	and r0, r1, r0
	cmp r0, #0xa4
	bne _0238E5D4
	ldr sb, [sp, #0x28]
	add r0, r6, #0xc
	add r1, r6, #0x60
	sub r2, r4, #0x10
	bl FUN_023895E4
	mov r0, r8
	ldr r1, [sp, #0x24]
	bl FUN_02389030
	b _0238E5D4
_0238E538:
	ldrh r1, [r4, #0x14]
	ldr r0, _0238E664 ; =0x0000E7BF
	and r0, r1, r0
	cmp r0, #0x118
	bne _0238E5D4
	mov r0, r4
	bl FUN_02398700
	b _0238E5D4
_0238E558:
	ldrh r1, [r4, #0x14]
	ldr r0, _0238E660 ; =0x0000E7FF
	and r0, r1, r0
	cmp r0, #0x228
	bne _0238E5D4
	ldr r0, [sl]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x54]
	cmp r0, #0
	ldreq r0, _0238E668 ; =0x0480803C
	streqh r8, [r0]
	ldr r1, [sl]
	ldr r0, [r1, #0x5ac]
	add r0, r0, #1
	str r0, [r1, #0x5ac]
	mov r0, r4
	bl FUN_023988C4
	mov sb, r0
	b _0238E5D4
_0238E5A4:
	ldrh r1, [r4, #0x14]
	ldr r0, _0238E660 ; =0x0000E7FF
	and r0, r1, r0
	cmp r0, #0x218
	bne _0238E5D4
	ldr r1, [sl]
	ldr r0, [r1, #0x5b0]
	add r0, r0, #1
	str r0, [r1, #0x5b0]
	mov r0, r4
	bl FUN_0239861C
	mov sb, r0
_0238E5D4:
	cmp sb, #0
	beq _0238E5E8
	add r0, r6, #0xc
	sub r1, r4, #0x10
	bl FUN_02389658
_0238E5E8:
	ldr r0, [sl]
	add r0, r0, #0x600
	ldrh r0, [r0, #0x90]
	ands r0, r0, #1
	beq _0238E62C
	ldr r1, [sp, #0x2c]
_0238E600:
	ldr r0, _0238E66C ; =0x04805F60
	cmp r5, r0
	ldrhs r0, [sl]
	addhs r0, r0, #0x300
	ldrhsh r0, [r0, #0xde]
	subhs r5, r5, r0
	ldr r0, _0238E65C ; =0x0000FFFF
	strh r0, [r5], #2
	add r1, r1, #1
	cmp r1, #7
	blo _0238E600
_0238E62C:
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	b _0238E310
_0238E63C:
	add sp, sp, #0x34
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_0238E648: .word 0x0380FFF4
_0238E64C: .word 0x000004DC
_0238E650: .word 0x0480805A
_0238E654: .word 0x000008C6
_0238E658: .word 0x04804000
_0238E65C: .word 0x0000FFFF
_0238E660: .word 0x0000E7FF
_0238E664: .word 0x0000E7BF
_0238E668: .word 0x0480803C
_0238E66C: .word 0x04805F60
	arm_func_end FUN_0238E298

	arm_func_start FUN_0238E670
FUN_0238E670: ; 0x0238E670
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	ldr r0, _0238E868 ; =0x0380FFF4
	ldr r1, [r0]
	add sl, r1, #0x344
	ldr r0, _0238E86C ; =0x0000042C
	add sb, r1, r0
	mov r8, #2
	mov r7, #0
	mov r6, #0x8000
	mov fp, #3
	str r8, [sp]
	mov r5, r8
	mov r4, #1
_0238E6A8:
	mov r0, #0x14
	mla r2, r8, r0, sb
	mov r3, r8, lsl #2
	ldr r0, _0238E870 ; =0x048080A0
	add r1, r0, r8, lsl #2
	add r0, r3, #0x4800000
	add r0, r0, #0x8000
	ldrh r0, [r0, #0xa0]
	ands r0, r0, #0x8000
	bne _0238E854
	ldrh r0, [r2]
	cmp r0, #0
	beq _0238E854
	ldr r3, [r2, #0xc]
	cmp r3, #0
	beq _0238E834
	ldr r0, [r2, #8]
	ldrh r0, [r0]
	strh r0, [r3, #8]
	ldr r0, [r2, #8]
	ldrh r3, [r0, #0xc]
	ldr r0, [r2, #0xc]
	strh r3, [r0, #0x14]
	ldr r3, [r2, #8]
	ldrh r0, [r3, #0xc]
	ands r0, r0, #0x4000
	beq _0238E800
	ldr r0, _0238E868 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x600
	ldrh r0, [r0, #0x90]
	ands r0, r0, #8
	beq _0238E7E4
	add ip, r3, #0xc
	ldrh r0, [r3, #0xa]
	add r0, ip, r0
	sub r0, r0, #7
	bic ip, r0, #1
	ldrh r0, [ip]
	cmp r0, #0
	bne _0238E7E4
	ldrh r0, [ip, #2]
	cmp r0, #0
	bne _0238E7E4
	ldr r3, [sl, #0xa8]
	ldr r0, [r2, #0xc]
	ldrh r0, [r0, #4]
	sub r0, r3, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldr r3, _0238E874 ; =0x04808032
	strh r7, [r3]
	strh r6, [r3]
	ldrh r3, [sl, #0xba]
	add r3, r3, #1
	strh r3, [sl, #0xba]
	ldrh r3, [sl, #0x8c]
	cmp r0, r3
	bls _0238E7CC
	ldr r0, [r2, #0xc]
	strh r5, [r0, #8]
	ldrh r0, [r2, #4]
	add r0, r0, #1
	strh r0, [r2, #4]
	ldrh r0, [sb, #0xae]
	add r0, r0, #1
	strh r0, [sb, #0xae]
	ldr r0, [r2, #0xc]
	mov r1, r4
	ldr r2, [r2, #0x10]
	mov lr, pc
	bx r2
	arm_func_end FUN_0238E670

	arm_func_start FUN_0238E7C8
FUN_0238E7C8: ; 0x0238E7C8
	b _0238E854
_0238E7CC:
	ldr r0, [r2, #0xc]
	strh r7, [r0, #0xc]
	ldrh r0, [r1]
	orr r0, r0, #0x8000
	strh r0, [r1]
	b _0238E854
_0238E7E4:
	ldr r1, [r2, #0xc]
	ldrh r0, [r1, #0xc]
	ldrh r3, [r3, #4]
	and r3, r3, #0xff
	add r0, r0, r3
	strh r0, [r1, #0xc]
	b _0238E810
_0238E800:
	ldrh r0, [r3, #4]
	and r1, r0, #0xff
	ldr r0, [r2, #0xc]
	strh r1, [r0, #0xc]
_0238E810:
	ldrh r0, [r2, #4]
	add r0, r0, #1
	strh r0, [r2, #4]
	ldr r0, [r2, #0xc]
	ldr r1, [sp]
	ldr r2, [r2, #0x10]
	mov lr, pc
	bx r2
	arm_func_end FUN_0238E7C8

	arm_func_start FUN_0238E830
FUN_0238E830: ; 0x0238E830
	b _0238E854
_0238E834:
	ldrh r0, [r2, #4]
	add r0, r0, #1
	strh r0, [r2, #4]
	ldr r0, [r2, #8]
	mov r1, fp
	ldr r2, [r2, #0x10]
	mov lr, pc
	bx r2
_0238E854:
	subs r8, r8, #1
	bpl _0238E6A8
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_0238E868: .word 0x0380FFF4
_0238E86C: .word 0x0000042C
_0238E870: .word 0x048080A0
_0238E874: .word 0x04808032
	arm_func_end FUN_0238E830

	arm_func_start FUN_0238E878
FUN_0238E878: ; 0x0238E878
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _0238E8C8 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0xe8]
	cmp r0, #0
	beq _0238E89C
	bl FUN_023945F8
_0238E89C:
	ldr r0, _0238E8C8 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x3a]
	mov r0, r0, lsl #0x19
	movs r0, r0, lsr #0x1f
	beq _0238E8BC
	bl FUN_0238FD74
_0238E8BC:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_0238E8C8: .word 0x0380FFF4
	arm_func_end FUN_0238E878

	arm_func_start FUN_0238E8CC
FUN_0238E8CC: ; 0x0238E8CC
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	ldr r0, _0238E998 ; =0x0380FFF4
	ldr r2, [r0]
	ldr r1, [r2, #0x31c]
	mov r0, #0x1c
	mul r0, r6, r0
	add r4, r1, r0
	ldrh r0, [r1, r0]
	cmp r0, #0
	addeq r0, r2, #0x500
	ldreqh r1, [r0, #0x2c]
	addeq r1, r1, #1
	streqh r1, [r0, #0x2c]
	mov r0, #0
	mov r1, r4
	mov r2, #0x1a
	bl FUN_037FAF38
	ldr r0, _0238E998 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x500
	ldrh r2, [r0, #0x34]
	mov r1, #1
	mvn r1, r1, lsl r6
	and r1, r2, r1
	strh r1, [r0, #0x34]
	mov r0, r6, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, #0
	bl FUN_0238F1A8
	mov r0, r6
	bl FUN_0238F144
	add r0, r4, #4
	mov r1, r5
	bl FUN_0238AEE4
	ldr r0, _0238E99C ; =0x0000FFFF
	strh r0, [r4, #0x14]
	ldr r0, _0238E998 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0xa6]
	strh r0, [r4, #0x10]
	ldrh r0, [r4, #0x1a]
	strh r0, [r4, #0x18]
	mov r0, r6, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, #0x20
	bl FUN_0238F224
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_0238E998: .word 0x0380FFF4
_0238E99C: .word 0x0000FFFF
	arm_func_end FUN_0238E8CC

	arm_func_start FUN_0238E9A0
FUN_0238E9A0: ; 0x0238E9A0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r0, _0238EA20 ; =0x0380FFF4
	ldr r1, [r0]
	ldr r5, [r1, #0x31c]
	ldr r0, _0238EA24 ; =0x0000052C
	add r4, r1, r0
	add r0, r1, #0x300
	ldrh sb, [r0, #0x22]
	mov sl, #1
	mov r8, #0
	mov r7, #0x1a
	mov r6, #0x1c
	b _0238E9E8
_0238E9D4:
	mov r0, r8
	mla r1, sl, r6, r5
	mov r2, r7
	bl FUN_037FAF38
	add sl, sl, #1
_0238E9E8:
	cmp sl, sb
	blo _0238E9D4
	mov r2, #1
	strh r2, [r4]
	mov r1, #0
	strh r1, [r4, #2]
	strh r2, [r4, #4]
	ldr r0, _0238EA28 ; =0x0000FFFE
	strh r0, [r4, #6]
	strh r1, [r4, #0xc]
	strh r1, [r4, #8]
	strh r2, [r4, #0xe]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	.align 2, 0
_0238EA20: .word 0x0380FFF4
_0238EA24: .word 0x0000052C
_0238EA28: .word 0x0000FFFE
	arm_func_end FUN_0238E9A0

	arm_func_start FUN_0238EA2C
FUN_0238EA2C: ; 0x0238EA2C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r0, _0238EAC4 ; =0x0380FFF4
	ldr r0, [r0]
	ldr r5, [r0, #0x31c]
	add r0, r0, #0x300
	ldrh r4, [r0, #0x22]
	mov r0, #0
	mov r1, r5
	mov r2, #0x1c
	mul r2, r4, r2
	bl FUN_037FAF38
	mov r0, #0
	ldr r1, _0238EAC4 ; =0x0380FFF4
	ldr r2, [r1]
	ldr r1, _0238EAC8 ; =0x0000052C
	add r1, r2, r1
	mov r2, #0x10
	bl FUN_037FAF38
	ldr r2, _0238EACC ; =0x0000FFFF
	strh r2, [r5, #0x1a]
	mov r3, #1
	mov r0, #0x1c
	b _0238EA98
_0238EA8C:
	mla r1, r3, r0, r5
	strh r2, [r1, #0x1a]
	add r3, r3, #1
_0238EA98:
	cmp r3, r4
	blo _0238EA8C
	mov r0, #0
	ldr r1, _0238EAD0 ; =_023992DC
	bl FUN_0238E8CC
	mov r0, #0
	mov r1, #0x40
	bl FUN_0238F224
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_0238EAC4: .word 0x0380FFF4
_0238EAC8: .word 0x0000052C
_0238EACC: .word 0x0000FFFF
_0238EAD0: .word _023992DC
	arm_func_end FUN_0238EA2C

	arm_func_start FUN_0238EAD4
FUN_0238EAD4: ; 0x0238EAD4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl FUN_02394E40
	mov r3, #0
	ldr r2, _0238EB18 ; =0x0380FFF4
	ldr r0, [r2]
	ldr r1, [r0, #0x31c]
	mov r0, #0x1c
	mul r0, r4, r0
	strh r3, [r1, r0]
	ldr r0, [r2]
	add r0, r0, #0x500
	ldrh r1, [r0, #0x2c]
	sub r1, r1, #1
	strh r1, [r0, #0x2c]
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_0238EB18: .word 0x0380FFF4
	arm_func_end FUN_0238EAD4

	arm_func_start FUN_0238EB1C
FUN_0238EB1C: ; 0x0238EB1C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x2c
	ldr r0, _0238ECFC ; =0x0380FFF4
	ldr sl, [r0]
	ldr r0, [sl, #0x31c]
	add sb, r0, #0x1c
	add r0, sl, #0x500
	ldrh r6, [r0, #0x2c]
	mov r7, #0
	mov r8, #1
	mov fp, r8
	str r7, [sp]
	str r8, [sp, #4]
	str r7, [sp, #8]
	mov r4, #0x20
	str r8, [sp, #0x14]
	str r7, [sp, #0x18]
	str r8, [sp, #0x20]
	str r8, [sp, #0x10]
	str r7, [sp, #0x24]
	str r8, [sp, #0x1c]
	str r8, [sp, #0xc]
	b _0238ECE0
_0238EB78:
	ldrh r0, [sb]
	cmp r0, #0
	beq _0238ECD0
	ldrh r1, [sb, #0x18]
	cmp r1, #0
	beq _0238ECCC
	ldr r0, _0238ED00 ; =0x0000FFFF
	cmp r1, r0
	beq _0238ECCC
	sub r0, r1, #1
	strh r0, [sb, #0x18]
	ldrh r0, [sb, #0x18]
	cmp r0, #0
	bne _0238ECCC
	ldrh r0, [sb]
	cmp r0, #0x20
	blo _0238ECB4
	mov r0, r8
	bl FUN_0238EF80
	mov r5, r0
	mov r0, r8, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, r4
	bl FUN_0238F224
	mov r0, r8
	bl FUN_02394E40
	add r0, sl, #0x300
	ldrh r1, [r0, #0x50]
	cmp r1, #1
	bne _0238EC64
	cmp r5, #0x20
	bls _0238ECB4
	ldr r0, _0238ECFC ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x500
	ldrh r1, [r0, #0x34]
	orr r1, r1, fp, lsl r8
	strh r1, [r0, #0x34]
	mov r0, r8, lsl #0x10
	mov r0, r0, lsr #0x10
	ldr r1, [sp]
	bl FUN_0238F1A8
	mov r0, r8
	bl FUN_0238F144
	add r0, sb, #4
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	bl FUN_02393E24
	cmp r0, #0
	beq _0238EC54
	ldr r1, [sp, #0xc]
	strh r1, [r0]
	bl FUN_02394BF4
	add r7, r7, #1
	b _0238ECD8
_0238EC54:
	add r0, sb, #4
	ldr r1, [sp, #0x10]
	bl FUN_023900C0
	b _0238ECB4
_0238EC64:
	ldrh r0, [r0, #0xcc]
	cmp r8, r0
	bne _0238ECB4
	add r0, sb, #4
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	bl FUN_02393E24
	cmp r0, #0
	beq _0238EC9C
	ldr r1, [sp, #0x1c]
	strh r1, [r0]
	bl FUN_02394BF4
	add r7, r7, #1
	b _0238ECD8
_0238EC9C:
	mov r0, r4
	bl FUN_0238AF00
	bl FUN_0238AFEC
	add r0, sb, #4
	ldr r1, [sp, #0x20]
	bl FUN_023900C0
_0238ECB4:
	ldr r0, [sp, #0x24]
	strh r0, [sb]
	add r0, sl, #0x500
	ldrh r1, [r0, #0x2c]
	sub r1, r1, #1
	strh r1, [r0, #0x2c]
_0238ECCC:
	add r7, r7, #1
_0238ECD0:
	cmp r7, r6
	bhs _0238ECF0
_0238ECD8:
	add r8, r8, #1
	add sb, sb, #0x1c
_0238ECE0:
	add r0, sl, #0x300
	ldrh r0, [r0, #0x22]
	cmp r8, r0
	blo _0238EB78
_0238ECF0:
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_0238ECFC: .word 0x0380FFF4
_0238ED00: .word 0x0000FFFF
	arm_func_end FUN_0238EB1C

	arm_func_start FUN_0238ED04
FUN_0238ED04: ; 0x0238ED04
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	bl FUN_0238EF80
	cmp r0, #0x40
	bne _0238EDA0
	ldr r0, _0238EDA8 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r1, [r0, #0xd8]
	ldr r0, _0238EDAC ; =0x0480425C
	add r6, r1, r0
	mov r0, #0x1000000
	bl FUN_037F8774
	mov r4, r0
	cmp r5, #0
	bne _0238ED60
	add r0, r6, #4
	bl FUN_02389C68
	and r1, r0, #0xfe
	add r0, r6, #4
	and r1, r1, #0xff
	bl FUN_02389C88
	b _0238ED98
_0238ED60:
	mov r0, r5
	bl FUN_0238EEA8
	mov r5, r0
	add r0, r6, #5
	add r6, r0, r5, lsr #3
	mov r0, r6
	bl FUN_02389C68
	mov r2, #1
	and r1, r5, #7
	mvn r1, r2, lsl r1
	and r1, r1, r0
	mov r0, r6
	and r1, r1, #0xff
	bl FUN_02389C88
_0238ED98:
	mov r0, r4
	bl FUN_037F87B0
_0238EDA0:
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_0238EDA8: .word 0x0380FFF4
_0238EDAC: .word 0x0480425C
	arm_func_end FUN_0238ED04

	arm_func_start FUN_0238EDB0
FUN_0238EDB0: ; 0x0238EDB0
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	bl FUN_0238EF80
	cmp r0, #0x40
	bne _0238EE60
	ldr r0, _0238EE68 ; =0x0380FFF4
	ldr r2, [r0]
	add r0, r2, #0x500
	ldrh r1, [r0, #0x34]
	mov r0, #1
	mov r0, r0, lsl r5
	ands r0, r1, r0
	bne _0238EE60
	add r0, r2, #0x300
	ldrh r1, [r0, #0xd8]
	ldr r0, _0238EE6C ; =0x0480425C
	add r6, r1, r0
	mov r0, #0x1000000
	bl FUN_037F8774
	mov r4, r0
	cmp r5, #0
	bne _0238EE24
	add r0, r6, #4
	bl FUN_02389C68
	orr r1, r0, #1
	add r0, r6, #4
	and r1, r1, #0xff
	bl FUN_02389C88
	b _0238EE58
_0238EE24:
	mov r0, r5
	bl FUN_0238EEA8
	mov r5, r0
	add r0, r6, #5
	add r6, r0, r5, lsr #3
	mov r0, r6
	bl FUN_02389C68
	mov r2, #1
	and r1, r5, #7
	orr r1, r0, r2, lsl r1
	mov r0, r6
	and r1, r1, #0xff
	bl FUN_02389C88
_0238EE58:
	mov r0, r4
	bl FUN_037F87B0
_0238EE60:
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_0238EE68: .word 0x0380FFF4
_0238EE6C: .word 0x0480425C
	arm_func_end FUN_0238EDB0

	arm_func_start FUN_0238EE70
FUN_0238EE70: ; 0x0238EE70
	ldr r1, _0238EE88 ; =0x0380FFF4
	ldr r1, [r1]
	ldr r2, [r1, #0x31c]
	mov r1, #0x1c
	mla r0, r1, r0, r2
	bx lr
	.align 2, 0
_0238EE88: .word 0x0380FFF4
	arm_func_end FUN_0238EE70

	arm_func_start FUN_0238EE8C
FUN_0238EE8C: ; 0x0238EE8C
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_0238EE70
	ldrh r0, [r0, #0x16]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_0238EE8C

	arm_func_start FUN_0238EEA8
FUN_0238EEA8: ; 0x0238EEA8
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_0238EE70
	ldrh r0, [r0, #2]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_0238EEA8

	arm_func_start FUN_0238EEC4
FUN_0238EEC4: ; 0x0238EEC4
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_0238EE70
	ldrh r0, [r0, #0x10]
	ands r0, r0, #2
	movne r0, #0x14
	moveq r0, #0xa
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_0238EEC4

	arm_func_start FUN_0238EEEC
FUN_0238EEEC: ; 0x0238EEEC
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_0238EE70
	ldrh r0, [r0, #0x14]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_0238EEEC

	arm_func_start FUN_0238EF08
FUN_0238EF08: ; 0x0238EF08
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_0238EE70
	ldrh r0, [r0, #0xe]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_0238EF08

	arm_func_start FUN_0238EF24
FUN_0238EF24: ; 0x0238EF24
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_0238EE70
	add r0, r0, #4
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_0238EF24

	arm_func_start FUN_0238EF40
FUN_0238EF40: ; 0x0238EF40
	ldr r1, _0238EF5C ; =0x0380FFF4
	ldr r1, [r1]
	add r1, r1, #0x500
	ldrh r1, [r1, #0x2e]
	mov r0, r1, asr r0
	and r0, r0, #1
	bx lr
	.align 2, 0
_0238EF5C: .word 0x0380FFF4
	arm_func_end FUN_0238EF40

	arm_func_start FUN_0238EF60
FUN_0238EF60: ; 0x0238EF60
	ldr r1, _0238EF7C ; =0x0380FFF4
	ldr r1, [r1]
	add r1, r1, #0x500
	ldrh r1, [r1, #0x30]
	mov r0, r1, asr r0
	and r0, r0, #1
	bx lr
	.align 2, 0
_0238EF7C: .word 0x0380FFF4
	arm_func_end FUN_0238EF60

	arm_func_start FUN_0238EF80
FUN_0238EF80: ; 0x0238EF80
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_0238EE70
	ldrh r0, [r0]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_0238EF80

	arm_func_start FUN_0238EF9C
FUN_0238EF9C: ; 0x0238EF9C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r1, _0238F00C ; =0x0380FFF4
	ldr r5, [r1]
	bl FUN_0238ED04
	mov r0, r6
	bl FUN_0238EEA8
	movs r4, r0
	beq _0238F004
	mov r0, r6
	bl FUN_0238EE70
	mov r1, #0
	strh r1, [r0, #2]
	add r0, r5, #0x500
	ldrh r2, [r0, #0x3a]
	mov r1, #1
	mvn r1, r1, lsl r4
	and r1, r2, r1
	strh r1, [r0, #0x3a]
	ldrh r1, [r0, #0x38]
	sub r1, r1, #1
	strh r1, [r0, #0x38]
	ldrh r0, [r0, #0x38]
	cmp r0, #0
	bne _0238F004
	bl FUN_0238B1B4
_0238F004:
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_0238F00C: .word 0x0380FFF4
	arm_func_end FUN_0238EF9C

	arm_func_start FUN_0238F010
FUN_0238F010: ; 0x0238F010
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	ldr r0, _0238F0B8 ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, _0238F0BC ; =0x0000052C
	add r6, r1, r0
	mov r0, #0x1000000
	bl FUN_037F8774
	mov r4, r0
	mov r5, #1
	mov r2, #2
	b _0238F098
_0238F044:
	ldrh r0, [r6, #0xe]
	ands r1, r0, r2
	bne _0238F090
	orr r0, r0, r2
	strh r0, [r6, #0xe]
	ldrh r0, [r6, #0xc]
	add r0, r0, #1
	strh r0, [r6, #0xc]
	ldrh r0, [r6, #0xc]
	cmp r0, #1
	bne _0238F074
	bl FUN_0238B184
_0238F074:
	mov r0, r7
	bl FUN_0238EE70
	strh r5, [r0, #2]
	mov r0, r4
	bl FUN_037F87B0
	mov r0, r5
	b _0238F0AC
_0238F090:
	add r5, r5, #1
	mov r2, r2, lsl #1
_0238F098:
	cmp r5, #0x10
	blo _0238F044
	mov r0, r4
	bl FUN_037F87B0
	mov r0, #0
_0238F0AC:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_0238F0B8: .word 0x0380FFF4
_0238F0BC: .word 0x0000052C
	arm_func_end FUN_0238F010

	arm_func_start FUN_0238F0C0
FUN_0238F0C0: ; 0x0238F0C0
	mov r1, #0x1c
	ldr r2, _0238F0E0 ; =0x0380FFF4
	ldr r2, [r2]
	ldr r2, [r2, #0x31c]
	mla r1, r0, r1, r2
	ldrh r0, [r1, #0x1a]
	strh r0, [r1, #0x18]
	bx lr
	.align 2, 0
_0238F0E0: .word 0x0380FFF4
	arm_func_end FUN_0238F0C0

	arm_func_start FUN_0238F0E4
FUN_0238F0E4: ; 0x0238F0E4
	stmdb sp!, {r4, lr}
	mov r4, r1
	bl FUN_0238EE70
	strh r4, [r0, #0xe]
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_0238F0E4

	arm_func_start FUN_0238F0FC
FUN_0238F0FC: ; 0x0238F0FC
	stmdb sp!, {r4, lr}
	mov r4, r1
	bl FUN_0238EE70
	strh r4, [r0, #0x14]
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_0238F0FC

	arm_func_start FUN_0238F114
FUN_0238F114: ; 0x0238F114
	stmdb sp!, {r4, lr}
	mov r4, r1
	bl FUN_0238EE70
	strh r4, [r0, #0x10]
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_0238F114

	arm_func_start FUN_0238F12C
FUN_0238F12C: ; 0x0238F12C
	stmdb sp!, {r4, lr}
	mov r4, r1
	bl FUN_0238EE70
	strh r4, [r0, #0xc]
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_0238F12C

	arm_func_start FUN_0238F144
FUN_0238F144: ; 0x0238F144
	ldr r1, _0238F164 ; =0x0380FFF4
	ldr r1, [r1]
	add r1, r1, #0x500
	ldrh r3, [r1, #0x30]
	mov r2, #1
	orr r0, r3, r2, lsl r0
	strh r0, [r1, #0x30]
	bx lr
	.align 2, 0
_0238F164: .word 0x0380FFF4
	arm_func_end FUN_0238F144

	arm_func_start FUN_0238F168
FUN_0238F168: ; 0x0238F168
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl FUN_0238EF80
	cmp r0, #0x40
	bne _0238F19C
	ldr r0, _0238F1A4 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x500
	ldrh r2, [r0, #0x30]
	mov r1, #1
	mvn r1, r1, lsl r4
	and r1, r2, r1
	strh r1, [r0, #0x30]
_0238F19C:
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_0238F1A4: .word 0x0380FFF4
	arm_func_end FUN_0238F168

	arm_func_start FUN_0238F1A8
FUN_0238F1A8: ; 0x0238F1A8
	ldr r2, _0238F1FC ; =0x0380FFF4
	ldr r3, [r2]
	ldr r2, _0238F200 ; =0x0000052C
	add ip, r3, r2
	ldrh r3, [ip, #2]
	mov r2, #1
	mvn r2, r2, lsl r0
	and r2, r3, r2
	orr r0, r2, r1, lsl r0
	strh r0, [ip, #2]
	ldrh r1, [ip, #2]
	ldrh r0, [ip, #6]
	mvn r0, r0
	ands r0, r1, r0
	movne r1, #8
	ldrne r0, _0238F204 ; =0x048080AC
	strneh r1, [r0]
	moveq r1, #8
	ldreq r0, _0238F208 ; =0x048080AE
	streqh r1, [r0]
	bx lr
	.align 2, 0
_0238F1FC: .word 0x0380FFF4
_0238F200: .word 0x0000052C
_0238F204: .word 0x048080AC
_0238F208: .word 0x048080AE
	arm_func_end FUN_0238F1A8

	arm_func_start FUN_0238F20C
FUN_0238F20C: ; 0x0238F20C
	stmdb sp!, {r4, lr}
	mov r4, r1
	bl FUN_0238EE70
	strh r4, [r0, #0xa]
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_0238F20C

	arm_func_start FUN_0238F224
FUN_0238F224: ; 0x0238F224
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r0, #0x1000000
	bl FUN_037F8774
	mov r4, r0
	cmp r5, #0x40
	bhs _0238F298
	mov r0, r6
	bl FUN_0238F144
	ldr r3, _0238F2EC ; =0x0380FFF4
	ldr r0, [r3]
	add r0, r0, #0x500
	ldrh r2, [r0, #0x32]
	mov r1, #1
	orr r1, r2, r1, lsl r6
	strh r1, [r0, #0x32]
	ldr r0, [r3]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x50]
	cmp r0, #1
	bne _0238F2D0
	mov r0, r6
	bl FUN_0238EEA8
	cmp r0, #0
	beq _0238F2D0
	mov r0, r6
	bl FUN_0238EF9C
	b _0238F2D0
_0238F298:
	ldr r0, _0238F2EC ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x500
	ldrh r2, [r0, #0x32]
	mov r1, #1
	mvn r1, r1, lsl r6
	and r1, r2, r1
	strh r1, [r0, #0x32]
	mov r0, r6
	bl FUN_0238EF40
	cmp r0, #0
	beq _0238F2D0
	mov r0, r6
	bl FUN_0238F168
_0238F2D0:
	mov r0, r6
	bl FUN_0238EE70
	strh r5, [r0]
	mov r0, r4
	bl FUN_037F87B0
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_0238F2EC: .word 0x0380FFF4
	arm_func_end FUN_0238F224

	arm_func_start FUN_0238F2F0
FUN_0238F2F0: ; 0x0238F2F0
	stmdb sp!, {r4, r5, r6, lr}
	ldrh r4, [r0, #2]
	mov r0, r4
	bl FUN_0238EE70
	mov r6, r0
	mov r0, #0x1000000
	bl FUN_037F8774
	mov r5, r0
	ldr r0, _0238F358 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x50]
	cmp r0, #1
	bne _0238F33C
	ldrh r0, [r6, #0x16]
	cmp r0, #1
	bne _0238F33C
	mov r0, r4
	bl FUN_0238ED04
_0238F33C:
	ldrh r0, [r6, #0x16]
	sub r0, r0, #1
	strh r0, [r6, #0x16]
	mov r0, r5
	bl FUN_037F87B0
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_0238F358: .word 0x0380FFF4
	arm_func_end FUN_0238F2F0

	arm_func_start FUN_0238F35C
FUN_0238F35C: ; 0x0238F35C
	stmdb sp!, {r4, r5, r6, lr}
	ldrh r4, [r0, #2]
	mov r0, r4
	bl FUN_0238EE70
	mov r6, r0
	mov r0, #0x1000000
	bl FUN_037F8774
	mov r5, r0
	ldr r0, _0238F3E8 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x50]
	cmp r0, #1
	bne _0238F3A8
	ldrh r0, [r6, #0x16]
	cmp r0, #0
	bne _0238F3A8
	mov r0, r4
	bl FUN_0238EDB0
_0238F3A8:
	ldrh r0, [r6, #0x16]
	add r0, r0, #1
	strh r0, [r6, #0x16]
	mov r0, r5
	bl FUN_037F87B0
	ldr r0, _0238F3E8 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x500
	ldrh r1, [r0, #0x34]
	mov r0, #1
	mov r0, r0, lsl r4
	ands r0, r1, r0
	ldreqh r0, [r6, #0x1a]
	streqh r0, [r6, #0x18]
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_0238F3E8: .word 0x0380FFF4
	arm_func_end FUN_0238F35C

	arm_func_start FUN_0238F3EC
FUN_0238F3EC: ; 0x0238F3EC
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r6, r1
	ldr r0, _0238F44C ; =0x0380FFF4
	ldr r0, [r0]
	add r5, r0, #0x1ac
	mov r0, #0x1000000
	bl FUN_037F8774
	mov r4, r0
	ldrh r0, [r5, #8]
	cmp r0, #0
	bne _0238F428
	mov r0, #0
	bl FUN_0238EDB0
_0238F428:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_023895E4
	mov r0, r4
	bl FUN_037F87B0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_0238F44C: .word 0x0380FFF4
	arm_func_end FUN_0238F3EC

	arm_func_start FUN_0238F450
FUN_0238F450: ; 0x0238F450
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sb, r0
	ldr sl, _0238F594 ; =0x0380FFF4
	ldr r0, [sl]
	add r8, r0, #0x31c
	ldrh r1, [sb]
	ands r1, r1, #1
	movne r0, #0
	bne _0238F58C
	add r1, r0, #0x500
	ldrh r1, [r1, #0x2c]
	cmp r1, #1
	bls _0238F504
	ldr r1, [r8]
	add r7, r1, #0x1c
	mov r4, #0
	mov r5, r4
	mov r6, #1
	b _0238F4EC
_0238F49C:
	ldrh r1, [r7]
	cmp r1, #0
	beq _0238F4DC
	add r0, r7, #4
	mov r1, sb
	bl FUN_0238AB18
	cmp r0, #0
	movne r0, r6
	bne _0238F58C
	add r5, r5, #1
	ldr r0, [sl]
	add r1, r0, #0x500
	ldrh r1, [r1, #0x2c]
	cmp r5, r1
	blo _0238F4E4
	b _0238F4F8
_0238F4DC:
	cmp r4, #0
	moveq r4, r6
_0238F4E4:
	add r6, r6, #1
	add r7, r7, #0x1c
_0238F4EC:
	ldrh r1, [r8, #6]
	cmp r6, r1
	blo _0238F49C
_0238F4F8:
	cmp r4, #0
	movne r6, r4
	b _0238F508
_0238F504:
	mov r6, #1
_0238F508:
	add r0, r0, #0x300
	ldrh r0, [r0, #0x22]
	cmp r6, r0
	blo _0238F57C
	ldr r4, [r8]
	mov r7, #0x10000
	mov r3, #1
	mov r6, #0
	ldrh r5, [r8, #6]
	mov r0, #0x1c
	b _0238F568
_0238F534:
	mul r1, r3, r0
	add r2, r4, r1
	ldrh r1, [r4, r1]
	cmp r1, #0x30
	bhs _0238F564
	ldrh r1, [r2, #0x16]
	cmp r1, #0
	bne _0238F564
	ldrh r1, [r2, #0x18]
	cmp r7, r1
	movhi r7, r1
	movhi r6, r3
_0238F564:
	add r3, r3, #1
_0238F568:
	cmp r3, r5
	blo _0238F534
	cmp r6, #0
	moveq r0, #0xff
	beq _0238F58C
_0238F57C:
	mov r0, r6
	mov r1, sb
	bl FUN_0238E8CC
	mov r0, r6
_0238F58C:
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	.align 2, 0
_0238F594: .word 0x0380FFF4
	arm_func_end FUN_0238F450

	arm_func_start FUN_0238F598
FUN_0238F598: ; 0x0238F598
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldrh r0, [r8]
	ands r0, r0, #1
	movne r0, #0
	bne _0238F634
	ldr r4, _0238F63C ; =0x0380FFF4
	ldr r0, [r4]
	add r1, r0, #0x500
	ldrh r1, [r1, #0x2c]
	cmp r1, #1
	bls _0238F630
	ldr r1, [r0, #0x31c]
	add r7, r1, #0x1c
	mov r5, #0
	mov r6, #1
	b _0238F620
_0238F5DC:
	ldrh r1, [r7]
	cmp r1, #0
	beq _0238F618
	add r0, r7, #4
	mov r1, r8
	bl FUN_0238AB18
	cmp r0, #0
	movne r0, r6
	bne _0238F634
	add r5, r5, #1
	ldr r0, [r4]
	add r1, r0, #0x500
	ldrh r1, [r1, #0x2c]
	cmp r5, r1
	bhs _0238F630
_0238F618:
	add r6, r6, #1
	add r7, r7, #0x1c
_0238F620:
	add r1, r0, #0x300
	ldrh r1, [r1, #0x22]
	cmp r6, r1
	blo _0238F5DC
_0238F630:
	mov r0, #0xff
_0238F634:
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_0238F63C: .word 0x0380FFF4
	arm_func_end FUN_0238F598

	arm_func_start FUN_0238F640
FUN_0238F640: ; 0x0238F640
	mov r2, #0
	ldr r1, _0238F670 ; =0x04808180
	b _0238F660
_0238F64C:
	ldrh r0, [r1]
	ands r0, r0, #1
	moveq r0, #0
	bxeq lr
	add r2, r2, #1
_0238F660:
	cmp r2, #0x2800
	blo _0238F64C
	mov r0, #1
	bx lr
	.align 2, 0
_0238F670: .word 0x04808180
	arm_func_end FUN_0238F640

	arm_func_start FUN_0238F674
FUN_0238F674: ; 0x0238F674
	mov r2, #0
	ldr r1, _0238F6A4 ; =0x0480815E
	b _0238F694
_0238F680:
	ldrh r0, [r1]
	ands r0, r0, #1
	moveq r0, #0
	bxeq lr
	add r2, r2, #1
_0238F694:
	cmp r2, #0x2800
	blo _0238F680
	mov r0, #1
	bx lr
	.align 2, 0
_0238F6A4: .word 0x0480815E
	arm_func_end FUN_0238F674

	arm_func_start FUN_0238F6A8
FUN_0238F6A8: ; 0x0238F6A8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, #1
	ldr r1, _0238F720 ; =0x04808028
	ldr r2, _0238F724 ; =0x04808214
	ldr lr, _0238F728 ; =0x04000208
	mov ip, #0
	ldr r3, _0238F72C ; =0x0480819C
	b _0238F70C
_0238F6CC:
	ldrh r5, [lr]
	strh ip, [lr]
	ldrh r0, [r3]
	and r0, r0, #3
	cmp r0, #3
	beq _0238F704
	ldrh r0, [r2]
	cmp r0, #5
	beq _0238F704
	cmp r0, #7
	beq _0238F704
	cmp r0, #8
	strneh ip, [r1]
	movne r4, ip
_0238F704:
	ldrh r0, [lr]
	strh r5, [lr]
_0238F70C:
	cmp r4, #0
	bne _0238F6CC
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_0238F720: .word 0x04808028
_0238F724: .word 0x04808214
_0238F728: .word 0x04000208
_0238F72C: .word 0x0480819C
	arm_func_end FUN_0238F6A8

	arm_func_start FUN_0238F730
FUN_0238F730: ; 0x0238F730
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r1
	mov r1, #1
	str r1, [sp, #4]
	mov r3, #0
	ldr r1, _0238F7B0 ; =0x000082EA
	umull ip, r2, r0, r1
	mla r2, r0, r3, r2
	mla r2, r3, r1, r2
	mov r1, r2, lsr #6
	mov r0, ip, lsr #6
	orr r0, r0, r2, lsl #26
	mov r2, #0x3e8
	bl FUN_03801800
	mov r3, r0
	mov r2, r1
	add r0, sp, #4
	str r0, [sp]
	ldr r0, _0238F7B4 ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, _0238F7B8 ; =0x00000634
	add r0, r1, r0
	mov r1, r3
	mov r3, r4
	bl FUN_037FA478
_0238F798:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0238F798
	add sp, sp, #8
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_0238F7B0: .word 0x000082EA
_0238F7B4: .word 0x0380FFF4
_0238F7B8: .word 0x00000634
	arm_func_end FUN_0238F730

	arm_func_start FUN_0238F7BC
FUN_0238F7BC: ; 0x0238F7BC
	mov r2, #0xfa0
	ldr r1, _0238F7E4 ; =0x0480819C
	b _0238F7D8
_0238F7C8:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bxne lr
	sub r2, r2, #1
_0238F7D8:
	cmp r2, #0
	bne _0238F7C8
	bx lr
	.align 2, 0
_0238F7E4: .word 0x0480819C
	arm_func_end FUN_0238F7BC

	arm_func_start FUN_0238F7E8
FUN_0238F7E8: ; 0x0238F7E8
	mov r1, #0
	ldr r0, _0238F800 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x400
	strh r1, [r0, #0x28]
	bx lr
	.align 2, 0
_0238F800: .word 0x0380FFF4
	arm_func_end FUN_0238F7E8

	arm_func_start FUN_0238F804
FUN_0238F804: ; 0x0238F804
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	ldr r6, _0238F868 ; =0x0380FFF4
	ldr r0, [r6]
	ldr r7, [r0, #0x1f4]
	mov r5, #0
	mvn r4, #0
	b _0238F854
_0238F824:
	ldr r0, [r0, #0x304]
	mov r1, r7
	mov r2, r5
	bl FUN_037F97F0
	cmp r0, #0
	beq _0238F85C
	ldr r0, [r6]
	add r0, r0, #0x1f4
	mov r1, r7
	bl FUN_023893F4
	ldr r0, [r6]
	ldr r7, [r0, #0x1f4]
_0238F854:
	cmp r7, r4
	bne _0238F824
_0238F85C:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_0238F868: .word 0x0380FFF4
	arm_func_end FUN_0238F804

	arm_func_start FUN_0238F86C
FUN_0238F86C: ; 0x0238F86C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	ldr r2, _0238F8F8 ; =0x0380FFF4
	ldr r3, [r2]
	add r2, r3, #0x100
	ldrh r2, [r2, #0xfc]
	cmp r2, #0
	beq _0238F8B0
	add r1, r3, #0x1f4
	mov r2, r4
	bl FUN_023895E4
	mov r0, #2
	mov r1, #0x13
	bl FUN_02389030
	b _0238F8EC
_0238F8B0:
	ldr r0, [r3, #0x304]
	mov r2, #0
	bl FUN_037F97F0
	cmp r0, #0
	beq _0238F8D4
	mov r0, r5
	mov r1, r4
	bl FUN_023893F4
	b _0238F8EC
_0238F8D4:
	mov r0, r5
	ldr r1, _0238F8F8 ; =0x0380FFF4
	ldr r1, [r1]
	add r1, r1, #0x1f4
	mov r2, r4
	bl FUN_023895E4
_0238F8EC:
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_0238F8F8: .word 0x0380FFF4
	arm_func_end FUN_0238F86C

	arm_func_start FUN_0238F8FC
FUN_0238F8FC: ; 0x0238F8FC
	mov r0, #3
	bx lr
	arm_func_end FUN_0238F8FC

	arm_func_start FUN_0238F904
FUN_0238F904: ; 0x0238F904
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	ldr r1, _0238FBF8 ; =0x0380FFF4
	ldr r3, [r1]
	ldr r0, _0238FBFC ; =0x00000424
	add r6, r3, r0
	mov r2, #0
	mov r4, r2
	ldrh r0, [r6, #4]
	cmp r0, #0
	bne _0238FBEC
	ldr r0, [r3, #0x200]
	str r0, [r6]
	ldr r0, [r6]
	mvn r3, #0
	cmp r0, r3
	beq _0238FBEC
	ldrh r3, [r0, #0xe]
	add r3, r0, r3, lsl #1
	add r5, r3, #0x10
	ldr r1, [r1]
	add lr, r1, #0x300
	ldrh r1, [lr, #0x3e]
	cmp r1, #0
	movne r0, #1
	strneh r0, [r5, #2]
	movne r0, #6
	strneh r0, [r5, #4]
	bne _0238FBA4
	ldrh r3, [r0, #0xc]
	ldrh r1, [r5]
	cmp r3, r1
	movne r0, #0xd
	strneh r0, [r5, #4]
	bne _0238FBA4
	and r1, r3, #0xff00
	cmp r1, #0x100
	bgt _0238F9B0
	cmp r1, #0x100
	bge _0238FA08
	cmp r1, #0
	beq _0238F9D0
	b _0238FB04
_0238F9B0:
	cmp r1, #0x200
	bgt _0238F9C4
	cmp r1, #0x200
	beq _0238FA30
	b _0238FB04
_0238F9C4:
	cmp r1, #0x300
	beq _0238FAE8
	b _0238FB04
_0238F9D0:
	mov r4, #1
	ldr ip, _0238FC00 ; =_02399688
	and r1, r3, #0xff
	mov r1, r1, lsl #0x10
	mov r3, r1, lsr #0x10
	mov r7, #0xb
	ldrh r1, [r6, #4]
	ands r1, r1, #1
	movne r2, #2
	bne _0238FB0C
	ldrh r1, [lr, #0x4c]
	cmp r1, #0x20
	movlo r2, r4
	b _0238FB0C
_0238FA08:
	mov r4, #2
	ldr ip, _0238FC04 ; =_02399600
	and r1, r3, #0xff
	mov r1, r1, lsl #0x10
	mov r3, r1, lsr #0x10
	mov r7, #5
	ldrh r1, [lr, #0x4c]
	cmp r1, #0x40
	movne r2, #1
	b _0238FB0C
_0238FA30:
	and r1, r3, #0xff
	mov r1, r1, lsl #0x10
	mov r3, r1, lsr #0x10
	cmp r3, #0x40
	bhs _0238FA60
	ldrh r1, [lr, #0x4c]
	cmp r1, #0x10
	movlo r2, #1
	mov r4, #4
	ldr ip, _0238FC08 ; =_023997F0
	mov r7, #0x17
	b _0238FB0C
_0238FA60:
	cmp r3, #0x80
	bhs _0238FA90
	ldrh r1, [lr, #0x4c]
	cmp r1, #0x40
	movne r2, #1
	mov r4, #8
	ldr ip, _0238FC0C ; =_02399658
	sub r1, r3, #0x40
	mov r1, r1, lsl #0x10
	mov r3, r1, lsr #0x10
	mov r7, #6
	b _0238FB0C
_0238FA90:
	cmp r3, #0xc0
	bhs _0238FAC0
	ldrh r1, [lr, #0x4c]
	cmp r1, #0x10
	movlo r2, #1
	mov r4, #0x10
	ldr ip, _0238FC10 ; =_02399738
	sub r1, r3, #0x80
	mov r1, r1, lsl #0x10
	mov r3, r1, lsr #0x10
	mov r7, #0x17
	b _0238FB0C
_0238FAC0:
	ldrh r1, [lr, #0x4c]
	cmp r1, #0x10
	movlo r2, #1
	mov r4, #0x20
	ldr ip, _0238FC14 ; =_02399628
	sub r1, r3, #0xc0
	mov r1, r1, lsl #0x10
	mov r3, r1, lsr #0x10
	mov r7, #6
	b _0238FB0C
_0238FAE8:
	mov r4, #0x40
	ldr ip, _0238FC18 ; =_023996E0
	and r1, r3, #0xff
	mov r1, r1, lsl #0x10
	mov r3, r1, lsr #0x10
	mov r7, #0xb
	b _0238FB0C
_0238FB04:
	mov r3, #1
	mov r7, #0
_0238FB0C:
	cmp r3, r7
	movhi r2, #3
	bhi _0238FB44
	ldrh lr, [r0, #0xe]
	mov r7, r3, lsl #3
	ldrh r1, [ip, r7]
	cmp lr, r1
	blo _0238FB40
	ldrh lr, [r5, #2]
	add r1, ip, r7
	ldrh r1, [r1, #2]
	cmp lr, r1
	bhs _0238FB44
_0238FB40:
	mov r2, #4
_0238FB44:
	cmp r2, #0
	movne r0, #1
	strneh r0, [r5, #2]
	strneh r2, [r5, #4]
	bne _0238FBA4
	ldrh r1, [r6, #4]
	orr r1, r1, r4
	strh r1, [r6, #4]
	mov r1, r5
	add r2, ip, r3, lsl #3
	ldr r2, [r2, #4]
	mov lr, pc
	bx r2
	arm_func_end FUN_0238F904

	arm_func_start FUN_0238FB78
FUN_0238FB78: ; 0x0238FB78
	strh r0, [r5, #4]
	ldrh r0, [r5, #4]
	cmp r0, #0x80
	beq _0238FBEC
	cmp r0, #0x81
	bne _0238FBA4
	ldrh r1, [r6, #4]
	mvn r0, r4
	and r0, r1, r0
	strh r0, [r6, #4]
	b _0238FBC8
_0238FBA4:
	ldrh r1, [r6, #4]
	mvn r0, r4
	and r0, r1, r0
	strh r0, [r6, #4]
	ldr r0, _0238FBF8 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x200
	ldr r1, [r6]
	bl FUN_0238F86C
_0238FBC8:
	ldr r0, _0238FBF8 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x200
	ldrh r0, [r0, #8]
	cmp r0, #0
	beq _0238FBEC
	mov r0, #2
	mov r1, #0xb
	bl FUN_02389030
_0238FBEC:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_0238FBF8: .word 0x0380FFF4
_0238FBFC: .word 0x00000424
_0238FC00: .word _02399688
_0238FC04: .word _02399600
_0238FC08: .word _023997F0
_0238FC0C: .word _02399658
_0238FC10: .word _02399738
_0238FC14: .word _02399628
_0238FC18: .word _023996E0
	arm_func_end FUN_0238FB78

	arm_func_start FUN_0238FC1C
FUN_0238FC1C: ; 0x0238FC1C
	mov r0, #0
	ldr r1, _0238FC3C ; =0x0380FFF4
	ldr r2, [r1]
	ldr r1, _0238FC40 ; =0x00000404
	add r1, r2, r1
	mov r2, #0x20
	ldr ip, _0238FC44 ; =FUN_037FAF38
	bx ip
	.align 2, 0
_0238FC3C: .word 0x0380FFF4
_0238FC40: .word 0x00000404
_0238FC44: .word FUN_037FAF38
	arm_func_end FUN_0238FC1C

	arm_func_start FUN_0238FC48
FUN_0238FC48: ; 0x0238FC48
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r6, r0
	ldr r0, _0238FD70 ; =0x0380FFF4
	ldr r1, [r0]
	add r5, r1, #0x344
	add r0, r1, #0x188
	add r1, r1, #0x300
	ldrh r1, [r1, #0xe4]
	add r1, r1, #0x3e
	bl FUN_023896DC
	movs r4, r0
	bne _0238FC8C
	mov r0, #1
	bl FUN_02389904
	mov r0, #0
	b _0238FD64
_0238FC8C:
	mov r0, #0x8d
	strh r0, [r4, #0xc]
	ldrh r0, [r5, #0xa0]
	add r0, r0, #1
	mov r1, #2
	bl FUN_03801848
	add r0, r0, #0x16
	strh r0, [r4, #0xe]
	add r0, r4, #0x1f
	ldrh r1, [r6, #0x12]
	and r1, r1, #0xff
	bl FUN_02389C88
	add r0, r4, #0x1e
	ldrh r1, [r6, #0xe]
	and r1, r1, #0xff
	bl FUN_02389C88
	add r0, r4, #0x2e
	add r1, r6, #0x1e
	bl FUN_0238AEE4
	ldrh r0, [r5, #0xa0]
	strh r0, [r4, #0x16]
	ldrh r2, [r4, #0x16]
	cmp r2, #0
	beq _0238FD4C
	ldrh r0, [r5, #0xa2]
	ands r0, r0, #1
	beq _0238FD3C
	ldr r0, [r5, #0x9c]
	add r6, r0, #1
	add r5, r4, #0x3c
	mov r7, #0
	b _0238FD2C
_0238FD0C:
	mov r0, r6
	bl FUN_02389C68
	mov r1, r0
	mov r0, r5
	bl FUN_02389C88
	add r6, r6, #1
	add r5, r5, #1
	add r7, r7, #1
_0238FD2C:
	ldrh r0, [r4, #0x16]
	cmp r7, r0
	blo _0238FD0C
	b _0238FD4C
_0238FD3C:
	ldr r0, [r5, #0x9c]
	add r1, r4, #0x3c
	add r2, r2, #1
	bl FUN_037FAF50
_0238FD4C:
	ldr r0, _0238FD70 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x188
	mov r1, r4
	bl FUN_0238F86C
	mov r0, #1
_0238FD64:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_0238FD70: .word 0x0380FFF4
	arm_func_end FUN_0238FC48

	arm_func_start FUN_0238FD74
FUN_0238FD74: ; 0x0238FD74
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _0238FDD8 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x188
	mov r1, #0x10
	bl FUN_023896DC
	movs r1, r0
	bne _0238FDA8
	mov r0, #1
	bl FUN_02389904
	mov r0, #0
	b _0238FDCC
_0238FDA8:
	mov r0, #0x8c
	strh r0, [r1, #0xc]
	mov r0, #0
	strh r0, [r1, #0xe]
	ldr r0, _0238FDD8 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x188
	bl FUN_0238F86C
	mov r0, #1
_0238FDCC:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_0238FDD8: .word 0x0380FFF4
	arm_func_end FUN_0238FD74

	arm_func_start FUN_0238FDDC
FUN_0238FDDC: ; 0x0238FDDC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r0, _0238FE54 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x188
	mov r1, #0x16
	bl FUN_023896DC
	movs r4, r0
	bne _0238FE14
	mov r0, #1
	bl FUN_02389904
	mov r0, #0
	b _0238FE48
_0238FE14:
	mov r0, #0x8b
	strh r0, [r4, #0xc]
	mov r0, #3
	strh r0, [r4, #0xe]
	add r0, r4, #0x10
	mov r1, r5
	bl FUN_0238AEE4
	ldr r0, _0238FE54 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x188
	mov r1, r4
	bl FUN_0238F86C
	mov r0, #1
_0238FE48:
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_0238FE54: .word 0x0380FFF4
	arm_func_end FUN_0238FDDC

	arm_func_start FUN_0238FE58
FUN_0238FE58: ; 0x0238FE58
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	ldr r0, _0238FED0 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x188
	mov r1, #0x18
	bl FUN_023896DC
	movs r4, r0
	bne _0238FE90
	mov r0, #1
	bl FUN_02389904
	mov r0, #0
	b _0238FEC8
_0238FE90:
	mov r0, #0x88
	strh r0, [r4, #0xc]
	mov r0, #4
	strh r0, [r4, #0xe]
	add r0, r4, #0x10
	mov r1, r6
	bl FUN_0238AEE4
	strh r5, [r4, #0x16]
	ldr r0, _0238FED0 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x188
	mov r1, r4
	bl FUN_0238F86C
	mov r0, #1
_0238FEC8:
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_0238FED0: .word 0x0380FFF4
	arm_func_end FUN_0238FE58

	arm_func_start FUN_0238FED4
FUN_0238FED4: ; 0x0238FED4
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r6, r1
	mov r5, r2
	ldr r0, _0238FFC0 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x188
	mov r1, #0x3a
	bl FUN_023896DC
	movs r4, r0
	bne _0238FF14
	mov r0, #1
	bl FUN_02389904
	mov r0, #0
	b _0238FFB4
_0238FF14:
	mov r0, #0x87
	strh r0, [r4, #0xc]
	mov r0, #0x15
	strh r0, [r4, #0xe]
	add r0, r4, #0x10
	mov r1, r7
	bl FUN_0238AEE4
	strh r6, [r4, #0x16]
	add r0, r5, #1
	bl FUN_02389C68
	strh r0, [r4, #0x18]
	mov r7, #0
	add r6, r5, #2
	add r5, r4, #0x1a
	b _0238FF70
_0238FF50:
	cmp r7, #0x20
	bhs _0238FF94
	add r0, r6, r7
	bl FUN_02389C68
	mov r1, r0
	add r0, r5, r7
	bl FUN_02389C88
	add r7, r7, #1
_0238FF70:
	ldrh r0, [r4, #0x18]
	cmp r7, r0
	blo _0238FF50
	b _0238FF94
_0238FF80:
	add r0, r4, #0x1a
	add r0, r0, r7
	mov r1, #0
	bl FUN_02389C88
	add r7, r7, #1
_0238FF94:
	cmp r7, #0x20
	blo _0238FF80
	ldr r0, _0238FFC0 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x188
	mov r1, r4
	bl FUN_0238F86C
	mov r0, #1
_0238FFB4:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_0238FFC0: .word 0x0380FFF4
	arm_func_end FUN_0238FED4

	arm_func_start FUN_0238FFC4
FUN_0238FFC4: ; 0x0238FFC4
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r6, r1
	mov r5, r2
	ldr r0, _023900B8 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x188
	mov r1, #0x3a
	bl FUN_023896DC
	movs r4, r0
	bne _02390004
	mov r0, #1
	bl FUN_02389904
	mov r0, #0
	b _023900AC
_02390004:
	mov r0, #0x86
	strh r0, [r4, #0xc]
	mov r0, #0x15
	strh r0, [r4, #0xe]
	add r0, r4, #0x10
	mov r1, r7
	bl FUN_0238AEE4
	ldr r0, _023900BC ; =0x00000FFF
	and r0, r6, r0
	strh r0, [r4, #0x16]
	add r0, r5, #1
	bl FUN_02389C68
	strh r0, [r4, #0x18]
	mov r7, #0
	add r6, r5, #2
	add r5, r4, #0x1a
	b _02390068
_02390048:
	cmp r7, #0x20
	bhs _0239008C
	add r0, r6, r7
	bl FUN_02389C68
	mov r1, r0
	add r0, r5, r7
	bl FUN_02389C88
	add r7, r7, #1
_02390068:
	ldrh r0, [r4, #0x18]
	cmp r7, r0
	blo _02390048
	b _0239008C
_02390078:
	add r0, r4, #0x1a
	add r0, r0, r7
	mov r1, #0
	bl FUN_02389C88
	add r7, r7, #1
_0239008C:
	cmp r7, #0x20
	blo _02390078
	ldr r0, _023900B8 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x188
	mov r1, r4
	bl FUN_0238F86C
	mov r0, #1
_023900AC:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_023900B8: .word 0x0380FFF4
_023900BC: .word 0x00000FFF
	arm_func_end FUN_0238FFC4

	arm_func_start FUN_023900C0
FUN_023900C0: ; 0x023900C0
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	ldr r0, _02390138 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x188
	mov r1, #0x18
	bl FUN_023896DC
	movs r4, r0
	bne _023900F8
	mov r0, #1
	bl FUN_02389904
	mov r0, #0
	b _02390130
_023900F8:
	mov r0, #0x85
	strh r0, [r4, #0xc]
	mov r0, #4
	strh r0, [r4, #0xe]
	add r0, r4, #0x10
	mov r1, r6
	bl FUN_0238AEE4
	strh r5, [r4, #0x16]
	ldr r0, _02390138 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x188
	mov r1, r4
	bl FUN_0238F86C
	mov r0, #1
_02390130:
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_02390138: .word 0x0380FFF4
	arm_func_end FUN_023900C0

	arm_func_start FUN_0239013C
FUN_0239013C: ; 0x0239013C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	ldr r0, _023901B4 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x188
	mov r1, #0x18
	bl FUN_023896DC
	movs r4, r0
	bne _02390174
	mov r0, #1
	bl FUN_02389904
	mov r0, #0
	b _023901AC
_02390174:
	mov r0, #0x84
	strh r0, [r4, #0xc]
	mov r0, #4
	strh r0, [r4, #0xe]
	add r0, r4, #0x10
	mov r1, r6
	bl FUN_0238AEE4
	strh r5, [r4, #0x16]
	ldr r0, _023901B4 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x188
	mov r1, r4
	bl FUN_0238F86C
	mov r0, #1
_023901AC:
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_023901B4: .word 0x0380FFF4
	arm_func_end FUN_0239013C

	arm_func_start FUN_023901B8
FUN_023901B8: ; 0x023901B8
	stmdb sp!, {r4, lr}
	ldr r0, _02390208 ; =0x0380FFF4
	ldr r2, [r0]
	add r4, r2, #0x17c
	ldr r0, _0239020C ; =0x00000424
	add r1, r2, r0
	ldrh r0, [r1, #4]
	bic r0, r0, #1
	strh r0, [r1, #4]
	add r0, r4, #0x84
	ldr r1, [r2, #0x424]
	bl FUN_0238F86C
	ldrh r0, [r4, #0x8c]
	cmp r0, #0
	beq _02390200
	mov r0, #2
	mov r1, #0xb
	bl FUN_02389030
_02390200:
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02390208: .word 0x0380FFF4
_0239020C: .word 0x00000424
	arm_func_end FUN_023901B8

	arm_func_start FUN_02390210
FUN_02390210: ; 0x02390210
	ldr r0, _02390228 ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, _0239022C ; =0x000003C6
	add r0, r1, r0
	ldr ip, _02390230 ; =FUN_0238FDDC
	bx ip
	.align 2, 0
_02390228: .word 0x0380FFF4
_0239022C: .word 0x000003C6
_02390230: .word FUN_0238FDDC
	arm_func_end FUN_02390210

	arm_func_start FUN_02390234
FUN_02390234: ; 0x02390234
	mov r1, #0x83
	ldr r0, _02390258 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x400
	strh r1, [r0, #4]
	mov r0, #2
	mov r1, #5
	ldr ip, _0239025C ; =FUN_02389030
	bx ip
	.align 2, 0
_02390258: .word 0x0380FFF4
_0239025C: .word FUN_02389030
	arm_func_end FUN_02390234

	arm_func_start FUN_02390260
FUN_02390260: ; 0x02390260
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r0, _023904D4 ; =0x0380FFF4
	ldr r1, [r0]
	add r5, r1, #0x344
	ldr r0, _023904D8 ; =0x00000404
	add r4, r1, r0
	add r0, r1, #0x400
	ldrh r0, [r0, #4]
	sub r0, r0, #0x80
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _023904B0
_02390294: ; jump table
	b _023902A8 ; case 0
	b _023902E8 ; case 1
	b _023903A8 ; case 2
	b _023903D0 ; case 3
	b _02390440 ; case 4
_023902A8:
	mov r0, #0
	strh r0, [r4, #0x14]
	mov r0, #0x13
	bl FUN_0238A458
	strh r0, [r4, #0xe]
	mov r0, #0x35
	bl FUN_0238A458
	strh r0, [r4, #0x10]
	ldr r1, [r4, #0x18]
	ldrh r0, [r1, #0x12]
	ldrh r1, [r1, #0x14]
	bl FUN_0238BD38
	mov r0, #4
	strh r0, [r5, #0xc]
	mov r0, #0
	strh r0, [r4, #0x16]
_023902E8:
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #8]
	ldr r0, [r4, #0x18]
	add r1, r0, #0x18
	ldrh r0, [r4, #0x14]
	add r0, r1, r0
	bl FUN_02389C68
	movs r5, r0
	beq _0239031C
	ldrh r0, [r4, #0x14]
	cmp r0, #0x10
	blo _02390328
_0239031C:
	mov r0, #0x84
	strh r0, [r4]
	b _023904B0
_02390328:
	mov r0, #0
	bl FUN_02399114
	cmp r0, #0
	movne r0, #0xe
	strneh r0, [r4, #0x16]
	movne r0, #0x84
	strneh r0, [r4]
	bne _023904B0
	ldrh r0, [r4]
	cmp r0, #0x80
	bne _02390380
	mov r0, r5, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, #0
	bl FUN_0238B508
	bl FUN_0238A544
	ldr r0, _023904DC ; =0x04808040
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	mov r0, #0x8000
	bl FUN_0238B378
	b _02390390
_02390380:
	mov r0, r5, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, #0
	bl FUN_0238B508
_02390390:
	mov r0, #0x82
	strh r0, [r4]
	ldr r0, [r4, #0x18]
	ldrh r0, [r0, #0x16]
	ldr r1, _023904E0 ; =FUN_02390234
	bl FUN_02389E94
_023903A8:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	ldr r0, _023904E4 ; =0x0480819C
	ldrh r0, [r0]
	ands r0, r0, #1
	ldrne r0, [r4, #8]
	addne r0, r0, #0x64
	strne r0, [r4, #8]
	b _023904B0
_023903D0:
	ldr r0, [r4, #0x18]
	add r1, r0, #0x18
	ldrh r0, [r4, #0x14]
	add r0, r1, r0
	bl FUN_02389C68
	mov r5, r0
	mov r2, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _02390414
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02390414
	bl FUN_03801A54
	add r2, r0, #1
	cmp r2, #0x64
	movhi r2, #0x64
_02390414:
	orr r2, r5, r2, lsl #8
	ldr r1, [r4, #0x1c]
	ldrh r0, [r4, #0x14]
	add r0, r1, r0, lsl #1
	strh r2, [r0, #8]
	ldrh r0, [r4, #0x14]
	add r0, r0, #1
	strh r0, [r4, #0x14]
	mov r0, #0x81
	strh r0, [r4]
	b _023904B0
_02390440:
	bl FUN_0238A48C
	ldr r0, _023904D4 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x2e]
	strh r0, [r5, #0xc]
	mov r0, #0x13
	ldrh r1, [r4, #0xe]
	bl FUN_0238A418
	mov r0, #0x35
	ldrh r1, [r4, #0x10]
	bl FUN_0238A418
	ldrh r0, [r4, #0xc]
	bl FUN_0238B378
	ldrh r1, [r4, #0x16]
	ldr r0, [r4, #0x1c]
	strh r1, [r0, #4]
	mov r1, #0
	strh r1, [r4]
	ldrh r2, [r4, #0x14]
	b _023904A4
_02390494:
	ldr r0, [r4, #0x1c]
	add r0, r0, r2, lsl #1
	strh r1, [r0, #8]
	add r2, r2, #1
_023904A4:
	cmp r2, #0x10
	blo _02390494
	bl FUN_023901B8
_023904B0:
	ldrh r0, [r4]
	cmp r0, #0
	beq _023904C8
	mov r0, #2
	mov r1, #5
	bl FUN_02389030
_023904C8:
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_023904D4: .word 0x0380FFF4
_023904D8: .word 0x00000404
_023904DC: .word 0x04808040
_023904E0: .word FUN_02390234
_023904E4: .word 0x0480819C
	arm_func_end FUN_02390260

	arm_func_start FUN_023904E8
FUN_023904E8: ; 0x023904E8
	ldr r0, _02390520 ; =0x0380FFF4
	ldr r2, [r0]
	ldr r0, _02390524 ; =0x00000404
	add r0, r2, r0
	mov r1, #7
	ldr r0, [r0, #0x1c]
	strh r1, [r0, #4]
	mov r1, #0x63
	add r0, r2, #0x400
	strh r1, [r0, #4]
	mov r0, #2
	mov r1, #4
	ldr ip, _02390528 ; =FUN_02389030
	bx ip
	.align 2, 0
_02390520: .word 0x0380FFF4
_02390524: .word 0x00000404
_02390528: .word FUN_02389030
	arm_func_end FUN_023904E8

	arm_func_start FUN_0239052C
FUN_0239052C: ; 0x0239052C
	stmdb sp!, {r4, lr}
	ldr r0, _023905DC ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, _023905E0 ; =0x00000404
	add r4, r1, r0
	add r0, r1, #0x400
	ldrh r0, [r0, #4]
	cmp r0, #0x60
	beq _0239055C
	cmp r0, #0x63
	beq _023905B4
	b _023905D4
_0239055C:
	ldr r0, [r4, #0x18]
	add r0, r0, #0x10
	bl FUN_023943E0
	cmp r0, #0
	bne _02390594
	mov r1, #8
	ldr r0, [r4, #0x1c]
	strh r1, [r0, #4]
	mov r0, #0x63
	strh r0, [r4]
	mov r0, #2
	mov r1, #4
	bl FUN_02389030
	b _023905D4
_02390594:
	mov r1, #0x61
	strh r1, [r4]
	bl FUN_02394BF4
	ldr r0, [r4, #0x18]
	ldrh r0, [r0, #0x18]
	ldr r1, _023905E4 ; =FUN_023904E8
	bl FUN_02389E94
	b _023905D4
_023905B4:
	mov r0, #1
	bl FUN_02394FE8
	mov r0, #1
	mov r1, #0
	bl FUN_02394C14
	mov r0, #0
	strh r0, [r4]
	bl FUN_023901B8
_023905D4:
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_023905DC: .word 0x0380FFF4
_023905E0: .word 0x00000404
_023905E4: .word FUN_023904E8
	arm_func_end FUN_0239052C

	arm_func_start FUN_023905E8
FUN_023905E8: ; 0x023905E8
	ldr r0, _02390620 ; =0x0380FFF4
	ldr r2, [r0]
	ldr r0, _02390624 ; =0x00000404
	add r0, r2, r0
	mov r1, #7
	ldr r0, [r0, #0x1c]
	strh r1, [r0, #4]
	mov r1, #0x53
	add r0, r2, #0x400
	strh r1, [r0, #4]
	mov r0, #2
	mov r1, #3
	ldr ip, _02390628 ; =FUN_02389030
	bx ip
	.align 2, 0
_02390620: .word 0x0380FFF4
_02390624: .word 0x00000404
_02390628: .word FUN_02389030
	arm_func_end FUN_023905E8

	arm_func_start FUN_0239062C
FUN_0239062C: ; 0x0239062C
	stmdb sp!, {r4, lr}
	ldr r0, _023906E4 ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, _023906E8 ; =0x00000404
	add r4, r1, r0
	add r0, r1, #0x400
	ldrh r0, [r0, #4]
	cmp r0, #0x50
	beq _0239065C
	cmp r0, #0x53
	beq _023906B4
	b _023906DC
_0239065C:
	ldr r0, [r4, #0x18]
	add r0, r0, #0x10
	bl FUN_02394498
	cmp r0, #0
	bne _02390694
	mov r1, #8
	ldr r0, [r4, #0x1c]
	strh r1, [r0, #4]
	mov r0, #0x53
	strh r0, [r4]
	mov r0, #2
	mov r1, #3
	bl FUN_02389030
	b _023906DC
_02390694:
	mov r1, #0x51
	strh r1, [r4]
	bl FUN_02394BF4
	ldr r0, [r4, #0x18]
	ldrh r0, [r0, #0x18]
	ldr r1, _023906EC ; =FUN_023905E8
	bl FUN_02389E94
	b _023906DC
_023906B4:
	mov r0, #1
	bl FUN_02394F50
	mov r0, #1
	bl FUN_02394FE8
	mov r0, #1
	mov r1, #0
	bl FUN_02394C14
	mov r0, #0
	strh r0, [r4]
	bl FUN_023901B8
_023906DC:
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_023906E4: .word 0x0380FFF4
_023906E8: .word 0x00000404
_023906EC: .word FUN_023905E8
	arm_func_end FUN_0239062C

	arm_func_start FUN_023906F0
FUN_023906F0: ; 0x023906F0
	ldr r0, _02390728 ; =0x0380FFF4
	ldr r2, [r0]
	ldr r0, _0239072C ; =0x00000404
	add r0, r2, r0
	mov r1, #7
	ldr r0, [r0, #0x1c]
	strh r1, [r0, #4]
	mov r1, #0x35
	add r0, r2, #0x400
	strh r1, [r0, #4]
	mov r0, #2
	mov r1, r0
	ldr ip, _02390730 ; =FUN_02389030
	bx ip
	.align 2, 0
_02390728: .word 0x0380FFF4
_0239072C: .word 0x00000404
_02390730: .word FUN_02389030
	arm_func_end FUN_023906F0

	arm_func_start FUN_02390734
FUN_02390734: ; 0x02390734
	stmdb sp!, {r4, lr}
	ldr r0, _02390810 ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, _02390814 ; =0x00000404
	add r4, r1, r0
	add r0, r1, #0x400
	ldrh r0, [r0, #4]
	cmp r0, #0x30
	beq _02390764
	cmp r0, #0x35
	beq _023907E0
	b _02390808
_02390764:
	ldr r0, [r4, #0x18]
	add r0, r0, #0x10
	mov r1, #0
	mov r2, r1
	bl FUN_02393EC0
	cmp r0, #0
	bne _023907A4
	mov r1, #8
	ldr r0, [r4, #0x1c]
	strh r1, [r0, #4]
	mov r0, #0x35
	strh r0, [r4]
	mov r0, #2
	mov r1, r0
	bl FUN_02389030
	b _02390808
_023907A4:
	ldr r1, [r4, #0x18]
	ldrh r1, [r1, #0x16]
	strh r1, [r0, #0x2c]
	mov r1, #1
	strh r1, [r0, #0x2e]
	mov r1, #0
	strh r1, [r0, #0x30]
	mov r1, #0x31
	strh r1, [r4]
	bl FUN_02394BF4
	ldr r0, [r4, #0x18]
	ldrh r0, [r0, #0x18]
	ldr r1, _02390818 ; =FUN_023906F0
	bl FUN_02389E94
	b _02390808
_023907E0:
	mov r0, #1
	bl FUN_02394F50
	mov r0, #1
	bl FUN_02394FE8
	mov r0, #1
	mov r1, #0
	bl FUN_02394C14
	mov r0, #0
	strh r0, [r4]
	bl FUN_023901B8
_02390808:
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02390810: .word 0x0380FFF4
_02390814: .word 0x00000404
_02390818: .word FUN_023906F0
	arm_func_end FUN_02390734

	arm_func_start FUN_0239081C
FUN_0239081C: ; 0x0239081C
	ldr r0, _02390850 ; =0x0380FFF4
	ldr r2, [r0]
	ldr r0, _02390854 ; =0x00000404
	add r1, r2, r0
	mov r0, #7
	strh r0, [r1, #4]
	mov r1, #0x25
	add r0, r2, #0x400
	strh r1, [r0, #4]
	mov r0, #2
	mov r1, #1
	ldr ip, _02390858 ; =FUN_02389030
	bx ip
	.align 2, 0
_02390850: .word 0x0380FFF4
_02390854: .word 0x00000404
_02390858: .word FUN_02389030
	arm_func_end FUN_0239081C

	arm_func_start FUN_0239085C
FUN_0239085C: ; 0x0239085C
	stmdb sp!, {r4, lr}
	ldr r0, _023908F4 ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, _023908F8 ; =0x00000404
	add r4, r1, r0
	add r0, r1, #0x400
	ldrh r0, [r0, #4]
	cmp r0, #0x20
	beq _0239088C
	cmp r0, #0x25
	beq _023908B8
	b _023908EC
_0239088C:
	bl FUN_0238A544
	mov r0, #0
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	mov r0, #0x21
	strh r0, [r4]
	ldr r0, [r4, #0x18]
	ldrh r0, [r0, #0x10]
	ldr r1, _023908FC ; =FUN_0239081C
	bl FUN_02389E94
	b _023908EC
_023908B8:
	ldrh r1, [r4, #4]
	ldr r0, [r4, #0x1c]
	strh r1, [r0, #4]
	ldrh r1, [r4, #6]
	ldr r0, [r4, #0x1c]
	strh r1, [r0, #6]
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _023908E0
	bl FUN_0238A48C
_023908E0:
	mov r0, #0
	strh r0, [r4]
	bl FUN_023901B8
_023908EC:
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_023908F4: .word 0x0380FFF4
_023908F8: .word 0x00000404
_023908FC: .word FUN_0239081C
	arm_func_end FUN_0239085C

	arm_func_start FUN_02390900
FUN_02390900: ; 0x02390900
	ldr r0, _0239095C ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, _02390960 ; =0x00000404
	add r2, r1, r0
	ldrh r1, [r2, #0xa]
	ldrh r0, [r2, #0xc]
	add r0, r1, r0
	strh r0, [r2, #0xa]
	ldrh r1, [r2, #0xa]
	ldr r0, [r2, #0x18]
	ldrh r0, [r0, #0x4a]
	cmp r1, r0
	blo _0239094C
	ldrh r0, [r2, #6]
	cmp r0, #0x10
	movlo r0, #0x11
	strloh r0, [r2]
	movhs r0, #0x15
	strhsh r0, [r2]
_0239094C:
	mov r0, #2
	mov r1, #0
	ldr ip, _02390964 ; =FUN_02389030
	bx ip
	.align 2, 0
_0239095C: .word 0x0380FFF4
_02390960: .word 0x00000404
_02390964: .word FUN_02389030
	arm_func_end FUN_02390900

	arm_func_start FUN_02390968
FUN_02390968: ; 0x02390968
	stmdb sp!, {r4, r5, r6, lr}
	ldr r0, _02390B58 ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, _02390B5C ; =0x00000404
	add r6, r1, r0
	add r5, r1, #0x344
	mov r4, #0
	add r0, r1, #0x400
	ldrh r0, [r0, #4]
	sub r0, r0, #0x10
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _02390B3C
_0239099C: ; jump table
	b _023909B4 ; case 0
	b _02390A2C ; case 1
	b _02390AC4 ; case 2
	b _02390AC4 ; case 3
	b _02390B3C ; case 4
	b _02390B1C ; case 5
_023909B4:
	mov r0, #0x20
	bl FUN_0238AF00
	mov r0, #2
	strh r0, [r5, #0xc]
	mov r1, r4
	ldr r0, [r6, #0x1c]
	strh r1, [r0, #8]
	ldr r0, [r6, #0x1c]
	strh r1, [r0, #6]
	strh r1, [r6, #6]
	strh r1, [r6, #8]
	ldr r1, [r6, #0x18]
	ldrh r0, [r1, #0x38]
	cmp r0, #0
	bne _02390A18
	ldrh r0, [r1, #0x4a]
	add r0, r0, #3
	mov r1, #4
	bl FUN_03801848
	strh r0, [r6, #0xc]
	ldrh r0, [r6, #0xc]
	cmp r0, #0xa
	movlo r0, #0xa
	strloh r0, [r6, #0xc]
	b _02390A20
_02390A18:
	ldrh r0, [r1, #0x4a]
	strh r0, [r6, #0xc]
_02390A20:
	mov r1, #0
	ldr r0, [r6, #0x1c]
	strh r1, [r0, #4]
_02390A2C:
	ldr r0, [r6, #0x18]
	add r1, r0, #0x3a
	ldrh r0, [r6, #6]
	add r0, r1, r0
	bl FUN_02389C68
	movs r5, r0
	moveq r0, #0x15
	streqh r0, [r6]
	moveq r4, #1
	beq _02390B3C
	ldrh r0, [r6, #6]
	add r0, r0, #1
	strh r0, [r6, #6]
	mov r0, #0
	strh r0, [r6, #0xa]
	bl FUN_02399114
	cmp r0, #0
	beq _02390A90
	mov r1, #0xe
	ldr r0, [r6, #0x1c]
	strh r1, [r0, #4]
	mov r0, #0x15
	strh r0, [r6]
	mov r4, #1
	b _02390B3C
_02390A90:
	ldrh r0, [r6]
	cmp r0, #0x10
	bne _02390AB0
	mov r0, r5
	mov r1, #0
	bl FUN_0238B508
	bl FUN_0238A544
	b _02390ABC
_02390AB0:
	mov r0, r5
	mov r1, #0
	bl FUN_0238B508
_02390ABC:
	mov r0, #0x12
	strh r0, [r6]
_02390AC4:
	mov r0, #0x13
	strh r0, [r6]
	ldr r1, [r6, #0x18]
	ldrh r0, [r1, #0x38]
	cmp r0, #0
	bne _02390B0C
	add r0, r1, #0x10
	bl FUN_0239406C
	cmp r0, #0
	bne _02390B08
	mov r1, #8
	ldr r0, [r6, #0x1c]
	strh r1, [r0, #4]
	mov r0, #0x15
	strh r0, [r6]
	mov r4, #1
	b _02390B3C
_02390B08:
	bl FUN_02394BF4
_02390B0C:
	ldrh r0, [r6, #0xc]
	ldr r1, _02390B60 ; =FUN_02390900
	bl FUN_02389E94
	b _02390B3C
_02390B1C:
	strh r4, [r6]
	bl FUN_0238A48C
	ldr r0, _02390B58 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x2e]
	strh r0, [r5, #0xc]
	bl FUN_023901B8
_02390B3C:
	cmp r4, #0
	beq _02390B50
	mov r0, #2
	mov r1, #0
	bl FUN_02389030
_02390B50:
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_02390B58: .word 0x0380FFF4
_02390B5C: .word 0x00000404
_02390B60: .word FUN_02390900
	arm_func_end FUN_02390968

	arm_func_start FUN_02390B64
FUN_02390B64: ; 0x02390B64
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	mov r5, r1
	ldr r2, _02390C44 ; =0x0380FFF4
	ldr r1, [r2]
	ldr r0, _02390C48 ; =0x00000404
	add r4, r1, r0
	mov r0, #0x12
	strh r0, [r5, #2]
	ldr r0, [r2]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x4c]
	cmp r0, #0x20
	movne r0, #1
	bne _02390C3C
	ldrh r0, [r6, #0x12]
	cmp r0, #3
	movhi r0, #5
	bhi _02390C3C
	ldrh r0, [r6, #0x14]
	cmp r0, #0x3f
	movhi r0, #5
	bhi _02390C3C
	ldrh r0, [r6, #0x16]
	cmp r0, #0
	moveq r0, #5
	beq _02390C3C
	cmp r0, #0x3e8
	movhi r0, #5
	bhi _02390C3C
	mov r8, #0
	add r7, r6, #0x18
	b _02390C0C
_02390BE8:
	add r0, r7, r8
	bl FUN_02389C68
	cmp r0, #0
	beq _02390C14
	bl FUN_0238AAF8
	cmp r0, #0
	moveq r0, #5
	beq _02390C3C
	add r8, r8, #1
_02390C0C:
	cmp r8, #0x10
	blo _02390BE8
_02390C14:
	cmp r8, #0
	moveq r0, #5
	beq _02390C3C
	str r6, [r4, #0x18]
	str r5, [r4, #0x1c]
	mov r0, #0x80
	strh r0, [r4]
	strh r0, [r5, #4]
	bl FUN_02390260
	mov r0, #0x80
_02390C3C:
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_02390C44: .word 0x0380FFF4
_02390C48: .word 0x00000404
	arm_func_end FUN_02390B64

	arm_func_start FUN_02390C4C
FUN_02390C4C: ; 0x02390C4C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, _02390DE4 ; =0x0380FFF4
	ldr r0, [r0]
	add r5, r0, #0x344
	add r4, r0, #0x31c
	mov r0, #1
	strh r0, [r1, #2]
	ldrh r0, [r4, #0x12]
	cmp r0, #1
	beq _02390C84
	cmp r0, #0
	movne r0, #0xb
	bne _02390DDC
_02390C84:
	ldrh r0, [r5, #8]
	cmp r0, #0x20
	movne r0, #1
	bne _02390DDC
	ldrh r0, [r6, #0x10]
	cmp r0, #0x20
	movhi r0, #5
	bhi _02390DDC
	cmp r0, #0
	moveq r0, #5
	beq _02390DDC
	ldrh r0, [r6, #0x32]
	cmp r0, #0xa
	movlo r0, #5
	blo _02390DDC
	cmp r0, #0x3e8
	movhi r0, #5
	bhi _02390DDC
	ldrh r0, [r6, #0x34]
	cmp r0, #0
	moveq r0, #5
	beq _02390DDC
	cmp r0, #0xff
	movhi r0, #5
	bhi _02390DDC
	ldrh r0, [r6, #0x36]
	ldr r1, _02390DE8 ; =0x0000FFF0
	ands r1, r0, r1
	movne r0, #5
	bne _02390DDC
	bl FUN_0238AAF8
	cmp r0, #0
	moveq r0, #5
	beq _02390DDC
	ldrh r1, [r6, #0x38]
	cmp r1, #0
	moveq r0, #5
	beq _02390DDC
	mov r0, #0x1000
	rsb r0, r0, #0
	ands r1, r1, r0
	movne r0, #5
	bne _02390DDC
	ldrh r1, [r6, #0x3a]
	cmp r1, #0
	moveq r0, #5
	beq _02390DDC
	ands r0, r1, r0
	movne r0, #5
	bne _02390DDC
	ldrh r0, [r6, #0x3c]
	cmp r0, #0x80
	movhi r0, #5
	bhi _02390DDC
	mov r0, #0
	bl FUN_02399114
	cmp r0, #0
	movne r0, #0xe
	bne _02390DDC
	ldrh r0, [r4, #0x12]
	cmp r0, #0
	bne _02390D88
	ldr r0, _02390DEC ; =_023992DC
	bl FUN_0238BAF0
	b _02390D90
_02390D88:
	add r0, r4, #8
	bl FUN_0238BAF0
_02390D90:
	ldrh r0, [r6, #0x10]
	add r1, r6, #0x12
	bl FUN_0238B9D4
	ldrh r0, [r6, #0x32]
	bl FUN_0238B974
	ldrh r0, [r6, #0x34]
	bl FUN_0238B928
	ldrh r0, [r6, #0x36]
	mov r1, #0
	bl FUN_0238B508
	add r0, r6, #0x38
	bl FUN_0238B4C0
	ldrh r0, [r6, #0x3c]
	add r1, r6, #0x3e
	bl FUN_0238B138
	mov r0, #0
	strh r0, [r5, #0xa4]
	bl FUN_0238A544
	mov r0, #0
_02390DDC:
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_02390DE4: .word 0x0380FFF4
_02390DE8: .word 0x0000FFF0
_02390DEC: .word _023992DC
	arm_func_end FUN_02390C4C

	arm_func_start FUN_02390DF0
FUN_02390DF0: ; 0x02390DF0
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r6, r1
	ldr r2, _02390F00 ; =0x0380FFF4
	ldr r1, [r2]
	ldr r0, _02390F04 ; =0x00000404
	add r5, r1, r0
	mov r0, #1
	strh r0, [r6, #2]
	ldr r1, [r2]
	add r0, r1, #0x300
	ldrh r0, [r0, #0x2e]
	cmp r0, #0
	moveq r0, #0xb
	beq _02390EF4
	cmp r0, #1
	beq _02390E48
	ldrh r0, [r7, #0x10]
	ands r0, r0, #1
	movne r0, #5
	bne _02390EF4
_02390E48:
	add r0, r1, #0x300
	ldrh r0, [r0, #0x4c]
	cmp r0, #0x40
	movne r0, #1
	bne _02390EF4
	add r0, r7, #0x10
	ldrh r1, [r7, #0x16]
	bl FUN_02394544
	movs r4, r0
	moveq r0, #8
	beq _02390EF4
	str r7, [r5, #0x18]
	str r6, [r5, #0x1c]
	str r4, [r5, #4]
	mov r0, #0x71
	strh r0, [r5]
	ldrh r0, [r7, #0x10]
	ands r0, r0, #1
	beq _02390EE0
	ldr r1, _02390F00 ; =0x0380FFF4
	ldr r0, [r1]
	ldr r0, [r0, #0x3ec]
	strh r0, [r4, #4]
	ldr r0, [r1]
	add r0, r0, #0x188
	sub r1, r4, #0x10
	bl FUN_0238F3EC
	ldr r0, _02390F00 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x500
	ldrh r1, [r0, #0x2e]
	ldrh r0, [r0, #0x32]
	mvn r0, r0
	ands r0, r1, r0
	bne _02390EF0
	mov r0, #2
	bl FUN_02395C00
	b _02390EF0
_02390EE0:
	add r0, r7, #0x10
	bl FUN_02394D9C
	mov r0, r4
	bl FUN_02394BF4
_02390EF0:
	mov r0, #0x80
_02390EF4:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_02390F00: .word 0x0380FFF4
_02390F04: .word 0x00000404
	arm_func_end FUN_02390DF0

	arm_func_start FUN_02390F08
FUN_02390F08: ; 0x02390F08
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r2, _02390FD0 ; =0x0380FFF4
	ldr lr, [r2]
	add r3, lr, #0x344
	ldr r2, _02390FD4 ; =0x00000404
	add r2, lr, r2
	mov ip, #3
	strh ip, [r1, #2]
	add ip, lr, #0x300
	ldrh ip, [ip, #0x2e]
	cmp ip, #3
	beq _02390F48
	cmp ip, #2
	movne r0, #0xb
	bne _02390FC4
_02390F48:
	ldrh ip, [r3, #8]
	cmp ip, #0x30
	movlo r0, #1
	blo _02390FC4
	ldrh ip, [r0, #0x10]
	ands ip, ip, #1
	movne r0, #5
	bne _02390FC4
	ldrh lr, [r0, #0x16]
	cmp lr, #1
	movlo r0, #5
	blo _02390FC4
	cmp lr, #0xff
	movhi r0, #5
	bhi _02390FC4
	ldrh ip, [r0, #0x18]
	cmp ip, #0x7d0
	movhi r0, #5
	bhi _02390FC4
	cmp ip, #0xa
	movlo r0, #5
	blo _02390FC4
	strh lr, [r3, #0x70]
	ldrh ip, [r0, #0x16]
	strh ip, [r3, #0x72]
	str r0, [r2, #0x18]
	str r1, [r2, #0x1c]
	mov r0, #0x60
	strh r0, [r2]
	bl FUN_0239052C
	mov r0, #0x80
_02390FC4:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02390FD0: .word 0x0380FFF4
_02390FD4: .word 0x00000404
	arm_func_end FUN_02390F08

	arm_func_start FUN_02390FD8
FUN_02390FD8: ; 0x02390FD8
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r6, r1
	ldr r0, _023910B8 ; =0x0380FFF4
	ldr r1, [r0]
	add r5, r1, #0x344
	ldr r0, _023910BC ; =0x00000404
	add r4, r1, r0
	mov r0, #3
	strh r0, [r6, #2]
	add r0, r1, #0x300
	ldrh r0, [r0, #0x2e]
	cmp r0, #3
	beq _02391020
	cmp r0, #2
	movne r0, #0xb
	bne _023910AC
_02391020:
	ldrh r0, [r5, #8]
	cmp r0, #0x30
	movlo r0, #1
	blo _023910AC
	ldrh r0, [r7, #0x10]
	ands r0, r0, #1
	movne r0, #5
	bne _023910AC
	ldrh r0, [r7, #0x16]
	cmp r0, #0
	moveq r0, #5
	beq _023910AC
	cmp r0, #0xff
	movhi r0, #5
	bhi _023910AC
	ldrh r0, [r7, #0x18]
	cmp r0, #0x7d0
	movhi r0, #5
	bhi _023910AC
	cmp r0, #0xa
	movlo r0, #5
	blo _023910AC
	mov r0, #0x30
	bl FUN_0238AF00
	bl FUN_0238AFEC
	ldrh r0, [r7, #0x16]
	strh r0, [r5, #0x70]
	ldrh r0, [r7, #0x16]
	strh r0, [r5, #0x72]
	str r7, [r4, #0x18]
	str r6, [r4, #0x1c]
	mov r0, #0x50
	strh r0, [r4]
	bl FUN_0239062C
	mov r0, #0x80
_023910AC:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_023910B8: .word 0x0380FFF4
_023910BC: .word 0x00000404
	arm_func_end FUN_02390FD8

	arm_func_start FUN_023910C0
FUN_023910C0: ; 0x023910C0
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r6, r1
	ldr r2, _02391200 ; =0x0380FFF4
	ldr r1, [r2]
	ldr r0, _02391204 ; =0x00000404
	add r5, r1, r0
	mov r0, #4
	strh r0, [r6, #2]
	ldr r2, [r2]
	add r0, r2, #0x300
	ldrh r1, [r0, #0x2e]
	cmp r1, #3
	beq _02391110
	cmp r1, #2
	beq _02391110
	cmp r1, #1
	movne r0, #0xb
	bne _023911F4
_02391110:
	add r0, r2, #0x300
	ldrh r0, [r0, #0x4c]
	cmp r0, #0x30
	movlo r0, #1
	blo _023911F4
	ldr r0, _02391208 ; =0x0000FFFE
	add r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #1
	bhi _0239114C
	ldrh r0, [r7, #0x10]
	ands r0, r0, #1
	movne r0, #5
	bne _023911F4
_0239114C:
	add r0, r6, #6
	add r1, r7, #0x10
	bl FUN_0238AEE4
	add r0, r6, #6
	ldrh r1, [r7, #0x16]
	mov r2, #0
	bl FUN_02393E24
	movs r4, r0
	moveq r0, #8
	beq _023911F4
	str r7, [r5, #0x18]
	str r6, [r5, #0x1c]
	str r4, [r5, #4]
	mov r0, #0x41
	strh r0, [r5]
	ldrh r0, [r7, #0x10]
	ands r0, r0, #1
	beq _023911E0
	ldr r1, _02391200 ; =0x0380FFF4
	ldr r0, [r1]
	ldr r0, [r0, #0x3ec]
	strh r0, [r4, #4]
	ldr r0, [r1]
	add r0, r0, #0x188
	sub r1, r4, #0x10
	bl FUN_0238F3EC
	ldr r0, _02391200 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x500
	ldrh r1, [r0, #0x2e]
	ldrh r0, [r0, #0x32]
	mvn r0, r0
	ands r0, r1, r0
	bne _023911F0
	mov r0, #2
	bl FUN_02395C00
	b _023911F0
_023911E0:
	add r0, r7, #0x10
	bl FUN_02394D9C
	mov r0, r4
	bl FUN_02394BF4
_023911F0:
	mov r0, #0x80
_023911F4:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_02391200: .word 0x0380FFF4
_02391204: .word 0x00000404
_02391208: .word 0x0000FFFE
	arm_func_end FUN_023910C0

	arm_func_start FUN_0239120C
FUN_0239120C: ; 0x0239120C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	ldr r0, _023912E0 ; =0x0380FFF4
	ldr r1, [r0]
	add r2, r1, #0x344
	ldr r0, _023912E4 ; =0x00000404
	add r4, r1, r0
	mov r0, #6
	strh r0, [r5, #2]
	add r0, r1, #0x300
	ldrh r0, [r0, #0x2e]
	cmp r0, #3
	beq _02391250
	cmp r0, #2
	movne r0, #0xb
	bne _023912D8
_02391250:
	ldrh r0, [r2, #8]
	cmp r0, #0x20
	movlo r0, #1
	blo _023912D8
	ldrh r0, [r6, #0x10]
	ands r0, r0, #1
	movne r0, #5
	bne _023912D8
	ldrh r0, [r6, #0x16]
	cmp r0, #1
	movhi r0, #5
	bhi _023912D8
	ldrh r0, [r6, #0x18]
	cmp r0, #0x7d0
	movhi r0, #5
	bhi _023912D8
	cmp r0, #0xa
	movlo r0, #5
	blo _023912D8
	mov r0, #0x20
	bl FUN_0238AF00
	str r6, [r4, #0x18]
	str r5, [r4, #0x1c]
	mov r0, #0x30
	strh r0, [r4]
	ldr r0, [r4, #0x18]
	ldrh r0, [r0, #0x16]
	strh r0, [r5, #0xe]
	add r0, r5, #8
	ldr r1, [r4, #0x18]
	add r1, r1, #0x10
	bl FUN_0238AEE4
	bl FUN_02390734
	mov r0, #0x80
_023912D8:
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_023912E0: .word 0x0380FFF4
_023912E4: .word 0x00000404
	arm_func_end FUN_0239120C

	arm_func_start FUN_023912E8
FUN_023912E8: ; 0x023912E8
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	ldr r0, _0239149C ; =0x0380FFF4
	ldr r1, [r0]
	add r2, r1, #0x344
	ldr r0, _023914A0 ; =0x00000404
	add r4, r1, r0
	mov r0, #5
	strh r0, [r5, #2]
	add r0, r1, #0x300
	ldrh r0, [r0, #0x2e]
	cmp r0, #3
	beq _0239132C
	cmp r0, #2
	movne r0, #0xb
	bne _02391494
_0239132C:
	ldrh r0, [r2, #8]
	cmp r0, #0x20
	movlo r0, #1
	blo _02391494
	mov r0, #0x20
	bl FUN_0238AF00
	ldrh r0, [r6, #0x18]
	ands r0, r0, #1
	movne r0, #5
	bne _02391494
	ldrh r0, [r6, #0x1e]
	cmp r0, #0
	moveq r0, #5
	beq _02391494
	cmp r0, #0x20
	movhi r0, #5
	bhi _02391494
	ldrh r0, [r6, #0x46]
	cmp r0, #0xa
	movlo r0, #5
	blo _02391494
	cmp r0, #0x3e8
	movhi r0, #5
	bhi _02391494
	ldrh r0, [r6, #0x48]
	cmp r0, #0xff
	movhi r0, #5
	bhi _02391494
	ldrh r0, [r6, #0x4a]
	ldr r1, _023914A4 ; =0x0000FFF0
	ands r1, r0, r1
	movne r0, #5
	bne _02391494
	bl FUN_0238AAF8
	cmp r0, #0
	moveq r0, #5
	beq _02391494
	ldrh r2, [r6, #0x42]
	mov r0, #0x1000
	rsb r0, r0, #0
	ands r1, r2, r0
	movne r0, #5
	bne _02391494
	ldrh r1, [r6, #0x44]
	ands r0, r1, r0
	movne r0, #5
	bne _02391494
	cmp r2, #0
	moveq r0, #5
	beq _02391494
	orrs r0, r1, r2
	moveq r0, #5
	beq _02391494
	ldrh r0, [r6, #0x10]
	cmp r0, #0x7d0
	movhi r0, #5
	bhi _02391494
	mov r0, #0
	bl FUN_02399114
	cmp r0, #0
	movne r0, #0xe
	bne _02391494
	ldrh r0, [r6, #0x40]
	ands r0, r0, #0x20
	beq _0239143C
	mov r0, #1
	bl FUN_0238BDA4
	b _02391444
_0239143C:
	mov r0, #0
	bl FUN_0238BDA4
_02391444:
	add r0, r6, #0x18
	bl FUN_0238BAF0
	ldrh r0, [r6, #0x1e]
	add r1, r6, #0x20
	bl FUN_0238B9D4
	ldrh r0, [r6, #0x46]
	bl FUN_0238B974
	ldrh r0, [r6, #0x4a]
	mov r1, #0
	bl FUN_0238B508
	add r0, r6, #0x42
	bl FUN_0238B4C0
	str r6, [r4, #0x18]
	str r5, [r4, #0x1c]
	mov r0, #0x20
	strh r0, [r4]
	mov r0, #2
	mov r1, #1
	bl FUN_02389030
	mov r0, #0x80
_02391494:
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_0239149C: .word 0x0380FFF4
_023914A0: .word 0x00000404
_023914A4: .word 0x0000FFF0
	arm_func_end FUN_023912E8

	arm_func_start FUN_023914A8
FUN_023914A8: ; 0x023914A8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	mov r5, r1
	ldr r0, _023915EC ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, _023915F0 ; =0x00000404
	add r4, r1, r0
	ldrh r0, [r5, #2]
	sub r0, r0, #3
	strh r0, [r4, #4]
	mov r0, #3
	strh r0, [r5, #2]
	add r0, r1, #0x300
	ldrh r0, [r0, #0x2e]
	cmp r0, #1
	beq _023914FC
	cmp r0, #3
	beq _023914FC
	cmp r0, #2
	movne r0, #0xb
	bne _023915E4
_023914FC:
	ldr r0, _023915EC ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x4c]
	cmp r0, #0x20
	movlo r0, #1
	blo _023915E4
	ldrh r0, [r6, #0x16]
	cmp r0, #0x20
	movhi r0, #5
	bhi _023915E4
	ldrh r0, [r6, #0x38]
	cmp r0, #1
	movhi r0, #5
	bhi _023915E4
	add r0, r6, #0x3a
	bl FUN_02389C68
	cmp r0, #0
	moveq r0, #5
	beq _023915E4
	ldrh r0, [r6, #0x4a]
	cmp r0, #0x3e8
	movhi r0, #5
	bhi _023915E4
	cmp r0, #0xa
	movlo r0, #5
	blo _023915E4
	ldrh r0, [r6, #0x4c]
	cmp r0, #0x10
	movhi r0, #5
	bhi _023915E4
	mov r8, #0
	add r7, r6, #0x3a
	b _023915A8
_02391584:
	add r0, r7, r8
	bl FUN_02389C68
	cmp r0, #0
	beq _023915B0
	bl FUN_0238AAF8
	cmp r0, #0
	moveq r0, #5
	beq _023915E4
	add r8, r8, #1
_023915A8:
	cmp r8, #0x10
	blo _02391584
_023915B0:
	add r0, r6, #0x10
	bl FUN_0238BAF0
	ldrh r0, [r6, #0x16]
	add r1, r6, #0x18
	bl FUN_0238B9D4
	str r6, [r4, #0x18]
	str r5, [r4, #0x1c]
	mov r0, #0x10
	strh r0, [r4]
	mov r0, #2
	mov r1, #0
	bl FUN_02389030
	mov r0, #0x80
_023915E4:
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_023915EC: .word 0x0380FFF4
_023915F0: .word 0x00000404
	arm_func_end FUN_023914A8

	arm_func_start FUN_023915F4
FUN_023915F4: ; 0x023915F4
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #9
	strh r0, [r1, #2]
	ldrh r0, [r4, #0x10]
	cmp r0, #1
	movhi r0, #5
	bhi _02391690
	ldrh r1, [r4, #0x12]
	cmp r1, #1
	movhi r0, #5
	bhi _02391690
	ldrh r1, [r4, #0x14]
	cmp r1, #1
	movhi r0, #5
	bhi _02391690
	bl FUN_0238B3B8
	ldrh r0, [r4, #0x10]
	cmp r0, #1
	bne _0239167C
	ldrh r0, [r4, #0x12]
	cmp r0, #1
	bne _0239165C
	ldr r0, _02391698 ; =0x00008001
	bl FUN_0238B378
	b _02391664
_0239165C:
	mov r0, #0
	bl FUN_0238B378
_02391664:
	ldrh r1, [r4, #0x14]
	ldr r0, _0239169C ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	strh r1, [r0, #0x58]
	b _0239168C
_0239167C:
	mov r0, #0x8000
	bl FUN_0238B378
	mov r0, #2
	bl FUN_0238B38C
_0239168C:
	mov r0, #0
_02391690:
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02391698: .word 0x00008001
_0239169C: .word 0x0380FFF4
	arm_func_end FUN_023915F4

	arm_func_start FUN_023916A0
FUN_023916A0: ; 0x023916A0
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #1
	strh r0, [r1, #2]
	ldrh r0, [r4, #0x10]
	cmp r0, #1
	movhi r0, #5
	bhi _023916D8
	bl FUN_0238A48C
	ldrh r0, [r4, #0x10]
	cmp r0, #1
	bne _023916D4
	bl FUN_0238AE28
_023916D4:
	mov r0, #0
_023916D8:
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_023916A0

	arm_func_start FUN_023916E0
FUN_023916E0: ; 0x023916E0
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r4, r1
	ldrh r0, [r4, #2]
	cmp r0, #1
	ldrhi r0, _023917C0 ; =0x0380FFF4
	ldrhi r0, [r0]
	addhi r0, r0, #0x300
	ldrhih r0, [r0, #0xe4]
	strhih r0, [r4, #6]
	ldr r0, _023917C0 ; =0x0380FFF4
	ldr r3, [r0]
	add r0, r3, #0x300
	ldrh r2, [r0, #0xe4]
	ldrh r1, [r4, #2]
	sub r1, r1, #2
	cmp r2, r1, lsl #1
	movgt r0, #4
	bgt _023917B4
	ldrh r2, [r4, #6]
	cmp r2, #0
	beq _02391798
	ldrh r0, [r0, #0xe6]
	ands r0, r0, #1
	beq _02391788
	ldr r0, [r3, #0x3e0]
	add r7, r0, #1
	add r6, r4, #8
	mov r5, #0
	b _02391778
_02391758:
	mov r0, r7
	bl FUN_02389C68
	mov r1, r0
	mov r0, r6
	bl FUN_02389C88
	add r6, r6, #1
	add r7, r7, #1
	add r5, r5, #1
_02391778:
	ldrh r0, [r4, #6]
	cmp r5, r0
	blo _02391758
	b _02391798
_02391788:
	ldr r0, [r3, #0x3e0]
	add r1, r4, #8
	add r2, r2, #1
	bl FUN_037FAF50
_02391798:
	ldrh r0, [r4, #6]
	add r0, r0, #1
	mov r1, #2
	bl FUN_03801848
	add r0, r0, #2
	strh r0, [r4, #2]
	mov r0, #0
_023917B4:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_023917C0: .word 0x0380FFF4
	arm_func_end FUN_023916E0

	arm_func_start FUN_023917C4
FUN_023917C4: ; 0x023917C4
	mov r0, #2
	strh r0, [r1, #2]
	ldr r0, _023917E8 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0xb4]
	strh r0, [r1, #6]
	mov r0, #0
	bx lr
	.align 2, 0
_023917E8: .word 0x0380FFF4
	arm_func_end FUN_023917C4

	arm_func_start FUN_023917EC
FUN_023917EC: ; 0x023917EC
	mov r0, #2
	strh r0, [r1, #2]
	ldr r0, _02391810 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0xb8]
	strh r0, [r1, #6]
	mov r0, #0
	bx lr
	.align 2, 0
_02391810: .word 0x0380FFF4
	arm_func_end FUN_023917EC

	arm_func_start FUN_02391814
FUN_02391814: ; 0x02391814
	mov r0, #2
	strh r0, [r1, #2]
	ldr r0, _02391838 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0xb2]
	strh r0, [r1, #6]
	mov r0, #0
	bx lr
	.align 2, 0
_02391838: .word 0x0380FFF4
	arm_func_end FUN_02391814

	arm_func_start FUN_0239183C
FUN_0239183C: ; 0x0239183C
	mov r0, #0x12
	strh r0, [r1, #2]
	ldr r2, _02391884 ; =0x0380FFF4
	ldr r0, [r2]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x62]
	strh r0, [r1, #6]
	add r3, r1, #8
	ldr r0, [r2]
	add r1, r0, #0x364
	mov r2, #0
_02391868:
	ldrh r0, [r1], #2
	strh r0, [r3], #2
	add r2, r2, #2
	cmp r2, #0x20
	blo _02391868
	mov r0, #0
	bx lr
	.align 2, 0
_02391884: .word 0x0380FFF4
	arm_func_end FUN_0239183C

	arm_func_start FUN_02391888
FUN_02391888: ; 0x02391888
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r0, #4
	strh r0, [r1, #2]
	add r0, r1, #6
	ldr r1, _023918BC ; =0x0380FFF4
	ldr r1, [r1]
	add r1, r1, #0x3a8
	bl FUN_0238AEE4
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_023918BC: .word 0x0380FFF4
	arm_func_end FUN_02391888

	arm_func_start FUN_023918C0
FUN_023918C0: ; 0x023918C0
	mov r0, #2
	strh r0, [r1, #2]
	ldr r0, _023918F8 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r2, [r0, #0x4c]
	cmp r2, #0x10
	movlo r0, #1
	ldrhsh r0, [r0, #0x3a]
	movhs r0, r0, lsl #0x18
	movhs r0, r0, lsr #0x1f
	strhsh r0, [r1, #6]
	movhs r0, #0
	bx lr
	.align 2, 0
_023918F8: .word 0x0380FFF4
	arm_func_end FUN_023918C0

	arm_func_start FUN_023918FC
FUN_023918FC: ; 0x023918FC
	mov r0, #2
	strh r0, [r1, #2]
	ldr r0, _02391934 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r2, [r0, #0x4c]
	cmp r2, #0x10
	movlo r0, #1
	ldrhsh r0, [r0, #0x3a]
	movhs r0, r0, lsl #0x19
	movhs r0, r0, lsr #0x1f
	strhsh r0, [r1, #6]
	movhs r0, #0
	bx lr
	.align 2, 0
_02391934: .word 0x0380FFF4
	arm_func_end FUN_023918FC

	arm_func_start FUN_02391938
FUN_02391938: ; 0x02391938
	mov r0, #3
	strh r0, [r1, #2]
	ldr r3, _02391994 ; =0x0380FFF4
	ldr r0, [r3]
	add r0, r0, #0x300
	ldrh r2, [r0, #0x4c]
	cmp r2, #0x10
	movlo r0, #1
	bxlo lr
	ldrh r0, [r0, #0x3a]
	mov r0, r0, lsl #0x1b
	mov r0, r0, lsr #0x1f
	strh r0, [r1, #6]
	ldr r0, [r3]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x3a]
	mov r2, r0, lsl #0x1a
	mov r2, r2, lsr #0x1f
	mov r0, r0, lsl #0x1c
	eor r0, r2, r0, lsr #31
	strh r0, [r1, #8]
	mov r0, #0
	bx lr
	.align 2, 0
_02391994: .word 0x0380FFF4
	arm_func_end FUN_02391938

	arm_func_start FUN_02391998
FUN_02391998: ; 0x02391998
	mov r0, #2
	strh r0, [r1, #2]
	ldr r0, _023919D0 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r2, [r0, #0x4c]
	cmp r2, #0x10
	movlo r0, #1
	ldrhsh r0, [r0, #0x3a]
	movhs r0, r0, lsl #0x1c
	movhs r0, r0, lsr #0x1f
	strhsh r0, [r1, #6]
	movhs r0, #0
	bx lr
	.align 2, 0
_023919D0: .word 0x0380FFF4
	arm_func_end FUN_02391998

	arm_func_start FUN_023919D4
FUN_023919D4: ; 0x023919D4
	mov r0, #2
	strh r0, [r1, #2]
	ldr r0, _023919FC ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x22]
	sub r0, r0, #1
	strh r0, [r1, #6]
	mov r0, #0
	bx lr
	.align 2, 0
_023919FC: .word 0x0380FFF4
	arm_func_end FUN_023919D4

	arm_func_start FUN_02391A00
FUN_02391A00: ; 0x02391A00
	stmdb sp!, {r4, lr}
	mov r4, r1
	mov r0, #4
	strh r0, [r4, #2]
	mov r0, #0x13
	bl FUN_0238A458
	strh r0, [r4, #6]
	mov r0, #0x35
	bl FUN_0238A458
	strh r0, [r4, #8]
	mov r0, #0x2e
	bl FUN_0238A458
	strh r0, [r4, #0xa]
	mov r0, #0
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_02391A00

	arm_func_start FUN_02391A40
FUN_02391A40: ; 0x02391A40
	mov r0, #2
	strh r0, [r1, #2]
	ldr r0, _02391A64 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x32]
	strh r0, [r1, #6]
	mov r0, #0
	bx lr
	.align 2, 0
_02391A64: .word 0x0380FFF4
	arm_func_end FUN_02391A40

	arm_func_start FUN_02391A68
FUN_02391A68: ; 0x02391A68
	mov r0, #2
	strh r0, [r1, #2]
	ldr r0, _02391A94 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x3a]
	mov r0, r0, lsl #0x1d
	mov r0, r0, lsr #0x1f
	strh r0, [r1, #6]
	mov r0, #0
	bx lr
	.align 2, 0
_02391A94: .word 0x0380FFF4
	arm_func_end FUN_02391A68

	arm_func_start FUN_02391A98
FUN_02391A98: ; 0x02391A98
	mov r0, #0x11
	strh r0, [r1, #2]
	add r2, r1, #6
	ldr r0, _02391AD0 ; =0x0380FFF4
	ldr r0, [r0]
	add r1, r0, #0x384
	mov r3, #0
_02391AB4:
	ldrh r0, [r1], #2
	strh r0, [r2], #2
	add r3, r3, #1
	cmp r3, #0x10
	blo _02391AB4
	mov r0, #0
	bx lr
	.align 2, 0
_02391AD0: .word 0x0380FFF4
	arm_func_end FUN_02391A98

	arm_func_start FUN_02391AD4
FUN_02391AD4: ; 0x02391AD4
	mov r0, #2
	strh r0, [r1, #2]
	ldr r0, _02391AF8 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x3c]
	strh r0, [r1, #6]
	mov r0, #0
	bx lr
	.align 2, 0
_02391AF8: .word 0x0380FFF4
	arm_func_end FUN_02391AD4

	arm_func_start FUN_02391AFC
FUN_02391AFC: ; 0x02391AFC
	mov r0, #2
	strh r0, [r1, #2]
	ldr r0, _02391B20 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0xc2]
	strh r0, [r1, #6]
	mov r0, #0
	bx lr
	.align 2, 0
_02391B20: .word 0x0380FFF4
	arm_func_end FUN_02391AFC

	arm_func_start FUN_02391B24
FUN_02391B24: ; 0x02391B24
	mov r0, #2
	strh r0, [r1, #2]
	ldr r0, _02391B50 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x3a]
	mov r0, r0, lsl #0x1e
	mov r0, r0, lsr #0x1f
	strh r0, [r1, #6]
	mov r0, #0
	bx lr
	.align 2, 0
_02391B50: .word 0x0380FFF4
	arm_func_end FUN_02391B24

	arm_func_start FUN_02391B54
FUN_02391B54: ; 0x02391B54
	mov r0, #2
	strh r0, [r1, #2]
	ldr r0, _02391B80 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x3a]
	mov r0, r0, lsl #0x1f
	mov r0, r0, lsr #0x1f
	strh r0, [r1, #6]
	mov r0, #0
	bx lr
	.align 2, 0
_02391B80: .word 0x0380FFF4
	arm_func_end FUN_02391B54

	arm_func_start FUN_02391B84
FUN_02391B84: ; 0x02391B84
	mov r0, #2
	strh r0, [r1, #2]
	ldr r0, _02391BA8 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x36]
	strh r0, [r1, #6]
	mov r0, #0
	bx lr
	.align 2, 0
_02391BA8: .word 0x0380FFF4
	arm_func_end FUN_02391B84

	arm_func_start FUN_02391BAC
FUN_02391BAC: ; 0x02391BAC
	mov r0, #2
	strh r0, [r1, #2]
	ldr r0, _02391BD0 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x34]
	strh r0, [r1, #6]
	mov r0, #0
	bx lr
	.align 2, 0
_02391BD0: .word 0x0380FFF4
	arm_func_end FUN_02391BAC

	arm_func_start FUN_02391BD4
FUN_02391BD4: ; 0x02391BD4
	mov r0, #2
	strh r0, [r1, #2]
	ldr r0, _02391BF8 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x30]
	strh r0, [r1, #6]
	mov r0, #0
	bx lr
	.align 2, 0
_02391BF8: .word 0x0380FFF4
	arm_func_end FUN_02391BD4

	arm_func_start FUN_02391BFC
FUN_02391BFC: ; 0x02391BFC
	mov r0, #2
	strh r0, [r1, #2]
	ldr r0, _02391C20 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x2e]
	strh r0, [r1, #6]
	mov r0, #0
	bx lr
	.align 2, 0
_02391C20: .word 0x0380FFF4
	arm_func_end FUN_02391BFC

	arm_func_start FUN_02391C24
FUN_02391C24: ; 0x02391C24
	mov r0, #3
	strh r0, [r1, #2]
	ldr r2, _02391C58 ; =0x0380FFF4
	ldr r0, [r2]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x2c]
	strh r0, [r1, #6]
	ldr r0, [r2]
	add r0, r0, #0x300
	ldrh r0, [r0, #0xbe]
	strh r0, [r1, #8]
	mov r0, #0
	bx lr
	.align 2, 0
_02391C58: .word 0x0380FFF4
	arm_func_end FUN_02391C24

	arm_func_start FUN_02391C5C
FUN_02391C5C: ; 0x02391C5C
	mov r0, #2
	strh r0, [r1, #2]
	ldr r0, _02391C80 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x2a]
	strh r0, [r1, #6]
	mov r0, #0
	bx lr
	.align 2, 0
_02391C80: .word 0x0380FFF4
	arm_func_end FUN_02391C5C

	arm_func_start FUN_02391C84
FUN_02391C84: ; 0x02391C84
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r0, #4
	strh r0, [r1, #2]
	add r0, r1, #6
	ldr r1, _02391CB8 ; =0x0380FFF4
	ldr r1, [r1]
	add r1, r1, #0x324
	bl FUN_0238AEE4
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02391CB8: .word 0x0380FFF4
	arm_func_end FUN_02391C84

	arm_func_start FUN_02391CBC
FUN_02391CBC: ; 0x02391CBC
	stmdb sp!, {r4, lr}
	mov r4, r1
	mov r0, #0x21
	strh r0, [r4, #2]
	add r0, r4, #6
	ldr r1, _02391DF0 ; =0x0380FFF4
	ldr r1, [r1]
	add r1, r1, #0x324
	bl FUN_0238AEE4
	ldr r0, _02391DF0 ; =0x0380FFF4
	ldr r1, [r0]
	add r1, r1, #0x300
	ldrh r1, [r1, #0x2a]
	strh r1, [r4, #0xc]
	ldr r1, [r0]
	add r1, r1, #0x300
	ldrh r1, [r1, #0x2c]
	strh r1, [r4, #0xe]
	ldr r1, [r0]
	add r1, r1, #0x300
	ldrh r1, [r1, #0xbe]
	strh r1, [r4, #0x10]
	ldr r1, [r0]
	add r1, r1, #0x300
	ldrh r1, [r1, #0x2e]
	strh r1, [r4, #0x12]
	ldr r1, [r0]
	add r1, r1, #0x300
	ldrh r1, [r1, #0x30]
	strh r1, [r4, #0x14]
	ldr r1, [r0]
	add r1, r1, #0x300
	ldrh r1, [r1, #0x34]
	strh r1, [r4, #0x16]
	ldr r1, [r0]
	add r1, r1, #0x300
	ldrh r1, [r1, #0x36]
	strh r1, [r4, #0x18]
	ldr r1, [r0]
	add r1, r1, #0x300
	ldrh r1, [r1, #0x3a]
	mov r1, r1, lsl #0x1f
	mov r1, r1, lsr #0x1f
	strh r1, [r4, #0x1a]
	ldr r1, [r0]
	add r1, r1, #0x300
	ldrh r1, [r1, #0x3a]
	mov r1, r1, lsl #0x1e
	mov r1, r1, lsr #0x1f
	strh r1, [r4, #0x1c]
	ldr r1, [r0]
	add r1, r1, #0x300
	ldrh r1, [r1, #0xc2]
	strh r1, [r4, #0x1e]
	ldr r1, [r0]
	add r1, r1, #0x300
	ldrh r1, [r1, #0x3c]
	strh r1, [r4, #0x20]
	ldr r0, [r0]
	add r0, r0, #0x384
	add r1, r4, #0x22
	mov r2, #0x20
	bl FUN_037FAF50
	ldr r1, _02391DF0 ; =0x0380FFF4
	ldr r0, [r1]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x3a]
	mov r0, r0, lsl #0x1d
	mov r0, r0, lsr #0x1f
	strh r0, [r4, #0x42]
	ldr r0, [r1]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x32]
	strh r0, [r4, #0x44]
	mov r0, #0
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02391DF0: .word 0x0380FFF4
	arm_func_end FUN_02391CBC

	arm_func_start FUN_02391DF4
FUN_02391DF4: ; 0x02391DF4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r0, #1
	strh r0, [r1, #2]
	ldr r0, _02391E60 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x2e]
	cmp r0, #1
	movne r0, #0xb
	bne _02391E54
	ldrh r5, [r4, #0x10]
	add r0, r5, #1
	mov r1, #2
	bl FUN_03801848
	ldrh r1, [r4, #0xe]
	add r0, r0, #1
	cmp r1, r0
	movlt r0, #4
	blt _02391E54
	mov r0, r5
	add r1, r4, #0x12
	bl FUN_0238B08C
_02391E54:
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_02391E60: .word 0x0380FFF4
	arm_func_end FUN_02391DF4

	arm_func_start FUN_02391E64
FUN_02391E64: ; 0x02391E64
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r2, #1
	strh r2, [r1, #2]
	ldr r1, _02391EAC ; =0x0380FFF4
	ldr r1, [r1]
	add r1, r1, #0x300
	ldrh r1, [r1, #0x2e]
	cmp r1, #2
	beq _02391E98
	cmp r1, #3
	movne r0, #0xb
	bne _02391EA0
_02391E98:
	ldrh r0, [r0, #0x10]
	bl FUN_0238B8F4
_02391EA0:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02391EAC: .word 0x0380FFF4
	arm_func_end FUN_02391E64

	arm_func_start FUN_02391EB0
FUN_02391EB0: ; 0x02391EB0
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r2, #1
	strh r2, [r1, #2]
	ldr r1, _02391EF0 ; =0x0380FFF4
	ldr r1, [r1]
	add r1, r1, #0x300
	ldrh r1, [r1, #0x2e]
	cmp r1, #1
	movne r0, #0xb
	bne _02391EE4
	ldrh r0, [r0, #0x10]
	bl FUN_0238B928
_02391EE4:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02391EF0: .word 0x0380FFF4
	arm_func_end FUN_02391EB0

	arm_func_start FUN_02391EF4
FUN_02391EF4: ; 0x02391EF4
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r2, #1
	strh r2, [r1, #2]
	ldr r1, _02391F34 ; =0x0380FFF4
	ldr r1, [r1]
	add r1, r1, #0x300
	ldrh r1, [r1, #0x2e]
	cmp r1, #1
	movne r0, #0xb
	bne _02391F28
	ldrh r0, [r0, #0x10]
	bl FUN_0238B974
_02391F28:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02391F34: .word 0x0380FFF4
	arm_func_end FUN_02391EF4

	arm_func_start FUN_02391F38
FUN_02391F38: ; 0x02391F38
	mov r2, r0
	mov r0, #1
	strh r0, [r1, #2]
	ldrh r0, [r2, #0x10]
	add r1, r2, #0x12
	ldr ip, _02391F54 ; =FUN_0238B9D4
	bx ip
	.align 2, 0
_02391F54: .word FUN_0238B9D4
	arm_func_end FUN_02391F38

	arm_func_start FUN_02391F58
FUN_02391F58: ; 0x02391F58
	mov r2, #1
	strh r2, [r1, #2]
	add r0, r0, #0x10
	ldr ip, _02391F6C ; =FUN_0238BAF0
	bx ip
	.align 2, 0
_02391F6C: .word FUN_0238BAF0
	arm_func_end FUN_02391F58

	arm_func_start FUN_02391F70
FUN_02391F70: ; 0x02391F70
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r2, #1
	strh r2, [r1, #2]
	ldr r1, _02391FB4 ; =0x0380FFF4
	ldr r1, [r1]
	add r1, r1, #0x300
	ldrh r1, [r1, #0x4c]
	cmp r1, #0x10
	blo _02391FA4
	ldrh r0, [r0, #0x10]
	bl FUN_0238BB58
	mov r2, r0
_02391FA4:
	mov r0, r2
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02391FB4: .word 0x0380FFF4
	arm_func_end FUN_02391F70

	arm_func_start FUN_02391FB8
FUN_02391FB8: ; 0x02391FB8
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r2, #1
	strh r2, [r1, #2]
	ldr r1, _02391FFC ; =0x0380FFF4
	ldr r1, [r1]
	add r1, r1, #0x300
	ldrh r1, [r1, #0x4c]
	cmp r1, #0x10
	blo _02391FEC
	ldrh r0, [r0, #0x10]
	bl FUN_0238BBB4
	mov r2, r0
_02391FEC:
	mov r0, r2
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02391FFC: .word 0x0380FFF4
	arm_func_end FUN_02391FB8

	arm_func_start FUN_02392000
FUN_02392000: ; 0x02392000
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r2, r0
	mov r0, #1
	strh r0, [r1, #2]
	ldr r1, _02392044 ; =0x0380FFF4
	ldr r1, [r1]
	add r1, r1, #0x300
	ldrh r1, [r1, #0x4c]
	cmp r1, #0x10
	blo _02392038
	ldrh r0, [r2, #0x10]
	ldrh r1, [r2, #0x12]
	bl FUN_0238BBF4
_02392038:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02392044: .word 0x0380FFF4
	arm_func_end FUN_02392000

	arm_func_start FUN_02392048
FUN_02392048: ; 0x02392048
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r2, #1
	strh r2, [r1, #2]
	ldr r1, _0239208C ; =0x0380FFF4
	ldr r1, [r1]
	add r1, r1, #0x300
	ldrh r1, [r1, #0x4c]
	cmp r1, #0x10
	blo _0239207C
	ldrh r0, [r0, #0x10]
	bl FUN_0238BCD0
	mov r2, r0
_0239207C:
	mov r0, r2
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_0239208C: .word 0x0380FFF4
	arm_func_end FUN_02392048

	arm_func_start FUN_02392090
FUN_02392090: ; 0x02392090
	mov r3, #1
	strh r3, [r1, #2]
	ldr r2, _023920E4 ; =0x0380FFF4
	ldr r1, [r2]
	add r1, r1, #0x300
	ldrh r1, [r1, #0x4c]
	cmp r1, #0x20
	movhi r0, r3
	bxhi lr
	ldrh r1, [r0, #0x10]
	add r1, r1, #1
	strh r1, [r0, #0x10]
	ldr r1, [r2]
	ldrh r2, [r0, #0x10]
	add r0, r1, #0x300
	ldrh r1, [r0, #0x20]
	cmp r2, r1
	movhi r0, #5
	strlsh r2, [r0, #0x22]
	movls r0, #0
	bx lr
	.align 2, 0
_023920E4: .word 0x0380FFF4
	arm_func_end FUN_02392090

	arm_func_start FUN_023920E8
FUN_023920E8: ; 0x023920E8
	stmdb sp!, {r4, lr}
	ldr ip, _023921EC ; =0x0380FFF4
	ldr r2, [ip]
	ldr r2, [r2, #0x31c]
	mov r3, #1
	strh r3, [r1, #2]
	ldrh r1, [r0, #0x10]
	ldr r3, [ip]
	add r3, r3, #0x300
	ldrh r3, [r3, #0x22]
	cmp r1, r3
	blo _02392128
	ldr r3, _023921F0 ; =0x0000FFFF
	cmp r1, r3
	movne r0, #5
	bne _023921E4
_02392128:
	ldrh ip, [r0, #0x14]
	cmp ip, #0x3f
	bls _02392144
	ldr r3, _023921F0 ; =0x0000FFFF
	cmp ip, r3
	movne r0, #5
	bne _023921E4
_02392144:
	ldr r3, _023921F0 ; =0x0000FFFF
	cmp r1, r3
	bne _02392198
	mov r4, #1
	ldr ip, _023921EC ; =0x0380FFF4
	mov r3, #0x1c
	b _02392180
_02392160:
	mla lr, r4, r3, r2
	ldrh r1, [r0, #0x12]
	strh r1, [lr, #0x1a]
	ldrh r1, [lr, #0x18]
	cmp r1, #0
	ldrneh r1, [r0, #0x12]
	strneh r1, [lr, #0x18]
	add r4, r4, #1
_02392180:
	ldr r1, [ip]
	add r1, r1, #0x300
	ldrh r1, [r1, #0x22]
	cmp r4, r1
	blo _02392160
	b _023921D0
_02392198:
	cmp r1, #0
	beq _023921D0
	ldrh lr, [r0, #0x12]
	mov r3, #0x1c
	mla ip, r1, r3, r2
	strh lr, [ip, #0x1a]
	add ip, r2, #0x18
	ldrh r1, [r0, #0x10]
	mul r2, r1, r3
	add r3, ip, r2
	ldrh r1, [ip, r2]
	cmp r1, #0
	ldrneh r1, [r0, #0x12]
	strneh r1, [r3]
_023921D0:
	ldrh r0, [r0, #0x14]
	cmp r0, #0
	beq _023921E0
	bl FUN_0238B208
_023921E0:
	mov r0, #0
_023921E4:
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_023921EC: .word 0x0380FFF4
_023921F0: .word 0x0000FFFF
	arm_func_end FUN_023920E8

	arm_func_start FUN_023921F4
FUN_023921F4: ; 0x023921F4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r0, #1
	strh r0, [r1, #2]
	ldrh r0, [r5, #0x14]
	cmp r0, #0x3f
	movhi r0, #5
	bhi _0239223C
	ldrh r0, [r5, #0x10]
	ldrh r1, [r5, #0x12]
	bl FUN_0238BD38
	movs r4, r0
	bne _02392238
	mov r0, #0x2e
	ldrh r1, [r5, #0x14]
	bl FUN_0238A418
_02392238:
	mov r0, r4
_0239223C:
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_023921F4

	arm_func_start FUN_02392248
FUN_02392248: ; 0x02392248
	mov r2, #1
	strh r2, [r1, #2]
	ldrh r0, [r0, #0x10]
	ldr ip, _0239225C ; =FUN_0238BD80
	bx ip
	.align 2, 0
_0239225C: .word FUN_0238BD80
	arm_func_end FUN_02392248

	arm_func_start FUN_02392260
FUN_02392260: ; 0x02392260
	mov r2, #1
	strh r2, [r1, #2]
	ldrh r0, [r0, #0x10]
	ldr ip, _02392274 ; =FUN_0238BDA4
	bx ip
	.align 2, 0
_02392274: .word FUN_0238BDA4
	arm_func_end FUN_02392260

	arm_func_start FUN_02392278
FUN_02392278: ; 0x02392278
	mov r2, #1
	strh r2, [r1, #2]
	add r0, r0, #0x10
	ldr ip, _0239228C ; =FUN_0238BE64
	bx ip
	.align 2, 0
_0239228C: .word FUN_0238BE64
	arm_func_end FUN_02392278

	arm_func_start FUN_02392290
FUN_02392290: ; 0x02392290
	mov r2, #1
	strh r2, [r1, #2]
	ldrh r0, [r0, #0x10]
	mov r1, #0
	ldr ip, _023922A8 ; =FUN_0238BE94
	bx ip
	.align 2, 0
_023922A8: .word FUN_0238BE94
	arm_func_end FUN_02392290

	arm_func_start FUN_023922AC
FUN_023922AC: ; 0x023922AC
	mov r2, #1
	strh r2, [r1, #2]
	ldrh r0, [r0, #0x10]
	ldr ip, _023922C0 ; =FUN_0238BF54
	bx ip
	.align 2, 0
_023922C0: .word FUN_0238BF54
	arm_func_end FUN_023922AC

	arm_func_start FUN_023922C4
FUN_023922C4: ; 0x023922C4
	mov r2, #1
	strh r2, [r1, #2]
	ldrh r0, [r0, #0x10]
	ldr ip, _023922D8 ; =FUN_0238BF8C
	bx ip
	.align 2, 0
_023922D8: .word FUN_0238BF8C
	arm_func_end FUN_023922C4

	arm_func_start FUN_023922DC
FUN_023922DC: ; 0x023922DC
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r2, #1
	strh r2, [r1, #2]
	ldr r1, _02392320 ; =0x0380FFF4
	ldr r1, [r1]
	add r1, r1, #0x300
	ldrh r1, [r1, #0x4c]
	cmp r1, #0x20
	bhi _02392310
	ldrh r0, [r0, #0x10]
	bl FUN_0238BFC4
	mov r2, r0
_02392310:
	mov r0, r2
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02392320: .word 0x0380FFF4
	arm_func_end FUN_023922DC

	arm_func_start FUN_02392324
FUN_02392324: ; 0x02392324
	mov r2, #1
	strh r2, [r1, #2]
	add r0, r0, #0x10
	ldr ip, _02392338 ; =FUN_0238BFFC
	bx ip
	.align 2, 0
_02392338: .word FUN_0238BFFC
	arm_func_end FUN_02392324

	arm_func_start FUN_0239233C
FUN_0239233C: ; 0x0239233C
	mov r2, #1
	strh r2, [r1, #2]
	ldrh r0, [r0, #0x10]
	ldr ip, _02392350 ; =FUN_0238C060
	bx ip
	.align 2, 0
_02392350: .word FUN_0238C060
	arm_func_end FUN_0239233C

	arm_func_start FUN_02392354
FUN_02392354: ; 0x02392354
	mov r2, #1
	strh r2, [r1, #2]
	ldrh r0, [r0, #0x10]
	ldr ip, _02392368 ; =FUN_0238C084
	bx ip
	.align 2, 0
_02392368: .word FUN_0238C084
	arm_func_end FUN_02392354

	arm_func_start FUN_0239236C
FUN_0239236C: ; 0x0239236C
	mov r2, #1
	strh r2, [r1, #2]
	ldrh r0, [r0, #0x10]
	ldr ip, _02392380 ; =FUN_0238C138
	bx ip
	.align 2, 0
_02392380: .word FUN_0238C138
	arm_func_end FUN_0239236C

	arm_func_start FUN_02392384
FUN_02392384: ; 0x02392384
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r3, #1
	strh r3, [r1, #2]
	ldr r1, _023923DC ; =0x0380FFF4
	ldr r1, [r1]
	add r1, r1, #0x300
	ldrh r2, [r1, #0x4c]
	cmp r2, #0x20
	movhi r0, r3
	bhi _023923D0
	cmp r2, #0x20
	bne _023923C8
	ldrh r1, [r1, #0x56]
	cmp r1, #0
	movne r0, r3
	bne _023923D0
_023923C8:
	ldrh r0, [r0, #0x10]
	bl FUN_0238C174
_023923D0:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_023923DC: .word 0x0380FFF4
	arm_func_end FUN_02392384

	arm_func_start FUN_023923E0
FUN_023923E0: ; 0x023923E0
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r2, #1
	strh r2, [r1, #2]
	ldr r1, _02392424 ; =0x0380FFF4
	ldr r1, [r1]
	add r1, r1, #0x300
	ldrh r1, [r1, #0x4c]
	cmp r1, #0x10
	bne _02392414
	ldrh r0, [r0, #0x10]
	bl FUN_0238C1FC
	mov r2, r0
_02392414:
	mov r0, r2
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02392424: .word 0x0380FFF4
	arm_func_end FUN_023923E0

	arm_func_start FUN_02392428
FUN_02392428: ; 0x02392428
	mov r2, #1
	strh r2, [r1, #2]
	ldrh r0, [r0, #0x10]
	ldr ip, _0239243C ; =FUN_0238C23C
	bx ip
	.align 2, 0
_0239243C: .word FUN_0238C23C
	arm_func_end FUN_02392428

	arm_func_start FUN_02392440
FUN_02392440: ; 0x02392440
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r2, #1
	strh r2, [r1, #2]
	ldr r1, _02392484 ; =0x0380FFF4
	ldr r1, [r1]
	add r1, r1, #0x300
	ldrh r1, [r1, #0x4c]
	cmp r1, #0x10
	bne _02392474
	add r0, r0, #0x10
	bl FUN_0238C270
	mov r2, r0
_02392474:
	mov r0, r2
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02392484: .word 0x0380FFF4
	arm_func_end FUN_02392440

	arm_func_start FUN_02392488
FUN_02392488: ; 0x02392488
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r0, #1
	strh r0, [r1, #2]
	ldr r1, _02392578 ; =0x0380FFF4
	ldr r1, [r1]
	add r1, r1, #0x300
	ldrh r1, [r1, #0x4c]
	cmp r1, #0x10
	bne _0239256C
	add r0, r5, #0x10
	bl FUN_0238C270
	mov r4, r0
	ldrh r0, [r5, #0x16]
	bl FUN_0238C23C
	orr r4, r4, r0
	ldrh r0, [r5, #0x18]
	bl FUN_0238C1FC
	orr r4, r4, r0
	ldrh r0, [r5, #0x1c]
	bl FUN_0238C174
	orr r4, r4, r0
	ldrh r0, [r5, #0x1e]
	bl FUN_0238C138
	orr r4, r4, r0
	ldrh r0, [r5, #0x20]
	bl FUN_0238C084
	orr r4, r4, r0
	ldrh r0, [r5, #0x22]
	bl FUN_0238C060
	orr r4, r4, r0
	add r0, r5, #0x24
	bl FUN_0238BFFC
	orr r4, r4, r0
	ldrh r0, [r5, #0x74]
	bl FUN_0238BFC4
	orr r4, r4, r0
	ldrh r0, [r5, #0x76]
	bl FUN_0238BF8C
	orr r4, r4, r0
	ldrh r0, [r5, #0x78]
	bl FUN_0238BF54
	orr r4, r4, r0
	ldrh r0, [r5, #0x7a]
	mov r1, #0
	bl FUN_0238BE94
	orr r4, r4, r0
	add r0, r5, #0x7c
	bl FUN_0238BE64
	orr r4, r4, r0
	ldrh r0, [r5, #0x9c]
	bl FUN_0238BDA4
	orr r4, r4, r0
	ldrh r0, [r5, #0x9e]
	bl FUN_0238BD80
	orr r0, r4, r0
_0239256C:
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_02392578: .word 0x0380FFF4
	arm_func_end FUN_02392488

	arm_func_start FUN_0239257C
FUN_0239257C: ; 0x0239257C
	stmdb sp!, {r4, lr}
	ldr r2, _02392628 ; =0x0380FFF4
	ldr r2, [r2]
	add r4, r2, #0x344
	mov r3, #1
	strh r3, [r1, #2]
	ldrh r2, [r4, #8]
	and r1, r2, #0xf0
	cmp r1, #0x10
	movne r0, r3
	bne _02392620
	ldrh r1, [r0, #0x10]
	cmp r1, #0
	beq _023925F4
	cmp r1, #1
	bne _0239261C
	cmp r2, #0x10
	movne r0, r3
	bne _02392620
	ldrh r0, [r0, #0x12]
	mov r1, r3
	bl FUN_0238B508
	mov r0, #0
	strh r0, [r4, #0xc]
	bl FUN_0238A544
	mov r0, #0x8000
	bl FUN_0238B378
	mov r0, #0x11
	strh r0, [r4, #8]
	b _0239261C
_023925F4:
	cmp r2, #0x11
	bne _0239260C
	mov r0, #0
	bl FUN_0238B378
	bl FUN_0238A48C
	b _02392614
_0239260C:
	mov r0, r3
	b _02392620
_02392614:
	mov r0, #0x10
	strh r0, [r4, #8]
_0239261C:
	mov r0, #0
_02392620:
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02392628: .word 0x0380FFF4
	arm_func_end FUN_0239257C

	arm_func_start FUN_0239262C
FUN_0239262C: ; 0x0239262C
	ldr r0, _023926AC ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x5c]
	cmp r0, #0
	beq _02392668
	mov r1, #0
	ldr r0, _023926B0 ; =0x04804000
	strh r1, [r0]
	strh r1, [r0, #4]
	ldr r1, _023926B4 ; =0x048080A0
	ldrh r0, [r1]
	orr r0, r0, #0x8000
	strh r0, [r1]
	bx lr
_02392668:
	mov r1, #1
	ldr r0, _023926B8 ; =0x048080AC
	strh r1, [r0]
	mov r2, #0
	ldr r0, _023926BC ; =0x04808004
	strh r2, [r0]
	mov r1, #2
	ldr r0, _023926C0 ; =0x04808012
	strh r1, [r0]
	ldr r1, _023926C4 ; =0x0000FFFF
	ldr r0, _023926C8 ; =0x04808010
	strh r1, [r0]
	ldr r0, _023926CC ; =0x04808194
	strh r2, [r0]
	ldr r0, _023926D0 ; =0x04808040
	strh r2, [r0]
	bx lr
	.align 2, 0
_023926AC: .word 0x0380FFF4
_023926B0: .word 0x04804000
_023926B4: .word 0x048080A0
_023926B8: .word 0x048080AC
_023926BC: .word 0x04808004
_023926C0: .word 0x04808012
_023926C4: .word 0x0000FFFF
_023926C8: .word 0x04808010
_023926CC: .word 0x04808194
_023926D0: .word 0x04808040
	arm_func_end FUN_0239262C

	arm_func_start FUN_023926D4
FUN_023926D4: ; 0x023926D4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r0, _023927EC ; =0x0380FFF4
	ldr r0, [r0]
	add r4, r0, #0x344
	bl FUN_0238A544
	bl FUN_0238A48C
	mov r0, #6
	bl FUN_0238A458
	strh r0, [r4, #0xac]
	ldrh r0, [r5, #0x12]
	cmp r0, #4
	bne _02392718
	mov r0, #6
	mov r1, #0
	bl FUN_0238A418
_02392718:
	mov r0, #0
	ldr r1, _023927F0 ; =0x04804000
	mov r2, #0xc
	bl FUN_037FAF38
	mov r0, #0x14
	ldr r1, _023927F0 ; =0x04804000
	strh r0, [r1, #8]
	mov r0, #0x7d0
	strh r0, [r1, #0xa]
	add r2, r1, #0xc
	mov r3, #0
	ldr r1, _023927F4 ; =0x00005555
	ldr r0, _023927F8 ; =0x000007EC
_0239274C:
	strh r1, [r2], #2
	add r3, r3, #2
	cmp r3, r0
	blo _0239274C
	mov r1, #8
	ldr r0, _023927F0 ; =0x04804000
	strh r1, [r0, #0xc]
	mov r1, #6
	ldr r0, _023927FC ; =0x04808194
	strh r1, [r0]
	mov r0, #0x12
	strh r0, [r4, #8]
	mov r1, #1
	strh r1, [r4, #0x18]
	ldrh r0, [r5, #0x16]
	bl FUN_0238B508
	mov r1, #0x8000
	ldr r0, _02392800 ; =0x04808040
	strh r1, [r0]
	ldr r0, _02392804 ; =0x000005DC
	bl FUN_0238A040
	mov r1, #2
	ldr r0, _02392808 ; =0x04808012
	strh r1, [r0]
	mov r1, #1
	ldr r0, _0239280C ; =0x04808004
	strh r1, [r0]
	ldr r0, _02392810 ; =0x048080AE
	strh r1, [r0]
	ldr r1, _023927F0 ; =0x04804000
	ldr r0, _02392814 ; =0x00003FFF
	and r0, r1, r0
	mov r0, r0, lsl #0xf
	mov r0, r0, lsr #0x10
	orr r1, r0, #0x8000
	ldr r0, _02392818 ; =0x048080A0
	strh r1, [r0]
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_023927EC: .word 0x0380FFF4
_023927F0: .word 0x04804000
_023927F4: .word 0x00005555
_023927F8: .word 0x000007EC
_023927FC: .word 0x04808194
_02392800: .word 0x04808040
_02392804: .word 0x000005DC
_02392808: .word 0x04808012
_0239280C: .word 0x04808004
_02392810: .word 0x048080AE
_02392814: .word 0x00003FFF
_02392818: .word 0x048080A0
	arm_func_end FUN_023926D4

	arm_func_start FUN_0239281C
FUN_0239281C: ; 0x0239281C
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r5, r0
	ldr r0, _02392A6C ; =0x0380FFF4
	ldr r0, [r0]
	add r4, r0, #0x344
	mov r0, #1
	strh r0, [r1, #2]
	ldrh r1, [r4, #8]
	and r1, r1, #0xf0
	cmp r1, #0x10
	bne _02392A60
	ldrh r0, [r5, #0x10]
	cmp r0, #1
	movhi r0, #5
	bhi _02392A60
	ldrh r0, [r5, #0x14]
	cmp r0, #0xa
	beq _02392874
	cmp r0, #0x14
	movne r0, #5
	bne _02392A60
_02392874:
	ldrh r0, [r5, #0x12]
	cmp r0, #4
	movhi r0, #5
	bhi _02392A60
	mov r0, #0
	bl FUN_02399114
	cmp r0, #0
	movne r0, #0xe
	bne _02392A60
	ldrh r0, [r5, #0x10]
	cmp r0, #0
	beq _023929CC
	cmp r0, #1
	bne _02392A5C
	ldrh r0, [r4, #8]
	cmp r0, #0x10
	movne r0, #1
	bne _02392A60
	mov r0, #0
	str r0, [sp]
	mov r0, #0x65
	mov r1, #1
	add r2, sp, #0
	bl FUN_02399024
	ldr r6, [sp]
	mov r0, #1
	bl FUN_0238A458
	cmp r6, r0
	beq _023928FC
	mov r0, #1
	mov r1, r6
	bl FUN_0238A418
	ldr r0, _02392A70 ; =0x00001388
	bl FUN_0238A040
_023928FC:
	ldrh r0, [r5, #0x12]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _02392A5C
_0239290C: ; jump table
	b _02392920 ; case 0
	b _02392920 ; case 1
	b _02392920 ; case 2
	b _023929C0 ; case 3
	b _023929C0 ; case 4
_02392920:
	mov r0, #0x11
	strh r0, [r4, #8]
	ldrh r0, [r5, #0x16]
	mov r1, #1
	bl FUN_0238B508
	mov r1, #0x8000
	ldr r0, _02392A74 ; =0x04808040
	strh r1, [r0]
	ldr r0, _02392A78 ; =0x000005DC
	bl FUN_0238A040
	ldrh r0, [r5, #0x14]
	strh r0, [r4, #0x16]
	mov r0, #2
	bl FUN_0238A458
	str r0, [sp]
	ldrh r1, [r5, #0x12]
	cmp r1, #1
	orrls r0, r0, #0x10
	strls r0, [sp]
	ldrh r1, [r5, #0x14]
	ldr r0, _02392A7C ; =0x048081A4
	strh r1, [r0]
	ldrh r1, [r5, #0x12]
	cmp r1, #1
	ldrne r0, _02392A80 ; =0x048081A2
	strneh r1, [r0]
	bne _023929A4
	ldr r0, [sp]
	orr r0, r0, #0x20
	str r0, [sp]
	mov r1, #3
	ldr r0, _02392A80 ; =0x048081A2
	strh r1, [r0]
_023929A4:
	mov r0, #2
	ldr r1, [sp]
	bl FUN_0238A418
	ldr r1, _02392A84 ; =0x00000823
	ldr r0, _02392A88 ; =0x048081A0
	strh r1, [r0]
	b _02392A5C
_023929C0:
	mov r0, r5
	bl FUN_023926D4
	b _02392A5C
_023929CC:
	ldrh r0, [r4, #8]
	cmp r0, #0x11
	bne _02392A1C
	bl FUN_02389F8C
	mov r2, #0
	ldr r0, _02392A88 ; =0x048081A0
	strh r2, [r0]
	mov r1, #1
	ldr r0, _02392A80 ; =0x048081A2
	strh r1, [r0]
	ldr r0, _02392A74 ; =0x04808040
	strh r2, [r0]
	mov r0, #2
	bl FUN_0238A458
	str r0, [sp]
	bic r1, r0, #0x30
	str r1, [sp]
	mov r0, #2
	bl FUN_0238A418
	b _02392A54
_02392A1C:
	cmp r0, #0x12
	bne _02392A4C
	mov r0, #0
	strh r0, [r4, #0x18]
	ldr r1, _02392A8C ; =0x04808004
_02392A30:
	ldrh r0, [r1]
	cmp r0, #0
	bne _02392A30
	mov r0, #6
	ldrh r1, [r4, #0xac]
	bl FUN_0238A418
	b _02392A54
_02392A4C:
	mov r0, #1
	b _02392A60
_02392A54:
	mov r0, #0x10
	strh r0, [r4, #8]
_02392A5C:
	mov r0, #0
_02392A60:
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_02392A6C: .word 0x0380FFF4
_02392A70: .word 0x00001388
_02392A74: .word 0x04808040
_02392A78: .word 0x000005DC
_02392A7C: .word 0x048081A4
_02392A80: .word 0x048081A2
_02392A84: .word 0x00000823
_02392A88: .word 0x048081A0
_02392A8C: .word 0x04808004
	arm_func_end FUN_0239281C

	arm_func_start FUN_02392A90
FUN_02392A90: ; 0x02392A90
	mov r0, #2
	strh r0, [r1, #2]
	ldr r0, _02392AB4 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x4c]
	strh r0, [r1, #6]
	mov r0, #0
	bx lr
	.align 2, 0
_02392AB4: .word 0x0380FFF4
	arm_func_end FUN_02392A90

	arm_func_start FUN_02392AB8
FUN_02392AB8: ; 0x02392AB8
	stmdb sp!, {r4, lr}
	mov r4, r1
	ldr r0, _02392B10 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x4c]
	cmp r0, #0
	moveq r0, #1
	beq _02392B08
	mov r0, #0x5c
	strh r0, [r4, #2]
	bl FUN_0238AC24
	ldr r0, _02392B10 ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, _02392B14 ; =0x0000053C
	add r0, r1, r0
	add r1, r4, #8
	mov r2, #0xb4
	bl FUN_037FAF80
	mov r0, #0
_02392B08:
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02392B10: .word 0x0380FFF4
_02392B14: .word 0x0000053C
	arm_func_end FUN_02392AB8

	arm_func_start FUN_02392B18
FUN_02392B18: ; 0x02392B18
	stmdb sp!, {r4, lr}
	mov r4, r1
	mov r0, #9
	strh r0, [r4, #2]
	ldr r0, _02392BB4 ; =_023998A8
	add r1, r4, #6
	mov r2, #8
	bl FUN_037FAF50
	ldr r0, _02392BB8 ; =0x04808000
	ldrh r0, [r0]
	strh r0, [r4, #0xe]
	ldr r0, _02392BBC ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x600
	ldrh r0, [r0, #0x90]
	ands r0, r0, #0x8000
	moveq r0, #0x6d
	streqh r0, [r4, #0x10]
	ldreq r0, _02392BC0 ; =0x0000933D
	streqh r0, [r4, #0x12]
	beq _02392B80
	mov r0, #0
	bl FUN_0238A458
	strh r0, [r4, #0x10]
	bl FUN_0238A380
	strh r0, [r4, #0x12]
_02392B80:
	ldr r0, _02392BBC ; =0x0380FFF4
	ldr r1, [r0]
	add r0, r1, #0x600
	ldrh r0, [r0, #0x90]
	ands r0, r0, #0x4000
	addne r0, r1, #0x500
	ldrneh r0, [r0, #0xf8]
	strneh r0, [r4, #0x14]
	moveq r0, #2
	streqh r0, [r4, #0x14]
	mov r0, #0
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02392BB4: .word _023998A8
_02392BB8: .word 0x04808000
_02392BBC: .word 0x0380FFF4
_02392BC0: .word 0x0000933D
	arm_func_end FUN_02392B18

	arm_func_start FUN_02392BC4
FUN_02392BC4: ; 0x02392BC4
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _02392C04 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x4c]
	cmp r0, #0
	moveq r0, #1
	beq _02392BF8
	mov r0, #1
	strh r0, [r1, #2]
	bl FUN_0238AE28
	mov r0, #0
_02392BF8:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02392C04: .word 0x0380FFF4
	arm_func_end FUN_02392BC4

	arm_func_start FUN_02392C08
FUN_02392C08: ; 0x02392C08
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r0, #1
	strh r0, [r1, #2]
	ldr r0, _02392C48 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x4c]
	cmp r0, #0x20
	blo _02392C34
	bl FUN_0238A48C
_02392C34:
	bl FUN_02388EE0
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02392C48: .word 0x0380FFF4
	arm_func_end FUN_02392C08

	arm_func_start FUN_02392C4C
FUN_02392C4C: ; 0x02392C4C
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r0, #1
	strh r0, [r1, #2]
	ldr r0, _02392CA8 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r1, [r0, #0x4c]
	cmp r1, #0x10
	beq _02392C88
	cmp r1, #0x20
	bne _02392C98
	ldrh r0, [r0, #0x56]
	cmp r0, #0
	bne _02392C98
_02392C88:
	mov r0, #0x20
	bl FUN_0238AF00
	mov r0, #0
	b _02392C9C
_02392C98:
	mov r0, #1
_02392C9C:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02392CA8: .word 0x0380FFF4
	arm_func_end FUN_02392C4C

	arm_func_start FUN_02392CAC
FUN_02392CAC: ; 0x02392CAC
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r0, #1
	strh r0, [r1, #2]
	ldr r1, _02392D0C ; =0x0380FFF4
	ldr r1, [r1]
	add r1, r1, #0x300
	ldrh r2, [r1, #0x4c]
	cmp r2, #0x20
	bhi _02392D00
	ldrh r1, [r1, #0x56]
	cmp r1, #0
	bne _02392D00
	mov r0, #0
	bl FUN_02399114
	cmp r0, #0
	movne r0, #0xe
	bne _02392D00
	mov r0, #0x10
	bl FUN_0238AF00
	mov r0, #0
_02392D00:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02392D0C: .word 0x0380FFF4
	arm_func_end FUN_02392CAC

	arm_func_start FUN_02392D10
FUN_02392D10: ; 0x02392D10
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r0, #1
	strh r0, [r1, #2]
	ldr r1, _02392D58 ; =0x0380FFF4
	ldr r1, [r1]
	add r1, r1, #0x300
	ldrh r1, [r1, #0x4c]
	cmp r1, #0
	beq _02392D40
	cmp r1, #0x10
	bne _02392D4C
_02392D40:
	mov r0, #0
	bl FUN_0238AF00
	mov r0, #0
_02392D4C:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02392D58: .word 0x0380FFF4
	arm_func_end FUN_02392D10

	arm_func_start FUN_02392D5C
FUN_02392D5C: ; 0x02392D5C
	ldrh r2, [r1, #0xe]
	add r2, r1, r2, lsl #1
	add r3, r2, #0x10
	ldrh r2, [r2, #0x10]
	strh r2, [r1, #0xc]
	mov r2, #2
	strh r2, [r3, #2]
	mov r2, #0
	strh r2, [r3, #4]
	ldrh r2, [r1, #0x18]
	strh r2, [r3, #6]
	ldr ip, _02392D90 ; =FUN_0238F86C
	bx ip
	.align 2, 0
_02392D90: .word FUN_0238F86C
	arm_func_end FUN_02392D5C

	arm_func_start FUN_02392D94
FUN_02392D94: ; 0x02392D94
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #1
	strh r0, [r1, #2]
	ldrh r0, [r4, #0x10]
	ands r0, r0, #1
	beq _02392DB4
	bl FUN_02395178
_02392DB4:
	ldrh r0, [r4, #0x10]
	ands r0, r0, #2
	beq _02392DC4
	bl FUN_02395118
_02392DC4:
	ldrh r0, [r4, #0x10]
	ands r0, r0, #4
	beq _02392DD4
	bl FUN_02395060
_02392DD4:
	mov r0, #0
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_02392D94

	arm_func_start FUN_02392DE0
FUN_02392DE0: ; 0x02392DE0
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #1
	strh r0, [r1, #2]
	ldr r0, _02392E3C ; =0x0000FFFF
	strh r0, [r4, #0xc]
	add r0, r4, #0x10
	mov r1, #0
	strh r1, [r0, #2]
	ldrh r1, [r0, #6]
	strh r1, [r0, #0x12]
	bl FUN_0238F35C
	ldr r0, _02392E40 ; =0x0380FFF4
	ldr r1, [r0]
	add r0, r1, #0x200
	add r1, r1, #0x194
	mov r2, r4
	bl FUN_023895E4
	mov r0, #0
	bl FUN_02395C00
	mov r0, #0
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02392E3C: .word 0x0000FFFF
_02392E40: .word 0x0380FFF4
	arm_func_end FUN_02392DE0

	arm_func_start FUN_02392E44
FUN_02392E44: ; 0x02392E44
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov r5, r0
	ldr r0, _02393300 ; =0x0380FFF4
	ldr r2, [r0]
	add r0, r2, #0x344
	str r0, [sp]
	add r7, r2, #0x31c
	add sl, r2, #0x17c
	ldr r0, _02393304 ; =0x0000042C
	add sb, r2, r0
	add r0, r2, #0x600
	ldrh r8, [r0, #0x90]
	mov r0, #1
	str r0, [sp, #4]
	strh r0, [r1, #2]
	ldrh r0, [r7, #0x12]
	cmp r0, #1
	movne r0, #0xb
	bne _023932F4
	ldrh r0, [sb, #0x3c]
	cmp r0, #0
	movne r0, #8
	bne _023932F4
	ldr r4, [sb, #0x44]
	ldrh r1, [r5, #0x10]
	ands r0, r1, #0x8000
	beq _02392EF8
	ands r0, r1, #2
	ldreqh r0, [sb, #0x94]
	streqh r0, [r5, #0x14]
	ldrh r0, [r5, #0x10]
	ands r0, r0, #4
	ldreqh r0, [sb, #0xa0]
	streqh r0, [r5, #0x16]
	ldrh r0, [r5, #0x10]
	ands r0, r0, #8
	ldreqh r0, [sb, #0x96]
	streqh r0, [r5, #0x18]
	ldrh r0, [r5, #0x10]
	ands r0, r0, #0x10
	ldreqh r0, [sb, #0x9c]
	streqh r0, [r5, #0x1c]
	moveq r0, #0
	streq r0, [sp, #4]
_02392EF8:
	ldrh r0, [r5, #0x1c]
	cmp r0, #0x204
	movhi r0, #5
	bhi _023932F4
	mov r1, #2
	mov r6, #0
	b _02392F28
_02392F14:
	ldrh r0, [r5, #0x16]
	ands r0, r0, r1
	addne r6, r6, #1
	mov r0, r1, lsl #0x11
	mov r1, r0, lsr #0x10
_02392F28:
	cmp r1, #0
	bne _02392F14
	ldrh r0, [r5, #0x14]
	strh r0, [sb, #0x94]
	ldrh r2, [r5, #0x14]
	ands r0, r2, #0x8000
	beq _02392F74
	ldr r0, _02393308 ; =0x00007FFF
	and r0, r2, r0
	strh r0, [r5, #0x14]
	ldrh r0, [r5, #0x14]
	sub r0, r0, #0xd0
	mov r2, r0, lsr #2
	mov r0, #0xea
	strh r0, [r4, #0xe]
	cmp r2, #0x10000
	bls _02392FC0
	mov r0, #5
	b _023932F4
_02392F74:
	ands r0, r8, #2
	movne fp, #1
	movne r1, #2
	movne r0, #6
	moveq fp, #0
	moveq r1, fp
	moveq r0, fp
	add r2, r2, fp
	ldr r3, _0239330C ; =0x00000206
	add r3, fp, r3
	cmp r2, r3
	movhi r0, #5
	bhi _023932F4
	mov r3, r2, lsl #2
	add r3, r3, #0xd0
	add r1, r1, r3
	strh r1, [r5, #0x14]
	add r0, r0, #0xea
	strh r0, [r4, #0xe]
_02392FC0:
	add r0, r2, #9
	bic fp, r0, #1
	mul r0, fp, r6
	str r0, [sp, #8]
	add r0, sl, #0xc
	ldr r1, [sp, #8]
	add r1, r1, #0x1a
	bl FUN_023896DC
	str r0, [sb, #0x90]
	ldr r0, [sb, #0x90]
	cmp r0, #0
	moveq r0, #8
	beq _023932F4
	mov r0, #1
	strh r0, [sb, #0x3c]
	ldrh r0, [sb, #0x3e]
	add r0, r0, #1
	strh r0, [sb, #0x3e]
	ldrh r0, [r5, #0x18]
	strh r0, [sb, #0x96]
	ldrh r0, [r5, #0x16]
	strh r0, [sb, #0x98]
	mov r1, #0
	strh r1, [sb, #0x9a]
	ldrh r0, [r5, #0x1c]
	strh r0, [sb, #0x9c]
	ldrh r0, [r5, #0x12]
	strh r0, [sb, #0x9e]
	strh r1, [r4]
	ldrh r0, [r5, #0x16]
	strh r0, [r4, #2]
	strh r1, [r4, #4]
	mov r0, #0x14
	strh r0, [r4, #8]
	ldrh r0, [r5, #0x1c]
	add r0, r0, #0x22
	strh r0, [r4, #0xa]
	mov r0, #0x228
	strh r0, [r4, #0xc]
	ldrh r1, [r4, #0xe]
	ldrh r0, [r5, #0x14]
	add r0, r0, #0xa
	mla r1, r0, r6, r1
	strh r1, [r4, #0xe]
	add r0, r4, #0x10
	ldr r1, _02393310 ; =_023992F4
	ldr r2, [sp]
	add r2, r2, #0x64
	add r3, r7, #8
	bl FUN_0238AE64
	ldrh r0, [r5, #0x10]
	ands r0, r0, #0x8000
	beq _023930A8
	ldrh r1, [r4, #0x22]
	ldr r0, _02393314 ; =0x0000FFFF
	cmp r1, r0
	movne r7, #0x4000
	bne _023930B4
_023930A8:
	mov r7, #0
	ldr r0, _02393314 ; =0x0000FFFF
	strh r0, [r4, #0x22]
_023930B4:
	ldrh r0, [r5, #0x14]
	strh r0, [r4, #0x24]
	ldrh r0, [r5, #0x16]
	strh r0, [r4, #0x26]
	ldrh r0, [r5, #0x1e]
	strh r0, [r4, #0x28]
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _023930F8
	ldrh r0, [r5, #0x1c]
	cmp r0, #0
	beq _023930F8
	bl FUN_0238AC24
	add r0, r4, #0x2a
	ldr r1, [r5, #0x20]
	ldrh r2, [r5, #0x1c]
	bl FUN_02389D2C
_023930F8:
	ands r0, r8, #4
	beq _02393128
	add r1, r4, #0x28
	ldrh r0, [r5, #0x1c]
	add r0, r0, #2
	add r0, r1, r0
	add r0, r0, #3
	bic r1, r0, #3
	ldr r0, _02393318 ; =0x0000B6B8
	strh r0, [r1]
	ldr r0, _0239331C ; =0x00001D46
	strh r0, [r1, #2]
_02393128:
	mov r1, #0x184
	ldr r0, [sb, #0x90]
	strh r1, [r0, #0xc]
	ldr r0, [sp, #8]
	add r0, r0, #0xb
	mov r1, r0, lsr #1
	ldr r0, [sb, #0x90]
	strh r1, [r0, #0xe]
	ldrh r1, [r5, #0x16]
	ldr r0, [sb, #0x90]
	strh r1, [r0, #0x10]
	ldr r0, [sb, #0x90]
	strh r6, [r0, #0x14]
	ldr r0, [sb, #0x90]
	strh fp, [r0, #0x16]
	mov r0, #0
	ldr r1, [sb, #0x90]
	strh r0, [r1, #0x18]
	ldr r1, [sb, #0x90]
	add r3, r1, #0x1a
	mov r2, #1
	mov r1, #2
	ldr r8, _02393314 ; =0x0000FFFF
	b _023931B0
_02393188:
	ldrh ip, [r5, #0x16]
	ands ip, ip, r1
	strneh r8, [r3]
	strneh r0, [r3, #2]
	strneh r0, [r3, #6]
	strneh r2, [r3, #4]
	addne r3, r3, fp
	mov r1, r1, lsl #0x11
	mov r1, r1, lsr #0x10
	add r2, r2, #1
_023931B0:
	cmp r1, #0
	bne _02393188
	ldrh r1, [r5, #0x14]
	ldr r0, _02393320 ; =0x048080C4
	strh r1, [r0]
	ldrh r1, [r4, #0xe]
	ldr r0, _02393324 ; =0x048080C0
	strh r1, [r0]
	ldrh r0, [r5, #0x1a]
	rsb r8, r0, #0x10000
	ldrh r0, [r5, #0x18]
	cmp r0, #0
	bne _02393254
	ldrh r0, [r5, #0x1c]
	add r0, r0, #0x22
	mov r0, r0, lsl #2
	add r2, r0, #0x60
	ldr r0, _02393328 ; =0x04808000
	ldrh r0, [r0]
	cmp r0, #0x1440
	addne r2, r2, #0x3e8
	ldrh r0, [r5, #0x14]
	mul r1, r0, r6
	add r0, r1, #0x388
	add r0, r2, r0
	add r0, r0, #0x32
	mov r1, #0xa
	bl FUN_03801A54
	mov r5, r0
	bl FUN_037FAD78
	ldr r1, _0239332C ; =0x04808118
	strh r5, [r1]
	ldr r1, _02393330 ; =0x00003FFF
	and r1, r4, r1
	mov r1, r1, lsr #1
	orr r1, r1, #0x8000
	orr r2, r1, r7
	ldr r1, _02393334 ; =0x04808090
	strh r2, [r1]
	bl FUN_037FAD8C
	b _023932F0
_02393254:
	bl FUN_037FAD78
	mov r6, r0
	ldr r0, _02393338 ; =0x048080F8
	ldrh r0, [r0]
	add r1, r8, r0
	ldr r0, _02393314 ; =0x0000FFFF
	and r0, r1, r0
	mov r1, #0xa
	bl FUN_03801A54
	ldrh r2, [r5, #0x18]
	add r1, r0, #3
	cmp r1, r2
	bhs _023932C0
	sub r0, r2, r0
	sub r1, r0, #1
	ldr r0, _0239332C ; =0x04808118
	strh r1, [r0]
	ldr r0, _02393330 ; =0x00003FFF
	and r0, r4, r0
	mov r0, r0, lsr #1
	orr r0, r0, #0x8000
	orr r1, r0, r7
	ldr r0, _02393334 ; =0x04808090
	strh r1, [r0]
	mov r0, r6
	bl FUN_037FAD8C
	b _023932F0
_023932C0:
	mov r0, r6
	bl FUN_037FAD8C
	add r0, sl, #0xc
	ldr r1, [sb, #0x90]
	bl FUN_02389658
	mov r0, #0
	strh r0, [sb, #0x3c]
	ldrh r0, [sb, #0x3e]
	sub r0, r0, #1
	strh r0, [sb, #0x3e]
	mov r0, #5
	b _023932F4
_023932F0:
	mov r0, #0
_023932F4:
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_02393300: .word 0x0380FFF4
_02393304: .word 0x0000042C
_02393308: .word 0x00007FFF
_0239330C: .word 0x00000206
_02393310: .word _023992F4
_02393314: .word 0x0000FFFF
_02393318: .word 0x0000B6B8
_0239331C: .word 0x00001D46
_02393320: .word 0x048080C4
_02393324: .word 0x048080C0
_02393328: .word 0x04808000
_0239332C: .word 0x04808118
_02393330: .word 0x00003FFF
_02393334: .word 0x04808090
_02393338: .word 0x048080F8
	arm_func_end FUN_02392E44

	arm_func_start FUN_0239333C
FUN_0239333C: ; 0x0239333C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov sl, r0
	ldr r0, _023934C4 ; =0x0380FFF4
	ldr r3, [r0]
	add r2, r3, #0x344
	add r8, r3, #0x31c
	ldr r0, _023934C8 ; =0x0000042C
	add r7, r3, r0
	add r0, r3, #0x600
	ldrh r6, [r0, #0x90]
	mov sb, #1
	strh sb, [r1, #2]
	ldrh r0, [r8, #0x12]
	cmp r0, #2
	movne r0, #0xb
	bne _023934B8
	ldrh r0, [sl, #0x10]
	cmp r0, #0x204
	movhi r0, #5
	bhi _023934B8
	ldrh r0, [r7, #0x50]
	cmp r0, #0
	moveq sb, #0
	mov r0, #0x14
	mul r4, sb, r0
	add r1, r7, #0x50
	add fp, r1, r4
	ldrh r1, [r1, r4]
	cmp r1, #0
	movne r0, #8
	bne _023934B8
	ldr r1, _023934CC ; =0x04808094
	ldrh r1, [r1]
	ands r1, r1, #0x8000
	movne r0, #8
	bne _023934B8
	add r1, r7, r4
	ldr r5, [r1, #0x58]
	mov r1, #0
	strh r1, [r5]
	strh r1, [r5, #4]
	strh r0, [r5, #8]
	ldrh r0, [sl, #0x10]
	add r0, r0, #0x1e
	strh r0, [r5, #0xa]
	mov r0, #0x118
	strh r0, [r5, #0xc]
	add r0, r5, #0x10
	add r1, r2, #0x64
	add r2, r8, #8
	ldr r3, _023934D0 ; =_023992E4
	bl FUN_0238AE64
	ldrh r0, [sl, #0x12]
	strh r0, [r5, #0x24]
	ldrh r0, [sl, #0x10]
	cmp r0, #0
	beq _02393440
	cmp sb, #0
	bne _02393430
	bl FUN_0238AC24
_02393430:
	add r0, r5, #0x26
	ldr r1, [sl, #0x14]
	ldrh r2, [sl, #0x10]
	bl FUN_02389D2C
_02393440:
	ands r0, r6, #4
	beq _02393470
	add r1, r5, #0x24
	ldrh r0, [sl, #0x10]
	add r0, r0, #2
	add r0, r1, r0
	add r0, r0, #3
	bic r1, r0, #3
	ldr r0, _023934D4 ; =0x0000B6B8
	strh r0, [r1]
	ldr r0, _023934D8 ; =0x00001D46
	strh r0, [r1, #2]
_02393470:
	mov r0, #1
	strh r0, [fp]
	add r1, r7, #0x52
	ldrh r0, [r1, r4]
	add r0, r0, #1
	strh r0, [r1, r4]
	ldr r0, _023934DC ; =0x00003FFF
	and r0, r5, r0
	mov r0, r0, lsr #1
	orr r1, r0, #0x8000
	ldr r0, _023934CC ; =0x04808094
	strh r1, [r0]
	ldrh r0, [r8, #0x1e]
	mov r0, r0, lsl #0x18
	movs r0, r0, lsr #0x1f
	bne _023934B4
	bl FUN_0238AFC8
_023934B4:
	mov r0, #0
_023934B8:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_023934C4: .word 0x0380FFF4
_023934C8: .word 0x0000042C
_023934CC: .word 0x04808094
_023934D0: .word _023992E4
_023934D4: .word 0x0000B6B8
_023934D8: .word 0x00001D46
_023934DC: .word 0x00003FFF
	arm_func_end FUN_0239333C

	arm_func_start FUN_023934E0
FUN_023934E0: ; 0x023934E0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	mov sb, r0
	ldr r0, _023936BC ; =0x0380FFF4
	ldr r0, [r0]
	add r8, r0, #0x344
	add r7, r0, #0x31c
	add r6, r0, #0x17c
	add r5, sb, #0x10
	ldrh r1, [sb, #0x16]
	ldr r0, _023936C0 ; =0x000005E4
	cmp r1, r0
	movhi r0, #5
	bhi _023936B0
	ldrh r0, [r7, #0x12]
	cmp r0, #1
	bne _0239354C
	add r0, r5, #0x18
	bl FUN_0238F598
	mov r4, r0
	cmp r4, #0xff
	beq _02393544
	bl FUN_0238EF80
	cmp r0, #0x40
	beq _02393550
_02393544:
	mov r0, #0xa
	b _023936B0
_0239354C:
	ldrh r4, [r8, #0x88]
_02393550:
	strh r4, [r5, #2]
	ldr r0, _023936BC ; =0x0380FFF4
	ldr r0, [r0]
	ldr r0, [r0, #0x3ec]
	strh r0, [r5, #4]
	ldrh r1, [r5, #0xe]
	ands r0, r1, #0xff
	strneh r1, [r5, #0x10]
	movne r0, #0
	strneh r0, [r5, #0xe]
	bne _02393588
	mov r0, r4
	bl FUN_0238EEC4
	strh r0, [r5, #0x10]
_02393588:
	ldrh r0, [r5, #6]
	cmp r0, #0
	bne _023935B0
	ldrh r0, [r8, #0x8a]
	orr r0, r0, #0x40
	bic r0, r0, #0x4000
	strh r0, [r5, #0x14]
	mov r0, #0x1c
	strh r0, [r5, #0x12]
	b _023935D8
_023935B0:
	ldrh r0, [r8, #0x8a]
	strh r0, [r5, #0x14]
	ldrh r0, [r7, #0x18]
	cmp r0, #0
	ldreqh r0, [r5, #6]
	addeq r0, r0, #0x1c
	streqh r0, [r5, #0x12]
	ldrneh r0, [r5, #6]
	addne r0, r0, #0x24
	strneh r0, [r5, #0x12]
_023935D8:
	ldrh r0, [r7, #0x12]
	cmp r0, #1
	beq _023935F8
	cmp r0, #2
	beq _02393674
	cmp r0, #3
	beq _02393674
	b _023936AC
_023935F8:
	add r0, r5, #0x24
	add r1, r5, #0x1e
	bl FUN_0238AEE4
	add r0, r5, #0x1e
	add r1, r8, #0x64
	bl FUN_0238AEE4
	cmp r4, #0
	bne _02393650
	add r0, r6, #0x84
	mov r1, sb
	bl FUN_0238F3EC
	ldr r0, _023936BC ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x500
	ldrh r1, [r0, #0x2e]
	ldrh r0, [r0, #0x32]
	mvn r0, r0
	ands r0, r1, r0
	bne _023936AC
	mov r0, #2
	bl FUN_02395C00
	b _023936AC
_02393650:
	mov r0, r5
	bl FUN_0238F35C
	add r0, r6, #0x84
	add r1, r6, #0x18
	mov r2, sb
	bl FUN_023895E4
	mov r0, #0
	bl FUN_02395C00
	b _023936AC
_02393674:
	add r0, r5, #0x24
	add r1, r5, #0x18
	bl FUN_0238AEE4
	add r0, r5, #0x18
	add r1, r8, #0x64
	bl FUN_0238AEE4
	mov r0, r5
	bl FUN_0238F35C
	add r0, r6, #0x84
	add r1, r6, #0x18
	mov r2, sb
	bl FUN_023895E4
	mov r0, #0
	bl FUN_02395C00
_023936AC:
	mov r0, #0x81
_023936B0:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	.align 2, 0
_023936BC: .word 0x0380FFF4
_023936C0: .word 0x000005E4
	arm_func_end FUN_023934E0

	arm_func_start FUN_023936C4
FUN_023936C4: ; 0x023936C4
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	ldr r0, _023939B8 ; =0x0380FFF4
	ldr r7, [r0]
	ldr r0, _023939BC ; =0x0000042C
	add r6, r7, r0
	add r5, r7, #0x344
	add r4, r7, #0x31c
	mov r0, #0
	mov r1, r6
	mov r2, #0xb0
	bl FUN_037FAF6C
	mov r1, #0
	add r0, r7, #0x400
	strh r1, [r0, #0x2c]
	str r1, [r6, #0xc]
	strh r1, [r6, #0x14]
	str r1, [r6, #0x20]
	strh r1, [r6, #0x28]
	str r1, [r6, #0x34]
	ldr r0, _023939C0 ; =0x0000FFFF
	strh r0, [r6, #0xa2]
	strh r0, [r6, #0xa4]
	ldrh r0, [r5, #0xc]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _02393998
_02393730: ; jump table
	b _02393740 ; case 0
	b _023937C0 ; case 1
	b _0239386C ; case 2
	b _0239391C ; case 3
_02393740:
	ldr r0, _023939C4 ; =0x04804170
	str r0, [r6, #8]
	ldr r0, _023939C8 ; =0x04804028
	str r0, [r6, #0x1c]
	ldr r0, _023939CC ; =0x04804000
	str r0, [r6, #0x30]
	ldr r0, _023939D0 ; =FUN_023958FC
	str r0, [r6, #0x10]
	ldr r0, _023939D4 ; =FUN_023953E0
	str r0, [r6, #0x24]
	ldr r0, _023939D8 ; =FUN_0239536C
	str r0, [r6, #0x38]
	ldr r2, _023939DC ; =0x0000B6B8
	ldr r0, _023939E0 ; =0x04804024
	strh r2, [r0]
	ldr r1, _023939E4 ; =0x00001D46
	ldr r0, _023939E8 ; =0x04804026
	strh r1, [r0]
	ldr r0, _023939EC ; =0x0480416C
	strh r2, [r0]
	ldr r0, _023939F0 ; =0x0480416E
	strh r1, [r0]
	ldr r0, _023939F4 ; =0x04804790
	strh r2, [r0]
	ldr r0, _023939F8 ; =0x04804792
	strh r1, [r0]
	mov r0, #8
	strh r0, [r5, #0x8a]
	mov r1, #1
	ldr r0, _023939FC ; =0x048080AE
	strh r1, [r0]
	b _02393998
_023937C0:
	ldr r0, _02393A00 ; =0x04804AA0
	str r0, [r6, #8]
	ldr r0, _02393A04 ; =0x04804958
	str r0, [r6, #0x1c]
	ldr r0, _02393A08 ; =0x04804334
	str r0, [r6, #0x30]
	ldr r0, _023939D0 ; =FUN_023958FC
	str r0, [r6, #0x10]
	ldr r0, _023939D4 ; =FUN_023953E0
	str r0, [r6, #0x24]
	ldr r0, _02393A0C ; =FUN_0239524C
	str r0, [r6, #0x38]
	ldr r2, _02393A10 ; =0x04804238
	str r2, [r6, #0x80]
	ldr r0, _023939CC ; =0x04804000
	str r0, [r6, #0x44]
	ldr r1, _023939DC ; =0x0000B6B8
	ldr r0, _02393A14 ; =0x04804234
	strh r1, [r0]
	ldr r0, _023939E4 ; =0x00001D46
	ldr r3, _02393A18 ; =0x04804236
	strh r0, [r3]
	ldr r3, _02393A1C ; =0x04804330
	strh r1, [r3]
	ldr r3, _02393A20 ; =0x04804332
	strh r0, [r3]
	ldr r3, _02393A24 ; =0x04804954
	strh r1, [r3]
	ldr r3, _02393A28 ; =0x04804956
	strh r0, [r3]
	ldr r3, _02393A2C ; =0x04804A9C
	strh r1, [r3]
	ldr r3, _02393A30 ; =0x04804A9E
	strh r0, [r3]
	ldr r3, _02393A34 ; =0x048050C0
	strh r1, [r3]
	ldr r1, _02393A38 ; =0x048050C2
	strh r0, [r1]
	mov r0, #0x208
	strh r0, [r5, #0x8a]
	str r2, [r6, #0x80]
	bl FUN_02394704
	b _02393998
_0239386C:
	ldr r0, _02393A3C ; =0x048045D8
	str r0, [r6, #8]
	ldr r0, _02393A40 ; =0x04804490
	str r0, [r6, #0x1c]
	ldr r0, _02393A44 ; =0x04804468
	str r0, [r6, #0x30]
	ldr r0, _023939D0 ; =FUN_023958FC
	str r0, [r6, #0x10]
	ldr r0, _023939D4 ; =FUN_023953E0
	str r0, [r6, #0x24]
	ldr r0, _023939D8 ; =FUN_0239536C
	str r0, [r6, #0x38]
	ldr r0, _023939CC ; =0x04804000
	str r0, [r6, #0x58]
	ldr r0, _02393A14 ; =0x04804234
	str r0, [r6, #0x6c]
	ldr r2, _023939DC ; =0x0000B6B8
	ldr r0, _02393A48 ; =0x04804230
	strh r2, [r0]
	ldr r1, _023939E4 ; =0x00001D46
	ldr r0, _02393A4C ; =0x04804232
	strh r1, [r0]
	ldr r0, _02393A50 ; =0x04804464
	strh r2, [r0]
	ldr r0, _02393A54 ; =0x04804466
	strh r1, [r0]
	ldr r0, _02393A58 ; =0x0480448C
	strh r2, [r0]
	ldr r0, _02393A5C ; =0x0480448E
	strh r1, [r0]
	ldr r0, _02393A60 ; =0x048045D4
	strh r2, [r0]
	ldr r0, _02393A64 ; =0x048045D6
	strh r1, [r0]
	ldr r0, _02393A68 ; =0x04804BF8
	strh r2, [r0]
	ldr r0, _02393A6C ; =0x04804BFA
	strh r1, [r0]
	mov r0, #0x108
	strh r0, [r5, #0x8a]
	mov r1, #0xd
	ldr r0, _023939FC ; =0x048080AE
	strh r1, [r0]
	b _02393998
_0239391C:
	ldr r0, _023939C4 ; =0x04804170
	str r0, [r6, #8]
	ldr r0, _023939C8 ; =0x04804028
	str r0, [r6, #0x1c]
	ldr r0, _023939CC ; =0x04804000
	str r0, [r6, #0x30]
	ldr r0, _023939D0 ; =FUN_023958FC
	str r0, [r6, #0x10]
	ldr r0, _023939D4 ; =FUN_023953E0
	str r0, [r6, #0x24]
	ldr r0, _023939D8 ; =FUN_0239536C
	str r0, [r6, #0x38]
	ldr r2, _023939DC ; =0x0000B6B8
	ldr r0, _023939E0 ; =0x04804024
	strh r2, [r0]
	ldr r1, _023939E4 ; =0x00001D46
	ldr r0, _023939E8 ; =0x04804026
	strh r1, [r0]
	ldr r0, _023939EC ; =0x0480416C
	strh r2, [r0]
	ldr r0, _023939F0 ; =0x0480416E
	strh r1, [r0]
	ldr r0, _023939F4 ; =0x04804790
	strh r2, [r0]
	ldr r0, _023939F8 ; =0x04804792
	strh r1, [r0]
	mov r0, #0x108
	strh r0, [r5, #0x8a]
	mov r1, #0xd
	ldr r0, _023939FC ; =0x048080AE
	strh r1, [r0]
_02393998:
	ldrh r0, [r4, #0x18]
	cmp r0, #0
	ldrneh r0, [r5, #0x8a]
	orrne r0, r0, #0x4000
	strneh r0, [r5, #0x8a]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_023939B8: .word 0x0380FFF4
_023939BC: .word 0x0000042C
_023939C0: .word 0x0000FFFF
_023939C4: .word 0x04804170
_023939C8: .word 0x04804028
_023939CC: .word 0x04804000
_023939D0: .word FUN_023958FC
_023939D4: .word FUN_023953E0
_023939D8: .word FUN_0239536C
_023939DC: .word 0x0000B6B8
_023939E0: .word 0x04804024
_023939E4: .word 0x00001D46
_023939E8: .word 0x04804026
_023939EC: .word 0x0480416C
_023939F0: .word 0x0480416E
_023939F4: .word 0x04804790
_023939F8: .word 0x04804792
_023939FC: .word 0x048080AE
_02393A00: .word 0x04804AA0
_02393A04: .word 0x04804958
_02393A08: .word 0x04804334
_02393A0C: .word FUN_0239524C
_02393A10: .word 0x04804238
_02393A14: .word 0x04804234
_02393A18: .word 0x04804236
_02393A1C: .word 0x04804330
_02393A20: .word 0x04804332
_02393A24: .word 0x04804954
_02393A28: .word 0x04804956
_02393A2C: .word 0x04804A9C
_02393A30: .word 0x04804A9E
_02393A34: .word 0x048050C0
_02393A38: .word 0x048050C2
_02393A3C: .word 0x048045D8
_02393A40: .word 0x04804490
_02393A44: .word 0x04804468
_02393A48: .word 0x04804230
_02393A4C: .word 0x04804232
_02393A50: .word 0x04804464
_02393A54: .word 0x04804466
_02393A58: .word 0x0480448C
_02393A5C: .word 0x0480448E
_02393A60: .word 0x048045D4
_02393A64: .word 0x048045D6
_02393A68: .word 0x04804BF8
_02393A6C: .word 0x04804BFA
	arm_func_end FUN_023936C4

	arm_func_start FUN_02393A70
FUN_02393A70: ; 0x02393A70
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	ldr r1, _02393B8C ; =0x0380FFF4
	ldr r1, [r1]
	add r6, r1, #0x344
	add r5, r1, #0x31c
	mov r4, #0
	mov r1, #0xdd
	bl FUN_02389C88
	add r0, r7, #1
	ldr r1, _02393B8C ; =0x0380FFF4
	ldr r1, [r1]
	add r1, r1, #0x300
	ldrh r1, [r1, #0xe4]
	add r1, r1, #8
	and r1, r1, #0xff
	bl FUN_02389C88
	add r0, r7, #2
	mov r1, r4
	bl FUN_02389C88
	add r0, r7, #3
	mov r1, #9
	bl FUN_02389C88
	add r0, r7, #4
	mov r1, #0xbf
	bl FUN_02389C88
	add r0, r7, #5
	mov r1, r4
	bl FUN_02389C88
	add r0, r7, #6
	ldrh r1, [r5, #0x20]
	and r1, r1, #0xff
	bl FUN_02389C88
	add r0, r7, #7
	ldrh r1, [r5, #0x20]
	mov r1, r1, asr #8
	and r1, r1, #0xff
	bl FUN_02389C88
	ldr r0, _02393B90 ; =0x0380FFF0
	ldrh r5, [r0]
	add r0, r7, #8
	and r1, r5, #0xff
	bl FUN_02389C88
	add r0, r7, #9
	mov r1, r5, lsr #8
	and r1, r1, #0xff
	bl FUN_02389C88
	add r4, r4, #0xa
	ldrh r0, [r6, #0xa0]
	cmp r0, #0
	beq _02393B80
	ldr r5, [r6, #0x9c]
	ldrh r0, [r6, #0xa2]
	ands r0, r0, #1
	addne r5, r5, #1
	mov r8, #0
	b _02393B74
_02393B54:
	mov r0, r5
	bl FUN_02389C68
	mov r1, r0
	add r0, r7, r4
	bl FUN_02389C88
	add r4, r4, #1
	add r5, r5, #1
	add r8, r8, #1
_02393B74:
	ldrh r0, [r6, #0xa0]
	cmp r8, r0
	blo _02393B54
_02393B80:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_02393B8C: .word 0x0380FFF4
_02393B90: .word 0x0380FFF0
	arm_func_end FUN_02393A70

	arm_func_start FUN_02393B94
FUN_02393B94: ; 0x02393B94
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #3
	bl FUN_02389C88
	add r0, r4, #1
	mov r1, #1
	bl FUN_02389C88
	add r0, r4, #2
	ldr r1, _02393BD8 ; =0x0380FFF4
	ldr r1, [r1]
	add r1, r1, #0x300
	ldrh r1, [r1, #0xbe]
	and r1, r1, #0xff
	bl FUN_02389C88
	mov r0, #3
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02393BD8: .word 0x0380FFF4
	arm_func_end FUN_02393B94

	arm_func_start FUN_02393BDC
FUN_02393BDC: ; 0x02393BDC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	mov sb, r0
	ldr r1, _02393C8C ; =0x0380FFF4
	ldr r1, [r1]
	add r8, r1, #0x344
	mov r7, #0
	mov r1, #1
	bl FUN_02389C88
	add r7, r7, #2
	mov r6, #0
	ldr r4, _02393C90 ; =_023992FC
	mov r5, #1
_02393C10:
	mov r1, r5, lsl r6
	ldrh r0, [r8, #0x62]
	ands r0, r0, r1
	beq _02393C60
	ldrh r0, [r8, #0x60]
	ands r0, r0, r1
	beq _02393C48
	add r0, sb, r7
	mov r1, r6, lsl #1
	ldrh r1, [r4, r1]
	orr r1, r1, #0x80
	and r1, r1, #0xff
	bl FUN_02389C88
	b _02393C5C
_02393C48:
	add r0, sb, r7
	mov r1, r6, lsl #1
	ldrh r1, [r4, r1]
	and r1, r1, #0xff
	bl FUN_02389C88
_02393C5C:
	add r7, r7, #1
_02393C60:
	add r6, r6, #1
	cmp r6, #0x10
	blo _02393C10
	add r0, sb, #1
	sub r1, r7, #2
	and r1, r1, #0xff
	bl FUN_02389C88
	mov r0, r7
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	.align 2, 0
_02393C8C: .word 0x0380FFF4
_02393C90: .word _023992FC
	arm_func_end FUN_02393BDC

	arm_func_start FUN_02393C94
FUN_02393C94: ; 0x02393C94
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r0
	ldr r1, _02393D04 ; =0x0380FFF4
	ldr r1, [r1]
	add r5, r1, #0x344
	mov r8, #0
	ldrh r7, [r5, #0x1e]
	mov r1, r8
	bl FUN_02389C88
	add r0, r4, #1
	and r1, r7, #0xff
	bl FUN_02389C88
	add r8, r8, #2
	mov r6, #0
	add r5, r5, #0x20
	b _02393CF0
_02393CD4:
	add r0, r5, r6
	bl FUN_02389C68
	mov r1, r0
	add r0, r4, r8
	bl FUN_02389C88
	add r8, r8, #1
	add r6, r6, #1
_02393CF0:
	cmp r6, r7
	blo _02393CD4
	mov r0, r8
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_02393D04: .word 0x0380FFF4
	arm_func_end FUN_02393C94

	arm_func_start FUN_02393D08
FUN_02393D08: ; 0x02393D08
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	ldr r0, _02393D78 ; =0x0380FFF4
	ldr r0, [r0]
	ldr r7, [r0, #0x1a0]
	mvn r6, #0
	b _02393D60
_02393D2C:
	add r1, r7, #0x10
	ldrh r0, [r1, #0x14]
	cmp r0, r4
	bne _02393D54
	add r0, r1, #0x18
	mov r1, r5
	bl FUN_0238AB18
	cmp r0, #0
	movne r0, #1
	bne _02393D6C
_02393D54:
	mov r0, r7
	bl FUN_023893EC
	mov r7, r0
_02393D60:
	cmp r7, r6
	bne _02393D2C
	mov r0, #0
_02393D6C:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_02393D78: .word 0x0380FFF4
	arm_func_end FUN_02393D08

	arm_func_start FUN_02393D7C
FUN_02393D7C: ; 0x02393D7C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	mov r0, #0
	mov r1, r5
	mov r2, #0x2c
	bl FUN_037FAF38
	bl FUN_0238A9F0
	strh r0, [r5, #0x10]
	ldr r0, _02393DCC ; =0x0380FFF4
	ldr r3, [r0]
	add r0, r5, #0x18
	mov r1, r4
	add r2, r3, #0x324
	add r3, r3, #0x3a8
	bl FUN_0238AE64
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_02393DCC: .word 0x0380FFF4
	arm_func_end FUN_02393D7C

	arm_func_start FUN_02393DD0
FUN_02393DD0: ; 0x02393DD0
	ldr r2, _02393E1C ; =0x0380FFF4
	ldr r1, [r2]
	ldr r3, [r1, #0x45c]
	mov r1, #0
	strh r1, [r3]
	strh r1, [r3, #2]
	strh r1, [r3, #4]
	mov r1, #0x14
	strh r1, [r3, #0xa]
	mov r1, #0xa4
	strh r1, [r3, #0xc]
	orr r0, r0, #0xc000
	strh r0, [r3, #0xe]
	ldr r2, [r2]
	add r0, r3, #0x10
	add r1, r2, #0x3a8
	add r2, r2, #0x324
	ldr ip, _02393E20 ; =FUN_0238AEB0
	bx ip
	.align 2, 0
_02393E1C: .word 0x0380FFF4
_02393E20: .word FUN_0238AEB0
	arm_func_end FUN_02393DD0

	arm_func_start FUN_02393E24
FUN_02393E24: ; 0x02393E24
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	cmp r2, #0
	bne _02393E48
	bl FUN_023945C8
	cmp r0, #0
	moveq r0, #0
	beq _02393EB0
_02393E48:
	ldr r0, _02393EB8 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x188
	mov r1, #0x36
	bl FUN_023896DC
	movs r4, r0
	bne _02393E74
	mov r0, #2
	bl FUN_02389904
	mov r0, r4
	b _02393EB0
_02393E74:
	ldr r0, _02393EBC ; =0x0000FFFF
	strh r0, [r4, #0xc]
	add r4, r4, #0x10
	mov r0, r4
	mov r1, r6
	bl FUN_02393D7C
	strh r5, [r4, #0x2c]
	mov r0, #2
	strh r0, [r4, #6]
	ldrh r0, [r4, #6]
	add r0, r0, #0x1c
	strh r0, [r4, #0x12]
	mov r0, #0xc0
	strh r0, [r4, #0x14]
	mov r0, r4
_02393EB0:
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_02393EB8: .word 0x0380FFF4
_02393EBC: .word 0x0000FFFF
	arm_func_end FUN_02393E24

	arm_func_start FUN_02393EC0
FUN_02393EC0: ; 0x02393EC0
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	cmp r2, #0
	beq _02393EE4
	bl FUN_023945C8
	cmp r0, #0
	moveq r0, #0
	beq _02393F74
_02393EE4:
	ldr r0, _02393F7C ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x188
	add r1, r5, #0x3d
	bl FUN_023896DC
	movs r4, r0
	bne _02393F10
	mov r0, #2
	bl FUN_02389904
	mov r0, r4
	b _02393F74
_02393F10:
	ldr r0, _02393F80 ; =0x0000FFFF
	strh r0, [r4, #0xc]
	add r4, r4, #0x10
	mov r0, r4
	mov r1, r6
	bl FUN_02393D7C
	cmp r5, #0
	beq _02393F54
	add r0, r4, #0x32
	mov r1, #0x10
	bl FUN_02389C88
	add r0, r4, #0x33
	and r1, r5, #0xff
	bl FUN_02389C88
	add r0, r5, #2
	mov r0, r0, lsl #0x10
	mov r5, r0, lsr #0x10
_02393F54:
	add r0, r5, #6
	strh r0, [r4, #6]
	ldrh r0, [r4, #6]
	add r0, r0, #0x1c
	strh r0, [r4, #0x12]
	mov r0, #0xb0
	strh r0, [r4, #0x14]
	mov r0, r4
_02393F74:
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_02393F7C: .word 0x0380FFF4
_02393F80: .word 0x0000FFFF
	arm_func_end FUN_02393EC0

	arm_func_start FUN_02393F84
FUN_02393F84: ; 0x02393F84
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, _02394064 ; =0x0380FFF4
	ldr r0, [r0]
	add r5, r0, #0x344
	bl FUN_023945C8
	cmp r0, #0
	moveq r0, #0
	beq _0239405C
	ldr r0, _02394064 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x188
	ldrh r1, [r5, #0xa0]
	add r1, r1, #0x78
	bl FUN_023896DC
	movs r4, r0
	bne _02393FD8
	mov r0, #2
	bl FUN_02389904
	mov r0, r4
	b _0239405C
_02393FD8:
	ldr r0, _02394068 ; =0x0000FFFF
	strh r0, [r4, #0xc]
	add r4, r4, #0x10
	mov r0, r4
	mov r1, r6
	bl FUN_02393D7C
	ldrh r0, [r5, #0x6e]
	strh r0, [r4, #0x34]
	ldrh r0, [r5, #0x7c]
	strh r0, [r4, #0x36]
	add r0, r4, #0x38
	bl FUN_02393C94
	mov r5, r0
	add r0, r4, #0x38
	add r0, r0, r5
	bl FUN_02393BDC
	add r5, r5, r0
	add r0, r4, #0x38
	add r0, r0, r5
	bl FUN_02393B94
	add r5, r5, r0
	add r0, r4, #0x38
	add r0, r0, r5
	bl FUN_02393A70
	add r0, r5, r0
	add r0, r0, #0xc
	strh r0, [r4, #6]
	ldrh r0, [r4, #6]
	add r0, r0, #0x1c
	strh r0, [r4, #0x12]
	mov r0, #0x50
	strh r0, [r4, #0x14]
	mov r0, r4
_0239405C:
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_02394064: .word 0x0380FFF4
_02394068: .word 0x0000FFFF
	arm_func_end FUN_02393F84

	arm_func_start FUN_0239406C
FUN_0239406C: ; 0x0239406C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, _023940F4 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x188
	mov r1, #0x5a
	bl FUN_023896DC
	movs r4, r0
	bne _023940A0
	mov r0, #2
	bl FUN_02389904
	mov r0, r4
	b _023940EC
_023940A0:
	ldr r0, _023940F8 ; =0x0000FFFF
	strh r0, [r4, #0xc]
	add r5, r4, #0x10
	mov r0, r5
	mov r1, r6
	bl FUN_02393D7C
	add r0, r5, #0x2c
	bl FUN_02393C94
	mov r4, r0
	add r0, r5, #0x2c
	add r0, r0, r4
	bl FUN_02393BDC
	add r0, r4, r0
	strh r0, [r5, #6]
	add r0, r0, #0x1c
	strh r0, [r5, #0x12]
	mov r0, #0x40
	strh r0, [r5, #0x14]
	mov r0, r5
_023940EC:
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_023940F4: .word 0x0380FFF4
_023940F8: .word 0x0000FFFF
	arm_func_end FUN_0239406C

	arm_func_start FUN_023940FC
FUN_023940FC: ; 0x023940FC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	mov r8, r0
	mov r7, r1
	mov r6, r2
	ldr r0, _02394260 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x188
	mov r1, #0x60
	bl FUN_023896DC
	movs r4, r0
	bne _0239413C
	mov r0, #2
	bl FUN_02389904
	mov r0, r4
	b _02394254
_0239413C:
	ldr r0, _02394264 ; =0x0000FFFF
	strh r0, [r4, #0xc]
	add r5, r4, #0x10
	cmp r7, #0
	bne _02394164
	mov r0, r8
	bl FUN_0238F010
	movs r4, r0
	moveq r7, #0x13
	b _02394168
_02394164:
	mov r4, #0
_02394168:
	mov r0, r8
	bl FUN_0238EF24
	mov r1, r0
	mov r0, r5
	bl FUN_02393D7C
	ldr r0, _02394260 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0xc0]
	strh r0, [r5, #0x2c]
	strh r7, [r5, #0x2e]
	orr r0, r4, #0xc000
	strh r0, [r5, #0x30]
	add r0, r5, #0x32
	bl FUN_02393BDC
	add r0, r0, #6
	strh r0, [r5, #6]
	ldrh r0, [r5, #6]
	add r0, r0, #0x1c
	strh r0, [r5, #0x12]
	mov r0, #0x30
	strh r0, [r5, #0x14]
	add r1, r5, #0x14
	ldrh r0, [r5, #0x12]
	add r8, r1, r0
	cmp r6, #0
	beq _02394238
	add r0, r6, #1
	bl FUN_02389C68
	mov r7, r0
	mov r0, r6
	bl FUN_02389C68
	mov r1, r0
	mov r0, r8
	bl FUN_02389C88
	add r0, r8, #1
	and r1, r7, #0xff
	bl FUN_02389C88
	add r8, r8, #2
	mov sb, #0
	add r4, r6, #2
	b _0239422C
_02394210:
	add r0, r4, sb
	bl FUN_02389C68
	mov r1, r0
	mov r0, r8
	bl FUN_02389C88
	add r8, r8, #1
	add sb, sb, #1
_0239422C:
	cmp sb, r7
	blo _02394210
	b _02394250
_02394238:
	mov r0, r8
	mov r1, #0
	bl FUN_02389C88
	add r0, r8, #1
	mov r1, #0
	bl FUN_02389C88
_02394250:
	mov r0, r5
_02394254:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	.align 2, 0
_02394260: .word 0x0380FFF4
_02394264: .word 0x0000FFFF
	arm_func_end FUN_023940FC

	arm_func_start FUN_02394268
FUN_02394268: ; 0x02394268
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	mov r8, r0
	mov r7, r1
	mov r6, r2
	ldr r0, _023943D8 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x188
	mov r1, #0x60
	bl FUN_023896DC
	movs r4, r0
	bne _023942A8
	mov r0, #2
	bl FUN_02389904
	mov r0, r4
	b _023943CC
_023942A8:
	ldr r0, _023943DC ; =0x0000FFFF
	strh r0, [r4, #0xc]
	add r5, r4, #0x10
	cmp r7, #0
	bne _023942D0
	mov r0, r8
	bl FUN_0238F010
	movs r4, r0
	moveq r7, #0x13
	b _023942D4
_023942D0:
	mov r4, #0
_023942D4:
	mov r0, r8
	bl FUN_0238EF24
	mov r1, r0
	mov r0, r5
	bl FUN_02393D7C
	ldr r0, _023943D8 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0xc0]
	strh r0, [r5, #0x2c]
	strh r7, [r5, #0x2e]
	strh r4, [r5, #0x30]
	cmp r4, #0
	ldrneh r0, [r5, #0x30]
	orrne r0, r0, #0xc000
	strneh r0, [r5, #0x30]
	add r0, r5, #0x32
	bl FUN_02393BDC
	add r0, r0, #6
	strh r0, [r5, #6]
	ldrh r0, [r5, #6]
	add r0, r0, #0x1c
	strh r0, [r5, #0x12]
	mov r0, #0x10
	strh r0, [r5, #0x14]
	add r1, r5, #0x14
	ldrh r0, [r5, #0x12]
	add r8, r1, r0
	cmp r6, #0
	beq _023943B0
	add r0, r6, #1
	bl FUN_02389C68
	mov r7, r0
	mov r0, r6
	bl FUN_02389C68
	mov r1, r0
	mov r0, r8
	bl FUN_02389C88
	add r0, r8, #1
	add r8, r8, #2
	and r1, r7, #0xff
	bl FUN_02389C88
	mov sb, #0
	add r4, r6, #2
	b _023943A4
_02394388:
	add r0, r4, sb
	bl FUN_02389C68
	mov r1, r0
	mov r0, r8
	bl FUN_02389C88
	add sb, sb, #1
	add r8, r8, #1
_023943A4:
	cmp sb, r7
	blo _02394388
	b _023943C8
_023943B0:
	mov r0, r8
	mov r1, #0
	bl FUN_02389C88
	add r0, r8, #1
	mov r1, #0
	bl FUN_02389C88
_023943C8:
	mov r0, r5
_023943CC:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	.align 2, 0
_023943D8: .word 0x0380FFF4
_023943DC: .word 0x0000FFFF
	arm_func_end FUN_02394268

	arm_func_start FUN_023943E0
FUN_023943E0: ; 0x023943E0
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, _02394490 ; =0x0380FFF4
	ldr r0, [r0]
	add r5, r0, #0x344
	add r0, r0, #0x188
	mov r1, #0x64
	bl FUN_023896DC
	movs r4, r0
	bne _02394418
	mov r0, #2
	bl FUN_02389904
	mov r0, r4
	b _02394488
_02394418:
	ldr r0, _02394494 ; =0x0000FFFF
	strh r0, [r4, #0xc]
	add r4, r4, #0x10
	mov r0, r4
	mov r1, r6
	bl FUN_02393D7C
	ldrh r0, [r5, #0x7c]
	strh r0, [r4, #0x2c]
	ldrh r0, [r5, #0x70]
	strh r0, [r4, #0x2e]
	add r0, r4, #0x30
	add r1, r5, #0x82
	bl FUN_0238AEE4
	add r0, r4, #0x36
	bl FUN_02393C94
	mov r5, r0
	add r0, r4, #0x36
	add r0, r0, r5
	bl FUN_02393BDC
	add r0, r5, r0
	add r0, r0, #0xa
	strh r0, [r4, #6]
	ldrh r0, [r4, #6]
	add r0, r0, #0x1c
	strh r0, [r4, #0x12]
	mov r0, #0x20
	strh r0, [r4, #0x14]
	mov r0, r4
_02394488:
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_02394490: .word 0x0380FFF4
_02394494: .word 0x0000FFFF
	arm_func_end FUN_023943E0

	arm_func_start FUN_02394498
FUN_02394498: ; 0x02394498
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, _0239453C ; =0x0380FFF4
	ldr r0, [r0]
	add r5, r0, #0x344
	add r0, r0, #0x188
	mov r1, #0x5e
	bl FUN_023896DC
	movs r4, r0
	bne _023944D0
	mov r0, #2
	bl FUN_02389904
	mov r0, r4
	b _02394534
_023944D0:
	ldr r0, _02394540 ; =0x0000FFFF
	strh r0, [r4, #0xc]
	add r4, r4, #0x10
	mov r0, r4
	mov r1, r6
	bl FUN_02393D7C
	ldrh r0, [r5, #0x7c]
	strh r0, [r4, #0x2c]
	ldrh r0, [r5, #0x70]
	strh r0, [r4, #0x2e]
	add r0, r4, #0x30
	bl FUN_02393C94
	mov r5, r0
	add r0, r4, #0x30
	add r0, r0, r5
	bl FUN_02393BDC
	add r0, r5, r0
	add r0, r0, #4
	strh r0, [r4, #6]
	ldrh r0, [r4, #6]
	add r0, r0, #0x1c
	strh r0, [r4, #0x12]
	mov r0, #0
	strh r0, [r4, #0x14]
	mov r0, r4
_02394534:
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_0239453C: .word 0x0380FFF4
_02394540: .word 0x0000FFFF
	arm_func_end FUN_02394498

	arm_func_start FUN_02394544
FUN_02394544: ; 0x02394544
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	ldr r0, _023945C0 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x188
	mov r1, #0x36
	bl FUN_023896DC
	movs r4, r0
	bne _0239457C
	mov r0, #2
	bl FUN_02389904
	mov r0, r4
	b _023945B8
_0239457C:
	ldr r0, _023945C4 ; =0x0000FFFF
	strh r0, [r4, #0xc]
	add r4, r4, #0x10
	mov r0, r4
	mov r1, r6
	bl FUN_02393D7C
	strh r5, [r4, #0x2c]
	mov r0, #2
	strh r0, [r4, #6]
	ldrh r0, [r4, #6]
	add r0, r0, #0x1c
	strh r0, [r4, #0x12]
	mov r0, #0xa0
	strh r0, [r4, #0x14]
	mov r0, r4
_023945B8:
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_023945C0: .word 0x0380FFF4
_023945C4: .word 0x0000FFFF
	arm_func_end FUN_02394544

	arm_func_start FUN_023945C8
FUN_023945C8: ; 0x023945C8
	ldr r0, _023945F4 ; =0x0380FFF4
	ldr r2, [r0]
	add r0, r2, #0x100
	ldrh r1, [r0, #0xa8]
	add r0, r2, #0x500
	ldrh r0, [r0, #0x38]
	rsb r0, r0, #0x18
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	bx lr
	.align 2, 0
_023945F4: .word 0x0380FFF4
	arm_func_end FUN_023945C8

	arm_func_start FUN_023945F8
FUN_023945F8: ; 0x023945F8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r0, _023946F4 ; =0x0380FFF4
	ldr r0, [r0]
	add r5, r0, #0x344
	ldr r0, [r0, #0x4ac]
	add r1, r0, #0x24
	ldrh r0, [r5, #0x96]
	add r4, r1, r0
	ldrh r2, [r5, #0xa0]
	cmp r2, #0
	beq _02394674
	ldrh r0, [r5, #0xa2]
	ands r0, r0, #1
	beq _02394664
	add r0, r4, #0xa
	sub r0, r0, #1
	ldr r1, [r5, #0x9c]
	add r2, r2, #2
	bl FUN_02389D2C
	add r0, r4, #9
	ldr r1, _023946F8 ; =0x0380FFF0
	ldrh r1, [r1]
	mov r1, r1, asr #8
	and r1, r1, #0xff
	bl FUN_02389C88
	b _02394674
_02394664:
	add r0, r4, #0xa
	ldr r1, [r5, #0x9c]
	add r2, r2, #1
	bl FUN_02389D2C
_02394674:
	ldrh r0, [r5, #0x96]
	add r1, r0, #0x26
	ldrh r0, [r5, #0xa0]
	add r1, r1, r0
	ldr r0, _023946F4 ; =0x0380FFF4
	ldr r0, [r0]
	ldr r0, [r0, #0x4ac]
	strh r1, [r0, #0xa]
	add r0, r4, #1
	ldrh r1, [r5, #0xa0]
	add r1, r1, #8
	and r1, r1, #0xff
	bl FUN_02389C88
	ldr r0, _023946F4 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x600
	ldrh r0, [r0, #0x90]
	ands r0, r0, #4
	beq _023946E0
	add r1, r4, #0xd
	ldrh r0, [r5, #0xa0]
	add r0, r1, r0
	bic r1, r0, #3
	ldr r0, _023946FC ; =0x0000B6B8
	strh r0, [r1]
	ldr r0, _02394700 ; =0x00001D46
	strh r0, [r1, #2]
_023946E0:
	mov r0, #0
	strh r0, [r5, #0xa4]
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_023946F4: .word 0x0380FFF4
_023946F8: .word 0x0380FFF0
_023946FC: .word 0x0000B6B8
_02394700: .word 0x00001D46
	arm_func_end FUN_023945F8

	arm_func_start FUN_02394704
FUN_02394704: ; 0x02394704
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r0, _02394A58 ; =0x0380FFF4
	ldr r0, [r0]
	ldr sl, [r0, #0x4ac]
	add sb, r0, #0x31c
	add r8, r0, #0x344
	mov r0, #0
	strh r0, [sl]
	strh r0, [sl, #2]
	strh r0, [sl, #4]
	strh r0, [sl, #6]
	bl FUN_0238A9F0
	strh r0, [sl, #8]
	mov r0, #0x80
	strh r0, [sl, #0xc]
	mov r0, #0
	strh r0, [sl, #0xe]
	add r0, sl, #0x10
	ldr r1, _02394A5C ; =_023992DC
	add r2, sb, #8
	mov r3, r2
	bl FUN_0238AE64
	mov r1, #0
	strh r1, [sl, #0x22]
	add r7, sl, #0x24
	str r1, [sl, #0x24]
	str r1, [r7, #4]
	ldrh r0, [r8, #0x6e]
	strh r0, [r7, #8]
	ldrh r0, [r8, #0x7c]
	strh r0, [r7, #0xa]
	add r6, r7, #0xc
	ldrh r0, [sb, #0x1e]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	bne _02394804
	sub r0, r6, r7
	strh r0, [r8, #0x92]
	mov r0, r6
	bl FUN_02389C88
	add r0, r6, #1
	add r6, r6, #2
	ldrh r1, [r8, #0x1e]
	and r1, r1, #0xff
	bl FUN_02389C88
	mov r5, #0
	add r4, r8, #0x20
	b _023947E0
_023947C4:
	add r0, r4, r5
	bl FUN_02389C68
	mov r1, r0
	mov r0, r6
	bl FUN_02389C88
	add r6, r6, #1
	add r5, r5, #1
_023947E0:
	ldrh r0, [r8, #0x1e]
	cmp r5, r0
	blo _023947C4
	mvn r0, #0
	sub r0, r0, r5
	add r0, r6, r0
	and r1, r5, #0xff
	bl FUN_02389C88
	b _02394808
_02394804:
	strh r1, [r8, #0x92]
_02394808:
	mov r0, r6
	bl FUN_02393BDC
	add r6, r6, r0
	mov r0, r6
	mov r1, #3
	bl FUN_02389C88
	add r0, r6, #1
	mov r1, #1
	bl FUN_02389C88
	add r0, r6, #2
	ldrh r1, [r8, #0x7a]
	and r1, r1, #0xff
	bl FUN_02389C88
	add r0, r6, #3
	sub r1, r0, r7
	strh r1, [r8, #0x94]
	ldrh r1, [r8, #0x94]
	add r2, r1, #2
	ldr r1, _02394A60 ; =0x04808084
	strh r2, [r1]
	mov r1, #5
	bl FUN_02389C88
	add r0, r6, #4
	mov r1, #5
	bl FUN_02389C88
	add r0, r6, #5
	mov r1, #0
	bl FUN_02389C88
	add r0, r6, #6
	ldrh r1, [r8, #0x74]
	and r1, r1, #0xff
	bl FUN_02389C88
	add r0, r6, #7
	mov r1, #0
	bl FUN_02389C88
	add r0, r6, #8
	mov r1, #0
	bl FUN_02389C88
	add r0, r6, #9
	mov r1, #0
	bl FUN_02389C88
	add r0, r6, #0xa
	sub r1, r0, r7
	strh r1, [r8, #0x96]
	ldrh r1, [r8, #0x96]
	and r1, r1, #1
	strh r1, [r8, #0xa2]
	mov r1, #0xdd
	bl FUN_02389C88
	add r0, r6, #0xb
	ldrh r1, [r8, #0xa0]
	add r1, r1, #8
	and r1, r1, #0xff
	bl FUN_02389C88
	add r0, r6, #0xc
	mov r1, #0
	bl FUN_02389C88
	add r0, r6, #0xd
	mov r1, #9
	bl FUN_02389C88
	add r0, r6, #0xe
	mov r1, #0xbf
	bl FUN_02389C88
	add r0, r6, #0xf
	mov r1, #0
	bl FUN_02389C88
	ldrh r0, [r8, #0xe]
	cmp r0, #1
	bne _02394948
	add r0, r6, #0x10
	ldrh r1, [sb, #0x20]
	and r1, r1, #0xff
	bl FUN_02389C88
	add r0, r6, #0x11
	add r6, r6, #0x12
	ldrh r1, [sb, #0x20]
	mov r1, r1, asr #8
	and r1, r1, #0xff
	bl FUN_02389C88
	b _02394964
_02394948:
	add r0, r6, #0x10
	mov r1, #0xff
	bl FUN_02389C88
	add r0, r6, #0x11
	add r6, r6, #0x12
	mov r1, #0xff
	bl FUN_02389C88
_02394964:
	ldr r0, _02394A64 ; =0x0380FFF0
	ldrh r4, [r0]
	mov r0, r6
	and r1, r4, #0xff
	bl FUN_02389C88
	add r0, r6, #1
	add r6, r6, #2
	mov r1, r4, lsr #8
	and r1, r1, #0xff
	bl FUN_02389C88
	ldr r5, [r8, #0x9c]
	mov r4, #0
	b _023949B8
_02394998:
	mov r0, r5
	bl FUN_02389C68
	mov r1, r0
	mov r0, r6
	bl FUN_02389C88
	add r6, r6, #1
	add r5, r5, #1
	add r4, r4, #1
_023949B8:
	ldrh r1, [r8, #0xa0]
	cmp r4, r1
	blo _02394998
	ldrh r0, [r8, #0xa2]
	cmp r0, #0
	beq _02394A0C
	ldr r0, [r8, #0x9c]
	add r0, r0, r1
	sub r4, r0, #1
	mov r5, #0
	b _02394A00
_023949E4:
	mov r0, r4
	bl FUN_02389C68
	mov r1, r0
	add r0, r4, #1
	bl FUN_02389C88
	add r5, r5, #1
	sub r4, r4, #1
_02394A00:
	ldrh r0, [r8, #0xa0]
	cmp r5, r0
	blo _023949E4
_02394A0C:
	ldr r0, _02394A58 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x600
	ldrh r0, [r0, #0x90]
	ands r0, r0, #4
	beq _02394A3C
	add r0, r6, #3
	bic r1, r0, #3
	ldr r0, _02394A68 ; =0x0000B6B8
	strh r0, [r1]
	ldr r0, _02394A6C ; =0x00001D46
	strh r0, [r1, #2]
_02394A3C:
	mov r0, #0
	strh r0, [r8, #0xa4]
	add r0, r6, #0x1c
	sub r0, r0, r7
	strh r0, [sl, #0xa]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	.align 2, 0
_02394A58: .word 0x0380FFF4
_02394A5C: .word _023992DC
_02394A60: .word 0x04808084
_02394A64: .word 0x0380FFF0
_02394A68: .word 0x0000B6B8
_02394A6C: .word 0x00001D46
	arm_func_end FUN_02394704

	arm_func_start FUN_02394A70
FUN_02394A70: ; 0x02394A70
	ldr r0, _02394A90 ; =0x0380FFF4
	ldr r2, [r0]
	mov r1, #0
	ldr r0, _02394A94 ; =0x04808080
	strh r1, [r0]
	add r0, r2, #0x400
	strh r1, [r0, #0xa4]
	bx lr
	.align 2, 0
_02394A90: .word 0x0380FFF4
_02394A94: .word 0x04808080
	arm_func_end FUN_02394A70

	arm_func_start FUN_02394A98
FUN_02394A98: ; 0x02394A98
	ldr r0, _02394AD4 ; =0x0380FFF4
	ldr r2, [r0]
	ldr r0, _02394AD8 ; =0x000004A4
	add r3, r2, r0
	mov r1, #1
	add r0, r2, #0x400
	strh r1, [r0, #0xa4]
	ldr r1, [r3, #8]
	ldr r0, _02394ADC ; =0x00003FFF
	and r0, r1, r0
	mov r0, r0, lsr #1
	orr r1, r0, #0x8000
	ldr r0, _02394AE0 ; =0x04808080
	strh r1, [r0]
	bx lr
	.align 2, 0
_02394AD4: .word 0x0380FFF4
_02394AD8: .word 0x000004A4
_02394ADC: .word 0x00003FFF
_02394AE0: .word 0x04808080
	arm_func_end FUN_02394A98

	arm_func_start FUN_02394AE4
FUN_02394AE4: ; 0x02394AE4
	stmdb sp!, {r4, lr}
	ldr r0, _02394B70 ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, _02394B74 ; =0x00000454
	add r4, r1, r0
	ldrh r0, [r4, #2]
	add r0, r0, #1
	strh r0, [r4, #2]
	add r0, r1, #0x400
	ldrh r0, [r0, #0x54]
	cmp r0, #0
	movne r1, #0
	ldrne r0, [r4, #8]
	strneh r1, [r0, #4]
	bne _02394B68
	mov r0, #1
	strh r0, [r4]
	mov r1, #0
	ldr r0, [r4, #8]
	strh r1, [r0]
	ldr r0, [r4, #8]
	strh r1, [r0, #4]
	bl FUN_0238A9F0
	ldr r1, [r4, #8]
	strh r0, [r1, #8]
	ldr r1, [r4, #8]
	ldr r0, _02394B78 ; =0x00003FFF
	and r0, r1, r0
	mov r0, r0, lsl #0xf
	mov r0, r0, lsr #0x10
	orr r1, r0, #0x8000
	ldr r0, _02394B7C ; =0x048080A8
	strh r1, [r0]
_02394B68:
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02394B70: .word 0x0380FFF4
_02394B74: .word 0x00000454
_02394B78: .word 0x00003FFF
_02394B7C: .word 0x048080A8
	arm_func_end FUN_02394AE4

	arm_func_start FUN_02394B80
FUN_02394B80: ; 0x02394B80
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x18
	bl FUN_0238F598
	strh r0, [r4, #2]
	ldrh r0, [r4, #2]
	cmp r0, #0xff
	moveq r0, #0
	streqh r0, [r4, #2]
	ldr r0, _02394BF0 ; =0x0380FFF4
	ldr r0, [r0]
	ldr r0, [r0, #0x3ec]
	strh r0, [r4, #4]
	ldrh r0, [r4, #0x14]
	ands r0, r0, #0x4000
	ldrneh r0, [r4, #0x12]
	addne r0, r0, #8
	strneh r0, [r4, #0x12]
	mov r0, r4
	bl FUN_0238F35C
	ldr r0, _02394BF0 ; =0x0380FFF4
	ldr r1, [r0]
	add r0, r1, #0x188
	add r1, r1, #0x1a0
	sub r2, r4, #0x10
	bl FUN_023895E4
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02394BF0: .word 0x0380FFF4
	arm_func_end FUN_02394B80

	arm_func_start FUN_02394BF4
FUN_02394BF4: ; 0x02394BF4
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_02394B80
	mov r0, #1
	bl FUN_02395C00
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_02394BF4

	arm_func_start FUN_02394C14
FUN_02394C14: ; 0x02394C14
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov sl, r0
	mov sb, r1
	mov r0, #0xc
	mul r6, sl, r0
	ldr r0, _02394CA8 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, r6
	ldr r8, [r0, #0x194]
	mvn r4, #0
	cmp r8, r4
	beq _02394C9C
	mov r5, #2
_02394C4C:
	mov r0, r8
	bl FUN_023893EC
	mov fp, r0
	add r7, r8, #0x10
	cmp sl, #2
	beq _02394C6C
	mov r0, r7
	bl FUN_0238F2F0
_02394C6C:
	strh r5, [r7, #8]
	cmp sb, #0
	beq _02394C90
	ldr r0, _02394CA8 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x194
	add r0, r0, r6
	mov r1, r8
	bl FUN_02392D5C
_02394C90:
	mov r8, fp
	cmp fp, r4
	bne _02394C4C
_02394C9C:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_02394CA8: .word 0x0380FFF4
	arm_func_end FUN_02394C14

	arm_func_start FUN_02394CAC
FUN_02394CAC: ; 0x02394CAC
	stmdb sp!, {r4, lr}
	ldr r0, _02394D94 ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, _02394D98 ; =0x0000042C
	add r4, r1, r0
	add r0, r1, #0x300
	ldrh r0, [r0, #0x50]
	cmp r0, #1
	beq _02394CE4
	cmp r0, #2
	beq _02394D40
	cmp r0, #3
	beq _02394D40
	b _02394D68
_02394CE4:
	mov r0, #0
	mov r1, #1
	bl FUN_02394C14
	mov r0, #1
	mov r1, #0
	bl FUN_02394C14
	mov r0, #2
	mov r1, #1
	bl FUN_02394C14
	ldrh r0, [r4, #0x3c]
	cmp r0, #0
	beq _02394D8C
	mov r0, #0
	strh r0, [r4, #0x3c]
	ldrh r0, [r4, #0x3e]
	sub r0, r0, #1
	strh r0, [r4, #0x3e]
	ldr r0, _02394D94 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x188
	ldr r1, [r4, #0x90]
	bl FUN_02389658
	b _02394D8C
_02394D40:
	mov r0, #0
	mov r1, #1
	bl FUN_02394C14
	mov r0, #1
	mov r1, #0
	bl FUN_02394C14
	mov r0, #2
	mov r1, #0
	bl FUN_02394C14
	b _02394D8C
_02394D68:
	mov r0, #0
	mov r1, r0
	bl FUN_02394C14
	mov r0, #1
	mov r1, #0
	bl FUN_02394C14
	mov r0, #2
	mov r1, #0
	bl FUN_02394C14
_02394D8C:
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02394D94: .word 0x0380FFF4
_02394D98: .word 0x0000042C
	arm_func_end FUN_02394CAC

	arm_func_start FUN_02394D9C
FUN_02394D9C: ; 0x02394D9C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldrh r1, [r0]
	ands r1, r1, #1
	beq _02394DE0
	mov r5, #1
	ldr r4, _02394E3C ; =0x0380FFF4
	b _02394DC8
_02394DBC:
	mov r0, r5
	bl FUN_02394E40
	add r5, r5, #1
_02394DC8:
	ldr r0, [r4]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x22]
	cmp r5, r0
	blo _02394DBC
	b _02394E30
_02394DE0:
	bl FUN_0238F598
	mov r4, r0
	cmp r4, #0xff
	beq _02394DF4
	bl FUN_02394E40
_02394DF4:
	ldr r0, _02394E3C ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x2e]
	cmp r0, #1
	bne _02394E30
	mov r0, r4
	bl FUN_0238EF80
	cmp r0, #0x40
	bne _02394E30
	mov r0, r4, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, #0x20
	bl FUN_0238F224
	bl FUN_02395178
_02394E30:
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_02394E3C: .word 0x0380FFF4
	arm_func_end FUN_02394D9C

	arm_func_start FUN_02394E40
FUN_02394E40: ; 0x02394E40
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov fp, r0
	mov r8, #0
	bl FUN_0238EE8C
	cmp r0, #0
	beq _02394F40
	mov r7, r8
	mov r0, #1
	str r0, [sp, #8]
	mov r4, #2
	str r7, [sp, #4]
_02394E70:
	mov r0, #0xc
	mul r5, r7, r0
	ldr r0, _02394F4C ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, r5
	ldr sl, [r0, #0x194]
	mvn r0, #0
	cmp sl, r0
	beq _02394F34
	mov r0, #0x14
	mul r6, r7, r0
_02394E9C:
	mov r0, sl
	bl FUN_023893EC
	str r0, [sp]
	add sb, sl, #0x10
	ldrh r0, [sb, #2]
	cmp r0, fp
	bne _02394F20
	cmp r7, #1
	beq _02394ED8
	ldr r0, _02394F4C ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r6, r0
	ldr r0, [r0, #0x438]
	cmp sb, r0
	bne _02394EF4
_02394ED8:
	mov r0, sb
	bl FUN_0238F2F0
	ldr r0, [sp, #4]
	strh r0, [sb, #2]
	mov r0, sb
	bl FUN_0238F35C
	b _02394F20
_02394EF4:
	strh r4, [sb, #8]
	mov r0, sb
	bl FUN_0238F2F0
	ldr r0, _02394F4C ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x194
	add r0, r0, r5
	mov r1, sl
	bl FUN_02392D5C
	cmp r8, #0
	ldreq r8, [sp, #8]
_02394F20:
	ldr sl, [sp]
	mvn r1, #0
	mov r0, sl
	cmp r0, r1
	bne _02394E9C
_02394F34:
	add r7, r7, #1
	cmp r7, #3
	blo _02394E70
_02394F40:
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_02394F4C: .word 0x0380FFF4
	arm_func_end FUN_02394E40

	arm_func_start FUN_02394F50
FUN_02394F50: ; 0x02394F50
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	ldr r0, _02394FD8 ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, _02394FDC ; =0x0000042C
	add r5, r1, r0
	mov r0, #0x14
	mul r4, r7, r0
	add r6, r5, r4
	mov r0, #0x1000000
	bl FUN_037F8774
	mov r2, r7, lsl #1
	ldr r1, _02394FE0 ; =_023998B0
	ldrh r2, [r1, r2]
	ldr r1, _02394FE4 ; =0x048080B4
	strh r2, [r1]
	ldrh r1, [r5, r4]
	cmp r1, #0
	beq _02394FC8
	ldr r2, [r6, #0xc]
	ldrh r1, [r2, #0x14]
	ands r1, r1, #0x4000
	ldreq r1, [r6, #8]
	ldreqh r1, [r1, #4]
	streqh r1, [r2, #0xc]
	ldr r1, [r6, #8]
	ldrh r2, [r1, #0x22]
	ldr r1, [r6, #0xc]
	strh r2, [r1, #0x2a]
_02394FC8:
	bl FUN_037F87B0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_02394FD8: .word 0x0380FFF4
_02394FDC: .word 0x0000042C
_02394FE0: .word _023998B0
_02394FE4: .word 0x048080B4
	arm_func_end FUN_02394F50

	arm_func_start FUN_02394FE8
FUN_02394FE8: ; 0x02394FE8
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _02395058 ; =0x0380FFF4
	ldr r2, [r1]
	ldr r1, _0239505C ; =0x0000042C
	add r2, r2, r1
	mov r1, #0x14
	mul r1, r0, r1
	add r3, r2, r1
	ldrh r0, [r2, r1]
	cmp r0, #0
	beq _0239504C
	ldr r0, [r3, #8]
	ldrh r1, [r0]
	cmp r1, #0
	moveq r1, #2
	ldreq r0, [r3, #0xc]
	streqh r1, [r0, #8]
	ldrne r0, [r3, #0xc]
	strneh r1, [r0, #8]
	ldr r0, [r3, #0xc]
	mov r1, #0
	ldr r2, [r3, #0x10]
	mov lr, pc
	bx r2
_0239504C:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02395058: .word 0x0380FFF4
_0239505C: .word 0x0000042C
	arm_func_end FUN_02394FE8

	arm_func_start FUN_02395060
FUN_02395060: ; 0x02395060
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r0, _0239510C ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, _02395110 ; =0x0000042C
	add r5, r1, r0
	mov r0, #0x1000000
	bl FUN_037F8774
	mov r4, r0
	ldr r0, _0239510C ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x50]
	cmp r0, #1
	bne _023950CC
	mov r1, #9
	ldr r0, _02395114 ; =0x048080B4
	strh r1, [r0]
	ldrh r0, [r5, #0x28]
	cmp r0, #0
	beq _023950BC
	mov r0, #2
	bl FUN_02394FE8
_023950BC:
	mov r0, #2
	mov r1, #1
	bl FUN_02394C14
	b _023950D8
_023950CC:
	mov r1, #1
	ldr r0, _02395114 ; =0x048080B4
	strh r1, [r0]
_023950D8:
	ldrh r0, [r5]
	cmp r0, #0
	beq _023950EC
	mov r0, #0
	bl FUN_02394FE8
_023950EC:
	mov r0, #0
	mov r1, #1
	bl FUN_02394C14
	mov r0, r4
	bl FUN_037F87B0
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_0239510C: .word 0x0380FFF4
_02395110: .word 0x0000042C
_02395114: .word 0x048080B4
	arm_func_end FUN_02395060

	arm_func_start FUN_02395118
FUN_02395118: ; 0x02395118
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r0, _0239516C ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, _02395170 ; =0x0000042C
	add r5, r1, r0
	mov r0, #0x1000000
	bl FUN_037F8774
	mov r4, r0
	mov r1, #2
	ldr r0, _02395174 ; =0x048080B4
	strh r1, [r0]
	ldrh r0, [r5, #0x3c]
	cmp r0, #0
	beq _02395158
	bl FUN_0238E1AC
_02395158:
	mov r0, r4
	bl FUN_037F87B0
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_0239516C: .word 0x0380FFF4
_02395170: .word 0x0000042C
_02395174: .word 0x048080B4
	arm_func_end FUN_02395118

	arm_func_start FUN_02395178
FUN_02395178: ; 0x02395178
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r0, _023951EC ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, _023951F0 ; =0x0000042C
	add r5, r1, r0
	mov r0, #0x1000000
	bl FUN_037F8774
	mov r4, r0
	ldr r0, _023951EC ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x3a]
	mov r0, r0, lsl #0x18
	movs r0, r0, lsr #0x1f
	bne _023951C0
	mov r0, #0
	bl FUN_0238AF9C
_023951C0:
	mov r1, #0xc0
	ldr r0, _023951F4 ; =0x048080B4
	strh r1, [r0]
	mov r0, #0
	strh r0, [r5, #0x50]
	strh r0, [r5, #0x64]
	mov r0, r4
	bl FUN_037F87B0
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_023951EC: .word 0x0380FFF4
_023951F0: .word 0x0000042C
_023951F4: .word 0x048080B4
	arm_func_end FUN_02395178

	arm_func_start FUN_023951F8
FUN_023951F8: ; 0x023951F8
	ldr r1, [r0, #8]
	ldrh r1, [r1, #4]
	ands r3, r1, #0xff
	ldr r1, _02395244 ; =0x0380FFF4
	ldr r2, [r1]
	ldr r1, _02395248 ; =0x0000053C
	add r2, r2, r1
	ldreq r1, [r2, #0x6c]
	addeq r1, r1, #1
	streq r1, [r2, #0x6c]
	ldrne r1, [r2, #0x68]
	addne r1, r1, r3
	strne r1, [r2, #0x68]
	ldrh r1, [r0, #4]
	add r1, r1, #1
	strh r1, [r0, #4]
	mov r1, #0
	strh r1, [r0]
	bx lr
	.align 2, 0
_02395244: .word 0x0380FFF4
_02395248: .word 0x0000053C
	arm_func_end FUN_023951F8

	arm_func_start FUN_0239524C
FUN_0239524C: ; 0x0239524C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r6, r1
	ldr r1, _02395360 ; =0x0380FFF4
	ldr r2, [r1]
	add r5, r2, #0x17c
	add r4, r5, #0x30
	ldr r1, [r2, #0x550]
	add r1, r1, #1
	str r1, [r2, #0x550]
	ldrh r1, [r7, #0x14]
	mov r1, r1, lsl #0x1c
	movs r1, r1, lsr #0x1e
	bne _023952AC
	bl FUN_0238F35C
	mov r0, r4
	add r1, r5, #0x24
	sub r2, r7, #0x10
	bl FUN_023895E4
	mov r0, r7
	mov r1, #0
	bl FUN_023953E0
	b _023952B8
_023952AC:
	mov r0, r4
	sub r1, r7, #0x10
	bl FUN_02392D5C
_023952B8:
	mov r2, #0
	ldr r1, _02395360 ; =0x0380FFF4
	ldr r0, [r1]
	add r0, r0, #0x400
	strh r2, [r0, #0x54]
	ldr r0, [r1]
	ldr r0, [r0, #0x45c]
	ldrh r0, [r0, #0xc]
	mov r0, r0, lsl #0x12
	movs r0, r0, lsr #0x1f
	bne _0239532C
	mov r1, #8
	ldr r0, _02395364 ; =0x048080AC
	strh r1, [r0]
	mov r1, #5
	ldr r0, _02395368 ; =0x048080AE
	strh r1, [r0]
	cmp r6, #0
	beq _0239532C
	ldrh r0, [r5, #0x2c]
	cmp r0, #0
	beq _02395318
	mov r0, #1
	bl FUN_02395C00
_02395318:
	ldrh r0, [r5, #0x20]
	cmp r0, #0
	beq _0239532C
	mov r0, #0
	bl FUN_02395C00
_0239532C:
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _0239534C
	cmp r6, #0
	beq _02395354
	mov r0, #2
	bl FUN_02395C00
	b _02395354
_0239534C:
	mov r0, #0
	bl FUN_0238ED04
_02395354:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_02395360: .word 0x0380FFF4
_02395364: .word 0x048080AC
_02395368: .word 0x048080AE
	arm_func_end FUN_0239524C

	arm_func_start FUN_0239536C
FUN_0239536C: ; 0x0239536C
	ldr r1, _023953D8 ; =0x0380FFF4
	ldr r2, [r1]
	ldr r1, _023953DC ; =0x0000053C
	add r3, r2, r1
	ldr r2, [r3, #8]
	ldrh r1, [r0, #4]
	and r1, r1, #0xff
	add r1, r2, r1
	str r1, [r3, #8]
	ldrh r0, [r0]
	ands r0, r0, #2
	ldrne r0, [r3, #4]
	addne r0, r0, #1
	strne r0, [r3, #4]
	bne _023953C0
	ldr r0, [r3]
	add r0, r0, #1
	str r0, [r3]
	ldr r0, [r3, #0x10]
	add r0, r0, #1
	str r0, [r3, #0x10]
_023953C0:
	mov r1, #0
	ldr r0, _023953D8 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x400
	strh r1, [r0, #0x54]
	bx lr
	.align 2, 0
_023953D8: .word 0x0380FFF4
_023953DC: .word 0x0000053C
	arm_func_end FUN_0239536C

	arm_func_start FUN_023953E0
FUN_023953E0: ; 0x023953E0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov sl, r0
	mov sb, r1
	ldr r0, _023958F0 ; =0x0380FFF4
	ldr r1, [r0]
	add r4, r1, #0x344
	ldr r0, _023958F4 ; =0x00000404
	add r8, r1, r0
	ldr r0, _023958F8 ; =0x0000053C
	add r5, r1, r0
	add r7, r1, #0x1a0
	ldrh r6, [sl, #2]
	ldrh r0, [sl, #8]
	ands r0, r0, #2
	bne _02395474
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	ldrh r0, [sl, #0x18]
	ands r0, r0, #1
	ldrne r0, [r5, #0x14]
	addne r0, r0, #1
	strne r0, [r5, #0x14]
	ldreq r0, [r5, #0x10]
	addeq r0, r0, #1
	streq r0, [r5, #0x10]
	mov r0, r6
	bl FUN_0238EF40
	cmp r0, #0
	beq _02395480
	ldrh r0, [sl, #0x14]
	ands r0, r0, #0x2000
	bne _02395480
	mov r0, r6
	bl FUN_0238F168
	b _02395480
_02395474:
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
_02395480:
	ldrh r0, [sl, #0x14]
	mov r0, r0, lsl #0x11
	movs r0, r0, lsr #0x1f
	ldrne r0, [r5, #0x18]
	addne r0, r0, #1
	strne r0, [r5, #0x18]
	ldr r1, [r5, #8]
	ldrh r0, [sl, #0xc]
	and r0, r0, #0xff
	add r0, r1, r0
	str r0, [r5, #8]
	ldrh r0, [sl, #0x14]
	and r5, r0, #0xfc
	cmp r5, #0xa0
	bhi _023954E4
	cmp r5, #0xa0
	bhs _02395660
	cmp r5, #0x10
	bhi _023954D8
	cmp r5, #0x10
	beq _0239559C
	b _023958A0
_023954D8:
	cmp r5, #0x30
	beq _0239559C
	b _023958A0
_023954E4:
	cmp r5, #0xb0
	bhi _023954F8
	cmp r5, #0xb0
	beq _02395504
	b _023958A0
_023954F8:
	cmp r5, #0xc0
	beq _02395750
	b _023958A0
_02395504:
	cmp r6, #0
	beq _023958A0
	ldrh r0, [sl, #8]
	ands r0, r0, #2
	bne _023958A0
	ldrh r1, [sl, #0x2c]
	cmp r1, #0
	bne _0239555C
	ldrh r0, [sl, #0x2e]
	cmp r0, #2
	bne _0239555C
	ldrh r0, [sl, #0x30]
	cmp r0, #0
	bne _0239555C
	mov r0, r6, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, #0x30
	bl FUN_0238F224
	add r0, sl, #0x18
	ldrh r1, [sl, #0x2c]
	bl FUN_0239013C
	b _023958A0
_0239555C:
	cmp r1, #1
	bne _023958A0
	ldrh r0, [sl, #0x2e]
	cmp r0, #4
	bne _023958A0
	ldrh r0, [sl, #0x30]
	cmp r0, #0
	bne _023958A0
	mov r0, r6, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, #0x30
	bl FUN_0238F224
	add r0, sl, #0x18
	ldrh r1, [sl, #0x2c]
	bl FUN_0239013C
	b _023958A0
_0239559C:
	cmp r6, #0
	beq _023958A0
	ldrh r0, [sl, #8]
	ands r0, r0, #2
	bne _0239561C
	ldrh r0, [sl, #0x2e]
	cmp r0, #0
	bne _023958A0
	mov r0, r6
	bl FUN_0238EF80
	cmp r0, #0x30
	bne _023958A0
	mov r0, r6, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, #0x40
	bl FUN_0238F224
	cmp r5, #0x10
	bne _02395600
	add r0, sl, #0x18
	ldrh r1, [sl, #0x30]
	add r3, sl, #0x14
	ldrh r2, [sl, #0x12]
	add r2, r3, r2
	bl FUN_0238FFC4
	b _023958A0
_02395600:
	add r0, sl, #0x18
	ldrh r1, [sl, #0x30]
	add r3, sl, #0x14
	ldrh r2, [sl, #0x12]
	add r2, r3, r2
	bl FUN_0238FED4
	b _023958A0
_0239561C:
	mov r0, r6, lsl #0x10
	mov r0, r0, lsr #0x10
	bl FUN_0238EF9C
	add r0, sl, #0x18
	mov r1, #1
	mov r2, #0
	bl FUN_02393E24
	cmp r0, #0
	beq _023958A0
	mov r1, #2
	strh r1, [r0]
	cmp sb, #0
	beq _02395658
	bl FUN_02394BF4
	b _023958A0
_02395658:
	bl FUN_02394B80
	b _023958A0
_02395660:
	ldrh r0, [r4, #0xc]
	cmp r0, #1
	bne _023956F0
	cmp r6, #0
	beq _02395698
	mov r0, r6
	bl FUN_0238EF80
	cmp r0, #0x30
	bls _02395708
	mov r0, r6, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, #0x30
	bl FUN_0238F224
	b _02395708
_02395698:
	ldrh r0, [sl, #0x18]
	ands r0, r0, #1
	beq _02395708
	mov r6, #1
	mov r5, #0x30
	ldr r4, _023958F0 ; =0x0380FFF4
	b _023956D8
_023956B4:
	mov r0, r6
	bl FUN_0238EF80
	cmp r0, #0x30
	bls _023956D4
	mov r0, r6, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, r5
	bl FUN_0238F224
_023956D4:
	add r6, r6, #1
_023956D8:
	ldr r0, [r4]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x22]
	cmp r6, r0
	blo _023956B4
	b _02395708
_023956F0:
	ldrh r0, [r4, #8]
	cmp r0, #0x30
	bls _02395708
	mov r0, #0x30
	bl FUN_0238AF00
	bl FUN_0238AFEC
_02395708:
	ldrh r0, [r8]
	cmp r0, #0x71
	bne _023958A0
	ldr r0, [r8, #4]
	cmp sl, r0
	bne _023958A0
	ldrh r0, [sl, #8]
	ands r0, r0, #2
	moveq r1, #0
	ldreq r0, [r8, #0x1c]
	streqh r1, [r0, #4]
	movne r1, #0xc
	ldrne r0, [r8, #0x1c]
	strneh r1, [r0, #4]
	mov r0, #0
	strh r0, [r8]
	bl FUN_023901B8
	b _023958A0
_02395750:
	ldrh r0, [r4, #0xc]
	cmp r0, #1
	bne _023957E0
	cmp r6, #0
	beq _02395788
	mov r0, r6
	bl FUN_0238EF80
	cmp r0, #0x20
	bls _023957F8
	mov r0, r6, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, #0x20
	bl FUN_0238F224
	b _023957F8
_02395788:
	ldrh r0, [sl, #0x18]
	ands r0, r0, #1
	beq _023957F8
	mov r5, #1
	mov r4, #0x20
	ldr fp, _023958F0 ; =0x0380FFF4
	b _023957C8
_023957A4:
	mov r0, r5
	bl FUN_0238EF80
	cmp r0, #0x20
	bls _023957C4
	mov r0, r5, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, r4
	bl FUN_0238F224
_023957C4:
	add r5, r5, #1
_023957C8:
	ldr r0, [fp]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x22]
	cmp r5, r0
	blo _023957A4
	b _023957F8
_023957E0:
	ldrh r0, [r4, #8]
	cmp r0, #0x20
	bls _023957F8
	mov r0, #0x20
	bl FUN_0238AF00
	bl FUN_0238AFEC
_023957F8:
	ldrh r0, [r8]
	cmp r0, #0x41
	bne _0239583C
	ldr r0, [r8, #4]
	cmp sl, r0
	bne _0239583C
	ldrh r0, [sl, #8]
	ands r0, r0, #2
	moveq r1, #0
	ldreq r0, [r8, #0x1c]
	streqh r1, [r0, #4]
	movne r1, #0xc
	ldrne r0, [r8, #0x1c]
	strneh r1, [r0, #4]
	mov r0, #0
	strh r0, [r8]
	bl FUN_023901B8
_0239583C:
	ldrh r0, [sl]
	cmp r0, #1
	bne _0239588C
	cmp r6, #0
	beq _0239587C
	ldr r0, _023958F0 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x500
	ldrh r2, [r0, #0x34]
	mov r1, #1
	mvn r1, r1, lsl r6
	and r1, r2, r1
	strh r1, [r0, #0x34]
	mov r0, r6, lsl #0x10
	mov r0, r0, lsr #0x10
	bl FUN_0238EAD4
_0239587C:
	add r0, sl, #0x18
	mov r1, #1
	bl FUN_023900C0
	b _023958A0
_0239588C:
	cmp r0, #2
	bne _023958A0
	add r0, sl, #0x18
	ldrh r1, [sl, #0x2c]
	bl FUN_023900C0
_023958A0:
	mov r0, sl
	bl FUN_0238F2F0
	mov r0, r7
	sub r1, sl, #0x10
	bl FUN_02389658
	mov r1, #0
	ldr r0, _023958F0 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x400
	strh r1, [r0, #0x40]
	cmp sb, #0
	beq _023958E4
	ldrh r0, [r7, #8]
	cmp r0, #0
	beq _023958E4
	mov r0, #1
	bl FUN_02395C00
_023958E4:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_023958F0: .word 0x0380FFF4
_023958F4: .word 0x00000404
_023958F8: .word 0x0000053C
	arm_func_end FUN_023953E0

	arm_func_start FUN_023958FC
FUN_023958FC: ; 0x023958FC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	mov sb, r0
	mov r8, r1
	ldr r1, _02395A88 ; =0x0380FFF4
	ldr r2, [r1]
	add r7, r2, #0x194
	add r6, r2, #0x344
	ldr r1, _02395A8C ; =0x0000053C
	add r5, r2, r1
	sub r4, sb, #0x10
	bl FUN_0238F2F0
	ldrh r0, [sb, #8]
	ands r0, r0, #2
	bne _0239599C
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	ldrh r0, [sb, #0x14]
	mov r0, r0, lsl #0x17
	movs r0, r0, lsr #0x1f
	beq _02395978
	ldrh r0, [sb, #0x24]
	ands r0, r0, #1
	ldrne r0, [r5, #0x14]
	addne r0, r0, #1
	strne r0, [r5, #0x14]
	ldreq r0, [r5, #0x10]
	addeq r0, r0, #1
	streq r0, [r5, #0x10]
	b _023959A8
_02395978:
	ldrh r0, [sb, #0x18]
	ands r0, r0, #1
	ldrne r0, [r5, #0x14]
	addne r0, r0, #1
	strne r0, [r5, #0x14]
	ldreq r0, [r5, #0x10]
	addeq r0, r0, #1
	streq r0, [r5, #0x10]
	b _023959A8
_0239599C:
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
_023959A8:
	ldrh r0, [sb, #0x14]
	mov r0, r0, lsl #0x11
	movs r0, r0, lsr #0x1f
	ldrne r0, [r5, #0x18]
	addne r0, r0, #1
	strne r0, [r5, #0x18]
	mov r0, r7
	mov r1, r4
	bl FUN_02392D5C
	mov r1, #0
	ldr r0, _02395A88 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x400
	strh r1, [r0, #0x2c]
	ldrh r0, [sb, #2]
	bl FUN_0238EF40
	cmp r0, #0
	beq _02395A04
	ldrh r0, [sb, #0x14]
	ands r0, r0, #0x2000
	bne _02395A04
	ldrh r0, [sb, #2]
	bl FUN_0238F168
_02395A04:
	cmp r8, #0
	beq _02395A7C
	ldrh r0, [r7, #8]
	cmp r0, #0
	beq _02395A24
	mov r0, #0
	bl FUN_02395C00
	b _02395A7C
_02395A24:
	ldrh r1, [r6, #0xc]
	ldr r0, _02395A90 ; =0x0000FFFE
	add r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #1
	bhi _02395A7C
	ldrh r0, [r6, #8]
	cmp r0, #0x40
	bne _02395A7C
	ldrh r0, [r6, #0xe]
	cmp r0, #0
	beq _02395A7C
	ldrh r0, [r6, #0x88]
	bl FUN_0238EE8C
	cmp r0, #0
	bne _02395A7C
	ldrh r0, [r6, #0x8e]
	cmp r0, #0
	bne _02395A7C
	mov r0, #1
	bl FUN_0238B38C
_02395A7C:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	.align 2, 0
_02395A88: .word 0x0380FFF4
_02395A8C: .word 0x0000053C
_02395A90: .word 0x0000FFFE
	arm_func_end FUN_023958FC

	arm_func_start FUN_02395A94
FUN_02395A94: ; 0x02395A94
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	add r4, r5, #0x10
	ldrh r1, [r4, #0x14]
	ands r1, r1, #0x4000
	beq _02395B74
	ldr r0, _02395BEC ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x50]
	cmp r0, #3
	bne _02395ACC
	bl FUN_0238AC24
_02395ACC:
	ldrh r1, [r5, #0xc]
	ldr r0, _02395BF0 ; =0x0000FFFF
	cmp r1, r0
	bne _02395AF4
	mov r0, r6
	add r1, r4, #8
	add r2, r4, #0x2c
	ldrh r3, [r4, #6]
	bl FUN_02389CB4
	b _02395B08
_02395AF4:
	mov r0, r6
	add r1, r4, #8
	ldr r2, [r4, #0x2c]
	ldrh r3, [r4, #6]
	bl FUN_02389CB4
_02395B08:
	ldr r2, _02395BF4 ; =0x04808044
	ldrh r1, [r2]
	ldrh r0, [r2]
	add r0, r1, r0, lsl #8
	strh r0, [r6, #0x24]
	ldrh r0, [r2]
	and r2, r0, #0xff
	ldr r1, _02395BEC ; =0x0380FFF4
	ldr r0, [r1]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x36]
	orr r0, r2, r0, lsl #14
	strh r0, [r6, #0x26]
	ldr r0, [r1]
	add r0, r0, #0x600
	ldrh r0, [r0, #0x90]
	ands r0, r0, #8
	beq _02395BA8
	add r1, r6, #0xc
	ldrh r0, [r4, #0x12]
	add r0, r1, r0
	sub r0, r0, #7
	bic r1, r0, #1
	mov r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	b _02395BA8
_02395B74:
	ldrh r2, [r5, #0xc]
	ldr r1, _02395BF0 ; =0x0000FFFF
	cmp r2, r1
	bne _02395B98
	add r1, r4, #8
	ldrh r2, [r4, #6]
	add r2, r2, #0x24
	bl FUN_02389D2C
	b _02395BA8
_02395B98:
	add r1, r4, #8
	ldr r2, [r4, #0x2c]
	ldrh r3, [r4, #6]
	bl FUN_02389CF0
_02395BA8:
	ldr r0, _02395BEC ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x600
	ldrh r0, [r0, #0x90]
	ands r0, r0, #4
	beq _02395BE4
	add r1, r6, #0xc
	ldrh r0, [r4, #0x12]
	add r0, r1, r0
	sub r0, r0, #1
	bic r1, r0, #3
	ldr r0, _02395BF8 ; =0x0000B6B8
	strh r0, [r1]
	ldr r0, _02395BFC ; =0x00001D46
	strh r0, [r1, #2]
_02395BE4:
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_02395BEC: .word 0x0380FFF4
_02395BF0: .word 0x0000FFFF
_02395BF4: .word 0x04808044
_02395BF8: .word 0x0000B6B8
_02395BFC: .word 0x00001D46
	arm_func_end FUN_02395A94

	arm_func_start FUN_02395C00
FUN_02395C00: ; 0x02395C00
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov sl, r0
	ldr r0, _02395E40 ; =0x0380FFF4
	ldr r1, [r0]
	add sb, r1, #0x344
	ldr r0, _02395E44 ; =0x0000042C
	add r8, r1, r0
	mov r0, #0x14
	mla r7, sl, r0, r8
	add r1, r1, #0x194
	mov r0, #0xc
	mla fp, sl, r0, r1
	ldrh r0, [fp, #8]
	cmp r0, #0
	beq _02395E34
	mov r0, #0x1000000
	bl FUN_037F8774
	str r0, [sp, #8]
	ldrh r1, [r7]
	cmp r1, #0
	beq _02395C60
	bl FUN_037F87B0
	b _02395E34
_02395C60:
	ldr r0, [fp]
	str r0, [sp, #4]
	mov r4, #2
	mov r0, #0
	str r0, [sp, #0xc]
_02395C74:
	mvn r1, #0
	ldr r0, [sp, #4]
	cmp r0, r1
	bne _02395C90
	ldr r0, [sp, #8]
	bl FUN_037F87B0
	b _02395E34
_02395C90:
	str r0, [sp]
	bl FUN_023893EC
	str r0, [sp, #4]
	ldr r0, [sp]
	add r6, r0, #0x10
	ldrh r5, [r6, #2]
	ldr r1, [sb, #0xa8]
	ldrh r0, [r6, #4]
	sub r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	ldrh r1, [sb, #0x8c]
	cmp r2, r1
	bls _02395CD8
	ldrh r0, [r6, #0x14]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1e
	bne _02395CE0
_02395CD8:
	cmp r2, r1, lsl #3
	bls _02395D14
_02395CE0:
	ldrh r0, [r8, #0xae]
	add r0, r0, #1
	strh r0, [r8, #0xae]
	strh r4, [r6, #8]
	ldrh r0, [r7, #4]
	add r0, r0, #1
	strh r0, [r7, #4]
	mov r0, r6
	ldr r1, [sp, #0xc]
	ldr r2, [r7, #0x10]
	mov lr, pc
	bx r2
	arm_func_end FUN_02395C00

	arm_func_start FUN_02395D10
FUN_02395D10: ; 0x02395D10
	b _02395C74
_02395D14:
	cmp sl, #0
	beq _02395D34
	cmp sl, #1
	bne _02395D70
	mov r0, r5
	bl FUN_0238EF80
	cmp r0, #0x40
	bne _02395D70
_02395D34:
	mov r0, r5
	bl FUN_0238EF60
	cmp r0, #0
	beq _02395C74
	mov r0, r5
	bl FUN_0238EF80
	cmp r0, #0x40
	beq _02395D70
	strh r4, [r6, #8]
	mov r0, fp
	sub r1, r6, #0x10
	bl FUN_02392D5C
	mov r0, r6
	bl FUN_0238F2F0
	b _02395C74
_02395D70:
	mov r0, #1
	strh r0, [r7]
	ldrh r0, [r7, #2]
	add r0, r0, #1
	strh r0, [r7, #2]
	str r6, [r7, #0xc]
	ldr r4, [r7, #8]
	ldrh r0, [sb, #0x10]
	cmp r0, #0
	bne _02395DA0
	mov r0, #2
	bl FUN_0238B38C
_02395DA0:
	mov r0, r4
	ldr r1, [sp]
	bl FUN_02395A94
	ldrh r0, [sb, #0xc]
	cmp r0, #1
	bne _02395DD0
	mov r0, r5
	bl FUN_0238EE8C
	cmp r0, #1
	ldrhih r0, [r4, #0xc]
	orrhi r0, r0, #0x2000
	strhih r0, [r4, #0xc]
_02395DD0:
	ldrh r3, [r6, #0x14]
	ldr r0, _02395E48 ; =0x048080A0
	add r0, r0, sl, lsl #2
	ldr r1, _02395E4C ; =0x00003FFF
	and r1, r4, r1
	mov r2, r1, lsr #1
	and r1, r3, #0xc
	cmp r1, #4
	moveq r1, r2, lsl #0x10
	moveq r1, r1, lsr #0x10
	orreq r1, r1, #0xa000
	streqh r1, [r0]
	beq _02395E2C
	and r1, r3, #0xfc
	cmp r1, #0x50
	moveq r1, r2, lsl #0x10
	moveq r1, r1, lsr #0x10
	orreq r1, r1, #0x9000
	streqh r1, [r0]
	movne r1, r2, lsl #0x10
	movne r1, r1, lsr #0x10
	orrne r1, r1, #0x8000
	strneh r1, [r0]
_02395E2C:
	ldr r0, [sp, #8]
	bl FUN_037F87B0
_02395E34:
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_02395E40: .word 0x0380FFF4
_02395E44: .word 0x0000042C
_02395E48: .word 0x048080A0
_02395E4C: .word 0x00003FFF
	arm_func_end FUN_02395D10

	arm_func_start FUN_02395E50
FUN_02395E50: ; 0x02395E50
	stmdb sp!, {r4, r5, r6, lr}
	ldr r0, _02395F68 ; =0x0380FFF4
	ldr r1, [r0]
	add r6, r1, #0x344
	ldr r0, _02395F6C ; =0x000004DC
	add r5, r1, r0
	mov r0, #0
	mov r1, r5
	mov r2, #0x50
	bl FUN_037FAF6C
	mov r1, #0x8000
	ldr r0, _02395F70 ; =0x04808030
	strh r1, [r0]
	ldr r0, _02395F68 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x50]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _02395ECC
_02395EA0: ; jump table
	b _02395EB0 ; case 0
	b _02395EB8 ; case 1
	b _02395EC0 ; case 2
	b _02395EC8 ; case 3
_02395EB0:
	ldr r4, _02395F74 ; =0x00000794
	b _02395ECC
_02395EB8:
	ldr r4, _02395F78 ; =0x000010C4
	b _02395ECC
_02395EC0:
	ldr r4, _02395F7C ; =0x00000BFC
	b _02395ECC
_02395EC8:
	ldr r4, _02395F74 ; =0x00000794
_02395ECC:
	ldr r0, _02395F80 ; =0x04804000
	add r1, r4, r0
	ldr r0, _02395F84 ; =0x04808050
	strh r1, [r0]
	mov r0, r4, lsl #0xf
	mov r2, r0, lsr #0x10
	ldr r0, _02395F88 ; =0x04808056
	strh r2, [r0]
	ldr r1, _02395F8C ; =0x00005F60
	ldr r0, _02395F90 ; =0x04808052
	strh r1, [r0]
	ldr r0, _02395F94 ; =0x0480805A
	strh r2, [r0]
	strh r2, [r5, #4]
	ldr r0, _02395F98 ; =0x0000FFFF
	strh r0, [r5]
	ldr r1, _02395F9C ; =0x00001F60
	sub r1, r1, r4
	strh r1, [r6, #0x9a]
	ldr r2, _02395FA0 ; =0x00005F5E
	ldr r1, _02395FA4 ; =0x04808062
	strh r2, [r1]
	ldr r2, _02395FA8 ; =0x00008001
	ldr r1, _02395F70 ; =0x04808030
	strh r2, [r1]
	ldr r1, _02395FAC ; =0x0480824C
	strh r0, [r1]
	ldr r1, _02395FB0 ; =0x0480824E
	strh r0, [r1]
	ldr r1, _02395FB4 ; =0x04805F70
	strh r0, [r1]
	ldr r1, _02395FB8 ; =0x04805F72
	strh r0, [r1]
	ldr r1, _02395FBC ; =0x04805F7E
	strh r0, [r1]
	ldr r1, _02395FC0 ; =0x04805F76
	strh r0, [r1]
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_02395F68: .word 0x0380FFF4
_02395F6C: .word 0x000004DC
_02395F70: .word 0x04808030
_02395F74: .word 0x00000794
_02395F78: .word 0x000010C4
_02395F7C: .word 0x00000BFC
_02395F80: .word 0x04804000
_02395F84: .word 0x04808050
_02395F88: .word 0x04808056
_02395F8C: .word 0x00005F60
_02395F90: .word 0x04808052
_02395F94: .word 0x0480805A
_02395F98: .word 0x0000FFFF
_02395F9C: .word 0x00001F60
_02395FA0: .word 0x00005F5E
_02395FA4: .word 0x04808062
_02395FA8: .word 0x00008001
_02395FAC: .word 0x0480824C
_02395FB0: .word 0x0480824E
_02395FB4: .word 0x04805F70
_02395FB8: .word 0x04805F72
_02395FBC: .word 0x04805F7E
_02395FC0: .word 0x04805F76
	arm_func_end FUN_02395E50

	arm_func_start FUN_02395FC4
FUN_02395FC4: ; 0x02395FC4
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	ldr r4, _02396034 ; =0x0380FFF4
	ldr r1, [r4]
	ldr r0, _02396038 ; =0x000004E4
	add r6, r1, r0
	mov r5, #0
	mov r7, #0x18
_02395FE4:
	mul r0, r5, r7
	add r1, r6, r0
	ldrh r0, [r6, r0]
	cmp r0, #0
	beq _0239601C
	sub r0, r0, #1
	strh r0, [r1]
	ldrh r0, [r1]
	cmp r0, #0
	bne _0239601C
	ldr r0, [r4]
	add r0, r0, #0x188
	ldr r1, [r1, #0x14]
	bl FUN_02389658
_0239601C:
	add r5, r5, #1
	cmp r5, #3
	blo _02395FE4
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_02396034: .word 0x0380FFF4
_02396038: .word 0x000004E4
	arm_func_end FUN_02395FC4

	arm_func_start FUN_0239603C
FUN_0239603C: ; 0x0239603C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov sl, r0
	mov sb, r1
	ldr r0, _02396270 ; =0x0380FFF4
	ldr r1, [r0]
	add r8, r1, #0x17c
	ldr r0, _02396274 ; =0x000004E4
	add r7, r1, r0
	ldrh r0, [sl, #8]
	sub r0, r0, #0x18
	strh r0, [sl, #8]
	mov r6, #0
	b _02396114
_02396074:
	mov r0, #0x18
	mul r0, r6, r0
	str r0, [sp, #4]
	add r4, r7, r0
	ldrh r0, [r7, r0]
	cmp r0, #0
	beq _02396110
	add r0, r4, #4
	mov r1, sb
	bl FUN_0238AB18
	cmp r0, #0
	beq _02396110
	add r0, r4, #0xa
	add r1, sb, #6
	bl FUN_0238AB18
	cmp r0, #0
	beq _02396110
	ldrh r0, [sb, #0xc]
	mov r1, r0, lsl #0x10
	mov r2, r1, lsr #0x14
	ldrh r1, [r4, #0x10]
	mov r1, r1, lsl #0x10
	cmp r2, r1, lsr #20
	bne _02396110
	ldr r1, [sp, #4]
	add r2, r7, r1
	ldrh r1, [r2, #0x10]
	sub fp, r1, r0
	ands r0, fp, #0x80000000
	bne _02396264
	ldrh r0, [r2, #2]
	mul r0, fp, r0
	str r0, [sp]
	ldrh r1, [sl, #8]
	subs r5, r1, r0
	beq _02396264
	ands r0, r5, #0x80000000
	beq _0239611C
	b _02396264
_02396110:
	add r6, r6, #1
_02396114:
	cmp r6, #3
	blo _02396074
_0239611C:
	cmp r6, #3
	beq _02396264
	mov r0, #0x18
	mul r4, r6, r0
	add r0, r7, r4
	ldr r0, [r0, #0x14]
	add r6, r0, #0x10
	ldrh r1, [r6, #0x10]
	add sb, r1, r5
	ldr r0, _02396278 ; =0x000005E4
	cmp sb, r0
	bls _02396164
	add r0, r8, #0xc
	sub r1, r6, #0x10
	bl FUN_02389658
	mov r0, #0
	strh r0, [r7, r4]
	b _02396264
_02396164:
	add r2, sl, #0x24
	ldr r0, [sp]
	add r0, r2, r0
	add r2, r6, #0x2c
	add r1, r2, r1
	add r2, r5, #1
	bl FUN_037FAF50
	strh sb, [r6, #0x10]
	ldrh r0, [sl]
	and r0, r0, #0xf0
	mov r1, #0x10
	bl FUN_03801848
	add r2, r7, r4
	ldrh r3, [r2, #0x10]
	bic r1, r3, #0xf
	mov r4, r3, lsl #0x1c
	sub r3, r0, fp
	add r3, r3, r4, lsr #28
	mov r3, r3, lsl #0x10
	mov r3, r3, lsr #0x10
	and r3, r3, #0xf
	orr r1, r1, r3
	strh r1, [r2, #0x10]
	ldr r1, _02396270 ; =0x0380FFF4
	ldr r3, [r1]
	ldr r1, [r3, #0x560]
	add r0, r1, r0
	str r0, [r3, #0x560]
	ldrh r0, [sl]
	ands r0, r0, #0x100
	bne _02396264
	mov r0, #0
	strh r0, [r2]
	ldrh r0, [r6, #8]
	bic r0, r0, #0xf0
	add r0, r0, #0x10
	strh r0, [r6, #8]
	ldrh r0, [r6, #0x10]
	add r0, r0, #0x18
	strh r0, [r6, #0x10]
	ldrh r0, [r6, #8]
	ands r0, r0, #0xf
	beq _02396238
	cmp r0, #8
	bne _02396258
	add r0, r8, #0xc
	add r1, r8, #0x48
	sub r2, r6, #0x10
	bl FUN_023895E4
	mov r0, #2
	mov r1, #6
	bl FUN_02389030
	b _02396264
_02396238:
	add r0, r8, #0xc
	add r1, r8, #0x60
	sub r2, r6, #0x10
	bl FUN_023895E4
	mov r0, #1
	mov r1, #7
	bl FUN_02389030
	b _02396264
_02396258:
	add r0, r8, #0xc
	sub r1, r6, #0x10
	bl FUN_02389658
_02396264:
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_02396270: .word 0x0380FFF4
_02396274: .word 0x000004E4
_02396278: .word 0x000005E4
	arm_func_end FUN_0239603C

	arm_func_start FUN_0239627C
FUN_0239627C: ; 0x0239627C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov sl, r0
	mov sb, r1
	ldr r0, _023964C0 ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, _023964C4 ; =0x000004E4
	add r8, r1, r0
	mvn r6, #0
	mov r7, #0
	add r0, sb, #6
	str r0, [sp]
	mov fp, #0x18
	b _023963C4
_023962B4:
	mul r5, r7, fp
	add r4, r8, r5
	ldrh r0, [r8, r5]
	cmp r0, #0
	beq _023963BC
	add r0, r4, #4
	mov r1, sb
	bl FUN_0238AB18
	cmp r0, #0
	beq _023963C0
	add r0, r4, #0xa
	ldr r1, [sp]
	bl FUN_0238AB18
	cmp r0, #0
	beq _023963C0
	ldrh r0, [sb, #0xc]
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x14
	ldrh r0, [r4, #0x10]
	mov r0, r0, lsl #0x10
	cmp r1, r0, lsr #20
	bne _023963C0
	ldrh r0, [sl]
	and r0, r0, #0xf0
	mov r1, #0x10
	bl FUN_03801848
	mov r6, r0
	ldrh r0, [r4, #0x10]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	subs r0, r6, r0
	beq _023964B4
	ands r0, r0, #0x80000000
	bne _023964B4
	mov r0, r4
	ldr r0, [r0, #0x14]
	add r7, r0, #0x10
	ldrh r2, [r7, #0x10]
	ldrh r0, [sl, #8]
	sub r0, r0, r2
	subs r5, r0, #0x18
	beq _023964B4
	ands r0, r5, #0x80000000
	bne _023964B4
	add r0, sl, #0x24
	add r0, r0, r2
	add r1, r7, #0x2c
	add r1, r1, r2
	mov r2, r5
	bl FUN_037FAF50
	ldrh r0, [r7, #0x10]
	add r0, r0, r5
	strh r0, [r7, #0x10]
	ldrh r0, [r4, #0x10]
	bic r1, r0, #0xf
	mov r0, r6, lsl #0x10
	mov r0, r0, lsr #0x10
	and r0, r0, #0xf
	orr r0, r1, r0
	strh r0, [r4, #0x10]
	ldr r0, _023964C0 ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, [r1, #0x560]
	add r0, r0, r6
	str r0, [r1, #0x560]
	b _023964B4
_023963BC:
	mov r6, r7
_023963C0:
	add r7, r7, #1
_023963C4:
	cmp r7, #3
	blo _023962B4
	mvn r0, #0
	cmp r6, r0
	beq _023964B4
	ldr r0, _023964C0 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x188
	ldr r1, _023964C8 ; =0x00000622
	bl FUN_023896DC
	movs r5, r0
	beq _023964AC
	mov r0, #0x18
	mul r4, r6, r0
	add r6, r8, r4
	mov r0, sb
	add r1, r6, #4
	mov r2, #0x10
	bl FUN_037FAF50
	mov r0, #5
	strh r0, [r8, r4]
	mov r0, r6
	str r5, [r0, #0x14]
	add r5, r5, #0x10
	mov r0, sl
	add r1, r5, #8
	ldrh r2, [sl, #8]
	add r2, r2, #0xc
	bl FUN_037FAF50
	ldr r0, _023964C0 ; =0x0380FFF4
	ldr r0, [r0]
	ldr r0, [r0, #0x30c]
	bl FUN_037FAEC8
	ldrh r0, [r5, #8]
	and r0, r0, #0xf0
	mov r1, #0x10
	bl FUN_03801848
	mov r1, r0
	ldrh r0, [r6, #0x10]
	bic r2, r0, #0xf
	mov r0, r1, lsl #0x10
	mov r0, r0, lsr #0x10
	and r0, r0, #0xf
	orr r0, r2, r0
	strh r0, [r6, #0x10]
	ldr r0, _023964C0 ; =0x0380FFF4
	ldr r2, [r0]
	ldr r0, [r2, #0x560]
	add r0, r0, r1
	str r0, [r2, #0x560]
	ldrh r0, [sl, #8]
	sub r0, r0, #0x18
	strh r0, [r5, #0x10]
	ldrh r0, [r5, #0x10]
	bl FUN_03801A54
	mov r1, r6
	strh r0, [r1, #2]
	b _023964B4
_023964AC:
	mov r0, #4
	bl FUN_02389904
_023964B4:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_023964C0: .word 0x0380FFF4
_023964C4: .word 0x000004E4
_023964C8: .word 0x00000622
	arm_func_end FUN_0239627C

	arm_func_start FUN_023964CC
FUN_023964CC: ; 0x023964CC
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	ldr r0, _023965E0 ; =0x0380FFF4
	ldr r1, [r0]
	add r7, r1, #0x17c
	ldr r6, [r7, #0x6c]
	mvn r0, #0
	cmp r6, r0
	beq _023965D4
	add r5, r6, #0x10
	add r0, r1, #0x300
	ldrh r0, [r0, #0x4c]
	cmp r0, #0x40
	bne _023965B0
	ldrh r1, [r5, #0x10]
	ldr r0, _023965E4 ; =0x000005FC
	cmp r1, r0
	bhi _023965B0
	ldrh r4, [r5, #0x14]
	ands r0, r4, #0x100
	beq _02396544
	add r0, sp, #0
	add r1, r5, #0x24
	bl FUN_0238AEE4
	ands r0, r4, #0x200
	bne _023965B0
	add r0, sp, #6
	add r1, r5, #0x1e
	bl FUN_0238AEE4
	b _02396574
_02396544:
	add r0, sp, #0
	add r1, r5, #0x18
	bl FUN_0238AEE4
	ands r0, r4, #0x200
	beq _02396568
	add r0, sp, #6
	add r1, r5, #0x24
	bl FUN_0238AEE4
	b _02396574
_02396568:
	add r0, sp, #6
	add r1, r5, #0x1e
	bl FUN_0238AEE4
_02396574:
	ldrh r0, [r5, #0x2a]
	strh r0, [sp, #0xc]
	ands r0, r4, #0x400
	beq _023965A4
	ldrh r0, [r5, #0x2a]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	bne _023965A4
	add r0, r5, #8
	add r1, sp, #0
	bl FUN_0239627C
	b _023965B0
_023965A4:
	add r0, r5, #8
	add r1, sp, #0
	bl FUN_0239603C
_023965B0:
	add r0, r7, #0x6c
	mov r1, r6
	bl FUN_02389658
	ldrh r0, [r7, #0x74]
	cmp r0, #0
	beq _023965D4
	mov r0, #2
	mov r1, #9
	bl FUN_02389030
_023965D4:
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_023965E0: .word 0x0380FFF4
_023965E4: .word 0x000005FC
	arm_func_end FUN_023964CC

	arm_func_start FUN_023965E8
FUN_023965E8: ; 0x023965E8
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r4, r0
	ldrh r0, [r4, #2]
	bl FUN_0238EF08
	bl FUN_02389C1C
	add r5, r4, #0x34
	add r0, r4, #0x33
	bl FUN_02389C68
	mov r6, r0
	mov r7, #0
	mov r4, r6, lsr #1
	b _02396634
_0239661C:
	bl FUN_02389BEC
	ldrh r1, [r5], #2
	cmp r1, r0
	movne r0, #0
	bne _02396664
	add r7, r7, #1
_02396634:
	cmp r7, r4
	blo _0239661C
	ands r0, r6, #1
	beq _02396660
	bl FUN_02389BEC
	ldrh r1, [r5]
	and r1, r1, #0xff
	and r0, r0, #0xff
	cmp r1, r0
	movne r0, #0
	bne _02396664
_02396660:
	mov r0, #1
_02396664:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end FUN_023965E8

	arm_func_start FUN_02396670
FUN_02396670: ; 0x02396670
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, r1
	ldr r0, _023966E0 ; =0x04808044
	ldrh r1, [r0]
	ldrh r0, [r0]
	add r0, r1, r0, lsl #8
	mov r0, r0, lsl #0x10
	movs r6, r0, lsr #0x10
	moveq r6, #1
	mov r0, r6
	bl FUN_02389C1C
	mov r0, r5
	mov r1, r6
	bl FUN_0238F0E4
	add r5, r4, #0x34
	add r0, r4, #0x33
	bl FUN_02389C68
	mov r4, r0
	mov r6, #0
	b _023966D0
_023966C4:
	bl FUN_02389BEC
	strh r0, [r5], #2
	add r6, r6, #2
_023966D0:
	cmp r6, r4
	blo _023966C4
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_023966E0: .word 0x04808044
	arm_func_end FUN_02396670

	arm_func_start FUN_023966E4
FUN_023966E4: ; 0x023966E4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	ldr r0, _02396A28 ; =0x0380FFF4
	ldr r1, [r0]
	add sb, r1, #0x17c
	ldr r0, _02396A2C ; =0x0000053C
	add r8, r1, r0
	add r0, r1, #0x300
	ldrh r7, [r0, #0x50]
	ldr r0, [sb, #0x60]
	str r0, [sp]
	mvn r1, #0
	cmp r0, r1
	beq _02396A1C
	add r6, r0, #0x10
	add sl, r6, #0x14
	ldrh r0, [r6, #0x18]
	ands r0, r0, #1
	ldrne r0, [r8, #0x2c]
	addne r0, r0, #1
	strne r0, [r8, #0x2c]
	ldreq r0, [r8, #0x28]
	addeq r0, r0, #1
	streq r0, [r8, #0x28]
	ldrh r0, [r6, #8]
	and r0, r0, #0xf0
	mov r1, #0x10
	bl FUN_03801848
	ldr r1, [r8, #0x24]
	sub r0, r0, #1
	add r0, r1, r0
	str r0, [r8, #0x24]
	ldrh r0, [sl]
	mov r1, r0, lsl #0x1c
	mov r5, r1, lsr #0x1e
	mov r0, r0, lsl #0x18
	mov r4, r0, lsr #0x1c
	add r0, sl, #0xa
	bl FUN_0238F450
	mov fp, r0
	strh fp, [r6, #2]
	cmp fp, #0xff
	bne _023967E4
	mov r0, #0
	strh r0, [r6, #2]
	cmp r7, #1
	bne _023969F8
	cmp r5, #0
	bne _023969F8
	cmp r4, #0
	beq _023967D8
	cmp r4, #4
	beq _023967CC
	cmp r4, #0xb
	bne _023969F8
	mov r0, r6
	bl FUN_02396E98
	b _023969F8
_023967CC:
	mov r0, r6
	bl FUN_023977CC
	b _023969F8
_023967D8:
	mov r0, r6
	bl FUN_02397C8C
	b _023969F8
_023967E4:
	bl FUN_0238F0C0
	mov r0, fp, lsl #0x10
	mov r0, r0, lsr #0x10
	ldrh r1, [r6, #0x12]
	and r1, r1, #0xff
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_0238F20C
	cmp r5, #0
	bne _0239683C
	ldrh r0, [r6, #0x2a]
	str r0, [sp, #4]
	mov r0, fp
	bl FUN_0238EEEC
	ldr r1, [sp, #4]
	cmp r1, r0
	ldreq r0, [r8, #0x3c]
	addeq r0, r0, #1
	streq r0, [r8, #0x3c]
	beq _023969F8
	mov r0, fp
	bl FUN_0238F0FC
_0239683C:
	cmp r7, #1
	beq _02396858
	cmp r7, #2
	beq _02396938
	cmp r7, #3
	beq _02396938
	b _023969F8
_02396858:
	mov r0, fp, lsl #0x10
	mov r0, r0, lsr #0x10
	ldrh r1, [sl]
	mov r1, r1, lsl #0x13
	mov r1, r1, lsr #0x1f
	bl FUN_0238F1A8
	cmp r5, #0
	bne _0239691C
	cmp r4, #0xc
	addls pc, pc, r4, lsl #2
	b _023969F8
_02396884: ; jump table
	b _023968C4 ; case 0
	b _023969F8 ; case 1
	b _023968D0 ; case 2
	b _023969F8 ; case 3
	b _023968DC ; case 4
	b _023968E8 ; case 5
	b _023969F8 ; case 6
	b _023969F8 ; case 7
	b _023968B8 ; case 8
	b _023969F8 ; case 9
	b _023968F8 ; case 10
	b _02396904 ; case 11
	b _02396910 ; case 12
_023968B8:
	mov r0, r6
	bl FUN_02397F5C
	b _023969F8
_023968C4:
	mov r0, r6
	bl FUN_02397C8C
	b _023969F8
_023968D0:
	mov r0, r6
	bl FUN_023979B4
	b _023969F8
_023968DC:
	mov r0, r6
	bl FUN_023977CC
	b _023969F8
_023968E8:
	mov r0, r6
	mov r1, #0
	bl FUN_023973DC
	b _023969F8
_023968F8:
	mov r0, r6
	bl FUN_02397E68
	b _023969F8
_02396904:
	mov r0, r6
	bl FUN_02396E98
	b _023969F8
_02396910:
	mov r0, r6
	bl FUN_02396DDC
	b _023969F8
_0239691C:
	cmp r5, #1
	bne _023969F8
	cmp r4, #0xa
	bne _023969F8
	mov r0, r6
	bl FUN_02396D74
	b _023969F8
_02396938:
	cmp r5, #0
	bne _023969D8
	cmp r4, #0xc
	addls pc, pc, r4, lsl #2
	b _023969F8
_0239694C: ; jump table
	b _023969F8 ; case 0
	b _0239698C ; case 1
	b _023969F8 ; case 2
	b _02396998 ; case 3
	b _023969F8 ; case 4
	b _023969A4 ; case 5
	b _023969F8 ; case 6
	b _023969F8 ; case 7
	b _02396980 ; case 8
	b _023969F8 ; case 9
	b _023969B4 ; case 10
	b _023969C0 ; case 11
	b _023969CC ; case 12
_02396980:
	mov r0, r6
	bl FUN_02397F5C
	b _023969F8
_0239698C:
	mov r0, r6
	bl FUN_02397B60
	b _023969F8
_02396998:
	mov r0, r6
	bl FUN_02397880
	b _023969F8
_023969A4:
	mov r0, r6
	mov r1, #0
	bl FUN_023973DC
	b _023969F8
_023969B4:
	mov r0, r6
	bl FUN_02397E68
	b _023969F8
_023969C0:
	mov r0, r6
	bl FUN_02396E98
	b _023969F8
_023969CC:
	mov r0, r6
	bl FUN_02396DDC
	b _023969F8
_023969D8:
	cmp r5, #1
	bne _023969F8
	cmp r4, #0xe
	beq _023969F0
	cmp r4, #0xf
	bne _023969F8
_023969F0:
	mov r0, r6
	bl FUN_02396D70
_023969F8:
	add r0, sb, #0x60
	ldr r1, [sp]
	bl FUN_02389658
	ldrh r0, [sb, #0x68]
	cmp r0, #0
	beq _02396A1C
	mov r0, #1
	mov r1, #7
	bl FUN_02389030
_02396A1C:
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_02396A28: .word 0x0380FFF4
_02396A2C: .word 0x0000053C
	arm_func_end FUN_023966E4

	arm_func_start FUN_02396A30
FUN_02396A30: ; 0x02396A30
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov sb, r0
	ldr r0, _02396D6C ; =0x0380FFF4
	ldr r0, [r0]
	add r8, r0, #0x344
	ldr r7, [sb]
	ldrh r0, [r8, #0x7a]
	strh r0, [sb, #0x12]
	ldrh r0, [sb, #0xc]
	ands r0, r0, #0x800
	ldrneh r0, [sb, #0xa]
	orrne r0, r0, #1
	strneh r0, [sb, #0xa]
	ldrh r6, [sb, #8]
	add r4, sb, #0xc
	add fp, sb, #0x14
	b _02396CDC
_02396A78:
	mov r0, r7
	bl FUN_02389C68
	mov sl, r0
	add r0, r7, #1
	add r7, r7, #2
	bl FUN_02389C68
	mov r5, r0
	cmp sl, #6
	addls pc, pc, sl, lsl #2
	b _02396ABC
_02396AA0: ; jump table
	b _02396AC8 ; case 0
	b _02396B34 ; case 1
	b _02396CD0 ; case 2
	b _02396BA0 ; case 3
	b _02396C14 ; case 4
	b _02396BF4 ; case 5
	b _02396CD0 ; case 6
_02396ABC:
	cmp sl, #0xdd
	beq _02396C34
	b _02396CB4
_02396AC8:
	cmp r5, #0x20
	bhi _02396CD0
	ldrh r0, [r4]
	orr r0, r0, #1
	strh r0, [r4]
	sub r0, r7, #2
	str r0, [sb, #0x1c]
	cmp r5, #0
	bne _02396B04
	ldrh r0, [sb, #0xc]
	ands r0, r0, #0x800
	ldrneh r0, [sb, #0xa]
	orrne r0, r0, #1
	strneh r0, [sb, #0xa]
	bne _02396CD0
_02396B04:
	ldrh r0, [sb, #0xa]
	bic r0, r0, #1
	strh r0, [sb, #0xa]
	mov r0, r5, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, r7
	bl FUN_0238AB54
	cmp r0, #0
	ldrneh r0, [sb, #0xa]
	orrne r0, r0, #1
	strneh r0, [sb, #0xa]
	b _02396CD0
_02396B34:
	cmp r5, #1
	blo _02396CD0
	ldrh r0, [r4]
	orr r0, r0, #4
	strh r0, [r4]
	sub r0, r7, #2
	mov r1, fp
	bl FUN_0238AA3C
	ldrh r1, [sb, #0x14]
	ldrh r0, [r8, #0x60]
	ldrh r2, [r8, #0x62]
	orr r2, r0, r2
	mvn r2, r2
	ands r2, r1, r2
	bne _02396B90
	ldrh r2, [sb, #0x16]
	orr r1, r1, r2
	and r1, r0, r1
	cmp r0, r1
	ldreqh r0, [sb, #0xa]
	orreq r0, r0, #4
	streqh r0, [sb, #0xa]
	beq _02396CD0
_02396B90:
	ldrh r0, [sb, #0xa]
	bic r0, r0, #4
	strh r0, [sb, #0xa]
	b _02396CD0
_02396BA0:
	cmp r5, #1
	blo _02396CD0
	ldrh r0, [r4]
	orr r0, r0, #2
	strh r0, [r4]
	mov r0, r7
	bl FUN_02389C68
	strh r0, [sb, #0x12]
	ldrh r1, [sb, #0x12]
	ldr r0, _02396D6C ; =0x0380FFF4
	ldr r0, [r0]
	ldr r0, [r0, #0x41c]
	ldrh r0, [r0, #0x4a]
	cmp r1, r0
	ldreqh r0, [sb, #0xa]
	orreq r0, r0, #2
	streqh r0, [sb, #0xa]
	ldrneh r0, [sb, #0xa]
	bicne r0, r0, #2
	strneh r0, [sb, #0xa]
	b _02396CD0
_02396BF4:
	cmp r5, #3
	blo _02396CD0
	ldrh r0, [sb, #0xc]
	orr r0, r0, #0x100
	strh r0, [sb, #0xc]
	sub r0, r7, #2
	str r0, [sb, #0x24]
	b _02396CD0
_02396C14:
	cmp r5, #6
	blo _02396CD0
	ldrh r0, [sb, #0xc]
	orr r0, r0, #0x200
	strh r0, [sb, #0xc]
	sub r0, r7, #2
	str r0, [sb, #0x20]
	b _02396CD0
_02396C34:
	cmp r5, #8
	blo _02396C7C
	mov r0, r7
	bl FUN_02389C68
	cmp r0, #0
	bne _02396C7C
	add r0, r7, #1
	bl FUN_02389C68
	cmp r0, #9
	bne _02396C7C
	add r0, r7, #2
	bl FUN_02389C68
	cmp r0, #0xbf
	bne _02396C7C
	add r0, r7, #3
	bl FUN_02389C68
	cmp r0, #0
	beq _02396C9C
_02396C7C:
	ldrh r0, [sb, #0x18]
	add r0, r0, #1
	strh r0, [sb, #0x18]
	ldrh r1, [sb, #0x1a]
	add r0, r5, #2
	add r0, r1, r0
	strh r0, [sb, #0x1a]
	b _02396CD0
_02396C9C:
	ldrh r0, [sb, #0xc]
	orr r0, r0, #0x400
	strh r0, [sb, #0xc]
	sub r0, r7, #2
	str r0, [sb, #0x28]
	b _02396CD0
_02396CB4:
	ldrh r0, [sb, #0x18]
	add r0, r0, #1
	strh r0, [sb, #0x18]
	ldrh r1, [sb, #0x1a]
	add r0, r5, #2
	add r0, r1, r0
	strh r0, [sb, #0x1a]
_02396CD0:
	add r7, r7, r5
	add r0, r5, #2
	sub r6, r6, r0
_02396CDC:
	cmp r6, #0
	bgt _02396A78
	ldrh r0, [sb, #0xc]
	ands r0, r0, #8
	beq _02396D14
	ldrh r0, [r8, #0x64]
	ands r0, r0, #1
	bne _02396D08
	ldrh r0, [sb, #4]
	ands r0, r0, #0x8000
	beq _02396D14
_02396D08:
	ldrh r0, [sb, #0xa]
	orr r0, r0, #8
	strh r0, [sb, #0xa]
_02396D14:
	ldrh r0, [sb, #0xc]
	ands r0, r0, #0x30
	beq _02396D60
	ldrh r0, [sb, #6]
	and r1, r0, #3
	ldrh r0, [r8, #0x7c]
	and r0, r0, #3
	cmp r1, r0
	ldreqh r0, [sb, #0xa]
	orreq r0, r0, #0x10
	streqh r0, [sb, #0xa]
	ldrh r0, [sb, #6]
	and r1, r0, #0x10
	ldrh r0, [r8, #0x7c]
	and r0, r0, #0x10
	cmp r1, r0
	ldreqh r0, [sb, #0xa]
	orreq r0, r0, #0x20
	streqh r0, [sb, #0xa]
_02396D60:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_02396D6C: .word 0x0380FFF4
	arm_func_end FUN_02396A30

	arm_func_start FUN_02396D70
FUN_02396D70: ; 0x02396D70
	bx lr
	arm_func_end FUN_02396D70

	arm_func_start FUN_02396D74
FUN_02396D74: ; 0x02396D74
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r1, _02396DD8 ; =0x0380FFF4
	ldr r1, [r1]
	add r5, r1, #0x17c
	ldrh r4, [r0, #2]
	mov r0, r4
	bl FUN_0238EF80
	cmp r0, #0x40
	bne _02396DCC
	mov r0, r4
	bl FUN_0238F144
	ldrh r0, [r5, #0x2c]
	cmp r0, #0
	beq _02396DB8
	mov r0, #1
	bl FUN_02395C00
_02396DB8:
	ldrh r0, [r5, #0x20]
	cmp r0, #0
	beq _02396DCC
	mov r0, #0
	bl FUN_02395C00
_02396DCC:
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_02396DD8: .word 0x0380FFF4
	arm_func_end FUN_02396D74

	arm_func_start FUN_02396DDC
FUN_02396DDC: ; 0x02396DDC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, _02396E94 ; =0x0380FFF4
	ldr r0, [r0]
	add r1, r0, #0x344
	ldrh r5, [r4, #2]
	ldrh r0, [r1, #0xc]
	cmp r0, #1
	beq _02396E18
	cmp r0, #2
	beq _02396E50
	cmp r0, #3
	beq _02396E50
	b _02396E88
_02396E18:
	mov r0, r5
	bl FUN_0238EF80
	cmp r0, #0x20
	bls _02396E88
	mov r0, r5, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, #0x20
	bl FUN_0238F224
	add r0, r4, #0x1e
	ldrh r1, [r4, #0x2c]
	bl FUN_023900C0
	mov r0, r5
	bl FUN_02394E40
	b _02396E88
_02396E50:
	ldrh r0, [r1, #8]
	cmp r0, #0x20
	bls _02396E88
	add r0, r4, #0x1e
	add r1, r1, #0x82
	bl FUN_0238AB18
	cmp r0, #0
	beq _02396E88
	mov r0, #0x20
	bl FUN_0238AF00
	bl FUN_0238AFEC
	add r0, r4, #0x1e
	ldrh r1, [r4, #0x2c]
	bl FUN_023900C0
_02396E88:
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_02396E94: .word 0x0380FFF4
	arm_func_end FUN_02396DDC

	arm_func_start FUN_02396E98
FUN_02396E98: ; 0x02396E98
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov sl, r0
	ldr r0, _023973C4 ; =0x0380FFF4
	ldr r1, [r0]
	add sb, r1, #0x344
	ldr r0, _023973C8 ; =0x00000404
	add r8, r1, r0
	add r7, sl, #0x2c
	add r0, r1, #0x600
	ldrh r0, [r0, #0x90]
	ands r0, r0, #8
	beq _02396F4C
	ldr r0, _023973CC ; =0x0000042C
	add r2, r1, r0
	ldr r0, _023973D0 ; =0x048080B0
	ldrh r1, [r0]
	ands r0, r1, #1
	beq _02396EF0
	ldrh r0, [r2]
	cmp r0, #0
	bne _02396F4C
_02396EF0:
	ands r0, r1, #4
	beq _02396F04
	ldrh r0, [r2, #0x14]
	cmp r0, #0
	bne _02396F4C
_02396F04:
	ands r0, r1, #8
	beq _02396F18
	ldrh r0, [r2, #0x28]
	cmp r0, #0
	bne _02396F4C
_02396F18:
	ldr r0, _023973D4 ; =0x0480819C
	ldrh r0, [r0]
	ands r0, r0, #1
	bne _02396F4C
	mov r2, #0
	ldr r1, _023973D8 ; =0x04808032
	strh r2, [r1]
	mov r0, #0x8000
	strh r0, [r1]
	ldr r0, _023973C4 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x400
	strh r2, [r0, #0xde]
_02396F4C:
	add r0, sl, #0x1e
	mov r1, #0xb0
	bl FUN_02393D08
	cmp r0, #0
	bne _023973B8
	mov r5, #0
	ldrh r0, [r7, #2]
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	mov fp, r0, lsr #0x10
	ldrh r6, [sl, #2]
	cmp r6, #0
	moveq r4, #0x13
	moveq r5, #1
	beq _0239737C
	ldrh r0, [sb, #0xc]
	cmp r0, #1
	bne _02396FFC
	mov r0, r6
	bl FUN_0238EF80
	cmp r0, #0x20
	bls _02396FC0
	mov r0, r6, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, #0x20
	bl FUN_0238F224
	add r0, sl, #0x1e
	mov r1, #1
	bl FUN_023900C0
_02396FC0:
	ldrh r0, [sl, #8]
	ands r0, r0, #0x400
	beq _02396FFC
	mov r0, r6
	bl FUN_0238EF08
	cmp r0, #0
	beq _02396FFC
	mov r5, #1
	strh r5, [r7]
	mov r4, #0xf
	mov fp, #4
	mov r0, r6
	mov r1, #0
	bl FUN_0238F0E4
	b _0239737C
_02396FFC:
	ldrh r0, [r7]
	cmp r0, #0
	beq _02397014
	cmp r0, #1
	beq _0239710C
	b _0239736C
_02397014:
	ldrh r1, [sb, #0xc]
	cmp r1, #1
	bne _02397040
	ldr r0, _023973C4 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x32]
	cmp r0, #1
	moveq r4, #0xd
	moveq r5, #1
	beq _0239737C
_02397040:
	cmp r1, #1
	bne _02397068
	ldrh r0, [r7, #2]
	cmp r0, #1
	moveq r4, #0
	moveq r5, #1
	movne r4, #0xe
	movne fp, #2
	movne r5, #1
	b _0239737C
_02397068:
	cmp r1, #1
	beq _0239737C
	ldrh r0, [r7, #2]
	cmp r0, #2
	bne _0239737C
	ldr r1, [r8, #0x18]
	ldrh r0, [r1, #0x16]
	cmp r0, #0
	bne _0239737C
	add r0, r1, #0x10
	add r1, sl, #0x1e
	bl FUN_0238AB18
	cmp r0, #0
	beq _0239737C
	ldrh r0, [r8]
	cmp r0, #0x31
	bne _0239737C
	bl FUN_02389DE0
	ldrh r0, [r7, #4]
	cmp r0, #0
	bne _023970DC
	mov r0, #0x30
	bl FUN_0238AF00
	mov r1, #0
	ldr r0, [r8, #0x1c]
	strh r1, [r0, #4]
	ldr r0, [r8, #0x1c]
	strh r1, [r0, #6]
	b _023970F4
_023970DC:
	mov r1, #0xc
	ldr r0, [r8, #0x1c]
	strh r1, [r0, #4]
	ldrh r1, [r7, #4]
	ldr r0, [r8, #0x1c]
	strh r1, [r0, #6]
_023970F4:
	mov r0, #0x35
	strh r0, [r8]
	mov r0, #2
	mov r1, r0
	bl FUN_02389030
	b _0239737C
_0239710C:
	ldrh r0, [sb, #0xc]
	cmp r0, #1
	bne _02397208
	mov r0, r6, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, #0x20
	bl FUN_0238F224
	ldrh r0, [r7, #2]
	cmp r0, #1
	bne _02397178
	add r0, sl, #0x1e
	mov r1, #0x80
	mov r2, #1
	bl FUN_02393EC0
	movs r8, r0
	beq _0239737C
	ldrh r0, [r7]
	strh r0, [r8, #0x2c]
	strh fp, [r8, #0x2e]
	mov r0, #0
	strh r0, [r8, #0x30]
	mov r0, r6
	mov r1, r8
	bl FUN_02396670
	mov r0, r8
	bl FUN_02394BF4
	b _0239737C
_02397178:
	cmp r0, #3
	bne _023971EC
	mov r0, r6
	bl FUN_0238EF80
	cmp r0, #0x20
	bne _023971A0
	mov r0, r6
	bl FUN_0238EF08
	cmp r0, #0
	bne _023971AC
_023971A0:
	mov r4, #1
	mov r5, r4
	b _0239737C
_023971AC:
	mov r0, sl
	bl FUN_023965E8
	cmp r0, #0
	bne _023971D4
	mov r4, #0xf
	mov r5, #1
	mov r0, r6
	mov r1, #0
	bl FUN_0238F0E4
	b _0239737C
_023971D4:
	mov r0, r6
	mov r1, #0
	bl FUN_0238F0E4
	mov r4, #0
	mov r5, #1
	b _0239737C
_023971EC:
	mov r0, r6
	mov r1, #0
	bl FUN_0238F0E4
	mov r4, #0xe
	mov fp, #2
	mov r5, #1
	b _0239737C
_02397208:
	ldr r1, [r8, #0x18]
	ldrh r0, [r1, #0x16]
	cmp r0, #1
	bne _0239737C
	add r0, r1, #0x10
	add r1, sl, #0x1e
	bl FUN_0238AB18
	cmp r0, #0
	beq _0239737C
	ldrh r0, [r7, #2]
	cmp r0, #2
	bne _023972F8
	ldrh r0, [r8]
	cmp r0, #0x31
	bne _0239737C
	ldrh r0, [r7, #4]
	cmp r0, #0
	beq _0239728C
	bl FUN_02389DE0
	mov r0, #0x35
	strh r0, [r8]
	mov r1, #0xc
	ldr r0, [r8, #0x1c]
	strh r1, [r0, #4]
	ldrh r1, [r7, #4]
	ldr r0, [r8, #0x1c]
	strh r1, [r0, #6]
	mov r0, #2
	mov r1, r0
	bl FUN_02389030
	mov r0, #0x20
	bl FUN_0238AF00
	b _0239737C
_0239728C:
	mov r0, #0x33
	strh r0, [r8]
	add r0, sl, #0x33
	bl FUN_02389C68
	mov r1, r0
	add r0, sl, #0x1e
	mov r2, #1
	bl FUN_02393EC0
	movs r6, r0
	beq _0239737C
	ldrh r0, [r6, #0x14]
	orr r0, r0, #0x4000
	strh r0, [r6, #0x14]
	add r0, sl, #0x2c
	add r1, r6, #0x2c
	ldrh r2, [sl, #6]
	add r2, r2, #1
	bl FUN_037FAF50
	ldrh r0, [r7]
	strh r0, [r6, #0x2c]
	mov r0, #3
	strh r0, [r6, #0x2e]
	mov r0, #0
	strh r0, [r6, #0x30]
	mov r0, r6
	bl FUN_02394BF4
	b _0239737C
_023972F8:
	cmp r0, #4
	bne _0239737C
	ldrh r0, [r8]
	cmp r0, #0x33
	bne _0239737C
	bl FUN_02389DE0
	ldrh r0, [r7, #4]
	cmp r0, #0
	bne _0239733C
	mov r0, #0x30
	bl FUN_0238AF00
	mov r1, #0
	ldr r0, [r8, #0x1c]
	strh r1, [r0, #4]
	ldr r0, [r8, #0x1c]
	strh r1, [r0, #6]
	b _02397354
_0239733C:
	mov r1, #0xc
	ldr r0, [r8, #0x1c]
	strh r1, [r0, #4]
	ldrh r1, [r7, #4]
	ldr r0, [r8, #0x1c]
	strh r1, [r0, #6]
_02397354:
	mov r0, #0x35
	strh r0, [r8]
	mov r0, #2
	mov r1, r0
	bl FUN_02389030
	b _0239737C
_0239736C:
	ldrh r0, [sb, #0xc]
	cmp r0, #1
	moveq r4, #0xd
	moveq r5, #1
_0239737C:
	cmp r5, #0
	beq _023973B8
	cmp r4, #0
	movne r2, #1
	moveq r2, #0
	add r0, sl, #0x1e
	mov r1, #0
	bl FUN_02393EC0
	cmp r0, #0
	beq _023973B8
	ldrh r1, [r7]
	strh r1, [r0, #0x2c]
	strh fp, [r0, #0x2e]
	strh r4, [r0, #0x30]
	bl FUN_02394BF4
_023973B8:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_023973C4: .word 0x0380FFF4
_023973C8: .word 0x00000404
_023973CC: .word 0x0000042C
_023973D0: .word 0x048080B0
_023973D4: .word 0x0480819C
_023973D8: .word 0x04808032
	arm_func_end FUN_02396E98

	arm_func_start FUN_023973DC
FUN_023973DC: ; 0x023973DC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x34
	mov r5, r0
	mov sl, r1
	ldr r0, _023977C0 ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, _023977C4 ; =0x00000404
	add sb, r1, r0
	add r0, r1, #0x400
	ldrh r0, [r0, #4]
	cmp r0, #0x13
	bne _023977B4
	ldr r8, [sb, #0x1c]
	add r4, r5, #0x2c
	ldr r0, [sb, #0x18]
	add r6, r0, #0x4e
	mov r7, #0
	add fp, r5, #0x24
	b _02397454
_02397428:
	mov r0, r6
	mov r1, fp
	bl FUN_0238AB18
	cmp r0, #0
	ldrneh r1, [r8, #6]
	movne r0, #1
	orrne r0, r1, r0, lsl r7
	strneh r0, [r8, #6]
	bne _023977B4
	add r6, r6, #6
	add r7, r7, #1
_02397454:
	ldr r0, [sb, #0x18]
	ldrh r0, [r0, #0x4c]
	cmp r7, r0
	blo _02397428
	add r7, r8, #0xa
	mov r6, #0
	add fp, r5, #0x24
	b _02397494
_02397474:
	mov r0, fp
	add r1, r7, #4
	bl FUN_0238AB18
	cmp r0, #0
	bne _023977B4
	ldrh r0, [r7]
	add r7, r7, r0, lsl #1
	add r6, r6, #1
_02397494:
	ldrh r0, [r8, #8]
	cmp r6, r0
	blo _02397474
	mov r0, #0
	mov r1, r7
	mov r2, #0x40
	bl FUN_037FAF38
	ldrh r6, [r5, #6]
	cmp r6, #0xc
	bls _023977B4
	cmp sl, #0
	bne _02397510
	mov r0, #0
	add r1, sp, #8
	mov r2, #0x2c
	bl FUN_037FAF6C
	add r0, r4, #0xc
	str r0, [sp, #8]
	sub r0, r6, #0xc
	strh r0, [sp, #0x10]
	mov r0, #3
	strh r0, [sp, #0x12]
	mov r0, #0x38
	strh r0, [sp, #0x14]
	ldrh r0, [r5, #8]
	strh r0, [sp, #0xc]
	ldrh r0, [r4, #0xa]
	strh r0, [sp, #0xe]
	add r0, sp, #8
	bl FUN_02396A30
	add sl, sp, #8
_02397510:
	ldr r0, [sl, #0x28]
	cmp r0, #0
	ldreqh r0, [sl, #0x1a]
	addeq r0, r0, #0x41
	moveq r0, r0, lsr #1
	streqh r0, [r7]
	beq _0239754C
	add r0, r0, #1
	bl FUN_02389C68
	sub r0, r0, #8
	strh r0, [r7, #0x3c]
	ldrh r0, [r7, #0x3c]
	add r0, r0, #0x41
	mov r0, r0, lsr #1
	strh r0, [r7]
_0239754C:
	ldrh r0, [sl, #0xa]
	and r0, r0, #1
	cmp r0, #1
	bne _023977A8
	ldr r0, _023977C0 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x400
	ldrh r1, [r0, #8]
	ldrh r0, [r7]
	cmp r1, r0
	blo _023977A8
	ldrh r0, [r4, #0xa]
	strh r0, [r7, #0x2c]
	add r0, r7, #4
	add r1, r5, #0x24
	bl FUN_0238AEE4
	ldrh r0, [r4, #8]
	strh r0, [r7, #0x32]
	ldrh r0, [r5, #0x12]
	and r0, r0, #0xff
	strh r0, [r7, #2]
	ldr r0, [sl, #0x28]
	cmp r0, #0
	beq _023975E8
	mov r4, #0
	add r5, r7, #0x40
	b _023975D8
_023975B8:
	ldr r0, [sl, #0x28]
	add r0, r0, #0xa
	add r0, r0, r4
	bl FUN_02389C68
	mov r1, r0
	add r0, r5, r4
	bl FUN_02389C88
	add r4, r4, #1
_023975D8:
	ldrh r0, [r7, #0x3c]
	cmp r4, r0
	blo _023975B8
	b _02397690
_023975E8:
	ldrh r0, [sl, #0x18]
	strh r0, [r7, #0x3e]
	ldrh r0, [sl, #0x18]
	cmp r0, #0
	beq _02397690
	add r6, r4, #0xc
	add fp, r7, #0x40
	mov r5, #0
	str r5, [sp]
	b _02397684
_02397610:
	mov r0, r6
	bl FUN_02389C68
	mov r4, r0
	add r0, r6, #1
	bl FUN_02389C68
	cmp r4, #6
	bls _0239767C
	ldr r1, [sl, #0x28]
	cmp r6, r1
	beq _0239767C
	ldr r4, [sp]
	add r0, r0, #2
	str r0, [sp, #4]
	b _02397668
_02397648:
	mov r0, r6
	bl FUN_02389C68
	mov r1, r0
	mov r0, fp
	bl FUN_02389C88
	add fp, fp, #1
	add r6, r6, #1
	add r4, r4, #1
_02397668:
	ldr r0, [sp, #4]
	cmp r4, r0
	blo _02397648
	add r5, r5, #1
	b _02397684
_0239767C:
	add r0, r0, #2
	add r6, r6, r0
_02397684:
	ldrh r0, [sl, #0x18]
	cmp r5, r0
	blo _02397610
_02397690:
	ldr r0, [sl, #0x1c]
	cmp r0, #0
	beq _023976E4
	add r0, r0, #1
	bl FUN_02389C68
	strh r0, [r7, #0xa]
	mov r4, #0
	add r5, r7, #0xc
	b _023976D4
_023976B4:
	ldr r0, [sl, #0x1c]
	add r0, r0, #2
	add r0, r0, r4
	bl FUN_02389C68
	mov r1, r0
	add r0, r5, r4
	bl FUN_02389C88
	add r4, r4, #1
_023976D4:
	ldrh r0, [r7, #0xa]
	cmp r4, r0
	blo _023976B4
	b _0239770C
_023976E4:
	mov r6, #0
	strh r6, [r7, #0xa]
	add r5, r7, #0xc
	mov r4, r6
_023976F4:
	add r0, r5, r6
	mov r1, r4
	bl FUN_02389C88
	add r6, r6, #1
	cmp r6, #0x20
	blo _023976F4
_0239770C:
	ldrh r0, [sl, #0x14]
	strh r0, [r7, #0x2e]
	ldrh r0, [sl, #0x16]
	strh r0, [r7, #0x30]
	ldrh r0, [sl, #0x12]
	strh r0, [r7, #0x36]
	ldr r0, [sl, #0x20]
	cmp r0, #0
	beq _0239773C
	add r0, r0, #3
	bl FUN_02389C68
	strh r0, [r7, #0x38]
_0239773C:
	ldr r0, [sl, #0x24]
	cmp r0, #0
	beq _02397754
	add r0, r0, #3
	bl FUN_02389C68
	strh r0, [r7, #0x34]
_02397754:
	ldrh r1, [r8, #2]
	ldrh r0, [r7]
	add r0, r1, r0
	strh r0, [r8, #2]
	ldrh r0, [r8, #8]
	add r0, r0, #1
	strh r0, [r8, #8]
	ldrh r1, [sb, #4]
	ldrh r0, [r7]
	sub r0, r1, r0
	strh r0, [sb, #4]
	ldrh r0, [sb, #4]
	cmp r0, #0x20
	bhs _023977B4
	bl FUN_02389DE0
	mov r0, #0x15
	strh r0, [sb]
	mov r0, #2
	mov r1, #0
	bl FUN_02389030
	b _023977B4
_023977A8:
	add r0, r7, #4
	ldr r1, _023977C8 ; =_023992EC
	bl FUN_0238AEE4
_023977B4:
	add sp, sp, #0x34
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_023977C0: .word 0x0380FFF4
_023977C4: .word 0x00000404
_023977C8: .word _023992EC
	arm_func_end FUN_023973DC

	arm_func_start FUN_023977CC
FUN_023977CC: ; 0x023977CC
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x30
	mov r4, r0
	add r0, r4, #0x1e
	mov r1, #0x50
	bl FUN_02393D08
	cmp r0, #0
	bne _02397870
	ldrh r0, [r4, #0x24]
	ands r0, r0, #1
	bne _02397804
	ldrh r0, [r4, #8]
	ands r0, r0, #0x8000
	beq _02397870
_02397804:
	mov r0, #0
	add r1, sp, #0
	mov r2, #0x2c
	bl FUN_037FAF6C
	add r0, r4, #0x2c
	str r0, [sp]
	ldrh r0, [r4, #6]
	strh r0, [sp, #8]
	ldr r0, _0239787C ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x300
	ldrh r0, [r0, #0x3a]
	mov r0, r0, lsl #0x1e
	movs r0, r0, lsr #0x1f
	moveq r0, #0x800
	streqh r0, [sp, #0xc]
	add r0, sp, #0
	bl FUN_02396A30
	ldrh r0, [sp, #0xa]
	and r0, r0, #1
	cmp r0, #1
	bne _02397870
	add r0, r4, #0x1e
	bl FUN_02393F84
	cmp r0, #0
	beq _02397870
	bl FUN_02394BF4
_02397870:
	add sp, sp, #0x30
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_0239787C: .word 0x0380FFF4
	arm_func_end FUN_023977CC

	arm_func_start FUN_02397880
FUN_02397880: ; 0x02397880
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	ldr r0, _023979A8 ; =0x0380FFF4
	ldr r1, [r0]
	add r6, r1, #0x344
	ldr r0, _023979AC ; =0x00000404
	add r5, r1, r0
	add r4, r7, #0x2c
	ldrh r0, [r6, #0xc]
	cmp r0, #2
	beq _023978B8
	cmp r0, #3
	bne _0239799C
_023978B8:
	ldrh r0, [r5]
	cmp r0, #0x61
	bne _0239799C
	ldr r0, [r5, #0x18]
	add r0, r0, #0x10
	add r1, r7, #0x1e
	bl FUN_0238AB18
	cmp r0, #0
	beq _0239799C
	bl FUN_02389DE0
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _02397938
	ldrh r1, [r4, #4]
	ldr r0, _023979B0 ; =0x00000FFF
	and r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl FUN_0238B048
	ldrh r0, [r6, #0x6a]
	bl FUN_02393DD0
	add r0, r6, #0x82
	add r1, r7, #0x1e
	bl FUN_0238AEE4
	add r0, r7, #0x1e
	bl FUN_0238F598
	strh r0, [r6, #0x88]
	ldrh r0, [r6, #0x88]
	mov r1, #0x40
	bl FUN_0238F224
	mov r0, #0x40
	bl FUN_0238AF00
_02397938:
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _02397964
	mov r1, #0
	ldr r0, [r5, #0x1c]
	strh r1, [r0, #4]
	ldr r0, [r5, #0x1c]
	strh r1, [r0, #6]
	mov r0, #0x40
	bl FUN_0238AF00
	b _0239797C
_02397964:
	mov r1, #0xc
	ldr r0, [r5, #0x1c]
	strh r1, [r0, #4]
	ldrh r1, [r4, #2]
	ldr r0, [r5, #0x1c]
	strh r1, [r0, #6]
_0239797C:
	ldrh r1, [r6, #0x6a]
	ldr r0, [r5, #0x1c]
	strh r1, [r0, #8]
	mov r0, #0x63
	strh r0, [r5]
	mov r0, #2
	mov r1, #4
	bl FUN_02389030
_0239799C:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_023979A8: .word 0x0380FFF4
_023979AC: .word 0x00000404
_023979B0: .word 0x00000FFF
	arm_func_end FUN_02397880

	arm_func_start FUN_023979B4
FUN_023979B4: ; 0x023979B4
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x30
	mov r8, r0
	ldr r0, _02397B58 ; =0x0380FFF4
	ldr r7, [r0]
	ldrh r5, [r8, #6]
	add r6, r8, #0x2c
	cmp r5, #0xa
	bls _02397B4C
	add r0, r7, #0x300
	ldrh r0, [r0, #0x50]
	cmp r0, #1
	bne _02397B4C
	add r0, r8, #0x1e
	mov r1, #0x30
	bl FUN_02393D08
	cmp r0, #0
	bne _02397B4C
	ldrh r4, [r8, #2]
	mov r0, r4
	bl FUN_0238EF80
	cmp r0, #0x30
	bhs _02397A44
	add r0, r8, #0x1e
	mov r1, #0xc0
	bl FUN_02393D08
	cmp r0, #0
	bne _02397B4C
	add r0, r8, #0x1e
	mov r1, #6
	mov r2, #1
	bl FUN_02393E24
	cmp r0, #0
	beq _02397B4C
	bl FUN_02394BF4
	b _02397B4C
_02397A44:
	mov r0, r4
	bl FUN_0238EF80
	cmp r0, #0x40
	bne _02397A70
	mov r0, r4
	mov r1, #0x30
	bl FUN_0238F224
	add r0, r8, #0x1e
	mov r1, #1
	bl FUN_0238FE58
	b _02397A80
_02397A70:
	mov r0, r4
	bl FUN_0238EEA8
	cmp r0, #0
	bne _02397B4C
_02397A80:
	mov r0, #0
	add r1, sp, #0
	mov r2, #0x2c
	bl FUN_037FAF6C
	add r0, r6, #0xa
	str r0, [sp]
	sub r0, r5, #0xa
	strh r0, [sp, #8]
	mov r0, #0x800
	strh r0, [sp, #0xc]
	add r0, sp, #0
	bl FUN_02396A30
	ldrh r1, [r6]
	ldr r0, _02397B5C ; =0x0000FFC2
	ands r0, r1, r0
	bne _02397AF8
	add r0, r7, #0x300
	ldrh r2, [r0, #0x34]
	cmp r2, #0
	bne _02397AE0
	mov r0, r1, lsl #0x1b
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	beq _02397AF8
_02397AE0:
	cmp r2, #0
	beq _02397B00
	ldrh r0, [r6]
	mov r0, r0, lsl #0x1b
	movs r0, r0, lsr #0x1f
	bne _02397B00
_02397AF8:
	mov r1, #0xa
	b _02397B34
_02397B00:
	mov r0, r4
	bl FUN_0238F12C
	ldrh r1, [sp, #0xa]
	ands r0, r1, #1
	moveq r1, #1
	beq _02397B34
	ands r0, r1, #4
	moveq r1, #0x12
	beq _02397B34
	mov r0, r4
	ldrh r1, [sp, #0x16]
	bl FUN_0238F114
	mov r1, #0
_02397B34:
	mov r0, r4
	ldr r2, [sp, #0x1c]
	bl FUN_023940FC
	cmp r0, #0
	beq _02397B4C
	bl FUN_02394BF4
_02397B4C:
	add sp, sp, #0x30
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_02397B58: .word 0x0380FFF4
_02397B5C: .word 0x0000FFC2
	arm_func_end FUN_023979B4

	arm_func_start FUN_02397B60
FUN_02397B60: ; 0x02397B60
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	ldr r0, _02397C80 ; =0x0380FFF4
	ldr r1, [r0]
	add r6, r1, #0x344
	ldr r0, _02397C84 ; =0x00000404
	add r5, r1, r0
	add r4, r7, #0x2c
	ldrh r0, [r6, #0xc]
	cmp r0, #2
	beq _02397B98
	cmp r0, #3
	bne _02397C74
_02397B98:
	ldrh r0, [r5]
	cmp r0, #0x51
	bne _02397C74
	ldr r0, [r5, #0x18]
	add r0, r0, #0x10
	add r1, r7, #0x1e
	bl FUN_0238AB18
	cmp r0, #0
	beq _02397C74
	bl FUN_02389DE0
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _02397C10
	ldrh r1, [r4, #4]
	ldr r0, _02397C88 ; =0x00000FFF
	and r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl FUN_0238B048
	ldrh r0, [r6, #0x6a]
	bl FUN_02393DD0
	add r0, r6, #0x82
	add r1, r7, #0x1e
	bl FUN_0238AEE4
	add r0, r7, #0x1e
	bl FUN_0238F598
	strh r0, [r6, #0x88]
	ldrh r0, [r6, #0x88]
	mov r1, #0x40
	bl FUN_0238F224
_02397C10:
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _02397C3C
	mov r1, #0
	ldr r0, [r5, #0x1c]
	strh r1, [r0, #4]
	ldr r0, [r5, #0x1c]
	strh r1, [r0, #6]
	mov r0, #0x40
	bl FUN_0238AF00
	b _02397C54
_02397C3C:
	mov r1, #0xc
	ldr r0, [r5, #0x1c]
	strh r1, [r0, #4]
	ldrh r1, [r4, #2]
	ldr r0, [r5, #0x1c]
	strh r1, [r0, #6]
_02397C54:
	ldrh r1, [r6, #0x6a]
	ldr r0, [r5, #0x1c]
	strh r1, [r0, #8]
	mov r0, #0x53
	strh r0, [r5]
	mov r0, #2
	mov r1, #3
	bl FUN_02389030
_02397C74:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_02397C80: .word 0x0380FFF4
_02397C84: .word 0x00000404
_02397C88: .word 0x00000FFF
	arm_func_end FUN_02397B60

	arm_func_start FUN_02397C8C
FUN_02397C8C: ; 0x02397C8C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x30
	mov r8, r0
	ldr r0, _02397E60 ; =0x0380FFF4
	ldr r0, [r0]
	add r7, r0, #0x31c
	ldrh r5, [r8, #6]
	add r6, r8, #0x2c
	cmp r5, #4
	bls _02397E54
	add r0, r0, #0x300
	ldrh r0, [r0, #0x50]
	cmp r0, #1
	bne _02397E54
	add r0, r8, #0x1e
	mov r1, #0x10
	bl FUN_02393D08
	cmp r0, #0
	bne _02397E54
	ldrh r4, [r8, #2]
	cmp r4, #0
	beq _02397CF4
	mov r0, r4
	bl FUN_0238EF80
	cmp r0, #0x30
	bhs _02397D28
_02397CF4:
	add r0, r8, #0x1e
	mov r1, #0xc0
	bl FUN_02393D08
	cmp r0, #0
	bne _02397E54
	add r0, r8, #0x1e
	mov r1, #6
	mov r2, #1
	bl FUN_02393E24
	cmp r0, #0
	beq _02397E54
	bl FUN_02394BF4
	b _02397E54
_02397D28:
	mov r0, r4
	bl FUN_0238EF80
	cmp r0, #0x40
	bne _02397D54
	mov r0, r4
	mov r1, #0x30
	bl FUN_0238F224
	add r0, r8, #0x1e
	mov r1, #1
	bl FUN_0238FE58
	b _02397D64
_02397D54:
	mov r0, r4
	bl FUN_0238EEA8
	cmp r0, #0
	bne _02397E54
_02397D64:
	mov r0, #0
	add r1, sp, #0
	mov r2, #0x2c
	bl FUN_037FAF6C
	add r0, r6, #4
	str r0, [sp]
	sub r0, r5, #4
	strh r0, [sp, #8]
	add r0, sp, #0
	bl FUN_02396A30
	ldrh r1, [r6]
	ldr r0, _02397E64 ; =0x0000FFC2
	ands r0, r1, r0
	bne _02397E00
	mov r0, r1, lsl #0x1f
	movs r0, r0, lsr #0x1f
	beq _02397E00
	ldrh r2, [r7, #0x18]
	cmp r2, #0
	bne _02397DC4
	mov r0, r1, lsl #0x1b
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	beq _02397E00
_02397DC4:
	cmp r2, #0
	beq _02397DDC
	ldrh r0, [r6]
	mov r0, r0, lsl #0x1b
	movs r0, r0, lsr #0x1f
	beq _02397E00
_02397DDC:
	ldrh r0, [r7, #0x1e]
	mov r0, r0, lsl #0x1d
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	bne _02397E08
	ldrh r0, [r6]
	mov r0, r0, lsl #0x1a
	movs r0, r0, lsr #0x1f
	bne _02397E08
_02397E00:
	mov r1, #0xa
	b _02397E3C
_02397E08:
	mov r0, r4
	bl FUN_0238F12C
	ldrh r1, [sp, #0xa]
	ands r0, r1, #1
	moveq r1, #1
	beq _02397E3C
	ands r0, r1, #4
	moveq r1, #0x12
	beq _02397E3C
	mov r0, r4
	ldrh r1, [sp, #0x16]
	bl FUN_0238F114
	mov r1, #0
_02397E3C:
	mov r0, r4
	ldr r2, [sp, #0x1c]
	bl FUN_02394268
	cmp r0, #0
	beq _02397E54
	bl FUN_02394BF4
_02397E54:
	add sp, sp, #0x30
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_02397E60: .word 0x0380FFF4
_02397E64: .word 0x0000FFC2
	arm_func_end FUN_02397C8C

	arm_func_start FUN_02397E68
FUN_02397E68: ; 0x02397E68
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, _02397F58 ; =0x0380FFF4
	ldr r0, [r0]
	add r1, r0, #0x344
	ldrh r5, [r4, #2]
	ldrh r0, [r1, #0xc]
	cmp r0, #1
	beq _02397EA4
	cmp r0, #2
	beq _02397F14
	cmp r0, #3
	beq _02397F14
	b _02397F4C
_02397EA4:
	mov r0, r5
	bl FUN_0238EF80
	cmp r0, #0x40
	bne _02397EDC
	mov r0, r5, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, #0x30
	bl FUN_0238F224
	add r0, r4, #0x1e
	ldrh r1, [r4, #0x2c]
	bl FUN_0238FE58
	mov r0, r5
	bl FUN_02394E40
	b _02397F4C
_02397EDC:
	cmp r0, #0x30
	bne _02397EF4
	add r0, r4, #0x1e
	mov r1, #7
	bl FUN_02394544
	b _02397F04
_02397EF4:
	add r0, r4, #0x1e
	mov r1, #7
	mov r2, #1
	bl FUN_02393E24
_02397F04:
	cmp r0, #0
	beq _02397F4C
	bl FUN_02394BF4
	b _02397F4C
_02397F14:
	ldrh r0, [r1, #8]
	cmp r0, #0x40
	bne _02397F4C
	add r0, r4, #0x1e
	add r1, r1, #0x82
	bl FUN_0238AB18
	cmp r0, #0
	beq _02397F4C
	mov r0, #0x30
	bl FUN_0238AF00
	bl FUN_0238AFEC
	add r0, r4, #0x1e
	ldrh r1, [r4, #0x2c]
	bl FUN_0238FE58
_02397F4C:
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_02397F58: .word 0x0380FFF4
	arm_func_end FUN_02397E68

	arm_func_start FUN_02397F5C
FUN_02397F5C: ; 0x02397F5C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x44
	mov sl, r0
	ldr r0, _023985DC ; =0x0380FFF4
	ldr r1, [r0]
	add r8, r1, #0x344
	ldr r0, _023985E0 ; =0x00000404
	add r7, r1, r0
	add r6, r1, #0x31c
	add r5, r1, #0x17c
	ldr r0, [r1, #0x570]
	add r0, r0, #1
	str r0, [r1, #0x570]
	add r0, sl, #0x1e
	bl FUN_0238F450
	mov r4, r0
	mov r0, r4, lsl #0x10
	mov r0, r0, lsr #0x10
	strh r0, [sl, #2]
	cmp r4, #0xff
	beq _023985D0
	ldrh r1, [sl, #0x12]
	bl FUN_0238F20C
	add sb, sl, #0x2c
	ldrh fp, [sl, #6]
	cmp fp, #0xc
	bls _023985D0
	mov r0, #0
	add r1, sp, #0x18
	mov r2, #0x2c
	bl FUN_037FAF6C
	add r0, sb, #0xc
	str r0, [sp, #0x18]
	sub r0, fp, #0xc
	strh r0, [sp, #0x20]
	mov r0, #2
	strh r0, [sp, #0x22]
	ldrh r0, [r8, #0x1e]
	cmp r0, #0
	ldreqh r0, [sp, #0x22]
	orreq r0, r0, #1
	streqh r0, [sp, #0x22]
	mov r0, #0x38
	strh r0, [sp, #0x24]
	ldrh r0, [sl, #8]
	strh r0, [sp, #0x1c]
	ldrh r0, [sb, #0xa]
	strh r0, [sp, #0x1e]
	add r0, sp, #0x18
	bl FUN_02396A30
	ldr sb, [sp, #0x38]
	cmp sb, #0
	beq _0239805C
	ldrh r0, [sl, #0x16]
	ands r0, r0, #0x8000
	beq _0239805C
	add r0, sb, #6
	bl FUN_02389C68
	mov fp, r0
	add r0, sb, #7
	bl FUN_02389C68
	add r1, fp, r0, lsl #8
	ldr r0, _023985E4 ; =0x0480810C
	strh r1, [r0]
_0239805C:
	ldrh r1, [r7]
	cmp r1, #0x13
	bne _02398098
	ldr r0, [r7, #0x18]
	ldrh r0, [r0, #0x38]
	cmp r0, #1
	bne _02398098
	ldrh r0, [sp, #0x22]
	and r0, r0, #9
	cmp r0, #9
	bne _023985B8
	mov r0, sl
	add r1, sp, #0x18
	bl FUN_023973DC
	b _023985B8
_02398098:
	ldrh r0, [sp, #0x22]
	ands r0, r0, #8
	beq _023985B8
	cmp r1, #0x21
	bne _02398220
	bl FUN_02389DE0
	ldrh r0, [sp, #0x22]
	and r0, r0, #0x30
	cmp r0, #0x30
	movne r0, #0xc
	strneh r0, [r7, #4]
	movne r0, #0xa
	strneh r0, [r7, #6]
	bne _023981FC
	ldrh r0, [sl, #0x34]
	cmp r0, #0x3e8
	movhi r0, #0xc
	strhih r0, [r7, #4]
	movhi r0, #1
	strhih r0, [r7, #6]
	bhi _023981FC
	mov r1, #0
	strh r1, [r7, #4]
	ldrh r0, [sp, #0x24]
	ands r0, r0, #2
	beq _02398114
	ldrh r0, [sp, #0x22]
	ands r0, r0, #2
	bne _02398114
	ldrh r0, [sp, #0x2a]
	bl FUN_0238B508
_02398114:
	mov r0, r4
	ldrh r1, [sp, #0x2e]
	bl FUN_0238F114
	ldrh r0, [r8, #0xc]
	cmp r0, #2
	bne _023981A4
	ldr sb, [sp, #0x40]
	cmp sb, #0
	beq _0239818C
	add r0, sb, #6
	bl FUN_02389C68
	mov fp, r0
	add r0, sb, #7
	bl FUN_02389C68
	add r0, fp, r0, lsl #8
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, #1
	bl FUN_0238BE94
	ldr r0, [sp, #0x40]
	add r0, r0, #8
	bl FUN_02389C68
	mov sb, r0
	ldr r0, [sp, #0x40]
	add r0, r0, #9
	bl FUN_02389C68
	add r1, sb, r0, lsl #8
	ldr r0, _023985E8 ; =0x0380FFF0
	strh r1, [r0]
	b _023981A4
_0239818C:
	ldr r0, _023985EC ; =0x0000FFFF
	mov r1, #1
	bl FUN_0238BE94
	mov r1, #0
	ldr r0, _023985E8 ; =0x0380FFF0
	strh r1, [r0]
_023981A4:
	ldr r0, [sp, #0x3c]
	add r0, r0, #3
	bl FUN_02389C68
	bl FUN_0238B928
	ldr r0, [sp, #0x3c]
	add r0, r0, #2
	bl FUN_02389C68
	strh r0, [r8, #0x76]
	ldrh r0, [sl, #0x34]
	bl FUN_0238B974
	mov r0, #1
	strh r0, [r8, #0x12]
	strh r0, [r8, #0x1a]
	ldrh r0, [r8, #0xc]
	cmp r0, #2
	moveq r1, #3
	ldreq r0, _023985F0 ; =0x04808048
	streqh r1, [r0]
	ldr r1, _023985F4 ; =0x04808038
	ldrh r0, [r1]
	orr r0, r0, #1
	strh r0, [r1]
_023981FC:
	ldr r0, [r7, #0x1c]
	add r0, r0, #8
	add r1, sl, #0x1e
	bl FUN_0238AEE4
	mov r0, #0x25
	strh r0, [r7]
	mov r0, #2
	mov r1, #1
	bl FUN_02389030
_02398220:
	ldrh r0, [r8, #0xc]
	cmp r0, #2
	beq _02398238
	cmp r0, #3
	beq _023982F4
	b _023985A0
_02398238:
	ldr sb, [sp, #0x40]
	cmp sb, #0
	beq _023982F4
	add r0, sb, #6
	bl FUN_02389C68
	mov r7, r0
	add r0, sb, #7
	bl FUN_02389C68
	add r0, r7, r0, lsl #8
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, #0
	bl FUN_0238BE94
	ldr r0, [sp, #0x40]
	add r0, r0, #8
	bl FUN_02389C68
	mov r7, r0
	ldr r0, [sp, #0x40]
	add r0, r0, #9
	bl FUN_02389C68
	add r1, r7, r0, lsl #8
	ldr r0, _023985E8 ; =0x0380FFF0
	strh r1, [r0]
	ldr r0, [sp, #0x40]
	add r0, r0, #1
	bl FUN_02389C68
	sub r0, r0, #8
	strh r0, [r8, #0xa0]
	ldrh r2, [r8, #0xa0]
	cmp r2, #0
	beq _023982F4
	ldr r1, [sp, #0x40]
	ands r0, r1, #1
	beq _023982DC
	add r0, r1, #9
	ldr r1, [r8, #0x9c]
	add r2, r2, #2
	bl FUN_037FAF50
	mov r0, #1
	strh r0, [r8, #0xa2]
	b _023982F4
_023982DC:
	add r0, r1, #0xa
	ldr r1, [r8, #0x9c]
	add r2, r2, #1
	bl FUN_037FAF50
	mov r0, #0
	strh r0, [r8, #0xa2]
_023982F4:
	mov r0, #0
	strh r0, [r8, #0x80]
	mov r0, r4
	bl FUN_0238F0C0
	add r0, sl, #0x2c
	ldmia r0, {r2, r3}
	add r0, sp, #0
	stmia r0, {r2, r3}
	ldrh r0, [r8, #0x6e]
	mov r7, r0, lsl #0xa
	mov r4, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	mov r2, r7
	mov r3, r4
	bl FUN_03801800
	str r0, [sp]
	str r1, [sp, #4]
	mov r2, #1
	adds r3, r0, r2
	adc r2, r1, #0
	str r3, [sp]
	str r2, [sp, #4]
	umull r1, r0, r3, r7
	mla r0, r3, r4, r0
	mla r0, r2, r7, r0
	str r1, [sp]
	str r0, [sp, #4]
	add r2, sp, #0
	ldrh r1, [r2, #6]
	ldr r0, _023985F8 ; =0x048080F6
	strh r1, [r0]
	ldrh r1, [r2, #4]
	ldr r0, _023985FC ; =0x048080F4
	strh r1, [r0]
	ldrh r1, [r2, #2]
	ldr r0, _02398600 ; =0x048080F2
	strh r1, [r0]
	ldrh r0, [r2]
	orr r1, r0, #1
	ldr r0, _02398604 ; =0x048080F0
	strh r1, [r0]
	ldrh r0, [r8, #0xc]
	cmp r0, #2
	bne _02398498
	ldrh r0, [r8, #0x1a]
	cmp r0, #0
	beq _02398498
	ldr r1, [sp]
	ldr r0, [sp, #4]
	subs r1, r1, r7
	sbc r0, r0, r4
	str r1, [sp]
	str r0, [sp, #4]
	bl FUN_037FAD78
	ldr r7, _02398608 ; =0x048080F8
	ldrh r1, [r7]
	strh r1, [sp, #8]
	ldr r4, _0239860C ; =0x048080FA
	ldrh r1, [r4]
	strh r1, [sp, #0xa]
	ldr r3, _02398610 ; =0x048080FC
	ldrh r1, [r3]
	strh r1, [sp, #0xc]
	ldr r2, _02398614 ; =0x048080FE
	ldrh r1, [r2]
	strh r1, [sp, #0xe]
	ldrh r1, [r7]
	strh r1, [sp, #0x10]
	ldrh r1, [r4]
	strh r1, [sp, #0x12]
	ldrh r1, [r3]
	strh r1, [sp, #0x14]
	ldrh r1, [r2]
	strh r1, [sp, #0x16]
	bl FUN_037FAD8C
	ldrh r1, [sp, #8]
	ldrh r0, [sp, #0x10]
	cmp r1, r0
	bhs _02398458
	ldr r3, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r1, [sp]
	ldr r0, [sp, #4]
	subs r1, r3, r1
	sbc r0, r2, r0
	mov r1, r1, lsr #0xa
	orr r1, r1, r0, lsl #22
	b _02398478
_02398458:
	ldr r3, [sp, #0x10]
	ldr r2, [sp, #0x14]
	ldr r1, [sp]
	ldr r0, [sp, #4]
	subs r1, r3, r1
	sbc r0, r2, r0
	mov r1, r1, lsr #0xa
	orr r1, r1, r0, lsl #22
_02398478:
	ldrh r0, [r6, #0x20]
	cmp r1, r0
	sublo r1, r0, r1
	ldrlo r0, _02398618 ; =0x04808134
	strloh r1, [r0]
	movhs r1, #0
	ldrhs r0, _02398618 ; =0x04808134
	strhsh r1, [r0]
_02398498:
	ldrh r0, [r8, #8]
	cmp r0, #0x40
	bne _023985A0
	ldr r1, [sp, #0x3c]
	cmp r1, #0
	beq _023985A0
	ldrh r0, [r8, #0xe]
	cmp r0, #1
	bne _023985A0
	add r0, r1, #2
	bl FUN_02389C68
	ldrh r1, [r8, #0x76]
	cmp r1, r0
	strneh r0, [r8, #0x76]
	mov r1, #0
	strh r1, [r8, #0x8e]
	cmp r0, #0
	bne _023984FC
	ldr r0, [sp, #0x3c]
	add r0, r0, #4
	bl FUN_02389C68
	ands r0, r0, #1
	ldrneh r0, [r8, #0x8e]
	orrne r0, r0, #1
	strneh r0, [r8, #0x8e]
_023984FC:
	ldr r0, [sp, #0x3c]
	add r0, r0, #4
	bl FUN_02389C68
	and r7, r0, #0xfe
	mov r4, r7, lsl #3
	ldr r0, [sp, #0x3c]
	add r0, r0, #1
	bl FUN_02389C68
	add r0, r7, r0
	sub r0, r0, #3
	mov r1, r0, lsl #3
	ldrh r0, [r8, #0x6a]
	cmp r4, r0
	bhi _02398574
	cmp r0, r1
	bhi _02398574
	sub r4, r0, r4
	ldr r0, [sp, #0x3c]
	add r0, r0, #5
	add r0, r0, r4, lsr #3
	bl FUN_02389C68
	mov r2, #1
	and r1, r4, #7
	mov r1, r2, lsl r1
	ands r0, r1, r0
	beq _02398574
	ldrh r0, [r8, #0x8e]
	orr r0, r0, #2
	strh r0, [r8, #0x8e]
	bl FUN_02394AE4
_02398574:
	ldrh r0, [r5, #0x20]
	cmp r0, #0
	bne _023985A0
	ldrh r0, [r5, #0x2c]
	cmp r0, #0
	bne _023985A0
	ldrh r0, [r8, #0x8e]
	cmp r0, #0
	bne _023985A0
	mov r0, #1
	bl FUN_0238B38C
_023985A0:
	ldrh r0, [r6, #0x1e]
	mov r0, r0, lsl #0x19
	movs r0, r0, lsr #0x1f
	beq _023985B8
	mov r0, sl
	bl FUN_0238FC48
_023985B8:
	ldr r2, [sp, #0x34]
	cmp r2, #0
	beq _023985D0
	ldrh r0, [sp, #0x2a]
	mov r1, sl
	bl FUN_02398DDC
_023985D0:
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_023985DC: .word 0x0380FFF4
_023985E0: .word 0x00000404
_023985E4: .word 0x0480810C
_023985E8: .word 0x0380FFF0
_023985EC: .word 0x0000FFFF
_023985F0: .word 0x04808048
_023985F4: .word 0x04808038
_023985F8: .word 0x048080F6
_023985FC: .word 0x048080F4
_02398600: .word 0x048080F2
_02398604: .word 0x048080F0
_02398608: .word 0x048080F8
_0239860C: .word 0x048080FA
_02398610: .word 0x048080FC
_02398614: .word 0x048080FE
_02398618: .word 0x04808134
	arm_func_end FUN_02397F5C

	arm_func_start FUN_0239861C
FUN_0239861C: ; 0x0239861C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, _023986F0 ; =0x0380FFF4
	ldr r0, [r0]
	add r5, r0, #0x344
	add r0, r0, #0x300
	ldrh r0, [r0, #0x4c]
	cmp r0, #0x40
	movne r0, #1
	bne _023986E4
	add r0, r4, #0x1e
	add r1, r5, #0x64
	bl FUN_0238AB18
	cmp r0, #0
	beq _02398670
	add r0, r4, #0x24
	add r1, r5, #0x82
	bl FUN_0238AB18
	cmp r0, #0
	bne _02398678
_02398670:
	mov r0, #1
	b _023986E4
_02398678:
	ldrh r0, [r4, #0x10]
	sub r0, r0, #0x1c
	strh r0, [r4, #6]
	sub r1, r4, #0x10
	ldr r0, _023986F4 ; =0x00000185
	strh r0, [r1, #0xc]
	mov r0, #0x18
	strh r0, [r1, #0xe]
	ldrh r0, [r1, #0x18]
	ldr r2, _023986F8 ; =0x04808094
	ldrh r2, [r2]
	and ip, r2, #0x8000
	ldr r4, _023986F0 ; =0x0380FFF4
	ldr r2, [r4]
	add r2, r2, #0x400
	ldrh r3, [r2, #0xe2]
	ldr r2, _023986FC ; =0x04808098
	ldrh r2, [r2]
	and r2, r2, #0x8000
	orr r2, r3, r2, asr #4
	orr r2, r2, ip, asr #3
	orr r0, r0, r2
	strh r0, [r1, #0x18]
	ldr r0, [r4]
	add r0, r0, #0x188
	bl FUN_0238F86C
	mov r0, #0
_023986E4:
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_023986F0: .word 0x0380FFF4
_023986F4: .word 0x00000185
_023986F8: .word 0x04808094
_023986FC: .word 0x04808098
	arm_func_end FUN_0239861C

	arm_func_start FUN_02398700
FUN_02398700: ; 0x02398700
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	ldr r0, _023988BC ; =0x0380FFF4
	ldr r1, [r0]
	ldr r0, _023988C0 ; =0x0000042C
	add r6, r1, r0
	ldr r0, [r6, #0x90]
	add r5, r0, #0x10
	ldrh r0, [r6, #0x3c]
	cmp r0, #0
	beq _023988B0
	add r0, r7, #0x18
	add r1, r1, #0x3a8
	bl FUN_0238AB18
	cmp r0, #0
	beq _023988B0
	ldrh r0, [r7, #0x10]
	sub r1, r0, #0x18
	ldrh r0, [r5, #6]
	sub r0, r0, #8
	cmp r1, r0
	bgt _023988B0
	add r0, r7, #0x1e
	bl FUN_0238F598
	mov r4, r0
	cmp r4, #0xff
	beq _02398784
	cmp r4, #0
	beq _023987C0
	bl FUN_0238EF80
	cmp r0, #0x40
	beq _023987C0
_02398784:
	add r0, r7, #0x1e
	mov r1, #0xc0
	bl FUN_02393D08
	cmp r0, #0
	bne _023988B0
	add r0, r7, #0x1e
	mov r1, #7
	mov r2, #0
	bl FUN_02393E24
	cmp r0, #0
	beq _023988B0
	mov r1, #2
	strh r1, [r0]
	bl FUN_02394BF4
	b _023988B0
_023987C0:
	cmp r4, #0
	beq _023988B0
	mov r0, r4, lsl #0x10
	mov r0, r0, lsr #0x10
	ldrh r1, [r7, #0x14]
	mov r1, r1, lsl #0x13
	mov r1, r1, lsr #0x1f
	bl FUN_0238F1A8
	mov r0, r4
	bl FUN_0238F0C0
	mov r0, r4
	bl FUN_0238EEA8
	mov r1, #1
	mov r0, r1, lsl r0
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	ldrh r1, [r6, #0x9a]
	ands r0, r2, r1
	bne _023988B0
	ldrh r0, [r6, #0x98]
	ands r0, r2, r0
	beq _023988B0
	orr r0, r1, r2
	strh r0, [r6, #0x9a]
	ldrh r1, [r5]
	mvn r0, r2
	and r0, r1, r0
	strh r0, [r5]
	add r4, r5, #0xa
	mov r0, r2, lsl #0xf
	mov r1, r0, lsr #0x10
	b _02398858
_02398840:
	ldrh r0, [r6, #0x98]
	ands r0, r1, r0
	ldrneh r0, [r5, #6]
	addne r4, r4, r0
	mov r0, r1, lsl #0xf
	mov r1, r0, lsr #0x10
_02398858:
	cmp r1, #1
	bne _02398840
	ldrh r0, [r7, #0x10]
	sub r0, r0, #0x18
	strh r0, [r4]
	add r0, r4, #3
	ldrh r1, [r7, #0x12]
	and r1, r1, #0xff
	and r1, r1, #0xff
	bl FUN_02389C88
	add r0, r4, #2
	ldrh r1, [r7, #0xe]
	and r1, r1, #0xff
	and r1, r1, #0xff
	bl FUN_02389C88
	ldrh r2, [r4]
	cmp r2, #0
	beq _023988B0
	add r0, r7, #0x2c
	add r1, r4, #8
	add r2, r2, #1
	bl FUN_037FAF50
_023988B0:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_023988BC: .word 0x0380FFF4
_023988C0: .word 0x0000042C
	arm_func_end FUN_02398700

	arm_func_start FUN_023988C4
FUN_023988C4: ; 0x023988C4
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, _02398A40 ; =0x0380FFF4
	ldr r1, [r0]
	add r5, r1, #0x344
	ldr r0, _02398A44 ; =0x000004DC
	add r4, r1, r0
	ldrh r0, [r5, #8]
	cmp r0, #0x40
	movne r0, #1
	bne _02398A38
	add r0, r6, #0x1e
	add r1, r5, #0x64
	bl FUN_0238AB18
	cmp r0, #0
	beq _02398918
	add r0, r6, #0x24
	add r1, r5, #0x82
	bl FUN_0238AB18
	cmp r0, #0
	bne _02398920
_02398918:
	mov r0, #1
	b _02398A38
_02398920:
	mov r1, #1
	ldrh r0, [r5, #0x6a]
	mov r0, r1, lsl r0
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	ldrh r0, [r6, #0x2e]
	ands r0, r1, r0
	moveq r0, #0
	streqh r0, [r4, #6]
	movne r0, #0x2000
	strneh r0, [r4, #6]
	ldr r0, _02398A48 ; =0x04808098
	ldrh r1, [r0]
	ands r0, r1, #0x8000
	beq _02398984
	ldr r0, _02398A4C ; =0x00007FFF
	and r0, r1, r0
	mov r0, r0, lsl #1
	add r0, r0, #0x4800000
	add r0, r0, #0x4000
	ldrh r0, [r0, #4]
	cmp r0, #0
	ldrneh r0, [r4, #6]
	orrne r0, r0, #0x4000
	strneh r0, [r4, #6]
_02398984:
	ldrh r0, [r5, #0x88]
	bl FUN_0238F0C0
	ldrh r0, [r6, #0x10]
	sub r0, r0, #0x1c
	strh r0, [r6, #6]
	sub r1, r6, #0x10
	ldr r0, _02398A50 ; =0x00000182
	strh r0, [r1, #0xc]
	ldrh r0, [r6, #6]
	add r0, r0, #0x31
	mov r0, r0, lsr #1
	strh r0, [r1, #0xe]
	ldrh r3, [r1, #0x3e]
	mov r0, #0
	b _023989D0
_023989C0:
	ands r2, r3, #1
	addne r0, r0, #1
	mov r2, r3, lsl #0xf
	mov r3, r2, lsr #0x10
_023989D0:
	cmp r3, #0
	bne _023989C0
	ldrh r6, [r1, #0x18]
	ldr r2, _02398A54 ; =0x04808094
	ldrh r2, [r2]
	and r5, r2, #0x8000
	ldrh r3, [r4, #6]
	ldr r2, _02398A48 ; =0x04808098
	ldrh r2, [r2]
	and r2, r2, #0x8000
	orr r2, r3, r2, asr #4
	orr r2, r2, r5, asr #3
	orr r2, r6, r2
	strh r2, [r1, #0x18]
	ldrh r3, [r1, #0x1c]
	ldrh r2, [r1, #0x3c]
	add r2, r2, #0xa
	mul r2, r0, r2
	add r0, r2, #0xfc
	add r0, r3, r0, lsr #4
	strh r0, [r1, #0x1a]
	ldr r0, _02398A40 ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x188
	bl FUN_0238F86C
	mov r0, #0
_02398A38:
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_02398A40: .word 0x0380FFF4
_02398A44: .word 0x000004DC
_02398A48: .word 0x04808098
_02398A4C: .word 0x00007FFF
_02398A50: .word 0x00000182
_02398A54: .word 0x04808094
	arm_func_end FUN_023988C4

	arm_func_start FUN_02398A58
FUN_02398A58: ; 0x02398A58
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r0, _02398D60 ; =0x0380FFF4
	ldr r1, [r0]
	add r8, r1, #0x344
	add r7, r1, #0x17c
	ldr r0, _02398D64 ; =0x0000053C
	add r6, r1, r0
	ldr sl, [r7, #0x48]
	mvn r0, #0
	cmp sl, r0
	beq _02398D58
	ldrh r0, [r8, #8]
	cmp r0, #0x40
	beq _02398AA0
	add r0, r7, #0x48
	mov r1, sl
	bl FUN_02389658
	b _02398D58
_02398AA0:
	add sb, sl, #0x10
	ldrh r0, [sb, #0x14]
	mov r0, r0, lsl #0x17
	movs r0, r0, lsr #0x1f
	beq _02398AD8
	ldrh r0, [sb, #0x24]
	ands r0, r0, #1
	ldrne r0, [r6, #0x2c]
	addne r0, r0, #1
	strne r0, [r6, #0x2c]
	ldreq r0, [r6, #0x28]
	addeq r0, r0, #1
	streq r0, [r6, #0x28]
	b _02398AF8
_02398AD8:
	ldrh r0, [sb, #0x18]
	ands r0, r0, #1
	ldrne r0, [r6, #0x2c]
	addne r0, r0, #1
	strne r0, [r6, #0x2c]
	ldreq r0, [r6, #0x28]
	addeq r0, r0, #1
	streq r0, [r6, #0x28]
_02398AF8:
	ldrh r0, [sb, #8]
	and r0, r0, #0xf0
	mov r1, #0x10
	bl FUN_03801848
	ldr r1, [r6, #0x24]
	sub r0, r0, #1
	add r0, r1, r0
	str r0, [r6, #0x24]
	mov r4, #1
	ldrh r0, [r8, #0xc]
	cmp r0, #1
	beq _02398B3C
	cmp r0, #2
	beq _02398C1C
	cmp r0, #3
	beq _02398C1C
	b _02398CC4
_02398B3C:
	ldrh r0, [sb, #0x14]
	ands r0, r0, #1
	bne _02398CC4
	add r0, sb, #0x1e
	bl FUN_0238F598
	mov r5, r0
	cmp r5, #0xff
	beq _02398B68
	bl FUN_0238EF80
	cmp r0, #0x40
	beq _02398BD0
_02398B68:
	mov r0, r5
	bl FUN_0238EF80
	cmp r0, #0x30
	bne _02398B9C
	add r0, sb, #0x1e
	mov r1, #0xa0
	bl FUN_02393D08
	cmp r0, #0
	bne _02398CC4
	add r0, sb, #0x1e
	mov r1, #7
	bl FUN_02394544
	b _02398BC0
_02398B9C:
	add r0, sb, #0x1e
	mov r1, #0xc0
	bl FUN_02393D08
	cmp r0, #0
	bne _02398CC4
	add r0, sb, #0x1e
	mov r1, #7
	mov r2, #1
	bl FUN_02393E24
_02398BC0:
	cmp r0, #0
	beq _02398CC4
	bl FUN_02394BF4
	b _02398CC4
_02398BD0:
	mov r0, r5, lsl #0x10
	mov r0, r0, lsr #0x10
	ldrh r1, [sb, #0x14]
	mov r1, r1, lsl #0x13
	mov r1, r1, lsr #0x1f
	bl FUN_0238F1A8
	mov r0, r5
	bl FUN_0238EEEC
	ldrh r1, [sb, #0x2a]
	cmp r1, r0
	ldreq r0, [r6, #0x3c]
	addeq r0, r0, #1
	streq r0, [r6, #0x3c]
	beq _02398CC4
	add r0, sb, #0x18
	add r1, sb, #0x24
	bl FUN_0238AEE4
	mov r4, #0
	b _02398CC4
_02398C1C:
	ldrh r2, [sb, #0x14]
	ands r1, r2, #1
	bne _02398CC4
	ldrh r1, [r8, #0xe]
	cmp r1, #0
	beq _02398C90
	ands r1, r2, #0x2000
	bne _02398C90
	ldrh r1, [sb, #0x18]
	ands r1, r1, #1
	ldrneh r0, [r8, #0x8e]
	bicne r0, r0, #1
	strneh r0, [r8, #0x8e]
	bne _02398C64
	cmp r0, #3
	ldrneh r0, [r8, #0x8e]
	bicne r0, r0, #2
	strneh r0, [r8, #0x8e]
_02398C64:
	ldrh r0, [r8, #0x8e]
	cmp r0, #0
	bne _02398C90
	ldrh r0, [r7, #0x20]
	cmp r0, #0
	bne _02398C90
	ldrh r0, [r7, #0x2c]
	cmp r0, #0
	bne _02398C90
	mov r0, #1
	bl FUN_0238B38C
_02398C90:
	ldrh r5, [r8, #0x88]
	mov r0, r5
	bl FUN_0238EEEC
	ldrh r1, [sb, #0x2a]
	cmp r1, r0
	ldreq r0, [r6, #0x3c]
	addeq r0, r0, #1
	streq r0, [r6, #0x3c]
	beq _02398CC4
	add r0, sb, #0x1e
	add r1, sb, #0x24
	bl FUN_0238AEE4
	mov r4, #0
_02398CC4:
	cmp r4, #0
	bne _02398D34
	mov r0, r5, lsl #0x10
	mov r0, r0, lsr #0x10
	strh r0, [sb, #2]
	ldrh r1, [sb, #0x12]
	and r1, r1, #0xff
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_0238F20C
	mov r0, r5
	ldrh r1, [sb, #0x2a]
	bl FUN_0238F0FC
	mov r0, r5
	bl FUN_0238F0C0
	ldrh r0, [sb, #0x10]
	sub r0, r0, #0x18
	strh r0, [sb, #6]
	mov r0, #0x180
	strh r0, [sl, #0xc]
	ldrh r0, [sb, #6]
	add r0, r0, #0x2d
	mov r0, r0, lsr #1
	strh r0, [sl, #0xe]
	add r0, r7, #0x48
	mov r1, sl
	bl FUN_0238F86C
	b _02398D40
_02398D34:
	add r0, r7, #0x48
	mov r1, sl
	bl FUN_02389658
_02398D40:
	ldrh r0, [r7, #0x50]
	cmp r0, #0
	beq _02398D58
	mov r0, #2
	mov r1, #6
	bl FUN_02389030
_02398D58:
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	.align 2, 0
_02398D60: .word 0x0380FFF4
_02398D64: .word 0x0000053C
	arm_func_end FUN_02398A58

	arm_func_start FUN_02398D68
FUN_02398D68: ; 0x02398D68
	ldr r0, _02398DB4 ; =0x0380FFF4
	ldr r0, [r0]
	add ip, r0, #0x23c
	mov r3, #0
	mov r0, r3
	add r2, ip, #0x30
_02398D80:
	ldrh r1, [ip, #0x30]
	cmp r1, #0
	beq _02398DA4
	ldrh r1, [r2]
	sub r1, r1, #1
	strh r1, [r2]
	ldrh r1, [ip, #0x30]
	cmp r1, #0
	streqh r0, [ip]
_02398DA4:
	add r3, r3, #1
	cmp r3, #4
	blo _02398D80
	bx lr
	.align 2, 0
_02398DB4: .word 0x0380FFF4
	arm_func_end FUN_02398D68

	arm_func_start FUN_02398DB8
FUN_02398DB8: ; 0x02398DB8
	mov r0, #0
	ldr r1, _02398DD4 ; =0x0380FFF4
	ldr r1, [r1]
	add r1, r1, #0x23c
	mov r2, #0xc8
	ldr ip, _02398DD8 ; =FUN_037FAF38
	bx ip
	.align 2, 0
_02398DD4: .word 0x0380FFF4
_02398DD8: .word FUN_037FAF38
	arm_func_end FUN_02398DB8

	arm_func_start FUN_02398DDC
FUN_02398DDC: ; 0x02398DDC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov fp, r0
	mov sl, r1
	mov sb, r2
	ldr r0, _02398F2C ; =0x0380FFF4
	ldr r0, [r0]
	add r8, r0, #0x23c
	add r0, sb, #1
	bl FUN_02389C68
	cmp r0, #0x20
	bhi _02398F20
	mov r6, #4
	mov r5, r6
	mov r4, #0x400
	mov r7, #0
	add r0, sl, #0x24
	str r0, [sp]
	b _02398E68
_02398E28:
	ldrh r0, [r8]
	cmp r0, #0
	beq _02398E5C
	add r0, r8, #6
	ldr r1, [sp]
	bl FUN_0238AB18
	cmp r0, #0
	bne _02398E88
	ldrh r0, [r8, #0x30]
	cmp r0, r4
	movlo r4, r0
	movlo r5, r7
	b _02398E60
_02398E5C:
	mov r6, r7
_02398E60:
	add r7, r7, #1
	add r8, r8, #0x32
_02398E68:
	cmp r7, #4
	blo _02398E28
	cmp r6, #4
	movne r7, r6
	bne _02398E88
	cmp r5, #4
	movne r7, r5
	beq _02398F20
_02398E88:
	ldr r0, _02398F2C ; =0x0380FFF4
	ldr r0, [r0]
	add r5, r0, #0x23c
	mov r2, #0x32
	mul r4, r7, r2
	add r6, r5, r4
	mov r0, #0
	mov r1, r6
	bl FUN_037FAF38
	mov r0, #0x400
	strh r0, [r6, #0x30]
	ldrh r0, [sl, #0x12]
	and r0, r0, #0xff
	strh r0, [r5, r4]
	strh fp, [r6, #2]
	add r0, r6, #6
	add r1, sl, #0x24
	bl FUN_0238AEE4
	add r0, sb, #1
	bl FUN_02389C68
	strh r0, [r6, #0xc]
	mov r7, #0
	add r5, sb, #2
	add r4, r6, #0xe
	b _02398F04
_02398EEC:
	add r0, r5, r7
	bl FUN_02389C68
	mov r1, r0
	add r0, r4, r7
	bl FUN_02389C88
	add r7, r7, #1
_02398F04:
	ldrh r0, [r6, #0xc]
	cmp r7, r0
	blo _02398EEC
	ldrh r0, [sl, #0x34]
	strh r0, [r6, #0x2e]
	ldrh r0, [sl, #0x36]
	strh r0, [r6, #4]
_02398F20:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_02398F2C: .word 0x0380FFF4
	arm_func_end FUN_02398DDC

	arm_func_start FUN_02398F30
FUN_02398F30: ; 0x02398F30
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _0239901C ; =0x0380FFF4
	ldr r0, [r0]
	ldr r0, [r0, #0x314]
	bl FUN_037FD078
	bl FUN_023990D4
	mov r0, #0
	str r0, [sp]
	mov r0, #0x2c
	mov r1, #2
	add r2, sp, #0
	bl FUN_0380142C
	ldr r0, _0239901C ; =0x0380FFF4
	ldr r0, [r0]
	ldr r0, [r0, #0x314]
	bl FUN_037FD00C
	ldr r1, [sp]
	cmp r1, #0xa4
	blo _02398F8C
	ldr r0, _02399020 ; =0x000001D6
	cmp r1, r0
	bls _02398F94
_02398F8C:
	mov r0, #0
	b _02399010
_02398F94:
	add r1, r1, #2
	str r1, [sp]
	ldr r0, _0239901C ; =0x0380FFF4
	ldr r0, [r0]
	add r0, r0, #0x188
	bl FUN_023896DC
	ldr r2, _0239901C ; =0x0380FFF4
	ldr r1, [r2]
	str r0, [r1, #0x318]
	ldr r1, [r2]
	ldr r0, [r1, #0x318]
	cmp r0, #0
	moveq r0, #0
	beq _02399010
	add r0, r0, #0xc
	str r0, [r1, #0x318]
	ldr r0, [r2]
	ldr r0, [r0, #0x314]
	bl FUN_037FD078
	bl FUN_023990D4
	mov r0, #0x2a
	ldr r1, [sp]
	ldr r2, _0239901C ; =0x0380FFF4
	ldr r2, [r2]
	ldr r2, [r2, #0x318]
	bl FUN_0380142C
	ldr r0, _0239901C ; =0x0380FFF4
	ldr r0, [r0]
	ldr r0, [r0, #0x314]
	bl FUN_037FD00C
	mov r0, #1
_02399010:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_0239901C: .word 0x0380FFF4
_02399020: .word 0x000001D6
	arm_func_end FUN_02398F30

	arm_func_start FUN_02399024
FUN_02399024: ; 0x02399024
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	ldr r0, _02399070 ; =0x0380FFF4
	ldr r0, [r0]
	ldr r0, [r0, #0x314]
	bl FUN_037FD078
	bl FUN_023990D4
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_0380142C
	ldr r0, _02399070 ; =0x0380FFF4
	ldr r0, [r0]
	ldr r0, [r0, #0x314]
	bl FUN_037FD00C
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_02399070: .word 0x0380FFF4
	arm_func_end FUN_02399024

	arm_func_start FUN_02399074
FUN_02399074: ; 0x02399074
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r2
	ldr r1, _023990D0 ; =0x0380FFF4
	ldr r1, [r1]
	ldr r1, [r1, #0x318]
	cmp r1, #0
	beq _023990C8
	add r0, r1, r0
	sub r4, r0, #0x2a
	b _023990C0
_023990A0:
	mov r0, r4
	bl FUN_02389C68
	add r4, r4, #1
	mov r1, r0
	mov r0, r5
	bl FUN_02389C88
	add r5, r5, #1
	sub r6, r6, #1
_023990C0:
	cmp r6, #0
	bne _023990A0
_023990C8:
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_023990D0: .word 0x0380FFF4
	arm_func_end FUN_02399074

	arm_func_start FUN_023990D4
FUN_023990D4: ; 0x023990D4
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	add r4, sp, #0
_023990E0:
	mov r0, r4
	bl FUN_0380154C
	ldr r0, [sp]
	ands r0, r0, #0x20
	beq _023990FC
	bl FUN_03800D74
	b _023990E0
_023990FC:
	ldr r0, [sp]
	ands r0, r0, #1
	bne _023990E0
	add sp, sp, #8
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_023990D4

	arm_func_start FUN_02399114
FUN_02399114: ; 0x02399114
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r0, _023991B8 ; =0x0380FFF4
	ldr r0, [r0]
	ldr r1, [r0, #0x318]
	ldrh r6, [r1, #2]
	cmp r6, #0xa4
	blo _02399144
	ldr r0, _023991BC ; =0x000001D6
	cmp r6, r0
	bls _0239914C
_02399144:
	mov r0, #2
	b _023991AC
_0239914C:
	add r7, r1, #2
	mov r4, #0
	b _0239917C
_02399158:
	mov r0, r7
	bl FUN_02389C68
	add r7, r7, #1
	and r0, r0, #0xff
	mov r1, r4, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_02389B74
	mov r4, r0
	sub r6, r6, #1
_0239917C:
	cmp r6, #0
	bne _02399158
	ldr r0, _023991B8 ; =0x0380FFF4
	ldr r0, [r0]
	ldr r0, [r0, #0x318]
	ldrh r1, [r0]
	cmp r5, #0
	orrne r0, r1, r4, lsl #16
	strne r0, [r5]
	cmp r4, r1
	movne r0, #1
	moveq r0, #0
_023991AC:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_023991B8: .word 0x0380FFF4
_023991BC: .word 0x000001D6
	arm_func_end FUN_02399114
	.rodata

_023991C0:
	.word FUN_02382FE0
	.word FUN_023830C8
	.word FUN_02383510
	.word FUN_023882B4
	.word FUN_02388314
	.word FUN_023885A4
	.word FUN_0238864C
	.word FUN_023835E4
	.word FUN_023836D0
	.word FUN_02383990
	.word FUN_02384158
	.word FUN_02384530
	.word FUN_02384640
	.word FUN_0238538C
	.word FUN_023853E4
	.word FUN_023856A8
	.word FUN_0238582C
	.word FUN_0238594C
	.word FUN_023859D8
	.word FUN_02385B0C
	.word FUN_02385CCC
	.word FUN_023821F8
	.word FUN_023821F8
	.word FUN_023821F8
	.word FUN_02385D80
	.word FUN_02385EB0
	.word FUN_02385F10
	.word FUN_02385F3C
	.word FUN_02386A9C
	.word FUN_02385FA4
	.word FUN_02386100
	.word FUN_023862F0
	.word FUN_0238637C
	.word FUN_02388014
	.word FUN_023880A8
	.word FUN_02388A08
	.word FUN_02388AA0
	.word FUN_02388B00
	.word FUN_02383C20
	.word FUN_02385BE8
	.word FUN_02388B14
	.word FUN_02388C98
	.word FUN_02388CC4
	.word FUN_02386A60
	.word FUN_02386A30
	.word FUN_023869F4

_02399278:
	.word FUN_02390968
	.word FUN_0239085C
	.word FUN_02390734
	.word FUN_0239062C
	.word FUN_0239052C
	.word FUN_02390260
	.word FUN_02398A58
	.word FUN_023966E4
	.word FUN_0238E878
	.word FUN_023964CC
	.word FUN_0238EB1C
	.word FUN_0238F904
	.word FUN_02388F74
	.word FUN_02390210
	.word FUN_0238E670
	.word FUN_0238E298
	.word FUN_0238E1AC
	.word FUN_02395FC4
	.word FUN_02398D68
	.word FUN_0238F804
	.word FUN_0238E0E8
	.word FUN_0238987C
	.word FUN_023897D8
	.word FUN_02389784

_023992D8:
	.byte 0x03, 0x00, 0x03, 0x00

_023992DC:
	.byte 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0x00, 0x00

_023992E4:
	.byte 0x03, 0x09, 0xBF, 0x00, 0x00, 0x10, 0x00, 0x00

_023992EC:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

_023992F4:
	.byte 0x03, 0x09, 0xBF, 0x00, 0x00, 0x00, 0x00, 0x00

_023992FC:
	.byte 0x02, 0x00, 0x04, 0x00
	.byte 0x0B, 0x00, 0x0C, 0x00, 0x12, 0x00, 0x16, 0x00, 0x18, 0x00, 0x24, 0x00, 0x30, 0x00, 0x48, 0x00
	.byte 0x60, 0x00, 0x6C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

_0239931C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

_0239933C:
	.byte 0x00, 0x00, 0x01, 0xCC
	.byte 0x01, 0xD8, 0x00, 0x14, 0x01, 0xF0, 0x00, 0x3C, 0x00, 0x28, 0x01, 0xE4, 0x01, 0xA0, 0x00, 0x6C
	.byte 0x00, 0x78, 0x01, 0xB4, 0x00, 0x50, 0x01, 0x9C, 0x01, 0x88, 0x00, 0x44

_0239935C:
	.byte 0x46, 0x01, 0x48, 0x01
	.byte 0x4A, 0x01, 0x4C, 0x01, 0x20, 0x01, 0x22, 0x01, 0x54, 0x01, 0x44, 0x01, 0x32, 0x01, 0x32, 0x01
	.byte 0x40, 0x01, 0x42, 0x01, 0x38, 0x00, 0x24, 0x01, 0x28, 0x01, 0x50, 0x01

_0239937C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

_023993CC:
	.byte 0x04, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x10, 0x00, 0xFF, 0xFF
	.byte 0x54, 0x02, 0x00, 0x00, 0xB4, 0x00, 0xFF, 0xFF, 0x80, 0x00, 0x00, 0x00, 0x8E, 0x00, 0x01, 0x00
	.byte 0x88, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0xE8, 0x00, 0x00, 0x00
	.byte 0xEA, 0x00, 0x00, 0x00, 0xEE, 0x00, 0x01, 0x00, 0xEC, 0x00, 0x03, 0x3F, 0xA2, 0x01, 0x01, 0x00
	.byte 0xA0, 0x01, 0x00, 0x00, 0x10, 0x01, 0x00, 0x08, 0xBC, 0x00, 0x01, 0x00, 0xD4, 0x00, 0x03, 0x00
	.byte 0xD8, 0x00, 0x04, 0x00, 0xDA, 0x00, 0x02, 0x06, 0x76, 0x00, 0x00, 0x00, 0x30, 0x01, 0x46, 0x01

_02399430:
	.byte 0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x01, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00
	.byte 0xFF, 0x00, 0xFF, 0x00, 0x02, 0x00, 0x03, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00
	.byte 0xFF, 0x00, 0x04, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0x05, 0x00, 0xFF, 0x00, 0x06, 0x00
	.byte 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00
	.byte 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0x07, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00
	.byte 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0x08, 0x00
	.byte 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00
	.byte 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00
	.byte 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0x09, 0x00
	.byte 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00
	.byte 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00
	.byte 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0x0A, 0x00
	.byte 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00
	.byte 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0x0B, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00
	.byte 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00

_02399520:
	.byte 0xFF, 0xFF, 0x5A, 0x5A, 0xA5, 0xA5, 0x00, 0x00

_02399528:
	.byte 0x02, 0x00, 0x04, 0x00, 0x05, 0x00, 0x06, 0x00
	.byte 0x07, 0x00, 0x1C, 0x00, 0x1D, 0x00, 0x1E, 0x00, 0x1F, 0x00, 0x20, 0x00, 0x21, 0x00, 0x26, 0x00
	.byte 0x29, 0x00, 0x2C, 0x00, 0x2D, 0x00, 0x2E, 0x00, 0x2F, 0x00, 0x30, 0x00, 0x33, 0x00, 0x34, 0x00
	.byte 0x35, 0x00, 0x36, 0x00, 0x37, 0x00, 0x65, 0x00, 0x00, 0x00, 0x00, 0x00

_0239955C:
	.byte 0x00, 0x00, 0x09, 0x00
	.byte 0x0A, 0x00, 0x0B, 0x00, 0x0C, 0x00, 0x0D, 0x00, 0x0E, 0x00, 0x0F, 0x00, 0x10, 0x00, 0x11, 0x00
	.byte 0x12, 0x00, 0x14, 0x00, 0x15, 0x00, 0x16, 0x00, 0x17, 0x00, 0x18, 0x00, 0x19, 0x00, 0x1A, 0x00
	.byte 0x27, 0x00, 0x4D, 0x00, 0x5D, 0x00, 0x5E, 0x00, 0x5F, 0x00, 0x60, 0x00, 0x61, 0x00, 0x64, 0x00
	.byte 0x66, 0x00, 0x00, 0x00

_02399594:
	.byte 0x06, 0x00, 0x3F, 0x00, 0x18, 0x00, 0xFF, 0xFF, 0x1A, 0x00, 0xFF, 0xFF
	.byte 0x1C, 0x00, 0xFF, 0xFF, 0x20, 0x00, 0xFF, 0xFF, 0x22, 0x00, 0xFF, 0xFF, 0x24, 0x00, 0xFF, 0xFF
	.byte 0x2A, 0x00, 0xFF, 0x07, 0x50, 0x00, 0xFF, 0xFF, 0x52, 0x00, 0xFF, 0xFF, 0x56, 0x00, 0xFE, 0x0F
	.byte 0x58, 0x00, 0xFE, 0x1F, 0x5A, 0x00, 0xFE, 0x0F, 0x5C, 0x00, 0xFF, 0x0F, 0x62, 0x00, 0xFE, 0x1F
	.byte 0x64, 0x00, 0xFF, 0x0F, 0x68, 0x00, 0xFE, 0x1F, 0x6C, 0x00, 0xFF, 0x0F, 0x74, 0x00, 0xFE, 0x1F
	.byte 0x22, 0x01, 0xFF, 0xFF, 0x24, 0x01, 0xFF, 0xFF, 0x28, 0x01, 0xFF, 0xFF, 0x30, 0x01, 0xFF, 0x0F
	.byte 0x32, 0x01, 0xFF, 0x8F, 0x34, 0x01, 0xFF, 0xFF, 0x40, 0x01, 0xFF, 0xFF, 0x42, 0x01, 0xFF, 0xFF

_02399600:
	.byte 0x18, 0x00, 0x02, 0x00
	.word FUN_023934E0
	.byte 0x04, 0x00, 0x01, 0x00
	.word FUN_0239333C
	.byte 0x0A, 0x00, 0x01, 0x00
	.word FUN_02392E44
	.byte 0x0C, 0x00, 0x01, 0x00
	.word FUN_02392DE0
	.byte 0x01, 0x00, 0x01, 0x00
	.word FUN_02392D94

_02399628:
	.byte 0x00, 0x00, 0x04, 0x00
	.word FUN_02391888
	.byte 0x00, 0x00, 0x12, 0x00
	.word FUN_0239183C
	.byte 0x00, 0x00, 0x02, 0x00
	.word FUN_02391814
	.byte 0x00, 0x00, 0x02, 0x00
	.word FUN_023917EC
	.byte 0x00, 0x00, 0x02, 0x00
	.word FUN_023917C4
	.byte 0x00, 0x00, 0x01, 0x00
	.word FUN_023916E0

_02399658:
	.byte 0x03, 0x00, 0x01, 0x00
	.word FUN_02391F58
	.byte 0x11, 0x00, 0x01, 0x00
	.word FUN_02391F38
	.byte 0x01, 0x00, 0x01, 0x00
	.word FUN_02391EF4
	.byte 0x01, 0x00, 0x01, 0x00
	.word FUN_02391EB0
	.byte 0x01, 0x00, 0x01, 0x00
	.word FUN_02391E64
	.byte 0x00, 0x00, 0x01, 0x00
	.word FUN_02391DF4

_02399688:
	.byte 0x01, 0x00, 0x01, 0x00
	.word FUN_023916A0
	.byte 0x03, 0x00, 0x01, 0x00
	.word FUN_023915F4
	.byte 0x1F, 0x00, 0x23, 0x00
	.word FUN_023914A8
	.byte 0x22, 0x00, 0x05, 0x00
	.word FUN_023912E8
	.byte 0x05, 0x00, 0x06, 0x00
	.word FUN_0239120C
	.byte 0x04, 0x00, 0x04, 0x00
	.word FUN_023910C0
	.byte 0x05, 0x00, 0x03, 0x00
	.word FUN_02390FD8
	.byte 0x05, 0x00, 0x03, 0x00
	.word FUN_02390F08
	.byte 0x04, 0x00, 0x01, 0x00
	.word FUN_02390DF0
	.byte 0x17, 0x00, 0x01, 0x00
	.word FUN_02390C4C
	.byte 0x0C, 0x00, 0x12, 0x00
	.word FUN_02390B64

_023996E0:
	.byte 0x00, 0x00, 0x01, 0x00
	.word FUN_0238F8FC
	.byte 0x00, 0x00, 0x01, 0x00
	.word FUN_02392D10
	.byte 0x00, 0x00, 0x01, 0x00
	.word FUN_02392CAC
	.byte 0x00, 0x00, 0x01, 0x00
	.word FUN_02392C4C
	.byte 0x00, 0x00, 0x01, 0x00
	.word FUN_02392C08
	.byte 0x00, 0x00, 0x01, 0x00
	.word FUN_02392BC4
	.byte 0x00, 0x00, 0x09, 0x00
	.word FUN_02392B18
	.byte 0x00, 0x00, 0x5C, 0x00
	.word FUN_02392AB8
	.byte 0x00, 0x00, 0x02, 0x00
	.word FUN_02392A90
	.byte 0x04, 0x00, 0x01, 0x00
	.word FUN_0239281C
	.byte 0x02, 0x00, 0x01, 0x00
	.word FUN_0239257C

_02399738:
	.byte 0x00, 0x00, 0x21, 0x00
	.word FUN_02391CBC
	.byte 0x00, 0x00, 0x04, 0x00
	.word FUN_02391C84
	.byte 0x00, 0x00, 0x02, 0x00
	.word FUN_02391C5C
	.byte 0x00, 0x00, 0x03, 0x00
	.word FUN_02391C24
	.byte 0x00, 0x00, 0x02, 0x00
	.word FUN_02391BFC
	.byte 0x00, 0x00, 0x02, 0x00
	.word FUN_02391BD4
	.byte 0x00, 0x00, 0x02, 0x00
	.word FUN_02391BAC
	.byte 0x00, 0x00, 0x02, 0x00
	.word FUN_02391B84
	.byte 0x00, 0x00, 0x01, 0x00
	.word FUN_0238F8FC
	.byte 0x00, 0x00, 0x02, 0x00
	.word FUN_02391B54
	.byte 0x00, 0x00, 0x02, 0x00
	.word FUN_02391B24
	.byte 0x00, 0x00, 0x02, 0x00
	.word FUN_02391AFC
	.byte 0x00, 0x00, 0x02, 0x00
	.word FUN_02391AD4
	.byte 0x00, 0x00, 0x11, 0x00
	.word FUN_02391A98
	.byte 0x00, 0x00, 0x02, 0x00
	.word FUN_02391A68
	.byte 0x00, 0x00, 0x02, 0x00
	.word FUN_02391A40
	.byte 0x00, 0x00, 0x04, 0x00
	.word FUN_02391A00
	.byte 0x00, 0x00, 0x01, 0x00
	.word FUN_0238F8FC
	.byte 0x00, 0x00, 0x02, 0x00
	.word FUN_023919D4
	.byte 0x00, 0x00, 0x02, 0x00
	.word FUN_02391998
	.byte 0x00, 0x00, 0x03, 0x00
	.word FUN_02391938
	.byte 0x00, 0x00, 0x02, 0x00
	.word FUN_023918FC
	.byte 0x00, 0x00, 0x02, 0x00
	.word FUN_023918C0

_023997F0:
	.byte 0x48, 0x00, 0x01, 0x00
	.word FUN_02392488
	.byte 0x03, 0x00, 0x01, 0x00
	.word FUN_02392440
	.byte 0x01, 0x00, 0x01, 0x00
	.word FUN_02392428
	.byte 0x01, 0x00, 0x01, 0x00
	.word FUN_023923E0
	.byte 0x01, 0x00, 0x01, 0x00
	.word FUN_02392384
	.byte 0x01, 0x00, 0x01, 0x00
	.word FUN_0239236C
	.byte 0x01, 0x00, 0x01, 0x00
	.word FUN_02392354
	.byte 0x01, 0x00, 0x01, 0x00
	.word FUN_0239233C
	.byte 0x28, 0x00, 0x01, 0x00
	.word FUN_02392324
	.byte 0x01, 0x00, 0x01, 0x00
	.word FUN_023922DC
	.byte 0x01, 0x00, 0x01, 0x00
	.word FUN_023922C4
	.byte 0x01, 0x00, 0x01, 0x00
	.word FUN_023922AC
	.byte 0x01, 0x00, 0x01, 0x00
	.word FUN_02392290
	.byte 0x10, 0x00, 0x01, 0x00
	.word FUN_02392278
	.byte 0x01, 0x00, 0x01, 0x00
	.word FUN_02392260
	.byte 0x01, 0x00, 0x01, 0x00
	.word FUN_02392248
	.byte 0x03, 0x00, 0x01, 0x00
	.word FUN_023921F4
	.byte 0x03, 0x00, 0x01, 0x00
	.word FUN_023920E8
	.byte 0x01, 0x00, 0x01, 0x00
	.word FUN_02392090
	.byte 0x01, 0x00, 0x01, 0x00
	.word FUN_02392048
	.byte 0x02, 0x00, 0x01, 0x00
	.word FUN_02392000
	.byte 0x01, 0x00, 0x01, 0x00
	.word FUN_02391FB8
	.byte 0x01, 0x00, 0x01, 0x00
	.word FUN_02391F70

_023998A8:
	.byte 0x32, 0x2E, 0x37, 0x38, 0x2E, 0x30, 0x30, 0x00

_023998B0:
	.byte 0x01, 0x00, 0x04, 0x00, 0x08, 0x00, 0x00, 0x00

	.bss
_023998B8:
	.space 0x20

_023998D8:
	.space 0x8

_023998E0:
	.space 0x20

_02399900:
	.space 0x10

_02399910:
	.space 0x20

_02399930:
	.space 0x10

_02399940:
	.space 0x20

_02399960:
	.space 0xF58

	.global _0239A8B8
_0239A8B8:
	.space 0x128

_0239A9E0:
	.space 0x400

	.global _0239ADE0
_0239ADE0:
	.space 0x2C

_0239AE0C:
	.space 0x3C
