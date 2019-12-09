/*define where instructions start*/
.intel_syntax
.text
/* globally available */
.global _start

_start:
	MOV R0, #65
	MOV R7, #1
/*stands for software interrupt, 0 -> exit to terminal*/
SWI 0
