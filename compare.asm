.386
.model flat, stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

.code
main proc
	mov eax, 1
	mov ebx, 2
	cmp eax, ebx

	mov ebx, 1
	cmp eax, ebx

	INVOKE ExitProcess, 0
main endp

end main