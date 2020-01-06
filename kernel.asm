;;kernel.asm
bits 32
section .text		
	align 4
	dd 0x1BADB002
	dd 0x00
	dd - (0x1BADB002 + 0X00)

global start
extern kmain


start:  cli			;block interrupts
	mov esp, stack_space    ;set stack pointer
	call kmain		;call c function
	hlt			;halt the CPU

section .bss			;uninitialized-data section
resb 8192			;8KB for stack
stack_space:
