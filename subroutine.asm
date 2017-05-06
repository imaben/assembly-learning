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
	call myproc2
	ret
myproc endp

myproc2 proc
	add eax, eax
	ret
myproc2 endp

end main