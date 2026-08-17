/*Exercise 5 — Removing duplicates using a List

You are given:

`[12, 5, 8, 12, 7, 5, 3, 8, 9, 12, 7]`

Your goal is to produce a new list containing each number **only once**, while preserving the order of first appearance.

Expected result (conceptually):

`[12, 5, 8, 7, 3, 9]`

**Constraint:** for this exercise, perform the operation **without using `Set`** first. */

void main(List<String> args) {
  var originalList = [12, 5, 8, 12, 7, 5, 3, 8, 9, 12, 7];
  var secondList = [];
  for (var i in originalList) {
    if(!secondList.contains(i)) secondList.add(i);
  }
  print(secondList);
  //print(originalList.toSet().toList());
}
