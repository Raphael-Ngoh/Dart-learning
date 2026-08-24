double calculateAverage(
  Map<String, List<int>> students, {
  required String studentName,
  int numberOfNotes = 4,
}) {
  double average;
  int totalNotes = 0;

  if (students.containsKey(studentName)) {
    for (var note in students[studentName]!) {
      totalNotes += note;
    }
  } else {
    print("$studentName is not a student's name !");
  }
  average = totalNotes * (1 / numberOfNotes);
  return average;
}

String determineStatut(
  Map<String, List<int>> students, {
  required String studentName,
  int numberOfNotes = 4,
}) => calculateAverage(students, studentName: studentName) >= 10
    ? "Passed"
    : "Failed";

void main(List<String> args) {
  Map<String, List<int>> students = {
    "Alice": [14, 16, 12, 15],
    "Marc": [9, 11, 8, 10],
    "Paul": [17, 18, 16, 19],
  };
  //print(calculateAverage(students, studentName: "Alice"));
  //print(calculateAverage(students, studentName: "marc"));
  print(determineStatut(students, studentName: "Marc"));
}
