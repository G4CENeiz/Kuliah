#import "../LogBookTemplate.typ": logBook
#show: logBook.with(
  activities: (
    (
      date: datetime(day: 1, month: 9, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "menerima dokumentasi API silacak KLH yang ingin ditambahkan"
    ),
    (
      date: datetime(day: 2, month: 9, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "menganalisis penggunaan API silacak KLH di dalam sistem"
    ),
    (
      date: datetime(day: 3, month: 9, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "konsultasi perihal implementasi API silacak KLH di dalam sistem"
    ),
    (
      date: datetime(day: 4, month: 9, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "melanjutkan analisis untuk menjalakan proyek"
    ),
    (
      date: datetime(day: 5, month: 9, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "menganalisis kebutuhan migration table untuk proyek"
    ),
  )
)