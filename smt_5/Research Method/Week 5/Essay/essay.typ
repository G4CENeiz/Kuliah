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

#let pembimbingUtama = lorem(5)
#let nipPembimbingUtama = "19700101 197001 1 001"

#let pembimbingPendamping = lorem(5)
#let nipPembimbingPendamping = "19700101 197001 1 001"

#let pengujiUtama = lorem(5)
#let nipPengujiUtama = "19700101 197001 1 001"

#let pengujiPendamping = lorem(5)
#let nipPengujiPendamping = "19700101 197001 1 001"

#let ketuaJurusan = lorem(5)
#let nipKetuaJurusan = "19700101 197001 1 001"

#let ketuaProgramStudi = lorem(5)
#let nipKetuaProgramStudi = "19700101 197001 1 001"

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

Pengembangan Aplikasi #title ini bertujuan untuk menciptakan sebuah aplikasi yang membantu individu dalam mengelola keuangan pribadi mereka dengan lebih efektif. Aplikasi ini dirancang untuk memenuhi kebutuhan pengguna yang ingin meningkatkan kesehatan keuangan mereka, terutama bagi mereka yang belum memiliki pengalaman dalam menggunakan alat manajemen keuangan. Aplikasi ini menyediakan fitur-fitur seperti pelacakan pengeluaran, perencanaan anggaran, pengaturan tujuan keuangan, dan wawasan personalisasi untuk membantu pengguna dalam membuat keputusan keuangan yang lebih baik. Dengan antarmuka yang sederhana dan mudah digunakan, aplikasi ini diharapkan dapat meningkatkan keterlibatan pengguna dalam merencanakan keuangan mereka, sehingga membantu mereka mengembangkan kebiasaan keuangan yang lebih baik, mengurangi pengeluaran impulsif, dan meningkatkan potensi tabungan.

#par(
  first-line-indent: 0em,
)[
  *Kata kunci*: manajemen keuangan, aplikasi personalisasi, teknologi informasi, pengeluaran, perencanaan anggaran, kesehatan keuangan
]

#pagebreak()

#heading()[
  _ABSTRACT_
]

#v(1em)

_*#lname, #fname.* "#titleEn". *Supervisor: (1) #pembimbingUtama, (2) #pembimbingPendamping* \ \
*Thesis, Informatics Management Study Program, Department of Information Technology, State Polytechnic of Malang, 2020.*_ \ \

_The Development of the #titleEn aims to create an application that helps individuals manage their personal finances more effectively. This application is designed to meet the needs of users who want to improve their financial health, especially for those who have no prior experience using financial management tools. The application provides features such as expense tracking, budget planning, financial goal setting, and personalized insights to help users make better financial decisions. With a simple and user-friendly interface, it is expected to increase user engagement in planning their finances, thereby helping them develop better financial habits, reduce impulsive spending, and increase savings potential._

_#par(
  first-line-indent: 0em,
)[
  *Keywords*: financial management, personalized application, information technology, spending, budget planning, financial health
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

#pagebreak()

#heading()[DAFTAR TABEL]
#outline(
  title: none,
  target: figure.where(kind: table)
)

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
#h(1em) Di era yang serba cepat saat ini, banyak orang menemukan tantangan dalam mengelola keuangan pribadi mereka. Kurangnya perencanaan anggaran, pemahaman yang terbatas mengenai kebiasaan pengeluaran, dan kesulitan dalam menetapkan tujuan keuangan yang realistis dapat menyebabkan pengeluaran berlebih, tabungan yang tidak mencukupi, serta meningkatnya stres keuangan. Meskipun terdapat alat keuangan yang tersedia, seringkali alat-alat tersebut terlalu rumit atau kurang personalisasi, sehingga kurang efektif untuk pengguna sehari-hari.

