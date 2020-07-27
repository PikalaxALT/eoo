	.include "asm/macros.inc"
	.include "global.inc"

	.text

	arm_func_start FUN_0230F74C
FUN_0230F74C: ; 0x0230F74C
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x68
	mov r6, r0
	add r0, sp, #0
	mov r5, r1
	mov r4, r2
	bl FUN_02307950
	add r0, sp, #0
	mov r1, r5
	mov r2, r4
	bl FUN_023077F4
	add r0, sp, #0
	mov r1, r6
	bl FUN_023075F8
	add sp, sp, #0x68
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	arm_func_end FUN_0230F74C

	arm_func_start FUN_0230F790
FUN_0230F790: ; 0x0230F790
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _0230F7D4 ; =_0234DD14
	mov r2, r0
	ldr r1, [r1]
	cmp r1, #0
	beq _0230F7BC
	blx r1
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
_0230F7BC:
	mov r0, #0
	mvn r1, #0
	bl FUN_0230470C
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_0230F7D4: .word _0234DD14
	arm_func_end FUN_0230F790

	arm_func_start FUN_0230F7D8
FUN_0230F7D8: ; 0x0230F7D8
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _0230F81C ; =_0234DD10
	mov r2, r0
	ldr r1, [r1]
	cmp r1, #0
	beq _0230F804
	blx r1
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
_0230F804:
	mov r0, #0
	mvn r1, #0
	bl FUN_02304780
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_0230F81C: .word _0234DD10
	arm_func_end FUN_0230F7D8

	arm_func_start FUN_0230F820
