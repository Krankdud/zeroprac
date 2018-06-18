; With "zeroprac" folder in the same folder as ARMIPS:
; compile with "armips z2prac.asm -root zeroprac/Z2"

    .gba
    .open "Rockman Zero 2 (Japan).gba", "z2prac.gba", 0x08000000
    .include "z2-stageselect.asm"
    .include "z2-cutsceneskips.asm"
    .include "z2-savestates.asm"
    
    .org 0x0800078C
    bl      #0x08358300
    
    .org 0x08358300
    push    {r4-r7,r14}
    mov     r7,r10
    mov     r6,r9
    mov     r5,r8
    push    {r5-r7}
    ldr     r0,=#0x02000D10
    ldrh    r1,[r0]
    mov     r2,#0x4
    and     r2,r1
    cmp     r2,#0x0
    bne     @@select_pressed
    mov     r2,#0x80
    lsl     r2,r2,#0x1
    and     r2,r1
    cmp     r2,#0x0
    bne     @@r_pressed
    b       @@subr_end
@@select_pressed:
    ldrh    r1,[r0,#0x4]
    mov     r2,#0x80
    lsl     r3,r2,#0x2
    and     r3,r1
    cmp     r3,#0x0
    bne     @@load_checkpoint           ; Change to load state subroutine
    lsl     r3,r2,#0x1
    and     r3,r1
    cmp     r3,#0x0
    bne     @@subr_end                  ; Change to save state subroutine
    mov     r2,#0x8
    and     r2,r1
    cmp     r2,#0x0
    beq     @@subr_end
    ldr     r4,=#0x0202F8E1
    mov     r5,#0x9
    strb    r5,[r4]
    b       @@subr_end
@@r_pressed:
    ldrh    r1,[r0,#0x4]
    mov     r2,#0x4
    and     r2,r1
    cmp     r2,#0x0
    bne     @@subr_end                  ; Change to save state subroutine
    
@@subr_end:
    pop     {r5-r7}
    mov     r8,r5
    mov     r9,r6
    mov     r10,r7
    pop     {r4-r7}
    bl      #0x080DE58C
    pop     r0
    bx      r0
    
@@load_checkpoint:
    ldr     r4,=#0x0202F8E1
    mov     r5,#0x3
    strb    r5,[r4]
    b       @@subr_end
    
    .pool
    .close