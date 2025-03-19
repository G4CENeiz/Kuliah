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
      date: datetime(day: 3, month: 2, year: 2025).display("[weekday], [day]/[month]/[year]"),
      clockIn: datetime(hour: 8, minute: 0, second: 0).display("[hour]:[minute]"),
      clockOut: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
      activity: "Kick off meeting"
    ),
    (
      date: datetime(day: 4, month: 2, year: 2025).display("[weekday], [day]/[month]/[year]"),
      clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
      clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
      activity: "Uji coba menjalankan repo \"main-api\" untuk melihat preview email"
    ),
    (
      date: datetime(day: 5, month: 2, year: 2025).display("[weekday], [day]/[month]/[year]"),
      clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
      clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
      activity: "Uji coba menjalankan repo \"skilly\" untuk melihat preview email"
    ),
    (
      date: datetime(day: 6, month: 2, year: 2025).display("[weekday], [day]/[month]/[year]"),
      clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
      clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
      activity: "Merubah format email di repo \"main-api\" menjadi typst"
    ),
    (
      date: datetime(day: 7, month: 2, year: 2025).display("[weekday], [day]/[month]/[year]"),
      clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
      clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
      activity: "merapikan email typst di repo \"main-api\""
    ),
    (
      date: "",
      clockIn: "",
      clockOut: "",
      activity: ""
    ),
  )
)