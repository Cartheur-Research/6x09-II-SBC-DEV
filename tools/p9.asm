*  using 10ms tick

	org $200

main    lda #0
        tfr a,dp    * set page zero
        lda #$7e    * invert jump serv_irq code
        sta $7ff0
        ldx  #serv_irq
	stx $7ff1

        andcc #%11101111
        bra *

* IRQ interrupt service routine

        org $6000

serv_irq inc 0
         lda 0

	 cmpa #100
         bne skip
	 clr 0

         inc 1
	 lda 1
         sta $8000
skip
         rti

	end

