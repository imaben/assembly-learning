INCLUDE Irvine32.inc

ENTER_KEY = 13

.data
ErrorMsg BYTE "Invalid input", 13, 10, 0

.code
main proc
	call Clrscr
StateA:
	call GetNext
	cmp al, '+'
	je StateB
	cmp al, '-'
	je StateB
	call IsDigit
	jz StateC
	call DisplayError
	jmp Quit

StateB:
	call GetNext
	call IsDigit
	jz StateC
	call DisplayError
	jmp Quit

StateC:
	call GetNext
	call IsDigit
	jz StateC
	cmp al, ENTER_KEY
	je Quit
	call DisplayError
	jmp Quit

Quit:
	invoke ExitProcess,0
main endp

GetNext proc
	call ReadChar
	call WriteChar
	ret
GetNext endp

DisplayError proc
	push edx
	mov edx, OFFSET ErrorMsg
	call WriteString
	pop edx
	ret
DisplayError endp

end main