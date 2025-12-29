#let title = "Development of REST API to Orchestrate Fleet Management System Data Using Traccar for Mobile and Web Frontend Application"

#let company = (
  name: "Social Economy Accelerator Lab (SEAL)",
  address: "Cluster Coding Factory, Kawasan Ekonomi Khusus Singhasari, Kec Singosari, Kabupaten Malang, Jawa Timur 65153",
  field: "Backend Developer",
)

// date call .display("[day] [month repr:long] [year]")
#let internshipPeriod = (
  start: datetime(day: 22, month: 8, year: 2025),
  end: datetime(day: 31, month: 12, year: 2025),
)

#let student = (
  name: "Muhammad Baihaqi Aulia Asy'ari",
  nim: "2241720145",
  ttd: image("/smt_7/img/ttd.png", height: 5em)
)

#let fieldSupervisor = (
  name: "Robbi Tri Murdani",
  position: "Bussiness Development",
  ttd: image("/smt_7/img/ttd robbi.png", height: 5em)
)

#let supervisingLecturer = (
  name: "Ir. Yan Watequlis Syaifudin, ST., M.MT., Ph.D.",
  nip: "198101052005011005"
)

#let headOfProgram = (
  name: "Dr. Ely Setyo Astuti, S.T., M.T.",
  nip: "197605152009122001"
)

#let headOfDepartment = (
  name: "Mungki Astiningrum, S.T., M.Kom.",
  nip: "197710302005012001"
)

#let approvalSignDate = datetime(day: 22, month: 12, year: 2025)

#let presentationDate = datetime(day: 6, month: 1, year: 2026)

#let prefaceDate = datetime(day: 22, month: 12, year: 2025)


#let insetSize = 1cm
#let tabbed(body) = block(inset: (left: insetSize))[#body]