## 6x09-II-SBC-DEV

A development repository for the M6x09-II Single Board Computer so as to find the ideal way forward.

### The current state of Version 1.1

As of now, the single-cpu board appears as below, when coming back from the manufacturing house.

![SBC-II](/doc/SBC-II-24.jpg)

Where the challenges are

* Create a baseline software in the configuration of the original Motorola offering for _x09_
* Build-up an application library that will steer development to _dual-CPU multicomputing_
* On the topic of [multicomputing](https://github.com/cartheur/M6809-multicomputer)

### What is here

* How to build the [assembler](/assembler/README.md)
* How to build the [EPROM](/core/README.md) that contains ASSIST09 _and_ BASIC
* Motorola-s original documentation on [ASSIST09](/doc/as11v2.pdf)
