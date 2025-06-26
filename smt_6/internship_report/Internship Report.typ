#let title = "project title"
#let company = (
  name: "PT. Global Scholarship Services Indonesia",
  address: "Jalan Taman Kencana nomor 3, Babakan, Bogor Tengah, Bogor",
  field: "Development of human resource",
  period:  datetime(day: 20, month: 2, year: 2025).display("[day] [month repr:long] [year]") + " - " + datetime(day: 30, month: 6, year: 2025).display("[day] [month repr:long] [year]")
)
#let student = (
  name: "Muhammad Baihaqi Aulia Asy'ari",
  nim: "2241720145"
)
#let fieldSupervisor = (
  name: "Muhammad Sigit Susanto",
  nip: "",
  position: "Company Director"
)
#let supervisingLecturer = (
  name: "Prof. Cahya Rahmad, ST., M.Kom., Dr. Eng.",
  nip: "197202022005011002"
)
#let headOfProgram = (
  name: "Dr. Ely Styo Astuti, ST., MT.",
  nip: "197605152009122001"
)
#let headOfDepartment = (
  name: "Prof. Dr. Eng. Rosa Andrie Asmara,ST., MT.",
  nip: "198010102005011001"
)
#let approvalSignDate = "Bogor, " + datetime(day: 1, month: 7, year: 2025).display("[day] [month repr:long] [year]")
#let presentationDate = datetime(day: 1, month: 7, year: 2025).display("[day] [month repr:long] [year]")

#let tabIndent = [#h(1in/2)]

#set page(
  paper: "a4",
  margin: (
    top: 4cm,
    bottom: 3cm,
    left: 4cm,
    right: 3cm
  )
)
#set text(
  size: 12pt, 
  font: "Times New Roman"
)

#set align(center)

#text(size: 16pt)[#upper[*internship report*]] \ \

#text(size: 14pt)[#upper[*#title*]]

#text(size: 14pt)[#upper[*#company.name*]]

#v(1fr)

#image("../../init/polinema-logo.png", width: 4.37cm)

#v(1fr)

#text(size: 14pt)[Written by:]

#text(size: 14pt)[#student.name#tabIndent#tabIndent#tabIndent#student.nim]

#v(1fr)

#text(size: 16pt)[#upper[*d4 informatics engineering program*]]

#text(size: 16pt)[#upper[*department of informatics technology*]]

#text(size: 16pt)[#upper[*politeknik negeri malang*]]

#text(size: 16pt)[#upper[*2025*]]

#pagebreak()

#set page(numbering: "i")

#set align(left)
#show heading: set align(center)
#show heading.where(level: 2): set align(left)
#set par(
  spacing: 1.5em,
  justify: true,
)

#heading(upper("approval"))

The undersign below:
#table(
  columns: (auto, auto),
  stroke: none,
  inset: (x: 0pt),
  [#tabIndent Name#tabIndent], [: #fieldSupervisor.name],
  [#tabIndent NIP#tabIndent], [: #fieldSupervisor.nip],
  [#tabIndent Position#tabIndent], [: #fieldSupervisor.position],
)
\ \
That the sudent:

*#tabIndent #student.name #tabIndent #student.nim*

\ \
Have successfully completed the internship at:
#table(
  columns: (auto, auto),
  stroke: none,
  inset: (x: 0pt),
  [#tabIndent Company Name], [: #company.name],
  [#tabIndent Company Address], [: #company.address],
  [#tabIndent Field], [: #company.field],
  [#tabIndent Peroid], [: #company.period],
)
\ \

#align(
  center,
  table(
    align: center,
    columns: (auto),
    stroke: none,
    [#approvalSignDate],
    v(5em),
    [#fieldSupervisor.name],
  )
) 

#pagebreak()
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
  Politeknik Negeri Malang, on #presentationDate.
]

\
Malang, #presentationDate

Approved By,

#table(
  align: center + bottom,
  stroke: 0pt,
  columns: (1fr, 1fr),
  [Head of \ D4 Informatics Engineering Program ], [Supervisor],
  [#v(5em)], [#v(5em)],
  [#underline(headOfProgram.name) \ NIP. #headOfProgram.nip], 
  [#underline(supervisingLecturer.name) \ NIP. #supervisingLecturer.nip],
)
\
#table(
  align: center + bottom,
  stroke: 0pt,
  columns: (1fr),
  [Mengetahui, \ Head of The Department of Information Technology ],
  [#v(5em)],
  [#underline(headOfDepartment.name) \ NIP. #headOfDepartment.nip],
)

#set align(left)
#pagebreak()

#heading(upper("abstract"))

#pagebreak()

#heading(upper("preface"))
\
#par(
  first-line-indent: 0.5in
)[
  #lorem(40)
  
  #lorem(40)

  #lorem(40)

  #lorem(40)
]

#align(
  right,
  table(
    align: left,
    columns: (auto),
    stroke: none,
    [Malang, #presentationDate],
    v(5em),
    [#student.name],
  )
) 

#pagebreak()

#heading(upper("list of content"))
#outline(title: none, indent: 2em)

#pagebreak()

#heading(upper("list of table"))
#outline(title: none, target: figure.where(kind: table))

#pagebreak()

#heading(upper("list of figures"))
#outline(title: none, target: figure.where(kind: image))

#pagebreak()

#heading(upper("list of appendicies"))
#outline(title: none, target: label("appendix"))

#pagebreak()

#counter(page).update(1)

#set page(numbering: "1")

#show heading.where(level: 1): set heading(
    numbering: (..) => "CHAPTER " + counter(heading).display("I")
)

#set heading(numbering: "1.1.")

= #upper("introduction")
== Company Profile	
== Work Unit Scope

#pagebreak()

= #upper("theoretical study")

#pagebreak()

= #upper("internship activities")

== Activity Realization
== Relevance of Theory and Practice
== Issues

#pagebreak()

= #upper("recomendations")

#pagebreak()

= #upper("assignments")

#pagebreak()

= #upper("conclusions")

== Conclusions
== Suggestions