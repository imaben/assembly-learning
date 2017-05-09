.386
.model flat, stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
arr1 DWORD 100, 200, 300

.code
main proc
	mov esi, offset arr1
	mov eax, [esi]
	add esi, 4
	add eax, [esi]
	add esi, 4
	add eax, [esi]

	invoke ExitProcess,0
main endp
end main