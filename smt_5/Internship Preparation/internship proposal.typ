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
      // TODO: find a way to loop and print student properly in a table.
      // * I have failed countless time. AI kept being delulu
      [*#students.at(0).name*],
      [*#students.at(0).nim*],
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

#set page(
  margin: 0cm
)
#image("Lembar-Persetujuan-Proposal-Magang-Baihaqi-crop.svg")
#set page(
  margin: 2cm
)

// #align(center, heading(text(size: 12pt)[LEMBAR PERSETUJUAN])) \
// #tabed[
//   #t Yang bertanda tangan di bawah ini menyetujui rencana kegiatan yang akan dilaksanakan oleh mahasiswa Politeknik Negeri Malang, sebagaimana tersebut di bawah ini:
// ]

// #tabed[
//   Nama kegiatan#t:  Magang Industri \
//   Tempat#t#t#t:  \
//   Alamat#t#t#t: \ 
//   Pelaksanaan#t#t: #startDate sampai #endtDate atau sesuai dengan kebijakan instansi asalkan tidak melebihi batas maksimal yang ditetapkan pihak kampus (minimal 5 bulan).\
//   // TODO:  
//   Peserta#t#t#t: 1. #students.at(0).name \
// ]

// \

// Malang, Desember 2024 \
// Mengetahui dan Menyetujui,

// \

// #align(
//   center,
//   stack(
//     table(
//       align: left,
//       stroke: none,
//       columns: (50%, 50%),
//       [
//         Ketua Program Studi \ 
//         D4 Teknik Informatika \ \ \ \ \
//         Dr. Ely Setyo Astuti, ST.,MT \
//         NIP. 197605152009122001
//       ], 
//       [
//         Koordinator Magang \ \ \ \ \ \
//         Dika Rizky Yunianto, S.Kom., M.Kom. \
//         NIP. 199206062019031017
//       ]
//     ),
//     v(2em),
//     [
//       Ketua Jurusan \ 
//       Teknologi Informasi \ \ \ \ \
//       Dr. Eng. Rosa Andrie Asmara, ST., MT \
//       NIP. 198010102005011001
//     ], 
//   )
// )

#pagebreak()

#show heading.where(level: 1): set heading(
  numbering: "I."
)

#show heading.where(level: 1): it => [
  #set text(size: 12pt, weight: "bold")
  #pad(left: -1em * it.level, it)
]

#set heading(
  numbering: "1.1.1.", 
)

#show heading: it => [
  #set text(size: 12pt, weight: "regular")
  #pad(left: 1em * 2, it)
]

#set par(
  justify: true,
  leading: 1.15em,
  linebreaks: "optimized"
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
#pad(
  left: 3em
)[
  #tabed[
    #t Hidup dalam era perkembangan teknologi informasi saat ini, memberikan kemudahan dalam berbagai bidang. Sejalan dengan hal itu  diperlukan sumber daya manusia (SDM) yang mampu mendayagunakan kemampuannya di segala bidang khususnya di bidang teknologi informasi dalam dunia kerja yang sebenarnya. Mahasiswa sebagai salah satu anggota masyarakat akademis di lingkungan Politeknik diharapkan mampu menjadi lulusan yang terampil, profesional, dan mempunyai etos kerja yang tinggi. Politeknik Negeri Malang sebagai salah satu politeknik di Indonesia selalu menyesuaikan kurikulum pendidikannya sesuai dengan perkembangan dunia kerja yang sesungguhnya. Oleh karena itu, Politeknik Negeri Malang diharapkan mampu mencetak lulusan yang berkualitas dan mampu mengimplementasikan ilmu yang diperoleh saat mengikuti perkuliahan sebagai pondasi dalam menghadapi dan menyelesaikan berbagai permasalahan yang terjadi pada dunia kerja. \
    #t Permasalahan yang terjadi dalam dunia kerja berbeda dengan permasalahan saat perkuliahan. Dengan situasi tersebut, mahasiswa  #studyPrograme.ti dituntut untuk mengikuti dan beradaptasi dengan lingkungan pekerjaan sehingga setelah memasuki dunia kerja telah memiliki bekal yang cukup dan siap menghadapi pekerjaan. \
    #t Dalam usaha untuk menyesuaikan dan mengikuti perkembangan industri, kegiatan Magang Industri  dinilai sebagai sarana yang efektif untuk menyesuaikan diri dengan perkembangan di dunia kerja. Oleh karena itu mahasiswa hendaknya dapat memanfaatkan kegiatan ini sebaik-baiknya. \
    #t Menimbang hal-hal tersebut diatas, maka penulis memilih #companyName sebagai wadah serta tempat untuk melakukan Magang Industri.
  ]
]

= TUJUAN DAN KEGUNAAN

