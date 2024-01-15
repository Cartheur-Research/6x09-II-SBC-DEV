## The _x09_ operating system

Here is the operating system source. It is a file-based kernelesque system that is multitasking and designed for _both_ the Motorola 6809 and Hitachi 6309.

It is a substantive goal of this OS to be able to maximize compute power for the following board configurations:

* 68C50 UART, Serial, Single-CPU
* 68C50 UART, 62225 RAM, Dual-CPU
* 2X 68C50 UART, Multicore controller, Quad-CPU

### Flavor-1--AeonOS9

Based around the work of [NitrOS-9](https://github.com/n6il/nitros9), a community-based distribution of the Microware OS-9 operating system for the 6809 that was introduced in the late 1970s and sold into the 1980s, its next evolution is into _novel metal_.

### Documentation

Please consult the [wiki](https://nitros9.sourceforge.io/wiki/index.php/Main_Page). Mind it is rather slow to load and could benefit being moved.

### Additional information

The Hitachi 6309, which contains additional registers and enhanced instructions, is also supported.

### Building the OS

Details of this are _todo_.

_Prerequisites_

* [lwtools](http://lwtools.projects.l-w.ca). This package contains the required 6809 assembler and linker. To get directly to it, have a look [here](/tools/README.md)
* [ToolShed](https://github.com/cartheur/M6809-toolshed). Provides file system tools for creating disk images, copying files to and from those disk images, and more.

Once downloaded and installed, build the entire project:

```
export OS9DIR=$HOME/os9
make
```

The result is a number of disk images (ending in .dsk) that can be used on real floppy drives, emulators, and DriveWire.

### More information

* On the subject of retrocomputing, some good information can be found [here](https://www.roug.org/retrocomputing/os/os9).