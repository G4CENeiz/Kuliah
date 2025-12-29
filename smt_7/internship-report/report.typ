#import "@preview/i-figured:0.2.4"
#import "data.typ": *
#import "activity.typ": *
#set page(
  paper: "a4",
  margin: (
    top: 4cm,
    bottom: 3cm,
    left: 4cm,
    right: 3cm,
  ),
)
#set text(
  hyphenate: false,
  size: 12pt,
  font: "Times New Roman",
  kerning: true,
)

#set page(numbering: "i")

#include "cover.typ"

#set par(
  spacing: 1em,
  leading: 1em,
  first-line-indent: (
    amount: insetSize,
    all: true,
  ),
  linebreaks: "optimized",
  justify: true,
)

#show figure: i-figured.show-figure
#show heading: i-figured.reset-counters
#show heading.where(level: 1): set align(center)
#show heading: it => {
  if it.numbering != none {
    let num = counter(heading).display()
    stack(
      dir: ltr,
      spacing: 0pt,
      box(width: insetSize)[#num],
      text(size: 16pt)[#it.body],
    )
  } else {
    text(size: 16pt)[#it]
  }
}

#pagebreak()

#include "approval-company.typ"

#pagebreak()

#include "approval-campus.typ"

#pagebreak()

#heading(upper("abstract"))

#lorem(100)

#lorem(100)

#lorem(100)

#pagebreak()

#heading(upper("preface"))

All praise and gratitude are due to Almighty Allah, whose blessings and mercy have enabled me to successfully complete this report. This report is based on my internship activities from #internshipPeriod.start.display("[day] [month repr:long] [year]") - #internshipPeriod.end.display("[day] [month repr:long] [year]"), as part of the requirements for the internship program evaluation.

Throughout my internship journey and the process of writing this report, I received invaluable support and assistance from various parties. On this occasion, I would like to express my deepest gratitude to:

+ My parents and family, who provided unwavering support, prayers, and encouragement, both materially and spiritually.

+ Politeknik Negeri Malang, especially the leadership and faculty, for facilitating and encouraging students development through this program.

+ #company.name, where I completed my internship program, for the valuable experience I gained during the period of #internshipPeriod.start.display("[day] [month repr:long] [year]") - #internshipPeriod.end.display("[day] [month repr:long] [year]").

+ #headOfDepartment.name as the Head of the Information Technology Department at Politeknik Negeri Malang.

+ #headOfProgram.name as the Head of the D4 Informatics Engineering Study Program.

+ #supervisingLecturer.name who provided technical advice and direction during the internship.

+ Mr. #fieldSupervisor.name, as my internship field supervisor.

+ All other parties who supported and assisted me during the internship program, whose names I cannot mention one by one.

#align(
  right,
  table(
    align: left,
    columns: auto,
    stroke: none,
    [Malang, #prefaceDate.display("[day] [month repr:long] [year]")],
    image("../../smt_5/Internship Preparation/ttd.png", height: 5em),
    [#student.name],
  ),
)

#pagebreak()

#[
  #show outline.entry: it => {
    text(12pt)[#it]
  }
  #show outline.entry: set block(above: 1em, below: 1em)

  #let romanPrefixes = ("I", "II", "III", "IV", "V", "VI")
  #show outline.entry.where(level: 1): it => {
    if it.element.numbering != none {
      link(
        it.element.location(),
        it.indented([CHAPTER #it.prefix(): ], it.inner(), gap: 0em),
      )
    } else {
      link(
        it.element.location(),
        it.indented(it.prefix(), it.inner()),
      )
    }
  }

  #heading(upper("table of content"))
  #outline(title: none, indent: 2em)
]
// #pagebreak()

// #heading(upper("list of table"))
// #outline(title: none, target: figure.where(kind: table))

// #pagebreak()

// #heading(upper("list of figures"))
// #outline(title: none, target: figure.where(kind: image))

// #pagebreak()

// #heading(upper("list of appendicies"))
// #outline(title: none, target: label("appendix"))

#pagebreak()

#set heading(numbering: "1.1.")
#show heading.where(level: 1): set heading(numbering: "I.I")
#show heading.where(level: 1): it => {
  if it.numbering != none {
    align(center)[
      #text(size: 16pt)[
        CHAPTER #counter(heading).display() \ #it.body \
        #v(1em)
      ]
    ]
  } else {
    align(center)[
      #text(size: 16pt)[
        #it.body
        #v(1em)
      ]
    ]
  }
}

#set page(numbering: "1")

#counter(page).update(1)

#pagebreak()

= INTRODUCTION
#lorem(60)
== Company Profile
#lorem(60)
== Work Unit Scope
#lorem(60)
=== Location
#lorem(60)
=== Assignment Scope
#lorem(60)
=== Work Plan Schedule
#lorem(60)

#pagebreak()

= THEORETICAL STUDY
#lorem(60)
== REST API
#lorem(60)
== Laravel
#lorem(60)
== Traccar
#lorem(60)

#pagebreak()

= INTERNSHIP ACTIVITIES
// #lorem(60)
== Activity Realization
// #lorem(60)

// #figure(
//   caption: "Internship Activities Realization",
  #table(
    align: left,
    columns: (auto, auto, 1fr, 1fr, 1fr),
    table.header(
      repeat: false,
      table.cell(align: center)[Day], 
      table.cell(align: center)[Date], 
      table.cell(align: center)[Activities], 
      table.cell(align: center)[Task], 
      table.cell(align: center)[Achievement],
    ),
    ..(for (index, data) in activities.enumerate() {
      (
        [#(index + 1)],
        [#data.at("date", default: "-").display("[day] [month repr:long] [year]")],
        [#data.at("activity", default: "-")],
        [#data.at("task", default: "-")],
        [#data.at("achievement", default: "-")],
      )
    }),
  )
// )

== Relevance of Theory and Practice
#lorem(60)
== Issues
#lorem(60)

#pagebreak()

= RECOMMENDATIONS

#lorem(60)

#lorem(60)

#lorem(60)

#lorem(60)

#pagebreak()

= CONCLUSION
== Conclusion

#lorem(60)

#lorem(60)

== Suggestions

#lorem(60)

#lorem(60)


#pagebreak()

#align(center)[#heading(
  level: 1,
  numbering: none,
)[BIBLIOGRAPHY]]
#v(1em)

#bibliography(
  "references.bib",
  style: "ieee",
  title: none,
  full: false,
)
