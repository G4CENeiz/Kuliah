#import "data.typ": *
#heading(upper("approval")) 

The undersign below:
#table(
  columns: (auto, auto),
  stroke: none,
  inset: (x: 0pt),
  [#h(insetSize) Name#h(insetSize)], [: #fieldSupervisor.name],
  [#h(insetSize) Position#h(insetSize)], [: #fieldSupervisor.position],
)
\ \
That the student:

*#h(insetSize) #student.name #h(insetSize) #student.nim*

\ \
Have successfully completed the internship at:
#table(
  columns: (auto, auto, auto),
  stroke: none,
  inset: (x: 0pt),
  [#h(insetSize) Company Name], [#h(insetSize*0.2):#h(insetSize*0.2)], [#company.name],
  [#h(insetSize) Company Address], [#h(insetSize*0.2):#h(insetSize*0.2)], [#company.address],
  [#h(insetSize) Field], [#h(insetSize*0.2):#h(insetSize*0.2)], [#company.field],
  [#h(insetSize) Peroid], [#h(insetSize*0.2):#h(insetSize*0.2)], [#internshipPeriod.start.display("[day] [month repr:long] [year]") - #internshipPeriod.end.display("[day] [month repr:long] [year]")],
)
\ \

#align(
  center,
  table(
    align: center,
    columns: (auto),
    stroke: none,
    [Malang, #approvalSignDate.display("[day] [month repr:long] [year]")],
      if (fieldSupervisor.ttd == none) {
        v(5em)
      } else {
        fieldSupervisor.ttd
      },
    [#fieldSupervisor.name],
  )
) 
