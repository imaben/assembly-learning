.386
.model flat, stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

.code
main proc
	mov eax, 10
	mov ebx, 20
	mov ecx, 30
	call myproc

	invoke ExitProcess,0
main endp

myproc proc
	add eax, ebx
	add eax, ecx
	ret
myproc endp

end main