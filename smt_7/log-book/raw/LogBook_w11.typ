#import "../LogBookTemplate.typ": logBook
#show: logBook.with(
  activities: (
    (
      date: datetime(day: 27, month: 10, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "memperbaiki ke kacauan deployment"
    ),
    (
      date: datetime(day: 28, month: 10, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "mekonfigurasi ulang traccar server"
    ),
    (
      date: datetime(day: 29, month: 10, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "mengembalikan kondisi deployment ke versi yang terakhir berfungsi"
    ),
    (
      date: datetime(day: 30, month: 10, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "memisahkan docker compose file production dengan development"
    ),
    (
      date: datetime(day: 31, month: 10, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "menyesuaikan pengambilan data env dengan ketentuan portainer"
    ),
  )
)