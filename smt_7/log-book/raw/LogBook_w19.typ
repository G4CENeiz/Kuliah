#import "../LogBookTemplate.typ": logBook
#show: logBook.with(
  activities: (
    (
      date: datetime(day: 22, month: 12, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "Izin"
    ),
    (
      date: datetime(day: 23, month: 12, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "Izin"
    ),
    (
      date: datetime(day: 24, month: 12, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "Libur"
    ),
    (
      date: datetime(day: 25, month: 12, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "Libur"
    ),
    (
      date: datetime(day: 26, month: 12, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "Libur"
    ),
  )
)