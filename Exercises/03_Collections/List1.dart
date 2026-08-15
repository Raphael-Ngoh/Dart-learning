/*Exercise 1 — Managing a list of grades
Declare a list containing the following grades:
`12.5, 15.0, 8.5, 17.0, 14.5, 10.0`

Your program must:
1. Display all the grades.
2. Display the number of grades.
3. Display the first and last grades.
4. Add a new grade: `16.5`.
5. Change the grade `8.5` to `11.5`.
6. Remove the grade `10.0`.
7. Display the final list.
*/
void main(List<String> args) {
  var notes = [12.5, 15.0, 8.5, 17.0, 14.5, 10.0];
  var index = notes.indexOf(8.5);
  print("""
  Notes : $notes
  length : ${notes.length}
  First note : ${notes.first}
  Last note : ${notes.last}
  """);
  notes.add(16.5);
  notes[index] = 11.5;
  notes.remove(10.0);
  print("Final list : $notes");

}