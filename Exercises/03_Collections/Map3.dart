/*
Exercise 3 — Grade Management
• A class has the following results: Alice 15; Bernard 9; Charles 13; Diane 17; Emmanuel 7; Franck 12.
• Represent this data using a Map.
• The program must produce a report containing: 
the class average; 
the highest grade; 
the lowest grade; 
the name of the student who achieved the highest grade; 
the number of students with a score of at least 10; 
the number of students with a score below 10; 
the list of students who passed; 
the list of students who did not pass. */
void main(List<String> args) {
  Map<String, int> grades = {
    "Alice": 15,
    "Bernard": 9,
    "Charles": 13,
    "Diane": 17,
    "Emmanuel": 7,
    "Franck": 12,
  };

  //Mean of grades, Best Grade and Worst grade
  var totalGrades = 0.0;
  var max = grades["Alice"]!;
  var min = grades["Franck"]!;
  double mean;

  for (var note in grades.values) {
    totalGrades += note;
    if (max < note) {
      max = note;
    }
    if (min > note) {
      min = note;
    }
  }
  mean = totalGrades / grades.length;

  //The best student , the worst student
  var bestStudent = "Alice";
  var worstStudent = "Alice";
  var admittedStudents = <String>[];
  var refusedStudents = <String>[];

  for (var student in grades.keys) {
    //Checking student with the best and the worst grade
    if (grades[student]! == max) {
      bestStudent = student;
    }
    if (grades[student]! == min) {
      worstStudent = student;
    }

    //Admissible students and non admissible students
    if (grades[student]! >= 10) {
      admittedStudents.add(student);
    } else {
      refusedStudents.add(student);
    }
  }

  print("================= Notes Management ================");
  print("""
- Mean of the class : $mean / 20
- The Best grade : $max / 20
- The worst grade : $min / 20
- The Best student : $bestStudent
- The worst student : $worstStudent
- Number of admitted students : ${admittedStudents.length}
- Number of failed students : ${refusedStudents.length}
""");
  print("---> List of admitted students :");
  admittedStudents.forEach((value) => print("- $value"));
  print("---> List of failed students :");
  refusedStudents.forEach((value) => print("- $value"));
}
