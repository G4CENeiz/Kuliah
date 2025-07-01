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
    date: datetime(day: 3, month: 6, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 8, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "weekly meeting"
  ),
  (
    date: datetime(day: 4, month: 6, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "mencoba membuat font size responsive"
  ),
  (
    date: datetime(day: 5, month: 6, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "memproses halaman technical"
  ),
  (
    date: datetime(day: 9, month: 6, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "menyesuaikan halaman technical dengan ldp program dan ila program"
  ),
  (
    date: datetime(day: 10, month: 6, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "menyesuaikan navbar dan footer"
  ),
  (
    date: datetime(day: 11, month: 6, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "penyelesaian keseluruhan halaman"
  ),
  (
    date: datetime(day: 23, month: 6, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Weekly meeting dan penugasan"
  ),
  (
    date: datetime(day: 24, month: 6, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Membuat unit test untuk component yang belum memiliki unit test"
  ),
  (
    date: datetime(day: 25, month: 6, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Membuat unit test untuk component yang belum memiliki unit test"
  ),
  (
    date: datetime(day: 26, month: 6, year: 2025).display("[day] [month repr:long] [year]"),
    clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
    clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
    activity: "Membuat Laporan Magang"
  ),
  (
    date: datetime(day: 27, month: 6, year: 2025).display("[day] [month repr:long] [year]"),
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

#heading(upper("approval")) <content>

The undersign below:
#table(
  columns: (auto, auto),
  stroke: none,
  inset: (x: 0pt),
  [#tabIndent Name#tabIndent], [: #fieldSupervisor.name],
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

#heading(upper("approval")) <content>

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

#heading(upper("abstract")) <content>

#pagebreak()

#heading(upper("preface")) <content>
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

#heading(upper("list of content")) <content>
#outline(title: none, indent: 2em, target: label("content"))

#pagebreak()

#heading(upper("list of table")) <content>
#outline(title: none, target: figure.where(kind: table))

// #pagebreak()

// #heading(upper("list of figures")) <content>
// #outline(title: none, target: figure.where(kind: image))

#pagebreak()

#heading(upper("list of appendicies")) <content>
#outline(title: none, target: label("appendix"))

#pagebreak()

#counter(page).update(1)

#set page(numbering: "1")

#show heading.where(level: 1): set heading(
    numbering: (..) => "CHAPTER " + counter(heading).display("I")
)

#set heading(numbering: "1.1.")

= #upper("introduction") <content>

My internship was conducted at PT. Global Scholarship Services Indonesia (GSSI), a dynamic subsidiary of PT Bogor Life Science & Technology (BLST). This invaluable opportunity, spanning from [Insert Start Date] to [Insert End Date], served as a vital bridge between my theoretical studies and practical professional application. The primary objective of this internship was to gain firsthand experience in the operations of a prominent organization within the education and human capital development sector, thereby enhancing my understanding of corporate functions and industry best practices.

GSSI, also recognized as IPB Training, holds a significant position as an "excellence hub" for the development of human resources through applied science-based skill enhancement. The company is driven by a clear vision to effectively disseminate the extensive expertise cultivated at IPB University. In alignment with this, its mission is firmly rooted in providing high-quality, relevant skill development solutions that cater to a diverse array of sectors and individual needs. Beyond its core training functions, GSSI strategically contributes to IPB's non-academic revenue streams, demonstrating its dual role as both an educational service provider and a sustainable business entity. My tenure at GSSI thus offered a comprehensive immersion into an organization deeply committed to fostering human potential and contributing to national development through specialized learning initiatives.

== Company Profile <content>

PT. Global Scholarship Services Indonesia (GSSI), widely recognized as IPB Training, is a limited liability company (Perseroan Terbatas) established on March 12, 2009. Operating as a strategic subsidiary of PT Bogor Life Science & Technology (BLST) since its acquisition in 2014, GSSI is an integral part of the IPB University business group. Based in Bogor, the company functions as an "excellence hub" for human resource development, leveraging IPB University's profound expertise to deliver a diverse range of training and skill enhancement programs across various sectors, including technical, leadership, and language proficiency through its IPB Language Academy.

While its name implies direct scholarship management, GSSI's unique approach to "scholarship services" focuses on enabling individuals to become competitive for external scholarships and career advancements. This is achieved by offering specialized training and "coaching scholarships" for its own courses, such as IELTS preparation, which equip participants with necessary qualifications. By professionalizing human capital and contributing to the advancement of IPB University through its sustainable business practices, GSSI plays a crucial role in enhancing the quality and competitiveness of Indonesia's workforce.

== Work Unit Scope <content>

#pagebreak()

= #upper("theoretical study") <content>

This chapter provides the theoretical foundation for the technologies and methodologies employed during the internship. It delves into the principles of modern document generation, responsive web design, and software unit testing, specifically focusing on Typst for document creation, Tailwind CSS for front-end responsiveness, and Vitest with React Testing Library for robust component testing.

== Document Generation with Typst <content>

Document generation systems automate the creation of structured documents, ensuring consistency, accuracy, and efficiency, particularly for repetitive tasks like producing invoices or certificates @aalpha_document_2022. These systems typically involve templating mechanisms and data integration to populate predefined layouts. The advent of modern typesetting tools has enhanced the capabilities of such systems, offering greater flexibility and performance.

Typst is a new markup-based typesetting system designed for technical writing and document creation, positioning itself as a contemporary alternative to traditional systems like LaTeX @typst_docs_latex. It distinguishes itself with a focus on ease of learning, a powerful yet intuitive markup language, and a fast, incremental compilation process @lovin_typst_2023. Unlike LaTeX's multi-pass compilation, Typst employs a four-phase compilation architecture—Parsing, Evaluation, Layout, and Export—facilitating rapid previews and efficient iteration @typst_architecture. Its functional programming paradigm allows for robust templating through custom functions and `set`/`show` rules, enabling a clear separation of content and presentation, which is crucial for generating consistent documents like invoices and certificates from structured data @typst_docs_formatting.

== Responsive Web Design with Tailwind CSS <content>

Responsive Web Design (RWD) is an approach to web development that aims to provide an optimal viewing experience—easy reading and navigation—across a wide range of devices, from desktops to mobile phones @udacity_responsive_2024. Key principles of RWD include fluid grids, flexible images, and media queries, which collectively allow a website's layout and content to adapt dynamically to different screen sizes and orientations @webflow_responsive_2023. Implementing RWD ensures accessibility and a consistent user experience regardless of the device used.

Tailwind CSS is a utility-first CSS framework that expedites responsive web design by providing a comprehensive set of low-level utility classes directly within HTML markup @magnet_tailwind_2023. Instead of pre-designed components, developers compose UIs by applying these atomic classes, which can be combined to create complex designs. For responsiveness, Tailwind integrates a mobile-first breakpoint system (`sm`, `md`, `lg`, `xl`, etc.) that allows specific utility classes to be conditionally applied based on screen size, effectively enabling adaptive layouts @geekster_tailwind_responsive_2023. This utility-first approach, complemented by the ability to extract recurring patterns into reusable components using directives like `@apply` or `@layer components`, promotes a modular and highly customizable design architecture for responsive portals @tailwind_docs_custom_styles.

== Unit Testing with Vitest and React Testing Library <content>

Unit testing is a software testing method where individual units or components of a software application are tested in isolation to determine if they are fit for use @wikipedia_unit_testing. The primary goal is to validate that each unit of the software performs as designed, providing early detection of bugs and facilitating easier debugging. Key principles include testing small, isolated units, ensuring tests are fast, and making them deterministic @codefresh_unit_testing_2024. In the context of front-end development, unit testing is crucial for ensuring the reliability and functionality of individual UI components.

Vitest is a modern, fast testing framework specifically designed for JavaScript and TypeScript projects, leveraging the performance benefits of Vite @incubyte_vitest_rtl_2023. It offers a Jest-compatible API, making it familiar to many developers, while providing faster execution and instant feedback through its hot module reloading capabilities during test development @teshome_vitest_rtl_2023. Vitest serves as the test runner and assertion library. Complementing Vitest, React Testing Library (RTL) is a lightweight utility library that focuses on testing React components in a way that closely resembles how users interact with the application @wieruch_vitest_rtl_2024. Instead of testing implementation details (like component internal state or methods), RTL encourages testing user flows and observable behavior, utilizing queries that prioritize accessibility attributes (e.g., `getByRole`, `getByLabelText`). This approach ensures that tests are robust, maintainable, and less prone to breaking due to refactors of internal component logic, thereby validating the functionality and user experience of React components @ignatovich_rtl_best_practices_2023.

#pagebreak()

= #upper("internship activities")

== Activity Realization <content>

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

== Relevance of Theory and Practice <content>

This internship provided a unique opportunity to bridge the gap between theoretical knowledge and practical application. The concepts of responsive web design, component-based architecture, and robust unit testing, which were once abstract principles, became tangible tools in developing the responsive web portal and its interactive elements. Similarly, understanding modern document generation systems and their underlying principles was crucial in implementing efficient and accurate invoice and certificate generation processes using Typst.

Working with Typst allowed for a direct application of theoretical typesetting and templating principles. The internship tasks, such as creating structured invoices and certificates, directly benefited from Typst's functional approach and its ability to separate content from presentation, ensuring consistency and ease of maintenance. This hands-on experience solidified the understanding of how a well-designed document generation system can streamline critical business operations.

Furthermore, building the responsive web portal using Tailwind CSS provided invaluable practical insight into implementing responsive design philosophies. The theoretical understanding of fluid grids and media queries seamlessly translated into the strategic use of Tailwind's utility-first classes and breakpoint system. This direct application demonstrated how a utility-first framework efficiently facilitates the creation of adaptive user interfaces, ensuring optimal viewing across diverse devices.

Finally, the development of unit tests for the web portal's components using Vitest and React Testing Library offered a practical deep dive into software quality assurance. The theoretical emphasis on testing isolated units and focusing on user behavior over implementation details was directly applied. This experience highlighted how adhering to these testing principles leads to more stable, reliable, and maintainable code, significantly reducing potential bugs and improving overall software quality.

== Issues <content>

I consistently found my initial efforts to be abysmal, frequently resulting in little to no tangible progress. This significant disconnect between my intent and the actual output was a recurring challenge during the early stages of every assignments in my internship.

My initial attempt to recreate the invoice-making system was marred by a fundamental misunderstanding of the core requirements. I found myself adrift, struggling to grasp the essence of the task, which unfortunately led to a slight crisis regarding the assignment. This lack of clarity on my part resulted in the deadline being stretched considerably, as I grappled with what felt like an insurmountable knowledge gap. The experience was a stark reminder of the importance of thorough initial comprehension before diving into complex tasks.

Following the invoice system, my next challenge was recreating the certificate-making system with an identical document structure to its original HTML template. This proved to be a significant hurdle, as I consistently stumbled over layouting the document in Typst to precisely mirror the HTML version. The main issue stemmed directly from my lack of specific skills in Typst to replicate that exact kind of intricate document structure. Despite understanding the desired outcome, I struggled to translate the precise visual and structural elements of the HTML template into Typst's unique formatting environment.

Around the middle of my internship, I experienced a significant setback due to illness, which kept me out for almost an entire month. This prolonged absence created a major hiccup in my progress. When I returned, I found it quite challenging to regain my previous work rhythm and flow, as I struggled to pick up where I'd left off and re-establish my focus on ongoing tasks.

My next assignment, which was to make the main portal site's index and technical pages responsive, began with me underestimating the task. Instead of trying to fully understand the problem myself, I immediately employed external help with very little initial grasp of the assignment's requirements. This approach meant the entire first week resulted in nothing. I kept seeking quick answers without putting in the necessary initial effort to truly understand what I needed to do.

Adding to my earlier mistakes, I realized I didn't fully understand what makes a page responsive. I also couldn't tell which parts of the page were causing the problem or what I needed to change to make it responsive. So, for the next week, I just kept trying things, making small changes to the page until it looked somewhat right. This trial-and-error approach was very inefficient, but it was through this process that I eventually began to understand the principles and what I was supposed to be doing.

The disruption caused by my illness had a profound impact on my engagement, especially with the responsive page assignment. During this period, I found myself avoiding meetings entirely. This was primarily due to the intense embarrassment I felt, knowing I had practically no tangible results to show for my efforts. I struggled immensely to regain my previous pace, and truthfully, my performance ended up being worse than when I first started the internship.

#pagebreak()

= #upper("recomendations") <content>

// #pagebreak()

// = #upper("assignments")

#pagebreak()

= #upper("conclusions") <content>

== Conclusions <content>
== Suggestions <content>

#pagebreak()

#show heading.where(level: 1): set heading(
    numbering: none
)

#heading(upper("REFERENCES")) <content>
#bibliography("references.bib", title: none, style: "american-psychological-association")

#pagebreak()

= APPENDICES <content>

#counter(heading).update(0)
#show heading.where(level: 1): set align(left)
#show heading.where(level: 1): set heading(
    numbering: (..) => "Appendices " + counter(heading).display("1")
)

#heading("Log Book February") <appendix>

#image("feb-1.jpg")
#image("feb-2.jpg")
#image("feb-3.jpg")
#image("feb-4.jpg")

#pagebreak()

#heading("Log Book March") <appendix>

#image("mar-1.jpg")
#image("mar-2.jpg")
#image("mar-3.jpg")
#image("mar-4.jpg")

#pagebreak()

#heading("Log Book April") <appendix>

#pagebreak()

#heading("Log Book May") <appendix>

#pagebreak()

#heading("Log Book June") <appendix>