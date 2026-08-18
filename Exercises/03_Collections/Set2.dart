/*Exercise 7 — Comparing two groups
Two groups of students are represented by two `Set<String>` objects.
**Group A:**
* Alice
* Paul
* Marc
* Sarah
* David
**Group B:**
* Sarah
* David
* Kevin
* Paul
* Julie

Determine:
1. The students present in both groups.
2. The students present only in Group A.
3. The students present only in Group B.
4. All students from both groups, without duplicates.
5. The total number of unique students.

**Objective:** to practice union, intersection, and difference operations.
 */
void main(List<String> args) {
  Set<String> A = const {"Alice", "Paul", "Marc", "Sarah", "David"};
  Set<String> B = const {"Sarah", "David", "Kevin", "Paul", "Julie"};
  // Using methods of Set
  final Set<String> bothgroups = A.intersection(B);
  final Set<String> onlyGroupA = A.difference(B);
  final Set<String> onlyGroupB = B.difference(A);
  final Set<String> allStudents = A.union(B);

  print("""
--- Present in both groups : $bothgroups
--- Only Group A : $onlyGroupA
--- Only Group B : $onlyGroupB
--- All students without duplicates : $allStudents 
--- Total students : ${allStudents.length} 
    """);
}
