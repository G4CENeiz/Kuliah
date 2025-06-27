#let title = "project title"
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
  nip: "",
  position: "Company Director"
)
#let supervisingLecturer = (
  name: "Prof. Cahya Rahmad, ST., M.Kom., Dr. Eng.",
  nip: "197202022005011002"
)
#let headOfProgram = (
  name: "Dr. Ely Styo Astuti, ST., MT.",
  nip: "197605152009122001"
)
#let headOfDepartment = (
  name: "Prof. Dr. Eng. Rosa Andrie Asmara,ST., MT.",
  nip: "198010102005011001"
)
#let approvalSignDate = "Bogor, " + datetime(day: 1, month: 7, year: 2025).display("[day] [month repr:long] [year]")
#let presentationDate = datetime(day: 2, month: 7, year: 2025).display("[day] [month repr:long] [year]")
#let activities = (
  (
    date: datetime(day: 3, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 8, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Kick off meeting"
  ),
  (
    date: datetime(day: 4, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Uji coba menjalankan repo \"main-api\" untuk melihat preview email"
  ),
  (
    date: datetime(day: 5, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Uji coba menjalankan repo \"skilly\" untuk melihat preview email"
  ),
  (
    date: datetime(day: 6, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Merubah format email di repo \"main-api\" menjadi typst"
  ),
  (
    date: datetime(day: 7, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "merapikan email typst di repo \"main-api\""
  ),
  (
    date: datetime(day: 10, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 8, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Meeting mingguan dan penyelesaian template email di repo \"main-api\""
  ),
  (
    date: datetime(day: 11, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Membuat template invoice dengan typst"
  ),
  (
    date: datetime(day: 12, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "mengintegrasikan template email typst dengan system"
  ),
  (
    date: datetime(day: 13, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "memperbaiki template dengan menggunakan fitur templating typst"
  ),
  (
    date: datetime(day: 14, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "melanjutkan memperbaiki template dengan menggunakan fitur templating typst"
  ),
  (
    date: datetime(day: 17, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Meneyesaikan proses backend untuk compiling typst"
  ),
  (
    date: datetime(day: 18, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Merubah JSON data menjadi dictionary di dalam typst"
  ),
  (
    date: datetime(day: 19, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Menambahkan data preprocessing untuk data typst"
  ),
  (
    date: datetime(day: 20, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Mengganti cara pembentukan dokumen pdf typst"
  ),
  (
    date: datetime(day: 21, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Merubah pengguanaan template html ke typst"
  ),
  (
    date: datetime(day: 24, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Menggunakan Typst JSON loader untuk mengambil data"
  ),
  (
    date: datetime(day: 25, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Menngunakan Tabel peserta statis"
  ),
  (
    date: datetime(day: 26, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Membuat dummy data sebagai data sementara untuk pengembangan template"
  ),
  (
    date: datetime(day: 27, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Mencari informasi tentang penggunaan looping untuk menampilkan data di tabel"
  ),
  (
    date: datetime(day: 28, month: 2, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Mencoba penggunaan looping untuk menampilkan data di tabel"
  ),
  (
    date: datetime(day: 3, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Menambahkan konten tabel peserta secara dinamis dan detail pembayaran di dalam invoice"
  ),
  (
    date: datetime(day: 4, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Menyelesaikan data preprocessing data agar data siap disajikan di dalam pdf"
  ),
  (
    date: datetime(day: 5, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Menyelesaikan keseluruhan fitur pemrosesan pembuatan pdf invoice"
  ),
  (
    date: datetime(day: 6, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Menunggu penugasan"
  ),
  (
    date: datetime(day: 7, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Menunggu penugasan"
  ),
  (
    date: datetime(day: 10, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 8, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Weekly Meeting dan penugasan pemrosesan sertifikat menggunakan typst"
  ),
  (
    date: datetime(day: 11, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Menganalisa template design setifikat lama"
  ),
  (
    date: datetime(day: 12, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Membentuk dummy data yang digunakan di dalam sertifikat"
  ),
  (
    date: datetime(day: 13, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Melanjutkan template sertifikat 2023 halaman 1 dan 2"
  ),
  (
    date: datetime(day: 14, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Melanjutkan template sertifikat 2023 halaman 1 dan 2"
  ),
  (
    date: datetime(day: 17, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Melanjutkan template sertifikat 2023 halaman 2"
  ),
  (
    date: datetime(day: 18, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Membuat template sertifikat 2025 halaman 1 dan 2"
  ),
  (
    date: datetime(day: 19, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Membuat template sertifikat 2024 halaman 1 dan 2"
  ),
  (
    date: datetime(day: 20, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Membuat ulang template sertifikat 2023 halaman 1 dan 2"
  ),
  (
    date: datetime(day: 21, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Menata ulang susunan sertifikat 2025, 2024, 2023"
  ),
  (
    date: datetime(day: 24, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Menambahkan data preprocessing untuk sertifikat"
  ),
  (
    date: datetime(day: 25, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Mengkoreksi style font dan lain lain"
  ),
  (
    date: datetime(day: 26, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Menata ulang susunan sertifikat dengan metode yang lebih akurat"
  ),
  (
    date: datetime(day: 27, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Mengkoreksi style font dan lain lain"
  ),
  (
    date: datetime(day: 28, month: 3, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Menyelesaikan keseluruhan fitur pemrosesan pembuatan pdf sertifikat"
  ),
  (
    date: datetime(day: 28, month: 4, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 13, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 14, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Weekly meeting"
  ),
  (
    date: datetime(day: 5, month: 5, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Mencoba merubah dimensi salah satu komponen"
  ),
  (
    date: datetime(day: 6, month: 5, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Mencoba untuk mendapatkan perubahan dari komponen"
  ),
  (
    date: datetime(day: 7, month: 5, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Mecoba menggunakan AI"
  ),
  (
    date: datetime(day: 8, month: 5, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Mencoba AI lain"
  ),
  (
    date: datetime(day: 15, month: 5, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "mencoba kembali melakukan perubahan untuk mendapatkan hasil yang berbeda"
  ),
  (
    date: datetime(day: 19, month: 5, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "berusaha memahami apa yang semestinya dilakukan dan perubahan yang dibutuhkan"
  ),
  (
    date: datetime(day: 21, month: 5, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "menjabarkan komponen komponen yang digunakan halaman index dan technical"
  ),
  (
    date: datetime(day: 22, month: 5, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "merubah className dari beberapa komponen"
  ),
  (
    date: datetime(day: 26, month: 5, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "mulai memahami apa yang harus dilakukan dan merubah komponen technical hero section"
  ),
  (
    date: datetime(day: 27, month: 5, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "merubah lagi komponen technical hero section"
  ),
  (
    date: datetime(day: 28, month: 5, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "menyesuaikan technical hero section kembali ke tampilan sebelumnya"
  ),
  (
    date: datetime(day: 3, month: 6, year: 2025).display("[weekday], [day]/[month]/[year]"),
    clockIn: datetime(hour: 8, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "weekly meeting"
  ),
  (
    date: datetime(day: 4, month: 6, year: 2025).display("[weekday], [day]/[month]/[year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "mencoba membuat font size responsive"
  ),
  (
    date: datetime(day: 5, month: 6, year: 2025).display("[weekday], [day]/[month]/[year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "memproses halaman technical"
  ),
  (
    date: datetime(day: 9, month: 6, year: 2025).display("[weekday], [day]/[month]/[year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "menyesuaikan halaman technical dengan ldp program dan ila program"
  ),
  (
    date: datetime(day: 10, month: 6, year: 2025).display("[weekday], [day]/[month]/[year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "menyesuaikan navbar dan footer"
  ),
  (
    date: datetime(day: 11, month: 6, year: 2025).display("[weekday], [day]/[month]/[year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "penyelesaian keseluruhan halaman"
  ),
  (
    date: datetime(day: 23, month: 6, year: 2025).display("[weekday], [day]/[month]/[year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Weekly meeting dan penugasan"
  ),
  (
    date: datetime(day: 24, month: 6, year: 2025).display("[weekday], [day]/[month]/[year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Membuat unit test untuk component yang belum memiliki unit test"
  ),
  (
    date: datetime(day: 25, month: 6, year: 2025).display("[weekday], [day]/[month]/[year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Membuat unit test untuk component yang belum memiliki unit test"
  ),
  (
    date: datetime(day: 26, month: 6, year: 2025).display("[weekday], [day]/[month]/[year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Membuat Laporan Magang"
  ),
  (
    date: datetime(day: 27, month: 6, year: 2025).display("[weekday], [day]/[month]/[year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Membuat Laporan Magang"
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
  font: "Times New Roman"
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
#show heading: set align(center)
#show heading.where(level: 2): set align(left)
#set par(
  spacing: 1.5em,
  justify: true,
  first-line-indent: 0.5in,
  linebreaks: "simple"
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
  [#tabIndent NIP#tabIndent], [: #fieldSupervisor.nip],
  [#tabIndent Position#tabIndent], [: #fieldSupervisor.position],
)
\ \
That the sudent:

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

#pagebreak()

#heading(upper("preface"))
\

#lorem(40)

#lorem(40)

#lorem(40)

#lorem(40)

#align(
  right,
  table(
    align: left,
    columns: (auto),
    stroke: none,
    [Malang, #presentationDate],
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

#pagebreak()

#heading(upper("list of figures"))
#outline(title: none, target: figure.where(kind: image))

#pagebreak()

#heading(upper("list of appendicies"))
#outline(title: none, target: label("appendix"))

#pagebreak()

#counter(page).update(1)

#set page(numbering: "1")

#show heading.where(level: 1): set heading(
    numbering: (..) => "CHAPTER " + counter(heading).display("I")
)

#set heading(numbering: "1.1.")

= #upper("introduction")
== Company Profile	
== Work Unit Scope

#pagebreak()

= #upper("theoretical study")

#pagebreak()

= #upper("internship activities")

== Activity Realization
#figure(
  caption: "Internship activities realization",
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

#pagebreak()

== Relevance of Theory and Practice
== Issues
I consistently found my initial efforts to be abysmal, frequently resulting in little to no tangible progress. This significant disconnect between my intent and the actual output was a recurring challenge during the early stages of every assignments in my internship.

My initial attempt to recreate the invoice-making system was marred by a fundamental misunderstanding of the core requirements. I found myself adrift, struggling to grasp the essence of the task, which unfortunately led to a slight crisis regarding the assignment. This lack of clarity on my part resulted in the deadline being stretched considerably, as I grappled with what felt like an insurmountable knowledge gap. The experience was a stark reminder of the importance of thorough initial comprehension before diving into complex tasks.

Following the invoice system, my next challenge was recreating the certificate-making system with an identical document structure to its original HTML template. This proved to be a significant hurdle, as I consistently stumbled over layouting the document in Typst to precisely mirror the HTML version. The main issue stemmed directly from my lack of specific skills in Typst to replicate that exact kind of intricate document structure. Despite understanding the desired outcome, I struggled to translate the precise visual and structural elements of the HTML template into Typst's unique formatting environment.

Around the middle of my internship, I experienced a significant setback due to illness, which kept me out for almost an entire month. This prolonged absence created a major hiccup in my progress. When I returned, I found it quite challenging to regain my previous work rhythm and flow, as I struggled to pick up where I'd left off and re-establish my focus on ongoing tasks.

My next assignment, making the main portal site's index and technical pages responsive, started with me underestimating the task. Instead of trying to understand the problem fully, I immediately threw it at multiple AI models with very little understanding of the assignment. This meant the entire first week resulted in nothing. I just kept feeding the problem to every major LLM, hoping for an easy answer, but my lack of initial effort kept me from seeing what I really needed to do.

Adding to my earlier mistakes, I realized I didn't fully understand what makes a page responsive. I also couldn't tell which parts of the page were causing the problem or what I needed to change to make it responsive. So, for the next week, I just kept trying things, making small changes to the page until it looked somewhat right. This trial-and-error approach was very inefficient, but it was through this process that I eventually began to understand the principles and what I was supposed to be doing.

The disruption caused by my illness had a profound impact on my engagement, especially with the responsive page assignment. During this period, I found myself avoiding meetings entirely. This was primarily due to the intense embarrassment I felt, knowing I had practically no tangible results to show for my efforts. I struggled immensely to regain my previous pace, and truthfully, my performance ended up being worse than when I first started the internship.

#pagebreak()

= #upper("recomendations")

#pagebreak()

= #upper("assignments")

#pagebreak()

= #upper("conclusions")

== Conclusions
== Suggestions

#pagebreak()

#show heading.where(level: 1): set heading(
    numbering: none
)

#bibliography("../../smt_5/Research Method/Week 5/Essay/references.bib", title: "REFERENCES")