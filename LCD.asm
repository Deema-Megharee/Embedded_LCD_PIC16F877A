#include <p16f877A.inc>

cblock 0x20
    tempChar
    charCount
    msd
    lsd
endc

org 0x000
INT_SVC
    goto Initial

Initial
    bsf STATUS, RP0
    clrf TRISA
    clrf TRISD
    movlw 0x07
    movwf ADCON1
    bcf STATUS, RP0
    clrf PORTA
    clrf PORTD
    movlw d'26'
    movwf charCount
    movlw 0x38
    call send_cmd
    movlw 0x0E
    call send_cmd
    movlw 0x02
    call send_cmd
    movlw 0x01
    call send_cmd

Main
    movlw 'A'
    movwf tempChar

CharacterDisplay
    call send_char
    movf tempChar, w
    addlw 1
    movwf tempChar
    movf tempChar, w
    decfsz charCount, f
    goto CharacterDisplay

Mainloop
    movlw 0x1C
    call send_cmd
    call delay
    goto Mainloop

send_cmd
    movwf PORTD
    bcf PORTA, 1
    bsf PORTA, 3
    nop
    bcf PORTA, 3
    call delay
    return

send_char
    movwf PORTD
    bsf PORTA, 1
    bsf PORTA, 3
    nop
    bcf PORTA, 3
    call delay
    return

delay
    movlw 0x80
    movwf msd
    clrf lsd
loop2
    decfsz lsd, f
    goto loop2
    decfsz msd, f
    goto loop2
    return

end
