#import "../LogBookTemplate.typ": logBook
#show: logBook.with(
  activities: (
    (
      date: datetime(day: 8, month: 9, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "mendapatkan alamat kantor dan melanjutkan analisis migration table"
    ),
    (
      date: datetime(day: 9, month: 9, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "mulai membuat migration table"
    ),
    (
      date: datetime(day: 10, month: 9, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "melanjutkan pembuatan migration table"
    ),
    (
      date: datetime(day: 11, month: 9, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "melanjutkan pembuatan migration table"
    ),
    (
      date: datetime(day: 12, month: 9, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "melanjutkan pembuatan migration table"
    ),
  )
)