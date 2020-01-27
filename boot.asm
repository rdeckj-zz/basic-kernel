MAGIC      equ 0x1BADB002
FLAGS      equ 0x00
CHECKSUM   equ -(MAGIC + FLAGS)

section    .multiboot
           align 4                ; align at 32-bit boundary
	       dd MAGIC
	       dd FLAGS
	       dd CHECKSUM

section    .text
global     start
extern     kmain

start:     mov esp, stack_top     ; set stack pointer
           call kmain             ; call c function
           cli                    ; disable interrupts
hang:      hlt			          ; halt the CPU
           jmp hang

section    .bss
stack_bot:		                             
           resb 8192	          ; reserve 8KB for stack
stack_top:
