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
      date: datetime(day: 21, month: 4, year: 2025).display("[weekday], [day]/[month]/[year]"),
      clockIn: "",
      clockOut: "",
      activity: "sakit"
    ),
    (
      date: datetime(day: 22, month: 4, year: 2025).display("[weekday], [day]/[month]/[year]"),
      clockIn: "",
      clockOut: "",
      activity: "sakit"
    ),
    (
      date: datetime(day: 23, month: 4, year: 2025).display("[weekday], [day]/[month]/[year]"),
      clockIn: "",
      clockOut: "",
      activity: "sakit"
    ),
    (
      date: datetime(day: 24, month: 4, year: 2025).display("[weekday], [day]/[month]/[year]"),
      clockIn: "",
      clockOut: "",
      activity: "sakit"
    ),
    (
      date: datetime(day: 25, month: 4, year: 2025).display("[weekday], [day]/[month]/[year]"),
      clockIn: "",
      clockOut: "",
      activity: "sakit"
    ),
    (
      date: "",
      clockIn: "",
      clockOut: "",
      activity: ""
    ),
  )
)