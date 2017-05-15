.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
string1 BYTE "This is a source string", 0
string1Len = ($-string1) - 1
string2 BYTE 32

.code
main proc
	; string copy
	cld
	mov esi, OFFSET string1
	mov edi, OFFSET string2
	mov ecx, string1Len
	rep movsb

	invoke ExitProcess,0
main endp
