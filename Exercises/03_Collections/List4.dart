/*Exercise 4 — Separating numbers

Starting with a list of **15 integers**, create two new lists:

* a list containing the even numbers;
* a list containing the odd numbers.

Then display:

* the original list;
* the list of even numbers;
* the list of odd numbers;
* the number of elements in each list.

**Bonus:** separately calculate the sum of the even numbers and the sum of the odd numbers. */

void main(List<String> args) {
  const orginalList = [2, 12, 8, 37, 5, 3, 20, 21, 0, 4, 6,7, 11,101,22];
  var oddList = [];
  var evenList = [];
  var oddTotal = 0;
  var evenTotal = 0;

  for(var i in orginalList){
    if(i % 2 == 0){
      evenList.add(i);
      evenTotal += i;
    } else {
      oddList.add(i);
      oddTotal += i;
    }
  }
  


  print("""
  Original list : $orginalList
  List of even numbers : $evenList
  Length of even : ${evenList.length} 
  Total of even : $evenTotal
  _________________________________

  List of odd numbers : $oddList
  Length og odd : ${oddList.length}
  Total of odd : $oddTotal
""");
}