FUN_0230F820: ; 0x0230F820
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x120
	mov r3, #0
	str r3, [sp, #0x10]
	str r3, [sp, #0x18]
	str r2, [sp]
	mov r3, #0x80
	mov r4, r0
	mov r2, r1
	ldr ip, _0230F91C ; =0x00010001
	str r3, [sp, #4]
	add r0, sp, #0x1c
	mov r1, #0x100
	str ip, [sp, #8]
	bl FUN_0230FC5C
	mov r1, r0
	add r0, sp, #0x1c
	add r2, sp, #0xc
	add r3, sp, #0x10
	bl FUN_0230FAC4
	cmp r0, #0
	addeq sp, sp, #0x120
	moveq r0, #0
	ldmeqia sp!, {r4, lr}
	bxeq lr
	add r1, sp, #0x14
	add r0, sp, #0x18
	str r1, [sp]
	str r0, [sp, #4]
	mov r2, #0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	mov r3, r2
	bl FUN_0230F920
	cmp r0, #0
	addeq sp, sp, #0x120
	moveq r0, #0
	ldmeqia sp!, {r4, lr}
	bxeq lr
	ldr r0, [sp, #0x18]
	cmp r0, #0x14
	addne sp, sp, #0x120
	movne r0, #0
	ldmneia sp!, {r4, lr}
	bxne lr
	ldr r2, [sp, #0x14]
	mov r3, #0
_0230F8DC:
	ldrb r1, [r2]
	ldrb r0, [r4]
	cmp r1, r0
	addne sp, sp, #0x120
	movne r0, #0
	ldmneia sp!, {r4, lr}
	bxne lr
	add r3, r3, #1
	cmp r3, #0x14
	add r4, r4, #1
	add r2, r2, #1
	blt _0230F8DC
	mov r0, #1
	add sp, sp, #0x120
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_0230F91C: .word 0x00010001
	arm_func_end FUN_0230F820

	arm_func_start FUN_0230F920
FUN_0230F920: ; 0x0230F920
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r2
	mov r4, r3
	add r0, sp, #0x10
	add r1, sp, #0x14
	mov r2, #0x30
	mov r3, #0
	bl FUN_0230FB88
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, lr}
	addeq sp, sp, #0x10
	bxeq lr
	add r0, sp, #0x10
	add r1, sp, #0x14
	mov r2, #0x30
	mov r3, #0
	bl FUN_0230FB88
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, lr}
	addeq sp, sp, #0x10
	bxeq lr
	add r0, sp, #0x10
	add r1, sp, #0x14
	add r3, sp, #0
	mov r2, #6
	bl FUN_0230FB88
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, lr}
	addeq sp, sp, #0x10
	bxeq lr
	cmp r5, #0
	ldrne r0, [sp, #0x10]
	strne r0, [r5]
	cmp r4, #0
	ldrne r0, [sp]
	strne r0, [r4]
	ldr r2, [sp]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r0, r0, r2
	str r0, [sp, #0x10]
	cmp r1, r2
	addlo sp, sp, #4
	movlo r0, #0
	ldmloia sp!, {r4, r5, lr}
	addlo sp, sp, #0x10
	bxlo lr
	sub ip, r1, r2
	add r0, sp, #0x10
	add r1, sp, #0x14
	add r3, sp, #0
	mov r2, #5
	str ip, [sp, #0x14]
	bl FUN_0230FB88
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r2, [sp]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r0, r0, r2
	str r0, [sp, #0x10]
	cmp r1, r2
	addlo sp, sp, #4
	movlo r0, #0
	ldmloia sp!, {r4, r5, lr}
	addlo sp, sp, #0x10
	bxlo lr
	sub ip, r1, r2
	add r0, sp, #0x10
	add r1, sp, #0x14
	add r3, sp, #0
	mov r2, #4
	str ip, [sp, #0x14]
	bl FUN_0230FB88
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r1, [sp, #0x20]
	cmp r1, #0
	ldrne r0, [sp, #0x10]
	strne r0, [r1]
	ldr r1, [sp, #0x24]
	cmp r1, #0
	ldrne r0, [sp]
	strne r0, [r1]
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_0230F920

	arm_func_start FUN_0230FAC4
FUN_0230FAC4: ; 0x0230FAC4
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r1, #0xa
	addlo sp, sp, #4
	movlo r0, #0
	ldmloia sp!, {lr}
	bxlo lr
	ldrb ip, [r0]
	add lr, r0, r1
	cmp ip, #1
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {lr}
	bxne lr
	add ip, r0, #1
	mov r1, #0
_0230FB04:
	ldrb r0, [ip], #1
	cmp r0, #0xff
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {lr}
	bxne lr
	add r1, r1, #1
	cmp r1, #8
	blt _0230FB04
	cmp ip, lr
	beq _0230FB48
_0230FB30:
	ldrb r0, [ip]
	cmp r0, #0xff
	bne _0230FB48
	add ip, ip, #1
	cmp ip, lr
	bne _0230FB30
_0230FB48:
	cmp ip, lr
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {lr}
	bxeq lr
	ldrb r0, [ip]
	cmp r0, #0
	movne r0, #0
	addeq r0, ip, #1
	subeq r1, lr, r0
	streq r1, [r3]
	streq r0, [r2]
	moveq r0, #1
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_0230FAC4

	arm_func_start FUN_0230FB88
FUN_0230FB88: ; 0x0230FB88
	stmdb sp!, {r4, r5, r6, lr}
	ldr r5, [r0]
	mov r6, #0
	ldrb r4, [r5]
	add r5, r5, #1
	mov ip, r6
	cmp r4, r2
	ldr r2, [r1]
	movne r0, r6
	ldmneia sp!, {r4, r5, r6, lr}
	bxne lr
	cmp r2, #1
	movlo r0, r6
	ldmloia sp!, {r4, r5, r6, lr}
	bxlo lr
	ldrb lr, [r5]
	sub r4, r2, #1
	ands r2, lr, #0x80
	beq _0230FC24
	and r2, lr, #0x7f
	and lr, r2, #0xff
	add r2, lr, #1
	cmp r4, r2
	movlo r0, r6
	ldmloia sp!, {r4, r5, r6, lr}
	bxlo lr
	cmp r3, #0
	sub r6, r4, lr
	beq _0230FC1C
	ldrb r2, [r5, #1]
	add r5, r5, #1
	and r4, r2, #0x7f
_0230FC08:
	sub r2, lr, #1
	add ip, r4, ip, lsl #7
	ands lr, r2, #0xff
	bne _0230FC08
	b _0230FC40
_0230FC1C:
	add r5, r5, lr
	b _0230FC40
_0230FC24:
	add r5, r5, #1
	cmp r4, #1
	mov ip, lr
	movlo r0, r6
	ldmloia sp!, {r4, r5, r6, lr}
	bxlo lr
	sub r6, r4, #1
_0230FC40:
	str r5, [r0]
	str r6, [r1]
	cmp r3, #0
	strne ip, [r3]
	mov r0, #1
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	arm_func_end FUN_0230FB88

	arm_func_start FUN_0230FC5C
FUN_0230FC5C: ; 0x0230FC5C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x58
	movs r6, r0
	mov r5, r1
	mov r8, r2
	mov r7, r3
	beq _0230FC8C
	cmp r8, #0
	beq _0230FC8C
	ldr r0, [sp, #0x70]
	cmp r0, #0
	bne _0230FC9C
_0230FC8C:
	add sp, sp, #0x58
	mvn r0, #2
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
_0230FC9C:
	bl FUN_0231369C
	mov r4, r0
	add r0, sp, #4
	bl FUN_0231371C
	add r0, sp, #0x18
	bl FUN_0231371C
	add r0, sp, #0x2c
	bl FUN_0231371C
	add r0, sp, #0x40
	bl FUN_0231371C
	cmp r4, #0
	mvneq r5, #1
	beq _0230FD78
	add r2, sp, #4
	mov r0, r8
	mov r1, r7
	bl FUN_02313358
	cmp r0, #0
	mvneq r5, #1
	beq _0230FD78
	ldr r1, [sp, #0x78]
	add r0, sp, #0x2c
	bl FUN_0231346C
	cmp r0, #0
	mvneq r5, #1
	beq _0230FD78
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x74]
	add r2, sp, #0x40
	bl FUN_02313358
	cmp r0, #0
	mvneq r5, #1
	beq _0230FD78
	add r0, sp, #0x18
	add r1, sp, #4
	add r2, sp, #0x2c
	add r3, sp, #0x40
	str r4, [sp]
	bl FUN_023118A8
	cmp r0, #0
	mvneq r5, #1
	beq _0230FD78
	add r0, sp, #0x18
	bl FUN_02313878
	add r1, r0, #7
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r0, r0, asr #3
	cmp r0, r5
	mvngt r5, #0
	bgt _0230FD78
	add r0, sp, #0x18
	mov r1, r6
	bl FUN_023132DC
	mov r5, r0
_0230FD78:
	add r0, sp, #4
	bl FUN_023137FC
	add r0, sp, #0x18
	bl FUN_023137FC
	add r0, sp, #0x2c
	bl FUN_023137FC
	add r0, sp, #0x40
	bl FUN_023137FC
	cmp r4, #0
	beq _0230FDA8
	mov r0, r4
	bl FUN_0231362C
_0230FDA8:
	mov r0, r5
	add sp, sp, #0x58
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	arm_func_end FUN_0230FC5C

	arm_func_start FUN_0230FDB8
FUN_0230FDB8: ; 0x0230FDB8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x7c
	mov r4, #0
	mov r5, r3
	mov r3, r4
	str r3, [sp, #0x34]
	ldr r3, [r5]
	str r0, [sp, #4]
	mov r0, r4
	ldr r3, [r3]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	ands r0, r3, #1
	ldr r0, [sp, #0xa0]
	str r4, [sp, #8]
	str r0, [sp, #0xa0]
	mov r7, r1
	mov r6, r2
	addeq sp, sp, #0x7c
	moveq r0, r4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	ldr r1, [r7, #4]
	ldr r0, [r0]
	cmp r1, #0
	str r0, [sp, #0xc]
	beq _0230FE3C
	cmp r1, #1
	bne _0230FE58
	ldr r0, [r7]
	ldr r0, [r0]
	cmp r0, #0
	bne _0230FE58
_0230FE3C:
	ldr r0, [sp, #4]
	mov r1, #0
	bl FUN_0231346C
	add sp, sp, #0x7c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_0230FE58:
	ldr r1, [r6, #4]
	cmp r1, #0
	beq _0230FE7C
	cmp r1, #1
	bne _0230FE98
	ldr r0, [r6]
	ldr r0, [r0]
	cmp r0, #0
	bne _0230FE98
_0230FE7C:
	ldr r0, [sp, #4]
	mov r1, #1
	bl FUN_0231346C
	add sp, sp, #0x7c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_0230FE98:
	cmp r1, #1
	bne _0230FECC
	ldr r0, [r6]
	ldr r0, [r0]
	cmp r0, #1
	bne _0230FECC
	ldr r0, [sp, #4]
	mov r1, r7
	bl FUN_02313514
	add sp, sp, #0x7c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_0230FECC:
	ldr r0, [sp, #0xa4]
	str r0, [sp, #0x18]
	cmp r0, #0
	bne _0230FF00
	bl FUN_02310F50
	str r0, [sp, #0x18]
	cmp r0, #0
	beq _0231055C
	ldr r2, [sp, #0xa0]
	mov r1, r5
	bl FUN_02310F84
	cmp r0, #0
	beq _0231055C
_0230FF00:
	ldr r3, [sp, #0xa0]
	add r1, sp, #0x34
	mov r4, r3
	ldr r4, [r4, #0x10c]
	mov r0, r6
	mov r2, #0
	str r4, [sp, #0x1c]
	bl FUN_02311318
	cmp r0, #0
	beq _0231055C
	ldr r0, [sp, #0xa0]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0xa0]
	str r1, [r0]
	ldr r0, [sp, #0x34]
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	str r0, [sp, #0x10]
	add r0, r1, #0x3f
	bl _s32_div_f
	ldr r1, [sp, #0x34]
	mov r4, r0
	add r0, r1, #4
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x18]
	ldr r3, [r7, #4]
	ldr sl, [r0, #0x24]
	cmp r3, sl
	bne _0230FF98
	ldr r1, [r7]
	sub r2, sl, #1
	ldr r0, [r5]
	ldr r1, [r1, r2, lsl #2]
	ldr r0, [r0, r2, lsl #2]
	cmp r1, r0
	strlo r7, [sp, #0x14]
	blo _02310050
_0230FF98:
	cmp r3, sl
	bge _0231000C
	ldr r0, [sp, #0xa0]
	ldr r3, [r0]
	add r1, r0, #4
	add r2, r3, #1
	str r2, [r0]
	mov r0, #0x14
	mla r0, r3, r0, r1
	ldr r2, [r7, #4]
	mov r1, r0
	str r2, [r1, #4]
	mov r1, sl
	str r0, [sp, #0x14]
	bl FUN_0231377C
	ldr r0, [r7, #4]
	mov r2, #0
	cmp r0, #0
	ble _02310050
_0230FFE4:
	ldr r1, [r7]
	ldr r0, [sp, #0x14]
	ldr r1, [r1, r2, lsl #2]
	ldr r0, [r0]
	str r1, [r0, r2, lsl #2]
	ldr r0, [r7, #4]
	add r2, r2, #1
	cmp r2, r0
	blt _0230FFE4
	b _02310050
_0231000C:
	ldr r0, [sp, #0xa0]
	mov r2, r5
	ldr r3, [r0]
	mov r1, r7
	add r5, r3, #1
	str r5, [r0]
	add r5, r0, #4
	mov r0, #0x14
	mla r0, r3, r0, r5
	ldr r3, [sp, #0xa0]
	str r0, [sp, #0x14]
	bl FUN_02311904
	cmp r0, #0
	beq _0231055C
	ldr r0, [sp, #0x14]
	mov r1, sl
	bl FUN_0231377C
_02310050:
	ldr r0, [sp, #0xa0]
	ldr r3, [r0]
	ldr r0, [r6, #4]
	add r1, r3, #1
	mul r2, r0, r4
	ldr r0, [sp, #0xa0]
	mov r4, r2, lsl #1
	str r1, [r0]
	ldr r1, [r0]
	add r4, r4, #7
	add r2, r1, #1
	str r2, [r0]
	ldr r2, [sp, #0x10]
	ldr r0, [r0]
	mul r5, r2, sl
	mov r2, r4, asr #1
	add r2, r4, r2, lsr #30
	add r5, r5, r2, asr #2
	ldr r2, [sp, #0xa0]
	mov r6, #0x14
	add r2, r2, #4
	mla r8, r1, r6, r2
	mla r4, r3, r6, r2
	ldr r1, [sp, #0xa0]
	add r3, r0, #1
	mla r7, r0, r6, r2
	str r3, [r1]
	mov r0, r1
	ldr r0, [r0]
	mla r6, r0, r6, r2
	add r1, r0, #1
	ldr r0, [sp, #0xa0]
	str r1, [r0]
	ldr r0, [sp, #4]
	ldr r0, [r0, #8]
	cmp sl, r0
	ldrle r0, [sp, #4]
	ble _023100F4
	ldr r0, [sp, #4]
	mov r1, sl
	bl FUN_023135AC
_023100F4:
	cmp r0, #0
	beq _0231055C
	ldr r0, [r8, #8]
	mov r1, sl, lsl #2
	cmp r1, r0
	movle r0, r8
	ble _02310118
	mov r0, r8
	bl FUN_023135AC
_02310118:
	cmp r0, #0
	beq _0231055C
	ldr r1, [r7, #8]
	mov r0, sl, lsl #1
	str r0, [sp, #0x24]
	cmp r0, r1
	movle r0, r7
	ble _02310144
	ldr r1, [sp, #0x24]
	mov r0, r7
	bl FUN_023135AC
_02310144:
	cmp r0, #0
	beq _0231055C
	ldr r0, [r4, #8]
	cmp r5, r0
	movle r0, r4
	ble _02310168
	mov r1, r5
	mov r0, r4
	bl FUN_023135AC
_02310168:
	cmp r0, #0
	beq _0231055C
	ldr r1, [r6, #8]
	ldr r0, [sp, #0x24]
	cmp r0, r1
	movle r0, r6
	ble _02310190
	ldr r1, [sp, #0x24]
	mov r0, r6
	bl FUN_023135AC
_02310190:
	cmp r0, #0
	beq _0231055C
	ldr r0, [sp, #0x18]
	ldr fp, [r8]
	ldr r8, [r7]
	ldr r6, [r6]
	ldr r1, [r4]
	ldr r7, [r0, #0x48]
	ldr r5, [r0, #0x20]
	ldr r3, [sp, #0x18]
	str r1, [sp, #0x38]
	str sl, [sp]
	ldr r1, [sp, #0x14]
	ldr r3, [r3, #0xc]
	ldr r1, [r1]
	mov r0, r6
	mov r2, sl
	bl FUN_02311ED8
	str r7, [sp]
	ldr r0, [sp, #0x38]
	mov r1, r6
	mov r2, r5
	mov r3, sl
	bl FUN_02311520
	ldr r0, [sp, #0x10]
	cmp r0, #1
	ble _02310298
	ldr r1, [sp, #0x38]
	mov r0, r6
	mov r2, sl
	mov r3, fp
	bl FUN_02311660
	mov r0, fp
	mov r1, r6
	mov r2, r5
	mov r3, sl
	str r7, [sp]
	bl FUN_02311520
	ldr r0, [sp, #0x10]
	mov r4, #1
	cmp r0, #1
	ble _02310298
	mov r0, sl, lsl #2
	str r0, [sp, #0x28]
	add sb, sp, #0x38
_02310244:
	sub r3, r4, #1
	ldr r2, [sb, r3, lsl #2]
	ldr r1, [sp, #0x28]
	mov r0, r6
	add r1, r2, r1
	str r1, [sb, r4, lsl #2]
	str sl, [sp]
	ldr r1, [sb, r3, lsl #2]
	mov r2, sl
	mov r3, fp
	bl FUN_02311ED8
	str r7, [sp]
	ldr r0, [sb, r4, lsl #2]
	mov r1, r6
	mov r2, r5
	mov r3, sl
	bl FUN_02311520
	ldr r0, [sp, #0x10]
	add r4, r4, #1
	cmp r4, r0
	blt _02310244
_02310298:
	ldr r3, [sp, #0x34]
	add r0, r3, #1
	str r0, [sp, #0x34]
	add r2, r0, #1
	ldrb r1, [r3]
	str r2, [sp, #0x34]
	ldrb sb, [r3, #1]
	cmp sb, #0xff
	bne _02310318
	cmp r1, #0
	bne _02310318
	add r0, r2, #1
	str r0, [sp, #0x34]
	ldrb r1, [r2]
	b _023102E8
_023102D4:
	add sb, sb, #0x100
	ldr r1, [sp, #0x34]
	add r1, r1, #2
	str r1, [sp, #0x34]
	ldrb r1, [r0, #1]
_023102E8:
	ldr r0, [sp, #0x34]
	ldrb r2, [r0]
	cmp r2, #0xff
	bne _02310300
	cmp r1, #0
	beq _023102D4
_02310300:
	ldr r2, [sp, #0x34]
	add r2, r2, #1
	str r2, [sp, #0x34]
	ldrb r0, [r0]
	add r0, r0, #1
	add sb, sb, r0
_02310318:
	mov r2, r1, asr #1
	add r0, sp, #0x38
	ldr r0, [r0, r2, lsl #2]
	mov r1, r8
	mov r2, sl, lsl #2
	bl FUN_02305618
	cmp sb, #0
	beq _023104F0
	mov r0, #0xff
	str r0, [sp, #0x2c]
	mov r0, #0
	str r0, [sp, #0x30]
_02310348:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _0231037C
	mov r3, r0
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x20]
	ldr r3, [r3]
	blx r3
	cmp r0, #0
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	bne _0231055C
_0231037C:
	ldr r0, [sp, #0xa0]
	ldr r0, [r0, #0x108]
	ands r0, r0, #0x4000
	bne _0231055C
	cmp sb, #0
	ldr r4, [sp, #0x30]
	ble _023103D0
_02310398:
	mov r0, r6
	mov r1, r8
	mov r2, sl
	mov r3, fp
	bl FUN_02311660
	str r7, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	mov r3, sl
	bl FUN_02311520
	add r4, r4, #1
	cmp r4, sb
	blt _02310398
_023103D0:
	ldr r2, [sp, #0x34]
	add r0, r2, #1
	str r0, [sp, #0x34]
	add r1, r0, #1
	ldrb r0, [r2]
	str r1, [sp, #0x34]
	ldrb sb, [r2, #1]
	cmp sb, #0xff
	bne _02310450
	cmp r0, #0
	bne _02310450
	add r0, r1, #1
	str r0, [sp, #0x34]
	ldrb r0, [r1]
	b _02310420
_0231040C:
	add sb, sb, #0x100
	ldr r0, [sp, #0x34]
	add r0, r0, #2
	str r0, [sp, #0x34]
	ldrb r0, [r1, #1]
_02310420:
	ldr r1, [sp, #0x34]
	ldrb r2, [r1]
	cmp r2, #0xff
	bne _02310438
	cmp r0, #0
	beq _0231040C
_02310438:
	ldr r2, [sp, #0x34]
	add r2, r2, #1
	str r2, [sp, #0x34]
	ldrb r1, [r1]
	add r1, r1, #1
	add sb, sb, r1
_02310450:
	cmp r0, #0
	bne _02310460
	cmp sb, #0
	beq _023104F0
_02310460:
	cmp sb, #0
	bne _02310470
	cmp r0, #1
	beq _023104AC
_02310470:
	mov r1, r0, asr #1
	str sl, [sp]
	add r0, sp, #0x38
	ldr r3, [r0, r1, lsl #2]
	mov r0, r6
	mov r1, r8
	mov r2, sl
	bl FUN_02311ED8
	mov r0, r8
	mov r1, r6
	mov r2, r5
	mov r3, sl
	str r7, [sp]
	bl FUN_02311520
	b _023104E8
_023104AC:
	ldr r0, [sp, #0x14]
	str sl, [sp]
	ldr r3, [r0]
	mov r0, r6
	mov r1, r8
	mov r2, sl
	bl FUN_02311ED8
	ldr r0, [sp, #4]
	str r7, [sp]
	ldr r0, [r0]
	mov r1, r6
	mov r2, r5
	mov r3, sl
	bl FUN_02311520
	b _02310534
_023104E8:
	cmp sb, #0
	bne _02310348
_023104F0:
	ldr r0, [sp, #0x24]
	mov r2, sl
	cmp sl, r0
	bge _02310518
	mov r1, #0
_02310504:
	ldr r0, [sp, #0x24]
	str r1, [r8, r2, lsl #2]
	add r2, r2, #1
	cmp r2, r0
	blt _02310504
_02310518:
	ldr r0, [sp, #4]
	str r7, [sp]
	ldr r0, [r0]
	mov r1, r8
	mov r2, r5
	mov r3, sl
	bl FUN_02311520
_02310534:
	ldr r0, [sp, #0xa0]
	ldr r0, [r0, #0x108]
	ands r0, r0, #0x4000
	bne _0231055C
	ldr r0, [sp, #4]
	mov r1, r0
	str sl, [r1, #4]
	bl FUN_02313730
	mov r0, #1
	str r0, [sp, #8]
_0231055C:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _02310584
	ldr r3, [r0]
	mov r1, #0xff
	mvn r2, #0
	blx r3
	cmp r0, #0
	movne r0, #0
	strne r0, [sp, #8]
_02310584:
	ldr r0, [sp, #0xa4]
	cmp r0, #0
	bne _023105A0
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _023105A0
	bl FUN_02310ED4
_023105A0:
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0xa0]
	ldr r0, [sp, #8]
	str r2, [r1]
	add sp, sp, #0x7c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	arm_func_end FUN_0230FDB8

	arm_func_start FUN_023105BC
FUN_023105BC: ; 0x023105BC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18c
	mov sl, r0
	mov r0, #0
	str r0, [sp, #8]
	mov r5, r1
	ldr r1, [sp, #8]
	mov r0, r2
	str r2, [sp, #4]
	mov r4, r3
	str r1, [sp, #0xc]
	ldr sb, [sp, #0x1b0]
	bl FUN_02313878
	ldr r1, [r5, #4]
	mov r8, r0
	cmp r1, #0
	beq _02310618
	cmp r1, #1
	bne _02310634
	ldr r0, [r5]
	ldr r0, [r0]
	cmp r0, #0
	bne _02310634
_02310618:
	mov r0, sl
	mov r1, #0
	bl FUN_0231346C
	add sp, sp, #0x18c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_02310634:
	ldr r0, [sp, #4]
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _0231065C
	cmp r1, #1
	bne _02310678
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #0
	bne _02310678
_0231065C:
	mov r0, sl
	mov r1, #1
	bl FUN_0231346C
	add sp, sp, #0x18c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_02310678:
	cmp r1, #1
	bne _023106B0
	ldr r0, [sp, #4]
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #1
	bne _023106B0
	mov r0, sl
	mov r1, r5
	bl FUN_02313514
	add sp, sp, #0x18c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_023106B0:
	add r0, sp, #0x18
	bl FUN_02310EAC
	add r0, sp, #0x18
	mov r1, r4
	mov r2, sb
	bl FUN_02310E34
	cmp r0, #0
	ble _023108FC
	add r0, sp, #0x4c
	bl FUN_0231371C
	ldr r2, [sb]
	add r1, sb, #4
	mov r0, #0x14
	mla r6, r2, r0, r1
	add r1, r2, #1
	str r1, [sb]
	mov r2, r4
	mov r4, #1
	add r0, sp, #0x4c
	mov r1, r5
	mov r3, sb
	str r4, [sp, #0xc]
	bl FUN_02311904
	cmp r0, #0
	beq _023108FC
	add r1, sp, #0x4c
	add r3, sp, #0x18
	mov r0, r6
	mov r2, r1
	str sb, [sp]
	bl FUN_02310D88
	cmp r0, #0
	beq _023108FC
	cmp r8, #0x11
	movle fp, r4
	ble _02310758
	cmp r8, #0x100
	movge fp, #5
	bge _02310758
	cmp r8, #0x80
	movge fp, #4
	movlt fp, #3
_02310758:
	sub r0, fp, #1
	mov r4, #1
	mov r7, r4, lsl r0
	cmp r7, #1
	ble _023107B4
	add r5, sp, #0x60
_02310770:
	mov r0, r5
	bl FUN_0231371C
	sub r3, r4, #1
	mov r2, #0x14
	add r1, sp, #0x4c
	mla r1, r3, r2, r1
	mov r0, r5
	mov r2, r6
	add r3, sp, #0x18
	str sb, [sp]
	bl FUN_02310D88
	cmp r0, #0
	beq _023108FC
	add r4, r4, #1
	cmp r4, r7
	add r5, r5, #0x14
	blt _02310770
_023107B4:
	mov r5, #1
	mov r0, sl
	mov r1, r5
	str r4, [sp, #0xc]
	sub r8, r8, #1
	bl FUN_0231346C
	cmp r0, #0
	beq _023108FC
	mov r0, r5
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
_023107E4:
	ldr r0, [sp, #4]
	mov r1, r8
	bl FUN_0231317C
	cmp r0, #0
	bne _02310830
	cmp r5, #0
	bne _02310820
	mov r0, sl
	mov r1, sl
	mov r2, sl
	add r3, sp, #0x18
	str sb, [sp]
	bl FUN_02310D88
	cmp r0, #0
	beq _023108FC
_02310820:
	cmp r8, #0
	beq _023108F4
	sub r8, r8, #1
	b _023107E4
_02310830:
	ldr r6, [sp, #0x10]
	ldr r7, [sp, #0x14]
	cmp fp, #1
	mov r4, r6
	ble _02310874
_02310844:
	subs r1, r8, r4
	bmi _02310874
	ldr r0, [sp, #4]
	bl FUN_0231317C
	cmp r0, #0
	subne r0, r4, r7
	movne r0, r6, lsl r0
	movne r7, r4
	add r4, r4, #1
	orrne r6, r0, #1
	cmp r4, fp
	blt _02310844
_02310874:
	cmp r5, #0
	add r5, r7, #1
	bne _023108B8
	cmp r5, #0
	ldr r4, [sp, #0x14]
	ble _023108B8
_0231088C:
	mov r0, sl
	mov r1, sl
	mov r2, sl
	add r3, sp, #0x18
	str sb, [sp]
	bl FUN_02310D88
	cmp r0, #0
	beq _023108FC
	add r4, r4, #1
	cmp r4, r5
	blt _0231088C
_023108B8:
	mov r3, r6, asr #1
	mov r1, #0x14
	add r0, sp, #0x4c
	mla r2, r3, r1, r0
	mov r0, sl
	mov r1, sl
	add r3, sp, #0x18
	str sb, [sp]
	bl FUN_02310D88
	cmp r0, #0
	beq _023108FC
	add r0, r7, #1
	ldr r5, [sp, #0x14]
	subs r8, r8, r0
	bpl _023107E4
_023108F4:
	mov r0, #1
	str r0, [sp, #8]
_023108FC:
	ldr r0, [sp, #0xc]
	ldr r1, [sb]
	cmp r0, #0
	sub r0, r1, #1
	str r0, [sb]
	mov r4, #0
	ble _02310938
	add r5, sp, #0x4c
_0231091C:
	mov r0, r5
	bl FUN_02313854
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	cmp r4, r0
	add r5, r5, #0x14
	blt _0231091C
_02310938:
	add r0, sp, #0x18
	bl FUN_02310E78
	ldr r0, [sp, #8]
	add sp, sp, #0x18c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	arm_func_end FUN_023105BC

	arm_func_start FUN_02310950
FUN_02310950: ; 0x02310950
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	movs r8, r2
	mov sl, r0
	mov sb, r1
	mov fp, #0
	mov r5, #2
	addeq sp, sp, #4
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	mov r0, r8
	bl FUN_023138AC
	cmp r0, #0x20
	beq _023109A4
	mov r1, #1
	cmp sl, r1, lsl r0
	addhi sp, sp, #4
	movhi r0, fp
	ldmhiia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxhi lr
_023109A4:
	cmp sl, r8
	rsb r2, r0, #0x20
	subhs sl, sl, r8
	cmp r2, #0
	movne r1, sl, lsl r2
	rsbne r0, r2, #0x20
	orrne sl, r1, sb, lsr r0
	movne r8, r8, lsl r2
	ldr r4, _02310A8C ; =0x0000FFFF
	movne sb, sb, lsl r2
	and r7, r4, r8, lsr #16
	and r6, r8, r4
_023109D4:
	mov r0, sl, lsr #0x10
	cmp r0, r7
	moveq r0, r4
	beq _023109F0
	mov r0, sl
	mov r1, r7
	bl _u32_div_f
_023109F0:
	mul ip, r0, r7
	mul r3, r0, r6
	and r2, r4, sb, lsr #16
_023109FC:
	mov lr, #0x10000
	sub r1, sl, ip
	rsb lr, lr, #0
	ands lr, r1, lr
	bne _02310A28
	add r1, r2, r1, lsl #16
	cmp r3, r1
	subhi ip, ip, r7
	subhi r3, r3, r6
	subhi r0, r0, #1
	bhi _023109FC
_02310A28:
	mul r2, r0, r6
	and r1, r2, r4
	mul r3, r0, r7
	mov r1, r1, lsl #0x10
	cmp sb, r1
	add r2, r3, r2, lsr #16
	addlo r2, r2, #1
	cmp sl, r2
	addlo sl, sl, r8
	sub sb, sb, r1
	sublo r0, r0, #1
	sub r1, sl, r2
	subs r5, r5, #1
	beq _02310A7C
	and r2, r0, r4
	mov r1, r1, lsl #0x10
	and r0, sb, r4
	orr sl, r1, sb, lsr #16
	mov fp, r2, lsl #0x10
	mov sb, r0, lsl #0x10
	b _023109D4
_02310A7C:
	orr r0, fp, r0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_02310A8C: .word 0x0000FFFF
	arm_func_end FUN_02310950

	arm_func_start FUN_02310A90
FUN_02310A90: ; 0x02310A90
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x18
	mov r8, r0
	add r0, sp, #4
	mov r7, r1
	mov r6, r2
	mov r5, r3
	mvn r4, #0
	bl FUN_0231371C
	add r0, sp, #4
	mov r1, #0
	bl FUN_0231346C
	add r0, sp, #4
	mov r1, r6
	bl FUN_023131EC
	cmp r0, #0
	beq _02310AF4
	add r2, sp, #4
	mov r0, r8
	mov r3, r7
	mov r1, #0
	str r5, [sp]
	bl FUN_02311938
	cmp r0, #0
	movne r4, r6
_02310AF4:
	add r0, sp, #4
	bl FUN_023137FC
	mov r0, r4
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	arm_func_end FUN_02310A90

	arm_func_start FUN_02310B0C
FUN_02310B0C: ; 0x02310B0C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	ldr r6, [sp, #0x30]
	mov sb, r1
	ldr fp, [r6]
	movs sl, r0
	add r0, fp, #1
	str r0, [r6]
	ldr r7, [r6]
	add r4, r6, #4
	mov r0, #0x14
	mla r5, fp, r0, r4
	add ip, r7, #1
	mov r1, #0
	str r5, [sp, #4]
	mla r5, r7, r0, r4
	str ip, [r6]
	str r1, [sp]
	ldreq r1, [r6]
	mov r8, r2
	mlaeq sl, r1, r0, r4
	addeq r0, r1, #1
	streq r0, [r6]
	mov r7, r3
	cmp sb, #0
	bne _02310B8C
	ldr r2, [r6]
	add r1, r6, #4
	mov r0, #0x14
	mla sb, r2, r0, r1
	add r0, r2, #1
	str r0, [r6]
_02310B8C:
	mov r0, r8
	mov r1, r7
	bl FUN_02313288
	cmp r0, #0
	bge _02310BCC
	mov r0, sl
	mov r1, #0
	bl FUN_0231346C
	mov r0, sb
	mov r1, r8
	bl FUN_02313514
	add sp, sp, #0xc
	str fp, [r6]
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_02310BCC:
	mov r0, r8
	bl FUN_02313878
	ldr r1, [r7, #0x28]
	mov r2, r0
	mov r0, r1, lsl #1
	cmp r0, r2
	movgt r2, r0
	suble r0, r2, r0
	movgt r4, #0
	addle r0, r0, r0, lsr #31
	movle r4, r0, asr #1
	ldr r1, [r7, #0x2c]
	add r0, r2, r2, lsr #31
	mov r0, r0, asr #1
	cmp r2, r1
	str r0, [sp, #8]
	beq _02310C24
	mov r1, r7
	mov r3, r6
	add r0, r7, #0x14
	bl FUN_02310A90
	str r0, [r7, #0x2c]
_02310C24:
	ldr r2, [sp, #8]
	ldr r0, [sp, #4]
	mov r1, r8
	sub r2, r2, r4
	bl FUN_02312824
	cmp r0, #0
	beq _02310D74
	ldr r1, [sp, #4]
	mov r0, r5
	mov r3, r6
	add r2, r7, #0x14
	bl FUN_02311FFC
	cmp r0, #0
	beq _02310D74
	ldr r2, [sp, #8]
	mov r0, sl
	mov r1, r5
	add r2, r2, r4
	bl FUN_02312824
	cmp r0, #0
	beq _02310D74
	mov r4, #0
	mov r0, r5
	mov r1, r7
	mov r2, sl
	mov r3, r6
	str r4, [sl, #0xc]
	bl FUN_02311FFC
	cmp r0, #0
	beq _02310D74
	mov r0, sb
	mov r1, r8
	mov r2, r5
	bl FUN_02312240
	cmp r0, #0
	beq _02310D74
	mov r5, r4
	mov r0, sb
	mov r1, r7
	str r5, [sb, #0xc]
	bl FUN_02313288
	cmp r0, #0
	blt _02310D20
	mov r4, #1
_02310CD4:
	cmp r5, #2
	add r5, r5, #1
	bgt _02310D74
	mov r0, sb
	mov r1, sb
	mov r2, r7
	bl FUN_02312240
	cmp r0, #0
	beq _02310D74
	mov r0, sl
	mov r1, r4
	bl FUN_023126FC
	cmp r0, #0
	beq _02310D74
	mov r0, sb
	mov r1, r7
	bl FUN_02313288
	cmp r0, #0
	bge _02310CD4
_02310D20:
	ldr r0, [sb, #4]
	mov r1, #1
	cmp r0, #0
	beq _02310D4C
	cmp r0, #1
	bne _02310D48
	ldr r0, [sb]
	ldr r0, [r0]
	cmp r0, #0
	beq _02310D4C
_02310D48:
	mov r1, #0
_02310D4C:
	cmp r1, #0
	movne r0, #0
	ldreq r0, [r8, #0xc]
	str r0, [sb, #0xc]
	mov r0, #1
	ldr r2, [r8, #0xc]
	ldr r1, [r7, #0xc]
	str r0, [sp]
	eor r0, r2, r1
	str r0, [sl, #0xc]
_02310D74:
	ldr r0, [sp]
	str fp, [r6]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	arm_func_end FUN_02310B0C

	arm_func_start FUN_02310D88
FUN_02310D88: ; 0x02310D88
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r4, [sp, #0x20]
	mov ip, #0x14
	ldr r5, [r4]
	add lr, r4, #4
	mla r6, r5, ip, lr
	add ip, r5, #1
	mov r8, r0
	mov r7, r3
	str ip, [r4]
	cmp r2, #0
	mov r5, #0
	beq _02310DF8
	cmp r1, r2
	bne _02310DE0
	mov r0, r6
	mov r2, r4
	bl FUN_0231174C
	cmp r0, #0
	bne _02310DFC
	b _02310E18
_02310DE0:
	mov r0, r6
	mov r3, r4
	bl FUN_02311FFC
	cmp r0, #0
	bne _02310DFC
	b _02310E18
_02310DF8:
	mov r6, r1
_02310DFC:
	mov r1, r8
	mov r2, r6
	mov r3, r7
	mov r0, #0
	str r4, [sp]
	bl FUN_02310B0C
	mov r5, #1
_02310E18:
	ldr r1, [r4]
	mov r0, r5
	sub r1, r1, #1
	str r1, [r4]
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	arm_func_end FUN_02310D88

	arm_func_start FUN_02310E34
FUN_02310E34: ; 0x02310E34
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	bl FUN_02313514
	add r0, r5, #0x14
	mov r1, #0
	bl FUN_0231346C
	mov r0, r4
	bl FUN_02313878
	str r0, [r5, #0x28]
	mov r0, #0
	str r0, [r5, #0x2c]
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_02310E34

	arm_func_start FUN_02310E78
FUN_02310E78: ; 0x02310E78
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl FUN_023137FC
	add r0, r4, #0x14
	bl FUN_023137FC
	ldr r0, [r4, #0x30]
	ands r0, r0, #1
	ldmeqia sp!, {r4, lr}
	bxeq lr
	mov r0, r4
	bl FUN_0230F790
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_02310E78

	arm_func_start FUN_02310EAC
FUN_02310EAC: ; 0x02310EAC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl FUN_0231371C
	add r0, r4, #0x14
	bl FUN_0231371C
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x30]
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_02310EAC

	arm_func_start FUN_02310ED4
FUN_02310ED4: ; 0x02310ED4
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0xc
	bl FUN_023137FC
	add r0, r4, #0x20
	bl FUN_023137FC
	add r0, r4, #0x34
	bl FUN_023137FC
	ldr r0, [r4, #0x4c]
	ands r0, r0, #1
	ldmeqia sp!, {r4, lr}
	bxeq lr
	mov r0, r4
	bl FUN_0230F790
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_02310ED4

	arm_func_start FUN_02310F14
FUN_02310F14: ; 0x02310F14
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	str r1, [r4]
	add r0, r4, #0xc
	str r1, [r4, #8]
	bl FUN_0231371C
	add r0, r4, #0x20
	bl FUN_0231371C
	add r0, r4, #0x34
	bl FUN_0231371C
	mov r0, #0
	str r0, [r4, #0x4c]
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_02310F14

	arm_func_start FUN_02310F50
FUN_02310F50: ; 0x02310F50
	stmdb sp!, {r4, lr}
	mov r0, #0x50
	bl FUN_0230F7D8
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, lr}
	bxeq lr
	bl FUN_02310F14
	mov r1, #1
	mov r0, r4
	str r1, [r4, #0x4c]
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_02310F50

	arm_func_start FUN_02310F84
FUN_02310F84: ; 0x02310F84
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r6, r1
	ldr r3, [r6, #4]
	mov r7, r0
	cmp r3, #0
	mov r5, r2
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	add r0, r7, #0x20
	add r4, r7, #0xc
	bl FUN_02313514
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	add r0, sp, #0
	bl FUN_0231371C
	mov r1, #1
	mov r0, r6
	str r1, [r7]
	bl FUN_02313878
	add r1, r0, #0x1f
	mov r0, r1, asr #4
	add r0, r1, r0, lsr #27
	mov r2, r0, asr #5
	mov r0, r4
	mov r1, #0
	str r2, [r7, #8]
	bl FUN_0231346C
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	mov r0, r4
	mov r1, #0x20
	bl FUN_023131EC
	cmp r0, #0
	beq _02311128
	ldr r0, [r6]
	ldr r4, [r0]
	mov r0, r4
	bl FUN_0231148C
	mov r1, r0
	add r0, sp, #0
	bl FUN_0231346C
	cmp r0, #0
	beq _02311128
	add r0, sp, #0
	mov r2, #0x20
	mov r1, r0
	bl FUN_02312940
	cmp r0, #0
	beq _02311128
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _023110A0
	cmp r0, #1
	bne _02311090
	ldr r0, [sp]
	ldr r0, [r0]
	cmp r0, #0
	beq _023110A0
_02311090:
	add r0, sp, #0
	mov r1, #1
	bl FUN_0231259C
	b _023110B4
_023110A0:
	add r0, sp, #0
	mvn r1, #0
	bl FUN_0231346C
	cmp r0, #0
	beq _02311128
_023110B4:
	ldr r2, [sp, #4]
	cmp r2, #1
	ldrge r0, [sp]
	ldrge r1, [r0]
	movlt r1, #0
	cmp r2, #2
	ldrge r0, [sp]
	mov r2, r4
	ldrge r0, [r0, #4]
	movlt r0, #0
	bl FUN_02310950
	str r0, [r7, #0x48]
	add r0, r7, #0xc
	mov r1, #0
	bl FUN_0231346C
	ldr r1, [r7, #8]
	add r0, r7, #0xc
	mov r1, r1, lsl #6
	bl FUN_023131EC
	cmp r0, #0
	beq _02311128
	add r0, r7, #0xc
	mov r1, r0
	mov r3, r5
	add r2, r7, #0x20
	bl FUN_02311904
	ldr r1, [r7, #8]
	add r0, r7, #0xc
	bl FUN_0231377C
_02311128:
	add r0, sp, #0
	bl FUN_023137FC
	mov r0, #1
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end FUN_02310F84

	arm_func_start FUN_02311140
FUN_02311140: ; 0x02311140
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov r4, r2
	mov r7, r1
	cmp r4, #6
	mov r5, r0
	movgt r4, #6
	mov r1, #1
	mov r2, r1, lsl r4
	ldr r0, [r7, #4]
	sub r2, r2, #1
	add r0, r4, r0, lsl #5
	ldr r3, _02311314 ; =_0231CF64
	str r2, [sp]
	ldr r2, [r3, r4, lsl #2]
	mov r1, r4
	sub r0, r0, #1
	str r2, [sp, #4]
	mov r6, #0
	bl _s32_div_f
	mov ip, #0
	mov r0, r0, lsl #1
	add r0, r0, #2
	mov r8, r6
	add r1, r5, r0
	strb r8, [r5, r0]
	strb r8, [r1, #-1]
	ldr r0, [r7]
	ldr r2, [r7, #4]
	ldr r7, [r0]
	add lr, r0, #4
	cmp r2, #1
	sub sb, r1, #2
	ldrgt r8, [lr], #4
	mov sl, r7
	mov r0, ip
	str ip, [sp, #8]
	mov r1, #0xff
	mov fp, ip
_023111DC:
	ldr r3, [sp]
	and r3, sl, r3
	ldr sl, [sp, #4]
	ldrb sl, [sl, r3]
	cmp sl, #0
	beq _0231123C
	add ip, ip, sl
	add r6, r6, sl
	cmp r6, #0x20
	blo _02311224
	cmp r2, #1
	ble _0231123C
	sub r2, r2, #1
	mov r7, r8
	cmp r2, #1
	movle r8, fp
	ldrgt r8, [lr], #4
	sub r6, r6, #0x20
_02311224:
	cmp r6, #0
	moveq sl, r7
	movne sl, r7, lsr r6
	rsbne r3, r6, #0x20
	orrne sl, sl, r8, lsl r3
	b _023111DC
_0231123C:
	cmp r3, #0
	beq _023112C0
	strb ip, [sb]
	strb r3, [sb, #-1]
	cmp ip, #0x100
	sub sb, sb, #2
	blo _02311278
	cmp ip, #0x100
	blo _02311278
_02311260:
	strb r1, [sb]
	sub ip, ip, #0x100
	strb r0, [sb, #-1]
	sub sb, sb, #2
	cmp ip, #0x100
	bhs _02311260
_02311278:
	mov ip, r4
	add r6, r6, r4
	cmp r6, #0x20
	blo _023112A8
	cmp r2, #1
	ble _023112C0
	sub r2, r2, #1
	mov r7, r8
	cmp r2, #1
	ldrle r8, [sp, #8]
	sub r6, r6, #0x20
	ldrgt r8, [lr], #4
_023112A8:
	cmp r6, #0
	moveq sl, r7
	movne sl, r7, lsr r6
	rsbne r3, r6, #0x20
	orrne sl, sl, r8, lsl r3
	b _023111DC
_023112C0:
	add sb, sb, #1
	mov r0, #2
	b _023112E4
_023112CC:
	strb r2, [r5]
	ldrb r1, [sb, #1]
	add sb, sb, #2
	add r0, r0, #2
	strb r1, [r5, #1]
	add r5, r5, #2
_023112E4:
	ldrb r2, [sb]
	cmp r2, #0
	bne _023112CC
	ldrb r1, [sb, #1]
	cmp r1, #0
	bne _023112CC
	mov r1, #0
	strb r1, [r5]
	strb r1, [r5, #1]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_02311314: .word _0231CF64
	arm_func_end FUN_02311140

	arm_func_start FUN_02311318
FUN_02311318: ; 0x02311318
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	ldr r5, [r3], #4
	mov r2, #0x14
	mla r4, r5, r2, r3
	mov sb, r0
	ldr r0, [sb, #4]
	mov r8, r1
	cmp r0, #0
	mov r5, #0
	mov r1, r0, lsl #5
	addeq sp, sp, #4
	moveq r0, r5
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bxeq lr
	cmp r0, #1
	bne _023113B8
	cmp r0, #1
	bne _0231137C
	ldr r2, [sb]
	ldr r1, _0231147C ; =0x00010001
	ldr r2, [r2]
	cmp r2, r1
	ldreq r5, _02311480 ; =_02314254
	beq _023113A8
_0231137C:
	ldr r1, [sb]
	ldr r1, [r1]
	cmp r1, #0x11
	bne _02311398
	cmp r0, #1
	ldreq r5, _02311484 ; =_0231426C
	beq _023113A8
_02311398:
	cmp r1, #3
	bne _023113A8
	cmp r0, #1
	ldreq r5, _02311488 ; =_02314260
_023113A8:
	mov r7, #1
	mov r6, r7
	mov r1, #0x20
	b _023113E8
_023113B8:
	cmp r1, #0x100
	movge r7, #5
	movge r6, #0x10
	movge r1, #7
	bge _023113E8
	cmp r1, #0x80
	movge r6, #8
	movge r1, r6
	movge r7, #4
	movlt r7, #3
	movlt r6, #4
	movlt r1, #0xb
_023113E8:
	mul r1, r0, r1
	mov r0, r1, lsl #1
	add r1, r0, #7
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	cmp r5, #0
	mov r1, r0, asr #2
	bne _02311464
	ldr r0, [r4, #8]
	cmp r1, r0
	movle r0, r4
	ble _02311420
	mov r0, r4
	bl FUN_023135AC
_02311420:
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bxeq lr
	ldr r5, [r4]
	mov r1, sb
	mov r2, r7
	add r0, r5, #4
	bl FUN_02311140
	add r1, r0, #2
	mov r0, r1, asr #8
	strb r0, [r5]
	strb r1, [r5, #1]
	strb r7, [r5, #2]
	strb r6, [r5, #3]
	b _02311468
_02311464:
	mov r1, #8
_02311468:
	str r5, [r8]
	add r0, r1, #2
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	.align 2, 0
_0231147C: .word 0x00010001
_02311480: .word _02314254
_02311484: .word _0231426C
_02311488: .word _02314260
	arm_func_end FUN_02311318

	arm_func_start FUN_0231148C
FUN_0231148C: ; 0x0231148C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sl, r0
	mov r1, sl
	rsb r0, sl, #0
	bl _u32_div_f
	movs r8, r1
	mov r7, sl
	mov r5, #0
	mov r6, #1
	mvn r4, #0
	beq _023114F4
_023114B8:
	mov r0, r7
	mov r1, r8
	bl _u32_div_f
	mov sb, r1
	mov r0, r7
	mov r1, r8
	bl _u32_div_f
	mla r1, r0, r6, r5
	mov r5, r6
	mov r7, r8
	mov r6, r1
	mov r8, sb
	cmp sb, #0
	rsb r4, r4, #0
	bne _023114B8
_023114F4:
	cmp r4, #0
	sublt r5, sl, r5
	cmp r7, #1
	movne r1, #0
	bne _02311514
	mov r0, r5
	mov r1, sl
	bl _u32_div_f
_02311514:
	mov r0, r1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	arm_func_end FUN_0231148C

	arm_func_start FUN_02311520
FUN_02311520: ; 0x02311520
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov r7, r3
	mov sb, r1
	mov r6, #0
	mov sl, r0
	mov r8, r2
	mov r4, r6
	cmp r7, #0
	add r5, sb, r7, lsl #2
	ldr fp, [sp, #0x30]
	ble _023115B0
	mov r0, #1
	str r6, [sp, #4]
	str r0, [sp]
_0231155C:
	ldr r1, [sb]
	mov r0, sb
	mul r3, r1, fp
	mov r1, r8
	mov r2, r7
	bl FUN_02312F9C
	add r1, r0, r6
	ldr r0, [r5]
	cmp r1, r6
	ldrlo r6, [sp]
	add r0, r0, r1
	str r0, [r5]
	ldr r0, [r5]
	ldrhs r6, [sp, #4]
	cmp r0, r1
	add r4, r4, #1
	addlo r6, r6, #1
	cmp r4, r7
	add sb, sb, #4
	add r5, r5, #4
	blt _0231155C
_023115B0:
	cmp r6, #0
	sub r2, r7, #1
	bne _02311604
	ldr r1, [sb, r2, lsl #2]
	ldr r0, [r8, r2, lsl #2]
	cmp r1, r0
	bne _023115F0
	cmp r2, #0
	ble _023115F0
_023115D4:
	ldr r1, [sb, r2, lsl #2]
	ldr r0, [r8, r2, lsl #2]
	cmp r1, r0
	bne _023115F0
	sub r2, r2, #1
	cmp r2, #0
	bgt _023115D4
_023115F0:
	ldr r1, [sb, r2, lsl #2]
	ldr r0, [r8, r2, lsl #2]
	cmp r1, r0
	movhs r6, #1
	movlo r6, #0
_02311604:
	cmp r6, #0
	beq _0231162C
	mov r0, sl
	mov r1, sb
	mov r2, r8
	mov r3, r7
	bl FUN_02312A44
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_0231162C:
	cmp r7, #0
	addle sp, sp, #0xc
	mov r1, #0
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxle lr
_02311640:
	ldr r0, [sb, r1, lsl #2]
	str r0, [sl, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r7
	blt _02311640
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	arm_func_end FUN_02311520

	arm_func_start FUN_02311660
FUN_02311660: ; 0x02311660
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov fp, r2
	mov r6, fp, lsl #1
	mov sl, r0
	mov r7, fp
	mov sb, r1
	sub r7, r7, #1
	sub r2, r6, #1
	mov r0, #0
	str r0, [sl, r2, lsl #2]
	ldr r0, [sl, r2, lsl #2]
	str r3, [sp]
	mov r5, sb
	str r0, [sl]
	cmp r7, #0
	add r4, sl, #4
	ble _023116C8
	add r5, r5, #4
	ldr r3, [sb]
	mov r0, r4
	mov r1, r5
	mov r2, r7
	bl FUN_02312DFC
	str r0, [r4, r7, lsl #2]
	add r4, r4, #8
_023116C8:
	sub r8, fp, #2
	cmp r8, #0
	ble _02311708
_023116D4:
	mov r0, r5
	sub r7, r7, #1
	add r5, r5, #4
	ldr r3, [r0]
	mov r0, r4
	mov r1, r5
	mov r2, r7
	bl FUN_02312F9C
	sub r8, r8, #1
	str r0, [r4, r7, lsl #2]
	cmp r8, #0
	add r4, r4, #8
	bgt _023116D4
_02311708:
	mov r0, sl
	mov r1, sl
	mov r2, sl
	mov r3, r6
	bl FUN_02312B58
	ldr r0, [sp]
	mov r1, sb
	mov r2, fp
	bl FUN_02312CA8
	ldr r2, [sp]
	mov r0, sl
	mov r1, sl
	mov r3, r6
	bl FUN_02312B58
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	arm_func_end FUN_02311660

	arm_func_start FUN_0231174C
FUN_0231174C: ; 0x0231174C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x64
	ldr r5, [r2]
	mov sb, r0
	mov r8, r1
	cmp r8, sb
	add r3, r2, #4
	mov r2, #0x14
	movne r7, sb
	addeq r0, r5, #1
	mla r4, r5, r2, r3
	mlaeq r7, r0, r2, r3
	ldr r5, [r8, #4]
	cmp r5, #0
	movle r0, #0
	strle r0, [sb, #4]
	addle sp, sp, #0x64
	movle r0, #1
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bxle lr
	ldr r0, [r7, #8]
	mov r6, r5, lsl #1
	cmp r6, r0
	movle r0, r7
	ble _023117BC
	mov r0, r7
	mov r1, r6
	bl FUN_023135AC
_023117BC:
	cmp r0, #0
	addeq sp, sp, #0x64
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bxeq lr
	str r6, [r7, #4]
	mov r0, #0
	str r0, [r7, #0xc]
	cmp r5, #4
	bne _023117FC
	ldr r0, [r7]
	ldr r1, [r8]
	add r3, sp, #0
	mov r2, #4
	bl FUN_02311660
	b _02311860
_023117FC:
	cmp r5, #8
	bne _0231181C
	ldr r0, [r7]
	ldr r1, [r8]
	add r3, sp, #0x20
	mov r2, #8
	bl FUN_02311660
	b _02311860
_0231181C:
	ldr r0, [r4, #8]
	cmp r6, r0
	movle r0, r4
	ble _02311838
	mov r0, r4
	mov r1, r6
	bl FUN_023135AC
_02311838:
	cmp r0, #0
	addeq sp, sp, #0x64
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bxeq lr
	ldr r0, [r7]
	ldr r1, [r8]
	ldr r3, [r4]
	mov r2, r5
	bl FUN_02311660
_02311860:
	cmp r6, #0
	ble _02311884
	ldr r1, [r7]
	sub r0, r6, #1
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	ldreq r0, [r7, #4]
	subeq r0, r0, #1
	streq r0, [r7, #4]
_02311884:
	cmp r7, sb
	beq _02311898
	mov r0, sb
	mov r1, r7
	bl FUN_02313514
_02311898:
	mov r0, #1
	add sp, sp, #0x64
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	arm_func_end FUN_0231174C

	arm_func_start FUN_023118A8
FUN_023118A8: ; 0x023118A8
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr ip, [r3, #4]
	cmp ip, #0
	ble _023118EC
	ldr ip, [r3]
	ldr ip, [ip]
	ands ip, ip, #1
	beq _023118EC
	ldr lr, [sp, #0x10]
	mov ip, #0
	str lr, [sp]
	str ip, [sp, #4]
	bl FUN_0230FDB8
	add sp, sp, #0xc
	ldmia sp!, {lr}
	bx lr
_023118EC:
	ldr ip, [sp, #0x10]
	str ip, [sp]
	bl FUN_023105BC
	add sp, sp, #0xc
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_023118A8

	arm_func_start FUN_02311904
FUN_02311904: ; 0x02311904
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov lr, r1
	mov ip, r2
	str r3, [sp]
	mov r1, r0
	mov r2, lr
	mov r3, ip
	mov r0, #0
	bl FUN_02311938
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_02311904

	arm_func_start FUN_02311938
FUN_02311938: ; 0x02311938
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x4c
	mov r6, r3
	ldr r3, [r6, #4]
	mov r8, r0
	str r1, [sp]
	str r2, [sp, #4]
	cmp r3, #0
	ldr r4, [sp, #0x70]
	beq _02311978
	cmp r3, #1
	bne _02311988
	ldr r0, [r6]
	ldr r0, [r0]
	cmp r0, #0
	bne _02311988
_02311978:
	add sp, sp, #0x4c
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_02311988:
	ldr r0, [sp, #4]
	mov r1, r6
	bl FUN_02313288
	cmp r0, #0
	bge _023119E8
	ldr r0, [sp]
	cmp r0, #0
	beq _023119C4
	ldr r1, [sp, #4]
	bl FUN_02313514
	cmp r0, #0
	addeq sp, sp, #0x4c
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
_023119C4:
	cmp r8, #0
	beq _023119D8
	mov r0, r8
	mov r1, #0
	bl FUN_0231346C
_023119D8:
	add sp, sp, #0x4c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_023119E8:
	ldr r3, [r4]
	add r0, r4, #4
	mov r2, #0x14
	mla r1, r3, r2, r0
	mov r3, #0
	str r3, [r1, #0xc]
	ldr r5, [r4]
	str r1, [sp, #0x14]
	add r4, r5, #1
	mla r1, r4, r2, r0
	add r3, r5, #2
	str r1, [sp, #0x18]
	mla r1, r3, r2, r0
	cmp r8, #0
	str r1, [sp, #0x1c]
	addeq r1, r5, #3
	mlaeq r8, r1, r2, r0
	mov r0, r6
	bl FUN_02313878
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #27
	add r0, r1, r0, ror #27
	rsb r0, r0, #0x20
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #8]
	mov r1, r6
	bl FUN_02312940
	cmp r0, #0
	addeq sp, sp, #0x4c
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	ldr r2, [sp, #8]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #4]
	ldr r3, [sp, #0x1c]
	mov r4, #0
	add r2, r2, #0x20
	str r4, [r3, #0xc]
	bl FUN_02312940
	cmp r0, #0
	addeq sp, sp, #0x4c
	moveq r0, r4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	ldr r0, [sp, #0x18]
	mov r1, r4
	str r1, [r0, #0xc]
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, #4]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x28]
	ldr r4, [r0, #4]
	add r0, sp, #0x38
	sub r1, r4, r1
	str r1, [sp, #0x10]
	bl FUN_0231371C
	ldr r0, [sp, #0x18]
	ldr r2, [r0]
	ldr r0, [sp, #0x28]
	sub r1, r0, #1
	ldr r0, [sp, #0x10]
	add r0, r2, r0, lsl #2
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x28]
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x18]
	ldr r2, [r0, #8]
	ldr r0, [sp, #0x28]
	cmp r0, #1
	add r0, r2, #1
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x1c]
	moveq r5, #0
	ldr r2, [r0]
	ldr r0, [r2, r1, lsl #2]
	str r0, [sp, #0x24]
	ldrne r0, [sp, #0x28]
	subne r0, r0, #2
	ldrne r5, [r2, r0, lsl #2]
	ldr r0, [sp, #0x18]
	ldr r2, [r8, #8]
	ldr r1, [r0]
	sub r0, r4, #1
	add r7, r1, r0, lsl #2
	ldr r0, [sp, #0x10]
	add r1, r0, #1
	cmp r1, r2
	movle r0, r8
	ble _02311B60
	mov r0, r8
	bl FUN_023135AC
_02311B60:
	cmp r0, #0
	beq _02311EC4
	ldr r0, [sp, #4]
	ldr r1, [r6, #0xc]
	ldr r3, [r0, #0xc]
	ldr r0, [sp, #0x10]
	sub r2, r0, #1
	eor r0, r3, r1
	str r0, [r8, #0xc]
	ldr r0, [sp, #0x10]
	str r0, [r8, #4]
	ldr r0, [sp, #0x28]
	ldr r3, [r8]
	add r1, r0, #1
	add r0, r3, r2, lsl #2
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #8]
	cmp r1, r0
	ldrle r0, [sp, #0x14]
	ble _02311BBC
	ldr r0, [sp, #0x14]
	bl FUN_023135AC
_02311BBC:
	cmp r0, #0
	beq _02311EC4
	ldr r1, [sp, #0x1c]
	add r0, sp, #0x38
	bl FUN_02313288
	cmp r0, #0
	blt _02311C10
	add r0, sp, #0x38
	ldr r2, [sp, #0x1c]
	mov r1, r0
	bl FUN_02312240
	cmp r0, #0
	beq _02311EC4
	ldr r0, [sp, #0x20]
	mov r2, #1
	str r2, [r0]
	ldr r0, [r8, #4]
	ldr r1, [r8]
	sub r0, r0, #1
	str r2, [r1, r0, lsl #2]
	b _02311C1C
_02311C10:
	ldr r0, [r8, #4]
	sub r0, r0, #1
	str r0, [r8, #4]
_02311C1C:
	ldr r0, [sp, #0x10]
	sub r1, r0, #1
	ldr r0, [sp, #0x20]
	cmp r1, #0
	sub r0, r0, #4
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0xc]
	ble _02311E6C
	ldr r8, _02311ED4 ; =0x0000FFFF
	cmp r1, #0
	and r0, r5, r8
	str r0, [sp, #0x2c]
	and r0, r8, r5, lsr #16
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x24]
	and r4, r0, r8
	ble _02311E6C
	and sb, r8, r0, lsr #16
	mvn r0, #0
	str r0, [sp, #0x34]
_02311C70:
	ldr r1, [sp, #0x38]
	ldr r0, [sp, #0x3c]
	sub r1, r1, #4
	add r0, r0, #1
	str r0, [sp, #0x3c]
	str r1, [sp, #0x38]
	ldr fp, [r7]
	ldr r0, [sp, #0x24]
	ldr r5, [r7, #-4]
	cmp fp, r0
	ldreq r6, [sp, #0x34]
	beq _02311CB4
	ldr r2, [sp, #0x24]
	mov r0, fp
	mov r1, r5
	bl FUN_02310950
	mov r6, r0
_02311CB4:
	ldr r0, [sp, #0x2c]
	and r2, r6, r8
	mul ip, r0, r2
	ldr r0, [sp, #0x30]
	and lr, r8, r6, lsr #16
	ldr r1, [sp, #0x30]
	mul r0, r2, r0
	mul r3, r1, lr
	ldr r1, [sp, #0x2c]
	mul sl, sb, lr
	mla r1, lr, r1, r0
	cmp r1, r0
	addlo r3, r3, #0x10000
	and r0, r8, r1, lsr #16
	add r3, r3, r0
	and r0, r1, r8
	add ip, ip, r0, lsl #16
	cmp ip, r0, lsl #16
	mul r0, r2, sb
	mul r1, r4, r2
	mla r2, lr, r4, r0
	addlo r3, r3, #1
	cmp r2, r0
	addlo sl, sl, #0x10000
	and r0, r8, r2, lsr #16
	add sl, sl, r0
	and r0, r2, r8
	add r1, r1, r0, lsl #16
	cmp r1, r0, lsl #16
	addlo sl, sl, #1
	sub r1, r5, r1
	cmp r1, r5
	addhi sl, sl, #1
	subs r0, fp, sl
	bne _02311D64
	cmp r3, r1
	blo _02311D64
	cmp r3, r1
	bne _02311D5C
	ldr r0, [r7, #-8]
	cmp ip, r0
	bls _02311D64
_02311D5C:
	sub r6, r6, #1
	b _02311CB4
_02311D64:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [sp, #0x28]
	mov r3, r6
	bl FUN_02312DFC
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x28]
	ldr r3, [r1]
	ldr r1, [sp, #0x28]
	str r0, [r3, r2, lsl #2]
	add r1, r1, #1
	cmp r1, #0
	ble _02311DC4
	ldr r0, [sp, #0x14]
	ldr r2, [r0]
_02311DA8:
	sub r0, r1, #1
	ldr r0, [r2, r0, lsl #2]
	cmp r0, #0
	bne _02311DC4
	sub r1, r1, #1
	cmp r1, #0
	bgt _02311DA8
_02311DC4:
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x14]
	str r1, [r0, #4]
	add r0, sp, #0x38
	mov r1, r0
	ldr r5, [sp, #0x3c]
	bl FUN_023120FC
	ldr r0, [sp, #0x18]
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x3c]
	add r0, r1, r0
	sub r1, r0, r5
	ldr r0, [sp, #0x18]
	str r1, [r0, #4]
	ldr r0, [sp, #0x44]
	cmp r0, #0
	beq _02311E3C
	add r0, sp, #0x38
	ldr r2, [sp, #0x1c]
	mov r1, r0
	sub r6, r6, #1
	ldr r5, [sp, #0x3c]
	bl FUN_023124C0
	ldr r0, [sp, #0x18]
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x3c]
	sub r0, r0, r5
	add r1, r1, r0
	ldr r0, [sp, #0x18]
	str r1, [r0, #4]
_02311E3C:
	ldr r0, [sp, #0x20]
	sub r7, r7, #4
	str r6, [r0], #-4
	str r0, [sp, #0x20]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	sub r1, r0, #1
	ldr r0, [sp, #0xc]
	cmp r0, r1
	blt _02311C70
_02311E6C:
	ldr r0, [sp, #0x18]
	bl FUN_02313730
	ldr r0, [sp]
	cmp r0, #0
	beq _02311EB4
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	ldr r1, [sp, #0x18]
	add r2, r2, #0x20
	ldr r4, [r3, #0xc]
	bl FUN_02312824
	cmp r0, #0
	addeq sp, sp, #0x4c
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	ldr r0, [sp]
	str r4, [r0, #0xc]
_02311EB4:
	add sp, sp, #0x4c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_02311EC4:
	mov r0, #0
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_02311ED4: .word 0x0000FFFF
	arm_func_end FUN_02311938

	arm_func_start FUN_02311ED8
FUN_02311ED8: ; 0x02311ED8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	ldr r5, [sp, #0x20]
	mov r7, r2
	mov sb, r0
	mov r8, r1
	mov r6, r3
	cmp r7, r5
	bge _02311F14
	mov r1, r7
	mov r0, r8
	mov r7, r5
	mov r8, r6
	mov r5, r1
	mov r6, r0
_02311F14:
	ldr r3, [r6]
	mov r0, sb
	mov r1, r8
	mov r2, r7
	add r4, sb, r7, lsl #2
	bl FUN_02312DFC
	str r0, [sb, r7, lsl #2]
_02311F30:
	sub r0, r5, #1
	cmp r0, #0
	addle sp, sp, #4
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bxle lr
	ldr r3, [r6, #4]
	mov r1, r8
	mov r2, r7
	add r0, sb, #4
	bl FUN_02312F9C
	sub r1, r5, #2
	cmp r1, #0
	addle sp, sp, #4
	str r0, [r4, #4]
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bxle lr
	ldr r3, [r6, #8]
	mov r1, r8
	mov r2, r7
	add r0, sb, #8
	bl FUN_02312F9C
	sub r1, r5, #3
	cmp r1, #0
	addle sp, sp, #4
	str r0, [r4, #8]
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bxle lr
	ldr r3, [r6, #0xc]
	mov r1, r8
	mov r2, r7
	add r0, sb, #0xc
	bl FUN_02312F9C
	sub r5, r5, #4
	cmp r5, #0
	addle sp, sp, #4
	str r0, [r4, #0xc]
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bxle lr
	ldr r3, [r6, #0x10]
	mov r1, r8
	mov r2, r7
	add r0, sb, #0x10
	bl FUN_02312F9C
	str r0, [r4, #0x10]
	add r4, r4, #0x10
	add sb, sb, #0x10
	add r6, r6, #0x10
	b _02311F30
	arm_func_end FUN_02311ED8

	arm_func_start FUN_02311FF0
FUN_02311FF0: ; 0x02311FF0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	arm_func_end FUN_02311FF0

	arm_func_start FUN_02311FFC
FUN_02311FFC: ; 0x02311FFC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov sb, r1
	ldr r6, [sb, #4]
	mov r8, r2
	mov sl, r0
	cmp r6, #0
	ldr r5, [r8, #4]
	beq _02312028
	cmp r5, #0
	bne _02312044
_02312028:
	mov r0, sl
	mov r1, #0
	bl FUN_0231346C
	add sp, sp, #4
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_02312044:
	ldr r1, [sb, #0xc]
	ldr r0, [r8, #0xc]
	cmp sl, sb
	add r7, r6, r5
	eor fp, r1, r0
	beq _02312064
	cmp sl, r8
	bne _0231207C
_02312064:
	ldr r0, [r3]
	add r2, r3, #4
	add r1, r0, #1
	mov r0, #0x14
	mla r4, r1, r0, r2
	b _02312080
_0231207C:
	mov r4, sl
_02312080:
	ldr r0, [r4, #8]
	cmp r7, r0
	movle r0, r4
	ble _0231209C
	mov r0, r4
	mov r1, r7
	bl FUN_023135AC
_0231209C:
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	str r7, [r4, #4]
	str r5, [sp]
	ldr r0, [r4]
	ldr r1, [sb]
	ldr r3, [r8]
	mov r2, r6
	bl FUN_02311ED8
	mov r0, r4
	str fp, [sl, #0xc]
	bl FUN_02313730
	cmp sl, r4
	beq _023120EC
	mov r0, sl
	mov r1, r4
	bl FUN_02313514
_023120EC:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	arm_func_end FUN_02311FFC

	arm_func_start FUN_023120FC
FUN_023120FC: ; 0x023120FC
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r6, r1
	ldr r1, [r6, #0xc]
	mov r3, #0
	mov r7, r0
	mov r5, r2
	mov r4, r3
	cmp r1, #0
	beq _02312144
	ldr r0, [r5, #0xc]
	cmp r0, #0
	movne r0, r6
	moveq r3, #1
	movne r6, r5
	movne r5, r0
	moveq r4, r3
	b _02312150
_02312144:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	movne r3, #1
_02312150:
	cmp r3, #0
	beq _02312184
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_023123A4
	cmp r0, #0
	moveq r0, #0
	add sp, sp, #4
	strne r4, [r7, #0xc]
	movne r0, #1
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
_02312184:
	ldr r0, [r5, #4]
	ldr r1, [r6, #4]
	cmp r1, r0
	movle r1, r0
	ldr r0, [r7, #8]
	cmp r1, r0
	movle r0, r7
	ble _023121AC
	mov r0, r7
	bl FUN_023135AC
_023121AC:
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	mov r0, r6
	mov r1, r5
	bl FUN_02313288
	cmp r0, #0
	bge _02312204
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_02312240
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	mov r0, #1
	str r0, [r7, #0xc]
	b _02312230
_02312204:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_02312240
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	mov r0, #0
	str r0, [r7, #0xc]
_02312230:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end FUN_023120FC

	arm_func_start FUN_02312240
FUN_02312240: ; 0x02312240
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r8, r1
	mov r7, r2
	ldr r5, [r7, #4]
	ldr r6, [r8, #4]
	mov r4, r0
	cmp r6, r5
	movlt r0, #0
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxlt lr
	ldr r1, [r4, #8]
	cmp r6, r1
	ble _0231227C
	mov r1, r6
	bl FUN_023135AC
_0231227C:
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxeq lr
	mov r3, #0
	mov r0, r3
	cmp r5, #0
	ldr r2, [r8]
	ldr sb, [r7]
	ldr r1, [r4]
	ble _023122FC
	mov ip, r3
	mov r7, r3
	mov lr, #1
_023122B4:
	cmp r3, #0
	ldr sl, [r2], #4
	ldr r8, [sb], #4
	beq _023122DC
	cmp sl, r8
	movls r3, lr
	sub r8, sl, r8
	movhi r3, ip
	sub sl, r8, #1
	b _023122EC
_023122DC:
	cmp sl, r8
	movlo r3, lr
	movhs r3, r7
	sub sl, sl, r8
_023122EC:
	add r0, r0, #1
	cmp r0, r5
	str sl, [r1], #4
	blt _023122B4
_023122FC:
	cmp r3, #0
	beq _0231232C
	cmp r0, r6
	bge _0231232C
_0231230C:
	ldr r5, [r2], #4
	add r0, r0, #1
	sub r3, r5, #1
	cmp r5, r3
	str r3, [r1], #4
	bhi _0231232C
	cmp r0, r6
	blt _0231230C
_0231232C:
	cmp r1, r2
	beq _0231238C
_02312334:
	cmp r0, r6
	bge _0231238C
	ldr r5, [r2]
	add r3, r0, #1
	str r5, [r1]
	cmp r3, r6
	bge _0231238C
	ldr r5, [r2, #4]
	add r3, r0, #2
	str r5, [r1, #4]
	cmp r3, r6
	bge _0231238C
	ldr r5, [r2, #8]
	add r3, r0, #3
	str r5, [r1, #8]
	cmp r3, r6
	ldrlt r3, [r2, #0xc]
	add r0, r0, #4
	strlt r3, [r1, #0xc]
	addlt r2, r2, #0x10
	addlt r1, r1, #0x10
	blt _02312334
_0231238C:
	mov r0, r4
	str r6, [r4, #4]
	bl FUN_02313730
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	arm_func_end FUN_02312240

	arm_func_start FUN_023123A4
FUN_023123A4: ; 0x023123A4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	mov r4, r1
	mov r8, r2
	ldr r2, [r4, #4]
	ldr r1, [r8, #4]
	mov sb, r0
	cmp r2, r1
	movlt r0, r4
	movlt r4, r8
	movlt r8, r0
	ldr r6, [r4, #4]
	ldr r0, [sb, #8]
	add r1, r6, #1
	cmp r1, r0
	ldr r7, [r8, #4]
	movle r0, sb
	ble _023123F4
	mov r0, sb
	bl FUN_023135AC
_023123F4:
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bxeq lr
	str r6, [sb, #4]
	ldr r5, [r4]
	ldr r4, [sb]
	ldr r2, [r8]
	mov r0, r4
	mov r1, r5
	mov r3, r7
	bl FUN_02312B58
	cmp r0, #0
	add r4, r4, r7, lsl #2
	add r5, r5, r7, lsl #2
	beq _0231248C
	cmp r7, r6
	bge _0231246C
_02312440:
	ldr r2, [r5], #4
	mov r3, r4
	add r1, r2, #1
	str r1, [r4], #4
	ldr r1, [r3]
	add r7, r7, #1
	cmp r1, r2
	movhs r0, #0
	bhs _0231246C
	cmp r7, r6
	blt _02312440
_0231246C:
	cmp r7, r6
	blt _0231248C
	cmp r0, #0
	movne r0, #1
	strne r0, [r4], #4
	ldrne r0, [sb, #4]
	addne r0, r0, #1
	strne r0, [sb, #4]
_0231248C:
	cmp r4, r5
	beq _023124B0
	cmp r7, r6
	bge _023124B0
_0231249C:
	ldr r0, [r5], #4
	add r7, r7, #1
	cmp r7, r6
	str r0, [r4], #4
	blt _0231249C
_023124B0:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	arm_func_end FUN_023123A4

	arm_func_start FUN_023124C0
FUN_023124C0: ; 0x023124C0
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r4, r2
	ldr r2, [r5, #0xc]
	ldr r1, [r4, #0xc]
	mov r6, r0
	eors r0, r2, r1
	beq _02312564
	cmp r2, #0
	movne r0, r5
	movne r5, r4
	movne r4, r0
	mov r0, r5
	mov r1, r4
	bl FUN_02313288
	cmp r0, #0
	bge _02312530
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_02312240
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, lr}
	bxeq lr
	mov r0, #1
	str r0, [r6, #0xc]
	b _02312558
_02312530:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_02312240
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, lr}
	bxeq lr
	mov r0, #0
	str r0, [r6, #0xc]
_02312558:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
_02312564:
	cmp r2, #0
	movne r0, #1
	strne r0, [r6, #0xc]
	moveq r0, #0
	streq r0, [r6, #0xc]
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_023123A4
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	arm_func_end FUN_023124C0

	arm_func_start FUN_0231259C
FUN_0231259C: ; 0x0231259C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	movs r4, r1
	mov r5, r0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, lr}
	bxeq lr
	ldr r2, [r5, #0xc]
	cmp r2, #0
	beq _023125E8
	mov r2, #0
	str r2, [r5, #0xc]
	bl FUN_023126FC
	mov r1, #1
	add sp, sp, #4
	str r1, [r5, #0xc]
	ldmia sp!, {r4, r5, lr}
	bx lr
_023125E8:
	ldr r1, [r5, #4]
	cmp r1, #1
	bgt _0231268C
	cmp r1, #0
	bne _02312644
	ldr r1, [r5, #8]
	cmp r1, #1
	bge _02312610
	mov r1, #1
	bl FUN_023135AC
_02312610:
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, lr}
	bxeq lr
	ldr r1, [r5]
	mov r0, #1
	str r4, [r1]
	str r0, [r5, #0xc]
	add sp, sp, #4
	str r0, [r5, #4]
	ldmia sp!, {r4, r5, lr}
	bx lr
_02312644:
	ldr r2, [r5]
	ldr r1, [r2]
	cmp r1, r4
	moveq r0, #0
	streq r0, [r5, #4]
	beq _0231267C
	cmp r1, r4
	subhi r0, r1, r4
	strhi r0, [r2]
	movls r0, #1
	strls r0, [r5, #0xc]
	ldrls r0, [r5]
	subls r1, r4, r1
	strls r1, [r0]
_0231267C:
	add sp, sp, #4
	mov r0, #1
	ldmia sp!, {r4, r5, lr}
	bx lr
_0231268C:
	mov r0, #0
	mov r1, #1
_02312694:
	ldr ip, [r5]
	mov r3, r0, lsl #2
	ldr r2, [ip, r0, lsl #2]
	cmp r2, r4
	ldrhs r1, [ip, r3]
	subhs r1, r1, r4
	strhs r1, [ip, r3]
	bhs _023126CC
	ldr r2, [ip, r3]
	add r0, r0, #1
	sub r2, r2, r4
	mov r4, r1
	str r2, [ip, r3]
	b _02312694
_023126CC:
	ldr r1, [r5]
	ldr r1, [r1, r3]
	cmp r1, #0
	bne _023126EC
	ldr r1, [r5, #4]
	sub r1, r1, #1
	cmp r0, r1
	streq r1, [r5, #4]
_023126EC:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_0231259C

	arm_func_start FUN_023126FC
FUN_023126FC: ; 0x023126FC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	movs r4, r1
	mov r5, r0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, lr}
	bxeq lr
	ldr r2, [r5, #0xc]
	cmp r2, #0
	beq _023127A4
	ldr r2, [r5, #4]
	cmp r2, #1
	ble _02312754
	mov r2, #0
	str r2, [r5, #0xc]
	bl FUN_0231259C
	mov r1, #1
	add sp, sp, #4
	str r1, [r5, #0xc]
	ldmia sp!, {r4, r5, lr}
	bx lr
_02312754:
	ldr r2, [r5]
	ldr r1, [r2]
	cmp r1, r4
	subhi r0, r1, r4
	strhi r0, [r2]
	bhi _02312794
	cmp r1, r4
	movhs r0, #0
	strhs r0, [r5, #0xc]
	strhs r0, [r5, #4]
	bhs _02312794
	mov r0, #0
	str r0, [r5, #0xc]
	ldr r0, [r5]
	sub r1, r4, r1
	str r1, [r0]
_02312794:
	add sp, sp, #4
	mov r0, #1
	ldmia sp!, {r4, r5, lr}
	bx lr
_023127A4:
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	add r1, r1, #1
	cmp r1, r2
	ble _023127BC
	bl FUN_023135AC
_023127BC:
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, lr}
	bxeq lr
	ldr r1, [r5]
	ldr r0, [r5, #4]
	mov r3, #0
	str r3, [r1, r0, lsl #2]
	mov r0, #1
_023127E4:
	ldr r2, [r5]
	ldr r1, [r2, r3, lsl #2]
	add r1, r4, r1
	cmp r4, r1
	str r1, [r2, r3, lsl #2]
	movhi r4, r0
	addhi r3, r3, #1
	bhi _023127E4
	ldr r0, [r5, #4]
	cmp r3, r0
	addge r0, r0, #1
	strge r0, [r5, #4]
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_023126FC

	arm_func_start FUN_02312824
FUN_02312824: ; 0x02312824
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	mov r1, r2, asr #4
	mov r3, r2, lsr #0x1f
	add r1, r2, r1, lsr #27
	rsb r2, r3, r2, lsl #27
	add r4, r3, r2, ror #27
	ldr r2, [r7, #4]
	mov r6, r1, asr #5
	mov r8, r0
	cmp r6, r2
	rsb r5, r4, #0x20
	ble _0231286C
	mov r1, #0
	bl FUN_0231346C
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
_0231286C:
	cmp r8, r7
	beq _023128A4
	sub r1, r2, r6
	ldr r2, [r8, #8]
	add r1, r1, #2
	cmp r1, r2
	ble _0231288C
	bl FUN_023135AC
_0231288C:
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, lr}
	bxeq lr
	ldr r0, [r7, #0xc]
	str r0, [r8, #0xc]
_023128A4:
	ldr r0, [r7]
	ldr r1, [r7, #4]
	add r2, r0, r6, lsl #2
	ldr r0, [r8]
	sub r7, r1, r6
	mov r6, r2
	str r7, [r8, #4]
	cmp r4, #0
	bne _023128EC
	add r2, r7, #1
	cmp r2, #0
	ble _0231292C
_023128D4:
	ldr r1, [r6], #4
	sub r2, r2, #1
	cmp r2, #0
	str r1, [r0], #4
	bgt _023128D4
	b _0231292C
_023128EC:
	cmp r7, #1
	add r6, r2, #4
	ldr r3, [r2]
	mov r2, #1
	ble _0231291C
_02312900:
	mov r1, r3, lsr r4
	ldr r3, [r6], #4
	add r2, r2, #1
	orr r1, r1, r3, lsl r5
	cmp r2, r7
	str r1, [r0], #4
	blt _02312900
_0231291C:
	mov r1, r3, lsr r4
	str r1, [r0]
	mov r1, #0
	str r1, [r0, #4]
_0231292C:
	mov r0, r8
	bl FUN_02313730
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	arm_func_end FUN_02312824

	arm_func_start FUN_02312940
FUN_02312940: ; 0x02312940
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r4, r1
	mov r7, r2
	mov r1, r7, asr #4
	mov r5, r0
	add r2, r7, r1, lsr #27
	ldr r1, [r4, #4]
	ldr r3, [r5, #8]
	add r1, r1, r2, asr #5
	add r1, r1, #1
	cmp r1, r3
	mov r6, r2, asr #5
	ble _02312978
	bl FUN_023135AC
_02312978:
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxeq lr
	ldr r0, [r4, #0xc]
	mov r1, r7, lsr #0x1f
	str r0, [r5, #0xc]
	ldr r3, [r4, #4]
	rsb r0, r1, r7, lsl #27
	adds ip, r1, r0, ror #27
	ldr r2, [r4]
	ldr r0, [r5]
	add r1, r3, r6
	mov r3, #0
	str r3, [r0, r1, lsl #2]
	rsb r3, ip, #0x20
	bne _023129E0
	ldr r1, [r4, #4]
	subs r7, r1, #1
	bmi _02312A14
_023129C8:
	ldr r3, [r2, r7, lsl #2]
	add r1, r6, r7
	str r3, [r0, r1, lsl #2]
	subs r7, r7, #1
	bpl _023129C8
	b _02312A14
_023129E0:
	ldr r1, [r4, #4]
	subs r1, r1, #1
	bmi _02312A14
_023129EC:
	add sb, r6, r1
	add r8, sb, #1
	ldr sl, [r2, r1, lsl #2]
	ldr lr, [r0, r8, lsl #2]
	mov r7, sl, lsl ip
	orr lr, lr, sl, lsr r3
	str lr, [r0, r8, lsl #2]
	str r7, [r0, sb, lsl #2]
	subs r1, r1, #1
	bpl _023129EC
_02312A14:
	mov r2, r6, lsl #2
	mov r1, #0
	bl FUN_02305584
	ldr r1, [r4, #4]
	mov r0, r5
	add r1, r1, r6
	add r1, r1, #1
	str r1, [r5, #4]
	bl FUN_02313730
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	arm_func_end FUN_02312940

	arm_func_start FUN_02312A44
FUN_02312A44: ; 0x02312A44
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	cmp r3, #0
	movle r0, #0
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxle lr
	mov r6, #0
	mov r4, r6
	mov lr, r6
	mov ip, r6
	mov r7, r6
	mov r5, #1
_02312A70:
	ldr sl, [r1]
	ldr sb, [r2]
	sub r8, sl, sb
	sub r8, r8, r6
	str r8, [r0]
	cmp sl, sb
	beq _02312A98
	cmp sl, sb
	movlo r6, r5
	movhs r6, r4
_02312A98:
	sub r8, r3, #1
	cmp r8, #0
	ble _02312B4C
	ldr sl, [r1, #4]
	ldr sb, [r2, #4]
	sub r8, sl, sb
	sub r8, r8, r6
	str r8, [r0, #4]
	cmp sl, sb
	beq _02312ACC
	cmp sl, sb
	movlo r6, r5
	movhs r6, lr
_02312ACC:
	sub r8, r3, #2
	cmp r8, #0
	ble _02312B4C
	ldr sl, [r1, #8]
	ldr sb, [r2, #8]
	sub r8, sl, sb
	sub r8, r8, r6
	str r8, [r0, #8]
	cmp sl, sb
	beq _02312B00
	cmp sl, sb
	movlo r6, r5
	movhs r6, ip
_02312B00:
	sub r8, r3, #3
	cmp r8, #0
	ble _02312B4C
	ldr sl, [r1, #0xc]
	ldr sb, [r2, #0xc]
	sub r8, sl, sb
	sub r8, r8, r6
	str r8, [r0, #0xc]
	cmp sl, sb
	beq _02312B34
	cmp sl, sb
	movlo r6, r5
	movhs r6, r7
_02312B34:
	sub r3, r3, #4
	cmp r3, #0
	addgt r1, r1, #0x10
	addgt r2, r2, #0x10
	addgt r0, r0, #0x10
	bgt _02312A70
_02312B4C:
	mov r0, r6
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	arm_func_end FUN_02312A44

	arm_func_start FUN_02312B58
FUN_02312B58: ; 0x02312B58
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	cmp r3, #0
	addle sp, sp, #0xc
	movle r0, #0
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxle lr
	mov ip, #0
	mov r7, ip
	mov r6, ip
	mov r5, ip
	mov r4, ip
	mov lr, ip
	mov fp, ip
	str ip, [sp]
	str ip, [sp, #4]
	mov r8, #1
_02312B9C:
	ldr sb, [r1]
	add sl, sb, ip
	ldr sb, [r2]
	cmp sl, ip
	movlo ip, r8
	add sb, sl, sb
	movhs ip, r7
	cmp sb, sl
	movlo sl, r8
	movhs sl, r6
	str sb, [r0]
	sub sb, r3, #1
	add ip, ip, sl
	cmp sb, #0
	ble _02312C98
	ldr sb, [r1, #4]
	ldr sl, [r2, #4]
	add sb, sb, ip
	cmp sb, ip
	movlo ip, r8
	add sl, sb, sl
	movhs ip, r5
	cmp sl, sb
	movlo sb, r8
	movhs sb, r4
	add ip, ip, sb
	sub sb, r3, #2
	str sl, [r0, #4]
	cmp sb, #0
	ble _02312C98
	ldr sb, [r1, #8]
	ldr sl, [r2, #8]
	add sb, sb, ip
	cmp sb, ip
	movlo ip, r8
	add sl, sb, sl
	movhs ip, lr
	cmp sl, sb
	movlo sb, r8
	movhs sb, fp
	add ip, ip, sb
	sub sb, r3, #3
	str sl, [r0, #8]
	cmp sb, #0
	ble _02312C98
	ldr sb, [r1, #0xc]
	ldr sl, [r2, #0xc]
	add sb, sb, ip
	cmp sb, ip
	movlo ip, r8
	add sl, sb, sl
	ldrhs ip, [sp]
	cmp sl, sb
	movlo sb, r8
	ldrhs sb, [sp, #4]
	sub r3, r3, #4
	cmp r3, #0
	str sl, [r0, #0xc]
	add ip, ip, sb
	addgt r1, r1, #0x10
	addgt r2, r2, #0x10
	addgt r0, r0, #0x10
	bgt _02312B9C
_02312C98:
	mov r0, ip
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	arm_func_end FUN_02312B58

	arm_func_start FUN_02312CA8
FUN_02312CA8: ; 0x02312CA8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	cmp r2, #0
	ldmleia sp!, {r4, r5, r6, r7, r8, lr}
	bxle lr
	mov r3, #0x8000
	ldr lr, _02312DF8 ; =0x0000FFFF
	rsb ip, r3, #0
_02312CC4:
	ldr r5, [r1]
	mov r3, #0x8000
	and r4, r5, lr
	and r7, lr, r5, lsr #16
	mul r6, r4, r7
	mul r5, r4, r4
	and r4, r6, lr
	add r8, r5, r4, lsl #17
	rsb r3, r3, #0
	mul r5, r7, r7
	and r3, r6, r3
	add r3, r5, r3, lsr #15
	cmp r8, r4, lsl #17
	addlo r3, r3, #1
	str r8, [r0]
	str r3, [r0, #4]
	subs r3, r2, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, lr}
	bxeq lr
	ldr r4, [r1, #4]
	and r7, lr, r4, lsr #16
	and r3, r4, lr
	mul r6, r3, r7
	mul r4, r3, r3
	and r3, r6, lr
	add r8, r4, r3, lsl #17
	mul r5, r7, r7
	and r4, r6, ip
	cmp r8, r3, lsl #17
	add r3, r5, r4, lsr #15
	addlo r3, r3, #1
	str r8, [r0, #8]
	str r3, [r0, #0xc]
	subs r3, r2, #2
	ldmeqia sp!, {r4, r5, r6, r7, r8, lr}
	bxeq lr
	ldr r5, [r1, #8]
	mov r3, #0x8000
	and r4, r5, lr
	and r7, lr, r5, lsr #16
	mul r6, r4, r7
	mul r5, r4, r4
	and r4, r6, lr
	add r8, r5, r4, lsl #17
	rsb r3, r3, #0
	mul r5, r7, r7
	and r3, r6, r3
	add r3, r5, r3, lsr #15
	cmp r8, r4, lsl #17
	addlo r3, r3, #1
	str r8, [r0, #0x10]
	str r3, [r0, #0x14]
	subs r3, r2, #3
	ldmeqia sp!, {r4, r5, r6, r7, r8, lr}
	bxeq lr
	ldr r5, [r1, #0xc]
	mov r3, #0x8000
	and r4, r5, lr
	and r7, lr, r5, lsr #16
	mul r6, r4, r7
	mul r5, r4, r4
	and r4, r6, lr
	add r8, r5, r4, lsl #17
	rsb r3, r3, #0
	mul r5, r7, r7
	and r3, r6, r3
	add r3, r5, r3, lsr #15
	cmp r8, r4, lsl #17
	addlo r3, r3, #1
	str r8, [r0, #0x18]
	subs r2, r2, #4
	str r3, [r0, #0x1c]
	addne r1, r1, #0x10
	addne r0, r0, #0x20
	bne _02312CC4
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_02312DF8: .word 0x0000FFFF
	arm_func_end FUN_02312CA8

	arm_func_start FUN_02312DFC
FUN_02312DFC: ; 0x02312DFC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	cmp r2, #0
	mov r4, #0
	addle sp, sp, #4
	movle r0, r4
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bxle lr
	ldr r5, _02312F98 ; =0x0000FFFF
	and lr, r3, r5
	and ip, r5, r3, lsr #16
_02312E28:
	ldr r3, [r1]
	and r7, r5, r3, lsr #16
	mul r6, lr, r7
	and r3, r3, r5
	mla sb, ip, r3, r6
	mul r8, r3, lr
	mul r3, r7, ip
	cmp sb, r6
	and r6, sb, r5
	addlo r3, r3, #0x10000
	and r7, r5, sb, lsr #16
	add r8, r8, r6, lsl #16
	cmp r8, r6, lsl #16
	add r3, r3, r7
	add r6, r8, r4
	addlo r3, r3, #1
	cmp r6, r4
	addlo r3, r3, #1
	str r6, [r0]
	mov r4, r3
	subs r6, r2, #1
	beq _02312F88
	ldr r4, [r1, #4]
	and r7, r5, r4, lsr #16
	mul r6, lr, r7
	and r4, r4, r5
	mla sb, ip, r4, r6
	mul r8, r4, lr
	mul r4, r7, ip
	cmp sb, r6
	and r6, sb, r5
	addlo r4, r4, #0x10000
	and r7, r5, sb, lsr #16
	add r8, r8, r6, lsl #16
	cmp r8, r6, lsl #16
	add r4, r4, r7
	add r6, r8, r3
	addlo r4, r4, #1
	cmp r6, r3
	addlo r4, r4, #1
	str r6, [r0, #4]
	subs r3, r2, #2
	beq _02312F88
	ldr r3, [r1, #8]
	and r7, r5, r3, lsr #16
	mul r6, lr, r7
	and r3, r3, r5
	mla sb, ip, r3, r6
	mul r8, r3, lr
	mul r3, r7, ip
	cmp sb, r6
	and r6, sb, r5
	addlo r3, r3, #0x10000
	and r7, r5, sb, lsr #16
	add r8, r8, r6, lsl #16
	cmp r8, r6, lsl #16
	add r3, r3, r7
	add r6, r8, r4
	addlo r3, r3, #1
	cmp r6, r4
	addlo r3, r3, #1
	str r6, [r0, #8]
	mov r4, r3
	subs r6, r2, #3
	beq _02312F88
	ldr r4, [r1, #0xc]
	and r7, r5, r4, lsr #16
	mul r6, lr, r7
	and r4, r4, r5
	mla sb, ip, r4, r6
	mul r8, r4, lr
	mul r4, r7, ip
	cmp sb, r6
	and r6, sb, r5
	addlo r4, r4, #0x10000
	and r7, r5, sb, lsr #16
	add r8, r8, r6, lsl #16
	cmp r8, r6, lsl #16
	add r4, r4, r7
	add r6, r8, r3
	addlo r4, r4, #1
	cmp r6, r3
	addlo r4, r4, #1
	subs r2, r2, #4
	str r6, [r0, #0xc]
	addne r1, r1, #0x10
	addne r0, r0, #0x10
	bne _02312E28
_02312F88:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	.align 2, 0
_02312F98: .word 0x0000FFFF
	arm_func_end FUN_02312DFC

	arm_func_start FUN_02312F9C
FUN_02312F9C: ; 0x02312F9C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	cmp r2, #0
	mov ip, #0
	addle sp, sp, #4
	movle r0, ip
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bxle lr
	ldr r5, _02313178 ; =0x0000FFFF
	and r4, r3, r5
	and lr, r5, r3, lsr #16
_02312FC8:
	ldr r3, [r1]
	and r7, r5, r3, lsr #16
	mul r6, r4, r7
	and r3, r3, r5
	mla sb, lr, r3, r6
	mul r8, r3, r4
	mul r3, r7, lr
	cmp sb, r6
	and r6, sb, r5
	addlo r3, r3, #0x10000
	and r7, r5, sb, lsr #16
	add r8, r8, r6, lsl #16
	cmp r8, r6, lsl #16
	add r3, r3, r7
	ldr r6, [r0]
	addlo r3, r3, #1
	add r7, r8, ip
	cmp r7, ip
	add r7, r7, r6
	addlo r3, r3, #1
	cmp r7, r6
	addlo r3, r3, #1
	mov ip, r3
	str r7, [r0]
	subs r6, r2, #1
	beq _02313168
	ldr ip, [r1, #4]
	and r7, r5, ip, lsr #16
	mul r6, r4, r7
	and ip, ip, r5
	mla sb, lr, ip, r6
	mul r8, ip, r4
	mul ip, r7, lr
	cmp sb, r6
	and r6, sb, r5
	addlo ip, ip, #0x10000
	and r7, r5, sb, lsr #16
	add r8, r8, r6, lsl #16
	cmp r8, r6, lsl #16
	add ip, ip, r7
	add r6, r8, r3
	addlo ip, ip, #1
	cmp r6, r3
	ldr r3, [r0, #4]
	addlo ip, ip, #1
	add r6, r6, r3
	cmp r6, r3
	addlo ip, ip, #1
	str r6, [r0, #4]
	subs r3, r2, #2
	beq _02313168
	ldr r3, [r1, #8]
	and r7, r5, r3, lsr #16
	mul r6, r4, r7
	and r3, r3, r5
	mla sb, lr, r3, r6
	mul r8, r3, r4
	mul r3, r7, lr
	cmp sb, r6
	and r6, sb, r5
	addlo r3, r3, #0x10000
	and r7, r5, sb, lsr #16
	add r8, r8, r6, lsl #16
	cmp r8, r6, lsl #16
	add r3, r3, r7
	ldr r6, [r0, #8]
	addlo r3, r3, #1
	add r7, r8, ip
	cmp r7, ip
	add r7, r7, r6
	addlo r3, r3, #1
	cmp r7, r6
	addlo r3, r3, #1
	mov ip, r3
	str r7, [r0, #8]
	subs r6, r2, #3
	beq _02313168
	ldr ip, [r1, #0xc]
	and r7, r5, ip, lsr #16
	mul r6, r4, r7
	and ip, ip, r5
	mla sb, lr, ip, r6
	mul r8, ip, r4
	mul ip, r7, lr
	cmp sb, r6
	and r6, sb, r5
	addlo ip, ip, #0x10000
	and r7, r5, sb, lsr #16
	add r8, r8, r6, lsl #16
	cmp r8, r6, lsl #16
	add ip, ip, r7
	add r6, r8, r3
	addlo ip, ip, #1
	cmp r6, r3
	ldr r3, [r0, #0xc]
	addlo ip, ip, #1
	add r6, r6, r3
	cmp r6, r3
	addlo ip, ip, #1
	subs r2, r2, #4
	str r6, [r0, #0xc]
	addne r1, r1, #0x10
	addne r0, r0, #0x10
	bne _02312FC8
_02313168:
	mov r0, ip
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	.align 2, 0
_02313178: .word 0x0000FFFF
	arm_func_end FUN_02312F9C

	arm_func_start FUN_0231317C
FUN_0231317C: ; 0x0231317C
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r1, #0
	addlt sp, sp, #4
	movlt r0, #0
	ldmltia sp!, {lr}
	bxlt lr
	mov r2, r1, asr #4
	add r2, r1, r2, lsr #27
	mov r3, r1, lsr #0x1f
	ldr ip, [r0, #4]
	mov lr, r2, asr #5
	cmp ip, lr
	rsb r1, r3, r1, lsl #27
	addle sp, sp, #4
	add r2, r3, r1, ror #27
	movle r0, #0
	ldmleia sp!, {lr}
	bxle lr
	ldr r1, [r0]
	mov r0, #1
	mov r2, r0, lsl r2
	ldr r1, [r1, lr, lsl #2]
	ands r1, r2, r1
	moveq r0, #0
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_0231317C

	arm_func_start FUN_023131EC
FUN_023131EC: ; 0x023131EC
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r2, r1, asr #4
	add r2, r1, r2, lsr #27
	mov r3, r1, lsr #0x1f
	rsb r1, r3, r1, lsl #27
	ldr r4, [r6, #4]
	mov r5, r2, asr #5
	cmp r4, r5
	add r4, r3, r1, ror #27
	bgt _0231326C
	ldr r2, [r6, #8]
	add r1, r5, #1
	cmp r1, r2
	ble _0231322C
	bl FUN_023135AC
_0231322C:
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, lr}
	bxeq lr
	ldr r3, [r6, #4]
	add r2, r5, #1
	cmp r3, r2
	bge _02313264
	mov r1, #0
_02313250:
	ldr r0, [r6]
	str r1, [r0, r3, lsl #2]
	add r3, r3, #1
	cmp r3, r2
	blt _02313250
_02313264:
	add r0, r5, #1
	str r0, [r6, #4]
_0231326C:
	ldr r2, [r6]
	mov r0, #1
	ldr r1, [r2, r5, lsl #2]
	orr r1, r1, r0, lsl r4
	str r1, [r2, r5, lsl #2]
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	arm_func_end FUN_023131EC

	arm_func_start FUN_02313288
FUN_02313288: ; 0x02313288
	ldr r3, [r0, #4]
	ldr r2, [r1, #4]
	subs r2, r3, r2
	movne r0, r2
	bxne lr
	subs r2, r3, #1
	ldr ip, [r0]
	ldr r3, [r1]
	bmi _023132D4
_023132AC:
	ldr r1, [ip, r2, lsl #2]
	ldr r0, [r3, r2, lsl #2]
	cmp r1, r0
	beq _023132CC
	cmp r1, r0
	movhi r0, #1
	mvnls r0, #0
	bx lr
_023132CC:
	subs r2, r2, #1
	bpl _023132AC
_023132D4:
	mov r0, #0
	bx lr
	arm_func_end FUN_02313288

	arm_func_start FUN_023132DC
FUN_023132DC: ; 0x023132DC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	bl FUN_02313878
	add r1, r0, #7
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r0, r0, asr #3
	cmp r0, #0
	addle sp, sp, #4
	sub ip, r0, #1
	ldmleia sp!, {r4, r5, lr}
	bxle lr
_02313314:
	mov r3, ip, lsr #0x1f
	mov r1, ip, asr #1
	rsb r2, r3, ip, lsl #30
	add r1, ip, r1, lsr #30
	add r2, r3, r2, ror #30
	ldr r3, [r5]
	mov r1, r1, asr #2
	ldr r3, [r3, r1, lsl #2]
	mov r1, r2, lsl #3
	mov r1, r3, lsr r1
	cmp ip, #0
	strb r1, [r4], #1
	sub ip, ip, #1
	bgt _02313314
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_023132DC

	arm_func_start FUN_02313358
FUN_02313358: ; 0x02313358
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	movs r5, r2
	mov r7, r0
	mov r6, r1
	bne _02313378
	bl FUN_023136D0
	mov r5, r0
_02313378:
	cmp r5, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	cmp r6, #0
	mov r4, #0
	addeq sp, sp, #4
	moveq r0, r5
	streq r4, [r5, #4]
	ldmeqia sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	add r0, r6, #2
	mov r2, r0, lsl #3
	add r1, r2, #0x1f
	mov r0, r1, asr #4
	add r0, r1, r0, lsr #27
	ldr r1, [r5, #8]
	mov r0, r0, asr #5
	cmp r0, r1
	movle r0, r5
	ble _023133E8
	mov r0, r2, asr #4
	add r0, r2, r0, lsr #27
	mov r1, r0, asr #5
	mov r0, r5
	add r1, r1, #1
	bl FUN_023135AC
_023133E8:
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	sub r0, r6, #1
	mov r1, r0, lsr #2
	add ip, r1, #1
	cmp r6, #0
	str ip, [r5, #4]
	and r3, r0, #3
	sub r6, r6, #1
	beq _02313454
	mov r1, #0
	mov r0, #3
_02313424:
	ldrb r2, [r7], #1
	cmp r3, #0
	sub r3, r3, #1
	orr r4, r2, r4, lsl #8
	ldreq r2, [r5]
	subeq ip, ip, #1
	streq r4, [r2, ip, lsl #2]
	moveq r4, r1
	moveq r3, r0
	cmp r6, #0
	sub r6, r6, #1
	bne _02313424
_02313454:
	mov r0, r5
	bl FUN_02313730
	mov r0, r5
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end FUN_02313358

	arm_func_start FUN_0231346C
FUN_0231346C: ; 0x0231346C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r2, [r4, #8]
	mov r5, r1
	cmp r2, #1
	bge _02313490
	mov r1, #2
	bl FUN_023135AC
_02313490:
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, lr}
	bxeq lr
	mov r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #4]
	ldr r0, [r4]
	str r5, [r0]
	ldr r0, [r4]
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	strne r0, [r4, #4]
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_0231346C

	arm_func_start FUN_023134DC
FUN_023134DC: ; 0x023134DC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _02313500
	ldr r2, [r4, #8]
	mov r1, #0
	mov r2, r2, lsl #2
	bl FUN_02305584
_02313500:
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #0xc]
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_023134DC

	arm_func_start FUN_02313514
FUN_02313514: ; 0x02313514
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	cmp r5, r4
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, lr}
	bxeq lr
	ldr r1, [r4, #4]
	ldr r2, [r5, #8]
	cmp r1, r2
	ble _02313548
	bl FUN_023135AC
_02313548:
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, lr}
	bxeq lr
	ldr r2, [r4, #4]
	ldr r0, [r4]
	ldr r1, [r5]
	mov r2, r2, lsl #2
	bl FUN_02305618
	ldr r0, [r4, #4]
	str r0, [r5, #4]
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _02313594
	ldr r1, [r5]
	cmp r1, #0
	movne r0, #0
	strne r0, [r1]
_02313594:
	ldr r1, [r4, #0xc]
	mov r0, r5
	str r1, [r5, #0xc]
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_02313514

	arm_func_start FUN_023135AC
FUN_023135AC: ; 0x023135AC
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	mov r4, r1
	cmp r4, r0
	ble _02313620
	ldr r0, [r5, #0x10]
	ands r0, r0, #2
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, lr}
	bxne lr
	add r0, r4, #1
	mov r0, r0, lsl #2
	bl FUN_0230F7D8
	movs r6, r0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, lr}
	bxeq lr
	ldr r0, [r5]
	cmp r0, #0
	beq _02313618
	ldr r2, [r5, #4]
	mov r1, r6
	mov r2, r2, lsl #2
	bl FUN_02305618
	ldr r0, [r5]
	bl FUN_0230F790
_02313618:
	str r6, [r5]
	str r4, [r5, #8]
_02313620:
	mov r0, r5
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	arm_func_end FUN_023135AC

	arm_func_start FUN_0231362C
FUN_0231362C: ; 0x0231362C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	add r4, r6, #4
	mov r5, #0
_0231363C:
	mov r0, r4
	bl FUN_02313854
	add r5, r5, #1
	cmp r5, #0xc
	add r4, r4, #0x14
	blt _0231363C
	ldr r0, [r6, #0x108]
	ands r0, r0, #1
	ldmeqia sp!, {r4, r5, r6, lr}
	bxeq lr
	mov r0, r6
	bl FUN_0230F790
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	arm_func_end FUN_0231362C

	arm_func_start FUN_02313674
FUN_02313674: ; 0x02313674
	stmdb sp!, {r4, lr}
	mov r1, #0
	mov r2, #0x110
	mov r4, r0
	bl FUN_02305584
	mov r0, #0
	str r0, [r4]
	str r0, [r4, #0x108]
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_02313674

	arm_func_start FUN_0231369C
FUN_0231369C: ; 0x0231369C
	stmdb sp!, {r4, lr}
	mov r0, #0x110
	bl FUN_0230F7D8
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, lr}
	bxeq lr
	bl FUN_02313674
	mov r1, #1
	mov r0, r4
	str r1, [r4, #0x108]
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_0231369C

	arm_func_start FUN_023136D0
FUN_023136D0: ; 0x023136D0
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r0, #0x14
	bl FUN_0230F7D8
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {lr}
	bxeq lr
	mov r1, #1
	str r1, [r0, #0x10]
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #0xc]
	str r1, [r0, #8]
	str r1, [r0]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_023136D0

	arm_func_start FUN_0231371C
FUN_0231371C: ; 0x0231371C
	ldr ip, _0231372C ; =FUN_02305584
	mov r1, #0
	mov r2, #0x14
	bx ip
	.align 2, 0
_0231372C: .word FUN_02305584
	arm_func_end FUN_0231371C

	arm_func_start FUN_02313730
FUN_02313730: ; 0x02313730
	ldr r3, [r0, #4]
	cmp r3, #0
	bxle lr
	ldr r2, [r0]
	sub r1, r3, #1
	cmp r3, #0
	add r3, r2, r1, lsl #2
	bxle lr
	add r2, r0, #4
_02313754:
	ldr r1, [r3], #-4
	cmp r1, #0
	bxne lr
	ldr r1, [r2]
	sub r1, r1, #1
	str r1, [r2]
	ldr r1, [r0, #4]
	cmp r1, #0
	bgt _02313754
	bx lr
	arm_func_end FUN_02313730

	arm_func_start FUN_0231377C
FUN_0231377C: ; 0x0231377C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r2, [r5, #4]
	mov r4, r1
	cmp r2, r4
	addge sp, sp, #4
	ldmgeia sp!, {r4, r5, lr}
	bxge lr
	ldr r2, [r5, #8]
	cmp r4, r2
	ble _023137B0
	bl FUN_023135AC
_023137B0:
	ldr r0, [r5]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, lr}
	bxeq lr
	ldr r2, [r5, #4]
	cmp r2, r4
	addge sp, sp, #4
	ldmgeia sp!, {r4, r5, lr}
	bxge lr
	mov r1, #0
_023137DC:
	ldr r0, [r5]
	str r1, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r2, r4
	blt _023137DC
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_0231377C

	arm_func_start FUN_023137FC
FUN_023137FC: ; 0x023137FC
	stmdb sp!, {r4, lr}
	movs r4, r0
	ldmeqia sp!, {r4, lr}
	bxeq lr
	ldr r0, [r4]
	cmp r0, #0
	beq _02313828
	ldr r1, [r4, #0x10]
	ands r1, r1, #2
	bne _02313828
	bl FUN_0230F790
_02313828:
	ldr r0, [r4, #0x10]
	orr r0, r0, #0x8000
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x10]
	ands r0, r0, #1
	ldmeqia sp!, {r4, lr}
	bxeq lr
	mov r0, r4
	bl FUN_0230F790
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_023137FC

	arm_func_start FUN_02313854
FUN_02313854: ; 0x02313854
	stmdb sp!, {r4, lr}
	movs r4, r0
	ldmeqia sp!, {r4, lr}
	bxeq lr
	bl FUN_023134DC
	mov r0, r4
	bl FUN_023137FC
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_02313854

	arm_func_start FUN_02313878
FUN_02313878: ; 0x02313878
	stmdb sp!, {r4, lr}
	ldr r1, [r0, #4]
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r4, lr}
	bxeq lr
	ldr r0, [r0]
	sub r4, r1, #1
	ldr r0, [r0, r4, lsl #2]
	bl FUN_023138AC
	add r0, r0, r4, lsl #5
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_02313878

	arm_func_start FUN_023138AC
FUN_023138AC: ; 0x023138AC
	mov r1, #0x10000
	rsb r1, r1, #0
	ands r1, r0, r1
	beq _023138CC
	ands r1, r0, #0xff000000
	movne r2, #0x18
	moveq r2, #0x10
	b _023138D8
_023138CC:
	ands r1, r0, #0xff00
	movne r2, #8
	moveq r2, #0
_023138D8:
	mov r1, r0, lsr r2
	ands r0, r1, #0xf0
	ldreq r0, _02313908 ; =_02314278
	ldreqsb r0, [r0, r1]
	addeq r0, r0, r2
	bxeq lr
	ldr r0, _02313908 ; =_02314278
	mov r1, r1, lsr #4
	ldrsb r0, [r0, r1]
	add r0, r0, r2
	add r0, r0, #4
	bx lr
	.align 2, 0
_02313908: .word _02314278
	arm_func_end FUN_023138AC

	arm_func_start _s32_div_f
_s32_div_f: ; 0x0231390C
	eor ip, r0, r1
	and ip, ip, #0x80000000
	cmp r0, #0
	rsblt r0, r0, #0
	addlt ip, ip, #1
	cmp r1, #0
	rsblt r1, r1, #0
	beq _02313B04
	cmp r0, r1
	movlo r1, r0
	movlo r0, #0
	blo _02313B04
	mov r2, #0x1c
	mov r3, r0, lsr #4
	cmp r1, r3, lsr #12
	suble r2, r2, #0x10
	movle r3, r3, lsr #0x10
	cmp r1, r3, lsr #4
	suble r2, r2, #8
	movle r3, r3, lsr #8
	cmp r1, r3
	suble r2, r2, #4
	movle r3, r3, lsr #4
	mov r0, r0, lsl r2
	rsb r1, r1, #0
	adds r0, r0, r0
	add r2, r2, r2, lsl #1
	add pc, pc, r2, lsl #2
	nop
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	mov r1, r3
_02313B04:
	ands r3, ip, #0x80000000
	rsbne r0, r0, #0
	ands r3, ip, #1
	rsbne r1, r1, #0
	bx lr
	arm_func_end _s32_div_f

	arm_func_start _u32_div_f
	arm_func_start _u32_div_not_0_f
_u32_div_f: ; 0x02313B18
	cmp r1, #0
	bxeq lr
_u32_div_not_0_f:
	cmp r0, r1
	movlo r1, r0
	movlo r0, #0
	bxlo lr
	mov r2, #0x1c
	mov r3, r0, lsr #4
	cmp r1, r3, lsr #12
	suble r2, r2, #0x10
	movle r3, r3, lsr #0x10
	cmp r1, r3, lsr #4
	suble r2, r2, #8
	movle r3, r3, lsr #8
	cmp r1, r3
	suble r2, r2, #4
	movle r3, r3, lsr #4
	mov r0, r0, lsl r2
	rsb r1, r1, #0
	adds r0, r0, r0
	add r2, r2, r2, lsl #1
	add pc, pc, r2, lsl #2
	nop
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	mov r1, r3
	bx lr
	arm_func_end _u32_div_f

	.rodata
_02314254:
	.byte 0x00, 0x08, 0x01, 0x01, 0x01, 0x10, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00

_02314260:
	.byte 0x00, 0x08, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00

_0231426C:
	.byte 0x00, 0x08, 0x01, 0x01
	.byte 0x01, 0x04, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00

_02314278:
	.byte 0x00, 0x01, 0x02, 0x02, 0x03, 0x03, 0x03, 0x03
	.byte 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04

_02314288:
	.byte 0x06, 0x00, 0x01, 0x00, 0x02, 0x00, 0x01, 0x00
	.byte 0x03, 0x00, 0x01, 0x00, 0x02, 0x00, 0x01, 0x00, 0x04, 0x00, 0x01, 0x00, 0x02, 0x00, 0x01, 0x00
	.byte 0x03, 0x00, 0x01, 0x00, 0x02, 0x00, 0x01, 0x00

_023142A8:
	.byte 0x05, 0x00, 0x01, 0x00, 0x02, 0x00, 0x01, 0x00
	.byte 0x03, 0x00, 0x01, 0x00, 0x02, 0x00, 0x01, 0x00

_023142B8:
	.byte 0x04, 0x00, 0x01, 0x00, 0x02, 0x00, 0x01, 0x00

_023142C0:
	.byte 0x03, 0x00, 0x01, 0x00

_023142C4:
	.byte 0x02, 0x00

_023142C6:
	.byte 0x01

_023142C7:
	.byte 0x00

	.data
_0231CF64:
	.word _023142C7
	.word _023142C6
	.word _023142C4
	.word _023142C0
	.word _023142B8
	.word _023142A8
	.word _02314288

	.bss
	.global _0234DD10
_0234DD10:
	.space 0x4

_0234DD14:
	.space 0x4
