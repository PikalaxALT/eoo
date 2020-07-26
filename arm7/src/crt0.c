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

extern u32 SDK_IRQ_STACKSIZE[];

extern void NitroSpMain(void);
extern void OS_IrqHandler(void);

const u32 _start_ModuleParams[] = {
    (u32)SDK_AUTOLOAD_LIST,
    (u32)SDK_AUTOLOAD_LIST_END,
    (u32)SDK_AUTOLOAD_START,
    (u32)SDK_STATIC_BSS_START,
    (u32)SDK_STATIC_BSS_END
};

#define HW_MAIN_MEM               0x02000000

#define HW_REG_BASE               0x04000000
#define REG_IME_OFFSET                 0x208

#define HW_PRV_WRAM               0x03800000
#define HW_PRV_WRAM_END           0x03810000
#define HW_PRV_WRAM_SIZE        (HW_PRV_WRAM_END-HW_PRV_WRAM)

#define HW_SVC_STACK_SIZE               0x40
#define HW_PRV_WRAM_SYSRV_SIZE          0x40
#define HW_PRV_WRAM_SYSRV               (HW_PRV_WRAM + HW_PRV_WRAM_SIZE - HW_PRV_WRAM_SYSRV_SIZE)

#define HW_PSR_CPU_MODE_MASK       0x1f // CPU mode

#define HW_PSR_USER_MODE           0x10 // USER
#define HW_PSR_FIQ_MODE            0x11 // FIQ
#define HW_PSR_IRQ_MODE            0x12 // IRQ
#define HW_PSR_SVC_MODE            0x13 // Supervisor
#define HW_PSR_ABORT_MODE          0x17 // Abort (prefetch/data)
#define HW_PSR_UNDEF_MODE          0x1b // Undefined instruction
#define HW_PSR_SYS_MODE            0x1f // System

#define HW_PSR_ARM_STATE           0x0 // ARM state
#define HW_PSR_THUMB_STATE         0x20 // THUMB state

#define HW_PSR_FIQ_DISABLE         0x40 // Disable FIQ
#define HW_PSR_IRQ_DISABLE         0x80 // Disable IRQ
#define HW_PSR_IRQ_FIQ_DISABLE     0xc0 // Disable FIQ and IRQ

#define HW_PSR_Q_FLAG              0x08000000   // Sticky overflow
#define HW_PSR_V_FLAG              0x10000000   // Overflow
#define HW_PSR_C_FLAG              0x20000000   // Carry / borrow / extend
#define HW_PSR_Z_FLAG              0x40000000   // Zero
#define HW_PSR_N_FLAG              0x80000000   // Minus / less than

#define HW_PRV_WRAM_IRQ_STACK_END       (HW_PRV_WRAM_SVC_STACK)
#define HW_PRV_WRAM_SVC_STACK           (HW_PRV_WRAM_SVC_STACK_END - HW_SVC_STACK_SIZE)
#define HW_PRV_WRAM_SVC_STACK_END       (HW_PRV_WRAM_SYSRV)

#define HW_CARD_ROM_HEADER_SIZE         0x160
#define HW_CARD_ROM_HEADER              (HW_MAIN_MEM + 0x007ffa80)

#define HW_DOWNLOAD_PARAMETER_SIZE        0x20
#define HW_DOWNLOAD_PARAMETER           (HW_MAIN_MEM + 0x007ffbe0)

#define HW_PRV_WRAM_SYSRV_OFS_INTR_CHECK     0x38
#define HW_PRV_WRAM_SYSRV_OFS_INTR_VECTOR    0x3c
#define HW_INTR_CHECK_BUF               (HW_PRV_WRAM_SYSRV + HW_PRV_WRAM_SYSRV_OFS_INTR_CHECK)
#define HW_INTR_VECTOR_BUF              (HW_PRV_WRAM_SYSRV + HW_PRV_WRAM_SYSRV_OFS_INTR_VECTOR)

#define HW_RESET_VECTOR         0xffff0000

#define HW_MMEMCHECKER_SUB              (HW_MAIN_MEM + 0x007ffffa)

