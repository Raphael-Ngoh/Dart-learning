/* Exercise 2 — Number Analysis

Create a list containing 10 integers.

The program must determine:
* the number of elements;
* the sum of all the numbers;
* the average;
* the largest number;
* the smallest number;
* how many numbers are even;
* how many are odd.

Constraints:
* Iterate through the list using a loop.
* Do not create a second list for the even and odd numbers.*/
void main(List<String> args) {
  var numbers = [2, 12, 8, 37, 5, 3, 20, 21, 0, 4];
  var size = numbers.length;
  var sum = 0;
  var max = numbers[0];
  var min = max;
  var numberOfeven = 0;
  var numberOfodd = 0;

  for(var number in numbers){
    sum += number;
    if (max < number ){
      max = number;
    }
    if (min > number){
      min = number;
    }
    if (number % 2 == 0){
      numberOfeven += 1;
    } else {
      numberOfodd += 1;
    }
  }

  print("""
  Size : $size
  Sum : $sum
  Mean : ${sum/size}
  Max : $max
  Min : $min
  Total of even numbers : $numberOfeven
  Total of odd numbers : $numberOfodd
  """);
  
}
