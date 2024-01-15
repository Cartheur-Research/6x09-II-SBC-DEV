;-----------------------------------------------------------------------------
; Mini 6809 BIOS Interface
; Cartheur Research (c) 2024
;-----------------------------------------------------------------------------

PIA_PORTA         EQU   $8010
PIA_CNTLA         EQU   $8011
PIA_PORTB         EQU   $8012
PIA_CNTLB         EQU   $8013
FIRQ_VEC          EQU   $7F00

;---------------------------------------------------------------
; Put char to console
; Input: B = Char
PUTC              LDY   $FF00 
                  JSR   ,Y
                  RTS

;---------------------------------------------------------------
; Get char from console
; Output: B = Char
GETC              LDY   $FF02
                  JSR   ,Y
                  RTS

;---------------------------------------------------------------
; Put string  to console
; Input: X = String pointer
PUTS              LDY   $FF04 
                  JSR   ,Y
                  RTS

;---------------------------------------------------------------
; Get string from console
; Input: X = String pointer
;        A = Max char count
GETS              LDY   $FF06
                  JSR   ,Y
                  RTS
