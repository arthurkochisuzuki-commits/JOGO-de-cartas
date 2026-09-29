@echo off
setlocal
set "GODOT_EXE=%~dp0Iniciar Jogo\Godot_v4.7.2-stable_win64.exe"

if exist "%GODOT_EXE%" (
    echo Iniciando o editor do Godot no projeto...
    start "" "%GODOT_EXE%" -e --path "%~dp0."
) else (
    echo Executavel do Godot nao encontrado na pasta 'Iniciar Jogo'.
    echo Verifique se o arquivo Godot_v4.7.2-stable_win64.exe esta presente.
    pause
)
endlocal
