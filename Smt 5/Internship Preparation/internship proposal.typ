#set text(
  size: 12pt,
  font: "Times New Roman",
  lang: "id",
)

#set page(
  margin: 2cm,
  paper: "a4"
)

/**
 * this solution of tabing is sourced from: https://forum.typst.app/t/how-to-implement-tab-stops/697/4
*/ 
#let t = metadata("tab")

#let tabed(c, tab_width: 24pt) = context {
  let rows = c.children.split(linebreak())
  for (j, row) in rows.enumerate() {
    let advance = 0.0pt
    let num_tabs = 0
    let cont = []
    for child in row + (t,) { // add extra tab stop for loop logic
      if child == t {
        if (num_tabs == 0)  {
          advance += measure(cont).width
          cont // emit content
          cont = []
        }
        num_tabs += 1
      } else {
        if (num_tabs > 0) {
          let column = calc.trunc( advance / tab_width )   // column where the first tab is located
          let advance_by = tab_width * (column + num_tabs) - advance
          h(advance_by) // emit space
          advance += advance_by
        }
        cont += child
        num_tabs = 0
      }
    }
    if (j < rows.len() - 1) {linebreak()} // emit line break
  }
}

#let companyName = "PT. Global Scholarship Services Indonesia"

#let students = (
  (
    name: "Dicha Zelianivan Arkana",
    nim: "2241720002"
  ),
  (
    name: "Muhammad Baihaqi Aulia Asy'ari",
    nim: "2241720145"
  ),
)

#let studyPrograme = (
  ti: "Teknik Informatika",
  sib: "Sistem Informasi Bisnis"
)

#let proposalDate = datetime(
  year: 2024, 
  month: 12, 
  day: 30
)

#import "@preview/icu-datetime:0.1.2": fmt-date
#let startDate = fmt-date(
  datetime(
    year: 2025,
    month: 2,
    day: 20
  ),
  length: "long",
  locale: "id"
)

#let endtDate = fmt-date(
  datetime(
    year: 2025,
    month: 6,
    day: 30
  ),
  length: "long",
  locale: "id"
)

#align(
  center + horizon,
  stack(
    text(size: 16pt)[*PROPOSAL*],
    v(1em),
    text(size: 16pt)[*MAGANG INDUSTRI*],
    v(1em),
    text(size: 16pt)[*#upper(companyName)*],
    v(2fr),
    [*Oleh:*],
    v(1em),
    table(
      columns: (auto, auto),
      align: left,
      stroke: none,
      [*#students.at(0).name*],
      [*#students.at(0).nim*],
      [*#students.at(1).name*],
      [*#students.at(1).nim*],
    ),
    v(1fr),
    image("polinema-logo.png", width: 6cm),
    v(1fr),
    text(size: 16pt)[*D-IV #upper(studyPrograme.ti)*],
    v(1em),
    text(size: 16pt)[*JURUSAN TEKNOLOGI INFORMASI*],
    v(1em),
    text(size: 16pt)[*POLITEKNIK NEGERI MALANG*],
    v(1em),
    text(size: 16pt)[*#proposalDate.display("[year]")*],
  )
)

#pagebreak()

#align(center, heading(text(size: 12pt)[LEMBAR PERSETUJUAN]))
#v(1em) #h(2em)
Yang bertanda tangan di bawah ini menyetujui rencana kegiatan yang akan dilaksanakan oleh mahasiswa Politeknik Negeri Malang, sebagaimana tersebut di bawah ini:

#tabed[
  Nama kegiatan#t:  Magang Industri \
  Tempat#t#t#t:  \
  Alamat#t#t#t: \ 
  Pelaksanaan#t#t: #startDate sampai #endtDate atau sesuai dengan kebijakan instansi asalkan tidak melebihi batas maksimal yang ditetapkan pihak kampus (minimal 5 bulan).\ 
  Peserta#t#t#t: 1. #students.at(0).name \
  #t#t#t#t#h(6.33pt) 2. #students.at(1).name
]
#v(1fr)
Malang, Desember 2024 \
Mengetahui dan Menyetujui,
#v(2fr)
#align(
  center,
  stack(
    table(
      align: left,
      stroke: none,
      columns: (50%, 50%),
      [
        Ketua Program Studi \ 
        D4 Teknik Informatika \
        #v(5em)
        Dr. Ely Setyo Astuti, ST.,MT \
        NIP. 197605152009122001
      ], 
      [
        Koordinator Magang \ \
        #v(5em)
        Dika Rizky Yunianto, S.Kom., M.Kom. \
        NIP. 199206062019031017
      ]
    ),
    v(2em),
    [
      Ketua Jurusan \ 
      Teknologi Informasi \
      #v(5em)
      Dr. Eng. Rosa Andrie Asmara, ST., MT \
      NIP. 198010102005011001
    ], 
  )
)
#v(10fr)

#pagebreak()

#set heading(
  numbering: "1.1.1.",
)

#show heading.where(level: 1): set heading(
  numbering: "I."
)

#show heading.where(level: 1): it => [
  #set text(size: 12pt, weight: "bold")
  #pad(left: -1em * it.level, it)
]

#show heading: it => [
  #set text(size: 12pt, weight: "regular")
  #pad(left: 1em * it.level, it)
]

