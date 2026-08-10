/*
PASSWORD ANALYSZER

Description :
A password is valid if it:
- contains at least 8 characters;
- includes at least one uppercase letter;
- includes at least one lowercase letter;
- includes at least one digit;
- includes at least one special character.

The program must display exactly which rules are met and
which are not.
 */
void main(List<String> args) {
  // Using RegExp
  var pass = "Fiabtec2026*";
  RegExp numchars = RegExp(r'^.{8,}$');
  RegExp oneupper = RegExp(r'[A-Z]{1,}');
  RegExp onelower = RegExp(r'[a-z]{1,}');
  RegExp onedigit = RegExp(r'[0-9]{1,}');
  RegExp specialchar = RegExp(r'\W+');

  print("============== PASSWORD ANALYSER ==============");
  if (numchars.hasMatch(pass) &&
      oneupper.hasMatch(pass) &&
      specialchar.hasMatch(pass) &&
      onelower.hasMatch(pass) &&
      onedigit.hasMatch(pass)) {
    print("""_______________________________________________
- contains at least 8 characters : YES
- includes at least one uppercase letter : YES
- includes at least one lowercase letter : YES
- includes at least one digit : YES
- includes at least one special character : YES
_______________________________________________
- The password '$pass' is VALID """);
  } else {
    // Checking the length of the password
    if (numchars.hasMatch(pass) == false) {
      print("Contains at least 8 characters : NO");
    } else {
      print("Contains at least 8 characters : YES");
    }

    // Checking if te password contains an Uppercase letter
    if (oneupper.hasMatch(pass) == false) {
      print("Includes at least one uppercase letter  : NO");
    } else {
      print("Includes at least one uppercase letter : YES");
    }

    // Checking if the password contains a lowercase letter
    if (onelower.hasMatch(pass) == false) {
      print("Includes at least one lowercase letter  : NO");
    } else {
      print("Includes at least one lowercase letter : YES");
    }

    // Checking if password contains a digit
    if (onedigit.hasMatch(pass) == false) {
      print("Includes at least one digit  : NO");
    } else {
      print("Includes at least one digit : YES");
    }

    // Checking if password contains a special char
    if (specialchar.hasMatch(pass) == false) {
      print("Includes at least one special character  : NO");
    } else {
      print("Includes at least one special character : YES");
    }

    print(
      "_______________________________________________ \n- The password '$pass' is INVALID",
    );
  }

  /* 
var isUpper = false;
var isLower = false;
var digit = false;
 
 if(pass.length >= 8){
    print("Contains at least 8 characters : YES");
  } else{
    print("Contains at least 8 characters : NO");
  }

  for (int i =0;i<pass.length;i++){
    if (int.tryParse(pass[i]) is! int ){ // Checking if the character is not a digit
      if(pass[i] == pass[i].toUpperCase()){ // Comparing if the choosen character is uppercase
        isUpper = true;
      }
      if (pass[i] == pass[i].toLowerCase()){
        isLower = true;
      }
      if (pass[i] == "!" || pass[i] == "@" || pass[i] == "#" ){
        isLower = true;
      }
      
    } else {
      digit = true;
    }
    
    if(isUpper == true && isLower == true && digit == true) break;
  }
*/
}
