#set text(
  size: 12pt,
  font: "Times New Roman",
)

#show outline: it => {
  show heading: set align(center)
  it
}

#show outline.entry.where(level: 1): it => {
  v(12pt, weak: true)
  [*Chapter *]
  strong(it)
}

#let title = "Budget Better: A Personalized Approach to Financial Management Through Technology"
#let name = "Muhammad Baihaqi Aulia Asy'ari"
#let nim = 2241720145

#align(
  center + horizon,
  grid(
    text(16pt)[
      #upper[*#title*]
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
      *#name NIM. #nim*
    ],
    v(4cm),
    image("images/polinema-logo.png", width: 4cm),
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

// #set page(numbering: "i")
// #counter(page).update(1)

// #let date = "XX MONTH XXXX"

// #align(
//   center + horizon,
//   grid(
//     upper[*Approval Page*],
//     v(2cm),
//     text(12pt)[
//       #upper[*#title*]
//     ],
//     v(2cm),
//     text(12pt)[
//       #upper[*#name*] \
//       #upper[*#nim*]
//     ],
//     v(2cm),
//     text(12pt)[
//       Proposal Skripsi ini telah diuji pada tanggal 
//     ],
//   )
// )

// #pagebreak()
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

#set page(numbering: "1")
#counter(page).update(1)

= Introduction
== Background
In today’s fast-paced world, many individuals find it challenging to maintain control over their personal finances. Lack of budgeting, limited understanding of personal spending habits, and difficulty setting realistic financial goals can lead to overspending, inadequate savings, and increased financial stress. While there are financial tools available, they are often too complex or lack personalization, making them less effective for everyday users.
// @Messer2022

== Problem Statement
The core issue is the absence of an accessible, user-friendly financial application that can assist individuals in managing their finances effectively. Existing solutions are either too complicated or insufficiently tailored to users' diverse financial needs. This lack of effective financial management tools makes it difficult for users to track their spending, set goals, and make informed financial decisions.

== Scope of the problem
This study focuses on developing a personal financial application aimed at young adults and individuals who want to improve their financial health but lack prior experience with financial management tools. The scope includes basic functionalities such as expense tracking, budget planning, financial goal-setting, and personalized insights to aid financial literacy.

== Objectives
The objectives of this study are:

  + To design and develop an intuitive personal finance application that helps users track expenses and income.
  + To enable users to set and monitor personal financial goals.
  + To offer personalized insights into spending habits to promote informed financial decisions.
  + To improve user engagement with financial planning by providing a straightforward, user-centric interface.

== Significance
By providing a simplified, accessible tool for financial management, this application aims to empower individuals to take control of their financial well-being. It will help users develop better financial habits, reduce impulsive spending, and increase their savings potential. Ultimately, this solution seeks to contribute to improved financial literacy and reduced financial stress among users.

= Review of Related Literature
== Related Studies
#lorem(40) \ \
#lorem(40)

== Theoretical Foundation
#lorem(40) \ \
#lorem(40)  

// #pagebreak()

// #bibliography("references.bib", style: "apa")