import 'Dart:io';
/*Simple Calculator - Working on variables, operators and conditions
You need to develop a command-line mini-calculator capable of
performing an arithmetic operation selected by the user.
*/

void main(){
  print("Give number 1");
  var number_1 = int.parse(stdin.readLineSync()?? "0");
  print("Give number 2");
  var number_2 = int.parse(stdin.readLineSync()?? "0");
  print("Choose one of the following operators : \n+ :(plus) \n- :(minus)  \n* :(multiply)\n/ :(divide)\n% :(modulo)", );
  var opt = stdin.readLineSync();

  if (opt == "+" || opt == "-" || opt == "*" || opt == "/" || opt == "%") {
    if (opt == "+") {
      print(number_1 + number_2);
    } else if (opt == "-") {
      print(number_1 - number_2);
    } else if (opt == "*") {
      print(number_1 * number_2);
    } else if (opt == "/") {
      if (number_2 == 0) {
        print("Error ! Can't calculate $number_1 divided by 0");
      } else {
        print(number_1 / number_2);
      }
    } else if (opt == "%") {
      print(number_1 % number_2);
    }
  } else {
    print("The choosen operator is unknow. Choose +, -, *, /,or  %");
  }
}