Selain itu, banyak individu merasa kesulitan untuk memahami dan menggunakan alat keuangan yang ada karena kurangnya literasi keuangan. Hal ini menyebabkan banyak orang mengalami kesulitan dalam membuat keputusan keuangan yang bijaksana, seperti menabung untuk masa depan atau berinvestasi. Oleh karena itu, diperlukan solusi yang dapat membantu individu dalam mengelola keuangan mereka dengan lebih efektif dan efisien.

== Rumusan Masalah
#h(1em) Masalah utama adalah ketiadaan aplikasi keuangan yang mudah diakses dan ramah pengguna yang dapat membantu individu dalam mengelola keuangan mereka secara efektif. Solusi yang ada saat ini terlalu rumit atau tidak cukup disesuaikan dengan kebutuhan keuangan yang beragam dari pengguna. Kekurangan alat manajemen keuangan yang efektif membuat sulit bagi pengguna untuk melacak pengeluaran, menetapkan tujuan, dan membuat keputusan keuangan yang terinformasi.

Selain itu, banyak aplikasi keuangan yang ada tidak memberikan wawasan yang dipersonalisasi tentang kebiasaan pengeluaran pengguna. Hal ini menyebabkan pengguna sulit untuk memahami pola pengeluaran mereka dan membuat keputusan keuangan yang lebih baik. Oleh karena itu, diperlukan aplikasi yang dapat memberikan wawasan yang dipersonalisasi dan membantu pengguna dalam mengelola keuangan mereka dengan lebih baik.

== Tujuan Pengembangan
Tujuan dari penelitian ini adalah:

  + Untuk merancang dan mengembangkan aplikasi keuangan pribadi yang intuitif yang membantu pengguna melacak pengeluaran dan pendapatan.
  + Untuk memungkinkan pengguna menetapkan dan memantau tujuan keuangan pribadi.
  + Untuk memberikan wawasan yang dipersonalisasi tentang kebiasaan pengeluaran untuk mendorong keputusan keuangan yang terinformasi.
  + Untuk meningkatkan partisipasi pengguna dalam perencanaan keuangan dengan menyediakan antarmuka yang sederhana dan berpusat pada pengguna.

Selain itu, aplikasi ini juga bertujuan untuk membantu pengguna dalam memahami pola pengeluaran mereka dan membuat keputusan keuangan yang lebih baik. Dengan demikian, pengguna dapat mengelola keuangan mereka dengan lebih efektif dan efisien.

== Manfaat Pengembangan
#h(1em) Dengan menyediakan alat manajemen keuangan yang disederhanakan dan mudah diakses, aplikasi ini bertujuan untuk memberdayakan individu untuk mengendalikan kesejahteraan keuangan mereka. Aplikasi ini akan membantu pengguna mengembangkan kebiasaan keuangan yang lebih baik, mengurangi pengeluaran impulsif, dan meningkatkan potensi tabungan. Akhirnya, solusi ini bertujuan untuk berkontribusi pada peningkatan literasi keuangan dan mengurangi stres keuangan di antara pengguna.

Selain itu, aplikasi ini juga akan membantu pengguna dalam memahami pola pengeluaran mereka dan membuat keputusan keuangan yang lebih baik. Dengan demikian, pengguna dapat mengelola keuangan mereka dengan lebih efektif dan efisien.

== Ruang Lingkup Masalah
#h(1em) Pengembangan aplikasi ini berfokus pada pengembangan aplikasi keuangan pribadi yang ditujukan untuk kaum muda dan individu yang ingin meningkatkan kesehatan keuangan mereka tetapi kurang pengalaman dengan alat manajemen keuangan. Ruang lingkup mencakup fungsionalitas dasar seperti pelacakan pengeluaran, perencanaan anggaran, penetapan tujuan keuangan, dan wawasan yang dipersonalisasi untuk membantu literasi keuangan.

Selain itu, aplikasi ini juga akan membantu pengguna dalam memahami pola pengeluaran mereka dan membuat keputusan keuangan yang lebih baik. Dengan demikian, pengguna dapat mengelola keuangan mereka dengan lebih efektif dan efisien.

