    .gba
    
    ; 02EC48 value - how far are you into the stage?
    PROG_HYLEG equ 0x08327A2C
    PROG_POLER equ 0x08328374
    PROG_KUWAGUST equ 0x08328A64
    PROG_PHOENIX equ 0x083294CC
    PROG_PANTER equ 0x0832A168
    PROG_BURBLE equ 0x0832A8A4
    PROG_LEVIATHAN equ 0x0832B244
    PROG_HARPUIA equ 0x0832B820
    PROG_FEFNIR equ 0x0832C1E4
    PROG_NA2 equ 0x0832C67C
    PROG_NA1 equ 0x0832CB30
    PROG_AP1 equ 0x0832D3F0
    PROG_AP2 equ 0x0832DB34
    PROG_AP3 equ 0x0832E23C
    PROG_FINAL equ 0x0832EE34
    
    ; 02EC4C value - more specific stage scenario
    MISSION_HYLEG equ 0x08327B0C
    MISSION_POLER equ 0x083283E4
    MISSION_KUWAGUST equ 0x08328B7C
    MISSION_PHOENIX equ 0x0832953C
    MISSION_PANTER equ 0x0832A1D8
    MISSION_BURBLE equ 0x0832AA24
    MISSION_LEVIATHAN equ 0x0832B2B4
    MISSION_HARPUIA equ 0x0832B890
    MISSION_FEFNIR equ 0x0832C254
    MISSION_NA2 equ 0x0832C6E4
    MISSION_NA1 equ 0x0832CB90
    MISSION_AP1 equ 0x0832D450
    MISSION_AP2 equ 0x0832DB94
    MISSION_AP3 equ 0x0832E29C
    MISSION_FINAL equ 0x0832EE9C
    
    .org 0x08358100
    .area 0xA0
    
    .dw PROG_HYLEG
    .dw MISSION_HYLEG
    .dw PROG_POLER
    .dw MISSION_POLER
    .dw PROG_KUWAGUST
    .dw MISSION_KUWAGUST
    .dw PROG_PHOENIX
    .dw MISSION_PHOENIX
    .dw PROG_PANTER
    .dw MISSION_PANTER
    .dw PROG_BURBLE
    .dw MISSION_BURBLE
    .dw PROG_LEVIATHAN
    .dw MISSION_LEVIATHAN
    .dw PROG_HARPUIA
    .dw MISSION_HARPUIA
    .dw PROG_FEFNIR
    .dw MISSION_FEFNIR
    .dw PROG_NA2
    .dw MISSION_NA2
    .dw PROG_NA1
    .dw MISSION_NA1
    .dw PROG_AP1
    .dw MISSION_AP1
    .dw PROG_AP2
    .dw MISSION_AP2
    .dw PROG_AP3
    .dw MISSION_AP3
    .dw PROG_FINAL
    .dw MISSION_FINAL
    
    .endarea