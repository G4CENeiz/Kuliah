#import "@preview/i-figured:0.2.4"
#import "data.typ": *
#import "activity.typ": *
#set page(
  paper: "a4",
  margin: (
    top: 4cm,
    bottom: 3cm,
    left: 4cm,
    right: 3cm,
  ),
)
#set text(
  hyphenate: false,
  size: 12pt,
  font: "Times New Roman",
  kerning: true,
)

#set page(numbering: "i")

#include "cover.typ"

#set par(
  spacing: 1em,
  leading: 1em,
  first-line-indent: (
    amount: insetSize,
    all: true,
  ),
  linebreaks: "optimized",
  justify: true,
)

#show figure: i-figured.show-figure
#show figure.where(
  kind: table,
): set figure.caption(position: top)
#show heading: i-figured.reset-counters
#show heading.where(level: 1): set align(center)
#show heading: it => {
  if it.numbering != none {
    let num = counter(heading).display()
    stack(
      dir: ltr,
      spacing: 0pt,
      box(width: insetSize)[#num],
      text(size: 16pt)[#it.body],
    )
  } else {
    text(size: 16pt)[#it]
  }
}

#pagebreak()

#set page(
  paper: "a4",
  margin: (
    top: 0cm,
    bottom: 0cm,
    left: 0cm,
    right: 0cm,
  ),
)

#image("approval-company_Scanned.pdf")

#pagebreak()

#image("approval-campus_Scanned_Partial_1.pdf")

#set page(
  paper: "a4",
  margin: (
    top: 4cm,
    bottom: 3cm,
    left: 4cm,
    right: 3cm,
  ),
)

#pagebreak()

#heading(upper("abstract"))

The rapid development of logistics and transportation sectors requires efficient fleet management systems to ensure operational effectiveness. This internship report details the development and maintenance of the backend system for "NusantaraGPS", a fleet management platform developed at the Social Economy Accelerator Lab (SEAL). The primary objective was to orchestrate data between GPS tracking devices and user interfaces (Mobile and Web) using a REST API architecture. The system integrates with the open-source Traccar platform to handle real-time geolocation data.

The project utilized the Laravel framework with a MySQL database. Key activities included refactoring a legacy codebase to adhere to modern software engineering standards, developing new features such as Geofencing and Points of Interest, and stabilizing the deployment pipeline. A significant portion of the work involved addressing technical debt, specifically regarding the misuse of the Repository Pattern and standardizing API responses. The result is a more robust, albeit still evolving, REST API that successfully facilitates real-time vehicle tracking, reporting, and user management. This report outlines the technical implementation, the architectural challenges encountered, and recommendations for future system stability, highlighting the importance of clean code practices and proper infrastructure in scalable web development.

#pagebreak()

#heading(upper("preface"))

All praise and gratitude are due to Almighty Allah, whose blessings and mercy have enabled me to successfully complete this report. This report is based on my internship activities from #internshipPeriod.start.display("[day] [month repr:long] [year]") - #internshipPeriod.end.display("[day] [month repr:long] [year]"), as part of the requirements for the internship program evaluation.

Throughout my internship journey and the process of writing this report, I received invaluable support and assistance from various parties. On this occasion, I would like to express my deepest gratitude to:

+ My parents, family, and my beloved one, who provided unwavering support, prayers, and encouragement, both materially and spiritually.

+ Politeknik Negeri Malang, especially the leadership and faculty, for facilitating and encouraging students development through this program.

+ #company.name, where I completed my internship program, for the valuable experience I gained during the period of #internshipPeriod.start.display("[day] [month repr:long] [year]") - #internshipPeriod.end.display("[day] [month repr:long] [year]").

+ #headOfDepartment.name as the Head of the Information Technology Department at Politeknik Negeri Malang.

+ #headOfProgram.name as the Head of the D4 Informatics Engineering Study Program.

+ #supervisingLecturer.name who provided technical advice and direction during the internship.

+ Mr. #fieldSupervisor.name, as my internship field supervisor.

+ All other parties who supported and assisted me during the internship program, whose names I cannot mention one by one.

