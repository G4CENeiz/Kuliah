#import "../LogBookTemplate.typ": logBook
#show: logBook.with(
  activities: (
    (
      date: datetime(day: 6, month: 10, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "refaktor fitur fuel type"
    ),
    (
      date: datetime(day: 7, month: 10, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "refaktor fitur master"
    ),
    (
      date: datetime(day: 8, month: 10, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "menggunankan time zone pada timestamp database"
    ),
    (
      date: datetime(day: 9, month: 10, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "refaktor controller dan service pada beberapa fitur dan manghapus repository pattern pada beberapa fitur"
    ),
    (
      date: datetime(day: 10, month: 10, year: 2025),
      clockIn: datetime(hour: 9, minute: 0, second: 0),
      clockOut: datetime(hour: 17, minute: 0, second: 0),
      activity: "menambahkan error handling dan exception pada beberapa fitur"
    ),
  )
)