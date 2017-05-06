.386
.model flat, stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

.code
main proc
	; AND
	mov eax, 1
	mov ebx, 0
	AND eax, ebx

	mov eax, 1
	mov ebx, 1
	AND eax, ebx

	INVOKE ExitProcess, 0
main endp

end main