== Tujuan
#pad(
  left: 3em
)[
  Magang Industri ini bertujuan untuk mempersiapkan mahasiswa menjadi tenaga profesional, disiplin, kreatif, dan jujur untuk meningkatkan etos kerja.
]

== Kegunaan

=== Bagi Mahasiswa

#set enum(numbering: "a)")

#pad(
  left: 5.5em
)[
  + Menerapkan ilmu yang diperoleh selama masa perkuliahan pada kegiatan yang nyata, dengan demikian akan mengetahui perbandingan antara pengetahuan di bangku kuliah dengan kenyataan yang ada di dunia kerja.
  + Menguji kemampuan pribadi yang sesuai dengan ilmu yang dipelajari serta tata cara bersosialisasi dengan dunia kerja yang sarat dengan persaingan-persaingan.
  + Memperdalam dan meningkatkan kualitas, keterampilan, dan kreativitas pribadi yang sesuai dengan ilmu yang dimiliki.
  + Melatih diri agar tanggap dan peka dalam menghadapi situasi dan kondisi lingkungan kerja serta mempersiapkan langkah-langkah yang diperlukan untuk menyesuaikan diri dengan lingkungan di masa yang akan datang.
  + Menambah wawasan, pengetahuan, dan pengalaman untuk nantinya dapat terjun di lingkungan kerja.
]

=== Bagi Politeknik Negeri Malang terutama Program Studi Sistem Informasi Bisnis dan Teknik Informatika

#pad(
  left: 5.5em
)[
  + Mencetak calon tenaga kerja yang terampil dan jujur dalam menjalankan tugas.
  + Memberi masukan untuk mengevaluasi kesesuaian kurikulum yang sudah diterapkan dengan kebutuhan tenaga kerja yang terampil di bidangnya.
  + Menjadi sarana pengenalan Politeknik Negeri Malang khususnya Program Studi Sistem Informasi Bisnis dan Teknik Informatika kepada perusahaan maupun instansi yang membutuhkan lulusan atau tenaga kerja yang dihasilkan oleh Politeknik Negeri Malang.
]

=== Bagi instansi yang bersangkutan

#pad(
  left: 5.5em
)[
  + Memanfaatkan sumber daya yang potensial.
  + Membantu menyelesaikan pekerjaan yang terdapat pada tempat mahasiswa melaksanakan Magang Industri.
  + Menjadi sarana untuk menjembatani hubungan kerja sama antara instansi dengan Politeknik di masa yang akan datang, khususnya mengenai rekruitmen tenaga kerja.
  + Menjadi sarana untuk mengetahui kualitas pendidikan yang ada di Politeknik terutama Politeknik Negeri Malang.
]

= RUANG LINGKUP

#set enum(numbering: "1.")
#pad(
  left: 3em
)[
  Bidang yang akan diambil dan obyek untuk Magang Industri di #companyName meliputi :
  // * (Sebutkan sesuaikan dengan bidang Sistem Informasi Bisnis/Teknik Informatika/ informatika/ konsentrasi masing-masing)
  +  Frontend Web Development
  +  Backend Web Development
  +  DevOps
]

= METODOLOGI
#pad(
  left: 3em
)[
  #tabed[
    #t Tahapan kegiatan  yang akan dilakukan antara lain terdiri :
    + Pengenalan instansi.
    + Pengarahan dari pembimbing instansi.
    + Terjun langsung ke proses.
    + Pemberian tugas oleh pembimbing instansi.
    + Diskusi.
    + Evaluasi hasil Magang Industri.
    // * (Untuk pelaksanaan tahapan-tahapan di atas disesuaikan dengan kondisi instansi/perusahaan yang bersangkutan).
  ]
]

= WAKTU DAN PELAKSANAAN
#pad(
  left: 3em
)[
  #tabed[
    #t Magang Industri dilaksanakan  di #companyName selama minimal 5 bulan, yang disesuaikan dengan hari kerja efektif instansi/ perusahaan. Ketentuan jam kerja bagi mahasiswa Magang Industri disesuaikan dengan jam kerja instansi/perusahaan. \
    #t Selain itu, Magang Industri ini dilaksanakan pada Semester VI, mulai tanggal #startDate  sampai 30 Juni 2025 
    // * (atau sesuai dengan kebijakan instansi/perusahaan  asalkan tidak kurang dari batas minimal yang ditetapkan oleh kampus, yaitu 5 bulan).
  ]
]

= BIDANG PRAKTEK KERJA LAPANGAN
#pad(
  left: 3em
)[
  #tabed[ 
    #t Bidang yang harus diambil adalah sesuai dengan disiplin ilmu yang diperoleh. Mahasiswa selaku pelaksana Magang Industri sanggup dan bersedia menjalankan tata tertib yang ada di instansi/perusahaan. Setelah melaksanakan Magang Industri, mahasiswa diwajibkan membuat laporan tentang pelaksanaan Magang Industri.
  ]
]

