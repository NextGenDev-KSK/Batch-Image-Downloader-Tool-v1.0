@echo off
setlocal enabledelayedexpansion

echo ---------------------------------------------------
echo ---------------------------------------------------
echo --------------------------------------------------- 
echo [[         IMAGE DOWNLOADER TOOL v1.0            ]]
echo [[          Code created by Krithik S            ]]
echo ---------------------------------------------------
echo [[                 Features                      ]]
echo [[      - Auto creates downloads folder          ]]
echo [[      - Detects file extension (.jpg, .png)    ]]
echo [[      - Skips bad links (no extension)         ]]
echo [[      - Shows progress                         ]]
echo [[  This tool is secure. Use trusted links only. ]]
echo [[  Not responsible for harmful file contents.   ]]
echo ---------------------------------------------------
echo ---------------------------------------------------
echo ---------------------------------------------------

REM File containing URLs
set "file=img_links.txt"

REM Check if file exists
if not exist "%file%" (
    echo [ERROR] File "%file%" not found.
    pause
    exit /b
)

REM Create downloads folder if not exists
if not exist "downloads" mkdir downloads

set /a count=1

REM Read lines from file
for /f "usebackq delims=" %%A in ("%file%") do call :process_line "%%A"

echo.
echo Download complete.
pause
exit /b

:process_line
set "url=%~1"

REM Skip empty lines
if "%url%"=="" (
    echo Skipping empty line.
    goto :eof
)

REM Get the filename from the URL
for %%F in ("%url%") do (
    set "filename=%%~nxF"
)

REM Get extension
for %%E in ("!filename!") do (
    set "ext=%%~xE"
)

set "ext=!ext:~1!"

if "!ext!"=="" (
    echo Skipping !url! (no extension found)
) else (
    echo - Downloading !url! as image!count!.!ext!
    curl --silent --show-error --location "!url!" -o "downloads\image!count!.!ext!"
    if errorlevel 1 (
        echo [ERROR] Failed to download !url!
    )
    set /a count+=1
)

goto :eof
