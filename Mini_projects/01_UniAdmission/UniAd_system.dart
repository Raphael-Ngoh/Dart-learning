import 'dart:io';
void main(List<String> args) {
  // Personnal informations
  print("""Please give your personnal informations following the order :
1. Name 2.Surname 3. Age 4.Gender 5.Nationality """);
  var name = stdin.readLineSync() ?? "candidate name" ;
  var surname = stdin.readLineSync()??"candidate surname" ;
  var age = int.tryParse(stdin.readLineSync()??"")??0 ;
  var gender = stdin.readLineSync()??"M";
  var country = stdin.readLineSync()??"Cameroon";
  // Academic informations
  print("""Please give your academic informations following the order :
1.Average examination 2.Mathematics grade  3.French grade 4.High school track/stream """);
  var exam_average =  double.tryParse(stdin.readLineSync()??"")??9.99;
  var mathsgrade = double.tryParse(stdin.readLineSync()??"")??9.99 ;
  var frenchgrade = double.tryParse(stdin.readLineSync()??"")??9.99 ;
  var track = stdin.readLineSync()??"C"  ;
  //Administrative informations
  print("""
Please give your administrative informations following the order :
1.Requested program 2.Valid registration fees 3.Valid identity card"""); 
  var requested_program = stdin.readLineSync()??"Computer Science" ;
  var registration_fees = bool.tryParse(stdin.readLineSync()??"true")??false ;
  var idcard =  bool.tryParse(stdin.readLineSync()??"true")??false ;
  String decision;

//Displaying candiate informations
  print("===================== Personnal Informations of the candidate =====================");
  print("""
- Name : $name
- Surname : $surname
- Age : $age 
- Gender = $gender
- Nationality : $country
- Overall high school examination average : $exam_average / 20
- High school track/stream : $track
- Requested program  : $requested_program
  """);
  print("===================== General criterias for admission =====================");

// Automatically rejected
if(age<17 || exam_average <10 || registration_fees == false || idcard == false){
  decision = "Refused";

  //About criteria age
  if(age < 17 ){
    print("* Age > 17 : Not satisfied ");
  } else {
    print("* Age > 17 : Satisfied ");
  }
  
  //About criteria examination average
  if(exam_average < 10 ){
    print("* Examination average >= 10 : Not satisfied ");
  } else {
    print("* Examination average >= 10 : Satisfied ");
  }

  //About inscription/registration fees
  if( registration_fees == false ){
    print("* Validity of registration fees : Not satisfied ");
  } else {
    print("* Validity of registration fees : Satisfied ");
  }

  //About validity of the identity card
  if(idcard == false ){
    print("* Validity of the identity document (yes/no) : Not satisfied ");
  } else {
    print("* Validity of the identity document (yes/no) : Satisfied ");
  }

} else { //Checking on requested programms
  //Display a message 
  print(
    """
* Required age > 17 : satisfied
* Required examination average > 10 : satisfied
* Validity registration fees : satisfied
* Validity of identity document : satisfied
    """);
  
  //Checking specific conditions for the requested programm
  decision = "Accepted";
  print("===================== Specific criterias for admission in requested programm : $requested_program =====================");
  if (requested_program.toLowerCase() == "informatique"){
    //informatique/computer science programm 
    if (exam_average >= 12 && mathsgrade >= 14 ){
      print("""* Examination average >= 12 : Satisfied
      * Mathematics grade >= 14 : Satisfied""");
      
    } else {
      decision = "Refused";
      if(exam_average < 12){
        print("* Examination average >= 12 : Not satisfied");
      } else {
        print("* Examination average >= 12 : Satisfied");
      }
      if (mathsgrade < 14){
        print("* Mathematics grade >= 14 : Not satisfied");
      } else {
        print("* Mathematics grade >= 14 : Staisfied");
      }
    }
  }

  
  if (requested_program.toLowerCase() == "medecine"){
    //checking grades to join the Medecine programm
    if (exam_average >= 16 && mathsgrade >= 15 && frenchgrade >= 14 ){
      print("""* Required examination average : Satisfied
      * Required mathematics grade : Satisfied
      * Required french grade : Satisfied""");
    } else {
      decision = "Refused";
      if(exam_average < 16){
        print("* Examination average >= 16: Not satisfied");
      } else {
        print("* Examination average >= 16 : Satisfied");
      }
      if (mathsgrade < 15){
        print("* Mathematics grade >= 15 : Not satisfied");
      } else {
        print("* Mathematics grade >= 15 : Satisfied");
      }
      if (frenchgrade < 14){
        print("* Mathematics grade >= 14 : Not satisfied");
      } else {
        print("* Mathematics grade >= 14 : Satisfied");
      }
    }
  }

}
print("===================== Decision =====================");

print("Your admission in our university is $decision !");

}