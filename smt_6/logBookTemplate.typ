#let logBook(
  student: (),
  fieldSupervisorName: none,
  supervisorLecturerName: none,
  activities: (),
  ttd: none,
  doc
) = {
  set page(
    margin: 1in
  )
  set text(
    size: 12pt,
    font: "Times New Roman"
  )

// Header
  box()[
    #box()[
      #image(
        "polinema-header-logo.png",
        height: 3.17cm
      )
    ]
    #box(width: 1fr, height: 3.17cm)[
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
      [*Nama*], [*: #student.name*],
      [*NIM*], [*: #student.nim*],
      [*Program Studi*], [*: #student.studyProgram*],
      [*Nama Mitra*], [*: #student.partnerName*],
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
      rows: (auto, 1.6cm, 1.6cm, 1.6cm, 1.6cm, 1.6cm, 1.6cm),
      table.header(
        table.cell(fill: gray)[*Hari, Tanggal*],
        table.cell(fill: gray)[*Jam Masuk*],
        table.cell(fill: gray)[*Jam Pulang*],
        table.cell(fill: gray)[*Kegiatan*],
      ),
      [#activities.at(0).date], [#activities.at(0).clockIn], [#activities.at(0).clockOut], [#activities.at(0).activity], 
      [#activities.at(1).date], [#activities.at(1).clockIn], [#activities.at(1).clockOut], [#activities.at(1).activity], 
      [#activities.at(2).date], [#activities.at(2).clockIn], [#activities.at(2).clockOut], [#activities.at(2).activity], 
      [#activities.at(3).date], [#activities.at(3).clockIn], [#activities.at(3).clockOut], [#activities.at(3).activity], 
      [#activities.at(4).date], [#activities.at(4).clockIn], [#activities.at(4).clockOut], [#activities.at(4).activity], 
      [#activities.at(5).date], [#activities.at(5).clockIn], [#activities.at(5).clockOut], [#activities.at(5).activity], 
    )
  ]
// Signing field
  box(height: 6em)[
    #box(width: 4fr)[]
    #box(width: 3fr)[]
    #box(width: 4fr)[
      Mahasiswa,
      #if (ttd == none) {
        v(5em)
      } else {
        ttd
      }
      #student.name
    ]
  ]
  v(1em)
  box(height: 1em)[
    #box(width: 4fr)[]
    #box(width: 3fr)[
      #align(center)[
        Mengetahui,
      ]
    ]
    #box(width: 4fr)[]
  ]
  box(height: 6em)[
    #box(width: 4fr)[
      Pembimbing Lapangan,
      #v(5em) 
      #fieldSupervisorName
    ]
    #box(width: 3fr)[]
    #box(width: 4fr)[
      Dosen Pembimbing,
      #v(5em) 
      #supervisorLecturerName
    ]
  ]
}