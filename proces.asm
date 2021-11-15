; ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤
    include \masm32\include\masm32rt.inc
; ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

.386
    ;model? mo¿na zignorowaæ
option casemap:none     ; wielkoœæ liter ma znaczenie
.data
    tytul db "To jest moje okno!",0     ; zmienna mo¿e mieæ dowoln¹ nazwê
                                        ; cecha jêzyka: string musi koñczyæ siê zerem
    tekst db "zawartoœæ pude³ka",0
    
.code
    start:
        invoke MessageBox,NULL,addr tekst,addr tytul,MB_OK
            ; funkcja MessageBox: NULL, tekst pud³a, tuty³ pud³a, sta³a
        invoke ExitProcess,0   ; wyjdŸ z procesu
    end start

  
