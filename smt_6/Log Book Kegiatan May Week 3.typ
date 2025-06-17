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
      date: datetime(day: 19, month: 5, year: 2025).display("[weekday], [day]/[month]/[year]"),
      clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
      clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
      activity: "berusaha memahami apa yang semestinya dilakukan dan perubahan yang dibutuhkan"
    ),
    (
      date: datetime(day: 20, month: 5, year: 2025).display("[weekday], [day]/[month]/[year]"),
      clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
      clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
      activity: "- (kosong)"
    ),
    (
      date: datetime(day: 21, month: 5, year: 2025).display("[weekday], [day]/[month]/[year]"),
      clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
      clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
      activity: "menjabarkan komponen komponen yang digunakan halaman index dan technical"
    ),
    (
      date: datetime(day: 22, month: 5, year: 2025).display("[weekday], [day]/[month]/[year]"),
      clockIn: datetime(hour: 9, minute: 0, second: 0).display("[hour]:[minute]"),
      clockOut: datetime(hour: 17, minute: 0, second: 0).display("[hour]:[minute]"),
      activity: "merubah className dari beberapa komponen"
    ),
    (
      date: datetime(day: 23, month: 5, year: 2025).display("[weekday], [day]/[month]/[year]"),
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