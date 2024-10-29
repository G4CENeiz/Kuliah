#set page(
  paper: "a4",
  margin: 1.25in
)
#set text(size: 12pt)
#set align(center)

#let subject = "Mobile Programming"
#let chapter = "Intro to Dart - Part 3"
#let name = "Muhammad Baihaqi Aulia Asy’ari"
#let NIM = 2241720145
#let className = "2I"
#let department = "Information Technology"
#let studyProgram = "D4 Informatics Engineering"

#text(
  size: 20pt, 
  strong[
    #subject \
    #v(.25cm)
    #chapter
  ]
) \

#v(1fr)
#box(width: 6cm, image("images/polinema-logo.png")) \
#v(1fr)

*Name* \
#name \

#v(.5cm)
*NIM* \
#NIM \

#v(.5cm)
*Class* \
#className \

#v(.5cm)
*Department* \
#department \

#v(.5cm)
*Study Program* \
#studyProgram

#pagebreak()

#set align(left)

#outline()

#pagebreak()

= Practicum 1
== Step 1
```dart
void main() {
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);
  print(list.length);
  print(list[1]);
  
  list[1] = 1;
  assert(list[1] == 1);
  print(list[1]);
}
```

== Step 2
#image("images\figures\Screenshot 2024-09-29 144805.png")
The print command all run because every assert condition is true

== Step 3
```dart
void main() {
  final list = [null, "Muhammad Baihaqi Aulia Asy'ari", 2241720145, null, null, null];
  assert(list[5] == null);
  print(list.length);
  print(list[0]);
  print(list[1]);
  print(list[2]);
}
```
#image("images/figures/Screenshot 2024-09-29 155138.png")
assert used to check if the index 5 exist with the value null and then print the first 3 index to show that the index 1 and 2 are filled with my name and NIM

#pagebreak()

= Practicum 2
== Step 1
```dart
void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);
}
```

== Step 2
```
PS D:\Github\Kuliah> dart '.\Smt 5\Mobile Programming\Week 4\Dart\Practicum2.dart'    
{fluorine, chlorine, bromine, iodine, astatine}
PS D:\Github\Kuliah> 
```
the code example print the entirity of the map

== Step 3

```dart
void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  var names3 = {}; // Creates a map, not a set.

  print(names1);
  print(names2);
  print(names3);
}
```


#pagebreak()

= Practicum 3
== Step 1
== Step 2
== Step 3

#pagebreak()

= Practicum 4
== Step 1
== Step 2
== Step 3
== Step 4
== Step 5
== Step 6

#pagebreak()

= Practicum 5
== Step 1
== Step 2
== Step 3
== Step 4
== Step 5