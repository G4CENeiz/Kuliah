#import "../LogBookTemplate.typ": logBook
#show: logBook.with(
  activities: (
    (
      date: datetime(day: 17, month: 11, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "menambahkan audit table pada sistem"
    ),
    (
      date: datetime(day: 18, month: 11, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "mengimplementasikan audit table pada saat login"
    ),
    (
      date: datetime(day: 19, month: 11, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "memulai pembuatan fitur lokasi minat"
    ),
    (
      date: datetime(day: 20, month: 11, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "menyelesaikan fitur lokasi minat"
    ),
    (
      date: datetime(day: 21, month: 11, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "deploy fitur baru"
    ),
  )
)