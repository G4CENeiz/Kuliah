#import "data.typ": *
#set align(center)

#heading(upper("approval")) 

\
#text(size: 14pt)[#upper("internship report")]

\
#text(size: 14pt)[*#upper(title)*]

#table(
  align: center,
  stroke: 0pt,
  columns: (1fr, 1fr),
  [#student.name], [#student.nim]
)

\
#text(size: 11pt)[
  Has been reviewed and approved during the Practical Fieldwork Presentation of the \ 
  Department of Information Technology, \
  Politeknik Negeri Malang, on #presentationDate.display("[day] [month repr:long] [year]").
]

\
Malang, #presentationDate.display("[day] [month repr:long] [year]")

Approved By,

#table(
  columns: (50%, 56%),
  align: center + horizon,
  inset: 0pt,
  stroke: none,
  [
    Chairman of \ 
    D4 Informatics Engineering Program 
  ], 
  [
    Supervising Lecturer
  ],

  v(5em), v(5em),

  [
    #underline(headOfProgram.name) \ 
    NIP. #headOfProgram.nip
  ], 
  [
    #underline(supervisingLecturer.name) \ 
    NIP. #supervisingLecturer.nip
  ],
)
\
#table(
  align: center + bottom,
  stroke: 0pt,
  columns: (1fr),
  [Acknowledged, \ Chairman of The Department of Information Technology ],
  [#v(5em)],
  [#underline(headOfDepartment.name) \ NIP. #headOfDepartment.nip],
)