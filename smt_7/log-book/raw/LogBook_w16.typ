#import "../LogBookTemplate.typ": logBook
#show: logBook.with(
  activities: (
    (
      date: datetime(day: 1, month: 12, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "memperbaiki proses api call pada report service"
    ),
    (
      date: datetime(day: 2, month: 12, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "memperbaiki token traccar yang hilang di data user"
    ),
    (
      date: datetime(day: 3, month: 12, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "memulai pembuatan fitur geofence"
    ),
    (
      date: datetime(day: 4, month: 12, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "menyelesaikan pembuatan fitur geofence"
    ),
    (
      date: datetime(day: 5, month: 12, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "memperbaiki error geofence"
    ),
  )
)