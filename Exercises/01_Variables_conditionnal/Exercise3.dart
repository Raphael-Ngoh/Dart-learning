import 'dart:io';
/*An administrative body wishes to automatically verify whether a candidate is authorized to submit an application.*/
void main() {
  var age = int.tryParse(stdin.readLineSync()??'10')??10; // To avoid Formatexception
  var origin = stdin.readLineSync()??"Cameroon";
  var diploma = stdin.readLineSync()??"obtained";
  var id_card = stdin.readLineSync()??"valid";
  
  if(age >=18 && origin =="Cameroon" && diploma == "obtained" && id_card == "valid"){
    print("ACCEPTED");
  } else {
    print("REJECTED");
    if(age <18){
      print("- age < 18");
    }
    if(origin != "Cameroon"){
      print("- Not cameroonian");
    }
    if(diploma != "obtained"){
      print("- No diploma");
    }
    if(id_card != "valid"){
      print("- id card is not valid");
    }
    
  }

}