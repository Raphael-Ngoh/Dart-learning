void main(List<String> args) {
  var text = "Writing a text. My own text. 2025";
  var listOfchars = text.split("");
  var listOfwords = text.split(" ");

  // 1. Displaying informations about the text
  var numberOfchars = listOfchars.length;
  var numberOfwords = 0;
  var numberOfspaces = 0;

  // Checking the real words of the list without including numbers, punctuations or special caracters
  for (var word in listOfwords) {
    if (RegExp(r'[A-Za-z]{1,}').hasMatch(word)) {
      numberOfwords += 1;
    }
  }

  // Number of spaces in the text
  for (var space in listOfchars) {
    if (space == " ") {
      numberOfspaces += 1;
    }
  }

  print("""
  Original text : $text
  Number of characters : $numberOfchars
  Number of words : $numberOfwords
  Number of spaces : $numberOfspaces
  """);

  //2. Analyzing chars
  var numberOfupper = 0;
  var numberOflower = 0;
  var numberOfdigit = 0;
  var numberOfspecial = 0;
  var numberOfvowels = 0;
  var numberOfconsons = 0;

  for (var item in listOfchars) {
    if (RegExp(r'[A-Z]').hasMatch(item)) {
      numberOfupper += 1;
      if (RegExp(r'[AEUOIY]').hasMatch(item)) {
        numberOfvowels += 1;
      } else {
        numberOfconsons += 1;
      }
    } else if (RegExp(r'[a-z]').hasMatch(item)) {
      numberOflower += 1;
      if (RegExp(r'[aeuoiy]').hasMatch(item)) {
        numberOfvowels += 1;
      } else {
        numberOfconsons += 1;
      }
    } else if (RegExp(r'\d').hasMatch(item)) {
      numberOfdigit += 1;
    } else if (RegExp(r'[!@#$%]').hasMatch(item)) {
      numberOfspecial += 1;
    }
  }

  print("""
  Number of uppercase letter : $numberOfupper
  Number of lowercase letter : $numberOflower
  Number of digit : $numberOfdigit
  Number of special char : $numberOfspecial
  Number of vowela : $numberOfvowels
  Number of consons : $numberOfconsons
""");
}