#align(
  right,
  table(
    align: left,
    columns: auto,
    stroke: none,
    [Malang, #prefaceDate.display("[day] [month repr:long] [year]")],
    image("../../smt_5/Internship Preparation/ttd.png", height: 5em),
    [#student.name],
  ),
)

#pagebreak()

#[
  #show outline.entry: it => {
    text(12pt)[#it]
  }
  #show outline.entry: set block(above: 1em, below: 1em)

  #let romanPrefixes = ("I", "II", "III", "IV", "V", "VI")
  #show outline.entry.where(level: 1): it => {
    if it.element.numbering != none {
      link(
        it.element.location(),
        it.indented([CHAPTER #it.prefix(): ], it.inner(), gap: 0em),
      )
    } else {
      link(
        it.element.location(),
        it.indented(it.prefix(), it.inner()),
      )
    }
  }

  #heading(upper("table of content"))
  #outline(title: none, indent: 2em)
]
#pagebreak()

#heading(upper("list of table"))
#i-figured.outline(title: none, target-kind: table)

// #pagebreak()

// #heading(upper("list of figures"))
// #i-figured.outline(title: none, target-kind: image)

// #pagebreak()

// #heading(upper("list of appendicies"))
// #outline(title: none, target: label("appendix"))

#pagebreak()

#set heading(numbering: "1.1.")
#show heading.where(level: 1): set heading(numbering: "I.I")
#show heading.where(level: 1): it => {
  if it.numbering != none {
    align(center)[
      #text(size: 16pt)[
        CHAPTER #counter(heading).display() \ #it.body \
        #v(1em)
      ]
    ]
  } else {
    align(center)[
      #text(size: 16pt)[
        #it.body
        #v(1em)
      ]
    ]
  }
}

#set page(numbering: "1")

#counter(page).update(1)

= INTRODUCTION
== Company Profile
#company.name is a non-profit organization incorporated as an association, a strategic business development partnership between the Singhasari Special Economic Zone (SEZ) and Amazon Web Services (AWS). SEAL's mission is to accelerate digital transformation, particularly in cloud computing, in government and educational institutions. SEAL also collaborates with penta-helix stakeholders and leading industries in Indonesia.
== Work Unit Scope
=== Location
The internship was conducted with hybrid working pattern. The office is located at Singhasari Special Economic Zone (SEZ), specifically at Coding Factory Cluster. Beside the on-site location, the company has given me the liberty to work where ever i want during off-site schedule.
=== Assignment Scope
I was assigned on a specific project named NusantaraGPS. After onboarding, i was granted access to several repositories for the NusantaraGPS Development Team. As the backend developer, i was tasked with "running" the "API" repository. During my entire internship, i was only assigned to this project. There was a brief moment where my project was presummed cancelled by the management team, in which i was immediately reassigned to another project. But the next day the client clarify that he didn't want the project to be cancelled, and thus i was immediately reassigned again to my original project.
=== Work Plan Schedule
#figure(
  table(
    align: center,
    columns: (3fr, 4fr, 4fr),
    [Day], [Monday, Tuesday, Friday], [Wednesday, Thursday],
    [Work Hours], [09.00 - 17.00], [09.00 - 17.00],
    [Activity], [Working Off-site], [Working On-site],
  ),
  caption: "Work Schedule",
)

#pagebreak()

