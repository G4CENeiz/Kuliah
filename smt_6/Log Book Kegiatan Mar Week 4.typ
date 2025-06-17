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
      date: datetime(day: 24, month: 3, year: 2025).display("[weekday], [day]/[month]/[year]"),
      clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
      clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
      activity: "Menambahkan data preprocessing untuk sertifikat"
    ),
    (
      date: datetime(day: 25, month: 3, year: 2025).display("[weekday], [day]/[month]/[year]"),
      clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
      clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
      activity: "Mengkoreksi style font dan lain lain"
    ),
    (
      date: datetime(day: 26, month: 3, year: 2025).display("[weekday], [day]/[month]/[year]"),
      clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
      clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
      activity: "Menata ulang susunan sertifikat dengan metode yang lebih akurat"
    ),
    (
      date: datetime(day: 27, month: 3, year: 2025).display("[weekday], [day]/[month]/[year]"),
      clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
      clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
      activity: "Mengkoreksi style font dan lain lain"
    ),
    (
      date: datetime(day: 28, month: 3, year: 2025).display("[weekday], [day]/[month]/[year]"),
      clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
      clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
      activity: "Menyelesaikan keseluruhan fitur pemrosesan pembuatan pdf sertifikat"
    ),
    (
      date: "",
      clockIn: "",
      clockOut: "",
      activity: ""
    ),
  )
)