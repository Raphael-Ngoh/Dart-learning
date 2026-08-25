// Calculate the average of class notes
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

// Determine if a student has passed or failed
String determineStatut(
  Map<String, List<int>> students, {
  required String studentName,
  int numberOfNotes = 4,
}) => calculateAverage(students, studentName: studentName) >= 10
    ? "Passed"
    : "Failed";

// Find the best student of the class
String findBestOf(
  Map<String, List<int>> students, {
  required String studentName,
}) {
  var bestStudent = studentName;
  for (var student in students.keys) {
    if (calculateAverage(students, studentName: bestStudent) <
        calculateAverage(students, studentName: student)) {
      bestStudent = student;
    }
  }

  return bestStudent;
}

//Find the worst student
String findWorstOf(
  Map<String, List<int>> students, {
  required String studentName,
}) {
  var worstStudent = studentName;
  for (var student in students.keys) {
    if (calculateAverage(students, studentName: worstStudent) >
        calculateAverage(students, studentName: student)) {
      worstStudent = student;
    }
  }

  return worstStudent;
}

void main(List<String> args) {
  Map<String, List<int>> students = {
    "Alice": [14, 16, 12, 15],
    "Marc": [9, 11, 8, 10],
    "Paul": [17, 18, 16, 19],
  };
  print(findBestOf(students, studentName: "Alice"));
  print(findWorstOf(students, studentName: "Alice"));
  print(determineStatut(students, studentName: "Marc"));
}
