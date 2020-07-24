	.include "asm/macros.inc"
	.include "global.inc"

	.text

	arm_func_start FUN_037FCC6C
FUN_037FCC6C: ; 0x037FCC6C
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _037FCCA0 ; =0x04000304
	ldrh r0, [r1]
	bic r0, r0, #2
	strh r0, [r1]
	mov r0, #1
	bl FUN_037FE760
	mov r0, #1
	bl FUN_037FE3D4
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_037FCCA0: .word 0x04000304
	arm_func_end FUN_037FCC6C

	arm_func_start FUN_037FCCA4
FUN_037FCCA4: ; 0x037FCCA4
	ldr r1, _037FCCDC ; =0x55555555
	and r1, r1, r0, lsr #1
	sub r2, r0, r1
	ldr r0, _037FCCE0 ; =0x33333333
	and r1, r2, r0
	and r0, r0, r2, lsr #2
	add r0, r1, r0
	add r1, r0, r0, lsr #4
	ldr r0, _037FCCE4 ; =0x0F0F0F0F
	and r0, r1, r0
	add r0, r0, r0, lsr #8
	add r0, r0, r0, lsr #16
	and r0, r0, #0xff
	bx lr
	.align 2, 0
_037FCCDC: .word 0x55555555
_037FCCE0: .word 0x33333333
_037FCCE4: .word 0x0F0F0F0F
	arm_func_end FUN_037FCCA4

	arm_func_start FUN_037FCCE8
FUN_037FCCE8: ; 0x037FCCE8
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r2, #0
	bne _037FCD4C
	sub r0, r0, #4
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _037FCD4C
_037FCD08: ; jump table
	b _037FCD44 ; case 0
	b _037FCD4C ; case 1
	b _037FCD20 ; case 2
	b _037FCD4C ; case 3
	b _037FCD38 ; case 4
	b _037FCD2C ; case 5
_037FCD20:
	mov r0, r1
	bl FUN_037FD5E0
	b _037FCD4C
_037FCD2C:
	mov r0, r1
	bl FUN_03800160
	b _037FCD4C
_037FCD38:
	mov r0, r1
	bl FUN_037FDFDC
	b _037FCD4C
_037FCD44:
	mov r0, r1
	bl FUN_03800BA8
_037FCD4C:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_037FCCE8

	arm_func_start FUN_037FCD58
FUN_037FCD58: ; 0x037FCD58
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	ldr r6, _037FCDC0 ; =_03803C4C
	add r5, sp, #0
	mov r4, #1
_037FCD6C:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_037F9750
	ldr r0, [sp]
	ldr r1, [r0]
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _037FCD6C
_037FCD90: ; jump table
	b _037FCDA0 ; case 0
	b _037FCDB8 ; case 1
	b _037FCDA8 ; case 2
	b _037FCDB0 ; case 3
_037FCDA0:
	bl FUN_037FD2B8
	b _037FCD6C
_037FCDA8:
	bl FUN_037FFE60
	b _037FCD6C
_037FCDB0:
	bl FUN_037FDE54
	b _037FCD6C
_037FCDB8:
	bl FUN_038008CC
	b _037FCD6C
	.align 2, 0
_037FCDC0: .word _03803C4C
	arm_func_end FUN_037FCD58

	arm_func_start FUN_037FCDC4
FUN_037FCDC4: ; 0x037FCDC4
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _037FCDE8 ; =_03803C4C
	add r1, sp, #0
	mov r2, #0
	bl FUN_037F96D8
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_037FCDE8: .word _03803C4C
	arm_func_end FUN_037FCDC4

	arm_func_start FUN_037FCDEC
