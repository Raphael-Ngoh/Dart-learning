/*Exercise 9 — Student Analysis
Each student has a name and a list of grades.
Example:
Alice: [14, 16, 12, 15]
Marc: [9, 11, 8, 10]
Paul: [17, 18, 16, 19]
The program must be able to:
• calculate a student's average;
• determine their status;
• find the top student;
• find the lowest-performing student;
• calculate the overall average;
• count the students who passed;
• generate a ranking.
Constraint: the function that finds the top student must reuse the function that calculates the average. */

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
String findBestOf(Map<String, List<int>> students) {
  var bestStudent = students.keys.toList()[0];
  for (var student in students.keys) {
    if (calculateAverage(students, studentName: bestStudent) <
        calculateAverage(students, studentName: student)) {
      bestStudent = student;
    }
  }

  return bestStudent;
}

//Find the worst student
String findWorstOf(Map<String, List<int>> students) {
  var worstStudent = students.keys.toList()[0];
  for (var student in students.keys) {
    if (calculateAverage(students, studentName: worstStudent) >
        calculateAverage(students, studentName: student)) {
      worstStudent = student;
    }
  }

  return worstStudent;
}

//Calculate class average
double calculateClassAverage(Map<String, List<int>> students) {
  num sum = 0;
  for (var student in students.keys) {
    sum += calculateAverage(students, studentName: student);
  }
  return sum * (1 / students.length);
}

//Count passed students
int countPassedStudents(Map<String, List<int>> students) {
  int counter = 0;
  for (var student in students.keys) {
    if (determineStatut(students, studentName: student) == "Passed") {
      counter++;
    }
  }

  return counter;
}

//Ranking
void rankStudents(Map<String, List<int>> students) {
  Map<String, List<int>> copyOfStudents = {...students};

  var rank = 1;
  String bestOf;
  for (var i = 0; i < students.length; i++) {
    bestOf = findBestOf(copyOfStudents);
    print(
      "$rank - $bestOf : ${calculateAverage(students, studentName: bestOf)}",
    );
    copyOfStudents.remove(bestOf);
    rank++;
  }
}

void main(List<String> args) {
  Map<String, List<int>> students = {
    "Alice": [14, 16, 12, 15],
    "Marc": [9, 11, 8, 10],
    "Paul": [17, 18, 16, 19],
  };

  print("======== Class Ranking =======");
  rankStudents(students);
  print("""========= Informations =========
Class average : ${calculateClassAverage(students)} / 20
Number of passed students : ${countPassedStudents(students)}
""");
}
