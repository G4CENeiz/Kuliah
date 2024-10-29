#set text(
  size: 12pt,
  font: "Times New Roman",
)

#set page(numbering: "1")

#show outline: it => {
  show heading: set align(center)
  it
}

#show outline.entry.where(level: 1): it => {
  v(12pt, weak: true)
  [*Chapter *]
  strong(it)
}

#align(
  center + horizon,
  grid(
    text(16pt)[
      *AUTOMATED GRADING SYSTEM USING STATIC CODE ANALYSIS TO ELIMINATE MANUAL GRADING PROCESS FOR PROGRAMMING ASSIGNMENTS*
    ],
    v(2cm),
    text(16pt)[
      *BACHELOR ESSAY PROPOSAL* \
      *(PROPOSAL SKRIPSI)* \
      *2026* \
    ],
    v(2cm),
    text(16pt)[
      *By:* \
      *Dicha Zelianivan Arkana NIM. 2241720002*
    ],
    v(4cm),
    image("images/polinema-logo.png", width: 4.5cm),
    v(3cm),
    text(16pt)[
      *INFORMATICS ENGINEERING STUDY PROGRAM* \
      *INFORMATION TECHNOLOGY DEPARTMENT* \
      *STATE POLYTECHNIC OF MALANG* \
      *2026*
    ]
  ),
)

#pagebreak()
#outline(
  title: [Table of Contents],
  indent: auto,
)
#pagebreak()

#set heading(numbering: "1.1.")
#set par(
  first-line-indent: 1cm,
  justify: true,
)

= Introduction
== Background
#lorem(40) \ \
#lorem(40)
@Messer2022

== Problem Statement
#lorem(40) \ \
#lorem(40)

== Objective of the study
#lorem(40) \ \
#lorem(40)

== Significance of the study
#lorem(40) \ \
#lorem(40)

== Scope of the study
#lorem(40) \ \
#lorem(40)

= Review of Related Literature
== Previous Research Finding
#lorem(40) \ \
#lorem(40)

== Concept of Problem in Programming Assignments Grading System
#lorem(40) \ \
#lorem(40)

== Conceptual Framework
#lorem(40) \ \
#lorem(40)

= Research Method
#lorem(40) \ \
#lorem(40)

= Research Finding and Discussion
#lorem(40) \ \
#lorem(40)

= Conclusion and Suggestion
== Conclusions
#lorem(40) \ \
#lorem(40)

== Suggestions
#lorem(40) \ \
#lorem(40)

#pagebreak()

#bibliography("references.bib", style: "apa")