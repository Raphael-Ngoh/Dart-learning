/* Mini Test corrector 
You are given a poorly written sentence:
"   bonjour   tout LE monde bienvenue CHEZ dart   "
Your program must:
1. remove unnecessary spaces;
2. capitalize only the first letter of the sentence;
3. convert all other letters to lowercase (unless you implement
word-by-word capitalization);
4. replace the word "dart" with "Flutter";
5. display the final sentence.
*/
void main() {
  var ph = "   bonjour   tout LE monde bienvenue CHEZ dart   ";
  var phconcat = "";
  String phtrimed;
  String phfinal;

  for (var i in ph.split(" ")) {
    if (i.length > 0) {
      phconcat += i + " ";
    }
  }

  phtrimed = phconcat.trim();
  phfinal = phtrimed[0].toUpperCase() + phtrimed.substring(1).toLowerCase();
  print(phfinal.replaceAll("dart", "Flutter"));
  
}
