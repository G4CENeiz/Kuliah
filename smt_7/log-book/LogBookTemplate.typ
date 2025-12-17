#import "data.typ": *
#let logBook(
  activities: (),
  doc
) = {
  set page(
    margin: 1in
  )
  set text(
    size: 12pt,
    font: "Times New Roman",
    hyphenate: false
  )

// Header
  box()[
    #box()[
      #image(
        "../img/polinema-header-logo.png",
        height: 3.17cm
      )
    ]
    #box(width: 1fr)[
      #align(center + horizon)[
        #text(size: 14pt)[
          KEMENTERIAN PENDIDIKAN TINGGI, SAINS,\
          DAN TEKNOLOGI\
        ]
        POLITEKNIK NEGERI MALANG\
        *JURUSAN TEKNOLOGI INFORMASI*\
        #text(size: 9pt)[
          Jalan Soekarno Hatta Nomor 9 Jatimulyo, Lowokwaru, Malang 65141\
          Telepon (0341) 404424, 404425, Faksimile (0341) 404420\
          Laman www.polinema.ac.id\
        ]
      ]
    ]
  ]

  box()[
    #line(length: 100%, stroke: 2.25pt)
    #text(size: 11pt)[]
  ]

// Content
  align(center)[
    *LOG BOOK KEGIATAN*\
    *PROGRAM MAGANG KAMPUS MERDEKA*\
  ]

  set text(
    size: 11pt
  )
  box(
    inset: 0pt,
    outset: 0pt
  )[
    #table(
      columns: (1fr, 1fr),
      rows: 0.63cm,
      inset: (x: 0pt),
      stroke: gray + 0.75pt,
      [*Nama*], [*: #student_name*],
      [*NIM*], [*: #student_nim*],
      [*Program Studi*], [*: #studyProgram*],
      [*Nama Mitra*], [*: #partnerName*],
    )
  ]
  set text(
    font: "Calibri",
    size: 11pt
  ) 
  box(
    inset: 0pt,
    outset: 0pt
  )[
    #table(
      align: center + horizon,
      inset: 2.5pt,
      stroke: 0.5pt,
      columns: (1fr, 2.75cm, 2.5cm, 7.75cm),
      rows: (auto, 1.6cm),
      table.header(
        table.cell(fill: gray)[*Hari, Tanggal*],
        table.cell(fill: gray)[*Jam Masuk*],
        table.cell(fill: gray)[*Jam Pulang*],
        table.cell(fill: gray)[*Kegiatan*],
      ),
      ..activities.map((item) => (
        [#if item.date      == none [] else {item.date.display("[weekday], [day]/[month]/[year]")}],
        [#if item.clockIn   == none [] else {item.clockIn.display("[hour]:[minute]")}],
        [#if item.clockOut  == none [] else {item.clockOut.display("[hour]:[minute]")}],
        table.cell(align: left + horizon)[#if item.activity  == none [] else {item.activity}],
      )).flatten(),
    )
  ]
// Signing field
  box(height: 6em)[
    #box(width: 3fr)[]
    #box(width: 2fr)[]
    #box(width: 4fr)[
      Mahasiswa,
      #if (ttd == none) {
        v(5em)
      } else {
        ttd
      }
      #student_name
    ]
  ]
  v(1em)
  box(height: 1em)[
    #box(width: 3fr)[]
    #box(width: 2fr)[
      #align(left)[
        Mengetahui,
      ]
    ]
    #box(width: 4fr)[]
  ]
  box(height: 6em)[
    #box(width: 3fr)[
      Pembimbing Lapangan,
      #v(5em) 
      #fieldSupervisorName
    ]
    #box(width: 2fr)[]
    #box(width: 4fr)[
      Dosen Pembimbing,
      #v(5em) 
      #supervisorLecturerName
    ]
  ]
}