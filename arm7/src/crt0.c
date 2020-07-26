#include "nitro/types.h"

void _start(void);
void do_autoload(void);
void detect_main_memory_size(void);
void _start_AutoloadDoneCallback(void);

extern u32 SDK_AUTOLOAD_LIST[];
extern u32 SDK_AUTOLOAD_LIST_END[];
extern u32 SDK_AUTOLOAD_START[];
extern u32 SDK_STATIC_BSS_START[];
extern u32 SDK_STATIC_BSS_END[];

extern void NitroSpMain(void);
extern void OS_IrqHandler(void);

const u32 _start_ModuleParams[] = {
    (u32)SDK_AUTOLOAD_LIST,
    (u32)SDK_AUTOLOAD_LIST_END,
    (u32)SDK_AUTOLOAD_START,
    (u32)SDK_STATIC_BSS_START,
    (u32)SDK_STATIC_BSS_END
};

asm
void _start(void)
{
    mov ip, #0x4000000
    str ip, [ip, #0x208]
    ldr r1, =SDK_STATIC_BSS_START
    mov r0, #0x3800000
    cmp r0, r1
    movpl r1, r0
    ldr r2, =0x0380FF00
    mov r0, #0
_02380020:
    cmp r1, r2
    stmltia r1!, {r0}
    blt _02380020
    mov r0, #0x13
    msr cpsr_c, r0
    ldr sp, =0x0380FFC0
    mov r0, #0x12
    msr cpsr_c, r0
    ldr r0, =0x0380FF80
    mov sp, r0
    ldr r1, =0x00000200
    sub r1, r0, r1
    mov r0, #0x1f
    msr cpsr_fsxc, r0
    sub sp, r1, #4
    ldr r0, =0x023FE940
    ldr r1, =0x027FFA80
    add r2, r1, #0x160
_02380068:
    ldr r3, [r0], #4
    str r3, [r1], #4
    cmp r1, r2
    bmi _02380068
    ldr r0, =0x023FE904
    add r2, r1, #0x20
_02380080:
    ldr r3, [r0], #4
    str r3, [r1], #4
    cmp r1, r2
    bmi _02380080
    bl do_autoload
    ldr r0, =_start_ModuleParams
    ldr r1, [r0, #0xc]
    ldr r2, [r0, #0x10]
    mov r0, #0
_023800A4:
    cmp r1, r2
    strlo r0, [r1], #4
    blo _023800A4
    bl detect_main_memory_size
    ldr r1, =0x0380FFFC
    ldr r0, =OS_IrqHandler
    str r0, [r1]
    ldr r1, =NitroSpMain
    ldr lr, =0xFFFF0000
    bx r1
}

asm
void do_autoload(void)
{
    ldr r0, =_start_ModuleParams
    ldr r1, [r0]
    ldr r2, [r0, #4]
    ldr r3, [r0, #8]
_02380110:
    cmp r1, r2
    beq _02380150
    ldr r4, [r1], #4
    ldr r5, [r1], #4
    add r6, r4, r5
_02380124:
    cmp r4, r6
    ldrmi r7, [r3], #4
    strmi r7, [r4], #4
    bmi _02380124
    ldr r5, [r1], #4
    add r6, r4, r5
    mov r7, #0
_02380140:
    cmp r4, r6
    strlo r7, [r4], #4
    blo _02380140
    beq _02380110
_02380150:
    b _start_AutoloadDoneCallback
}

asm
void _start_AutoloadDoneCallback(void)
{
    bx lr
}

asm
void detect_main_memory_size(void)
{
    mov r0, #1
    mov r1, #0
    ldr r2, =0x027FFFFA
    sub r3, r2, #0x400000
_loop:
    strh r1, [r2]
    ldrh ip, [r3]
    cmp r1, ip
    movne r0, #2
    bne _break
    add r1, r1, #1
    cmp r1, #2
    bne _loop
_break:
    strh r0, [r2]
    bx lr
}
