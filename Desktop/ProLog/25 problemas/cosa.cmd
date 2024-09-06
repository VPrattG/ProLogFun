@echo off
setlocal enabledelayedexpansion
for /L %%i in (1,1,25) do (
    set "num=0%%i"
    set "num=!num:~-2!"
    echo. > programa!num!.erl
)
endlocal
