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
      date: datetime(day: 28, month: 4, year: 2025).display("[weekday], [day]/[month]/[year]"),
      clockIn: datetime(hour: 13, minute: 0, second: 0).display("[hour]:[minute]"),
      clockOut: datetime(hour: 14, minute: 0, second: 0).display("[hour]:[minute]"),
      activity: "Weekly meeting"
    ),
    (
      date: datetime(day: 29, month: 4, year: 2025).display("[weekday], [day]/[month]/[year]"),
      clockIn: datetime(hour: 13, minute: 0, second: 0).display("[hour]:[minute]"),
      clockOut: datetime(hour: 14, minute: 0, second: 0).display("[hour]:[minute]"),
      activity: "- (tidak mengerjakan)"
    ),
    (
      date: datetime(day: 30, month: 4, year: 2025).display("[weekday], [day]/[month]/[year]"),
      clockIn: datetime(hour: 13, minute: 0, second: 0).display("[hour]:[minute]"),
      clockOut: datetime(hour: 14, minute: 0, second: 0).display("[hour]:[minute]"),
      activity: "- (tidak mengerjakan)"
    ),
    (
      date: "",
      clockIn: "",
      clockOut: "",
      activity: ""
    ),
    (
      date: datetime(day: 2, month: 5, year: 2025).display("[weekday], [day]/[month]/[year]"),
      clockIn: datetime(hour: 13, minute: 0, second: 0).display("[hour]:[minute]"),
      clockOut: datetime(hour: 14, minute: 0, second: 0).display("[hour]:[minute]"),
      activity: "- (tidak mengerjakan)"
    ),
    (
      date: "",
      clockIn: "",
      clockOut: "",
      activity: ""
    ),
  )
)