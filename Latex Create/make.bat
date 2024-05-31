@echo off
REM Set the source directory to the 'Latex' folder inside the current directory of the batch file
set SOURCE_DIR=%~dp0Latex

REM Check if the source directory exists
if not exist "%SOURCE_DIR%" (
    echo Source directory %SOURCE_DIR% does not exist.
    pause
    exit /b 1
)

REM Ask for the destination directory
set /p DEST_DIR="Enter the path to the destination folder: "

REM Ask for the new folder name
set /p NEW_FOLDER_NAME="Enter the new folder name (leave blank to use the source folder name): "

REM If no new folder name is provided, use the source folder name
if "%NEW_FOLDER_NAME%"=="" (
    for %%f in ("%SOURCE_DIR%") do set NEW_FOLDER_NAME=%%~nxf
)

REM Ensure the destination directory exists
if not exist "%DEST_DIR%" (
    echo Creating destination directory: %DEST_DIR%
    mkdir "%DEST_DIR%"
)

REM Define the full destination path including the new folder name
set FULL_DEST_PATH=%DEST_DIR%\%NEW_FOLDER_NAME%

REM Copy the source folder to the destination with the new folder name
echo Copying folder from %SOURCE_DIR% to %FULL_DEST_PATH%
xcopy /E /I "%SOURCE_DIR%" "%FULL_DEST_PATH%"

REM Check if the copy was successful
if %errorlevel% equ 0 (
    echo Folder copied and renamed successfully!
) else (
    echo Error occurred during the copy process.
    pause
    exit /b 1
)

REM Ask for the .tex file name
set /p TEX_FILE_NAME="Enter the name for the .tex file (leave blank to name it template.tex): "

REM If no .tex file name is provided, use the default name "template.tex"
if "%TEX_FILE_NAME%"=="" (
    set TEX_FILE_NAME=template.tex
) else (
    set TEX_FILE_NAME=%TEX_FILE_NAME%.tex
)

REM Define the path for the .tex file
set TEX_FILE=%FULL_DEST_PATH%\%TEX_FILE_NAME%

REM Ask for the title and author name
set /p SUBJECT="Enter the subject for the document: "
set /p SUBTITLE="Enter the subtitle for the document: "

REM Create and write the template text to the .tex file
(
echo \documentclass[12pt,titlepage]{article}
echo \usepackage[margin=1.25in]{geometry}
echo \usepackage{graphicx,amsmath,blindtext,minted}
echo %% Variables definition
echo \newcommand{\vSubject}{%SUBJECT%}
echo \newcommand{\vSubtitle}{%SUBTITLE%}
echo \newcommand{\vName}{Muhammad Baihaqi Aulia Asy'ari}
echo \newcommand{\vNIM}{2241720145}
echo \newcommand{\vClass}{2I}
echo \newcommand{\vDepartment}{Information Technology}
echo \newcommand{\vStudyProgram}{D4 Informatics Engineering}
echo %% [START] Tikz related stuff
echo \usepackage{tikz}
echo \usetikzlibrary{svg.path,calc,shapes.geometric,shapes.misc}
echo \tikzstyle{terminator} = [rectangle, draw, text centered, rounded corners = 1em, minimum height=2em]
echo \tikzstyle{preparation} = [chamfered rectangle, chamfered rectangle sep=0.75em, draw, text centered, minimum height = 2em]
echo \tikzstyle{process} = [rectangle, draw, text centered, minimum height=2em]
echo \tikzstyle{decision} = [diamond, aspect=2, draw, text centered, minimum height=2em]
echo \tikzstyle{data}=[trapezium, draw, text centered, trapezium left angle=60, trapezium right angle=120, minimum height=2em]
echo "\tikzstyle{connector} = [line width=0.25mm,->]"
echo %% [END] Tikz related stuff
echo %% [START] Fancy header related stuff
echo \usepackage{fancyhdr}
echo \pagestyle{fancy}
echo \setlength{\headheight}{15pt}
echo \fancyhead{}
echo \fancyfoot{}
echo \fancyfoot[L]{\thepage}
echo \fancyfoot[R]{\textit{\vSubject - \vSubtitle}}
echo \renewcommand{\footrulewidth}{0.4pt}
echo % default is 0pt, overline for footer
echo %% [END] Fancy header related stuff
echo %% [START] Custom tabular command related stuff
echo \usepackage{tabularx}
echo \newcommand{\details}[2]{
echo     #1 & #2  \\
echo }
echo %% [END] Custom tabular command related stuff
echo %% [START] Figure related stuff
echo \newcommand{\image}[3][1]{
echo     \begin{figure}[h]
echo         \centering
echo         \includegraphics[#1]{#2}
echo         \caption{#3}
echo         \label{#3}
echo     \end{figure}
echo }
echo %% [END] Figure related stuff
echo %%
echo \usepackage{pgf-umlcd}
echo \renewcommand{\umldrawcolor}{black}
echo \renewcommand{\umlfillcolor}{white}
echo %%
echo %% [BEGIN] Custom enumerator
echo \usepackage{enumitem}
echo %% [END] Custom enumerator
echo %% [BEGIN] Paragraph indent
echo \usepackage{indentfirst}
echo %% [END] Paragraph indent
echo %% [BEGIN] URL
echo \usepackage{hyperref}
echo \hypersetup{
echo     colorlinks=true,
echo     linkcolor=blue,
echo     filecolor=magenta,      
echo     urlcolor=cyan,
echo     pdftitle={Overleaf Example},
echo     pdfpagemode=FullScreen,
echo     }
echo \urlstyle{same}
echo %% [END] URL
echo \begin{document}
echo \begin{titlepage}
echo     \centering
echo     \vfill
echo     {\bfseries\LARGE
echo         \vSubject\\
echo         \vskip0.25cm
echo         \vSubtitle
echo     }
echo     \vfill
echo     \includegraphics[width=6cm]{images/polinema-logo.png}
echo     \vfill
echo     {
echo         \textbf{Name}\\
echo         \vName\\
echo         \vskip0.5cm
echo         \textbf{NIM}\\
echo         \vNIM\\
echo         \vskip0.5cm
echo         \textbf{Class}\\
echo         \vClass\\
echo         \vskip0.5cm
echo         \textbf{Department}\\
echo         \vDepartment\\
echo         \vskip0.5cm
echo         \textbf{Study Program}\\
echo         \vStudyProgram
echo     }
echo \end{titlepage}
echo \newpage
echo \end{document}
) > "%TEX_FILE%"

REM Check if the .tex file was created successfully
if exist "%TEX_FILE%" (
    echo .tex file created successfully at %TEX_FILE%
) else (
    echo Failed to create the .tex file.
)

pause
