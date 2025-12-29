#import "../LogBookTemplate.typ": logBook
#show: logBook.with(
  activities: (
    (
      date: datetime(day: 10, month: 11, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "mencoba fitur tracking dengan alat gps tracker"
    ),
    (
      date: datetime(day: 11, month: 11, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "menelrusuri data hillang di database traccar"
    ),
    (
      date: datetime(day: 12, month: 11, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "memindahkan 9 device dari traccar lama ke traccar baru dan menyesuaikan dev API untuk tampilan dev frontend"
    ),
    (
      date: datetime(day: 13, month: 11, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "mendapat kabar proyek di-cancel. pemindahan ke proyek baru"
    ),
    (
      date: datetime(day: 14, month: 11, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "proyek tidak jadi dicancel. menunggu kabar baru tentang proyek"
    ),
  )
)