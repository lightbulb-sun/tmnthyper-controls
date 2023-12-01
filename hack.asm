DEFAULT_CONTROLS = 4
CONTROL_CONFIG   = $fffb16

    org 0
    incbin "tmnthyper.md"

    org $470
            jsr     my_code

    org $ffe80
my_code:
            move.w  #DEFAULT_CONTROLS, (CONTROL_CONFIG).l
            rts
