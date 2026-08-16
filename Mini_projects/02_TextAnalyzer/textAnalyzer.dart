void main(List<String> args) {
  var text = "Writing a text. My own text 2026.";
  var listOfchars = text.split("");
  var listOfwords = text.split(" ");

  // 1. Displaying informations about the text
  var numberOfchars = listOfchars.length;
  var numberOfwords = 0;
  var numberOfspaces = 0;

  // Checking the real word of the list without including numbers, punctuations or special caracters
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

  //2. Analyzing chars
  var numberOfupper = 0;
  var numberOflower = 0;
  var numberOfdigit = 0;
  var numberOfspecial = 0;
  var numberOfvowels = 0;
  var numberOfconsons = 0;

  // This loop check each chars of the text and add +1 to corresponding varaibles
  //if the conditions are respected :
  // Character is upper case, Lower case, a digit, a special character, a vowel or a consonnant
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
  
""");

  //3. Searching a word and displaying it
  /* var wordtosearch = "Writing";
  var wordAppearence = 0;
  var listofword_modified = listOfwords;
  for (var i = 0; i < listofword_modified.length; i++) {
    if (listofword_modified[i].contains(".")) {
      listofword_modified[i] = listofword_modified[i].substring(
        0,
        listofword_modified[i].indexOf("."),
      );
    }
  }
  // Checking if the word exists
  bool wordExist = text.contains(wordtosearch) ? true : false;

  if (wordExist) {
    // Number of appearences
    for (var word in listofword_modified) {
      if (word.toLowerCase() == wordtosearch.toLowerCase()) {
        wordAppearence += 1;
      }
    }
  }
  print("Number of appearance of $wordtosearch : $wordAppearence");

  //Position of his first occurence
  print(
    "First occurence position : $wordExist ${listOfwords.indexOf(wordtosearch.toLowerCase())}",
  );*/

  //4. Transformations :
  var textReversed = listOfchars.reversed.join("");
  var listofcapital = listOfwords;
  for (var i = 0; i < listofcapital.length; i++) {
    listofcapital[i] =
        listofcapital[i][0].toUpperCase() + listofcapital[i].substring(1);
  }

  print("""
*****************************************************************************
*                                                                           *
*                           FINAL REPORT ABOUT TEXT ANALYZER                *
*                                                                           *
*****************************************************************************
""");
  print("""
----------------------------- About Text -----------------------------------
  Original text : $text
  Number of characters : $numberOfchars
  Number of words : $numberOfwords
  Number of spaces : $numberOfspaces

---------------------------- Characters Analysis ---------------------------
  Number of uppercase letter : $numberOfupper
  Number of lowercase letter : $numberOflower
  Number of digit : $numberOfdigit
  Number of special char : $numberOfspecial
  Number of vowela : $numberOfvowels
  Number of consonants : $numberOfconsons

----------------------------- Transformations ------------------------------
  Text in uppercase : ${text.toUpperCase()}
  Text in lowercase : ${text.toLowerCase()}
  Text Reversed : $textReversed
  Text with words with uppercase letters : ${listofcapital.join(" ")}
""");
}
