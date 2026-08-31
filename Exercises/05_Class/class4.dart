/*
# Exercise 4 — Student and academic results

Create a `Student` class.

### Student data

A student has:

- an ID number;
- a last name;
- a first name;
- a list of grades.

### Operations

The class must allow you to:

- add a grade;
- calculate the average;
- determine if the student has passed;
- display their grade report;
- identify their highest grade.

### Rule

A student is considered to have passed if their average is greater than or equal to **10/20**.

Test your program with several students who have different results. */

class Student {
  //Attributes
  String _idNumber;
  String _lastName;
  String _firstName;
  List<double> _listOfGrades;

  //Constructor
  Student({
    required this._idNumber,
    required this._lastName,
    required this._firstName,
    required this._listOfGrades,
  });

  //Methods
  void addGrade(double grade) {
    if (grade >= 0) {
      _listOfGrades.add(grade);
    }
  }

  double calculateAverage() {
    double sum = 0;
    double mean = 0;

    if (_listOfGrades.isNotEmpty) {
      for (var grade in _listOfGrades) {
        sum += grade;
      }
      mean = sum / _listOfGrades.length;
    }

    return mean;
  }

  bool hasPassed() => calculateAverage() >= 10;

  double identifyMaximalgrade() {
    double maxGrade = 0;
    if (_listOfGrades.isNotEmpty) {
      maxGrade = _listOfGrades[0];
      for (var grade in _listOfGrades.sublist(1)) {
        if (maxGrade < grade) {
          maxGrade = grade;
        }
      }
    }

    return maxGrade;
  }

  void displayGradeReport() {
    print("""==========================
Student ID : $_idNumber
Last name : $_lastName
First name : $_firstName
Mean : ${calculateAverage()} / 20
Maximal note : ${identifyMaximalgrade()} / 20
Decision : ${hasPassed() ? "Passed" : "Failed"}
""");
  }
}

void main(List<String> args) {
  Student student1 = Student(
    idNumber: "STU1-2026",
    lastName: "NJIKI NGOH",
    firstName: "Paul Rapahel",
    listOfGrades: [14, 16, 18, 15],
  );
  Student student2 = Student(
    idNumber: "STU2-2026",
    lastName: "NGOH DOOH",
    firstName: "Gabriel Pierre",
    listOfGrades: [15, 14, 18, 15],
  );
  Student student3 = Student(
    idNumber: "STU3-2026",
    lastName: "TONFACK",
    firstName: "Brayan",
    listOfGrades: [11, 10, 10, 15],
  );
  Student student4 = Student(
    idNumber: "STU4-2026",
    lastName: "KEGNE",
    firstName: "Boris Jardin",
    listOfGrades: [5, 10, 10, 9],
  );

  Student student5 = Student(
    idNumber: "STU5-2026",
    lastName: "ATONFACK",
    firstName: "Limo",
    listOfGrades: [],
  );

  student1.displayGradeReport();
  student2.displayGradeReport();
  student3.displayGradeReport();
  student4.displayGradeReport();
  student5.displayGradeReport();
}
