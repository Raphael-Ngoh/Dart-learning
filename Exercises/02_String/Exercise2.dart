/*
Spliting and Rebuilding
 */

void  main(){
  var phrase = "Flutter permet de créer des applications mobiles performantes";
  var splited_phrase = phrase.split(' ');
  print("1. Spliting the phrase in words : $splited_phrase");
  print("2. Length : ${splited_phrase.length} words ");
  print("3. Printing words on different lines :") ;
  for (var word in splited_phrase) {
    print("   * $word");
  }

  print ("4. Rebuild : ${splited_phrase.join('-')}");
}