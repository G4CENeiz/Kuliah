#import "../LogBookTemplate.typ": logBook
#show: logBook.with(
  activities: (
    (
      date: datetime(day: 24, month: 11, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "menggunakan http client laravel untuk melakukan api call"
    ),
    (
      date: datetime(day: 25, month: 11, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "menghapus helper function untuk melakukan api call (digantikan http client laravel)"
    ),
    (
      date: datetime(day: 26, month: 11, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "membuat dan menggunakan http client macro untuk mempermudah melakukan api call ke traccar"
    ),
    (
      date: datetime(day: 27, month: 11, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "refaktor vehicle service dan lokasi minat"
    ),
    (
      date: datetime(day: 28, month: 11, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "refaktor report service"
    ),
  )
)