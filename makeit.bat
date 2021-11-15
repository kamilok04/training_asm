@echo off

    if exist "proces.obj" del "proces.obj"
    if exist "proces.exe" del "proces.exe"

    \masm32\bin\ml /c /coff "proces.asm"
    if errorlevel 1 goto errasm

    \masm32\bin\PoLink /SUBSYSTEM:CONSOLE "proces.obj"
    if errorlevel 1 goto errlink
    dir "proces.*"
    goto TheEnd

  :errlink
    echo _
    echo Link error
    goto TheEnd

  :errasm
    echo _
    echo Assembly Error
    goto TheEnd
    
  :TheEnd

pause
