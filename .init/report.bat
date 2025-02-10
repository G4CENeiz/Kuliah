@echo off
:: Get the directory where the script is located
set scriptdir=%~dp0

set /p foldername=Enter the name of the folder: 
set /p filename=Enter the name of the .typ file (without extension): 

:: Create the folder
mkdir "%foldername%"

:: Create the .typ file with the provided content
(
    echo #set page^(
    echo   paper: "a4",
    echo   margin: 1.25in
    echo ^)
    echo #set text^(size: 12pt^)
    echo #set align^(center^)
    echo.
    echo #let subject = "Subject Name"
    echo #let chapter = "Chapter Name"
    echo #let name = "Muhammad Baihaqi Aulia Asy’ari"
    echo #let NIM = 2241720145
    echo #let className = ""
    echo #let department = "Information Technology"
    echo #let studyProgram = "D4 Informatics Engineering"
    echo.
    echo #text^(
    echo   size: 20pt, 
    echo   strong[
    echo     #subject \
    echo     #v^(.25cm^)
    echo     #chapter
    echo   ]
    echo ^) \
    echo.
    echo #v^(1fr^)
    echo #box^(width: 6cm, image^("img/polinema-logo.png"^)^) \
    echo #v^(1fr^)
    echo.
    echo *Name* \
    echo #name \
    echo.
    echo #v^(.5cm^)
    echo *NIM* \
    echo #NIM \
    echo.
    echo #v^(.5cm^)
    echo *Class* \
    echo #className \
    echo.
    echo #v^(.5cm^)
    echo *Department* \
    echo #department \
    echo.
    echo #v^(.5cm^)
    echo *Study Program* \
    echo #studyProgram
    echo.
    echo #pagebreak^(^)
    echo.
    echo #set align^(left^)
    echo.
    echo #outline^(^)
    echo.
    echo #pagebreak^(^)
) > "%foldername%\%filename%.typ"

:: Create the img folder and copy the image from the script's directory
mkdir "%foldername%\img"
if exist "%scriptdir%polinema-logo.png" (
    copy "%scriptdir%polinema-logo.png" "%foldername%\img\"
) else (
    echo Error: "polinema-logo.png" not found in the script's directory.
)

:: Create the .gitignore file to ignore the png
(
    echo img/polinema-logo.png
    echo *.pdf
) > "%foldername%\.gitignore"

echo Folder "%foldername%" created with:
echo - "%filename%.typ"
echo - "img" folder containing "polinema-logo.png"
echo - ".gitignore"
pause