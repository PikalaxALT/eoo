	.include "asm/macros.inc"
	.include "global.inc"

	.text

	arm_func_start FUN_0237E000
FUN_0237E000: ; 0x0237E000
	add ip, r1, r2
_0237E004:
	cmp r1, ip
	ldmltia r0!, {r2}
	stmltia r1!, {r2}
	blt _0237E004
	bx lr
	arm_func_end FUN_0237E000

	arm_func_start FUN_0237E018
FUN_0237E018: ; 0x0237E018
	add ip, r1, r2
_0237E01C:
	cmp r1, ip
	stmltia r1!, {r0}
	blt _0237E01C
	bx lr
	arm_func_end FUN_0237E018

	arm_func_start FUN_0237E02C
FUN_0237E02C: ; 0x0237E02C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r1
	cmp r0, #0
	beq _0237E08C
	mov r6, #0
	add r5, r0, #0xc
	mov r4, r6
_0237E048:
	add r7, r5, r6, lsl #4
	ldr r0, [r7, #0xc]
	mov r0, r0, lsl #0x1f
	cmp r8, r0, lsr #31
	bne _0237E080
	ldmia r7, {r0, r1}
	cmp r0, r1
	beq _0237E080
	ldr r2, [r7, #8]
	bl FUN_0237E000
	ldr r1, [r7]
	ldr r2, [r7, #8]
	mov r0, r4
	bl FUN_0237E018
_0237E080:
	add r6, r6, #1
	cmp r6, #3
	blt _0237E048
_0237E08C:
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	arm_func_end FUN_0237E02C

	arm_func_start FUN_0237E094
FUN_0237E094: ; 0x0237E094
	stmdb sp!, {r3, lr}
	cmp r0, #1
	cmpeq r1, #1
	bne _0237E0BC
	ldr r0, _0237E0C4 ; =0x0237E240
	ldr r0, [r0]
	cmp r0, #0
	beq _0237E0BC
	mov lr, pc
	bx r0
_0237E0BC:
	ldmia sp!, {r3, lr}
	bx lr
	.align 2, 0
_0237E0C4: .word 0x0237E240
	arm_func_end FUN_0237E094

	arm_func_start FUN_0237E0C8
FUN_0237E0C8: ; 0x0237E0C8
	stmdb sp!, {r3, lr}
	ldr r0, _0237E0FC ; =0x027FFC40
	ldrh r0, [r0]
	cmp r0, #2
	bne _0237E0F4
	ldr r0, _0237E100 ; =0x023FE840
	mov r1, #0
	bl FUN_0237E02C
	ldr r0, _0237E100 ; =0x023FE840
	mov r1, #1
	bl FUN_0237E02C
_0237E0F4:
	ldmia sp!, {r3, lr}
	bx lr
	.align 2, 0
_0237E0FC: .word 0x027FFC40
_0237E100: .word 0x023FE840
	arm_func_end FUN_0237E0C8

	arm_func_start FUN_0237E104
FUN_0237E104: ; 0x0237E104
	ldr r1, _0237E130 ; =0x0237E240
	ldr r2, _0237E134 ; =0x027FFC40
	str r0, [r1]
	ldrh r0, [r2]
	ldr ip, _0237E138 ; =0x037FB3A8
	cmp r0, #2
	movne r0, #1
	strneh r0, [r2]
	ldr r1, _0237E13C ; =FUN_0237E094
	mov r0, #1
	bx ip
	.align 2, 0
_0237E130: .word 0x0237E240
_0237E134: .word 0x027FFC40
_0237E138: .word 0x037FB3A8
_0237E13C: .word FUN_0237E094
	arm_func_end FUN_0237E104

	arm_func_start FUN_0237E140
FUN_0237E140: ; 0x0237E140
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl FUN_037FAD78
	mov r1, #6
	mul r1, r4, r1
	add r1, r1, #5
	mov r1, r1, lsl #1
	add r1, r1, #0x4000000
	ldrh r2, [r1, #0xb0]
	bic r2, r2, #0x3200
	strh r2, [r1, #0xb0]
	ldrh r2, [r1, #0xb0]
	bic r2, r2, #0x8000
	strh r2, [r1, #0xb0]
	ldrh r2, [r1, #0xb0]
	ldrh r1, [r1, #0xb0]
	bl FUN_037FAD8C
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_0237E140

	arm_func_start FUN_0237E18C
FUN_0237E18C: ; 0x0237E18C
	stmdb sp!, {r4, r5, r6, lr}
	ldr r0, _0237E230 ; =0x023FE840
	ldr r4, [r0, #4]
	cmp r4, #0
	beq _0237E224
	ldr r6, _0237E234 ; =0x04000180
	mov r0, #0x100
	strh r0, [r6]
	mov r5, #1
	b _0237E1BC
_0237E1B4:
	mov r0, r5
	bl FUN_037F8BD0
_0237E1BC:
	ldrh r0, [r6]
	and r0, r0, #0xf
	cmp r0, #1
	bne _0237E1B4
	ldr r1, _0237E238 ; =0x04000102
	mov r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	strh r0, [r1, #8]
	strh r0, [r1, #0xc]
	bl FUN_0237E140
	mov r0, #1
	bl FUN_0237E140
	mov r0, #2
	bl FUN_0237E140
	mov r0, #3
	bl FUN_0237E140
	ldr r0, _0237E23C ; =0x04000184
	mov r1, #0
	strh r1, [r0]
	strh r1, [r0, #0x3c]
	strh r1, [r0, #-0x50]
	strh r1, [r0, #-0x4e]
	strh r1, [r0, #-0x4c]
	mov lr, pc
	bx r4
_0237E224:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_0237E230: .word 0x023FE840
_0237E234: .word 0x04000180
_0237E238: .word 0x04000102
_0237E23C: .word 0x04000184

	.bss
	.space 4
