#import "@preview/basic-resume:0.1.0": *

// Put your personal information here, replacing mine
#let name = "Muhammad Baihaqi Aulia Asy'ari"
#let location = "Malang City, East Java"
#let email = "baihaqilearning@gmail.com"
#let github = "github.com/G4CENeiz"
#let linkedin = "linkedin.com/in/baihaqiasyari"
#let phone = "+62 823-3675-0134"
#let personal-site = ""

#show: resume.with(
  author: name,
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  phone: phone,
  personal-site: personal-site,
  // Accent color is optional. Feel free to remove the next line if you want your resume to be in black and white
  // accent-color: "#26428b",
  accent-color: "#000000",
)

== Education

#edu(
  institution: "Politeknik Negeri Malang",
  location: "Malang City, East Java",
  dates: dates-helper(start-date: "Aug 2022", end-date: "2026"),
  degree: "Bachelor's of Applied Science, Informatics Engineering",
)
- Cumulative GPA: 3.5\/4.0
- Member of Workshop Riset Informatika
// - Relevant Coursework: Data Structures, Program Development, Microprocessors, Abstract Algebra I: Groups and Rings, Linear Algebra, Discrete Mathematics, Multivariable & Single Variable Calculus, Principles and Practice of Comp Sci

#edu(
  institution: "SMA Negeri 1 Malang",
  location: "Malang City, East Java",
  dates: dates-helper(start-date: "2019", end-date: "2022"),
  degree: "High School Diploma",
)
- Member of the Ambalan (Scout Organization)

== Projects

#project(
  role: "Team Leads",
  name: "RW 1 Information System",
  dates: dates-helper(start-date: "Aug 2023", end-date: "Nov 2023"),
  url: "undeployed",
)
// - Analyzed the clients need by doing interview and field observation
// - Provided full documentation needed for the application development
// - Helped in conducting progress meeting
// - Developed decision support system for goverment grant
// - Developed website using Laravel
// - Constructed database using relational database management system
- Conducted client interviews and field observations to gather requirements.
- Created comprehensive project documentation for the development lifecycle.
- Coordinated and led progress meetings to ensure project alignment.
- Developed a decision support system for government grant distribution.
- Built a full-featured web application using Laravel framework.
- Designed and implemented a relational database for the system using MySQL.

== Extracurricular Activities

#extracurriculars(
  activity: "Workshop Riset Informatika",
  dates: dates-helper(start-date: "Oct 2022", end-date: "Present"),
)
// - Teach aspiring member in a Beta Testing Program
// - Manage procurement within the community
// - Help in connecting the community with other institution within the campus
//   - Explore business oportunity
//   - Help in collaboration project
- Lead instructional sessions for members in a Beta Testing Program.
- Oversee procurement and resource management for the community.
- Facilitate partnerships with other campus institutions to foster collaboration:
  - Identify potential business opportunities through inter-institutional connections.
  - Coordinate joint projects and initiatives with partnering organizations.

== Skills
- *Programming Languages*: HTML/CSS, JavaScript, TypesScript, PHP, Java, Python, Dart
- *Frameworks*: Laravel, React, Tailwind CSS, Flutter
- *Technologies*: Git, Docker, Typst
- *Interests*: Automotive, Minecraft

== Languages
- *Indonesian* : Native
- *English* : C2