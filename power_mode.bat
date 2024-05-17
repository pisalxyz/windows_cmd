@echo off
:: Check if Ultimate Performance plan is available
powercfg /list | findstr /C:"Ultimate Performance"
if %errorlevel% neq 0 (
    :: Enable Ultimate Performance plan
    powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
)

:: Set the power plan to Ultimate Performance
powercfg /setactive e9a42b02-d5df-448d-aa00-03f14749eb61

echo Ultimate Performance mode is now active.
pause
