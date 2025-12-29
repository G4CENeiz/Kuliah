#import "../LogBookTemplate.typ": logBook
#show: logBook.with(
  activities: (
    (
      date: datetime(day: 29, month: 9, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "menkonfigurasi ulang model dan koneksi database laravel untuk menyesuaikan dengan proyek lama"
    ),
    (
      date: datetime(day: 30, month: 9, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "menyesuaikan bentuk tabel dengan back up database dari proyek lama"
    ),
    (
      date: datetime(day: 1, month: 10, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "menyesuaikan model dengan tabel yang telah disesuaikan dari back up database lama"
    ),
    (
      date: datetime(day: 2, month: 10, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "standarisasi respons api dan penggunaan dependency injection untuk service di controller"
    ),
    (
      date: datetime(day: 3, month: 10, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "merapihkan service dan menghapus penggunaan repository pattern pada beberapa fitur"
    ),
  )
)