= THEORETICAL STUDY
== REST API
Representational State Transfer (REST) is a software architectural style that defines a set of constraints to be used for creating Web services. First defined by #cite(<fielding2000architectural>, form: "prose") in his doctoral dissertation, REST emphasizes the scalability of component interactions, the generality of interfaces, and the independent deployment of components. A REST API (Application Programming Interface) allows different software systems to communicate over HTTP using standard operations. The architecture is characterized by its stateless nature, meaning that each request from a client to a server must contain all the information necessary to understand and process the request, and cannot take advantage of any stored context on the server @fielding2000architectural.
== Model-View-Controller (MVC)
The Model-View-Controller (MVC) is a fundamental design pattern in software engineering used to decouple the user interface (view) from the data (model) and the application logic (controller). This separation of concerns allows for more efficient code maintenance and enables parallel development. According to #cite(<hunt1997mvc>, form: "prose"), the Model represents the internal data and business rules; the View handles the presentation and display of data to the user; and the Controller accepts user input and converts it into commands for the model or view. This architecture is central to many modern web frameworks, as it promotes organized and testable code structures.
== Laravel
Laravel is an open-source PHP web framework intended for the development of web applications following the MVC architectural pattern. Created by Taylor Otwell, it is designed to make the development process easier for developers by simplifying common tasks used in the majority of web projects, such as authentication, routing, sessions, and caching. Recent academic studies highlight Laravel's efficiency in building RESTful APIs compared to native PHP, noting its robust toolset and elegant syntax which significantly reduce development time and improve code maintainability @ariyanti2024laravel. The framework's ecosystem includes features like the Eloquent ORM (Object-Relational Mapper), which provides an active record implementation for working with databases.
== Traccar
Traccar is a modern, open-source GPS tracking system that supports a wide variety of GPS protocols and devices. It serves as a backend platform capable of receiving data from GPS tracking devices, storing it in a database, and visualizing the data on a map interface. The system is designed to be platform-agnostic, capable of running on Windows, Linux, or any standard server environment with Java support. Traccar provides a comprehensive API that allows developers to integrate tracking capabilities into custom applications, offering features such as real-time tracking, geofencing, and detailed reporting @traccar2025documentation. Its architecture allows it to handle high volumes of device connections simultaneously, making it a standard solution for fleet management and asset tracking implementations.

#pagebreak()

