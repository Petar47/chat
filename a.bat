@echo off
set FRAMEWORK=net8.0-windows10.0.19041.0
set PROJECT_PATH=%~dp0ChatSustav

echo Pokrećem prvu instancu...
start "ChatSustav Instanca 1" cmd /k "dotnet run --no-launch-profile --framework %FRAMEWORK% --project %PROJECT_PATH%"

timeout /t 2 >nul

echo Pokrećem drugu instancu...
start "ChatSustav Instanca 2" cmd /k "dotnet run --no-launch-profile --framework %FRAMEWORK% --project %PROJECT_PATH%"
