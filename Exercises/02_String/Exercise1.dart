/* 
Declare a variable containing the following text: 
"Dart est un langage moderne."

Display: 
1. The length of the string. 
2. The first character. 
3. The last character. 
4. The string entirely in uppercase.
5. The string entirely in lowercase. 
6. Check if it contains the word "langage". 
7. Check if it starts with "Dart". 
8. Check if it ends with "moderne".
*/

void main(){

  var myString = "Dart est un langage moderne.";
  print("1.Length : ${myString.length}");
  print("2.First character : ${myString[0]}");
  print("3.Last character : ${myString[myString.length - 1]}");
  print("4.UpperCase : ${myString.toUpperCase()}");
  print("5.LowerCase : ${myString.toLowerCase()}");
  print("6.Contains 'langage' ? ${myString.contains("langage")}");
  print("7.Start with 'Dart' : ${myString.startsWith("Dart")}");
  print("8.End with 'moderne' ${myString.endsWith("moderne")}");
}