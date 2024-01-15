## The _x09_ operating system

Here is the operating system source. It is a file-based kernelesque system that is multitasking and designed for _both_ the Motorola 6809 and Hitachi 6309.

It is a substantive goal of this OS to be able to maximize compute power for the following board configurations:

* 68C50 UART, Serial, Single-CPU
* 68C50 UART, 62225 RAM, Dual-CPU
* 2X 68C50 UART, Multicore controller, Quad-CPU