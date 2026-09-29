@echo off
setlocal
set "GODOT_EXE=%~dp0Iniciar Jogo\Godot_v4.7.2-stable_win64.exe"

if exist "%GODOT_EXE%" (
    echo Iniciando o jogo na Arena de Teste...
    start "" "%GODOT_EXE%" --path "%~dp0."
) else (
    echo Executavel do Godot nao encontrado na pasta 'Iniciar Jogo'.
    pause
)
endlocal
