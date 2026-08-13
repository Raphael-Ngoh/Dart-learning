/* Mini Test corrector */
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
