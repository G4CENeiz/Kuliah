#set text(
  size: 12pt,
  font: "Times New Roman",
  lang: "id",
)


#set page(
  margin: (
    top: 3cm, 
    bottom: 3cm, 
    left: 4cm, 
    right: 4cm
  )
)

#set page(numbering: "i")

#let title = "Pengembangan Aplikasi Budget Better: Pendekatan Personalisasi Untuk Manajemen Keuangan Melalui Teknologi Informasi"
#let titleEn = "Development of Budget Better Application: Personalized Approach for Financial Management Through Information Technology"
#let fname = "Muhammad Baihaqi Aulia"
#let lname = "Asy'ari"
#let nim = 2241720145
#let validationDate = datetime(
  year: 2026, 
  month: 6, 
  day: 21
)

#let pembimbingUtama = "Imam Fahrur Rozi, S.T., M.T."
#let nipPembimbingUtama = "19840610 200812 1 004"

#let pembimbingPendamping = "Ir. Deddy Kusbianto P., M.MKom."
#let nipPembimbingPendamping = "19621128 198811 1 001"

#let pengujiUtama = "Budi Harijanto, S.T., M.MKom."
#let nipPengujiUtama = "19620105 199003 1 002"

#let pengujiPendamping = "Hendra Pradibta, SE., M.Sc"
#let nipPengujiPendamping = "19830521 200604 1 003"

#let ketuaJurusan = "Rudy Ariyanto, S.T., M.Cs."
#let nipKetuaJurusan = "19711110 199903 1 002"

#let ketuaProgramStudi = "Imam Fahrur Rozi, S.T., M.T."
#let nipKetuaProgramStudi = "19840610 200812 1 004"

#set par(
  first-line-indent: 1em,
)

#show heading: set align(center)
#show heading: set text(14pt)



#hide[
  #heading()[
    SAMPUL DEPAN
  ]
]
#align(
  center + horizon,
  stack(
    text(14pt)[
      *#upper[#title]*
    ],
    v(5em),
    text(14pt)[
      *SKRIPSI*
    ],
    v(1em),
    text(12pt)[
      Digunakan Sebagai Syarat Maju Ujian Diploma IV \
      Politeknik Negeri Malang
    ],
    v(2.5em),
    text(12pt)[
      *Oleh:* \
      *#upper[#fname #lname] #h(2.5em) NIM. #nim*
    ],
    v(10fr),
    image("images/polinema-logo.png", width: 4cm),
    v(10fr),
    text(16pt)[
      *PROGRAM STUDI TEKNIK INFORMATIKA* \
      *JURUSAN TEKNOLOGI INFORMASI* \
      *POLITEKNIK NEGERI MALANG* \
      *#validationDate.display("[month repr:long] [year]")*
    ]
  ),
)

#pagebreak()

#align(
  center + horizon,
  stack(
    [*#heading()[
      HALAMAN PENGESAHAN
    ]*],
    v(3em),
    text(14pt)[
      *#title*
    ],
    v(2.5em),
    text(12pt)[
      *Disusun oleh:* \
      *#upper[#fname #lname] #h(2.5em) NIM. #nim*
    ],
    v(2.5em),
    text(12pt)[
      *Laporan Akhir ini telah diuji pada tanggal #validationDate.display("[day] [month repr:long] [year]")*
    ],
    v(2.5em),
    text(12pt)[
      *Disetujui oleh:* \ \
      #table(
        columns: (auto, auto, auto, auto, auto),
        align: top + left,
        stroke: none,
        row-gutter: 1em,
        [1.], [Pembimbing \ Utama], [:], [#underline[#pembimbingUtama]\ NIP. #nipPembimbingUtama], [\ ....................],
        [2.], [Pembimbing \ Pendamping], [:], [#underline[#pembimbingPendamping]\ NIP. #nipPembimbingPendamping], [\ ....................],
        [3.], [Penguji \ Utama], [:], [#underline[#pengujiUtama]\ NIP. #nipPengujiUtama], [\ ....................],
        [4.], [Penguji \ Pendamping], [:], [#underline[#pengujiPendamping]\ NIP. #nipPengujiPendamping], [\ ....................],
      ) 
    ],
    v(1fr),
    [Mengetahui,],
    v(2.5em),
    table(
      columns: (50%, 50%),
      align: horizon + center,
      stroke: none,
      [Ketua Jurusan \ Teknologi Informasi],
      [Ketua Program Studi \ Teknik Informatika],
      v(5em),
      v(5em),
      [#underline[#ketuaJurusan] \ NIP. #nipKetuaJurusan],
      [#underline[#ketuaProgramStudi] \ NIP. #nipKetuaProgramStudi ],
    )
  )
)

#pagebreak()

#set par(
  justify: true,
)

#heading()[PERNYATAAN]
#v(1em)
#par(
  leading: 1em,
)[
  #h(1em) Dengan ini saya menyatakan bahwa pada Skripsi ini tidak terdapat karya, baik seluruh maupun sebagian, yang sudah pernah diajukan untuk memperoleh gelar akademik di Perguruan Tinggi manapun, dan sepanjang pengetahuan saya juga tidak terdapat karya atau pendapat yang pernah ditulis atau diterbitkan oleh orang lain, kecuali yang secara tertulis disitasi dalam naskah ini serta disebutkan dalam daftar sitasi/pustaka.
]
#v(5em)
#align(
  right,
  table(
    columns: (auto),
    stroke: none,
    [Malang, #validationDate.display("[day] [month repr:long] [year]")],
    v(5em),
    [#fname #lname],
  )
) 

#pagebreak()

#heading()[
  ABSTRAK
]

#v(1em)

*#lname, #fname.* "#title". *Pembimbing: (1) #pembimbingUtama, (2) #pembimbingPendamping* \ \
*Skripsi, Program Studi Teknik Informatika, Jurusan Teknologi Informasi, Politeknik Negeri Malang, 2020.* \ \

#lorem(40) #parbreak()
#lorem(40) #parbreak()
#lorem(40) #parbreak()

#par(
  first-line-indent: 0em,
)[
  *Kata kunci*: #lorem(6)
]

