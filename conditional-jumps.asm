; 
; rst = 0; a = 10; b = 2;
; if (a == b)
;    rst = a+b
; else 
;    rst = a-b
;
.386
.model flat, stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
rst DWORD 0
a DWORD 10
b DWORD 2

.code
main proc
	mov eax, a
	cmp eax, b
	jne L1
	add eax, b
	jmp F

L1:
	sub eax, b
F:
	mov rst, eax
	INVOKE ExitProcess, 0
main endp

end main
