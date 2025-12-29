#import "../LogBookTemplate.typ": logBook
#show: logBook.with(
  activities: (
    (
      date: datetime(day: 20, month: 10, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "memnyiapkan kebutuhan untuk deployment"
    ),
    (
      date: datetime(day: 21, month: 10, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "mekonfigurasi ulang traccar"
    ),
    (
      date: datetime(day: 22, month: 10, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "menyederhanakan bentuk deployment"
    ),
    (
      date: datetime(day: 23, month: 10, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "mengembalikan deployment ke bentuk semula"
    ),
    (
      date: datetime(day: 24, month: 10, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "memisahkan database server untuk proyek dengan database traccar"
    ),
  )
)