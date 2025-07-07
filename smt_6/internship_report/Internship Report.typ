#let title = "industrial internship"
#let company = (
  name: "PT. Global Scholarship Services Indonesia",
  address: "Jalan Taman Kencana Nomor 3, Babakan, Bogor Tengah, Bogor",
  field: "Development of Human Resource",
  period:  datetime(day: 20, month: 2, year: 2025).display("[day] [month repr:long] [year]") + " - " + datetime(day: 30, month: 6, year: 2025).display("[day] [month repr:long] [year]")
)
#let student = (
  name: "Muhammad Baihaqi Aulia Asy'ari",
  nim: "2241720145"
)
#let fieldSupervisor = (
  name: "Muhammad Sigit Susanto",
  position: "Company Director"
)
#let supervisingLecturer = (
  name: "Prof. Cahya Rahmad, S.T., M.Kom., Dr. Eng.",
  nip: "197202022005011002"
)
#let headOfProgram = (
  name: "Dr. Ely Setyo Astuti, S.T., M.T.",
  nip: "197605152009122001"
)
#let headOfDepartment = (
  name: "Prof. Dr. Eng. Rosa Andrie Asmara, S.T., M.T.",
  nip: "198010102005011001"
)
#let approvalSignDate = "Bogor, " + datetime(day: 2, month: 7, year: 2025).display("[day] [month repr:long] [year]")
#let presentationDate = datetime(day: 7, month: 7, year: 2025).display("[day] [month repr:long] [year]")
#let prefaceDate = datetime(day: 2, month: 7, year: 2025).display("[day] [month repr:long] [year]")
#let activities = (
  (
    date: datetime(day: 3, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Kick off meeting",
    task: "-",
    achievement: "-"
  ),
  (
    date: datetime(day: 4, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Uji coba menjalankan repo \"main-api\" untuk melihat preview email",
    task: "-",
    achievement: "-"
  ),
  (
    date: datetime(day: 5, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Uji coba menjalankan repo \"skilly\" untuk melihat preview email",
    task: "-",
    achievement: "-"
  ),
  (
    date: datetime(day: 6, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Merubah format email di repo \"main-api\" menjadi typst",
    task: "Merubah format email menjadi typst",
    achievement: "Dokumen typst sesuai dengan email"
  ),
  (
    date: datetime(day: 7, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Merapikan email typst di repo \"main-api\"",
    task: "Merubah format email menjadi typst",
    achievement: "Dokumen typst sesuai dengan email"
  ),
  (
    date: datetime(day: 10, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Meeting mingguan dan penyelesaian template email di repo \"main-api\"",
    task: "Merubah format invoice dari HTML menjadi typst dan menambahkan prosesnya",
    achievement: "Dokumen typst sesuai dengan email"
  ),
  (
    date: datetime(day: 11, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Membuat template invoice dengan typst",
    task: "Merubah format invoice dari HTML menjadi typst dan menambahkan prosesnya",
    achievement: "Mendapatkan hasil struktur utama dokumen"
  ),
  (
    date: datetime(day: 12, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Mengintegrasikan template email typst dengan system",
    task: "Merubah format invoice dari HTML menjadi typst dan menambahkan prosesnya",
    achievement: "Mendapatkan bentuk invoice berupa email"
  ),
  (
    date: datetime(day: 13, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Memperbaiki template dengan menggunakan fitur templating typst",
    task: "Merubah format invoice dari HTML menjadi typst dan menambahkan prosesnya",
    achievement: "Merubah hasil email menjadi template typst"
  ),
  (
    date: datetime(day: 14, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Melanjutkan memperbaiki template dengan menggunakan fitur templating typst",
    task: "Merubah format invoice dari HTML menjadi typst dan menambahkan prosesnya",
    achievement: "Merubah format tanggal dan menempelkan logo di dokumen"
  ),
  (
    date: datetime(day: 17, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Meneyelesaikan proses backend untuk compiling typst",
    task: "Merubah format invoice dari HTML menjadi typst dan menambahkan prosesnya",
    achievement: "Merubah fungsi createPDF yang lama untuk memproses typst"
  ),
  (
    date: datetime(day: 18, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Merubah JSON data menjadi dictionary di dalam typst",
    task: "Merubah format invoice dari HTML menjadi typst dan menambahkan prosesnya",
    achievement: "Menambahkan proses backend untuk merubah JSON menjadi typst dictionary"
  ),
  (
    date: datetime(day: 19, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Menambahkan data preprocessing untuk data typst",
    task: "Merubah format invoice dari HTML menjadi typst dan menambahkan prosesnya",
    achievement: "Mendapatkan alur proses untuk menyusun data sebelum digunakan oleh template typst"
  ),
  (
    date: datetime(day: 20, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Mengganti cara pembentukan dokumen pdf typst",
    task: "Merubah format invoice dari HTML menjadi typst dan menambahkan prosesnya",
    achievement: "Merubah proses backend agar bisa menyediakan file JSON untuk typst"
  ),
  (
    date: datetime(day: 21, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Merubah pengguanaan template html ke typst",
    task: "Merubah format invoice dari HTML menjadi typst dan menambahkan prosesnya",
    achievement: "Merubah target template createPDF dari file .html ke .typ"
  ),
  (
    date: datetime(day: 24, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Menggunakan Typst JSON loader untuk mengambil data",
    task: "Merubah format invoice dari HTML menjadi typst dan menambahkan prosesnya",
    achievement: "Menambahkan JSON loader ke template typst"
  ),
  (
    date: datetime(day: 25, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Menggunakan Tabel peserta statis",
    task: "Merubah format invoice dari HTML menjadi typst dan menambahkan prosesnya",
    achievement: "Menambahkan solusi sementara untuk menjabarkan item tabel"
  ),
  (
    date: datetime(day: 26, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Membuat dummy data sebagai data sementara untuk pengembangan template",
    task: "Merubah format invoice dari HTML menjadi typst dan menambahkan prosesnya",
    achievement: "Mendapatkan file JSON yang dapat digunakan untuk me-ngembangkan dokumen"
  ),
  (
    date: datetime(day: 27, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Mencari informasi tentang penggunaan looping untuk menampilkan data di tabel",
    task: "Merubah format invoice dari HTML menjadi typst dan menambahkan prosesnya",
    achievement: "Mendapatkan beberapa solusi dari forum diskusi typst"
  ),
  (
    date: datetime(day: 28, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Mencoba penggunaan looping untuk menampilkan data di tabel",
    task: "Merubah format invoice dari HTML menjadi typst dan menambahkan prosesnya",
    achievement: "Mengintegrasikan looping untuk menggantikan posisi tabel statis"
  ),
  (
    date: datetime(day: 3, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Menambahkan konten tabel peserta secara dinamis dan detail pembayaran di dalam invoice",
    task: "Merubah format invoice dari HTML menjadi typst dan menambahkan prosesnya",
    achievement: "Mengintegrasikan looping untuk tabel peserta"
  ),
  (
    date: datetime(day: 4, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Menyelesaikan data preprocessing data agar data siap disajikan di dalam pdf",
    task: "Merubah format invoice dari HTML menjadi typst dan menambahkan prosesnya",
    achievement: "Menkonversi pemrosesan data dari cara kompilasi html ke cara kompilasi typst"
  ),
  (
    date: datetime(day: 5, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Menyelesaikan keseluruhan fitur pemrosesan pembuatan pdf invoice",
    task: "Merubah format invoice dari HTML menjadi typst dan menambahkan prosesnya",
    achievement: "Mebenarkan detail detail kecil yang tertinggal"
  ),
  (
    date: datetime(day: 6, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Menunggu penugasan",
    task: "-",
    achievement: "-"
  ),
  (
    date: datetime(day: 7, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Menunggu penugasan",
    task: "-",
    achievement: "-"
  ),
  (
    date: datetime(day: 10, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Weekly Meeting dan penugasan pemrosesan sertifikat menggunakan typst",
    task: "Merubah format sertifikat dari HTML menjadi typst",
    achievement: "Mengtahui letak template sertifikat dan dependensinya"
  ),
  (
    date: datetime(day: 11, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Menganalisa template design setifikat lama",
    task: "Merubah format sertifikat dari HTML menjadi typst",
    achievement: "Mengetahui proses pembuatan sertifikat yang lama dan cara mendapatkan dependensinya"
  ),
  (
    date: datetime(day: 12, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Membentuk dummy data yang digunakan di dalam sertifikat",
    task: "Merubah format sertifikat dari HTML menjadi typst",
    achievement: "Mendapatkan file JSON yang dapat digunakan untuk me-ngembangkan dokumen"
  ),
  (
    date: datetime(day: 13, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Melanjutkan template sertifikat 2023 halaman 1 dan 2",
    task: "Merubah format sertifikat dari HTML menjadi typst",
    achievement: "Membentuk struktur utama dokumen sertifikat"
  ),
  (
    date: datetime(day: 14, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Melanjutkan template sertifikat 2023 halaman 1 dan 2",
    task: "Merubah format sertifikat dari HTML menjadi typst",
    achievement: "Menyelesaikan halaman 1 dan sebagian halaman 2"
  ),
  (
    date: datetime(day: 17, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Melanjutkan template sertifikat 2023 halaman 2",
    task: "Merubah format sertifikat dari HTML menjadi typst",
    achievement: "Mebenarkan tabel dan detail detail lain di halaman 2"
  ),
  (
    date: datetime(day: 18, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Membuat template sertifikat 2025 halaman 1 dan 2",
    task: "Merubah format sertifikat dari HTML menjadi typst",
    achievement: "Menyesuaikan perubahan dari template 2023 ke 2025"
  ),
  (
    date: datetime(day: 19, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Membuat template sertifikat 2024 halaman 1 dan 2",
    task: "Merubah format sertifikat dari HTML menjadi typst",
    achievement: "Menyesuaikan perubahan dari template 2023 ke 2024"
  ),
  (
    date: datetime(day: 20, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Membuat ulang template sertifikat 2023 halaman 1 dan 2",
    task: "Merubah format sertifikat dari HTML menjadi typst",
    achievement: "Membentuk struktur dokumen yang lebih identik terhadapt template HTMLnya"
  ),
  (
    date: datetime(day: 21, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Menata ulang susunan sertifikat 2025, 2024, 2023",
    task: "Merubah format sertifikat dari HTML menjadi typst",
    achievement: "Penyesuaian ulang sertifikat 2025, 2024, 2023"
  ),
  (
    date: datetime(day: 24, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Menambahkan data preprocessing untuk sertifikat",
    task: "Merubah format sertifikat dari HTML menjadi typst",
    achievement: "Memisahkan pemrosesan data invoice dengan sertifikat"
  ),
  (
    date: datetime(day: 25, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Mengkoreksi style font dan lain lain",
    task: "Merubah format sertifikat dari HTML menjadi typst",
    achievement: "Penyesuaian styling dari elemen elemen dokumen sertifikat"
  ),
  (
    date: datetime(day: 26, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Menata ulang susunan sertifikat dengan metode yang lebih akurat",
    task: "Merubah format sertifikat dari HTML menjadi typst",
    achievement: "Menyusun sertifikat ulang dengan absolute position sama seperti HTML"
  ),
  (
    date: datetime(day: 27, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Mengkoreksi style font dan lain lain",
    task: "Merubah format sertifikat dari HTML menjadi typst",
    achievement: "Penyesuaian lagi setelah posisi berubah dengan absolute position"
  ),
  (
    date: datetime(day: 28, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Menyelesaikan keseluruhan fitur pemrosesan pembuatan pdf sertifikat",
    task: "Merubah format sertifikat dari HTML menjadi typst",
    achievement: "Merubah penggunaan proses lama ke proses baru"
  ),
  (
    date: datetime(day: 28, month: 4, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Weekly meeting",
    task: "Menjadikan halaman index dan technical dari web portal menjadi responsive",
    achievement: "Menjalankan web portal di sistem lokal"
  ),
  (
    date: datetime(day: 5, month: 5, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Mencoba merubah dimensi salah satu komponen",
    task: "Menjadikan halaman index dan technical dari web portal menjadi responsive",
    achievement: "Merubah atribut komponen tanpa merubah tampilan"
  ),
  (
    date: datetime(day: 6, month: 5, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Mencoba untuk mendapatkan perubahan dari komponen",
    task: "Menjadikan halaman index dan technical dari web portal menjadi responsive",
    achievement: "Merubah atribut komponen tanpa merubah tampilan"
  ),
  (
    date: datetime(day: 7, month: 5, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Mencoba menggunakan AI",
    task: "Menjadikan halaman index dan technical dari web portal menjadi responsive",
    achievement: "Merubah atribut komponen tanpa merubah tampilan"
  ),
  (
    date: datetime(day: 8, month: 5, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Mencoba AI lain",
    task: "Menjadikan halaman index dan technical dari web portal menjadi responsive",
    achievement: "Merubah atribut komponen tanpa merubah tampilan"
  ),
  (
    date: datetime(day: 15, month: 5, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Mencoba kembali melakukan perubahan untuk mendapatkan hasil yang berbeda",
    task: "Menjadikan halaman index dan technical dari web portal menjadi responsive",
    achievement: "Merubah hal lain selain atribut"
  ),
  (
    date: datetime(day: 19, month: 5, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Berusaha memahami apa yang semestinya dilakukan dan perubahan yang dibutuhkan",
    task: "Menjadikan halaman index dan technical dari web portal menjadi responsive",
    achievement: "Mendapatkan pemahaman tentang membuat komponen responsive menggunakan Tailwind"
  ),
  (
    date: datetime(day: 21, month: 5, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Menjabarkan komponen komponen yang digunakan halaman index dan technical",
    task: "Menjadikan halaman index dan technical dari web portal menjadi responsive",
    achievement: "Mendapatkan gambaran dari susunan halaman dan komponen yang ada di halaman"
  ),
  (
    date: datetime(day: 22, month: 5, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Merubah className dari beberapa komponen",
    task: "Menjadikan halaman index dan technical dari web portal menjadi responsive",
    achievement: "Merubah max width dari beberapa komponen"
  ),
  (
    date: datetime(day: 26, month: 5, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Mulai memahami apa yang harus dilakukan dan merubah komponen technical hero section",
    task: "Menjadikan halaman index dan technical dari web portal menjadi responsive",
    achievement: "Merubah max width dan menyesuaikan kembali ke tampilan original dari satu komponen"
  ),
  (
    date: datetime(day: 27, month: 5, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Merubah lagi komponen technical hero section",
    task: "Menjadikan halaman index dan technical dari web portal menjadi responsive",
    achievement: "Berhasil merubah lebar dari kompnen technical hero section menjadi responsive"
  ),
  (
    date: datetime(day: 28, month: 5, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Menyesuaikan technical hero section kembali ke tampilan sebelumnya",
    task: "Menjadikan halaman index dan technical dari web portal menjadi responsive",
    achievement: "Menyesuaikan komponen agar tampak semula"
  ),
  (
    date: datetime(day: 3, month: 6, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Weekly meeting",
    task: "Menjadikan halaman index dan technical dari web portal menjadi responsive",
    achievement: "Merubah max width dan margin x dari berbagai hampir seluruh komponen"
  ),
  (
    date: datetime(day: 4, month: 6, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Mencoba membuat font size responsive",
    task: "Menjadikan halaman index dan technical dari web portal menjadi responsive",
    achievement: "Menjadikan beberapa text berubah ukuran sesuai dari besar viewport"
  ),
  (
    date: datetime(day: 5, month: 6, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Memproses halaman technical",
    task: "Menjadikan halaman index dan technical dari web portal menjadi responsive",
    achievement: "Merubah max width dan margin x dari komponen yang digunakan halaman technical"
  ),
  (
    date: datetime(day: 9, month: 6, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Menyesuaikan halaman technical dengan ldp program dan ila program",
    task: "Menjadikan halaman index dan technical dari web portal menjadi responsive",
    achievement: "Mengimitasi solusi responsive dari halaman serupa"
  ),
  (
    date: datetime(day: 10, month: 6, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Menyesuaikan navbar dan footer",
    task: "Menjadikan halaman index dan technical dari web portal menjadi responsive",
    achievement: "Menjadikan text berubah ukuran sesuai viewport"
  ),
  (
    date: datetime(day: 11, month: 6, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Penyelesaian keseluruhan halaman",
    task: "Menjadikan halaman index dan technical dari web portal menjadi responsive",
    achievement: "Menkoreksi detail detail kecil dan komponen yang belum disesuaikan"
  ),
  (
    date: datetime(day: 23, month: 6, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Weekly meeting dan penugasan",
    task: "Menambahkan unit test ke komponen yang belum memiliki unit test",
    achievement: "Menjalankan unit test di repositori"
  ),
  (
    date: datetime(day: 24, month: 6, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Membuat unit test untuk component yang belum memiliki unit test",
    task: "Menambahkan unit test ke komponen yang belum memiliki unit test",
    achievement: "Membuat unit test untuk FilterForm"
  ),
  (
    date: datetime(day: 25, month: 6, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Membuat unit test untuk component yang belum memiliki unit test",
    task: "Menambahkan unit test ke komponen yang belum memiliki unit test",
    achievement: "Membuat unit test untuk OperationIcon"
  ),
  (
    date: datetime(day: 26, month: 6, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Membuat Laporan Magang",
    task: "-",
    achievement: "-"
  ),
  (
    date: datetime(day: 27, month: 6, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Membuat Laporan Magang",
    task: "-",
    achievement: "-"
  ),
  (
    date: datetime(day: 30, month: 6, year: 2025).display("[day] [month repr:long] [year]"),
    activity: "Weekly meeting dan pelepasan",
    task: "-",
    achievement: "-"
  ),
)

#let tabIndent = [#h(1in/2)]

#set page(
  paper: "a4",
  margin: (
    top: 4cm,
    bottom: 3cm,
    left: 4cm,
    right: 3cm
  )
)
#set text(
  hyphenate: false,
  size: 12pt, 
  font: "Times New Roman",
  kerning: true
)

#set align(center)

#text(size: 16pt)[#upper[*internship report*]] \ \

#text(size: 14pt)[#upper[*#title*]]

#text(size: 14pt)[#upper[*#company.name*]]

#v(1fr)

#image("../../init/polinema-logo.png", width: 4.37cm)

#v(1fr)

#text(size: 14pt)[Written by:]

#text(size: 14pt)[#student.name#tabIndent#tabIndent#tabIndent#student.nim]

#v(1fr)

#text(size: 16pt)[#upper[*d4 informatics engineering program*]]

#text(size: 16pt)[#upper[*department of informatics technology*]]

#text(size: 16pt)[#upper[*politeknik negeri malang*]]

#text(size: 16pt)[#upper[*2025*]]

#pagebreak()

#set page(numbering: "i")

#set align(left)
#show heading: set align(left)
#show heading.where(level: 1): set align(center)
#set par(
  spacing: 1.5em,
  justify: true,
  first-line-indent: 0.5in,
  linebreaks: "optimized"
)
#set figure.caption(position: top)
#show figure: set block(breakable: true)

#heading(upper("approval")) 

The undersign below:
#table(
  columns: (auto, auto),
  stroke: none,
  inset: (x: 0pt),
  [#tabIndent Name#tabIndent], [: #fieldSupervisor.name],
  [#tabIndent Position#tabIndent], [: #fieldSupervisor.position],
)
\ \
That the student:

*#tabIndent #student.name #tabIndent #student.nim*

\ \
Have successfully completed the internship at:
#table(
  columns: (auto, auto, auto),
  stroke: none,
  inset: (x: 0pt),
  [#tabIndent Company Name], [:], [#company.name],
  [#tabIndent Company Address], [:], [#company.address],
  [#tabIndent Field], [:], [#company.field],
  [#tabIndent Peroid], [:], [#company.period],
)
\ \

#align(
  center,
  table(
    align: center,
    columns: (auto),
    stroke: none,
    [#approvalSignDate],
    v(5em),
    [#fieldSupervisor.name],
  )
) 

#pagebreak()
#set align(center)

#heading(upper("approval")) 

\
#text(size: 14pt)[#upper("internship report")]

\
#text(size: 14pt)[*#upper(title)*]

#table(
  align: center,
  stroke: 0pt,
  columns: (1fr, 1fr),
  [#student.name], [#student.nim]
)

\
#text(size: 11pt)[
  Has been reviewed and approved during the Practical Fieldwork Presentation of the \ 
  Department of Information Technology, \
  Politeknik Negeri Malang, on #presentationDate.
]

\
Malang, #presentationDate

Approved By,

#table(
  align: center + bottom,
  stroke: 0pt,
  columns: (1fr, 1fr),
  inset: (x: 0pt),
  [Head of \ D4 Informatics Engineering Program ], [Supervisor],
  [#v(5em)], [#v(5em)],
  [#underline(headOfProgram.name) \ NIP. #headOfProgram.nip], 
  [#underline(supervisingLecturer.name) \ NIP. #supervisingLecturer.nip],
)
\
#table(
  align: center + bottom,
  stroke: 0pt,
  columns: (1fr),
  [Acknowledged, \ Head of The Department of Information Technology ],
  [#v(5em)],
  [#underline(headOfDepartment.name) \ NIP. #headOfDepartment.nip],
)

#set align(left)
#pagebreak()

#heading(upper("abstract")) 
\

This internship report details the activities undertaken at PT. Global Scholarship Services Indonesia (GSSI) from 20 February 2025, to 30 June 2025, as part of the D4 Informatics Engineering Program at Politeknik Negeri Malang. The internship focused on practical application of theoretical knowledge in modern software development, specifically in document generation, responsive web design, and unit testing. Key contributions included the migration of email and invoice templates from HTML to Typst, the development of a responsive web portal using Tailwind CSS, and the implementation of unit tests for React components with Vitest and React Testing Library. 

The report discusses the theoretical foundations of these technologies, the realization of various tasks, and the relevance of practical experience to academic learning. It also addresses challenges encountered, such as initial misunderstandings of requirements, difficulties in replicating complex document structures with Typst, and the impact of personal illness on work rhythm. 

Despite these issues, the internship provided invaluable hands-on experience, significantly enhancing the understanding of efficient document processing, adaptive UI development, and robust software quality assurance. Recommendations for future improvements in document templating and backend PDF generation processes are also presented.

#pagebreak()

#heading(upper("preface")) 
\

All praise and gratitude are due to Almighty Allah, whose blessings and mercy have enabled me to successfully complete this report. This report is based on my internship activities from 20 February 2025 - 30 June 2025, as part of the requirements for the internship program evaluation.

Throughout my internship journey and the process of writing this report, I received invaluable support and assistance from various parties. On this occasion, I would like to express my deepest gratitude to:

+ My parents and family, who provided unwavering support, prayers, and encouragement, both materially and spiritually.

+ Politeknik Negeri Malang, especially the leadership and faculty, for facilitating and encouraging students development through this program.

+ PT. Global Scholarship Services Indonesia, where I completed my internship program, for the valuable experience I gained during the period of 20 February 2025 - 30 June 2025.

+ Mr. #fieldSupervisor.name, as the director of the company where I complemented my internship and as my field supervisor.

+ Prof. Dr. Eng. Rosa Andrie Asmara, S.T., M.T., as the Head of the Information Technology Department at Politeknik Negeri Malang.

+ Dr. Ely Setyo Astuti, S.T., M.T., as the Head of the D4 Informatics Engineering Study Program.

+ Prof. Cahya Rahmad, S.T., M.Kom., Dr. Eng., who provided technical advice and direction during the internship.

+ All other parties who supported and assisted me during the internship program, whose names I cannot mention one by one.

#align(
  right,
  table(
    align: left,
    columns: (auto),
    stroke: none,
    [Malang, #prefaceDate],
    image("../../smt_5/Internship Preparation/ttd.png", height: 5em),
    [#student.name],
  )
) 

#pagebreak()

#heading(upper("list of content")) 
#outline(title: none, indent: 2em)

#pagebreak()

#heading(upper("list of table")) 
#outline(title: none, target: figure.where(kind: table))

// #pagebreak()

// #heading(upper("list of figures")) 
// #outline(title: none, target: figure.where(kind: image))

// #pagebreak()

// #heading(upper("list of appendicies")) 
// #outline(title: none, target: label("appendix"))

#pagebreak()

#counter(page).update(1)

#set page(numbering: "1")

#show heading.where(level: 1): set heading(
    numbering: (..) => "CHAPTER " + counter(heading).display("I")
)

#set heading(numbering: "1.1.")

= #upper("introduction") 
\

My internship was conducted at PT. Global Scholarship Services Indonesia (GSSI), a dynamic subsidiary of PT Bogor Life Science & Technology (BLST). This invaluable opportunity, spanning from 20 February 2025 to 30 June 2025, served as a vital bridge between my theoretical studies and practical professional application. The primary objective of this internship was to gain firsthand experience in the operations of a prominent organization within the education and human capital development sector, thereby enhancing my understanding of corporate functions and industry best practices.

GSSI, also recognized as IPB Training, holds a significant position as an "excellence hub" for the development of human resources through applied science-based skill enhancement. The company is driven by a clear vision to effectively disseminate the extensive expertise cultivated at IPB University. In alignment with this, its mission is firmly rooted in providing high-quality, relevant skill development solutions that cater to a diverse array of sectors and individual needs. Beyond its core training functions, GSSI strategically contributes to IPB's non-academic revenue streams, demonstrating its dual role as both an educational service provider and a sustainable business entity. My tenure at GSSI thus offered a comprehensive immersion into an organization deeply committed to fostering human potential and contributing to national development through specialized learning initiatives.

== Company Profile 
\

PT. Global Scholarship Services Indonesia (GSSI), widely recognized as IPB Training, is a limited liability company (Perseroan Terbatas) established on 12 March 2009. Operating as a strategic subsidiary of PT Bogor Life Science & Technology (BLST) since its acquisition in 2014, GSSI is an integral part of the IPB University business group. Based in Bogor, the company functions as an "excellence hub" for human resource development, leveraging IPB University's profound expertise to deliver a diverse range of training and skill enhancement programs across various sectors, including technical, leadership, and language proficiency through its IPB Language Academy.

While its name implies direct scholarship management, GSSI's unique approach to "scholarship services" focuses on enabling individuals to become competitive for external scholarships and career advancements. This is achieved by offering specialized training and "coaching scholarships" for its own courses, such as IELTS preparation, which equip participants with necessary qualifications. By professionalizing human capital and contributing to the advancement of IPB University through its sustainable business practices, GSSI plays a crucial role in enhancing the quality and competitiveness of Indonesia's workforce.

== Work Unit Scope 

=== Location 
\

This internship was conducted entirely remotely, providing flexibility and allowing for work to be performed from any location with an internet connection. I was specifically assigned to the Finance and IT Unit, where my primary role was to provide support for initiatives and decisions made by the IT personnel within the unit.

=== Assignment Scope 
\

Upon commencement of the internship, I was granted access and responsibility for three distinct repositories. These repositories serve as the primary focus of my work throughout the internship period. The repositories are:

- Skilly: This repository is IPB Training's internal application where they centralized their bussiness activity in.

- main-api: This repository is an all encompassing API they use for almost everything to bridge between their system and BLST's

- main-portal: This repository is IPB Training's portal site as the gate to every services they provide

My initial tasks involved familiarizing myself with the codebase of these repositories to prepare for future development and contribution.

=== Work Plan Schedule 
\

My weekly work schedule was structured as follows:
#figure(
  table(
    align: center,
    columns: (3fr, 4fr, 4fr),
    [Day], [Monday], [Tuesday - Friday],
    [Work Hours], [08.00 - 17.00], [09.00 - 17.00],
    [Activity], [Weekly meeting and work], [work],
  ),
  caption: "Work Schedule"
)

#pagebreak()

= #upper("theoretical study") 
\

This chapter provides the theoretical foundation for the technologies and methodologies employed during the internship. It delves into the principles of modern document generation, responsive web design, and software unit testing, specifically focusing on Typst for document creation, Tailwind CSS for front-end responsiveness, and Vitest with React Testing Library for robust component testing.

== Document Generation with Typst 
\

Document generation systems automate the creation of structured documents, ensuring consistency, accuracy, and efficiency, particularly for repetitive tasks like producing invoices or certificates @aalpha_document_2022. These systems typically involve templating mechanisms and data integration to populate predefined layouts. The advent of modern typesetting tools has enhanced the capabilities of such systems, offering greater flexibility and performance.

Typst is a new markup-based typesetting system designed for technical writing and document creation, positioning itself as a contemporary alternative to traditional systems like LaTeX @typst_docs_latex. It distinguishes itself with a focus on ease of learning, a powerful yet intuitive markup language, and a fast, incremental compilation process @lovin_typst_2023. Unlike LaTeX's multi-pass compilation, Typst employs a four-phase compilation architecture—Parsing, Evaluation, Layout, and Export—facilitating rapid previews and efficient iteration @typst_architecture. Its functional programming paradigm allows for robust templating through custom functions and `set`/`show` rules, enabling a clear separation of content and presentation, which is crucial for generating consistent documents like invoices and certificates from structured data @typst_docs_formatting.

== Responsive Web Design with Tailwind CSS 
\

Responsive Web Design (RWD) is an approach to web development that aims to provide an optimal viewing experience—easy reading and navigation—across a wide range of devices, from desktops to mobile phones @udacity_responsive_2024. Key principles of RWD include fluid grids, flexible images, and media queries, which collectively allow a website's layout and content to adapt dynamically to different screen sizes and orientations @webflow_responsive_2023. Implementing RWD ensures accessibility and a consistent user experience regardless of the device used.

Tailwind CSS is a utility-first CSS framework that expedites responsive web design by providing a comprehensive set of low-level utility classes directly within HTML markup @magnet_tailwind_2023. Instead of pre-designed components, developers compose UIs by applying these atomic classes, which can be combined to create complex designs. For responsiveness, Tailwind integrates a mobile-first breakpoint system (`sm`, `md`, `lg`, `xl`, etc.) that allows specific utility classes to be conditionally applied based on screen size, effectively enabling adaptive layouts @geekster_tailwind_responsive_2023. This utility-first approach, complemented by the ability to extract recurring patterns into reusable components using directives like `@apply` or `@layer components`, promotes a modular and highly customizable design architecture for responsive portals @tailwind_docs_custom_styles.

== Unit Testing with Vitest and React Testing Library 
\

Unit testing is a software testing method where individual units or components of a software application are tested in isolation to determine if they are fit for use @wikipedia_unit_testing. The primary goal is to validate that each unit of the software performs as designed, providing early detection of bugs and facilitating easier debugging. Key principles include testing small, isolated units, ensuring tests are fast, and making them deterministic @codefresh_unit_testing_2024. In the context of front-end development, unit testing is crucial for ensuring the reliability and functionality of individual UI components.

Vitest is a modern, fast testing framework specifically designed for JavaScript and TypeScript projects, leveraging the performance benefits of Vite @incubyte_vitest_rtl_2023. It offers a Jest-compatible API, making it familiar to many developers, while providing faster execution and instant feedback through its hot module reloading capabilities during test development @teshome_vitest_rtl_2023. Vitest serves as the test runner and assertion library. Complementing Vitest, React Testing Library (RTL) is a lightweight utility library that focuses on testing React components in a way that closely resembles how users interact with the application @wieruch_vitest_rtl_2024. Instead of testing implementation details (like component internal state or methods), RTL encourages testing user flows and observable behavior, utilizing queries that prioritize accessibility attributes (e.g., `getByRole`, `getByLabelText`).

#pagebreak()

= #upper("internship activities")

== Activity Realization 

#figure(
  caption: "Internship Activities Realization",
  table(
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
        [#data.at("date", default: "-")],
        [#data.at("activity", default: "-")],
        [#data.at("task", default: "-")],
        [#data.at("achievement", default: "-")],
      )
    }),
  )
)

== Relevance of Theory and Practice 
\

This internship provided a unique opportunity to bridge the gap between theoretical knowledge and practical application. The concepts of responsive web design, component-based architecture, and robust unit testing, which were once abstract principles, became tangible tools in developing the responsive web portal and its interactive elements. Similarly, understanding modern document generation systems and their underlying principles was crucial in implementing efficient and accurate invoice and certificate generation processes using Typst.

Working with Typst allowed for a direct application of theoretical typesetting and templating principles. The internship tasks, such as creating structured invoices and certificates, directly benefited from Typst's functional approach and its ability to separate content from presentation, ensuring consistency and ease of maintenance. This hands-on experience solidified the understanding of how a well-designed document generation system can streamline critical business operations.

Furthermore, building the responsive web portal using Tailwind CSS provided invaluable practical insight into implementing responsive design philosophies. The theoretical understanding of fluid grids and media queries seamlessly translated into the strategic use of Tailwind's utility-first classes and breakpoint system. This direct application demonstrated how a utility-first framework efficiently facilitates the creation of adaptive user interfaces, ensuring optimal viewing across diverse devices.

Finally, the development of unit tests for the web portal's components using Vitest and React Testing Library offered a practical deep dive into software quality assurance. The theoretical emphasis on testing isolated units and focusing on user behavior over implementation details was directly applied. This experience highlighted how adhering to these testing principles leads to more stable, reliable, and maintainable code, significantly reducing potential bugs and improving overall software quality.

== Issues 
\

I consistently found my initial efforts to be abysmal, frequently resulting in little to no tangible progress. This significant disconnect between my intent and the actual output was a recurring challenge during the early stages of every assignments in my internship.

My initial attempt to recreate the invoice-making system was marred by a fundamental misunderstanding of the core requirements. I found myself adrift, struggling to grasp the essence of the task, which unfortunately led to a slight crisis regarding the assignment. This lack of clarity on my part resulted in the deadline being stretched considerably, as I grappled with what felt like an insurmountable knowledge gap. The experience was a stark reminder of the importance of thorough initial comprehension before diving into complex tasks.

Following the invoice system, my next challenge was recreating the certificate-making system with an identical document structure to its original HTML template. This proved to be a significant hurdle, as I consistently stumbled over layouting the document in Typst to precisely mirror the HTML version. The main issue stemmed directly from my lack of specific skills in Typst to replicate that exact kind of intricate document structure. Despite understanding the desired outcome, I struggled to translate the precise visual and structural elements of the HTML template into Typst's unique formatting environment.

Around the middle of my internship, I experienced a significant setback due to illness, which kept me out for almost an entire month. This prolonged absence created a major hiccup in my progress. When I returned, I found it quite challenging to regain my previous work rhythm and flow, as I struggled to pick up where I'd left off and re-establish my focus on ongoing tasks.

My next assignment, which was to make the main portal site's index and technical pages responsive, began with me underestimating the task. Instead of trying to fully understand the problem myself, I immediately employed external help with very little initial grasp of the assignment's requirements. This approach meant the entire first week resulted in nothing. I kept seeking quick answers without putting in the necessary initial effort to truly understand what I needed to do.

Adding to my earlier mistakes, I realized I didn't fully understand what makes a page responsive. I also couldn't tell which parts of the page were causing the problem or what I needed to change to make it responsive. So, for the next week, I just kept trying things, making small changes to the page until it looked somewhat right. This trial-and-error approach was very inefficient, but it was through this process that I eventually began to understand the principles and what I was supposed to be doing.

The disruption caused by my illness had a profound impact on my engagement, especially with the responsive page assignment. During this period, I found myself avoiding meetings entirely. This was primarily due to the intense embarrassment I felt, knowing I had practically no tangible results to show for my efforts. I struggled immensely to regain my previous pace, and truthfully, my performance ended up being worse than when I first started the internship.

#pagebreak()

= #upper("recommendations") 
\

This section provides recommendations primarily focused on the areas directly impacted by my contributions during the internship. While my exposure to the company's broader operational frameworks and ongoing projects was limited to the scope of my assigned tasks, I observed specific opportunities for enhancement within the projects I undertook.

Regarding the invoice template component, my initial development involved a direct replication of the existing HTML template's visual layout. Consequently, some aspects of component positioning may not be optimally refined. However, throughout this internship, I have acquired proficiency in creating documents using Typst, a skill that presents a significant opportunity to revisit and enhance the current invoice template. The declarative nature and advanced typesetting capabilities of Typst could lead to a more robust, maintainable, and aesthetically precise template compared to the current HTML-based solution.

Furthermore, a critical area for improvement lies within the backend process responsible for PDF generation. Enhancing the readability and modularity of this process would significantly benefit future development and maintenance efforts. While I believe there are several other minor optimizations and refinements that could be implemented, their subtle nature makes a detailed explanation challenging within this report. It is important to note that the theoretical benefits of transitioning to a Typst-based invoice system, such as improved consistency and easier customization, are yet to be validated through practical implementation and testing within the company's workflow.

// #pagebreak()

// = #upper("assignments")

#pagebreak()

= #upper("conclusions") 

== Conclusions 
\

This internship at PT. Global Scholarship Services Indonesia provided a comprehensive and invaluable experience, bridging the gap between theoretical knowledge and practical application in a professional development environment. Over the period from February 20, 2025, to June 30, 2025, significant progress was made in several key areas of software development.

Firstly, the migration of existing email and invoice templates to Typst demonstrated a practical understanding of modern document generation systems. This involved not only converting formats but also leveraging Typst's functional programming paradigm for robust templating, ensuring consistency and maintainability in critical business documents. The experience solidified the importance of efficient document processing and the benefits of separating content from presentation.

Secondly, the development of a responsive web portal utilizing Tailwind CSS provided hands-on experience with adaptive user interface design. By applying principles of fluid grids and media queries through Tailwind's utility-first approach, the internship successfully contributed to creating a user-friendly and accessible web experience across various devices. This reinforced the critical nature of responsive design in contemporary web development.

Finally, the implementation of unit tests for React components using Vitest and React Testing Library underscored the significance of software quality assurance. Focusing on user behavior and isolated unit testing, this aspect of the internship ensured the reliability and functionality of the web portal's components, highlighting best practices for creating stable and maintainable code.

Despite encountering challenges such as initial difficulties in task comprehension, complexities in replicating intricate document layouts, and the impact of health-related disruptions, these experiences proved to be crucial learning opportunities. They emphasized the importance of thorough problem understanding, continuous skill development, and resilience in a professional setting. Overall, the internship successfully enhanced practical skills, deepened theoretical understanding, and provided valuable insights into the real-world application of informatics engineering principles.

== Suggestions 
\

Based on the contributions and observations during the internship, the following suggestions are put forth:

- Refine Invoice Template Component with Typst: 
The initial development of the invoice template component involved a direct replication of the existing HTML template's visual layout, which may have resulted in sub-optimal component positioning. Leveraging the proficiency gained in creating documents with Typst presents a significant opportunity to revisit and enhance the current invoice template. The declarative nature and advanced typesetting capabilities of Typst could lead to a more robust, maintainable, and aesthetically precise template compared to the current HTML-based solution.

- Improve Backend PDF Generation Process: 
A critical area for improvement lies within the backend process responsible for PDF generation. Enhancing the readability and modularity of this process would significantly benefit future development and maintenance efforts.

- Explore Further Optimizations: 
While not detailed due to their subtle nature, several other minor optimizations and refinements could be implemented across the projects undertaken. Continuous review for these incremental improvements is encouraged.

- Validate Typst-based Invoice System: 
It is important to note that the theoretical benefits of transitioning to a Typst-based invoice system, such as improved consistency and easier customization, are yet to be fully validated through practical implementation and testing within the company’s workflow. Further testing and integration into the operational workflow are suggested to confirm these advantages.

#pagebreak()

#show heading.where(level: 1): set heading(
    numbering: none
)

#heading(upper("REFERENCES")) 
\
#bibliography("references.bib", title: none, style: "american-psychological-association")