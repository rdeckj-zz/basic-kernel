# basic-kernel

This is a basic kernel that can be loaded by GNU GRUB.

## Prerequisites
* x86 machine
* Linux - This code was written and tested on [Ubuntu 18.04 LTS](http://ubuntu.com)
* [NASM Assembler](http://nasm.us)
* GCC - Pre-installed on Ubuntu
* LD (GNU linker) - Pre-installed on Ubuntu

## Resources

### [Multiboot](https://www.gnu.org/software/grub/manual/multiboot/)

#### Header Layout

Offset | Type | Field Name | Note
-------|------|------------|-----
0 | u32| magic | required
4 | u32|	flags | required
8 | u32|	checksum |	required
12 | u32|	header_addr | if flags[16] is set
16 | u32|	load_addr | if flags[16] is set
20 | u32|	load_end_addr | if flags[16] is set
24 | u32|	bss_end_addr | if flags[16] is set
28 | u32|	entry_addr | if flags[16] is set
32 | u32|	mode_type | if flags[2] is set
36 | u32|	width | if flags[2] is set
40 | u32|	height | if flags[2] is set
44 | u32|	depth | if flags[2] is set





---WIP---

## References
[OSDev Tutorial](wiki.osdev.org/Bare_Bones)
[Kernels 101](arjunsreedhara.org)
