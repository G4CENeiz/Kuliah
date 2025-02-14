@echo off
set /p dirname=Enter the name of the directory: 
mkdir %dirname%
for /l %%i in (1,1,17) do (
    mkdir %dirname%\week%%i
    echo . > %dirname%\week%%i\placeholder
)
echo Directory "%dirname%" created with 17 folders, each containing a placeholder file.
pause