= INTERNSHIP ACTIVITIES
== Activity Realization
#figure(
  caption: "Internship Activities Realization",
  table()
)
#table(
  align: left,
  columns: (auto, auto, 1fr, 1fr),
  table.header(
    repeat: false,
    table.cell(align: center)[Day],
    table.cell(align: center)[Date],
    table.cell(align: center)[Activities],
    table.cell(align: center)[Task],
    // table.cell(align: center)[Achievement],
  ),
  ..(
    for (index, data) in activities.enumerate() {
      (
        [#(index + 1)],
        [#data.at("date", default: "-").display("[day] [month repr:long] [year]")],
        [#data.at("activity", default: "-")],
        [#data.at("task", default: "-")],
        // [#data.at("achievement", default: "-")],
      )
    }
  ),
)

== Relevance of Theory and Practice
During the internship, the implementation of software architecture theories faced significant real-world challenges. While the legacy codebase ostensibly followed the Model-View-Controller (MVC) architectural pattern, the practical application deviated significantly from industry standards and best practices, specifically regarding the "Laravel way" of development.

Theoretically, the Repository Pattern is utilized to decouple business logic from data access logic, allowing for easier testing and maintenance. However, in practice, the existing codebase utilized repositories merely as direct wrappers for Eloquent models without adding necessary abstraction or complex query handling. This redundancy defeated the purpose of the pattern. Furthermore, business logic that theoretically belongs in Service classes was frequently found coupled tightly within Controllers, leading to "bloated controllers"—a common anti-pattern in MVC frameworks.

The internship provided an opportunity to refactor these inconsistencies. I applied theoretical knowledge of Clean Code and SOLID principles to decouple these dependencies. Additionally, the integration with Traccar required extensive use of HTTP Clients and API consumption. This bridged the gap between the theoretical understanding of RESTful constraints and the practical necessity of handling third-party API tokens, managing asynchronous requests, and standardizing JSON responses for the frontend.
== Issues
Several technical and managerial issues were encountered during the development process which impacted the project timeline and stability:

+ Legacy Code Quality and Technical Debt: The pre-existing project contained substantial technical debt. The codebase lacked consistency, with manual pagination implementation instead of leveraging Laravel’s built-in features, and an incoherent folder structure. This required significant time to be allocated to refactoring rather than feature development.

+ Lack of Documentation: There was a complete absence of technical documentation or handover files from the previous vendor. This "black box" environment made it difficult to understand the data flow, particularly concerning the "Accumulator" service and the specific configurations required for the Traccar server integration.

+ Infrastructure and Deployment Constraints:

  - No Staging Environment: The development team was forced to deploy directly to production or test on local environments without a proper staging server. Testing was conducted on a live, heavily monitored vehicle, posing high risks to data integrity.

  - Stateless Architecture Violation: The application relied on local server storage for file uploads rather than an object storage service (like AWS S3). This hindered the ability to scale or load-balance the application, as the API was not truly stateless.

  - Deployment Instability: Initial deployment processes were manual and error-prone, leading to downtime. This was eventually mitigated by stabilizing the VPS environment and properly configuring Docker containers.

#pagebreak()

= RECOMMENDATIONS
Based on the analysis of the "NusantaraGPS" system and the activities conducted during the internship, the following technical and architectural recommendations are proposed to ensure the long-term viability of the project:

== Codebase Refactoring and Standardization

- Re-evaluate Repository Pattern Usage: The current implementation of the repository pattern adds unnecessary complexity. It is recommended to either implement the pattern correctly (abstracting complex queries) or revert to using Laravel's Eloquent ORM directly in Service classes to reduce boilerplate code.

- Adherence to Framework Standards: Future development should strictly follow Laravel conventions. This includes using built-in pagination, Resource classes for API responses, and Service Providers for dependency injection, ensuring the code remains maintainable and readable for future developers.

== Architecture and Infrastructure

- Implementation of Object Storage: To ensure the REST API is truly stateless and scalable, file storage (such as photos or reports) must be migrated from local server storage to a cloud-based Object Storage service (e.g., S3 or MinIO). This is a prerequisite for implementing load balancing.

- Establishment of a Staging Environment: It is critical to provision a dedicated staging server with dummy devices. Testing on live vehicles in a production environment is highly risky and violates standard DevOps practices.

== Feature-Specific Improvements

- Audit Trail Implementation: The current "history of action" requirement is implemented crudely. It should be refactored to utilize Laravel’s Polymorphic relationships to create a scalable and query-efficient Audit Log system.

- Authentication Overhaul: User management and authentication require immediate refactoring. Currently, session management is restrictive (allowing only one active session). A implementation of a robust token-based authentication system (such as Laravel Sanctum or Passport) is recommended to handle multiple sessions and secure API access.

- Accumulator Service Documentation: The "Accumulator" feature, currently a mysterious background process involving Redis, must be audited. Its purpose, data flow, and dependencies need to be documented or deprecated if found redundant.

#pagebreak()

= CONCLUSION
== Conclusion

The internship at the Social Economy Accelerator Lab (SEAL) provided a comprehensive experience in backend software engineering. The primary goal of developing and orchestrating the REST API for the "NusantaraGPS" fleet management system was achieved. Despite significant challenges posed by legacy code and infrastructure limitations, the system was successfully stabilized, and key features such as Geofencing, Points of Interest, and Traccar integration were implemented.

The project highlighted the critical importance of software architecture. While the system functioned, the presence of technical debt—specifically the misuse of design patterns and lack of documentation—severely hampered development speed. The experience demonstrated that writing code that "works" is insufficient; code must be maintainable, scalable, and standardized. The internship also bridged the gap between academic theory and practice, particularly in the areas of API consumption, CI/CD pipelines, and the complexities of real-world fleet tracking data.

== Suggestions

For the SEAL: It is strongly suggested to enforce strict documentation standards for all vendors and internal developers. A "Documentation First" approach will prevent future "black box" scenarios. Additionally, investing in a proper DevOps infrastructure (Staging Server and Object Storage) for this specific project knowing how every other project has better DevOps infrastructure than this and how it feels like this project is neglected to be worked by interns.

For Future Interns: Master the core principles of the framework (Laravel) before attempting complex design patterns. Prioritize reading the official documentation and understanding the "why" behind an architectural decision before implementation.


#pagebreak()

#align(center)[#heading(
  level: 1,
  numbering: none,
)[BIBLIOGRAPHY]]
#v(1em)

#bibliography(
  "references.bib",
  style: "ieee",
  title: none,
  full: false,
)
