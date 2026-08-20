/* Exercise 1 — The Temperature Monitor

A program receives a temperature in degrees Celsius.

It must determine whether the temperature falls into one of the following categories:

very cold: < 10
cold: 10–17
normal: 18–25
warm: 26–35
very warm: > 35

Task:
Create a function that takes a temperature as input and returns the corresponding category.

In `main()`, test the function with several temperatures.*/
String temperatureCategory(double celsius) {
  var category = "Very warm";

  if (celsius < 10) {
    category = "Very cold";
  } else if (celsius >= 10 && celsius <= 17) {
    category = "Cold";
  } else if (celsius >= 18 && celsius <= 25) {
    category = "Normal";
  } else if (celsius >= 26 && celsius <= 35) {
    category = "Warm";
  }

  return category;
}

void main(List<String> args) {
  print(temperatureCategory(6));
  print(temperatureCategory(11));
  print(temperatureCategory(22));
  print(temperatureCategory(35));
  print(temperatureCategory(40));
}
