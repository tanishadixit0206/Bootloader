BITS 16
ORG 0x7C00

start:
    cli
    cld

    xor ax,ax
    mov ds,ax
    mov es,ax
    mov ss,ax
    mov sp,0x7C00

    ;call bootmain

hang:
    hlt
    jmp hang

times 510 -($-$$)db 0
dw 0xAA55