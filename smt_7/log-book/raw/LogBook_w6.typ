#import "../LogBookTemplate.typ": logBook
#show: logBook.with(
  activities: (
    (
      date: datetime(day: 22, month: 9, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "melakukan test pada endpoin test funsionalitas koneksi antara proyek dengan traccar"
    ),
    (
      date: datetime(day: 23, month: 9, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "merubah bentuk timestamp di database"
    ),
    (
      date: datetime(day: 24, month: 9, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "merekronstruksi api route pada proyek"
    ),
    (
      date: datetime(day: 25, month: 9, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "menambahkan service access token pada traccar"
    ),
    (
      date: datetime(day: 26, month: 9, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "menambahkan seeding untuk development environment"
    ),
  )
)