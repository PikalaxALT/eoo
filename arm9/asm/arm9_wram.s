	.include "asm/macros.inc"
	.include "global.inc"

	.text

	arm_func_start FUN_0237D000
FUN_0237D000: ; 0x0237D000
	stmdb sp!, {r3, lr}
	ldr ip, _0237D04C ; =0x023FE840
	ldr r2, _0237D050 ; =0x027FFE34
	ldr r0, [ip, #4]
	sub r3, r2, #0x1f4
	str r0, [r2]
	ldr r1, [ip]
	sub r0, ip, #0x40
	str r1, [r2, #-0x10]
	mov ip, #2
	add r1, r3, #2
	mov r2, #0x3c
	strh ip, [r3]
	bl FUN_02305618
	mov r0, #1
	mov r1, r0
	mov r2, #0
	bl FUN_02305930
	ldmia sp!, {r3, pc}
	.align 2, 0
_0237D04C: .word 0x023FE840
_0237D050: .word 0x027FFE34
	arm_func_end FUN_0237D000

	arm_func_start FUN_0237D054
FUN_0237D054: ; 0x0237D054
	bx lr
	arm_func_end FUN_0237D054

	arm_func_start FUN_0237D058
FUN_0237D058: ; 0x0237D058
	add ip, r1, r2
_0237D05C:
	cmp r1, ip
	stmltia r1!, {r0}
	blt _0237D05C
	bx lr
	arm_func_end FUN_0237D058

	arm_func_start FUN_0237D06C
FUN_0237D06C: ; 0x0237D06C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl OS_DisableInterrupts
	mov r1, #6
	mul r1, r4, r1
	add r1, r1, #5
	mov r1, r1, lsl #1
	add r1, r1, #0x4000000
	ldrh r2, [r1, #0xb0]
	bic r2, r2, #0x3a00
	strh r2, [r1, #0xb0]
	ldrh r2, [r1, #0xb0]
	bic r2, r2, #0x8000
	strh r2, [r1, #0xb0]
	ldrh r2, [r1, #0xb0]
	ldrh r1, [r1, #0xb0]
	bl OS_RestoreInterrupts
	ldmia sp!, {r4, pc}
	arm_func_end FUN_0237D06C

	arm_func_start FUN_0237D0B4
FUN_0237D0B4: ; 0x0237D0B4
	stmdb sp!, {r3, r4, r5, lr}
	ldr r5, _0237D0F8 ; =0x04000180
	ldrh r0, [r5]
	and r0, r0, #0xf
	cmp r0, #1
	beq _0237D0E8
	mov r4, #1
_0237D0D0:
	mov r0, r4
	bl SVC_WaitByLoop
	ldrh r0, [r5]
	and r0, r0, #0xf
	cmp r0, #1
	bne _0237D0D0
_0237D0E8:
	ldr r0, _0237D0F8 ; =0x04000180
	mov r1, #0x100
	strh r1, [r0]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0237D0F8: .word 0x04000180
	arm_func_end FUN_0237D0B4

	arm_func_start FUN_0237D0FC
FUN_0237D0FC: ; 0x0237D0FC
	stmdb sp!, {r3, lr}
	ldr r1, _0237D144 ; =0x04000102
	mov r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	strh r0, [r1, #8]
	strh r0, [r1, #0xc]
	bl FUN_0237D06C
	mov r0, #1
	bl FUN_0237D06C
	mov r0, #2
	bl FUN_0237D06C
	mov r0, #3
	bl FUN_0237D06C
	ldr r0, _0237D148 ; =0x04000184
	mov r1, #0
	strh r1, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0237D144: .word 0x04000102
_0237D148: .word 0x04000184
	arm_func_end FUN_0237D0FC

	arm_func_start FUN_0237D14C
FUN_0237D14C: ; 0x0237D14C
	stmdb sp!, {r4, lr}
	ldr r0, _0237D194 ; =0x023FE840
	ldr r4, [r0]
	cmp r4, #0
	beq _0237D18C
	bl FUN_0237D0B4
	bl FUN_0237D0FC
	mov r0, #0
	mov r1, #0x5000000
	mov r2, #0x400
	bl FUN_0237D058
	mov r0, #0x200
	mov r1, #0x7000000
	mov r2, #0x400
	bl FUN_0237D058
	blx r4
_0237D18C:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_0237D194: .word 0x023FE840
	arm_func_end FUN_0237D14C
