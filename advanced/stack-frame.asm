.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.code
main proc
	push 10
	push 20
	call sum
	add esp, 8 ;clean stack

	invoke ExitProcess,0
main endp

sum proc
	push ebp
	mov ebp, esp
	mov eax, [ebp + 12]
	add eax, [ebp + 8]
	pop ebp
	ret
sum endp

end main