#import "logBookTemplate.typ": logBook
#show: logBook.with(
  student: (
    name: "Muhammad Baihaqi Aulia Asy'ari",
    nim: "2241720145",
    studyProgram: "Teknik Informatika",
    partnerName: "PT. Global Scholarship Services Indonesia",
  ),
  ttd: image("../smt_5/Internship Preparation/ttd.png", height: 5em),
  fieldSupervisorName: "Muhammad Sigit Susanto",
  supervisorLecturerName: "Prof. Cahya Rahmad, ST., M.Kom., Dr. Eng.",
  activities: (
    (
      date: datetime(day: 23, month: 6, year: 2025).display("[weekday], [day]/[month]/[year]"),
      clockIn: datetime(hour: 8, minute: 0, second: 0).display("[hour]:[minute]"),
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
    (
      date: datetime(day: 30, month: 6, year: 2025).display("[weekday], [day]/[month]/[year]"),
      clockIn: datetime(hour: 8, minute: 0, second: 0).display("[hour]:[minute]"),
      clockOut: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
      activity: "Weekly meeting dan pelepasan"
    ),
  )
)