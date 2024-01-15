all: core.s19 core.hex

core.s19: core.asm
	as9 core.asm -l s19 now

core.hex: core.s19
	srec_cat core.s19 -Motorola -crop 0xc000 0x10000 -output core.hex -Intel

clean:
	$(RM) core.s19 core.hex core.lst

distclean: clean
