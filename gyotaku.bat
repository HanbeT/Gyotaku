@echo off
setlocal enabledelayedexpansion

call :main


exit /b

:main

    set /p inputDir=Input target folder path.:
    set /p outputDir=Input output folder path.:

    set timestamp=%date:/=%_%time:~0,8%
    set timestamp=%timestamp::=%
    set outputFileName=%outputDir%\gyotaku-%timestamp%.txt

    call :searchDir %outputFileName% %inputDir%

    echo Finish. Result file is '%outputFileName%'.
    exit /b

:searchDir
    
    exit /b