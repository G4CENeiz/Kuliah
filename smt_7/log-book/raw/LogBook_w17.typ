#import "../LogBookTemplate.typ": logBook
#show: logBook.with(
  activities: (
    (
      date: datetime(day: 8, month: 12, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "memperbaiki format tanggal report"
    ),
    (
      date: datetime(day: 9, month: 12, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "menghapus beberapa metode lama untuk error checking yang sudah tidak digunakan"
    ),
    (
      date: datetime(day: 10, month: 12, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "melakukan deployment untuk fitur fitur baru (lokasi minat & geofence)"
    ),
    (
      date: datetime(day: 11, month: 12, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "mengajukan subdomain kepada atasan untuk proyek"
    ),
    (
      date: datetime(day: 12, month: 12, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "memulai pembuatan fitur riwayat laporan"
    ),
  )
)