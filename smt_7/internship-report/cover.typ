#import "data.typ": *

#let gap = 3.1cm

#align(
  center,
  grid(
    text(16pt)[
      #upper[*internship report*]
    ],
    v(0.45in),
    text(14pt)[
      #upper[*#title*]
    ],
    v(0.25in),
    text(14pt)[
      #upper[*#company.name*]
    ],
    v(gap),
    image("../green-computing/paper-assignment/images/polinema-logo.png", width: 4.37cm),
    v(gap),
    text(14pt)[
      Written by: \
      #student.name #h(insetSize*3.75) #student.nim
    ],
    v(gap),
    text(16pt)[
      *INFORMATICS ENGINEERING STUDY PROGRAM* \

      *INFORMATION TECHNOLOGY DEPARTMENT* \
      
      *STATE POLYTECHNIC OF MALANG* \
      
      *2025*
    ],
  ),
)