#set par(
  first-line-indent: 2em,
  justify: true,
  spacing: 1.5em,
  hanging-indent: 1em
)

#align(
  center,
  upper[
    *
    \ proposal magang Industri \
    mahasiswa program studi D-IV #studyPrograme.ti \
    Jurusan teknologi informasi \
    Politeknik Negeri Malang \
    #proposalDate.display("[year]")
    *
  ]
)
#line(
  length: 100%,
  stroke: 1.5pt
)

= LATAR BELAKANG
#h(2em)
Hidup dalam era perkembangan teknologi informasi saat ini, memberikan kemudahan dalam berbagai bidang. Sejalan dengan hal itu  diperlukan sumber daya manusia (SDM) yang mampu mendayagunakan kemampuannya di segala bidang khususnya di bidang teknologi informasi dalam dunia kerja yang sebenarnya. Mahasiswa sebagai salah satu anggota masyarakat akademis di lingkungan Politeknik diharapkan mampu menjadi lulusan yang terampil, profesional, dan mempunyai etos kerja yang tinggi. Politeknik Negeri Malang sebagai salah satu politeknik di Indonesia selalu menyesuaikan kurikulum pendidikannya sesuai dengan perkembangan dunia kerja yang sesungguhnya. Oleh karena itu, Politeknik Negeri Malang diharapkan mampu mencetak lulusan yang berkualitas dan mampu mengimplementasikan ilmu yang diperoleh saat mengikuti perkuliahan sebagai pondasi dalam menghadapi dan menyelesaikan berbagai permasalahan yang terjadi pada dunia kerja.

Permasalahan yang terjadi dalam dunia kerja berbeda dengan permasalahan saat perkuliahan. Dengan situasi tersebut, mahasiswa  #studyPrograme.ti dituntut untuk mengikuti dan beradaptasi dengan lingkungan pekerjaan sehingga setelah memasuki dunia kerja telah memiliki bekal yang cukup dan siap menghadapi pekerjaan.

Dalam usaha untuk menyesuaikan dan mengikuti perkembangan industri, kegiatan Magang Industri  dinilai sebagai sarana yang efektif untuk menyesuaikan diri dengan perkembangan di dunia kerja. Oleh karena itu mahasiswa hendaknya dapat memanfaatkan kegiatan ini sebaik-baiknya.

Menimbang hal-hal tersebut diatas, maka penulis memilih #companyName sebagai wadah serta tempat untuk melakukan Magang Industri.

= TUJUAN DAN KEGUNAAN
== Tujuan
#h(2em)
Magang Industri ini bertujuan untuk mempersiapkan mahasiswa menjadi tenaga profesional, disiplin, kreatif, dan jujur untuk meningkatkan etos kerja.
== Kegunaan
=== Bagi Mahasiswa
#set enum(numbering: "a)")
+ Menerapkan ilmu yang diperoleh selama masa perkuliahan pada kegiatan yang nyata, dengan demikian akan mengetahui perbandingan antara pengetahuan di bangku kuliah dengan kenyataan yang ada di dunia kerja.
+ Menguji kemampuan pribadi yang sesuai dengan ilmu yang dipelajari serta tata cara bersosialisasi dengan dunia kerja yang sarat dengan persaingan-persaingan.
+ Memperdalam dan meningkatkan kualitas, keterampilan, dan kreativitas pribadi yang sesuai dengan ilmu yang dimiliki.
+ Melatih diri agar tanggap dan peka dalam menghadapi situasi dan kondisi lingkungan kerja serta mempersiapkan langkah-langkah yang diperlukan untuk menyesuaikan diri dengan lingkungan di masa yang akan datang.
+ Menambah wawasan, pengetahuan, dan pengalaman untuk nantinya dapat terjun di lingkungan kerja.
=== Bagi Politeknik Negeri Malang terutama Program Studi Sistem Informasi Bisnis dan Teknik Informatika
+ Mencetak calon tenaga kerja yang terampil dan jujur dalam menjalankan tugas.
+ Memberi masukan untuk mengevaluasi kesesuaian kurikulum yang sudah diterapkan dengan kebutuhan tenaga kerja yang terampil di bidangnya.
+ Menjadi sarana pengenalan Politeknik Negeri Malang khususnya Program Studi Sistem Informasi Bisnis dan Teknik Informatika kepada perusahaan maupun instansi yang membutuhkan lulusan atau tenaga kerja yang dihasilkan oleh Politeknik Negeri Malang.
=== Bagi instansi yang bersangkutan
= RUANG LINGKUP
#set enum(numbering: "1.")
Bidang yang akan diambil dan obyek untuk Magang Industri di .....  (Nama instansi/perusahaan)  meliputi :
+ (Sebutkan sesuaikan dengan bidang Sistem Informasi Bisnis/Teknik Informatika/ informatika/ konsentrasi masing-masing)
+ 
+ 