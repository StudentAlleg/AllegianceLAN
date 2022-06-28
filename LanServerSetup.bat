@echo off

@setlocal enableextensions
@cd /d "%~dp0"

echo Administrative permissions required. Detecting permissions...

net session >nul 2>&1
if %errorLevel% == 0 (
    echo Success: Administrative permissions confirmed.
) else (
    echo Failure: Current permissions inadequate. Please run this script by right clicking it, then select 'Run As Administrator'
	pause
	goto :end
)

@ECHO Installing AGC.dll
regsvr32 AGC.dll

@ECHO Installed Allegiance Game Server in Interactive Mode.
AllSrv.exe -RegServer

@ECHO Launching AllSrvUI.
AllSrvUI.exe

@ECHO Setup complete. In the future, just run AllSrvUI to start the LAN server. You will not need to run this setup again.
@pause

:end