#pagebreak()

#heading()[
  _ABSTRACT_
]

#v(1em)

_*#lname, #fname.* "#titleEn". *Supervisor: (1) #pembimbingUtama, (2) #pembimbingPendamping* \ \
*Thesis, Informatics Management Study Program, Department of Information Technology, State Polytechnic of Malang, 2020.*_ \ \

_#lorem(40) #parbreak()_
_#lorem(40) #parbreak()_
_#lorem(40) #parbreak()_

_#par(
  first-line-indent: 0em,
)[
  *Keywords*: #lorem(6)
]_

#pagebreak()

#heading()[
  KATA PENGANTAR
]

#{ "" }

Puji Syukur kami panjatkan kehadirat Allah SWT/Tuhan YME atas segala rahmat dan hidayah-Nya penulis dapat menyelesaikan skripsi dengan judul "#upper[#title]". Skripsi ini penulis susun sebagai persyaratan untuk menyelesaikan studi program Diploma IV Program Studi Teknik Informatika, Jurusan Teknologi Informasi, Politeknik Negeri Malang.

Kami menyadari bahwasannya dengan tanpa adanya dukungan dan kerja sama dari berbagai pihak, kegiatan laporan akhir ini tidak akan dapat berjalan baik. Untuk itu, kami ingin menyampaikan rasa terima kasih kepada:

+ Bapak #ketuaJurusan, selaku Ketua Jurusan Teknologi Informasi
+ Bapak #ketuaProgramStudi, selaku Ketua Program Studi Teknik Informatika
+ ........
+ Dan seluruh pihak yang telah membantu dan mendukung lancarnya  pembuatan Laporan Akhir dari awal hingga akhir yang tidak dapat kami sebutkan satu persatu.

#h(1em) Penulis menyadari bahwa dalam penyusunan laporan akhir ini, masih banyak terdapat kekurangan dan kelemahan yang dimiliki penulis baik itu sistematika penulisan maupun penggunaan bahasa. Untuk itu penulis mengharapkan saran dan kritik dari berbagai pihak yang bersifat membangun demi penyempurnaan laporan ini. Semoga laporan ini berguna bagi pembaca secara umum dan penulis secara khusus. Akhir kata, penulis ucapkan banyak terima kasih.

#v(1fr)

#align(
  right,
  table(
    columns: (auto),
    stroke: none,
    [Malang, #validationDate.display("[day] [month repr:long] [year]")],
    v(5em),
    [#fname #lname],
  )
) 

#pagebreak()

#heading()[DAFTAR ISI]
#outline(
  title: none,
  indent: auto,
)

#pagebreak()

#heading()[DAFTAR GAMBAR] 
#outline(
  title: none,
  target: figure.where(kind: image)
)

// #pagebreak()

// #heading()[DAFTAR TABEL]
// #outline(
//   title: none,
//   target: figure.where(kind: table)
// )

#pagebreak()

#counter(page).update(1)
#set page(numbering: "1")
#set heading(numbering: "1.1.")

#show heading.where(level: 1): set heading(numbering: " 1.")
#show heading.where(level: 1): it => [
  BAB #counter(heading).display(it.numbering) #it.body
]
#show heading.where(level: 2): set align(left)

= PENDAHULUAN
== Latar Belakang Masalah
#h(1em) #lorem(40)

#lorem(40) @Messer2022

== Rumusan Masalah
#lorem(40) \ \
#lorem(40)
#figure(
  image("images/polinema-logo.png", width: 4cm),
  caption: "Logo Polinema",
)

== Tujuan Pengembangan
#lorem(40) \ \
#lorem(40)

== Manfaat Pengembangan
#lorem(40) \ \
#lorem(40)

== Ruang Lingkup Masalah
#lorem(40) \ \
#lorem(40)

= TINJAUAN PUSTAKA
== Penelitian Terdahulu
#lorem(40) \ \
#lorem(40)

== Kerangka Pemikiran
#lorem(40) \ \
#lorem(40)

= METODOLOGI PENGEMBANGAN
#lorem(40) \ \
#lorem(40)

#pagebreak()

#bibliography(
  title: "DAFTAR PUSTAKA",
  "references.bib", 
  style: "apa"
)