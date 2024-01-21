; Define register addresses

; Registers
A           = $00       ; Accumulator A
B           = $01       ; Accumulator B
CC           = $02       ; Condition code register
D           = $03       ; Data register
X           = $04       ; X-index register
Y           = $05       ; Y-index register
SP           = $07       ; Stack pointer
PC           = $08       ; Program counter

; Interrupt vectors
IRQ          = $0310    ; Interrupt Request vector
NMI          = $0318    ; Non-Maskable Interrupt vector
RESET        = $0320    ; Reset vector

; Memory locations and constants
STACK_TOP    = $ffff    ; Top of stack
START        = $0000    ; Start of program