.386
.model flat, stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
ALIGN 1
bt1 BYTE 'A'
ALIGN 2 
bt2 BYTE 'A'

ALIGN 2
wd1 WORD 10
ALIGN 4
wd2 WORD 10
dw1 DWORD 100
dw2 DWORD 789

ALIGN 2
arr1 WORD 1, 2, 3, 4, 5
ALIGN 4
arr2 DWORD 11, 22, 33, 44, 55, 66

.code
main proc
	; OFFSET
	mov esi, OFFSET bt1
	mov esi, OFFSET wd1
	mov esi, OFFSET dw1
	mov esi, OFFSET dw2
	mov esi, OFFSET arr1 + 2

	; LENGTHOF
	mov eax, LENGTHOF arr1
	mov eax, LENGTHOF arr2

	; SIZEOF
	mov eax, SIZEOF dw2
	mov eax, SIZEOF arr2

	invoke ExitProcess,0
main endp
end main