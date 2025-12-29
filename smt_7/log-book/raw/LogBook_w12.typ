#import "../LogBookTemplate.typ": logBook
#show: logBook.with(
  activities: (
    (
      date: datetime(day: 3, month: 11, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "menghapus salah satu service yang tidak digunakan"
    ),
    (
      date: datetime(day: 4, month: 11, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "menambahkan database client di server agar lebih mudah untuk melihat data yang ada di database"
    ),
    (
      date: datetime(day: 5, month: 11, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "mengahpus repository pattern pada vehicle service"
    ),
    (
      date: datetime(day: 6, month: 11, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "menggunakan helper yang disediakan untuk melakukan api call ke traccar"
    ),
    (
      date: datetime(day: 7, month: 11, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "menambahkan input validation pada fitur vehicle"
    ),
  )
)