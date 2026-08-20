/*Exercise 2 — One number, multiple functions

Create a program to analyze an integer.
You must create a function for each of the following operations:
determine if the number is even;
determine if it is positive;
calculate its square;
calculate its cube;
determine if it is prime.

Then, `main()` must use these functions to construct a complete analysis of the number.*/


bool isEven(int number) => number % 2 == 0 ;

bool isPositive(int number) => number > 0 ;

int square(int number) => number * number;

int cube(int number) => number * number * number;

bool isPrime(int number) {
  var counter = 0;
  for (var i = 1; i <= number; i++) {
    if (number % i == 0) {
      counter += 1;
    }
  }

  return isPositive(number) && counter == 2;
}
 
void main(List<String> args) {
  int value = 13;
  print("""========== Number analysis ===========
- Number : $value  
- Is even : ${isEven(value)}
- Is positive : ${isPositive(value)}
- Is a prime number : ${isPrime(value)}
- Square of $value : ${square(value)}
- Cube of $value : ${cube(value)}
""");
}
