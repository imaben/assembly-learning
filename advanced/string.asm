.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
string1 BYTE "This is a source string", 0
string1Len = ($-string1) - 1
string2 BYTE 32

word1 WORD 20 DUP(0FFFFFFFh)
word2 WORD 20 DUP(?)

.code
main proc
	; byte copy
	cld
	mov esi, OFFSET string1
	mov edi, OFFSET string2
	mov ecx, string1Len
	rep movsb

	; word copy
	cld
	mov esi, OFFSET word1
	mov edi, OFFSET word2
	mov ecx, LENGTHOF word1
	rep movsd

	invoke ExitProcess,0
main endp