= TINJAUAN PUSTAKA
== Landasan Teori
#h(1em) Dalam bab ini, akan dibahas teori-teori yang mendukung pengembangan aplikasi keuangan pribadi. Teori-teori ini akan membantu dalam memahami konsep manajemen keuangan dan bagaimana aplikasi ini dapat membantu pengguna dalam mengelola keuangan mereka.

Salah satu teori yang relevan adalah teori perilaku keuangan (Financial Behavior Theory) yang menjelaskan bagaimana individu membuat keputusan keuangan mereka. Teori ini menekankan pada faktor-faktor psikologis, sosial, dan ekonomi yang mempengaruhi perilaku keuangan seseorang. Aplikasi Budget Better dapat memanfaatkan teori ini dengan memberikan umpan balik yang dipersonalisasi berdasarkan perilaku pengguna, sehingga membantu mereka membuat keputusan keuangan yang lebih baik.

Selain itu, teori manajemen keuangan pribadi (Personal Financial Management Theory) juga sangat relevan. Teori ini menekankan pada pentingnya perencanaan, pengelolaan, dan pengawasan keuangan pribadi untuk mencapai tujuan keuangan jangka panjang. Aplikasi Budget Better dapat membantu pengguna dalam melakukan perencanaan anggaran, pelacakan pengeluaran, dan pengawasan keuangan mereka secara efektif.

== Penelitian Terdahulu
#h(1em) Dalam bab ini, akan dibahas penelitian-penelitian yang telah dilakukan sebelumnya terkait pengembangan aplikasi keuangan pribadi. Penelitian-penelitian ini akan memberikan gambaran tentang kesuksesan dan kegagalan aplikasi keuangan pribadi yang ada saat ini.

Salah satu penelitian yang relevan adalah penelitian oleh Smith dan Jones (2018) yang membahas tentang dampak personalisasi dalam aplikasi keuangan pribadi. Hasil penelitian mereka menunjukkan bahwa aplikasi yang memberikan umpan balik yang dipersonalisasi memiliki tingkat kepuasan pengguna yang lebih tinggi dan efektivitas dalam mengelola keuangan yang lebih baik.

Penelitian lain oleh Lee et al. (2020) membahas tentang penggunaan teknologi kecerdasan buatan dalam aplikasi keuangan pribadi. Hasil penelitian mereka menunjukkan bahwa penggunaan algoritma pembelajaran mesin dapat meningkatkan akurasi dalam memprediksi pola pengeluaran pengguna dan memberikan rekomendasi yang lebih tepat.

== Kerangka Pemikiran
#h(1em) Dalam bab ini, akan dibahas kerangka pemikiran yang akan digunakan dalam pengembangan aplikasi keuangan pribadi. Kerangka pemikiran ini akan membantu dalam memahami bagaimana aplikasi ini dapat membantu pengguna dalam mengelola keuangan mereka.

Kerangka pemikiran yang digunakan dalam pengembangan aplikasi Budget Better didasarkan pada tiga aspek utama: personalisasi, interaktivitas, dan kecerdasan buatan. Personalisasi memungkinkan aplikasi untuk memberikan umpan balik yang relevan berdasarkan perilaku pengguna. Interaktivitas memastikan bahwa pengguna dapat dengan mudah berinteraksi dengan aplikasi untuk melacak pengeluaran dan pendapatan mereka. Kecerdasan buatan digunakan untuk menganalisis data pengguna dan memberikan rekomendasi yang dipersonalisasi.

Selain itu, kerangka pemikiran ini juga mempertimbangkan faktor-faktor psikologis dan sosial yang mempengaruhi perilaku keuangan pengguna. Dengan memahami faktor-faktor ini, aplikasi dapat memberikan solusi yang lebih holistik dan efektif dalam membantu pengguna mengelola keuangan mereka.

= METODOLOGI PENGEMBANGAN
#h(1em) Dalam bab ini, akan dibahas metodologi yang akan digunakan dalam pengembangan aplikasi keuangan pribadi. Metodologi ini akan membantu dalam memahami bagaimana aplikasi ini dapat dikembangkan dengan baik.

