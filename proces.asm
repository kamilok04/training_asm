; �������������������������������������������������������������������������
    include \masm32\include\masm32rt.inc
; �������������������������������������������������������������������������

.386
    ;model? mo�na zignorowa�
option casemap:none     ; wielko�� liter ma znaczenie
.data
    tytul db "To jest moje okno!",0     ; zmienna mo�e mie� dowoln� nazw�
                                        ; cecha j�zyka: string musi ko�czy� si� zerem
    tekst db "zawarto�� pude�ka",0
    
.code
    start:
        invoke MessageBox,NULL,addr tekst,addr tytul,MB_OK
            ; funkcja MessageBox: NULL, tekst pud�a, tuty� pud�a, sta�a
        invoke ExitProcess,0   ; wyjd� z procesu
    end start

  
