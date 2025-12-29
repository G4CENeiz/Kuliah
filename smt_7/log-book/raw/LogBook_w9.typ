#import "../LogBookTemplate.typ": logBook
#show: logBook.with(
  activities: (
    (
      date: datetime(day: 13, month: 10, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "menstandardkan respons api"
    ),
    (
      date: datetime(day: 14, month: 10, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "memperbaiki konfigurasi traccar agar websocket dapat diakses frontend web"
    ),
    (
      date: datetime(day: 15, month: 10, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "menambahkan cloudflare tunnel agar kerja remote lebih mudah"
    ),
    (
      date: datetime(day: 16, month: 10, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "refaktor model dan tabel migrasi pada tabel user"
    ),
    (
      date: datetime(day: 17, month: 10, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "refaktor service akumulator"
    ),
  )
)