== Desain Pengembangan
#h(1em) Dalam bab ini, akan dibahas desain pengembangan aplikasi keuangan pribadi. Desain ini akan membantu dalam memahami bagaimana aplikasi ini dapat dikembangkan dengan baik.

Desain pengembangan aplikasi Budget Better didasarkan pada prinsip-prinsip desain yang intuitif dan mudah digunakan. Desain ini mencakup antarmuka pengguna yang sederhana, navigasi yang mudah, dan fitur-fitur yang relevan dengan kebutuhan pengguna. Selain itu, desain ini juga mempertimbangkan aspek visual yang menarik dan konsistensi dalam penggunaan warna, tipografi, dan ikon.

== Analisis Kebutuhan
#h(1em)  bab ini, akan dibahas analisis kebutuhan yang akan digunakan dalam pengembangan aplikasi keuangan pribadi. Analisis kebutuhan ini akan membantu dalam memahami kebutuhan pengguna dan bagaimana aplikasi ini dapat memenuhi kebutuhan tersebut.

Analisis kebutuhan dilakukan melalui survei dan wawancara dengan pengguna potensial. Survei ini bertujuan untuk mengidentifikasi kebutuhan utama pengguna dalam mengelola keuangan pribadi, seperti pelacakan pengeluaran, perencanaan anggaran, dan penetapan tujuan keuangan. Hasil analisis kebutuhan ini kemudian digunakan sebagai dasar dalam merancang fitur-fitur aplikasi.

== Desain Sistem
#h(1em) Dalam bab ini, akan dibahas desain sistem yang akan digunakan dalam pengembangan aplikasi keuangan pribadi. Desain sistem ini akan membantu dalam memahami bagaimana aplikasi ini dapat dikembangkan dengan baik.

Desain sistem aplikasi Budget Better meliputi arsitektur sistem, diagram alir data, dan model data. Arsitektur sistem dirancang untuk memastikan skalabilitas dan keamanan data pengguna. Diagram alir data menggambarkan alur data dari pengguna ke sistem dan sebaliknya, sementara model data mendefinisikan struktur data yang digunakan dalam aplikasi.

== Implementasi Sistem
#h(1em) Dalam bab ini, akan dibahas implementasi sistem yang akan digunakan dalam pengembangan aplikasi keuangan pribadi. Implementasi sistem ini akan membantu dalam memahami bagaimana aplikasi ini dapat dikembangkan dengan baik.

Implementasi sistem dilakukan dengan menggunakan bahasa pemrograman Python dan framework Django untuk backend, serta HTML, CSS, dan JavaScript untuk frontend. Implementasi ini juga mencakup pengembangan database menggunakan PostgreSQL untuk menyimpan data pengguna. Selain itu, implementasi ini juga melibatkan pengujian unit dan integrasi untuk memastikan kualitas kode.

== Pengujian Sistem
#h(1em) Dalam bab ini, akan dibahas pengujian sistem yang akan digunakan dalam pengembangan aplikasi keuangan pribadi. Pengujian sistem ini akan membantu dalam memahami bagaimana aplikasi ini dapat dikembangkan dengan baik.

Pengujian sistem meliputi pengujian fungsional, pengujian kinerja, dan pengujian keamanan. Pengujian fungsional bertujuan untuk memastikan bahwa semua fitur aplikasi berfungsi sebagaimana mestinya. Pengujian kinerja mengukur kecepatan dan efisiensi aplikasi, sementara pengujian keamanan memastikan bahwa data pengguna aman dari ancaman luar.

Selain itu, pengujian sistem juga melibatkan pengujian pengguna (user testing) untuk mendapatkan umpan balik dari pengguna potensial. Umpan balik ini kemudian digunakan untuk memperbaiki dan meningkatkan aplikasi sebelum diluncurkan ke pasar.

#pagebreak()

#bibliography(
  title: "DAFTAR PUSTAKA",
  "references.bib", 
  style: "apa"
)