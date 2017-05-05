.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

count dword 9
base dword 2
sum dword 0

.code

main proc

	mov ecx, count
	mov eax, base
s:
	add eax, base
	loop s

	mov eax, 0
	mov ecx, count
s2:
	inc eax
	loop s2

	INVOKE ExitProcess, 0

main endp
end main
