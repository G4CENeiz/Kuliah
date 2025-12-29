#import "../LogBookTemplate.typ": logBook
#show: logBook.with(
  activities: (
    (
      date: datetime(day: 15, month: 12, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "memperbaiki validasi input riwayat laporan"
    ),
    (
      date: datetime(day: 16, month: 12, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "memperbaiki error pada pemilihan tipe laporan"
    ),
    (
      date: datetime(day: 17, month: 12, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "memperbaiki error ketika laporan bernilai null (tidak ada laporan di hari itu)"
    ),
    (
      date: datetime(day: 18, month: 12, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "refaktor besar pada fitur vehicle"
    ),
    (
      date: datetime(day: 19, month: 12, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "memperbaiki error pada proses create dan update vehicle"
    ),
  )
)