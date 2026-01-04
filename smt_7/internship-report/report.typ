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

#include "approval-company.typ"

#pagebreak()

#include "approval-campus.typ"

#pagebreak()

#heading(upper("abstract"))

#lorem(100)

#lorem(100)

#lorem(100)

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
Explain how i refactored a lot of features because while the code are performing as a REST API supposed to do, and the code is technically following the MVC structure even as far as having service and repository classes for each feature, the code is a jungle of mess that not only has pieces of code that defeat the purpose of having service and repository pattern, but also not doing things the "laravel" way. for example making an endpoint to get a list of data that is paginated manually in the response, using repository pattern as direct wrapper of model without any complex and repeatable usage, having logic in the controller instead of the service class, and a whole lot more problem that would break more things if i try fix it while also not having enough time to fix the problem. while the traccar side made me learn a whole lot about consuming REST API. 
== Issues
Intially the project was not heading anywhere. It was just plainly "continuing" the project from the previous vendor. There was no documentation, no one who really understand the flow of the progam. The project was intially seems abandoned until the PM was eventually not in contact with development team and the project was fully steered by the client. The problem soon was solved by having another intern worked as the PM. Other problem also occurs because nobody in the organization truly understand the codebase. I was given no way to stagged or deploy the project. There was also no database and object storage server for the projcet and was stuck with running the project on Laravel Sail with local server storage. After the client has given the development team a VPS instance that was previously used by the previous vendor, we management to deploy it publicly. Despite that, we still have no staging server since the devices used in the server is technically not for testing and is a real and heavily monitored vehicle. 

#pagebreak()

= RECOMMENDATIONS
In my opinion, this project has a lot of technical debt. Every CRUD features has technical debt in architectural and implementation aspect. The way the code is written is not in the way Laravel intend it to be. There is also an "Accumulator" features, where during the entirity of my internship has remain useless because nobody understand usage. The only thing to know about them is there's a scheduler to get and store data to redis, and there's a worker to proccess the data from redis. The user management endpoint and authentication is also not separated well enough. Authentication need to be refactored heavily. In the current state of the application, only one instance of session can be logged in to the system. Vehicle endpoint doesn't only cover CRUD but also other thing that no one has ever mention before, i assume it needs to be refactored too because how bad the code looks and works. the client once ask for a "history of action" happening in the progam. i have made a crude audit table which need to be rework with laravel polymorphic table ORM thingy. we also need object storage ASAP, someone need to make this REST API stateless by having a dedicated object storage. at the current state of the application, they also need to implement load balancing and to deploy more instance of the api server to handle more request. the project also somehow use repository pattern in the most useless way possible, someone need to stop that. and most important of all, someone need to make this rest api do thing in the most laravel way possible, because laravel is a highly opinionated framework, there's always a way to make things in the most convinient way possible. please dear god

#pagebreak()

= CONCLUSION
== Conclusion

#lorem(60)

#lorem(60)

== Suggestions

#lorem(60)

#lorem(60)


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
