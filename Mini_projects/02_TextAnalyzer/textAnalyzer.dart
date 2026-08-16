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

  
  //3. Transformations :
  var textReversed = listOfchars.reversed.join("");
  var listofcapital = listOfwords;
  for (var i = 0; i < listofcapital.length; i++) {
    listofcapital[i] =
        listofcapital[i][0].toUpperCase() + listofcapital[i].substring(1);
  }

  //4. Searching a word and displaying it
  bool wordExist;
  var wordTosearch = "text".toLowerCase();
  var numberOfoccurence = 0;
  var textTolower = text.toLowerCase();

  //Checking word existence
  wordExist = textTolower.contains(wordTosearch) ? true : false;
  
  //Checking the number of occurences
  if(wordExist){
    for(var w in textTolower.split(" ")){
      if (w == wordTosearch ) {
        numberOfoccurence += 1;
      } else if (w[w.length - 1] == ".") {
        if (w.substring(0, w.length - 1) == wordTosearch){
          numberOfoccurence += 1;
        }
      }
    }
  }

  print("""
*****************************************************************************
*                                                                           *
*                         FINAL REPORT ABOUT TEXT ANALYZER                  *
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

--------------------------------- Search ----------------------------------
  Existence of [$wordTosearch] : $wordExist
  Number of occurrence : $numberOfoccurence

----------------------------- Transformations ------------------------------
  Text in uppercase : ${text.toUpperCase()}
  Text in lowercase : $textTolower
  Text Reversed : $textReversed
  Text with words with uppercase letters : ${listofcapital.join(" ")}
""");
}
