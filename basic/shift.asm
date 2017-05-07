.386
.model flat, stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

.code
main proc
	mov eax, 10010b
	shl eax, 1
	shr eax, 2
	
	mov eax, 1011101b
	sal eax, 2
	sar eax, 1

	INVOKE ExitProcess, 0
main endp

end main