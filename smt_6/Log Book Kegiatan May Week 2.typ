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
      date: datetime(day: 12, month: 5, year: 2025).display("[weekday], [day]/[month]/[year]"),
      clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
      clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
      activity: "cuti hari raya waisak"
    ),
    (
      date: datetime(day: 13, month: 5, year: 2025).display("[weekday], [day]/[month]/[year]"),
      clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
      clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
      activity: "cuti hari raya waisak"
    ),
    (
      date: datetime(day: 14, month: 5, year: 2025).display("[weekday], [day]/[month]/[year]"),
      clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
      clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
      activity: "- (kosong)"
    ),
    (
      date: datetime(day: 15, month: 5, year: 2025).display("[weekday], [day]/[month]/[year]"),
      clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
      clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
      activity: "mencoba kembali melakukan perubahan untuk mendapatkan hasil yang berbeda"
    ),
    (
      date: datetime(day: 16, month: 5, year: 2025).display("[weekday], [day]/[month]/[year]"),
      clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
      clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
      activity: "- (kosong)"
    ),
    (
      date: "",
      clockIn: "",
      clockOut: "",
      activity: ""
    ),
  )
)