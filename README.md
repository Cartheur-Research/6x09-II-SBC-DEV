## 6x09-II-SBC-DEV

A development repository for the M6x09-II Single Board Computer so as to find the ideal way forward.

### The current state of Version 1.1

As of now, the single-cpu board appears as below, when coming back from the manufacturing house.

![SBC-II](/doc/SBC-II-24.jpg)

Where the challenges are

* Create a baseline software in the configuration of the original Motorola offering for _x09_
* Build-up an application library that will steer development to _dual-CPU multicomputing_
* On the topic of [multicomputing](https://github.com/cartheur/M6809-multicomputer)
* Couple boards _alpha_ and _gamma_ into a single configuration of multicomputing, so that...
* A Version 2 board can be designed with the same hardware but two 6809 and two 6309 for comparative computing aims.  

### What is here

* How to build the [assembler](/assembler/README.md)
* How to build the [EPROM](/core/README.md) that contains ASSIST09 _and_ BASIC
* Motorola-s original documentation on [ASSIST09](/doc/as11v2.pdf)
* Sources and configuration details on the `monitor` [program](/monitor/README.md)
* Sources and build details on the [operating](/os/README.md) system
* The beginnings of a CP/M-esque [bios](/bios/README.md)
* Bootloader sample code from BardAI [here](/bootloader/README.md)
* The beginnings of [application](/app/README.md) development

### What is relevant

* The unfiltered operating system [AeonOS9](https://github.com/cartheur/M6809-AeonOS9)

### Project Log

* 21.01.2024 - 1212: A test burn of _core_ is on the ROM and ready to test on an assembled board.
* 17.02.2024 - 1335: Work Forth applications as a pathway to navigate the language of the _ideal_.
