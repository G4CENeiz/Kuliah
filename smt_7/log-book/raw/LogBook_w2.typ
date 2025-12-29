#import "../LogBookTemplate.typ": logBook
#show: logBook.with(
  activities: (
    (
      date: datetime(day: 25, month: 8, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "menerima akses ke codebase yang akan dikerjakan"
    ),
    (
      date: datetime(day: 26, month: 8, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "menganalisis cobebase yang telah diterima"
    ),
    (
      date: datetime(day: 27, month: 8, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "mencoba menjalankan proyek dengan laravel sail"
    ),
    (
      date: datetime(day: 28, month: 8, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "membenahi env file yang dibutuhkan untuk menjalankan proyek"
    ),
    (
      date: datetime(day: 29, month: 8, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "mencoba untuk mengakses salah satu endpoint rest api dari proyek"
    ),
  )
)