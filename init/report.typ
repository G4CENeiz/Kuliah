#let builder(
  subject: "Subject Name",
  chapter: "Chapter Name",
  name: "Muhammad Baihaqi Aulia Asy’ari",
  NIM: "2241720145",
  className: "",
  department: "Information Technology",
  studyProgram: "D4 Informatics Engineering",
  doc
) = {
  [
    #set page(
      paper: "a4",
      margin: 1.25in
    )
    #set text(size: 12pt)
    #set align(center)

    #text(
      size: 20pt, 
      strong[
        #subject \
        #v(.25cm)
        #chapter
      ]
    ) \

    #v(1fr)
    #box(width: 6cm, image("polinema-logo.png")) \
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
  ]
  doc
}