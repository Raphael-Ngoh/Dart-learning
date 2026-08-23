/*Exercise 6 — The List Detective
Analyze the following list:
[15, 8, 23, 4, 15, 9, 42, 8, 17, 4, 30]
Create functions to:
• find the maximum;
• find the minimum;
• calculate the sum;
• calculate the average;
• count the even numbers;
• count the odd numbers;
• search for a number;
• count how many times a number appears;
• return the numbers greater than a given value.
None of these operations should be performed directly within main(). */

int findMax(List<int> list) {
  var maxList = list[0];
  for (var i = 1; i < list.length; i++) {
    if (maxList < list[i]) {
      maxList = list[i];
    }
  }
  return maxList;
}

int findMin(List<int> list) {
  var minList = list[0];
  for (var i = 1; i < list.length; i++) {
    if (minList > list[i]) {
      minList = list[i];
    }
  }
  return minList;
}

int calculateSum(List<int> list) {
  var total = 0;
  for (var i in list) {
    total += i;
  }
  return total;
}

double calculateAverage(List<int> list) => calculateSum(list) / list.length;

int countEvenNumber(List<int> list) {
  var even = 0;
  for (var i in list) {
    if (i % 2 == 0) {
      even += 1;
    }
  }
  return even;
}

int countOddNumber(List<int> list) => list.length - countEvenNumber(list);

int searchNumber(List<int> list, int number) => list.indexOf(number);

int countOcurrences(List<int> list, int number) {
  var occurence = 0;
    for (var i in list) {
      if (i == number) {
        occurence += 1;
      }
    } 
  
  return occurence;
}

List<int> findGreaterThan(List<int> list, number) {
  List<int> greater = [];
  for (var i in list) {
    if (i > number) {
      greater.add(i);
    }
  }
  return greater;
}

void main(List<String> args) {
  var list = [15, 8, 23, 4, 15, 9, 42, 8, 17, 4, 30];
  var number = 4;
  print("""- Maximum : ${findMax(list)}
- Minimum : ${findMin(list)}
- Sum : ${calculateSum(list)}
- Average : ${calculateAverage(list)}
- Total even numbers : ${countEvenNumber(list)}
- Total odd numbers :${countOddNumber(list)} 
- Searching $number : ${searchNumber(list, number)}
- Total occurences : ${countOcurrences(list, number)}
- Greater number than $number : ${findGreaterThan(list, number)}
""");
}
