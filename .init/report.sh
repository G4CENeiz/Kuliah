#!/bin/bash

# Get the directory where the script is located
scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Prompt the user for folder and file names
read -p "Enter the name of the folder: " foldername
read -p "Enter the name of the .typ file (without extension): " filename

# Create the folder
mkdir -p "$foldername"

# Create the .typ file with the provided content
cat <<EOF > "$foldername/$filename.typ"
#set page(
  paper: "a4",
  margin: 1.25in
)
#set text(size: 12pt)
#set align(center)

#let subject = "Subject Name"
#let chapter = "Chapter Name"
#let name = "Muhammad Baihaqi Aulia Asy’ari"
#let NIM = 2241720145
#let className = "2I"
#let department = "Information Technology"
#let studyProgram = "D4 Informatics Engineering"

#text(
  size: 20pt, 
  strong[
    #subject \
    #v(.25cm)
    #chapter
  ]
) \

#v(1fr)
#box(width: 6cm, image("img/polinema-logo.png")) \
#v(1fr)

*Name* \
#name \

#v(.5cm)
*NIM* \
#NIM \

#v(.5cm)
*Class* \
#className \

#v(.5cm)
*Department* \
#department \

#v(.5cm)
*Study Program* \
#studyProgram

#pagebreak()

#set align(left)

#outline()

#pagebreak()
EOF

# Create the img folder and copy the image from the script's directory
mkdir -p "$foldername/img"
if [ -f "$scriptdir/polinema-logo.png" ]; then
    cp "$scriptdir/polinema-logo.png" "$foldername/img/"
else
    echo "Error: 'polinema-logo.png' not found in the script's directory."
fi

# Create the .gitignore file to ignore the png
echo "img/polinema-logo.png" > "$foldername/.gitignore"

echo "Folder '$foldername' created with:"
echo "- '$filename.typ'"
echo "- 'img' folder containing 'polinema-logo.png'"
echo "- '.gitignore' file to ignore 'polinema-logo.png'"