#import "../LogBookTemplate.typ": logBook
#show: logBook.with(
  activities: (
    (
      date: datetime(day: 15, month: 9, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "melanjutkan pembuatan migration table"
    ),
    (
      date: datetime(day: 16, month: 9, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "menganalisis meengapa wujud migration table dan model dibentuk demikian"
    ),
    (
      date: datetime(day: 17, month: 9, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "menambahkan service tambahan yang dibutuhkan proyek (traccar)"
    ),
    (
      date: datetime(day: 18, month: 9, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "memahami dan menyesuaikan kebutuhan dan konfigurasi traccar"
    ),
    (
      date: datetime(day: 19, month: 9, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "menyelesaikan pembuatan migration table dan konfigurasi traccar"
    ),
  )
)