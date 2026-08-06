/*VOWELS COMPTOR */
void main (){
  var phrase = "Bonjour 2026 !@#%";
  var splited = phrase.split('');
  var vowels = 0;
  var space = 0;
  var cons = 0;
  var num = 0;
  var special_char = 0;
  var reg = RegExp(r'[!@#\$%^&*(),.?":{}|<>]');
  for (var i in splited ){
    if(i == 'a' || i == 'e' || i == 'i' || i == 'o' || i == 'u' || i == 'y'  ){
      vowels +=1;
    } else if (i == ' '){
      space +=1;
    } else if (int.tryParse(i) is int){
      num += 1;
    } else if ( reg.hasMatch(i)== true){
      special_char += 1;
    } else {
      cons += 1;
    }
  }

print(" vowels $vowels spaces  $space special chars $special_char numbers $num cons $cons");

}