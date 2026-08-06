/* Mini Test corrector */
void main(){
 var phrase = "   bonjour   tout LE monde bienvenue CHEZ dart   ";
 var phrase_trimed = phrase.trim();
 var phrase_splited = (phrase_trimed[0].toUpperCase()+phrase_trimed.substring(1, phrase_trimed.length).toLowerCase().replaceAll("dart", "Flutter")).split(" ");
 var finalized = "";
 for(var i in phrase_splited){
  if(i.length > 0) finalized = finalized + " " +i;
 }
 print(finalized.trim());

}