FUN_037FCDEC: ; 0x037FCDEC
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, r1
	ldrh r0, [sp, #0x18]
	cmp r0, #4
	movhi r0, #0
	bhi _037FCEA4
	bl FUN_037FAD78
	ldr r2, _037FCEB0 ; =_038039A0
	ldr r3, [r2, #0x48c]
	mov r1, #0x18
	mul ip, r3, r1
	ldr r3, _037FCEB4 ; =_03803CAC
	str r5, [r3, ip]
	ldr r3, [r2, #0x48c]
	mul r5, r3, r1
	ldr r3, _037FCEB8 ; =_03803CB0
	str r4, [r3, r5]
	add r3, sp, #0x18
	bic r3, r3, #3
	add r6, r3, #4
	mov lr, #0
	ldrh ip, [sp, #0x18]
	b _037FCE6C
_037FCE50:
	add r6, r6, #4
	ldr r5, [r6, #-4]
	ldr r4, [r2, #0x48c]
	mla r3, r4, r1, r2
	add r3, r3, lr, lsl #2
	str r5, [r3, #0x314]
	add lr, lr, #1
_037FCE6C:
	cmp lr, ip
	blt _037FCE50
	ldr r1, _037FCEB0 ; =_038039A0
	ldr r4, [r1, #0x48c]
	add r2, r4, #1
	and r2, r2, #0xf
	str r2, [r1, #0x48c]
	bl FUN_037FAD8C
	ldr r0, _037FCEBC ; =_03803C4C
	ldr r2, _037FCEB4 ; =_03803CAC
	mov r1, #0x18
	mla r1, r4, r1, r2
	mov r2, #0
	bl FUN_037F97F0
_037FCEA4:
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_037FCEB0: .word _038039A0
_037FCEB4: .word _03803CAC
_037FCEB8: .word _03803CB0
_037FCEBC: .word _03803C4C
	arm_func_end FUN_037FCDEC

	arm_func_start FUN_037FCEC0
FUN_037FCEC0: ; 0x037FCEC0
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _037FCEFC ; =_038039A0
	ldr r2, [r1, #4]
	cmp r2, r0
	bne _037FCEF0
	mov r0, #5
	str r0, [r1, #4]
	mov r0, #0
	str r0, [r1]
	ldr r0, _037FCF00 ; =_03803E30
	bl FUN_037F8F04
_037FCEF0:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_037FCEFC: .word _038039A0
_037FCF00: .word _03803E30
	arm_func_end FUN_037FCEC0

	arm_func_start FUN_037FCF04
FUN_037FCF04: ; 0x037FCF04
	mov r2, #1
	ldr r1, _037FCF18 ; =_038039A0
	str r2, [r1]
	str r0, [r1, #4]
	bx lr
	.align 2, 0
_037FCF18: .word _038039A0
	arm_func_end FUN_037FCF04

	arm_func_start FUN_037FCF1C
FUN_037FCF1C: ; 0x037FCF1C
	ldr r0, _037FCF34 ; =_038039A0
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
	.align 2, 0
_037FCF34: .word _038039A0
	arm_func_end FUN_037FCF1C

	arm_func_start FUN_037FCF38
FUN_037FCF38: ; 0x037FCF38
	stmdb sp!, {r4, r5, r6, lr}
	and r2, r0, #0x70
	cmp r2, #0x30
	bgt _037FCF78
	cmp r2, #0x30
	bge _037FCFCC
	cmp r2, #0x10
	bgt _037FCF6C
	cmp r2, #0x10
	bge _037FCFB4
	cmp r2, #0
	beq _037FCFB4
	b _037FCFD0
_037FCF6C:
	cmp r2, #0x20
	beq _037FCFCC
	b _037FCFD0
_037FCF78:
	cmp r2, #0x50
	bgt _037FCF94
	cmp r2, #0x50
	bge _037FCFBC
	cmp r2, #0x40
	beq _037FCFBC
	b _037FCFD0
_037FCF94:
	cmp r2, #0x60
	bgt _037FCFA8
	cmp r2, #0x60
	beq _037FCFC4
	b _037FCFD0
_037FCFA8:
	cmp r2, #0x70
	beq _037FCFC4
	b _037FCFD0
_037FCFB4:
	mov r4, #6
	b _037FCFD0
_037FCFBC:
	mov r4, #9
	b _037FCFD0
_037FCFC4:
	mov r4, #8
	b _037FCFD0
_037FCFCC:
	mov r4, #4
_037FCFD0:
	and r0, r0, #0xff
	orr r0, r0, #0x80
	mov r0, r0, lsl #8
	orr r2, r0, #0x3000000
	and r0, r1, #0xff
	orr r6, r2, r0
	mov r5, #0
_037FCFEC:
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl FUN_037FB2DC
	cmp r0, #0
	blt _037FCFEC
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	arm_func_end FUN_037FCF38

	arm_func_start FUN_037FD00C
FUN_037FD00C: ; 0x037FD00C
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _037FD070 ; =_038039A0
	ldr r2, [r1]
	cmp r2, #0
	beq _037FD064
	ldr r2, [r1, #4]
	cmp r2, #4
	bne _037FD064
	ldr r1, [r1, #0x498]
	cmp r1, r0
	bne _037FD064
	bl FUN_037FAD78
	mov r2, #5
	ldr r1, _037FD070 ; =_038039A0
	str r2, [r1, #4]
	mov r2, #0
	str r2, [r1]
	str r2, [r1, #0x498]
	bl FUN_037FAD8C
	ldr r0, _037FD074 ; =_03803E30
	bl FUN_037F8F04
_037FD064:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_037FD070: .word _038039A0
_037FD074: .word _03803E30
	arm_func_end FUN_037FD00C

	arm_func_start FUN_037FD078
FUN_037FD078: ; 0x037FD078
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	ldr r5, _037FD0D4 ; =_03803E30
	ldr r4, _037FD0D8 ; =_038039A0
_037FD08C:
	bl FUN_037FAD78
	mov r6, r0
	ldr r1, [r4]
	cmp r1, #0
	beq _037FD0B0
	bl FUN_037FAD8C
	mov r0, r5
	bl FUN_037F8F80
	b _037FD08C
_037FD0B0:
	mov r0, #4
	bl FUN_037FCF04
	ldr r0, _037FD0D8 ; =_038039A0
	str r7, [r0, #0x498]
	mov r0, r6
	bl FUN_037FAD8C
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_037FD0D4: .word _03803E30
_037FD0D8: .word _038039A0
	arm_func_end FUN_037FD078

	arm_func_start FUN_037FD0DC
FUN_037FD0DC: ; 0x037FD0DC
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, _037FD1D8 ; =_0380399C
	ldrh r1, [r0]
	cmp r1, #0
	bne _037FD1CC
	mov r1, #1
	strh r1, [r0]
	mov r1, #0
	ldr r0, _037FD1DC ; =_038039A0
	str r1, [r0]
	mov r1, #5
	str r1, [r0, #4]
	bl FUN_037FD7A0
	bl FUN_03800D4C
	bl FUN_03800434
	bl FUN_037FE1B0
	bl FUN_037FB1B0
	mov r0, #6
	ldr r1, _037FD1E0 ; =FUN_037FCCE8
	bl FUN_037FB3A8
	mov r0, #9
	ldr r1, _037FD1E0 ; =FUN_037FCCE8
	bl FUN_037FB3A8
	mov r0, #8
	ldr r1, _037FD1E0 ; =FUN_037FCCE8
	bl FUN_037FB3A8
	mov r0, #4
	ldr r1, _037FD1E0 ; =FUN_037FCCE8
	bl FUN_037FB3A8
	ldr r0, _037FD1E4 ; =_03803C4C
	ldr r1, _037FD1E8 ; =_03803C6C
	mov r2, #0x10
	bl FUN_037F9884
	mov r8, #0
	ldr r7, _037FD1EC ; =_03803CAC
	mov r6, r8
	mov r5, #0x18
_037FD178:
	mla r0, r8, r5, r7
	mov r1, r6
	mov r2, r5
	bl FUN_037FAFE4
	add r8, r8, #1
	cmp r8, #0x10
	blt _037FD178
	mov r2, #0
	ldr r0, _037FD1DC ; =_038039A0
	str r2, [r0, #0x48c]
	str r2, [r0, #0x494]
	str r2, [r0, #0x490]
	mov r0, #0x200
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, _037FD1F0 ; =_038039A8
	ldr r1, _037FD1F4 ; =FUN_037FCD58
	ldr r3, _037FD1E4 ; =_03803C4C
	bl FUN_037F9110
	ldr r0, _037FD1F0 ; =_038039A8
	bl FUN_037F8ED0
_037FD1CC:
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_037FD1D8: .word _0380399C
_037FD1DC: .word _038039A0
_037FD1E0: .word FUN_037FCCE8
_037FD1E4: .word _03803C4C
_037FD1E8: .word _03803C6C
_037FD1EC: .word _03803CAC
_037FD1F0: .word _038039A8
_037FD1F4: .word FUN_037FCD58
	arm_func_end FUN_037FD0DC

	arm_func_start FUN_037FD1F8
FUN_037FD1F8: ; 0x037FD1F8
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r0, #0
	bne _037FD218
	mov r0, #3
	mov r1, #2
	bl FUN_037FCF38
	b _037FD230
_037FD218:
	ldr r1, _037FD23C ; =_03803E44
	str r0, [r1, #0x24]
	str r0, [r1, #0x28]
	mov r0, #3
	mov r1, #0
	bl FUN_037FCF38
_037FD230:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_037FD23C: .word _03803E44
	arm_func_end FUN_037FD1F8

	arm_func_start FUN_037FD240
FUN_037FD240: ; 0x037FD240
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	mov r0, #0
	mov r1, #0x10
	mov r2, #1
	mov r3, r4
	bl FUN_037FCDEC
	cmp r0, #0
	bne _037FD2A4
	ldr r0, [sp]
	bic r0, r0, #0x6000000
	orr r0, r0, #0x6000000
	str r0, [sp]
	ldrh r1, [sp]
	ldr r0, _037FD2B0 ; =0x027FFFAA
	strh r1, [r0]
	ldrh r1, [sp, #2]
	ldr r0, _037FD2B4 ; =0x027FFFAC
	strh r1, [r0]
	mov r0, #0x10
	and r1, r4, #0xff
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_037FCF38
_037FD2A4:
	add sp, sp, #8
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_037FD2B0: .word 0x027FFFAA
_037FD2B4: .word 0x027FFFAC
	arm_func_end FUN_037FD240

	arm_func_start FUN_037FD2B8
FUN_037FD2B8: ; 0x037FD2B8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x10
	mov sl, r0
	ldr r1, [sl, #4]
	cmp r1, #2
	bhi _037FD2EC
	cmp r1, #0
	beq _037FD304
	cmp r1, #1
	beq _037FD3CC
	cmp r1, #2
	beq _037FD478
	b _037FD4C4
_037FD2EC:
	cmp r1, #0x10
	bne _037FD4C4
	ldr r0, _037FD4D0 ; =_03803E44
	ldr r0, [r0, #0x20]
	cmp r0, #2
	bne _037FD4C4
_037FD304:
	bl FUN_037FAD78
	mov r4, r0
	mov r0, #0
	bl FUN_037FCF1C
	cmp r0, #0
	bne _037FD33C
	mov r0, r4
	bl FUN_037FAD8C
	ldr r0, [sl, #4]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, #4
	bl FUN_037FCF38
	b _037FD4C4
_037FD33C:
	mov r0, #0
	bl FUN_037FCF04
	mov r0, r4
	bl FUN_037FAD8C
	add r0, sp, #8
	ldr r1, _037FD4D0 ; =_03803E44
	ldr r1, [r1, #0x24]
	add r2, sp, #4
	bl FUN_037FD8B0
	add r0, sp, #8
	ldrh r1, [sp, #4]
	bl FUN_037FD4EC
	ldrh r1, [sp, #8]
	ldr r0, _037FD4D4 ; =0x027FFFAA
	strh r1, [r0]
	ldrh r1, [sp, #0xa]
	ldr r0, _037FD4D8 ; =0x027FFFAC
	strh r1, [r0]
	ldr r0, [sl, #4]
	cmp r0, #0
	bne _037FD3A4
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, #0
	bl FUN_037FCF38
	b _037FD3C0
_037FD3A4:
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldr r1, [sl, #8]
	and r1, r1, #0xff
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_037FCF38
_037FD3C0:
	mov r0, #0
	bl FUN_037FCEC0
	b _037FD4C4
_037FD3CC:
	ldr r7, _037FD4D0 ; =_03803E44
	ldr r0, [r7, #0x20]
	cmp r0, #1
	bne _037FD464
	mov sb, #0
	ldr r8, _037FD4DC ; =0x00000107
	ldr r6, _037FD4E0 ; =_03803E70
	mov r5, #0xa
	ldr r4, _037FD4E4 ; =FUN_037FD240
	b _037FD434
_037FD3F4:
	mul r0, sb, r8
	bl FUN_03801A54
	ldr r1, [sl, #0xc]
	add r0, r1, r0
	mov r1, r8
	bl FUN_03801A54
	add r2, r7, sb, lsl #1
	strh r1, [r2, #0xcc]
	str sb, [sp]
	mov r0, #0x28
	mla r0, sb, r0, r6
	ldrsh r1, [r2, #0xcc]
	mov r2, r5
	mov r3, r4
	bl FUN_037FAAA4
	add sb, sb, #1
_037FD434:
	ldr r1, [sl, #8]
	cmp sb, r1
	blo _037FD3F4
	ldr r0, [sl, #4]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, #0
	bl FUN_037FCF38
	mov r1, #2
	ldr r0, _037FD4D0 ; =_03803E44
	str r1, [r0, #0x20]
	b _037FD4C4
_037FD464:
	mov r0, r1, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, #3
	bl FUN_037FCF38
	b _037FD4C4
_037FD478:
	ldr r0, _037FD4D0 ; =_03803E44
	ldr r0, [r0, #0x20]
	cmp r0, #3
	bne _037FD4B4
	ldr r0, _037FD4E8 ; =0x54505641
	bl FUN_037FA94C
	ldr r0, [sl, #4]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, #0
	bl FUN_037FCF38
	mov r1, #0
	ldr r0, _037FD4D0 ; =_03803E44
	str r1, [r0, #0x20]
	b _037FD4C4
_037FD4B4:
	mov r0, r1, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, #3
	bl FUN_037FCF38
_037FD4C4:
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	.align 2, 0
_037FD4D0: .word _03803E44
_037FD4D4: .word 0x027FFFAA
_037FD4D8: .word 0x027FFFAC
_037FD4DC: .word 0x00000107
_037FD4E0: .word _03803E70
_037FD4E4: .word FUN_037FD240
_037FD4E8: .word 0x54505641
	arm_func_end FUN_037FD2B8

	arm_func_start FUN_037FD4EC
FUN_037FD4EC: ; 0x037FD4EC
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, [r0]
	mov r2, r0, lsl #7
	movs r2, r2, lsr #0x1f
	bne _037FD51C
	mov r1, #0
	ldr r0, _037FD5D4 ; =_03803E40
	strb r1, [r0]
	ldr r0, _037FD5D8 ; =_03803E3C
	strb r1, [r0]
	b _037FD5C8
_037FD51C:
	mov r0, r0, lsl #5
	movs r0, r0, lsr #0x1e
	beq _037FD56C
	mov r2, #0
	ldr r0, _037FD5D8 ; =_03803E3C
	strb r2, [r0]
	ldr r0, _037FD5D4 ; =_03803E40
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	ldrb r1, [r0]
	cmp r1, #4
	blo _037FD5C8
	strb r2, [r0]
	ldr r0, _037FD5DC ; =_03803E44
	ldr r1, [r0, #0x24]
	cmp r1, #0x23
	addlt r1, r1, #1
	strlt r1, [r0, #0x24]
	b _037FD5C8
_037FD56C:
	mov lr, #0
	ldr r3, _037FD5D4 ; =_03803E40
	strb lr, [r3]
	ldr r2, _037FD5DC ; =_03803E44
	ldr ip, [r2, #0x24]
	cmp r1, ip, asr #1
	ldrge r0, _037FD5D8 ; =_03803E3C
	strgeb lr, [r0]
	bge _037FD5C8
	ldr r0, _037FD5D8 ; =_03803E3C
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	ldrb r1, [r0]
	cmp r1, #4
	blo _037FD5C8
	strb lr, [r0]
	ldr r0, [r2, #0x28]
	cmp ip, r0
	subgt r0, ip, #1
	strgt r0, [r2, #0x24]
	movgt r0, #3
	strgtb r0, [r3]
_037FD5C8:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_037FD5D4: .word _03803E40
_037FD5D8: .word _03803E3C
_037FD5DC: .word _03803E44
	arm_func_end FUN_037FD4EC

	arm_func_start FUN_037FD5E0
FUN_037FD5E0: ; 0x037FD5E0
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ands r1, r0, #0x2000000
	beq _037FD610
	mov r4, #0
	mov r3, r4
	ldr r1, _037FD798 ; =_03803E44
_037FD5FC:
	mov r2, r4, lsl #1
	strh r3, [r1, r2]
	add r4, r4, #1
	cmp r4, #0x10
	blt _037FD5FC
_037FD610:
	and r1, r0, #0xf0000
	mov r1, r1, lsr #0x10
	mov r1, r1, lsl #1
	ldr r2, _037FD798 ; =_03803E44
	strh r0, [r2, r1]
	ands r0, r0, #0x1000000
	beq _037FD78C
	ldrh r1, [r2]
	and r0, r1, #0xff00
	mov r0, r0, lsl #8
	mov r4, r0, lsr #0x10
	cmp r4, #3
	addls pc, pc, r4, lsl #2
	b _037FD780
_037FD648: ; jump table
	b _037FD66C ; case 0
	b _037FD694 ; case 1
	b _037FD730 ; case 2
	b _037FD658 ; case 3
_037FD658:
	and r0, r1, #0xff
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl FUN_037FD1F8
	b _037FD78C
_037FD66C:
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl FUN_037FCDEC
	cmp r0, #0
	bne _037FD78C
	mov r0, r4
	mov r1, #4
	bl FUN_037FCF38
	b _037FD78C
_037FD694:
	ldr r0, [r2, #0x20]
	cmp r0, #0
	beq _037FD6B0
	mov r0, r4
	mov r1, #3
	bl FUN_037FCF38
	b _037FD78C
_037FD6B0:
	and r0, r1, #0xff
	mov r0, r0, lsl #0x10
	movs r3, r0, lsr #0x10
	beq _037FD6C8
	cmp r3, #4
	bls _037FD6D8
_037FD6C8:
	mov r0, r4
	mov r1, #2
	bl FUN_037FCF38
	b _037FD78C
_037FD6D8:
	ldrh r1, [r2, #2]
	ldr r0, _037FD79C ; =0x00000107
	cmp r1, r0
	blo _037FD6F8
	mov r0, r4
	mov r1, #2
	bl FUN_037FCF38
	b _037FD78C
_037FD6F8:
	str r1, [sp]
	mov r0, #0
	mov r1, r4
	mov r2, #2
	bl FUN_037FCDEC
	cmp r0, #0
	movne r1, #1
	ldrne r0, _037FD798 ; =_03803E44
	strne r1, [r0, #0x20]
	bne _037FD78C
	mov r0, r4
	mov r1, #4
	bl FUN_037FCF38
	b _037FD78C
_037FD730:
	ldr r0, [r2, #0x20]
	cmp r0, #2
	beq _037FD74C
	mov r0, r4
	mov r1, #3
	bl FUN_037FCF38
	b _037FD78C
_037FD74C:
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl FUN_037FCDEC
	cmp r0, #0
	movne r1, #3
	ldrne r0, _037FD798 ; =_03803E44
	strne r1, [r0, #0x20]
	bne _037FD78C
	mov r0, r4
	mov r1, #4
	bl FUN_037FCF38
	b _037FD78C
_037FD780:
	mov r0, r4
	mov r1, #1
	bl FUN_037FCF38
_037FD78C:
	add sp, sp, #8
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_037FD798: .word _03803E44
_037FD79C: .word 0x00000107
	arm_func_end FUN_037FD5E0

	arm_func_start FUN_037FD7A0
FUN_037FD7A0: ; 0x037FD7A0
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r3, #0
	ldr r0, _037FD894 ; =_03803E44
	str r3, [r0, #0x20]
	mov r1, #0x14
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
	mov r2, r3
_037FD7C0:
	mov r1, r3, lsl #1
	strh r2, [r0, r1]
	add r3, r3, #1
	cmp r3, #0x10
	blt _037FD7C0
	bl FUN_037FACEC
	cmp r0, #0
	bne _037FD7E4
	bl FUN_037FACFC
_037FD7E4:
	mov r7, #0
	ldr r6, _037FD898 ; =_03803E70
	ldr r5, _037FD89C ; =0x54505641
	mov r4, #0x28
_037FD7F4:
	mla r8, r7, r4, r6
	mov r0, r8
	bl FUN_037FABD4
	mov r0, r8
	mov r1, r5
	bl FUN_037FAA1C
	add r7, r7, #1
	cmp r7, #4
	blt _037FD7F4
	ldr r1, _037FD8A0 ; =0x040001C0
_037FD81C:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _037FD81C
	ldr r0, _037FD8A4 ; =0x00008A01
	strh r0, [r1]
	mov r1, #0x84
	ldr r0, _037FD8A8 ; =0x040001C2
	strh r1, [r0]
	ldr r1, _037FD8A0 ; =0x040001C0
_037FD840:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _037FD840
	mov r1, #0
	ldr r0, _037FD8A8 ; =0x040001C2
	strh r1, [r0]
	ldr r1, _037FD8A0 ; =0x040001C0
_037FD85C:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _037FD85C
	ldr r0, _037FD8AC ; =0x00008201
	strh r0, [r1]
	mov r1, #0
	ldr r0, _037FD8A8 ; =0x040001C2
	strh r1, [r0]
	ldr r1, _037FD8A0 ; =0x040001C0
_037FD880:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _037FD880
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_037FD894: .word _03803E44
_037FD898: .word _03803E70
_037FD89C: .word 0x54505641
_037FD8A0: .word 0x040001C0
_037FD8A4: .word 0x00008A01
_037FD8A8: .word 0x040001C2
_037FD8AC: .word 0x00008201
	arm_func_end FUN_037FD7A0

	arm_func_start FUN_037FD8B0
FUN_037FD8B0: ; 0x037FD8B0
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r0
	movs r6, r1
	mov r5, r2
	mov r0, #0
	strh r0, [r5]
	rsbmi r6, r6, #0
	bl FUN_037FDCF8
	movs r4, r0
	bne _037FD92C
	ldr r1, [r7]
	mov r0, #0x1000
	rsb r0, r0, #0
	and r0, r1, r0
	str r0, [r7]
	ldr r1, [r7]
	ldr r0, _037FDAE4 ; =0xFF000FFF
	and r0, r1, r0
	str r0, [r7]
	ldr r0, [r7]
	bic r0, r0, #0x1000000
	str r0, [r7]
	ldr r0, [r7]
	bic r0, r0, #0x6000000
	orr r0, r0, #0x6000000
	str r0, [r7]
	mov r1, #0
	ldr r0, _037FDAE8 ; =_03803F18
	strh r1, [r0]
	b _037FDAD8
_037FD92C:
	add r0, sp, #0
	mov r1, r6
	mov r2, #0
	add r3, sp, #2
	bl FUN_037FDB00
	ldr r1, [r7]
	bic r1, r1, #0x6000000
	and r0, r0, #3
	orr r0, r1, r0, lsl #25
	str r0, [r7]
	ldr r1, [r7]
	mov r0, #0x1000
	rsb r0, r0, #0
	and r2, r1, r0
	ldrh r1, [sp]
	ldr r0, _037FDAEC ; =0x00000FFF
	and r0, r1, r0
	orr r0, r2, r0
	str r0, [r7]
	add r0, sp, #0
	mov r1, r6
	mov r2, #1
	add r3, sp, #4
	bl FUN_037FDB00
	cmp r0, #2
	bne _037FD9B4
	ldr r0, [r7]
	bic r1, r0, #0x6000000
	mov r0, r0, lsl #5
	mov r0, r0, lsr #0x1e
	orr r0, r0, #2
	and r0, r0, #3
	orr r0, r1, r0, lsl #25
	str r0, [r7]
_037FD9B4:
	ldr r1, [r7]
	ldr r0, _037FDAE4 ; =0xFF000FFF
	and r2, r1, r0
	ldrh r1, [sp]
	ldr r0, _037FDAEC ; =0x00000FFF
	and r0, r1, r0
	orr r0, r2, r0, lsl #12
	str r0, [r7]
	ldr r0, _037FDAF0 ; =0x00008A01
	ldr r3, _037FDAF4 ; =0x040001C0
	strh r0, [r3]
	mov r6, #0
	mov r2, r6
	ldr r1, _037FDAF8 ; =0x040001C2
_037FD9EC:
	strh r2, [r1]
_037FD9F0:
	ldrh r0, [r3]
	ands r0, r0, #0x80
	bne _037FD9F0
	add r6, r6, #1
	cmp r6, #0xc
	blt _037FD9EC
	ldr r0, _037FDAFC ; =0x00008201
	strh r0, [r3]
	mov r1, #0
	ldr r0, _037FDAF8 ; =0x040001C2
	strh r1, [r0]
	ldr r1, _037FDAF4 ; =0x040001C0
_037FDA20:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _037FDA20
	cmp r4, #2
	ldreq r0, [r7]
	biceq r0, r0, #0x6000000
	orreq r0, r0, #0x6000000
	streq r0, [r7]
	bl FUN_037FDCF8
	cmp r0, #0
	beq _037FDAB8
	cmp r0, #1
	beq _037FDA88
	cmp r0, #2
	bne _037FDAD4
	ldr r0, [r7]
	orr r0, r0, #0x1000000
	str r0, [r7]
	ldr r0, [r7]
	bic r0, r0, #0x6000000
	orr r0, r0, #0x6000000
	str r0, [r7]
	mov r1, #0
	ldr r0, _037FDAE8 ; =_03803F18
	strh r1, [r0]
	b _037FDAD8
_037FDA88:
	ldr r0, [r7]
	orr r0, r0, #0x1000000
	str r0, [r7]
	mov r1, #1
	ldr r0, _037FDAE8 ; =_03803F18
	strh r1, [r0]
	ldrh r0, [sp, #4]
	ldrh r1, [sp, #2]
	cmp r1, r0
	movlo r1, r0
	strh r1, [r5]
	b _037FDAD8
_037FDAB8:
	ldr r0, [r7]
	bic r0, r0, #0x1000000
	str r0, [r7]
	mov r1, #0
	ldr r0, _037FDAE8 ; =_03803F18
	strh r1, [r0]
	b _037FDAD8
_037FDAD4:
	bl FUN_037FAEA0
_037FDAD8:
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_037FDAE4: .word 0xFF000FFF
_037FDAE8: .word _03803F18
_037FDAEC: .word 0x00000FFF
_037FDAF0: .word 0x00008A01
_037FDAF4: .word 0x040001C0
_037FDAF8: .word 0x040001C2
_037FDAFC: .word 0x00008201
	arm_func_end FUN_037FD8B0

	arm_func_start FUN_037FDB00
FUN_037FDB00: ; 0x037FDB00
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x18
	cmp r2, #0
	moveq r5, #0xd1
	moveq r6, #1
	movne r5, #0x91
	movne r6, #2
_037FDB1C:
	ldr r4, _037FDCE4 ; =0x040001C0
	ldrh r2, [r4]
	ands r2, r2, #0x80
	bne _037FDB1C
	ldr r2, _037FDCE8 ; =0x00008A01
	strh r2, [r4]
	and r5, r5, #0xff
	ldr r2, _037FDCEC ; =0x040001C2
	strh r5, [r2]
_037FDB40:
	ldrh r2, [r4]
	ands r2, r2, #0x80
	bne _037FDB40
	mov r7, #0
	ldr ip, _037FDCE4 ; =0x040001C0
	ldr lr, _037FDCEC ; =0x040001C2
	add r2, sp, #0
	mov r4, r7
	ldr sb, _037FDCF0 ; =0x00007FF8
_037FDB64:
	strh r4, [lr]
_037FDB68:
	ldrh r8, [ip]
	ands r8, r8, #0x80
	bne _037FDB68
	ldrh r8, [lr]
	and r8, r8, #0xff
	mov r8, r8, lsl #0x10
	mov r8, r8, lsr #8
	str r8, [r2, r7, lsl #2]
	strh r5, [lr]
_037FDB8C:
	ldrh r8, [ip]
	ands r8, r8, #0x80
	bne _037FDB8C
	ldrh r8, [lr]
	and r8, r8, #0xff
	mov r8, r8, lsl #0x10
	ldr sl, [r2, r7, lsl #2]
	orr r8, sl, r8, lsr #16
	str r8, [r2, r7, lsl #2]
	ldr r8, [r2, r7, lsl #2]
	and r8, r8, sb
	mov r8, r8, asr #3
	str r8, [r2, r7, lsl #2]
	add r7, r7, #1
	cmp r7, #5
	blt _037FDB64
	ldr r2, _037FDCF4 ; =0x00008201
	strh r2, [ip]
	mov r2, #0
	strh r2, [lr]
	ldr r4, _037FDCE4 ; =0x040001C0
_037FDBE0:
	ldrh r2, [r4]
	ands r2, r2, #0x80
	bne _037FDBE0
	mov r8, #0
	mov r7, r8
	add r5, sp, #0
_037FDBF8:
	add sb, r7, #1
	ldr r4, [r5, r7, lsl #2]
	b _037FDC1C
_037FDC04:
	ldr r2, [r5, sb, lsl #2]
	subs r2, r4, r2
	rsbmi r2, r2, #0
	cmp r2, r8
	movgt r8, r2
	add sb, sb, #1
_037FDC1C:
	cmp sb, #5
	blt _037FDC04
	add r7, r7, #1
	cmp r7, #4
	blt _037FDBF8
	strh r8, [r3]
	mov r4, #0
	add r2, sp, #0
	b _037FDCB4
_037FDC40:
	add r3, r4, #1
	ldr r7, [r2, r4, lsl #2]
	b _037FDCA8
_037FDC4C:
	ldr r8, [r2, r3, lsl #2]
	subs r5, r7, r8
	rsbmi r5, r5, #0
	cmp r5, r1
	bgt _037FDCA4
	add sb, r3, #1
	b _037FDC9C
_037FDC68:
	ldr r5, [r2, sb, lsl #2]
	subs sl, r7, r5
	rsbmi sl, sl, #0
	cmp sl, r1
	bgt _037FDC98
	add r1, r8, r7, lsl #1
	add r1, r5, r1
	mov r1, r1, asr #2
	bic r1, r1, #7
	strh r1, [r0]
	mov r0, #0
	b _037FDCD8
_037FDC98:
	add sb, sb, #1
_037FDC9C:
	cmp sb, #5
	blt _037FDC68
_037FDCA4:
	add r3, r3, #1
_037FDCA8:
	cmp r3, #4
	blt _037FDC4C
	add r4, r4, #1
_037FDCB4:
	cmp r4, #3
	blt _037FDC40
	ldr r2, [sp]
	ldr r1, [sp, #0x10]
	add r1, r2, r1
	mov r1, r1, asr #1
	bic r1, r1, #7
	strh r1, [r0]
	mov r0, r6
_037FDCD8:
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	.align 2, 0
_037FDCE4: .word 0x040001C0
_037FDCE8: .word 0x00008A01
_037FDCEC: .word 0x040001C2
_037FDCF0: .word 0x00007FF8
_037FDCF4: .word 0x00008201
	arm_func_end FUN_037FDB00

	arm_func_start FUN_037FDCF8
FUN_037FDCF8: ; 0x037FDCF8
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r0, #0x8000
	bl FUN_037FB4F0
	ldr r1, _037FDE3C ; =0x040001C0
_037FDD0C:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _037FDD0C
	ldr r0, _037FDE40 ; =0x00008A01
	strh r0, [r1]
	mov r1, #0x84
	ldr r0, _037FDE44 ; =0x040001C2
	strh r1, [r0]
	ldr r1, _037FDE3C ; =0x040001C0
_037FDD30:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _037FDD30
	mov r1, #0
	ldr r0, _037FDE44 ; =0x040001C2
	strh r1, [r0]
	ldr r1, _037FDE3C ; =0x040001C0
_037FDD4C:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _037FDD4C
	ldr r0, _037FDE48 ; =0x00008201
	strh r0, [r1]
	mov r1, #0
	ldr r0, _037FDE44 ; =0x040001C2
	strh r1, [r0]
	ldr r1, _037FDE3C ; =0x040001C0
_037FDD70:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _037FDD70
	ldr r0, _037FDE4C ; =_03803F18
	ldrh r0, [r0]
	cmp r0, #0
	bne _037FDDA4
	ldr r0, _037FDE50 ; =0x04000136
	ldrh r0, [r0]
	ands r0, r0, #0x40
	moveq r0, #1
	movne r0, #0
	b _037FDE30
_037FDDA4:
	ldr r0, _037FDE50 ; =0x04000136
	ldrh r0, [r0]
	ands r0, r0, #0x40
	moveq r0, #1
	beq _037FDE30
	ldr r0, _037FDE40 ; =0x00008A01
	strh r0, [r1]
	mov r1, #0x84
	ldr r0, _037FDE44 ; =0x040001C2
	strh r1, [r0]
	ldr r1, _037FDE3C ; =0x040001C0
_037FDDD0:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _037FDDD0
	mov r1, #0
	ldr r0, _037FDE44 ; =0x040001C2
	strh r1, [r0]
	ldr r1, _037FDE3C ; =0x040001C0
_037FDDEC:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _037FDDEC
	ldr r0, _037FDE48 ; =0x00008201
	strh r0, [r1]
	mov r1, #0
	ldr r0, _037FDE44 ; =0x040001C2
	strh r1, [r0]
	ldr r1, _037FDE3C ; =0x040001C0
_037FDE10:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _037FDE10
	ldr r0, _037FDE50 ; =0x04000136
	ldrh r0, [r0]
	ands r0, r0, #0x40
	movne r0, #0
	moveq r0, #2
_037FDE30:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_037FDE3C: .word 0x040001C0
_037FDE40: .word 0x00008A01
_037FDE44: .word 0x040001C2
_037FDE48: .word 0x00008201
_037FDE4C: .word _03803F18
_037FDE50: .word 0x04000136
	arm_func_end FUN_037FDCF8

	arm_func_start FUN_037FDE54
FUN_037FDE54: ; 0x037FDE54
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r0
	bl FUN_037FAD78
	mov r5, r0
	mov r0, #3
	bl FUN_037FCF1C
	cmp r0, #0
	bne _037FDE98
	mov r0, r5
	bl FUN_037FAD8C
	ldr r0, [r4, #4]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, #4
	bl FUN_037FCF38
	b _037FDFC4
_037FDE98:
	mov r0, #3
	bl FUN_037FCF04
	mov r0, r5
	bl FUN_037FAD8C
	ldr r1, [r4, #4]
	sub r0, r1, #0x61
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _037FDFAC
_037FDEBC: ; jump table
	b _037FDED4 ; case 0
	b _037FDFAC ; case 1
	b _037FDF78 ; case 2
	b _037FDF00 ; case 3
	b _037FDF3C ; case 4
	b _037FDFA0 ; case 5
_037FDED4:
	mov r1, #1
	ldr r0, _037FDFD0 ; =_03803F28
	str r1, [r0, #0x20]
	ldr r1, [r4, #8]
	ldr r0, _037FDFD4 ; =_03803F20
	strh r1, [r0]
	ldr r1, [r4, #0xc]
	ldr r0, _037FDFD8 ; =_03803F1C
	strh r1, [r0]
	bl FUN_037FE568
	b _037FDFBC
_037FDF00:
	mov r1, #4
	ldr r0, _037FDFD0 ; =_03803F28
	str r1, [r0, #0x20]
	ldr r2, [r4, #8]
	str r2, [r0, #0x28]
	ldr r1, [r4, #0xc]
	str r1, [r0, #0x24]
	mov r0, r2, lsl #0x10
	mov r0, r0, lsr #0x10
	and r1, r1, #0xff
	bl FUN_037FE32C
	mov r0, #0x64
	mov r1, #0
	bl FUN_037FCF38
	b _037FDFBC
_037FDF3C:
	mov r1, #3
	ldr r0, _037FDFD0 ; =_03803F28
	str r1, [r0, #0x20]
	ldr r1, [r4, #8]
	str r1, [r0, #0x28]
	mov r0, r1, lsl #0x10
	mov r4, r0, lsr #0x10
	mov r0, r4
	bl FUN_037FE298
	mov r1, r0
	add r0, r4, #0x70
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl FUN_037FCF38
	b _037FDFBC
_037FDF78:
	mov r0, #2
	ldr r1, _037FDFD0 ; =_03803F28
	str r0, [r1, #0x20]
	ldr r0, [r4, #8]
	str r0, [r1, #0x24]
	bl FUN_037FE43C
	mov r0, #0x63
	mov r1, #0
	bl FUN_037FCF38
	b _037FDFBC
_037FDFA0:
	ldr r0, [r4, #8]
	bl FUN_037FE3D4
	b _037FDFBC
_037FDFAC:
	mov r0, r1, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, #1
	bl FUN_037FCF38
_037FDFBC:
	mov r0, #3
	bl FUN_037FCEC0
_037FDFC4:
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_037FDFD0: .word _03803F28
_037FDFD4: .word _03803F20
_037FDFD8: .word _03803F1C
	arm_func_end FUN_037FDE54

	arm_func_start FUN_037FDFDC
FUN_037FDFDC: ; 0x037FDFDC
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ands r1, r0, #0x2000000
	beq _037FE00C
	mov r4, #0
	mov r3, r4
	ldr r1, _037FE1A8 ; =_03803F28
_037FDFF8:
	mov r2, r4, lsl #1
	strh r3, [r1, r2]
	add r4, r4, #1
	cmp r4, #0x10
	blt _037FDFF8
_037FE00C:
	and r1, r0, #0xf0000
	mov r1, r1, lsr #0x10
	mov r1, r1, lsl #1
	ldr ip, _037FE1A8 ; =_03803F28
	strh r0, [ip, r1]
	ands r0, r0, #0x1000000
	beq _037FE19C
	ldrh r3, [ip]
	and r0, r3, #0xff00
	mov r0, r0, lsl #8
	mov r4, r0, lsr #0x10
	sub r0, r4, #0x60
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _037FE190
_037FE048: ; jump table
	b _037FE068 ; case 0
	b _037FE078 ; case 1
	b _037FE190 ; case 2
	b _037FE120 ; case 3
	b _037FE0B4 ; case 4
	b _037FE0F0 ; case 5
	b _037FE15C ; case 6
	b _037FE174 ; case 7
_037FE068:
	mov r0, #0x60
	mov r1, #0
	bl FUN_037FCF38
	b _037FE19C
_037FE078:
	ldrh r1, [ip, #2]
	ldr r0, _037FE1AC ; =0x0000FFFF
	and r0, r1, r0
	str r0, [sp]
	mov r0, #3
	mov r1, r4
	mov r2, #2
	and r3, r3, #0xff
	bl FUN_037FCDEC
	cmp r0, #0
	bne _037FE19C
	mov r0, r4
	mov r1, #4
	bl FUN_037FCF38
	b _037FE19C
_037FE0B4:
	ldrh r1, [ip, #2]
	ldr r0, _037FE1AC ; =0x0000FFFF
	and r0, r1, r0
	str r0, [sp]
	mov r0, #3
	mov r1, r4
	mov r2, #2
	and r3, r3, #0xff
	bl FUN_037FCDEC
	cmp r0, #0
	bne _037FE19C
	mov r0, r4
	mov r1, #4
	bl FUN_037FCF38
	b _037FE19C
_037FE0F0:
	mov r0, #3
	mov r1, r4
	mov r2, #1
	ldr ip, _037FE1AC ; =0x0000FFFF
	and r3, r3, ip
	bl FUN_037FCDEC
	cmp r0, #0
	bne _037FE19C
	mov r0, r4
	mov r1, #4
	bl FUN_037FCF38
	b _037FE19C
_037FE120:
	mov r0, #3
	mov r1, r4
	mov r2, #1
	and lr, r3, #0xff
	ldrh ip, [ip, #2]
	ldr r3, _037FE1AC ; =0x0000FFFF
	and r3, ip, r3
	orr r3, r3, lr, lsl #16
	bl FUN_037FCDEC
	cmp r0, #0
	bne _037FE19C
	mov r0, r4
	mov r1, #4
	bl FUN_037FCF38
	b _037FE19C
_037FE15C:
	and r0, r3, #0xff
	bl FUN_037FE760
	mov r0, #0x66
	mov r1, #0
	bl FUN_037FCF38
	b _037FE19C
_037FE174:
	bl FUN_037FE750
	mov r1, r0
	mov r0, #0x67
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_037FCF38
	b _037FE19C
_037FE190:
	mov r0, r4
	mov r1, #1
	bl FUN_037FCF38
_037FE19C:
	add sp, sp, #8
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_037FE1A8: .word _03803F28
_037FE1AC: .word 0x0000FFFF
	arm_func_end FUN_037FDFDC

	arm_func_start FUN_037FE1B0
FUN_037FE1B0: ; 0x037FE1B0
	mov r1, #1
	ldr r0, _037FE1E4 ; =_03803F24
	str r1, [r0]
	mov r3, #0
	ldr r0, _037FE1E8 ; =_03803F28
	str r3, [r0, #0x20]
	mov r2, r3
_037FE1CC:
	mov r1, r3, lsl #1
	strh r2, [r0, r1]
	add r3, r3, #1
	cmp r3, #0x10
	blt _037FE1CC
	bx lr
	.align 2, 0
_037FE1E4: .word _03803F24
_037FE1E8: .word _03803F28
	arm_func_end FUN_037FE1B0

	arm_func_start FUN_037FE1EC
FUN_037FE1EC: ; 0x037FE1EC
	ldr r3, _037FE210 ; =0x0000FFFF
	and r3, r2, r3
	and r0, r0, #0x3c00000
	mov r2, r0, lsl #0x16
	and r0, r1, #0x3f0000
	orr r0, r2, r0, lsl #16
	orr r0, r3, r0
	ldr ip, _037FE214 ; =FUN_037FE218
	bx ip
	.align 2, 0
_037FE210: .word 0x0000FFFF
_037FE214: .word FUN_037FE218
	arm_func_end FUN_037FE1EC

	arm_func_start FUN_037FE218
FUN_037FE218: ; 0x037FE218
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #8
	mov r4, #0
_037FE228:
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl FUN_037FB2DC
	cmp r0, #0
	bne _037FE228
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	arm_func_end FUN_037FE218

	arm_func_start FUN_037FE248
FUN_037FE248: ; 0x037FE248
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0
	bl FUN_037FE298
	mvn r1, r4
	and r0, r0, r1
	and r1, r0, #0xff
	mov r0, #0
	bl FUN_037FE32C
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_037FE248

	arm_func_start FUN_037FE274
FUN_037FE274: ; 0x037FE274
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0
	bl FUN_037FE298
	orr r1, r0, r4
	mov r0, #0
	bl FUN_037FE32C
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_037FE274

	arm_func_start FUN_037FE298
FUN_037FE298: ; 0x037FE298
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, _037FE324 ; =0x040001C0
_037FE2A4:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _037FE2A4
	bl FUN_037FE3A0
	mov r0, #1
	bl FUN_037FE3B8
	orr r0, r4, #0x80
	and r0, r0, #0xff
	and r1, r0, #0xff
	ldr r0, _037FE328 ; =0x040001C2
	strh r1, [r0]
	ldr r1, _037FE324 ; =0x040001C0
_037FE2D4:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _037FE2D4
	mov r0, #0
	bl FUN_037FE3B8
	mov r1, #0
	ldr r0, _037FE328 ; =0x040001C2
	strh r1, [r0]
	ldr r1, _037FE324 ; =0x040001C0
_037FE2F8:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _037FE2F8
	ldr r0, _037FE328 ; =0x040001C2
	ldrh r0, [r0]
	and r0, r0, #0xff
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	and r0, r0, #0xff
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_037FE324: .word 0x040001C0
_037FE328: .word 0x040001C2
	arm_func_end FUN_037FE298

	arm_func_start FUN_037FE32C
FUN_037FE32C: ; 0x037FE32C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	ldr r1, _037FE398 ; =0x040001C0
_037FE340:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _037FE340
	bl FUN_037FE3A0
	mov r0, #1
	bl FUN_037FE3B8
	and r0, r5, #0xff
	and r1, r0, #0xff
	ldr r0, _037FE39C ; =0x040001C2
	strh r1, [r0]
	ldr r1, _037FE398 ; =0x040001C0
_037FE36C:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _037FE36C
	mov r0, #0
	bl FUN_037FE3B8
	and r1, r4, #0xff
	ldr r0, _037FE39C ; =0x040001C2
	strh r1, [r0]
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_037FE398: .word 0x040001C0
_037FE39C: .word 0x040001C2
	arm_func_end FUN_037FE32C

	arm_func_start FUN_037FE3A0
FUN_037FE3A0: ; 0x037FE3A0
	ldr r1, _037FE3B0 ; =0x00008202
	ldr r0, _037FE3B4 ; =0x040001C0
	strh r1, [r0]
	bx lr
	.align 2, 0
_037FE3B0: .word 0x00008202
_037FE3B4: .word 0x040001C0
	arm_func_end FUN_037FE3A0

	arm_func_start FUN_037FE3B8
FUN_037FE3B8: ; 0x037FE3B8
	ldr r1, _037FE3CC ; =0x00008002
	orr r1, r1, r0, lsl #11
	ldr r0, _037FE3D0 ; =0x040001C0
	strh r1, [r0]
	bx lr
	.align 2, 0
_037FE3CC: .word 0x00008002
_037FE3D0: .word 0x040001C0
	arm_func_end FUN_037FE3B8

	arm_func_start FUN_037FE3D4
FUN_037FE3D4: ; 0x037FE3D4
	stmdb sp!, {r4, lr}
	mov r4, r0
	cmp r4, #1
	beq _037FE3F8
	cmp r4, #2
	beq _037FE410
	cmp r4, #3
	beq _037FE404
	b _037FE424
_037FE3F8:
	mov r0, #0x10
	bl FUN_037FE248
	b _037FE428
_037FE404:
	mov r0, #0x30
	bl FUN_037FE274
	b _037FE428
_037FE410:
	mov r0, #0x20
	bl FUN_037FE248
	mov r0, #0x10
	bl FUN_037FE274
	b _037FE428
_037FE424:
	bl FUN_037FAEA0
_037FE428:
	ldr r0, _037FE438 ; =_03801F6C
	str r4, [r0]
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_037FE438: .word _03801F6C
	arm_func_end FUN_037FE3D4

	arm_func_start FUN_037FE43C
FUN_037FE43C: ; 0x037FE43C
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r0, #0xf
	addls pc, pc, r0, lsl #2
	b _037FE55C
_037FE450: ; jump table
	b _037FE55C ; case 0
	b _037FE490 ; case 1
	b _037FE4A4 ; case 2
	b _037FE4B8 ; case 3
	b _037FE4CC ; case 4
	b _037FE4D8 ; case 5
	b _037FE4E4 ; case 6
	b _037FE4F0 ; case 7
	b _037FE4FC ; case 8
	b _037FE508 ; case 9
	b _037FE514 ; case 10
	b _037FE520 ; case 11
	b _037FE52C ; case 12
	b _037FE538 ; case 13
	b _037FE550 ; case 14
	b _037FE544 ; case 15
_037FE490:
	mov r0, #1
	bl FUN_037FE760
	mov r0, #1
	bl FUN_037FE3D4
	b _037FE55C
_037FE4A4:
	mov r0, #3
	bl FUN_037FE760
	mov r0, #3
	bl FUN_037FE3D4
	b _037FE55C
_037FE4B8:
	mov r0, #2
	bl FUN_037FE760
	mov r0, #2
	bl FUN_037FE3D4
	b _037FE55C
_037FE4CC:
	mov r0, #4
	bl FUN_037FE274
	b _037FE55C
_037FE4D8:
	mov r0, #4
	bl FUN_037FE248
	b _037FE55C
_037FE4E4:
	mov r0, #8
	bl FUN_037FE274
	b _037FE55C
_037FE4F0:
	mov r0, #8
	bl FUN_037FE248
	b _037FE55C
_037FE4FC:
	mov r0, #0xc
	bl FUN_037FE274
	b _037FE55C
_037FE508:
	mov r0, #0xc
	bl FUN_037FE248
	b _037FE55C
_037FE514:
	mov r0, #1
	bl FUN_037FE274
	b _037FE55C
_037FE520:
	mov r0, #1
	bl FUN_037FE248
	b _037FE55C
_037FE52C:
	mov r0, #2
	bl FUN_037FE248
	b _037FE55C
_037FE538:
	mov r0, #2
	bl FUN_037FE274
	b _037FE55C
_037FE544:
	mov r0, #0x40
	bl FUN_037FE248
	b _037FE55C
_037FE550:
	bl FUN_037FB660
	mov r0, #0x40
	bl FUN_037FE274
_037FE55C:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_037FE43C

	arm_func_start FUN_037FE568
FUN_037FE568: ; 0x037FE568
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	mov r5, #0
	ldr r0, _037FE72C ; =0x04000208
	ldrh r4, [r0]
	strh r5, [r0]
	bl FUN_037FAD78
	mov sb, r0
	mvn r0, #0xfe000000
	bl FUN_037F8774
	mov r8, r0
	mov r0, r5
	bl FUN_037FE298
	mov r7, r0
	mov r0, #2
	bl FUN_037FE760
	mov r0, #2
	bl FUN_037FE3D4
	mov r0, #2
	bl FUN_037FE3D4
	bl FUN_037FB660
	mov r0, #1
	bl FUN_037FE248
	ldr r0, _037FE730 ; =_03803F20
	ldrh r0, [r0]
	ands r0, r0, #1
	beq _037FE5F0
	ldr r0, _037FE734 ; =_03803F1C
	ldrh r0, [r0]
	orr r1, r0, #0x4000
	ldr r0, _037FE738 ; =0x04000132
	strh r1, [r0]
	mov r0, #0x1000
	bl FUN_037F87B0
_037FE5F0:
	ldr r0, _037FE730 ; =_03803F20
	ldrh r0, [r0]
	ands r0, r0, #4
	beq _037FE608
	mov r0, #0x400000
	bl FUN_037F87B0
_037FE608:
	ldr r0, _037FE730 ; =_03803F20
	ldrh r0, [r0]
	ands r0, r0, #2
	beq _037FE64C
	ldr r0, _037FE73C ; =0x04000134
	ldrh r6, [r0]
	mov r5, #1
	mov r0, #0x8000
	bl FUN_037FB4F0
	mov r0, #0x40
	mov r1, #0
	bl FUN_037FB50C
	mov r0, #0x100
	mov r1, r0
	bl FUN_037FB50C
	mov r0, #0x80
	bl FUN_037F87B0
_037FE64C:
	ldr r0, _037FE730 ; =_03803F20
	ldrh r0, [r0]
	ands r0, r0, #8
	beq _037FE664
	mov r0, #0x100000
	bl FUN_037F87B0
_037FE664:
	ldr r0, _037FE730 ; =_03803F20
	ldrh r0, [r0]
	ands r0, r0, #0x10
	beq _037FE67C
	mov r0, #0x2000
	bl FUN_037F87B0
_037FE67C:
	mov r0, sb
	bl FUN_037FAD8C
	ldr r1, _037FE72C ; =0x04000208
	ldrh r0, [r1]
	mov r0, #1
	strh r0, [r1]
	bl FUN_037FE744
	mov r0, #0
	mov r1, r7
	bl FUN_037FE32C
	ldr r0, _037FE730 ; =_03803F20
	ldrh r1, [r0]
	ands r0, r1, #0x20
	movne r0, #6
	moveq r0, #7
	ands r1, r1, #0x40
	movne r7, #4
	moveq r7, #5
	bl FUN_037FE43C
	mov r0, r7
	bl FUN_037FE43C
	cmp r5, #0
	ldrne r0, _037FE73C ; =0x04000134
	strneh r6, [r0]
	mov r0, #1
	bl FUN_037FE274
	bl FUN_037FB60C
	mov r1, #0
	ldr r0, _037FE740 ; =_03803F28
	str r1, [r0, #0x20]
	mov r0, #0x62
	mov r2, r1
	bl FUN_037FE1EC
	bl FUN_037FAD78
	mov r0, r8
	bl FUN_037F87E8
	mov r0, sb
	bl FUN_037FAD8C
	ldr r1, _037FE72C ; =0x04000208
	ldrh r0, [r1]
	strh r4, [r1]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	.align 2, 0
_037FE72C: .word 0x04000208
_037FE730: .word _03803F20
_037FE734: .word _03803F1C
_037FE738: .word 0x04000132
_037FE73C: .word 0x04000134
_037FE740: .word _03803F28
	arm_func_end FUN_037FE568

	arm_func_start FUN_037FE744
FUN_037FE744: ; 0x037FE744
	ldr ip, _037FE74C ; =SVC_Stop
	bx ip
	.align 2, 0
_037FE74C: .word SVC_Stop
	arm_func_end FUN_037FE744

	arm_func_start FUN_037FE750
FUN_037FE750: ; 0x037FE750
	ldr r0, _037FE75C ; =_03803F58
	ldr r0, [r0]
	bx lr
	.align 2, 0
_037FE75C: .word _03803F58
	arm_func_end FUN_037FE750

	arm_func_start FUN_037FE760
FUN_037FE760: ; 0x037FE760
	cmp r0, #0xf
	ldrle r1, _037FE77C ; =_03803F58
	strle r0, [r1]
	movle r1, #0
	ldrle r0, _037FE780 ; =_03803F54
	strle r1, [r0]
	bx lr
	.align 2, 0
_037FE77C: .word _03803F58
_037FE780: .word _03803F54
	arm_func_end FUN_037FE760

	arm_func_start FUN_037FE784
FUN_037FE784: ; 0x037FE784
	stmdb sp!, {r4, r5, r6, lr}
	ldr r0, _037FE89C ; =_03803F58
	ldr r3, [r0]
	cmp r3, #0
	bne _037FE7C0
	mov r0, #3
	mov r1, #0x66
	mov r2, #1
	mov r3, r2
	bl FUN_037FCDEC
	cmp r0, #0
	beq _037FE894
	mov r0, #1
	bl FUN_037FE760
	b _037FE894
_037FE7C0:
	cmp r3, #4
	bge _037FE7EC
	ldr r0, _037FE8A0 ; =_03801F6C
	ldr r0, [r0]
	cmp r3, r0
	beq _037FE894
	mov r0, #3
	mov r1, #0x66
	mov r2, #1
	bl FUN_037FCDEC
	b _037FE894
_037FE7EC:
	ldr r6, _037FE8A4 ; =_03801F70
	sub r1, r3, #4
	mov r0, #0xc
	mul r5, r1, r0
	add r4, r6, r5
	ldr r0, _037FE8A8 ; =_03803F54
	ldr r0, [r0]
	ldrh r1, [r4, #0xa]
	bl FUN_03801A54
	ldr r5, [r6, r5]
	ldr lr, [r4, #4]
	mov r3, #0
	mov r2, #0x80000000
	mov ip, r3, lsr r0
	rsb r1, r0, #0x20
	orr ip, ip, r2, lsl r1
	sub r1, r0, #0x20
	orr ip, ip, r2, lsr r1
	and r0, lr, r2, lsr r0
	and r1, r5, ip
	cmp r0, r3
	cmpeq r1, r3
	movne r3, #1
	moveq r3, #2
	ldr r0, _037FE8A8 ; =_03803F54
	ldr r1, [r0]
	add ip, r1, #1
	str ip, [r0]
	ldrh r2, [r4, #8]
	ldrh r1, [r4, #0xa]
	mul r1, r2, r1
	cmp ip, r1
	movhs r1, #0
	strhs r1, [r0]
	ldr r0, _037FE8A0 ; =_03801F6C
	ldr r0, [r0]
	cmp r3, r0
	beq _037FE894
	mov r0, #3
	mov r1, #0x66
	mov r2, #1
	bl FUN_037FCDEC
_037FE894:
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_037FE89C: .word _03803F58
_037FE8A0: .word _03801F6C
_037FE8A4: .word _03801F70
_037FE8A8: .word _03803F54
	arm_func_end FUN_037FE784

	arm_func_start FUN_037FE8AC
FUN_037FE8AC: ; 0x037FE8AC
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov lr, #0
	mov r2, lr
	b _037FE8DC
_037FE8C0:
	mov r1, r2, lsl #2
	mov r1, r0, lsr r1
	and r1, r1, #0xf
	cmp r1, #0xa
	movhs r0, #0
	bhs _037FE918
	add r2, r2, #1
_037FE8DC:
	cmp r2, #8
	blt _037FE8C0
	mov r3, #0
	mov ip, #1
	mov r2, #0xa
_037FE8F0:
	mov r1, r3, lsl #2
	mov r1, r0, lsr r1
	and r1, r1, #0xf
	mla lr, ip, r1, lr
	add r3, r3, #1
	mul r1, ip, r2
	mov ip, r1
	cmp r3, #8
	blt _037FE8F0
	mov r0, lr
_037FE918:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_037FE8AC

	arm_func_start FUN_037FE924
FUN_037FE924: ; 0x037FE924
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	sub r0, r7, #1
	cmp r0, #1
	subls r8, r8, #1
	addls r7, r7, #0xc
	mov r0, r8
	mov r1, #0x190
	bl FUN_03801A54
	mov r5, r0
	mov r0, r8
	mov r1, #0x64
	bl FUN_03801A54
	mov r4, r0
	mov r0, #0xd
	mul r0, r7, r0
	add r0, r0, #8
	mov r1, #5
	bl FUN_03801A54
	add r1, r8, r8, lsr #2
	sub r1, r1, r4
	add r1, r5, r1
	add r0, r1, r0
	add r0, r6, r0
	mov r1, #7
	bl FUN_03801A54
	mov r0, r1
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	arm_func_end FUN_037FE924

	arm_func_start FUN_037FE9A0
FUN_037FE9A0: ; 0x037FE9A0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	add r0, sp, #0
	bl FUN_037FF668
	add r0, sp, #2
	bl FUN_037FF610
	ldrh r0, [sp]
	mov r1, r0, lsl #0x18
	movs r1, r1, lsr #0x1f
	bne _037FE9E4
	mov r0, r0, lsl #0x19
	movs r0, r0, lsr #0x1f
	bne _037FE9E4
	ldrh r0, [sp, #2]
	mov r0, r0, lsl #0x18
	movs r0, r0, lsr #0x1f
	beq _037FE9FC
_037FE9E4:
	ldrh r0, [sp]
	bic r0, r0, #1
	orr r0, r0, #1
	strh r0, [sp]
	add r0, sp, #0
	bl FUN_037FF63C
_037FE9FC:
	ldrh r0, [sp]
	mov r1, r0, lsl #0x1b
	movs r1, r1, lsr #0x1f
	bne _037FEA18
	mov r0, r0, lsl #0x1a
	movs r0, r0, lsr #0x1f
	beq _037FEA38
_037FEA18:
	ldrh r0, [sp, #2]
	bic r0, r0, #0xf
	strh r0, [sp, #2]
	ldrh r0, [sp, #2]
	bic r0, r0, #0x40
	strh r0, [sp, #2]
	add r0, sp, #2
	bl FUN_037FF5E4
_037FEA38:
	ldr r0, _037FEAD0 ; =0x027FFDE8
	bl FUN_037FF924
	ldr r0, _037FEAD0 ; =0x027FFDE8
	ldrb r0, [r0]
	bl FUN_037FE8AC
	mov r4, r0
	ldr r0, _037FEAD0 ; =0x027FFDE8
	ldr r0, [r0]
	mov r0, r0, lsl #0x13
	mov r0, r0, lsr #0x1b
	bl FUN_037FE8AC
	mov r5, r0
	ldr r0, _037FEAD0 ; =0x027FFDE8
	ldr r0, [r0]
	mov r0, r0, lsl #0xa
	mov r0, r0, lsr #0x1a
	bl FUN_037FE8AC
	mov r2, r0
	add r0, r4, #0x7d0
	mov r1, r5
	bl FUN_037FE924
	ldr r2, _037FEAD0 ; =0x027FFDE8
	ldr r1, [r2]
	mov r3, r1, lsl #5
	mov r3, r3, lsr #0x1d
	cmp r3, r0
	beq _037FEABC
	bic r1, r1, #0x7000000
	and r0, r0, #7
	orr r0, r1, r0, lsl #24
	str r0, [r2]
	mov r0, r2
	bl FUN_037FF8F8
_037FEABC:
	mov r0, #1
	bl FUN_037FF950
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_037FEAD0: .word 0x027FFDE8
	arm_func_end FUN_037FE9A0

	arm_func_start FUN_037FEAD4
FUN_037FEAD4: ; 0x037FEAD4
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	add r0, sp, #0
	bl FUN_037FF668
	ldrh r0, [sp]
	mov r1, r0, lsl #0x1b
	movs r1, r1, lsr #0x1f
	bne _037FEB00
	mov r0, r0, lsl #0x1a
	movs r0, r0, lsr #0x1f
	beq _037FEB58
_037FEB00:
	add r0, sp, #2
	bl FUN_037FF610
	mov r4, #0
	ldrh r0, [sp]
	mov r0, r0, lsl #0x1b
	movs r0, r0, lsr #0x1f
	orrne r4, r4, #1
	ldrneh r0, [sp, #2]
	bicne r0, r0, #0xf
	strneh r0, [sp, #2]
	ldrh r0, [sp]
	mov r0, r0, lsl #0x1a
	movs r0, r0, lsr #0x1f
	orrne r4, r4, #2
	ldrneh r0, [sp, #2]
	bicne r0, r0, #0x40
	strneh r0, [sp, #2]
	add r0, sp, #2
	bl FUN_037FF5E4
	mov r0, #0x30
	mov r1, r4
	bl FUN_037FF020
_037FEB58:
	add sp, sp, #8
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_037FEAD4

	arm_func_start FUN_037FEB64
FUN_037FEB64: ; 0x037FEB64
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x4c
	ldr r6, _037FF014 ; =0x027FFDE8
	add r5, r6, #4
	mov r7, #0
	ldr sb, _037FF018 ; =_03803F60
	mov r8, #1
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0x11
	str r0, [sp, #4]
	mov r0, #0x12
	str r0, [sp, #8]
	mov sl, #0x13
	mov r4, #2
	mov fp, #0x14
	mov r0, #0x15
	str r0, [sp, #0xc]
	mov r0, #0x16
	str r0, [sp, #0x10]
	mov r0, #0x17
	str r0, [sp, #0x14]
	mov r0, #0x18
	str r0, [sp, #0x18]
	mov r0, #0x19
	str r0, [sp, #0x1c]
	mov r0, #0x20
	str r0, [sp, #0x20]
	mov r0, #0x21
	str r0, [sp, #0x24]
	mov r0, #0x22
	str r0, [sp, #0x28]
	mov r0, #0x23
	str r0, [sp, #0x2c]
	mov r0, #0x24
	str r0, [sp, #0x30]
	mov r0, #0x25
	str r0, [sp, #0x34]
	mov r0, #0x26
	str r0, [sp, #0x38]
	mov r0, #0x27
	str r0, [sp, #0x3c]
	mov r0, #0x28
	str r0, [sp, #0x40]
	mov r0, #0x29
	str r0, [sp, #0x44]
_037FEC1C:
	mov r0, sb
	add r1, sp, #0x48
	mov r2, r8
	bl FUN_037F9750
	ldr r0, _037FF01C ; =_03804060
	ldrh r0, [r0, #0xd8]
	cmp r0, #0x29
	addls pc, pc, r0, lsl #2
	b _037FF004
_037FEC40: ; jump table
	b _037FECE8 ; case 0
	b _037FED00 ; case 1
	b _037FF004 ; case 2
	b _037FF004 ; case 3
	b _037FF004 ; case 4
	b _037FF004 ; case 5
	b _037FF004 ; case 6
	b _037FF004 ; case 7
	b _037FF004 ; case 8
	b _037FF004 ; case 9
	b _037FF004 ; case 10
	b _037FF004 ; case 11
	b _037FF004 ; case 12
	b _037FF004 ; case 13
	b _037FF004 ; case 14
	b _037FF004 ; case 15
	b _037FED24 ; case 16
	b _037FED40 ; case 17
	b _037FED5C ; case 18
	b _037FED78 ; case 19
	b _037FEDB0 ; case 20
	b _037FEDE8 ; case 21
	b _037FEE20 ; case 22
	b _037FEE3C ; case 23
	b _037FEE58 ; case 24
	b _037FEE74 ; case 25
	b _037FF004 ; case 26
	b _037FF004 ; case 27
	b _037FF004 ; case 28
	b _037FF004 ; case 29
	b _037FF004 ; case 30
	b _037FF004 ; case 31
	b _037FEE90 ; case 32
	b _037FEEAC ; case 33
	b _037FEED0 ; case 34
	b _037FEEEC ; case 35
	b _037FEF24 ; case 36
	b _037FEF5C ; case 37
	b _037FEF94 ; case 38
	b _037FEFB0 ; case 39
	b _037FEFCC ; case 40
	b _037FEFE8 ; case 41
_037FECE8:
	bl FUN_037FFA50
	str r7, [sb, #0x1d4]
	mov r0, r7
	mov r1, r7
	bl FUN_037FF020
	b _037FEC1C
_037FED00:
	ldrh r0, [r6]
	mov r0, r0, lsl #0x1e
	mov r0, r0, lsr #0x1f
	bl FUN_037FF950
	str r7, [sb, #0x1d4]
	mov r0, r8
	mov r1, r7
	bl FUN_037FF020
	b _037FEC1C
_037FED24:
	mov r0, r6
	bl FUN_037FF924
	str r7, [sb, #0x1d4]
	ldr r0, [sp]
	mov r1, r7
	bl FUN_037FF020
	b _037FEC1C
_037FED40:
	mov r0, r6
	bl FUN_037FF8CC
	str r7, [sb, #0x1d4]
	ldr r0, [sp, #4]
	mov r1, r7
	bl FUN_037FF020
	b _037FEC1C
_037FED5C:
	add r0, r6, #4
	bl FUN_037FF8A0
	str r7, [sb, #0x1d4]
	ldr r0, [sp, #8]
	mov r1, r7
	bl FUN_037FF020
	b _037FEC1C
_037FED78:
	mov r0, r5
	bl FUN_037FF820
	cmp r0, #0
	bne _037FED9C
	str r7, [sb, #0x1d4]
	mov r0, sl
	mov r1, r4
	bl FUN_037FF020
	b _037FEC1C
_037FED9C:
	str r7, [sb, #0x1d4]
	mov r0, sl
	mov r1, r7
	bl FUN_037FF020
	b _037FEC1C
_037FEDB0:
	mov r0, r5
	bl FUN_037FF77C
	cmp r0, #0
	bne _037FEDD4
	str r7, [sb, #0x1d4]
	mov r0, fp
	mov r1, r4
	bl FUN_037FF020
	b _037FEC1C
_037FEDD4:
	str r7, [sb, #0x1d4]
	mov r0, fp
	mov r1, r7
	bl FUN_037FF020
	b _037FEC1C
_037FEDE8:
	mov r0, r5
	bl FUN_037FF6E0
	cmp r0, #0
	bne _037FEE0C
	str r7, [sb, #0x1d4]
	ldr r0, [sp, #0xc]
	mov r1, r4
	bl FUN_037FF020
	b _037FEC1C
_037FEE0C:
	str r7, [sb, #0x1d4]
	ldr r0, [sp, #0xc]
	mov r1, r7
	bl FUN_037FF020
	b _037FEC1C
_037FEE20:
	mov r0, r6
	bl FUN_037FF668
	str r7, [sb, #0x1d4]
	ldr r0, [sp, #0x10]
	mov r1, r7
	bl FUN_037FF020
	b _037FEC1C
_037FEE3C:
	add r0, r6, #2
	bl FUN_037FF610
	str r7, [sb, #0x1d4]
	ldr r0, [sp, #0x14]
	mov r1, r7
	bl FUN_037FF020
	b _037FEC1C
_037FEE58:
	add r0, r6, #4
	bl FUN_037FF5B8
	str r7, [sb, #0x1d4]
	ldr r0, [sp, #0x18]
	mov r1, r7
	bl FUN_037FF020
	b _037FEC1C
_037FEE74:
	add r0, r6, #4
	bl FUN_037FF560
	str r7, [sb, #0x1d4]
	ldr r0, [sp, #0x1c]
	mov r1, r7
	bl FUN_037FF020
	b _037FEC1C
_037FEE90:
	mov r0, r6
	bl FUN_037FF8F8
	str r7, [sb, #0x1d4]
	ldr r0, [sp, #0x20]
	mov r1, r7
	bl FUN_037FF020
	b _037FEC1C
_037FEEAC:
	add r0, r6, #4
	bl FUN_037FF8A0
	mov r0, r6
	bl FUN_037FF8F8
	str r7, [sb, #0x1d4]
	ldr r0, [sp, #0x24]
	mov r1, r7
	bl FUN_037FF020
	b _037FEC1C
_037FEED0:
	add r0, r6, #4
	bl FUN_037FF874
	str r7, [sb, #0x1d4]
	ldr r0, [sp, #0x28]
	mov r1, r7
	bl FUN_037FF020
	b _037FEC1C
_037FEEEC:
	mov r0, r5
	bl FUN_037FF7CC
	cmp r0, #0
	bne _037FEF10
	str r7, [sb, #0x1d4]
	ldr r0, [sp, #0x2c]
	mov r1, r4
	bl FUN_037FF020
	b _037FEC1C
_037FEF10:
	str r7, [sb, #0x1d4]
	ldr r0, [sp, #0x2c]
	mov r1, r7
	bl FUN_037FF020
	b _037FEC1C
_037FEF24:
	mov r0, r5
	bl FUN_037FF72C
	cmp r0, #0
	bne _037FEF48
	str r7, [sb, #0x1d4]
	ldr r0, [sp, #0x30]
	mov r1, r4
	bl FUN_037FF020
	b _037FEC1C
_037FEF48:
	str r7, [sb, #0x1d4]
	ldr r0, [sp, #0x30]
	mov r1, r7
	bl FUN_037FF020
	b _037FEC1C
_037FEF5C:
	mov r0, r5
	bl FUN_037FF694
	cmp r0, #0
	bne _037FEF80
	str r7, [sb, #0x1d4]
	ldr r0, [sp, #0x34]
	mov r1, r4
	bl FUN_037FF020
	b _037FEC1C
_037FEF80:
	str r7, [sb, #0x1d4]
	ldr r0, [sp, #0x34]
	mov r1, r7
	bl FUN_037FF020
	b _037FEC1C
_037FEF94:
	mov r0, r6
	bl FUN_037FF63C
	str r7, [sb, #0x1d4]
	ldr r0, [sp, #0x38]
	mov r1, r7
	bl FUN_037FF020
	b _037FEC1C
_037FEFB0:
	add r0, r6, #2
	bl FUN_037FF5E4
	str r7, [sb, #0x1d4]
	ldr r0, [sp, #0x3c]
	mov r1, r7
	bl FUN_037FF020
	b _037FEC1C
_037FEFCC:
	add r0, r6, #4
	bl FUN_037FF58C
	str r7, [sb, #0x1d4]
	ldr r0, [sp, #0x40]
	mov r1, r7
	bl FUN_037FF020
	b _037FEC1C
_037FEFE8:
	add r0, r6, #4
	bl FUN_037FF534
	str r7, [sb, #0x1d4]
	ldr r0, [sp, #0x44]
	mov r1, r7
	bl FUN_037FF020
	b _037FEC1C
_037FF004:
	str r7, [sb, #0x1d4]
	mov r1, r8
	bl FUN_037FF020
	b _037FEC1C
	.align 2, 0
_037FF014: .word 0x027FFDE8
_037FF018: .word _03803F60
_037FF01C: .word _03804060
	arm_func_end FUN_037FEB64

	arm_func_start FUN_037FF020
FUN_037FF020: ; 0x037FF020
	stmdb sp!, {r4, r5, r6, lr}
	mov r0, r0, lsl #8
	and r0, r0, #0x7f00
	orr r2, r0, #0x8000
	and r0, r1, #0xff
	orr r6, r2, r0
	mov r5, #5
	mov r4, #0
_037FF040:
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl FUN_037FB2DC
	cmp r0, #0
	blt _037FF040
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	arm_func_end FUN_037FF020

	arm_func_start FUN_037FF060
FUN_037FF060: ; 0x037FF060
	stmdb sp!, {r4, lr}
	cmp r2, #0
	bne _037FF18C
	and r0, r1, #0x7f00
	mov r0, r0, lsl #8
	mov r4, r0, lsr #0x10
	cmp r4, #0x29
	addls pc, pc, r4, lsl #2
	b _037FF180
_037FF084: ; jump table
	b _037FF12C ; case 0
	b _037FF12C ; case 1
	b _037FF180 ; case 2
	b _037FF180 ; case 3
	b _037FF180 ; case 4
	b _037FF180 ; case 5
	b _037FF180 ; case 6
	b _037FF180 ; case 7
	b _037FF180 ; case 8
	b _037FF180 ; case 9
	b _037FF180 ; case 10
	b _037FF180 ; case 11
	b _037FF180 ; case 12
	b _037FF180 ; case 13
	b _037FF180 ; case 14
	b _037FF180 ; case 15
	b _037FF12C ; case 16
	b _037FF12C ; case 17
	b _037FF12C ; case 18
	b _037FF12C ; case 19
	b _037FF12C ; case 20
	b _037FF12C ; case 21
	b _037FF12C ; case 22
	b _037FF12C ; case 23
	b _037FF12C ; case 24
	b _037FF12C ; case 25
	b _037FF180 ; case 26
	b _037FF180 ; case 27
	b _037FF180 ; case 28
	b _037FF180 ; case 29
	b _037FF180 ; case 30
	b _037FF180 ; case 31
	b _037FF180 ; case 32
	b _037FF180 ; case 33
	b _037FF180 ; case 34
	b _037FF12C ; case 35
	b _037FF12C ; case 36
	b _037FF12C ; case 37
	b _037FF12C ; case 38
	b _037FF12C ; case 39
	b _037FF12C ; case 40
	b _037FF12C ; case 41
_037FF12C:
	ldr r0, _037FF194 ; =_03803F60
	ldr r1, [r0, #0x1d4]
	cmp r1, #0
	beq _037FF14C
	mov r0, r4
	mov r1, #3
	bl FUN_037FF020
	b _037FF18C
_037FF14C:
	mov r1, #1
	str r1, [r0, #0x1d4]
	ldr r1, _037FF198 ; =_03804060
	strh r4, [r1, #0xd8]
	mov r1, #0
	mov r2, r1
	bl FUN_037F97F0
	cmp r0, #0
	bne _037FF18C
	mov r0, r4
	mov r1, #4
	bl FUN_037FF020
	b _037FF18C
_037FF180:
	mov r0, r4
	mov r1, #1
	bl FUN_037FF020
_037FF18C:
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_037FF194: .word _03803F60
_037FF198: .word _03804060
	arm_func_end FUN_037FF060

	arm_func_start FUN_037FF19C
FUN_037FF19C: ; 0x037FF19C
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, _037FF270 ; =_03803F5C
	ldrh r1, [r0]
	cmp r1, #0
	bne _037FF264
	mov r1, #1
	strh r1, [r0]
	ldr r0, _037FF274 ; =_03803F60
	str r1, [r0, #0x1d4]
	bl FUN_037FE9A0
	mov r1, #0
	ldr r0, _037FF274 ; =_03803F60
	str r1, [r0, #0x1d4]
	bl FUN_037FB1B0
	mov r0, #5
	ldr r1, _037FF278 ; =FUN_037FF060
	bl FUN_037FB3A8
	ldr r0, _037FF274 ; =_03803F60
	ldr r1, _037FF27C ; =_03803F80
	mov r2, #4
	bl FUN_037F9884
	mov r0, #0x100
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, _037FF280 ; =_03803F90
	ldr r1, _037FF284 ; =FUN_037FEB64
	mov r2, #0
	ldr r3, _037FF288 ; =_03804134
	bl FUN_037F9110
	ldr r0, _037FF280 ; =_03803F90
	bl FUN_037F8ED0
	mov r0, #0x8000
	bl FUN_037FB4F0
	mov r0, #0x40
	mov r1, #0
	bl FUN_037FB50C
	mov r0, #0x100
	mov r1, r0
	bl FUN_037FB50C
	bl FUN_037FAD78
	mov r4, r0
	mov r0, #0x80
	ldr r1, _037FF28C ; =FUN_037FEAD4
	bl FUN_037F8868
	mov r0, #0x80
	bl FUN_037F87B0
	mov r0, r4
	bl FUN_037FAD8C
_037FF264:
	add sp, sp, #8
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_037FF270: .word _03803F5C
_037FF274: .word _03803F60
_037FF278: .word FUN_037FF060
_037FF27C: .word _03803F80
_037FF280: .word _03803F90
_037FF284: .word FUN_037FEB64
_037FF288: .word _03804134
_037FF28C: .word FUN_037FEAD4
	arm_func_end FUN_037FF19C

	arm_func_start FUN_037FF290
FUN_037FF290: ; 0x037FF290
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl FUN_037FFA90
	mov r0, r7
	mov r1, r6
	bl FUN_037FFB04
	cmp r7, #6
	beq _037FF2D8
	cmp r7, #0x86
	bne _037FF2E4
	mov r0, r5
	mov r1, r4
	bl FUN_037FFC04
	b _037FF2E4
_037FF2D8:
	mov r0, r5
	mov r1, r4
	bl FUN_037FFB74
_037FF2E4:
	bl FUN_037FFAD0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end FUN_037FF290

	arm_func_start FUN_037FF2F4
FUN_037FF2F4: ; 0x037FF2F4
	ldr r2, [r0]
	mov r1, r2, lsl #0x12
	mov r3, r1, lsr #0x1a
	cmp r3, #0x23
	addls pc, pc, r3, lsl #2
	b _037FF3F0
_037FF30C: ; jump table
	b _037FF39C ; case 0
	b _037FF39C ; case 1
	b _037FF39C ; case 2
	b _037FF39C ; case 3
	b _037FF39C ; case 4
	b _037FF39C ; case 5
	b _037FF39C ; case 6
	b _037FF39C ; case 7
	b _037FF3C0 ; case 8
	b _037FF3C0 ; case 9
	b _037FF3F0 ; case 10
	b _037FF3F0 ; case 11
	b _037FF3F0 ; case 12
	b _037FF3F0 ; case 13
	b _037FF3F0 ; case 14
	b _037FF3F0 ; case 15
	b _037FF39C ; case 16
	b _037FF39C ; case 17
	b _037FF3E4 ; case 18
	b _037FF3E4 ; case 19
	b _037FF3E4 ; case 20
	b _037FF3E4 ; case 21
	b _037FF3E4 ; case 22
	b _037FF3E4 ; case 23
	b _037FF3E4 ; case 24
	b _037FF3E4 ; case 25
	b _037FF3F0 ; case 26
	b _037FF3F0 ; case 27
	b _037FF3F0 ; case 28
	b _037FF3F0 ; case 29
	b _037FF3F0 ; case 30
	b _037FF3F0 ; case 31
	b _037FF3E4 ; case 32
	b _037FF3E4 ; case 33
	b _037FF3E4 ; case 34
	b _037FF3E4 ; case 35
_037FF39C:
	mov r1, r2, lsl #0x11
	movs r1, r1, lsr #0x1f
	bxeq lr
	bic r2, r2, #0x3f00
	add r1, r3, #0x12
	and r1, r1, #0x3f
	orr r1, r2, r1, lsl #8
	str r1, [r0]
	bx lr
_037FF3C0:
	mov r1, r2, lsl #0x11
	movs r1, r1, lsr #0x1f
	bxeq lr
	bic r2, r2, #0x3f00
	add r1, r3, #0x18
	and r1, r1, #0x3f
	orr r1, r2, r1, lsl #8
	str r1, [r0]
	bx lr
_037FF3E4:
	orr r1, r2, #0x4000
	str r1, [r0]
	bx lr
_037FF3F0:
	ldr r1, [r0]
	bic r1, r1, #0x4000
	str r1, [r0]
	ldr r1, [r0]
	bic r1, r1, #0x3f00
	str r1, [r0]
	bx lr
	arm_func_end FUN_037FF2F4

	arm_func_start FUN_037FF40C
FUN_037FF40C: ; 0x037FF40C
	ldr r1, [r0]
	mov r2, r1, lsl #0x12
	mov r2, r2, lsr #0x1a
	cmp r2, #0x23
	addls pc, pc, r2, lsl #2
	b _037FF518
_037FF424: ; jump table
	b _037FF4B4 ; case 0
	b _037FF4B4 ; case 1
	b _037FF4B4 ; case 2
	b _037FF4B4 ; case 3
	b _037FF4B4 ; case 4
	b _037FF4B4 ; case 5
	b _037FF4B4 ; case 6
	b _037FF4B4 ; case 7
	b _037FF4B4 ; case 8
	b _037FF4B4 ; case 9
	b _037FF518 ; case 10
	b _037FF518 ; case 11
	b _037FF518 ; case 12
	b _037FF518 ; case 13
	b _037FF518 ; case 14
	b _037FF518 ; case 15
	b _037FF4B4 ; case 16
	b _037FF4B4 ; case 17
	b _037FF4C0 ; case 18
	b _037FF4C0 ; case 19
	b _037FF4C0 ; case 20
	b _037FF4C0 ; case 21
	b _037FF4C0 ; case 22
	b _037FF4C0 ; case 23
	b _037FF4C0 ; case 24
	b _037FF4C0 ; case 25
	b _037FF518 ; case 26
	b _037FF518 ; case 27
	b _037FF518 ; case 28
	b _037FF518 ; case 29
	b _037FF518 ; case 30
	b _037FF518 ; case 31
	b _037FF4EC ; case 32
	b _037FF4EC ; case 33
	b _037FF4C0 ; case 34
	b _037FF4C0 ; case 35
_037FF4B4:
	bic r1, r1, #0x4000
	str r1, [r0]
	bx lr
_037FF4C0:
	orr r1, r1, #0x4000
	str r1, [r0]
	ldr r1, [r0]
	bic r2, r1, #0x3f00
	mov r1, r1, lsl #0x12
	mov r1, r1, lsr #0x1a
	sub r1, r1, #0x12
	and r1, r1, #0x3f
	orr r1, r2, r1, lsl #8
	str r1, [r0]
	bx lr
_037FF4EC:
	orr r1, r1, #0x4000
	str r1, [r0]
	ldr r1, [r0]
	bic r2, r1, #0x3f00
	mov r1, r1, lsl #0x12
	mov r1, r1, lsr #0x1a
	sub r1, r1, #0x18
	and r1, r1, #0x3f
	orr r1, r2, r1, lsl #8
	str r1, [r0]
	bx lr
_037FF518:
	ldr r1, [r0]
	bic r1, r1, #0x4000
	str r1, [r0]
	ldr r1, [r0]
	bic r1, r1, #0x3f00
	str r1, [r0]
	bx lr
	arm_func_end FUN_037FF40C

	arm_func_start FUN_037FF534
FUN_037FF534: ; 0x037FF534
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x8000
	bl FUN_037FB4F0
	mov r0, #6
	mov r1, #0x70
	mov r2, r4
	mov r3, #1
	bl FUN_037FF290
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_037FF534

	arm_func_start FUN_037FF560
FUN_037FF560: ; 0x037FF560
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x8000
	bl FUN_037FB4F0
	mov r0, #0x86
	mov r1, #0x70
	mov r2, r4
	mov r3, #1
	bl FUN_037FF290
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_037FF560

	arm_func_start FUN_037FF58C
FUN_037FF58C: ; 0x037FF58C
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x8000
	bl FUN_037FB4F0
	mov r0, #6
	mov r1, #0x30
	mov r2, r4
	mov r3, #1
	bl FUN_037FF290
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_037FF58C

	arm_func_start FUN_037FF5B8
FUN_037FF5B8: ; 0x037FF5B8
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x8000
	bl FUN_037FB4F0
	mov r0, #0x86
	mov r1, #0x30
	mov r2, r4
	mov r3, #1
	bl FUN_037FF290
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_037FF5B8

	arm_func_start FUN_037FF5E4
FUN_037FF5E4: ; 0x037FF5E4
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x8000
	bl FUN_037FB4F0
	mov r0, #6
	mov r1, #0x40
	mov r2, r4
	mov r3, #1
	bl FUN_037FF290
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_037FF5E4

	arm_func_start FUN_037FF610
FUN_037FF610: ; 0x037FF610
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x8000
	bl FUN_037FB4F0
	mov r0, #0x86
	mov r1, #0x40
	mov r2, r4
	mov r3, #1
	bl FUN_037FF290
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_037FF610

	arm_func_start FUN_037FF63C
FUN_037FF63C: ; 0x037FF63C
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x8000
	bl FUN_037FB4F0
	mov r0, #6
	mov r1, #0
	mov r2, r4
	mov r3, #1
	bl FUN_037FF290
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_037FF63C

	arm_func_start FUN_037FF668
FUN_037FF668: ; 0x037FF668
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x8000
	bl FUN_037FB4F0
	mov r0, #0x86
	mov r1, #0
	mov r2, r4
	mov r3, #1
	bl FUN_037FF290
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_037FF668

	arm_func_start FUN_037FF694
FUN_037FF694: ; 0x037FF694
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	add r0, sp, #0
	bl FUN_037FF610
	ldrh r0, [sp]
	mov r0, r0, lsl #0x19
	movs r0, r0, lsr #0x1f
	moveq r0, #0
	beq _037FF6D4
	mov r0, #6
	mov r1, #0x50
	mov r2, r4
	mov r3, #3
	bl FUN_037FF290
	mov r0, #1
_037FF6D4:
	add sp, sp, #8
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_037FF694

	arm_func_start FUN_037FF6E0
FUN_037FF6E0: ; 0x037FF6E0
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	add r0, sp, #0
	bl FUN_037FF610
	ldrh r0, [sp]
	mov r0, r0, lsl #0x19
	movs r0, r0, lsr #0x1f
	moveq r0, #0
	beq _037FF720
	mov r0, #0x86
	mov r1, #0x50
	mov r2, r4
	mov r3, #3
	bl FUN_037FF290
	mov r0, #1
_037FF720:
	add sp, sp, #8
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_037FF6E0

	arm_func_start FUN_037FF72C
FUN_037FF72C: ; 0x037FF72C
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	add r0, sp, #0
	bl FUN_037FF610
	ldrh r0, [sp]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	cmp r0, #4
	movne r0, #0
	bne _037FF770
	mov r0, #6
	mov r1, #0x10
	mov r2, r4
	mov r3, #3
	bl FUN_037FF290
	mov r0, #1
_037FF770:
	add sp, sp, #8
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_037FF72C

	arm_func_start FUN_037FF77C
FUN_037FF77C: ; 0x037FF77C
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	add r0, sp, #0
	bl FUN_037FF610
	ldrh r0, [sp]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	cmp r0, #4
	movne r0, #0
	bne _037FF7C0
	mov r0, #0x86
	mov r1, #0x10
	mov r2, r4
	mov r3, #3
	bl FUN_037FF290
	mov r0, #1
_037FF7C0:
	add sp, sp, #8
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_037FF77C

	arm_func_start FUN_037FF7CC
FUN_037FF7CC: ; 0x037FF7CC
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	add r0, sp, #0
	bl FUN_037FF610
	ldrh r0, [sp]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	and r0, r0, #0xb
	cmp r0, #1
	movne r0, #0
	bne _037FF814
	mov r0, #6
	mov r1, #0x10
	mov r2, r4
	mov r3, #1
	bl FUN_037FF290
	mov r0, #1
_037FF814:
	add sp, sp, #8
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_037FF7CC

	arm_func_start FUN_037FF820
FUN_037FF820: ; 0x037FF820
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	add r0, sp, #0
	bl FUN_037FF610
	ldrh r0, [sp]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	and r0, r0, #0xb
	cmp r0, #1
	movne r0, #0
	bne _037FF868
	mov r0, #0x86
	mov r1, #0x10
	mov r2, r4
	mov r3, #1
	bl FUN_037FF290
	mov r0, #1
_037FF868:
	add sp, sp, #8
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_037FF820

	arm_func_start FUN_037FF874
FUN_037FF874: ; 0x037FF874
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x8000
	bl FUN_037FB4F0
	mov r0, #6
	mov r1, #0x60
	mov r2, r4
	mov r3, #3
	bl FUN_037FF290
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_037FF874

	arm_func_start FUN_037FF8A0
FUN_037FF8A0: ; 0x037FF8A0
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x8000
	bl FUN_037FB4F0
	mov r0, #0x86
	mov r1, #0x60
	mov r2, r4
	mov r3, #3
	bl FUN_037FF290
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_037FF8A0

	arm_func_start FUN_037FF8CC
FUN_037FF8CC: ; 0x037FF8CC
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x8000
	bl FUN_037FB4F0
	mov r0, #0x86
	mov r1, #0x20
	mov r2, r4
	mov r3, #4
	bl FUN_037FF290
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_037FF8CC

	arm_func_start FUN_037FF8F8
FUN_037FF8F8: ; 0x037FF8F8
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x8000
	bl FUN_037FB4F0
	mov r0, #6
	mov r1, #0x20
	mov r2, r4
	mov r3, #7
	bl FUN_037FF290
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_037FF8F8

	arm_func_start FUN_037FF924
FUN_037FF924: ; 0x037FF924
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x8000
	bl FUN_037FB4F0
	mov r0, #0x86
	mov r1, #0x20
	mov r2, r4
	mov r3, #7
	bl FUN_037FF290
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_037FF924

	arm_func_start FUN_037FF950
FUN_037FF950: ; 0x037FF950
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r4, r0
	and r5, r4, #1
	mov r0, r5, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #1
	bne _037FFA44
	add r0, sp, #0
	bl FUN_037FF668
	ldrh r1, [sp]
	mov r0, r1, lsl #0x1e
	mov r2, r0, lsr #0x1f
	mov r0, r5, lsl #0x10
	cmp r2, r0, lsr #16
	beq _037FFA44
	and r4, r4, #1
	bic r1, r1, #2
	mov r0, r4, lsl #0x10
	mov r0, r0, lsr #0x10
	and r0, r0, #1
	orr r0, r1, r0, lsl #1
	strh r0, [sp]
	add r0, sp, #0
	bl FUN_037FF63C
	mov r0, #0x86
	mov r1, #0x10
	add r2, sp, #4
	mov r3, #3
	bl FUN_037FF290
	mov r0, r4, lsl #0x10
	movs r0, r0, lsr #0x10
	bne _037FF9E0
	add r0, sp, #4
	bl FUN_037FF40C
	b _037FF9E8
_037FF9E0:
	add r0, sp, #4
	bl FUN_037FF2F4
_037FF9E8:
	mov r0, #6
	mov r1, #0x10
	add r2, sp, #4
	mov r3, #3
	bl FUN_037FF290
	mov r0, #0x86
	mov r1, #0x50
	add r2, sp, #4
	mov r3, #3
	bl FUN_037FF290
	mov r0, r5, lsl #0x10
	movs r0, r0, lsr #0x10
	bne _037FFA28
	add r0, sp, #4
	bl FUN_037FF40C
	b _037FFA30
_037FFA28:
	add r0, sp, #4
	bl FUN_037FF2F4
_037FFA30:
	mov r0, #6
	mov r1, #0x50
	add r2, sp, #4
	mov r3, #3
	bl FUN_037FF290
_037FFA44:
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_037FF950

	arm_func_start FUN_037FFA50
FUN_037FFA50: ; 0x037FFA50
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r0, #0x8000
	bl FUN_037FB4F0
	ldrh r0, [sp]
	bic r0, r0, #1
	orr r0, r0, #1
	strh r0, [sp]
	mov r0, #6
	mov r1, #0
	add r2, sp, #0
	mov r3, #1
	bl FUN_037FF290
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_037FFA50

	arm_func_start FUN_037FFA90
FUN_037FFA90: ; 0x037FFA90
	mov ip, #0x4000000
	add ip, ip, #0x138
	ldrh r0, [ip]
	bic r0, r0, #0x77
	orr r0, r0, #0x72
	strh r0, [ip]
	mov r3, #2
_037FFAAC:
	subs r3, r3, #1
	bne _037FFAAC
	bic r0, r0, #4
	orr r0, r0, #4
	strh r0, [ip]
	mov r3, #2
_037FFAC4:
	subs r3, r3, #1
	bne _037FFAC4
	bx lr
	arm_func_end FUN_037FFA90

	arm_func_start FUN_037FFAD0
FUN_037FFAD0: ; 0x037FFAD0
	mov ip, #0x4000000
	add ip, ip, #0x138
	mov r3, #2
_037FFADC:
	subs r3, r3, #1
	bne _037FFADC
	ldrh r0, [ip]
	bic r0, r0, #4
	orr r0, r0, #0
	strh r0, [ip]
	mov r3, #2
_037FFAF8:
	subs r3, r3, #1
	bne _037FFAF8
	bx lr
	arm_func_end FUN_037FFAD0

	arm_func_start FUN_037FFB04
FUN_037FFB04: ; 0x037FFB04
	mov ip, #0x4000000
	add ip, ip, #0x138
	orr r1, r0, r1
	ldrh r0, [ip]
	bic r0, r0, #0x77
	orr r0, r0, #0x74
	mov r2, #0
_037FFB20:
	bic r0, r0, #3
	orr r0, r0, #0
	mov r3, #1
	tst r3, r1, lsr r2
	movne r3, #1
	moveq r3, #0
	orr r0, r0, r3
	strh r0, [ip]
	mov r3, #9
_037FFB44:
	subs r3, r3, #1
	bne _037FFB44
	bic r0, r0, #2
	orr r0, r0, #2
	strh r0, [ip]
	mov r3, #9
_037FFB5C:
	subs r3, r3, #1
	bne _037FFB5C
	add r2, r2, #1
	cmp r2, #8
	bne _037FFB20
	bx lr
	arm_func_end FUN_037FFB04

	arm_func_start FUN_037FFB74
FUN_037FFB74: ; 0x037FFB74
	mov ip, #0x4000000
	add ip, ip, #0x138
_037FFB7C:
	stmdb sp!, {r0, r1}
	tst r0, #1
	ldreqh r1, [r0]
	ldrneh r1, [r0, #-1]
	movne r1, r1, lsr #8
	ldrh r0, [ip]
	bic r0, r0, #0x77
	orr r0, r0, #0x74
	mov r2, #0
_037FFBA0:
	bic r0, r0, #3
	orr r0, r0, #0
	mov r3, #1
	tst r3, r1, lsr r2
	movne r3, #1
	moveq r3, #0
	orr r0, r0, r3
	strh r0, [ip]
	mov r3, #9
_037FFBC4:
	subs r3, r3, #1
	bne _037FFBC4
	bic r0, r0, #2
	orr r0, r0, #2
	strh r0, [ip]
	mov r3, #9
_037FFBDC:
	subs r3, r3, #1
	bne _037FFBDC
	add r2, r2, #1
	cmp r2, #8
	bne _037FFBA0
	ldmia sp!, {r0, r1}
	add r0, r0, #1
	subs r1, r1, #1
	bne _037FFB7C
	bx lr
	arm_func_end FUN_037FFB74

	arm_func_start FUN_037FFC04
FUN_037FFC04: ; 0x037FFC04
	mov ip, #0x4000000
	add ip, ip, #0x138
_037FFC0C:
	stmdb sp!, {r0, r1}
	ldrh r0, [ip]
	bic r0, r0, #0x77
	orr r0, r0, #0x64
	mov r2, #0
	mov r1, #0
_037FFC24:
	bic r0, r0, #3
	orr r0, r0, #0
	strh r0, [ip]
	mov r3, #9
_037FFC34:
	subs r3, r3, #1
	bne _037FFC34
	ldrh r0, [ip]
	and r3, r0, #1
	cmp r3, #1
	moveq r3, #0x80
	movne r3, #0
	orr r2, r3, r2, lsr #1
	bic r0, r0, #2
	orr r0, r0, #2
	strh r0, [ip]
	mov r3, #9
_037FFC64:
	subs r3, r3, #1
	bne _037FFC64
	add r1, r1, #1
	cmp r1, #8
	bne _037FFC24
	ldmia sp!, {r0, r1}
	tst r0, #1
	beq _037FFC9C
	ldrh r3, [r0, #-1]
	bic r3, r3, #0xff00
	mov r2, r2, lsl #8
	orr r3, r2, r3
	strh r3, [r0, #-1]
	b _037FFCAC
_037FFC9C:
	ldrh r3, [r0]
	bic r3, r3, #0xff
	orr r3, r3, r2
	strh r3, [r0]
_037FFCAC:
	add r0, r0, #1
	subs r1, r1, #1
	bne _037FFC0C
	bx lr
	arm_func_end FUN_037FFC04

	arm_func_start FUN_037FFCBC
FUN_037FFCBC: ; 0x037FFCBC
	stmdb sp!, {r4, r5, r6, r7, lr}
	ldr r4, _037FFE14 ; =_03804314
	ldrh r5, [r4, #0x26]
	and r0, r5, #4
	cmp r0, #4
	ldrh r6, [r4, #0x38]
	ldrneh r7, [r4, #0x3a]
	ldreq r7, _037FFE18 ; =0x0000FFFF
	bl FUN_037FCDC4
	cmp r0, #0
	bne _037FFD28
	mov r0, #2
	bl FUN_037FCF1C
	cmp r0, #0
	beq _037FFD28
	and r0, r5, #1
	cmp r0, #1
	bne _037FFD18
	bl FUN_03800474
	tst r5, #2
	moveq r7, r0
	eorne r7, r0, #0x8000
	b _037FFD28
_037FFD18:
	bl FUN_0380053C
	tst r5, #2
	moveq r7, r0
	eorne r7, r0, #0x80
_037FFD28:
	and r0, r5, #1
	ldr r3, _037FFE1C ; =0x027FFC00
	ldr r1, [r4, #0x2c]
	cmp r0, #1
	bne _037FFD58
	ldr r2, [r4, #0x28]
	strh r7, [r2, r1]!
	str r2, [r3, #0x390]
	add r3, r3, #0x394
	strh r7, [r3]
	add r1, r1, #2
	b _037FFD90
_037FFD58:
	and r7, r7, #0xff
	tst r1, #1
	bne _037FFD70
	mov r6, r7
	add r1, r1, #1
	b _037FFD90
_037FFD70:
	orr r0, r6, r7, lsl #8
	ldr r2, [r4, #0x28]
	sub r1, r1, #1
	strh r0, [r2, r1]!
	str r2, [r3, #0x390]
	add r3, r3, #0x394
	strh r0, [r3]
	add r1, r1, #2
_037FFD90:
	strh r6, [r4, #0x38]
	strh r7, [r4, #0x3a]
	ldr r0, [r4, #0x30]
	cmp r1, r0
	movhs r1, #0
	str r1, [r4, #0x2c]
	blo _037FFE0C
	ldrh r0, [r4, #0x24]
	and r0, r0, #0x10
	cmp r0, #0x10
	bne _037FFDCC
	mov r0, #0x51
	mov r1, #0
	bl FUN_037FCF38
	b _037FFE0C
_037FFDCC:
	mov r0, #2
	mov r1, #0x42
	mov r2, #0
	bl FUN_037FCDEC
	cmp r0, #0
	bne _037FFDF4
	mov r0, #0x51
	mov r1, #4
	bl FUN_037FCF38
	b _037FFE0C
_037FFDF4:
	mov r0, #4
	str r0, [r4, #0x20]
	ldr r1, _037FFE20 ; =0x0400010E
	ldrh r0, [r1]
	bic r0, r0, #0x80
	strh r0, [r1]
_037FFE0C:
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_037FFE14: .word _03804314
_037FFE18: .word 0x0000FFFF
_037FFE1C: .word 0x027FFC00
_037FFE20: .word 0x0400010E
	arm_func_end FUN_037FFCBC

	arm_func_start FUN_037FFE24
FUN_037FFE24: ; 0x037FFE24
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_037FFCBC
	ldr r1, _037FFE58 ; =0x0380FFF8
	ldr r0, [r1]
	orr r0, r0, #0x40
	str r0, [r1]
	mov r1, #0x40
	ldr r0, _037FFE5C ; =0x04000214
	str r1, [r0]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_037FFE58: .word 0x0380FFF8
_037FFE5C: .word 0x04000214
	arm_func_end FUN_037FFE24

	arm_func_start FUN_037FFE60
FUN_037FFE60: ; 0x037FFE60
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r2, [r5, #4]
	cmp r2, #0x40
	beq _037FFE8C
	cmp r2, #0x41
	beq _037FFF58
	cmp r2, #0x42
	beq _037FFFF4
	b _03800098
_037FFE8C:
	bl FUN_037FAD78
	mov r4, r0
	mov r0, #2
	bl FUN_037FCF1C
	cmp r0, #0
	bne _037FFEC4
	mov r0, r4
	bl FUN_037FAD8C
	ldr r0, [r5, #4]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, #4
	bl FUN_037FCF38
	b _03800098
_037FFEC4:
	mov r0, #2
	bl FUN_037FCF04
	mov r0, r4
	bl FUN_037FAD8C
	ldr r0, [r5, #8]
	and r0, r0, #1
	cmp r0, #1
	bne _037FFF10
	bl FUN_03800474
	ldr r1, [r5, #8]
	ands r1, r1, #2
	eorne r0, r0, #0x8000
	movne r0, r0, lsl #0x10
	movne r0, r0, lsr #0x10
	ldr r1, _038000A4 ; =0x027FFF94
	strh r0, [r1]
	ldr r0, _038000A8 ; =0x027FFF90
	str r1, [r0]
	b _037FFF38
_037FFF10:
	bl FUN_0380053C
	ldr r1, [r5, #8]
	ands r1, r1, #2
	eorne r0, r0, #0x80
	movne r0, r0, lsl #0x10
	movne r0, r0, lsr #0x10
	ldr r1, _038000A4 ; =0x027FFF94
	strh r0, [r1]
	ldr r0, _038000A8 ; =0x027FFF90
	str r1, [r0]
_037FFF38:
	ldr r0, [r5, #4]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, #0
	bl FUN_037FCF38
	mov r0, #2
	bl FUN_037FCEC0
	b _03800098
_037FFF58:
	ldr r0, _038000AC ; =_03804314
	ldr r1, [r0, #0x20]
	cmp r1, #1
	bne _037FFFE0
	mov r1, #0
	strh r1, [r0, #0x3a]
	strh r1, [r0, #0x38]
	bl FUN_037FAD78
	mov r4, r0
	mov r0, #0x40
	bl FUN_037F87B0
	mov r0, #0x40
	ldr r1, _038000B0 ; =FUN_037FFE24
	bl FUN_03800840
	bl FUN_038007D4
	ldr r0, _038000AC ; =_03804314
	ldrh r2, [r0, #0x34]
	ldr r1, _038000B4 ; =0x0400010C
	strh r2, [r1]
	ldrh r0, [r0, #0x36]
	orr r1, r0, #0xc0
	ldr r0, _038000B8 ; =0x0400010E
	strh r1, [r0]
	mov r0, r4
	bl FUN_037FAD8C
	ldr r0, [r5, #4]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, #0
	bl FUN_037FCF38
	mov r1, #2
	ldr r0, _038000AC ; =_03804314
	str r1, [r0, #0x20]
	b _03800098
_037FFFE0:
	mov r0, r2, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, #3
	bl FUN_037FCF38
	b _03800098
_037FFFF4:
	ldr r0, _038000AC ; =_03804314
	ldr r1, [r0, #0x20]
	sub r0, r1, #3
	cmp r0, #1
	bhi _03800074
	ldr r1, _038000B8 ; =0x0400010E
	ldrh r0, [r1]
	bic r0, r0, #0x80
	strh r0, [r1]
	bl FUN_037FAD78
	mov r4, r0
	mov r0, #0x40
	mov r1, #0
	bl FUN_03800840
	bl FUN_03800788
	mov r0, r4
	bl FUN_037FAD8C
	ldr r0, _038000AC ; =_03804314
	ldr r0, [r0, #0x20]
	cmp r0, #3
	bne _03800058
	mov r0, #0x42
	mov r1, #0
	bl FUN_037FCF38
	b _03800064
_03800058:
	mov r0, #0x51
	mov r1, #0
	bl FUN_037FCF38
_03800064:
	mov r1, #0
	ldr r0, _038000AC ; =_03804314
	str r1, [r0, #0x20]
	b _03800098
_03800074:
	cmp r1, #3
	bne _0380008C
	mov r0, #0x42
	mov r1, #3
	bl FUN_037FCF38
	b _03800098
_0380008C:
	mov r0, #0x51
	mov r1, #3
	bl FUN_037FCF38
_03800098:
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_038000A4: .word 0x027FFF94
_038000A8: .word 0x027FFF90
_038000AC: .word _03804314
_038000B0: .word FUN_037FFE24
_038000B4: .word 0x0400010C
_038000B8: .word 0x0400010E
	arm_func_end FUN_037FFE60

	arm_func_start FUN_038000BC
FUN_038000BC: ; 0x038000BC
	cmp r0, #0x10000
	bhs _038000E0
	mov r2, #0
	ldr r1, _0380015C ; =_03804314
	strh r2, [r1, #0x36]
	rsb r0, r0, #0x10000
	strh r0, [r1, #0x34]
	mov r0, #1
	bx lr
_038000E0:
	cmp r0, #0x400000
	bhs _03800108
	mov r2, #1
	ldr r1, _0380015C ; =_03804314
	strh r2, [r1, #0x36]
	mov r0, r0, lsr #6
	rsb r0, r0, #0x10000
	strh r0, [r1, #0x34]
	mov r0, r2
	bx lr
_03800108:
	cmp r0, #0x1000000
	bhs _03800130
	mov r2, #2
	ldr r1, _0380015C ; =_03804314
	strh r2, [r1, #0x36]
	mov r0, r0, lsr #8
	rsb r0, r0, #0x10000
	strh r0, [r1, #0x34]
	mov r0, #1
	bx lr
_03800130:
	cmp r0, #0x4000000
	movhs r0, #0
	bxhs lr
	mov r2, #3
	ldr r1, _0380015C ; =_03804314
	strh r2, [r1, #0x36]
	mov r0, r0, lsr #0xa
	rsb r0, r0, #0x10000
	strh r0, [r1, #0x34]
	mov r0, #1
	bx lr
	.align 2, 0
_0380015C: .word _03804314
	arm_func_end FUN_038000BC

	arm_func_start FUN_03800160
FUN_03800160: ; 0x03800160
	stmdb sp!, {r4, lr}
	ands r1, r0, #0x2000000
	beq _0380018C
	mov r4, #0
	mov r3, r4
	ldr r1, _03800420 ; =_03804314
_03800178:
	mov r2, r4, lsl #1
	strh r3, [r1, r2]
	add r4, r4, #1
	cmp r4, #0x10
	blt _03800178
_0380018C:
	and r1, r0, #0xf0000
	mov r1, r1, lsr #0x10
	mov r2, r1, lsl #1
	ldr r1, _03800420 ; =_03804314
	strh r0, [r1, r2]
	ands r0, r0, #0x1000000
	beq _03800418
	ldrh r3, [r1]
	and r0, r3, #0xff00
	mov r0, r0, lsl #8
	mov r4, r0, lsr #0x10
	sub r0, r4, #0x40
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0380040C
_038001C8: ; jump table
	b _038001D8 ; case 0
	b _03800218 ; case 1
	b _03800320 ; case 2
	b _03800384 ; case 3
_038001D8:
	mov r0, #2
	mov r1, r4
	mov r2, #1
	and r3, r3, #0xff
	bl FUN_037FCDEC
	cmp r0, #0
	bne _03800200
	mov r0, r4
	mov r1, #4
	bl FUN_037FCF38
_03800200:
	mov r1, #0
	ldr r0, _03800424 ; =0x027FFF94
	strh r1, [r0]
	ldr r0, _03800428 ; =0x027FFF90
	str r1, [r0]
	b _03800418
_03800218:
	ldr r0, [r1, #0x20]
	cmp r0, #0
	beq _03800234
	mov r0, r4
	mov r1, #3
	bl FUN_037FCF38
	b _03800418
_03800234:
	and r0, r3, #0xff
	strh r0, [r1, #0x24]
	ldrh r2, [r1, #2]
	ldrh r0, [r1, #4]
	orr r3, r0, r2, lsl #16
	cmp r3, #0x2000000
	blo _03800258
	cmp r3, #0x2400000
	blo _03800268
_03800258:
	mov r0, r4
	mov r1, #2
	bl FUN_037FCF38
	b _03800418
_03800268:
	str r3, [r1, #0x28]
	ldrh r2, [r1, #6]
	ldrh r0, [r1, #8]
	orr r2, r0, r2, lsl #16
	add r0, r3, r2
	cmp r0, #0x2400000
	bls _03800294
	mov r0, r4
	mov r1, #2
	bl FUN_037FCF38
	b _03800418
_03800294:
	str r2, [r1, #0x30]
	ldrh r2, [r1, #0xa]
	ldrh r0, [r1, #0xc]
	orr r0, r0, r2, lsl #16
	bl FUN_038000BC
	cmp r0, #0
	bne _038002C0
	mov r0, r4
	mov r1, #2
	bl FUN_037FCF38
	b _03800418
_038002C0:
	mov r2, #0
	ldr r0, _03800420 ; =_03804314
	str r2, [r0, #0x2c]
	ldrh r1, [r0, #0x24]
	and r1, r1, #7
	strh r1, [r0, #0x26]
	mov r0, #2
	mov r1, r4
	bl FUN_037FCDEC
	cmp r0, #0
	bne _038002FC
	mov r0, r4
	mov r1, #4
	bl FUN_037FCF38
	b _03800418
_038002FC:
	mov r1, #0
	ldr r0, _03800424 ; =0x027FFF94
	strh r1, [r0]
	ldr r0, _03800428 ; =0x027FFF90
	str r1, [r0]
	mov r1, #1
	ldr r0, _03800420 ; =_03804314
	str r1, [r0, #0x20]
	b _03800418
_03800320:
	ldr r0, [r1, #0x20]
	cmp r0, #2
	beq _0380033C
	mov r0, r4
	mov r1, #3
	bl FUN_037FCF38
	b _03800418
_0380033C:
	mov r0, #2
	mov r1, r4
	mov r2, #0
	bl FUN_037FCDEC
	cmp r0, #0
	bne _03800364
	mov r0, r4
	mov r1, #4
	bl FUN_037FCF38
	b _03800418
_03800364:
	mov r1, #3
	ldr r0, _03800420 ; =_03804314
	str r1, [r0, #0x20]
	ldr r1, _0380042C ; =0x0400010E
	ldrh r0, [r1]
	bic r0, r0, #0x80
	strh r0, [r1]
	b _03800418
_03800384:
	ldr r0, [r1, #0x20]
	cmp r0, #2
	beq _038003A0
	mov r0, r4
	mov r1, #3
	bl FUN_037FCF38
	b _03800418
_038003A0:
	ldrh r2, [r1, #2]
	ldrh r0, [r1, #4]
	orr r0, r0, r2, lsl #16
	bl FUN_038000BC
	cmp r0, #0
	bne _038003C8
	mov r0, r4
	mov r1, #2
	bl FUN_037FCF38
	b _03800418
_038003C8:
	bl FUN_037FAD78
	ldr ip, _0380042C ; =0x0400010E
	ldrh r1, [ip]
	bic r1, r1, #0x80
	strh r1, [ip]
	ldr r1, _03800420 ; =_03804314
	ldrh r3, [r1, #0x34]
	ldr r2, _03800430 ; =0x0400010C
	strh r3, [r2]
	ldrh r1, [r1, #0x36]
	orr r1, r1, #0xc0
	strh r1, [ip]
	bl FUN_037FAD8C
	mov r0, r4
	mov r1, #0
	bl FUN_037FCF38
	b _03800418
_0380040C:
	mov r0, r4
	mov r1, #1
	bl FUN_037FCF38
_03800418:
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_03800420: .word _03804314
_03800424: .word 0x027FFF94
_03800428: .word 0x027FFF90
_0380042C: .word 0x0400010E
_03800430: .word 0x0400010C
	arm_func_end FUN_03800160

	arm_func_start FUN_03800434
FUN_03800434: ; 0x03800434
	mov r3, #0
	ldr r0, _0380046C ; =_03804314
	str r3, [r0, #0x20]
	mov r2, r3
_03800444:
	mov r1, r3, lsl #1
	strh r2, [r0, r1]
	add r3, r3, #1
	cmp r3, #0x10
	blt _03800444
	ldr r1, _03800470 ; =0x0400010E
	ldrh r0, [r1]
	bic r0, r0, #0x80
	strh r0, [r1]
	bx lr
	.align 2, 0
_0380046C: .word _03804314
_03800470: .word 0x0400010E
	arm_func_end FUN_03800434

	arm_func_start FUN_03800474
FUN_03800474: ; 0x03800474
	ldr r1, _03800528 ; =0x040001C0
_03800478:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _03800478
	ldr r0, _0380052C ; =0x00008A01
	strh r0, [r1]
	mov r1, #0xe4
	ldr r0, _03800530 ; =0x040001C2
	strh r1, [r0]
	ldr r1, _03800528 ; =0x040001C0
_0380049C:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _0380049C
	mov r1, #0
	ldr r0, _03800530 ; =0x040001C2
	strh r1, [r0]
	ldr r2, _03800528 ; =0x040001C0
_038004B8:
	ldrh r0, [r2]
	ands r0, r0, #0x80
	bne _038004B8
	ldr r1, _03800530 ; =0x040001C2
	ldrh r0, [r1]
	and r0, r0, #0xff
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, lsl #0x18
	mov r3, r0, lsr #0x10
	ldr r0, _03800534 ; =0x00008201
	strh r0, [r2]
	mov r0, #0
	strh r0, [r1]
	ldr r1, _03800528 ; =0x040001C0
_038004F4:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _038004F4
	ldr r0, _03800530 ; =0x040001C2
	ldrh r0, [r0]
	and r0, r0, #0xff
	mov r0, r0, lsl #0x10
	orr r1, r3, r0, lsr #16
	ldr r0, _03800538 ; =0x00007FF8
	and r0, r1, r0
	mov r0, r0, lsl #0x11
	mov r0, r0, lsr #0x10
	bx lr
	.align 2, 0
_03800528: .word 0x040001C0
_0380052C: .word 0x00008A01
_03800530: .word 0x040001C2
_03800534: .word 0x00008201
_03800538: .word 0x00007FF8
	arm_func_end FUN_03800474

	arm_func_start FUN_0380053C
FUN_0380053C: ; 0x0380053C
	ldr r1, _038005F0 ; =0x040001C0
_03800540:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _03800540
	ldr r0, _038005F4 ; =0x00008A01
	strh r0, [r1]
	mov r1, #0xec
	ldr r0, _038005F8 ; =0x040001C2
	strh r1, [r0]
	ldr r1, _038005F0 ; =0x040001C0
_03800564:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _03800564
	mov r1, #0
	ldr r0, _038005F8 ; =0x040001C2
	strh r1, [r0]
	ldr r2, _038005F0 ; =0x040001C0
_03800580:
	ldrh r0, [r2]
	ands r0, r0, #0x80
	bne _03800580
	ldr r1, _038005F8 ; =0x040001C2
	ldrh r0, [r1]
	and r0, r0, #0xff
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, lsl #0x18
	mov r3, r0, lsr #0x10
	ldr r0, _038005FC ; =0x00008201
	strh r0, [r2]
	mov r0, #0
	strh r0, [r1]
	ldr r1, _038005F0 ; =0x040001C0
_038005BC:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _038005BC
	ldr r0, _038005F8 ; =0x040001C2
	ldrh r0, [r0]
	and r0, r0, #0xff
	mov r0, r0, lsl #0x10
	orr r1, r3, r0, lsr #16
	ldr r0, _03800600 ; =0x00007F80
	and r0, r1, r0
	mov r0, r0, lsl #9
	mov r0, r0, lsr #0x10
	bx lr
	.align 2, 0
_038005F0: .word 0x040001C0
_038005F4: .word 0x00008A01
_038005F8: .word 0x040001C2
_038005FC: .word 0x00008201
_03800600: .word 0x00007F80
	arm_func_end FUN_0380053C

	arm_func_start FUN_03800604
FUN_03800604: ; 0x03800604
	mov ip, #0x4000000
	add r1, ip, #0x208
	ldrh r0, [r1]
	tst r0, r0
	bxeq lr
	ldr r3, [ip, #0x210]
	ldr r1, [ip, #0x214]
	ands r2, r1, r3
	bxeq lr
	ldr r0, _03800770 ; =0x01DF3FFF
	tst r2, r0
	streq r2, [ip, #0x214]
	bxeq lr
	stmdb sp!, {lr}
	mrs r0, spsr
	stmdb sp!, {r0}
	stmdb sp, {sp, lr} ^
	sub sp, sp, #8
	mov r0, #0x9f
	msr cpsr_c, r0
	ldr r1, _03800774 ; =_03802E58
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	ldr r1, _03800778 ; =_03804350
	cmp r0, #1
	moveq r0, sp
	ldreq sp, [r1, #4]
	streq r0, [r1, #4]
	stmdb sp!, {r3}
	ldr r1, _0380077C ; =_03801C64
	ldr r0, [r1]
	tst r0, r2
	strne r0, [ip, #0x214]
	ldrne r0, [r1, #4]
	ldrne r3, _03800780 ; =_03801F04
	ldrne r0, [r3, r0, lsl #2]
	bne _038006E0
	mov r3, #1
_038006A0:
	ldr r0, [r1, r3, lsl #3]
	tst r0, r2
	addeq r3, r3, #1
	beq _038006A0
	str r0, [ip, #0x214]
	add r0, r1, r3, lsl #3
	ldr r2, [r0, #4]
	ldr r3, _03800780 ; =_03801F04
	ldr r0, [r3, r2, lsl #2]
	ldr r2, _03800774 ; =_03802E58
	ldrh r3, [r2, #2]
	cmp r3, #1
	ldreq r2, [r1]
	streq r2, [ip, #0x210]
	moveq r2, #0x1f
	msreq cpsr_c, r2
_038006E0:
	ldr r1, [ip, #0x210]
	stmdb sp!, {r1}
	add lr, pc, #0x0 ; =FUN_038006F0
	bx r0
	arm_func_end FUN_03800604

	arm_func_start FUN_038006F0
FUN_038006F0: ; 0x038006F0
	mov r0, #0x9f
	msr cpsr_c, r0
	mov ip, #0x4000000
	ldmia sp!, {r0}
	ldr r1, [ip, #0x210]
	eor r2, r0, r1
	and r1, r2, r1
	and r0, r2, r0
	ldmia sp!, {r3}
	orr r3, r3, r1
	bic r3, r3, r0
	str r3, [ip, #0x210]
	ldr r2, _03800774 ; =_03802E58
	ldr r3, _03800778 ; =_03804350
	ldrh r0, [r2, #2]
	subs r1, r0, #1
	strh r1, [r2, #2]
	moveq r0, sp
	ldreq sp, [r3, #4]
	streq r0, [r3, #4]
	mov r0, #0x92
	msr cpsr_c, r0
	ldmia sp, {sp, lr} ^
	mov r0, r0
	add sp, sp, #8
	ldmia sp!, {r0}
	msr spsr_fc, r0
	tst r1, r1
	ldreq r0, _03800784 ; =FUN_037F8450
	adreq lr, _0380076C
	bxeq r0
_0380076C:
	ldmia sp!, {pc}
	.align 2, 0
_03800770: .word 0x01DF3FFF
_03800774: .word _03802E58
_03800778: .word _03804350
_0380077C: .word _03801C64
_03800780: .word _03801F04
_03800784: .word FUN_037F8450
	arm_func_end FUN_038006F0

	arm_func_start FUN_03800788
FUN_03800788: ; 0x03800788
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _038007C8 ; =0x0380FFFC
	ldr r1, [r0]
	ldr r0, _038007CC ; =FUN_03800604
	cmp r1, r0
	bne _038007BC
	bl FUN_037FAD78
	ldr r1, _038007D0 ; =_03804350
	ldr r2, [r1, #0xc]
	ldr r1, _038007C8 ; =0x0380FFFC
	str r2, [r1]
	bl FUN_037FAD8C
_038007BC:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_038007C8: .word 0x0380FFFC
_038007CC: .word FUN_03800604
_038007D0: .word _03804350
	arm_func_end FUN_03800788

	arm_func_start FUN_038007D4
FUN_038007D4: ; 0x038007D4
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _03800830 ; =0x0380FFFC
	ldr r2, [r0]
	ldr r0, _03800834 ; =FUN_03800604
	cmp r2, r0
	beq _03800824
	mov r1, #0
	ldr r0, _03800838 ; =_03804350
	str r1, [r0]
	ldr r1, _0380083C ; =0x0380FE80
	str r1, [r0, #4]
	mov r1, #0x40
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	bl FUN_037FAD78
	ldr r2, _03800834 ; =FUN_03800604
	ldr r1, _03800830 ; =0x0380FFFC
	str r2, [r1]
	bl FUN_037FAD8C
_03800824:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_03800830: .word 0x0380FFFC
_03800834: .word FUN_03800604
_03800838: .word _03804350
_0380083C: .word 0x0380FE80
	arm_func_end FUN_038007D4

	arm_func_start FUN_03800840
FUN_03800840: ; 0x03800840
	mov ip, #0
	ldr r2, _03800864 ; =_03801F04
_03800848:
	ands r3, r0, #1
	strne r1, [r2, ip, lsl #2]
	mov r0, r0, lsr #1
	add ip, ip, #1
	cmp ip, #0x19
	blt _03800848
	bx lr
	.align 2, 0
_03800864: .word _03801F04
	arm_func_end FUN_03800840

	arm_func_start FUN_03800868
FUN_03800868: ; 0x03800868
	stmdb sp!, {lr}
	sub sp, sp, #4
	add r0, sp, #0
	bl FUN_0380154C
	ldrh r1, [sp]
	ands r0, r1, #1
	movne r0, #0
	bne _03800894
	ands r0, r1, #2
	movne r0, #1
	moveq r0, #0
_03800894:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_03800868

	arm_func_start FUN_038008A0
FUN_038008A0: ; 0x038008A0
	stmdb sp!, {lr}
	sub sp, sp, #4
	add r0, sp, #0
	bl FUN_0380154C
	ldrh r0, [sp]
	ands r0, r0, #1
	moveq r0, #1
	movne r0, #0
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_038008A0

	arm_func_start FUN_038008CC
FUN_038008CC: ; 0x038008CC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r0
	bl FUN_037FAD78
	mov r5, r0
	mov r0, #1
	bl FUN_037FCF1C
	cmp r0, #0
	bne _03800910
	mov r0, r5
	bl FUN_037FAD8C
	ldr r0, [r4, #4]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, #4
	bl FUN_037FCF38
	b _03800B9C
_03800910:
	mov r0, #1
	bl FUN_037FCF04
	mov r0, r5
	bl FUN_037FAD8C
	ldr r0, [r4, #4]
	sub r0, r0, #0x20
	cmp r0, #0xd
	addls pc, pc, r0, lsl #2
	b _03800B60
_03800934: ; jump table
	b _0380096C ; case 0
	b _03800974 ; case 1
	b _0380097C ; case 2
	b _03800988 ; case 3
	b _038009C8 ; case 4
	b _03800A08 ; case 5
	b _03800A50 ; case 6
	b _03800A98 ; case 7
	b _03800AD0 ; case 8
	b _03800B08 ; case 9
	b _03800B10 ; case 10
	b _03800B18 ; case 11
	b _03800B4C ; case 12
	b _03800B58 ; case 13
_0380096C:
	bl FUN_03801600
	b _03800B80
_03800974:
	bl FUN_038015C0
	b _03800B80
_0380097C:
	ldr r0, [r4, #0x10]
	bl FUN_0380154C
	b _03800B80
_03800988:
	bl FUN_038008A0
	cmp r0, #0
	bne _038009B4
	ldr r0, [r4, #4]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, #3
	bl FUN_037FCF38
	mov r0, #1
	bl FUN_037FCEC0
	b _03800B9C
_038009B4:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	bl FUN_0380142C
	b _03800B80
_038009C8:
	bl FUN_038008A0
	cmp r0, #0
	bne _038009F4
	ldr r0, [r4, #4]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, #3
	bl FUN_037FCF38
	mov r0, #1
	bl FUN_037FCEC0
	b _03800B9C
_038009F4:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	bl FUN_038012F0
	b _03800B80
_03800A08:
	bl FUN_03800868
	cmp r0, #0
	bne _03800A34
	ldr r0, [r4, #4]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, #3
	bl FUN_037FCF38
	mov r0, #1
	bl FUN_037FCEC0
	b _03800B9C
_03800A34:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	ldr r2, [r4, #0x10]
	bl FUN_038011C4
	b _03800B80
_03800A50:
	bl FUN_03800868
	cmp r0, #0
	bne _03800A7C
	ldr r0, [r4, #4]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, #3
	bl FUN_037FCF38
	mov r0, #1
	bl FUN_037FCEC0
	b _03800B9C
_03800A7C:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	ldr r2, [r4, #0x10]
	bl FUN_03801098
	b _03800B80
_03800A98:
	bl FUN_03800868
	cmp r0, #0
	bne _03800AC4
	ldr r0, [r4, #4]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, #3
	bl FUN_037FCF38
	mov r0, #1
	bl FUN_037FCEC0
	b _03800B9C
_03800AC4:
	ldr r0, [r4, #8]
	bl FUN_03800FD4
	b _03800B80
_03800AD0:
	bl FUN_03800868
	cmp r0, #0
	bne _03800AFC
	ldr r0, [r4, #4]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, #3
	bl FUN_037FCF38
	mov r0, #1
	bl FUN_037FCEC0
	b _03800B9C
_03800AFC:
	ldr r0, [r4, #8]
	bl FUN_03800F10
	b _03800B80
_03800B08:
	bl FUN_03800ED0
	b _03800B80
_03800B10:
	bl FUN_03800E90
	b _03800B80
_03800B18:
	bl FUN_03800868
	cmp r0, #0
	bne _03800B44
	ldr r0, [r4, #4]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, #3
	bl FUN_037FCF38
	mov r0, #1
	bl FUN_037FCEC0
	b _03800B9C
_03800B44:
	bl FUN_03800E50
	b _03800B80
_03800B4C:
	ldr r0, [r4, #0x10]
	bl FUN_03800DB4
	b _03800B80
_03800B58:
	bl FUN_03800D74
	b _03800B80
_03800B60:
	mov r0, #1
	bl FUN_037FCEC0
	ldr r0, [r4, #4]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, #1
	bl FUN_037FCF38
	b _03800B9C
_03800B80:
	ldr r0, [r4, #4]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, #0
	bl FUN_037FCF38
	mov r0, #1
	bl FUN_037FCEC0
_03800B9C:
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_038008CC

	arm_func_start FUN_03800BA8
FUN_03800BA8: ; 0x03800BA8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	ands r1, r0, #0x2000000
	beq _03800BD8
	mov r5, #0
	mov lr, r5
	ldr r1, _03800D48 ; =_03804360
_03800BC4:
	mov r4, r5, lsl #1
	strh lr, [r1, r4]
	add r5, r5, #1
	cmp r5, #0x10
	blt _03800BC4
_03800BD8:
	and r1, r0, #0xf0000
	mov r1, r1, lsr #0x10
	mov r4, r1, lsl #1
	ldr r1, _03800D48 ; =_03804360
	strh r0, [r1, r4]
	ands r0, r0, #0x1000000
	beq _03800D3C
	ldrh r0, [r1]
	and r4, r0, #0xff00
	mov r4, r4, lsl #8
	mov r4, r4, lsr #0x10
	sub lr, r4, #0x22
	cmp lr, #0xa
	addls pc, pc, lr, lsl #2
	b _03800D10
_03800C14: ; jump table
	b _03800C40 ; case 0
	b _03800C7C ; case 1
	b _03800C7C ; case 2
	b _03800CC4 ; case 3
	b _03800CC4 ; case 4
	b _03800D04 ; case 5
	b _03800D04 ; case 6
	b _03800D10 ; case 7
	b _03800D10 ; case 8
	b _03800D10 ; case 9
	b _03800C40 ; case 10
_03800C40:
	ldrh ip, [r1, #4]
	and lr, ip, #0xff00
	and r0, r0, #0xff
	mov ip, r0, lsl #0x18
	ldrh r0, [r1, #2]
	orr r0, ip, r0, lsl #8
	orr ip, r0, lr, lsr #8
	cmp ip, #0x2000000
	blo _03800C6C
	cmp ip, #0x2800000
	blo _03800D10
_03800C6C:
	mov r0, r4
	mov r1, #2
	bl FUN_037FCF38
	b _03800D3C
_03800C7C:
	ldrh r3, [r1, #8]
	ldrh r2, [r1, #0xa]
	orr ip, r2, r3, lsl #16
	cmp ip, #0x2000000
	blo _03800C98
	cmp ip, #0x2800000
	blo _03800CA8
_03800C98:
	mov r0, r4
	mov r1, #2
	bl FUN_037FCF38
	b _03800D3C
_03800CA8:
	and r2, r0, #0xff
	ldrh r0, [r1, #2]
	orr r3, r0, r2, lsl #16
	ldrh r2, [r1, #4]
	ldrh r0, [r1, #6]
	orr r2, r0, r2, lsl #16
	b _03800D10
_03800CC4:
	ldrh r3, [r1, #6]
	ldrh r2, [r1, #8]
	orr ip, r2, r3, lsl #16
	cmp ip, #0x2000000
	blo _03800CE0
	cmp ip, #0x2800000
	blo _03800CF0
_03800CE0:
	mov r0, r4
	mov r1, #2
	bl FUN_037FCF38
	b _03800D3C
_03800CF0:
	and r2, r0, #0xff
	ldrh r0, [r1, #2]
	orr r3, r0, r2, lsl #16
	ldrh r2, [r1, #4]
	b _03800D10
_03800D04:
	and r3, r0, #0xff
	ldrh r0, [r1, #2]
	orr r3, r0, r3, lsl #16
_03800D10:
	str r2, [sp]
	str ip, [sp, #4]
	mov r0, #1
	mov r1, r4
	mov r2, #3
	bl FUN_037FCDEC
	cmp r0, #0
	bne _03800D3C
	mov r0, r4
	mov r1, #4
	bl FUN_037FCF38
_03800D3C:
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_03800D48: .word _03804360
	arm_func_end FUN_03800BA8

	arm_func_start FUN_03800D4C
FUN_03800D4C: ; 0x03800D4C
	mov r3, #0
	mov r2, r3
	ldr r0, _03800D70 ; =_03804360
_03800D58:
	mov r1, r3, lsl #1
	strh r2, [r0, r1]
	add r3, r3, #1
	cmp r3, #0x10
	blt _03800D58
	bx lr
	.align 2, 0
_03800D70: .word _03804360
	arm_func_end FUN_03800D4C

	arm_func_start FUN_03800D74
FUN_03800D74: ; 0x03800D74
	ldr r1, _03800DAC ; =0x040001C0
_03800D78:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _03800D78
	mov r0, #0x8100
	strh r0, [r1]
	mov r1, #0xff
	ldr r0, _03800DB0 ; =0x040001C2
	strh r1, [r0]
	ldr r1, _03800DAC ; =0x040001C0
_03800D9C:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _03800D9C
	bx lr
	.align 2, 0
_03800DAC: .word 0x040001C0
_03800DB0: .word 0x040001C2
	arm_func_end FUN_03800D74

	arm_func_start FUN_03800DB4
FUN_03800DB4: ; 0x03800DB4
	ldr r2, _03800E48 ; =0x040001C0
_03800DB8:
	ldrh r1, [r2]
	ands r1, r1, #0x80
	bne _03800DB8
	mov r1, #0x8900
	strh r1, [r2]
	mov r2, #0x9f
	ldr r1, _03800E4C ; =0x040001C2
	strh r2, [r1]
	ldr r2, _03800E48 ; =0x040001C0
_03800DDC:
	ldrh r1, [r2]
	ands r1, r1, #0x80
	bne _03800DDC
	mov r2, #0
	ldr r1, _03800E4C ; =0x040001C2
	strh r2, [r1]
	ldr r3, _03800E48 ; =0x040001C0
_03800DF8:
	ldrh r1, [r3]
	ands r1, r1, #0x80
	bne _03800DF8
	ldr r2, _03800E4C ; =0x040001C2
	ldrh r1, [r2]
	and r1, r1, #0xff
	strb r1, [r0]
	mov r1, #0x8100
	strh r1, [r3]
	mov r1, #0
	strh r1, [r2]
	ldr r2, _03800E48 ; =0x040001C0
_03800E28:
	ldrh r1, [r2]
	ands r1, r1, #0x80
	bne _03800E28
	ldr r1, _03800E4C ; =0x040001C2
	ldrh r1, [r1]
	and r1, r1, #0xff
	strb r1, [r0, #1]
	bx lr
	.align 2, 0
_03800E48: .word 0x040001C0
_03800E4C: .word 0x040001C2
	arm_func_end FUN_03800DB4

	arm_func_start FUN_03800E50
FUN_03800E50: ; 0x03800E50
	ldr r1, _03800E88 ; =0x040001C0
_03800E54:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _03800E54
	mov r0, #0x8100
	strh r0, [r1]
	mov r1, #0xc7
	ldr r0, _03800E8C ; =0x040001C2
	strh r1, [r0]
	ldr r1, _03800E88 ; =0x040001C0
_03800E78:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _03800E78
	bx lr
	.align 2, 0
_03800E88: .word 0x040001C0
_03800E8C: .word 0x040001C2
	arm_func_end FUN_03800E50

	arm_func_start FUN_03800E90
FUN_03800E90: ; 0x03800E90
	ldr r1, _03800EC8 ; =0x040001C0
_03800E94:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _03800E94
	mov r0, #0x8100
	strh r0, [r1]
	mov r1, #0xab
	ldr r0, _03800ECC ; =0x040001C2
	strh r1, [r0]
	ldr r1, _03800EC8 ; =0x040001C0
_03800EB8:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _03800EB8
	bx lr
	.align 2, 0
_03800EC8: .word 0x040001C0
_03800ECC: .word 0x040001C2
	arm_func_end FUN_03800E90

	arm_func_start FUN_03800ED0
FUN_03800ED0: ; 0x03800ED0
	ldr r1, _03800F08 ; =0x040001C0
_03800ED4:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _03800ED4
	mov r0, #0x8100
	strh r0, [r1]
	mov r1, #0xb9
	ldr r0, _03800F0C ; =0x040001C2
	strh r1, [r0]
	ldr r1, _03800F08 ; =0x040001C0
_03800EF8:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _03800EF8
	bx lr
	.align 2, 0
_03800F08: .word 0x040001C0
_03800F0C: .word 0x040001C2
	arm_func_end FUN_03800ED0

	arm_func_start FUN_03800F10
FUN_03800F10: ; 0x03800F10
	and r1, r0, #0xff0000
	mov r1, r1, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x10
	and r1, r0, #0xff00
	mov r1, r1, lsl #8
	mov r1, r1, lsr #0x10
	and r0, r0, #0xff
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldr ip, _03800FCC ; =0x040001C0
_03800F3C:
	ldrh r3, [ip]
	ands r3, r3, #0x80
	bne _03800F3C
	mov r3, #0x8900
	strh r3, [ip]
	mov ip, #0xd8
	ldr r3, _03800FD0 ; =0x040001C2
	strh ip, [r3]
	ldr ip, _03800FCC ; =0x040001C0
_03800F60:
	ldrh r3, [ip]
	ands r3, r3, #0x80
	bne _03800F60
	and r3, r2, #0xff
	ldr r2, _03800FD0 ; =0x040001C2
	strh r3, [r2]
	ldr r3, _03800FCC ; =0x040001C0
_03800F7C:
	ldrh r2, [r3]
	ands r2, r2, #0x80
	bne _03800F7C
	and r2, r1, #0xff
	ldr r1, _03800FD0 ; =0x040001C2
	strh r2, [r1]
	ldr r2, _03800FCC ; =0x040001C0
_03800F98:
	ldrh r1, [r2]
	ands r1, r1, #0x80
	bne _03800F98
	mov r1, #0x8100
	strh r1, [r2]
	and r1, r0, #0xff
	ldr r0, _03800FD0 ; =0x040001C2
	strh r1, [r0]
	ldr r1, _03800FCC ; =0x040001C0
_03800FBC:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _03800FBC
	bx lr
	.align 2, 0
_03800FCC: .word 0x040001C0
_03800FD0: .word 0x040001C2
	arm_func_end FUN_03800F10

	arm_func_start FUN_03800FD4
FUN_03800FD4: ; 0x03800FD4
	and r1, r0, #0xff0000
	mov r1, r1, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x10
	and r1, r0, #0xff00
	mov r1, r1, lsl #8
	mov r1, r1, lsr #0x10
	and r0, r0, #0xff
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldr ip, _03801090 ; =0x040001C0
_03801000:
	ldrh r3, [ip]
	ands r3, r3, #0x80
	bne _03801000
	mov r3, #0x8900
	strh r3, [ip]
	mov ip, #0xdb
	ldr r3, _03801094 ; =0x040001C2
	strh ip, [r3]
	ldr ip, _03801090 ; =0x040001C0
_03801024:
	ldrh r3, [ip]
	ands r3, r3, #0x80
	bne _03801024
	and r3, r2, #0xff
	ldr r2, _03801094 ; =0x040001C2
	strh r3, [r2]
	ldr r3, _03801090 ; =0x040001C0
_03801040:
	ldrh r2, [r3]
	ands r2, r2, #0x80
	bne _03801040
	and r2, r1, #0xff
	ldr r1, _03801094 ; =0x040001C2
	strh r2, [r1]
	ldr r2, _03801090 ; =0x040001C0
_0380105C:
	ldrh r1, [r2]
	ands r1, r1, #0x80
	bne _0380105C
	mov r1, #0x8100
	strh r1, [r2]
	and r1, r0, #0xff
	ldr r0, _03801094 ; =0x040001C2
	strh r1, [r0]
	ldr r1, _03801090 ; =0x040001C0
_03801080:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _03801080
	bx lr
	.align 2, 0
_03801090: .word 0x040001C0
_03801094: .word 0x040001C2
	arm_func_end FUN_03800FD4

	arm_func_start FUN_03801098
FUN_03801098: ; 0x03801098
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	cmp r1, #1
	blo _038011B0
	add r3, r0, r1
	sub r3, r3, #1
	mov r3, r3, lsr #8
	cmp r3, r0, lsr #8
	andhi r1, r0, #0xff
	rsbhi r1, r1, #0x100
	movhi r1, r1, lsl #0x10
	movhi r1, r1, lsr #0x10
	and r3, r0, #0xff0000
	mov r3, r3, lsr #0x10
	strh r3, [sp]
	and r3, r0, #0xff00
	mov r3, r3, lsr #8
	strh r3, [sp, #2]
	and r0, r0, #0xff
	strh r0, [sp, #4]
	ldr r3, _038011BC ; =0x040001C0
_038010EC:
	ldrh r0, [r3]
	ands r0, r0, #0x80
	bne _038010EC
	mov r0, #0x8900
	strh r0, [r3]
	mov r0, #2
	ldr lr, _038011C0 ; =0x040001C2
	strh r0, [lr]
	mov r4, #0
	add r3, sp, #0
	ldr ip, _038011BC ; =0x040001C0
_03801118:
	ldrh r0, [ip]
	ands r0, r0, #0x80
	bne _03801118
	mov r0, r4, lsl #1
	ldrh r0, [r3, r0]
	and r0, r0, #0xff
	strh r0, [lr]
	add r4, r4, #1
	cmp r4, #3
	blt _03801118
	mov ip, #0
	sub lr, r1, #1
	ldr r3, _038011BC ; =0x040001C0
	ldr r0, _038011C0 ; =0x040001C2
	b _03801170
_03801154:
	ldrh r1, [r3]
	ands r1, r1, #0x80
	bne _03801154
	ldrb r1, [r2, ip]
	and r1, r1, #0xff
	strh r1, [r0]
	add ip, ip, #1
_03801170:
	cmp ip, lr
	blt _03801154
	ldr r1, _038011BC ; =0x040001C0
_0380117C:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _0380117C
	mov r0, #0x8100
	strh r0, [r1]
	ldrb r0, [r2, ip]
	and r1, r0, #0xff
	ldr r0, _038011C0 ; =0x040001C2
	strh r1, [r0]
	ldr r1, _038011BC ; =0x040001C0
_038011A4:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _038011A4
_038011B0:
	add sp, sp, #8
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_038011BC: .word 0x040001C0
_038011C0: .word 0x040001C2
	arm_func_end FUN_03801098

	arm_func_start FUN_038011C4
FUN_038011C4: ; 0x038011C4
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	cmp r1, #1
	blo _038012DC
	add r3, r0, r1
	sub r3, r3, #1
	mov r3, r3, lsr #8
	cmp r3, r0, lsr #8
	andhi r1, r0, #0xff
	rsbhi r1, r1, #0x100
	movhi r1, r1, lsl #0x10
	movhi r1, r1, lsr #0x10
	and r3, r0, #0xff0000
	mov r3, r3, lsr #0x10
	strh r3, [sp]
	and r3, r0, #0xff00
	mov r3, r3, lsr #8
	strh r3, [sp, #2]
	and r0, r0, #0xff
	strh r0, [sp, #4]
	ldr r3, _038012E8 ; =0x040001C0
_03801218:
	ldrh r0, [r3]
	ands r0, r0, #0x80
	bne _03801218
	mov r0, #0x8900
	strh r0, [r3]
	mov r0, #0xa
	ldr lr, _038012EC ; =0x040001C2
	strh r0, [lr]
	mov r4, #0
	add r3, sp, #0
	ldr ip, _038012E8 ; =0x040001C0
_03801244:
	ldrh r0, [ip]
	ands r0, r0, #0x80
	bne _03801244
	mov r0, r4, lsl #1
	ldrh r0, [r3, r0]
	and r0, r0, #0xff
	strh r0, [lr]
	add r4, r4, #1
	cmp r4, #3
	blt _03801244
	mov ip, #0
	sub lr, r1, #1
	ldr r3, _038012E8 ; =0x040001C0
	ldr r0, _038012EC ; =0x040001C2
	b _0380129C
_03801280:
	ldrh r1, [r3]
	ands r1, r1, #0x80
	bne _03801280
	ldrb r1, [r2, ip]
	and r1, r1, #0xff
	strh r1, [r0]
	add ip, ip, #1
_0380129C:
	cmp ip, lr
	blt _03801280
	ldr r1, _038012E8 ; =0x040001C0
_038012A8:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _038012A8
	mov r0, #0x8100
	strh r0, [r1]
	ldrb r0, [r2, ip]
	and r1, r0, #0xff
	ldr r0, _038012EC ; =0x040001C2
	strh r1, [r0]
	ldr r1, _038012E8 ; =0x040001C0
_038012D0:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _038012D0
_038012DC:
	add sp, sp, #8
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_038012E8: .word 0x040001C0
_038012EC: .word 0x040001C2
	arm_func_end FUN_038011C4

	arm_func_start FUN_038012F0
FUN_038012F0: ; 0x038012F0
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	cmp r1, #1
	blo _03801418
	and r3, r0, #0xff0000
	mov r3, r3, lsr #0x10
	strh r3, [sp]
	and r3, r0, #0xff00
	mov r3, r3, lsr #8
	strh r3, [sp, #2]
	and r0, r0, #0xff
	strh r0, [sp, #4]
	ldr r3, _03801424 ; =0x040001C0
_03801324:
	ldrh r0, [r3]
	ands r0, r0, #0x80
	bne _03801324
	mov r0, #0x8900
	strh r0, [r3]
	mov r0, #0xb
	ldr ip, _03801428 ; =0x040001C2
	strh r0, [ip]
	mov lr, #0
	add r3, sp, #0
	ldr r4, _03801424 ; =0x040001C0
_03801350:
	ldrh r0, [r4]
	ands r0, r0, #0x80
	bne _03801350
	mov r0, lr, lsl #1
	ldrh r0, [r3, r0]
	and r0, r0, #0xff
	strh r0, [ip]
	add lr, lr, #1
	cmp lr, #3
	blt _03801350
	ldr r3, _03801424 ; =0x040001C0
_0380137C:
	ldrh r0, [r3]
	ands r0, r0, #0x80
	bne _0380137C
	mov r3, #0
	ldr r0, _03801428 ; =0x040001C2
	strh r3, [r0]
	ldr r3, _03801424 ; =0x040001C0
_03801398:
	ldrh r0, [r3]
	ands r0, r0, #0x80
	bne _03801398
	mov r0, #0
	ldr ip, _03801424 ; =0x040001C0
	mov r4, r0
	ldr lr, _03801428 ; =0x040001C2
	sub r1, r1, #1
	b _038013DC
_038013BC:
	strh r4, [lr]
_038013C0:
	ldrh r3, [ip]
	ands r3, r3, #0x80
	bne _038013C0
	ldrh r3, [lr]
	and r3, r3, #0xff
	strb r3, [r2, r0]
	add r0, r0, #1
_038013DC:
	cmp r0, r1
	blo _038013BC
	mov r1, #0x8100
	ldr ip, _03801424 ; =0x040001C0
	strh r1, [ip]
	mov r3, #0
	ldr r1, _03801428 ; =0x040001C2
	strh r3, [r1]
_038013FC:
	ldrh r1, [ip]
	ands r1, r1, #0x80
	bne _038013FC
	ldr r1, _03801428 ; =0x040001C2
	ldrh r1, [r1]
	and r1, r1, #0xff
	strb r1, [r2, r0]
_03801418:
	add sp, sp, #8
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_03801424: .word 0x040001C0
_03801428: .word 0x040001C2
	arm_func_end FUN_038012F0

	arm_func_start FUN_0380142C
FUN_0380142C: ; 0x0380142C
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	cmp r1, #1
	blo _03801538
	and r3, r0, #0xff0000
	mov r3, r3, lsr #0x10
	strh r3, [sp]
	and r3, r0, #0xff00
	mov r3, r3, lsr #8
	strh r3, [sp, #2]
	and r0, r0, #0xff
	strh r0, [sp, #4]
	ldr r3, _03801544 ; =0x040001C0
_03801460:
	ldrh r0, [r3]
	ands r0, r0, #0x80
	bne _03801460
	mov r0, #0x8900
	strh r0, [r3]
	mov r0, #3
	ldr ip, _03801548 ; =0x040001C2
	strh r0, [ip]
	mov lr, #0
	add r3, sp, #0
	ldr r4, _03801544 ; =0x040001C0
_0380148C:
	ldrh r0, [r4]
	ands r0, r0, #0x80
	bne _0380148C
	mov r0, lr, lsl #1
	ldrh r0, [r3, r0]
	and r0, r0, #0xff
	strh r0, [ip]
	add lr, lr, #1
	cmp lr, #3
	blt _0380148C
	ldr r3, _03801544 ; =0x040001C0
_038014B8:
	ldrh r0, [r3]
	ands r0, r0, #0x80
	bne _038014B8
	mov r0, #0
	ldr ip, _03801544 ; =0x040001C0
	mov r4, r0
	ldr lr, _03801548 ; =0x040001C2
	sub r1, r1, #1
	b _038014FC
_038014DC:
	strh r4, [lr]
_038014E0:
	ldrh r3, [ip]
	ands r3, r3, #0x80
	bne _038014E0
	ldrh r3, [lr]
	and r3, r3, #0xff
	strb r3, [r2, r0]
	add r0, r0, #1
_038014FC:
	cmp r0, r1
	blo _038014DC
	mov r1, #0x8100
	ldr ip, _03801544 ; =0x040001C0
	strh r1, [ip]
	mov r3, #0
	ldr r1, _03801548 ; =0x040001C2
	strh r3, [r1]
_0380151C:
	ldrh r1, [ip]
	ands r1, r1, #0x80
	bne _0380151C
	ldr r1, _03801548 ; =0x040001C2
	ldrh r1, [r1]
	and r1, r1, #0xff
	strb r1, [r2, r0]
_03801538:
	add sp, sp, #8
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_03801544: .word 0x040001C0
_03801548: .word 0x040001C2
	arm_func_end FUN_0380142C

	arm_func_start FUN_0380154C
FUN_0380154C: ; 0x0380154C
	ldr r2, _038015B8 ; =0x040001C0
_03801550:
	ldrh r1, [r2]
	ands r1, r1, #0x80
	bne _03801550
	mov r1, #0x8900
	strh r1, [r2]
	mov r2, #5
	ldr r1, _038015BC ; =0x040001C2
	strh r2, [r1]
	ldr r2, _038015B8 ; =0x040001C0
_03801574:
	ldrh r1, [r2]
	ands r1, r1, #0x80
	bne _03801574
	mov r1, #0x8100
	strh r1, [r2]
	mov r2, #0
	ldr r1, _038015BC ; =0x040001C2
	strh r2, [r1]
	ldr r2, _038015B8 ; =0x040001C0
_03801598:
	ldrh r1, [r2]
	ands r1, r1, #0x80
	bne _03801598
	ldr r1, _038015BC ; =0x040001C2
	ldrh r1, [r1]
	and r1, r1, #0xff
	strb r1, [r0]
	bx lr
	.align 2, 0
_038015B8: .word 0x040001C0
_038015BC: .word 0x040001C2
	arm_func_end FUN_0380154C

	arm_func_start FUN_038015C0
FUN_038015C0: ; 0x038015C0
	ldr r1, _038015F8 ; =0x040001C0
_038015C4:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _038015C4
	mov r0, #0x8100
	strh r0, [r1]
	mov r1, #4
	ldr r0, _038015FC ; =0x040001C2
	strh r1, [r0]
	ldr r1, _038015F8 ; =0x040001C0
_038015E8:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _038015E8
	bx lr
	.align 2, 0
_038015F8: .word 0x040001C0
_038015FC: .word 0x040001C2
	arm_func_end FUN_038015C0

	arm_func_start FUN_03801600
FUN_03801600: ; 0x03801600
	ldr r1, _03801638 ; =0x040001C0
_03801604:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _03801604
	mov r0, #0x8100
	strh r0, [r1]
	mov r1, #6
	ldr r0, _0380163C ; =0x040001C2
	strh r1, [r0]
	ldr r1, _03801638 ; =0x040001C0
_03801628:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _03801628
	bx lr
	.align 2, 0
_03801638: .word 0x040001C0
_0380163C: .word 0x040001C2
	arm_func_end FUN_03801600

	arm_func_start FUN_03801640
FUN_03801640: ; 0x03801640
	stmdb sp!, {r4, r5, r6, r7, fp, ip, lr}
	mov r4, r1
	orr r4, r4, #1
	b _03801660
	arm_func_end FUN_03801640

	arm_func_start FUN_03801650
FUN_03801650: ; 0x03801650
	stmdb sp!, {r4, r5, r6, r7, fp, ip, lr}
	eor r4, r1, r3
	mov r4, r4, asr #1
	mov r4, r4, lsl #1
_03801660:
	orrs r5, r3, r2
	bne _03801670
	ldmia sp!, {r4, r5, r6, r7, fp, ip, lr}
	bx lr
_03801670:
	mov r5, r0, lsr #0x1f
	add r5, r5, r1
	mov r6, r2, lsr #0x1f
	add r6, r6, r3
	orrs r6, r5, r6
	bne _038016A4
	mov r1, r2
	bl FUN_03801848
	ands r4, r4, #1
	movne r0, r1
	mov r1, r0, asr #0x1f
	ldmia sp!, {r4, r5, r6, r7, fp, ip, lr}
	bx lr
_038016A4:
	cmp r1, #0
	bge _038016B4
	rsbs r0, r0, #0
	rsc r1, r1, #0
_038016B4:
	cmp r3, #0
	bge _038016C4
	rsbs r2, r2, #0
	rsc r3, r3, #0
_038016C4:
	orrs r5, r1, r0
	beq _038017E8
	mov r5, #0
	mov r6, #1
	cmp r3, #0
	bmi _038016F0
_038016DC:
	add r5, r5, #1
	adds r2, r2, r2
	adcs r3, r3, r3
	bpl _038016DC
	add r6, r6, r5
_038016F0:
	cmp r1, #0
	blt _03801710
_038016F8:
	cmp r6, #1
	beq _03801710
	sub r6, r6, #1
	adds r0, r0, r0
	adcs r1, r1, r1
	bpl _038016F8
_03801710:
	mov r7, #0
	mov ip, #0
	mov fp, #0
	b _03801738
_03801720:
	orr ip, ip, #1
	subs r6, r6, #1
	beq _03801790
	adds r0, r0, r0
	adcs r1, r1, r1
	adcs r7, r7, r7
_03801738:
	subs r0, r0, r2
	sbcs r1, r1, r3
	sbcs r7, r7, #0
	adds ip, ip, ip
	adc fp, fp, fp
	cmp r7, #0
	bge _03801720
_03801754:
	subs r6, r6, #1
	beq _03801788
	adds r0, r0, r0
	adcs r1, r1, r1
	adc r7, r7, r7
	adds r0, r0, r2
	adcs r1, r1, r3
	adc r7, r7, #0
	adds ip, ip, ip
	adc fp, fp, fp
	cmp r7, #0
	bge _03801720
	b _03801754
_03801788:
	adds r0, r0, r2
	adc r1, r1, r3
_03801790:
	ands r7, r4, #1
	moveq r0, ip
	moveq r1, fp
	beq _038017C8
	subs r7, r5, #0x20
	movge r0, r1, lsr r7
	bge _038017EC
	rsb r7, r5, #0x20
	mov r0, r0, lsr r5
	orr r0, r0, r1, lsl r7
	mov r1, r1, lsr r5
	b _038017C8
	arm_func_end FUN_03801650

	arm_func_start FUN_038017C0
FUN_038017C0: ; 0x038017C0
	mov r0, r1, lsr r7
	mov r1, #0
_038017C8:
	cmp r4, #0
	blt _038017D8
	ldmia sp!, {r4, r5, r6, r7, fp, ip, lr}
	bx lr
_038017D8:
	rsbs r0, r0, #0
	rsc r1, r1, #0
	ldmia sp!, {r4, r5, r6, r7, fp, ip, lr}
	bx lr
_038017E8:
	mov r0, #0
_038017EC:
	mov r1, #0
	cmp r4, #0
	blt _038017D8
	ldmia sp!, {r4, r5, r6, r7, fp, ip, lr}
	bx lr
	arm_func_end FUN_038017C0

	arm_func_start FUN_03801800
FUN_03801800: ; 0x03801800
	stmdb sp!, {r4, r5, r6, r7, fp, ip, lr}
	mov r4, #0
	b _03801814
	arm_func_end FUN_03801800

	arm_func_start FUN_0380180C
FUN_0380180C: ; 0x0380180C
	stmdb sp!, {r4, r5, r6, r7, fp, ip, lr}
	mov r4, #1
_03801814:
	orrs r5, r3, r2
	bne _03801824
	ldmia sp!, {r4, r5, r6, r7, fp, ip, lr}
	bx lr
_03801824:
	orrs r5, r1, r3
	bne _038016C4
	mov r1, r2
	bl FUN_03801A5C
	cmp r4, #0
	movne r0, r1
	mov r1, #0
	ldmia sp!, {r4, r5, r6, r7, fp, ip, lr}
	bx lr
	arm_func_end FUN_0380180C

	arm_func_start FUN_03801848
FUN_03801848: ; 0x03801848
	eor ip, r0, r1
	and ip, ip, #0x80000000
	cmp r0, #0
	rsblt r0, r0, #0
	addlt ip, ip, #1
	cmp r1, #0
	rsblt r1, r1, #0
	beq _03801A40
	cmp r0, r1
	movlo r1, r0
	movlo r0, #0
	blo _03801A40
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
	mov r0, r0
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
_03801A40:
	ands r3, ip, #0x80000000
	rsbne r0, r0, #0
	ands r3, ip, #1
	rsbne r1, r1, #0
	bx lr
	arm_func_end FUN_03801848

	arm_func_start FUN_03801A54
FUN_03801A54: ; 0x03801A54
	cmp r1, #0
	bxeq lr
	arm_func_end FUN_03801A54

	arm_func_start FUN_03801A5C
FUN_03801A5C: ; 0x03801A5C
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
	mov r0, r0
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
	arm_func_end FUN_03801A5C

	.global _03801C38
_03801C38: ; crc table
	.short 0x0000
	.short 0xCC01
	.short 0xD801
	.short 0x1400
	.short 0xF001
	.short 0x3C00
	.short 0x2800
	.short 0xE401
	.short 0xA001
	.short 0x6C00
	.short 0x7800
	.short 0xB401
	.short 0x5000
	.short 0x9C01
	.short 0x8801
	.short 0x4400

	.global _03801C58
_03801C58:
	.byte 0xC7, 0x00, 0x00, 0x00

	.global _03801C5C
_03801C5C:
	.byte 0x06, 0x00, 0x00, 0x00

	.global _03801C60
_03801C60:
	.byte 0x05, 0x00, 0x00, 0x00

	.global _03801C64
_03801C64:
	.byte 0x40, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01
	.byte 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00
	.byte 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x12, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00
	.byte 0x0D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x16, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00
	.byte 0x17, 0x00, 0x00, 0x00

	arm_func_start FUN_03801D14
FUN_03801D14: ; 0x03801D14
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	ldr r1, _03801E3C ; =0x00001FFF
	and r0, r0, r1
	mov r0, r0, lsl #0x10
	movs r6, r0, lsr #0x10
	moveq r0, #0
	beq _03801E30
	mov sb, #0
	mov r0, #1
	b _03801D50
_03801D40:
	mov r1, r0, lsl sb
	ands r1, r6, r1
	bne _03801D58
	add sb, sb, #1
_03801D50:
	cmp sb, #0x10
	blt _03801D40
_03801D58:
	mov sl, #0xf
	mov r0, #1
	b _03801D74
_03801D64:
	mov r1, r0, lsl sl
	ands r1, r6, r1
	bne _03801D7C
	sub sl, sl, #1
_03801D74:
	cmp sl, #0
	bne _03801D64
_03801D7C:
	sub r5, sl, sb
	cmp r5, #5
	movlt r0, #1
	movlt r0, r0, lsl sb
	movlt r0, r0, lsl #0x10
	movlt r0, r0, lsr #0x10
	blt _03801E30
	add r0, sl, sb
	mov r1, #2
	bl FUN_03801848
	mov r8, r0
	mov r7, #0
	mov fp, #2
	mov r4, #1
	b _03801DE0
_03801DB8:
	mov r0, r7
	mov r1, fp
	bl FUN_03801848
	mov r0, r1, lsl #1
	sub r0, r0, #1
	mla r8, r7, r0, r8
	mov r0, r4, lsl r8
	ands r0, r6, r0
	bne _03801DE8
	add r7, r7, #1
_03801DE0:
	cmp r7, r5
	blt _03801DB8
_03801DE8:
	sub r0, sl, r8
	cmp r0, #5
	blt _03801E00
	sub r0, r8, sb
	cmp r0, #5
	bge _03801E18
_03801E00:
	mov r0, #1
	mov r1, r0, lsl sb
	orr r0, r1, r0, lsl sl
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	b _03801E30
_03801E18:
	mov r1, #1
	mov r0, r1, lsl sl
	orr r0, r0, r1, lsl r8
	orr r0, r0, r1, lsl sb
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
_03801E30:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_03801E3C: .word 0x00001FFF
	arm_func_end FUN_03801D14

	arm_func_start FUN_03801E40
FUN_03801E40: ; 0x03801E40
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r0, _03801E90 ; =0x0239ADE0
	bl FUN_037F99A8
	mov r5, #0x100
	ldr r4, _03801E94 ; =0x027FFF96
	b _03801E64
_03801E5C:
	mov r0, r5
	bl FUN_037F8BD0
_03801E64:
	ldrh r0, [r4]
	ands r1, r0, #1
	bne _03801E5C
	orr r0, r0, #1
	strh r0, [r4]
	ldr r0, _03801E98 ; =0x0239A8B8
	ldr r0, [r0, #0x54c]
	ldr r0, [r0, #8]
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_03801E90: .word 0x0239ADE0
_03801E94: .word 0x027FFF96
_03801E98: .word 0x0239A8B8
	arm_func_end FUN_03801E40

	arm_func_start FUN_03801E9C
FUN_03801E9C: ; 0x03801E9C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r6, #0x100
	mov r5, #0xa
	mov r4, #0
	b _03801EC0
_03801EB8:
	mov r0, r6
	bl FUN_037F8BD0
_03801EC0:
	mov r0, r5
	mov r1, r7
	mov r2, r4
	bl FUN_037FB2DC
	cmp r0, #0
	blt _03801EB8
	ldr r0, _03801EEC ; =0x0239ADE0
	bl FUN_037F9938
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_03801EEC: .word 0x0239ADE0
	arm_func_end FUN_03801E9C

	.rodata
_03801F6C:
	.byte 0x01, 0x00, 0x00, 0x00

_03801F70:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xAA, 0x08, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0xCC, 0x08, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0xE3
	.byte 0x0C, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0xF0, 0x10, 0x00, 0x01, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3E, 0xF8, 0x14, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0xFC, 0x0C, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF
	.byte 0x10, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC0, 0xFF, 0x14, 0x00, 0x01, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x20, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0xFF, 0x00, 0xFF, 0x20, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF
	.byte 0x20, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC3, 0x28, 0x00, 0x02, 0x00

	.bss
	.global _0380399C
_0380399C:
	.space 0x4

_038039A0:
	.space 0x8

_038039A8:
	.space 0x2A4

_03803C4C:
	.space 0x20

_03803C6C:
	.space 0x40

_03803CAC:
	.space 0x4

_03803CB0:
	.space 0x180

_03803E30:
	.space 0xC

_03803E3C:
	.space 0x4

_03803E40:
	.space 0x4

_03803E44:
	.space 0x2C

_03803E70:
	.space 0xA8

_03803F18:
	.space 0x4

_03803F1C:
	.space 0x4

_03803F20:
	.space 0x4

	.global _03803F24
_03803F24:
	.space 0x4

_03803F28:
	.space 0x2C

_03803F54:
	.space 0x4

_03803F58:
	.space 0x4

_03803F5C:
	.space 0x4

_03803F60:
	.space 0x20

_03803F80:
	.space 0x10

_03803F90:
	.space 0xD0

_03804060:
	.space 0xD4

_03804134:
	.space 0x1E0

_03804314:
	.space 0x3C

_03804350:
	.space 0x10

_03804360:
	.space 0x1E8
