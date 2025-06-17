#import "logBookTemplate.typ": logBook
#show: logBook.with(
  student: (
    name: "Muhammad Baihaqi Aulia Asy'ari",
    nim: "2241720145",
    studyProgram: "Teknik Informatika",
    partnerName: "PT. Global Scholarship Services Indonesia"
  ),
  ttd: image("../smt_5/Internship Preparation/ttd.png", height: 5em),
  fieldSupervisorName: "Muhammad Sigit Susanto",
  supervisorLecturerName: "Prof. Cahya Rahmad, ST., M.Kom., Dr. Eng.",
  activities: (
    (
      date: datetime(day: 10, month: 3, year: 2025).display("[weekday], [day]/[month]/[year]"),
      clockIn: datetime(hour: 8, minute: 0, second: 0).display("[hour]:[minute]"),
      clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
      activity: "Weekly Meeting dan penugasan pemrosesan sertifikat menggunakan typst"
    ),
    (
      date: datetime(day: 11, month: 3, year: 2025).display("[weekday], [day]/[month]/[year]"),
      clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
      clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
      activity: "Menganalisa template design setifikat lama"
    ),
    (
      date: datetime(day: 12, month: 3, year: 2025).display("[weekday], [day]/[month]/[year]"),
      clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
      clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
      activity: "Membentuk dummy data yang digunakan di dalam sertifikat"
    ),
    (
      date: datetime(day: 13, month: 3, year: 2025).display("[weekday], [day]/[month]/[year]"),
      clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
      clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
      activity: "Melanjutkan template sertifikat 2023 halaman 1 dan 2"
    ),
    (
      date: datetime(day: 14, month: 3, year: 2025).display("[weekday], [day]/[month]/[year]"),
      clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
      clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
      activity: "Melanjutkan template sertifikat 2023 halaman 1 dan 2"
    ),
    (
      date: "",
      clockIn: "",
      clockOut: "",
      activity: ""
    ),
  )
)