#define OS_CONSOLE_SIZE_MASK      0x00000003
#define OS_CONSOLE_SIZE_4MB       0x00000001
#define OS_CONSOLE_SIZE_8MB       0x00000002

asm
void _start(void)
{
    // set IME = 0
    mov ip, #HW_REG_BASE
    str ip, [ip, #REG_IME_OFFSET] // low byte == 0

    // Clear Prv Wram
    ldr r1, =SDK_STATIC_BSS_START
    mov r0, #HW_PRV_WRAM
    cmp r0, r1
    movpl r1, r0
    ldr r2, =HW_PRV_WRAM_END - 0x100
    mov r0, #0
@_02380020:
    cmp r1, r2
    stmltia r1!, {r0}
    blt @_02380020

    // Set SVC stack
    mov r0, #HW_PSR_SVC_MODE
    msr cpsr_c, r0
    ldr sp, =HW_PRV_WRAM_SVC_STACK_END

    // Set IRQ stack
    mov r0, #HW_PSR_IRQ_MODE
    msr cpsr_c, r0
    ldr r0, =HW_PRV_WRAM_IRQ_STACK_END
    mov sp, r0

    // Set main stack
    ldr r1, =SDK_IRQ_STACKSIZE
    sub r1, r0, r1
    mov r0, #HW_PSR_SYS_MODE
    msr cpsr_fsxc, r0
    sub sp, r1, #4

    // Copy ROM header
    ldr r0, =0x023FE940
    ldr r1, =HW_CARD_ROM_HEADER
    add r2, r1, #HW_CARD_ROM_HEADER_SIZE
@_02380068:
    ldr r3, [r0], #4
    str r3, [r1], #4
    cmp r1, r2
    bmi @_02380068

    // Copy download parameter
    ldr r0, =0x023FE904
    add r2, r1, #HW_DOWNLOAD_PARAMETER_SIZE
@_02380080:
    ldr r3, [r0], #4
    str r3, [r1], #4
    cmp r1, r2
    bmi @_02380080

    // Do autoload
    bl do_autoload

    // Clear BSS
    ldr r0, =_start_ModuleParams
    ldr r1, [r0, #0xc]  // SDK_STATIC_BSS_START
    ldr r2, [r0, #0x10] // SDK_STATIC_BSS_END
    mov r0, #0
@_023800A4:
    cmp r1, r2
    strlo r0, [r1], #4
    blo @_023800A4

    // Detect main memory size
    bl detect_main_memory_size

    // Load intr buffer
    ldr r1, =HW_INTR_VECTOR_BUF
    ldr r0, =OS_IrqHandler
    str r0, [r1]

    // Launch program
    ldr r1, =NitroSpMain
    ldr lr, =HW_RESET_VECTOR
    bx r1
}

asm
void do_autoload(void)
{
    ldr r0, =_start_ModuleParams
    ldr r1, [r0]     // SDK_AUTOLOAD_LIST
    ldr r2, [r0, #4] // SDK_AUTOLOAD_LIST_END
    ldr r3, [r0, #8] // SDK_AUTOLOAD_START
arrayLoop:
    cmp r1, r2
    beq done
    ldr r4, [r1], #4 // .loadAddr
    ldr r5, [r1], #4 // .size
    add r6, r4, r5
    // copy .text/.rodata/.data
copyLoop:
    cmp r4, r6
    ldrmi r7, [r3], #4
    strmi r7, [r4], #4
    bmi copyLoop
    // clear .bss
    ldr r5, [r1], #4 // .bssSize
    add r6, r4, r5
    mov r7, #0
clearLoop:
    cmp r4, r6
    strlo r7, [r4], #4
    blo clearLoop
    beq arrayLoop
    // hi: fallthrough
done:
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
    mov r0, #OS_CONSOLE_SIZE_4MB
    mov r1, #0
    ldr r2, =HW_MMEMCHECKER_SUB
    sub r3, r2, #0x400000 // 0x023FFFFA
@_loop:
    strh r1, [r2]
    ldrh ip, [r3]
    cmp r1, ip
    movne r0, #OS_CONSOLE_SIZE_8MB
    bne @_break
    add r1, r1, #1
    cmp r1, #2
    bne @_loop
@_break:
    strh r0, [r2]
    bx lr
}