= PELAKSANA
#pad(
  left: 3em
)[
  #tabed[
    #t Magang Industri ini dilaksanakan oleh mahasiswa Jurusan Teknologi Informasi, Program Studi #studyPrograme.ti, yaitu:
    // TODO: do the looping thing
    + #students.at(0).name
    // * Sertakan Curriculum Vitae masing-masing mahasiswa
  ]
]

#pagebreak()

= PENUTUP
#pad(
  left: 3em
)[
  #tabed[
    #t Besar harapan kami pimpinan instansi menerima dan menyetujui proposal kami. Kami berharap dengan adanya pelaksanaan #companyName ini dapat bermanfaat bagi instansi, sehingga antara kedua belah pihak saling menguntungkan. \
    #t Demikianlah harapan kami, atas bantuan dan bimbingan instansi, kami sampaikan terima kasih.
  ]

  \
  
  #pad(left: 19em)[
    Malang, Desember 2024 \
    Hormat kami, \
    #image("ttd.png", height: 6em)
    // #v(5em) \ 
    #students.at(0).name
  ]
  // #table(
  //   align: left,
  //   stroke: none,
  //   columns: (50%, 50%),
  //   [#v(5em) \ #students.at(0).name],
  // )
]

= CV MAHASISWA

#import "@preview/basic-resume:0.1.0": *

// Put your personal information here, replacing mine
#let name = "Muhammad Baihaqi Aulia Asy'ari"
#let location = "Malang City, East Java"
#let email = "baihaqilearning@gmail.com"
#let github = "github.com/G4CENeiz"
#let linkedin = "linkedin.com/in/baihaqiasyari"
#let phone = "+62 823-3675-0134"
#let personal-site = ""

#show: resume.with(
  author: name,
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  phone: phone,
  personal-site: personal-site,
  // Accent color is optional. Feel free to remove the next line if you want your resume to be in black and white
  // accent-color: "#26428b",
  accent-color: "#000000",
)

== Education

#edu(
  institution: "Politeknik Negeri Malang",
  location: "Malang City, East Java",
  dates: dates-helper(start-date: "Aug 2022", end-date: "2026"),
  degree: "Bachelor's of Applied Science, Informatics Engineering",
)
- Cumulative GPA: 3.5\/4.0
- Member of Workshop Riset Informatika
// - Relevant Coursework: Data Structures, Program Development, Microprocessors, Abstract Algebra I: Groups and Rings, Linear Algebra, Discrete Mathematics, Multivariable & Single Variable Calculus, Principles and Practice of Comp Sci

#edu(
  institution: "SMA Negeri 1 Malang",
  location: "Malang City, East Java",
  dates: dates-helper(start-date: "2019", end-date: "2022"),
  degree: "High School Diploma",
)
- Member of the Ambalan (Scout Organization)

== Projects

#project(
  role: "Team Leads",
  name: "RW 1 Information System",
  dates: dates-helper(start-date: "Aug 2023", end-date: "Nov 2023"),
  url: "undeployed",
)
// - Analyzed the clients need by doing interview and field observation
// - Provided full documentation needed for the application development
// - Helped in conducting progress meeting
// - Developed decision support system for goverment grant
// - Developed website using Laravel
// - Constructed database using relational database management system
- Conducted client interviews and field observations to gather requirements.
- Created comprehensive project documentation for the development lifecycle.
- Coordinated and led progress meetings to ensure project alignment.
- Developed a decision support system for government grant distribution.
- Built a full-featured web application using Laravel framework.
- Designed and implemented a relational database for the system using MySQL.

== Extracurricular Activities

#extracurriculars(
  activity: "Workshop Riset Informatika",
  dates: dates-helper(start-date: "Oct 2022", end-date: "Present"),
)
// - Teach aspiring member in a Beta Testing Program
// - Manage procurement within the community
// - Help in connecting the community with other institution within the campus
//   - Explore business oportunity
//   - Help in collaboration project
- Lead instructional sessions for members in a Beta Testing Program.
- Oversee procurement and resource management for the community.
- Facilitate partnerships with other campus institutions to foster collaboration:
  - Identify potential business opportunities through inter-institutional connections.
  - Coordinate joint projects and initiatives with partnering organizations.

== Skills
- *Programming Languages*: HTML/CSS, JavaScript, TypesScript, PHP, Java, Python, Dart
- *Frameworks*: Laravel, React, Tailwind CSS, Flutter
- *Technologies*: Git, Docker, Typst
- *Interests*: Automotive, Minecraft

== Languages
- *Indonesian* : Native
- *English* : C2