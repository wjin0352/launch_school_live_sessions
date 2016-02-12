write a small archiving program that stores students names along with the grade they are in.

In the end you should be able to:

- add a students name to the roster for a grade
  - "add jim to grade 2"
  - "OK"

grade_sheet.add('mike', 2)

- get a list of all students enrolled in a grade
  - "which students are in grade 2"
  - "we've only got jim just now"
- get a sorted list of all students in all grades.  grades should sort as 1,2,3, etc., and students within a grade should be sorted alphabetically by name.
  - "who all is enrolled in school right now?"
  - "grade 1: anna, barb, and charlie. grade 2: alex, peter, and zoe. grade 3:..."

Note that all our students only have one name. (its a small town, what do you want?)

did you get the tests passing and code clean?
additional things to try.

  - if you're working in a language with mutable data structures and your implementation allows the outside code to mutate the school's internal DB directly, see if you can prevent this. feel free to introduce more tests.


