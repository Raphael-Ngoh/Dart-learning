import 'dart:io';
/* 
A university wishes to automate the publication of a student's results.
The program must determine the distinction obtained.
*/ 


void main(){

print("Give the student's name");
var nameStudent = stdin.readLineSync()??"Bob";
print("Give the student's note");
var note = double.parse(stdin.readLineSync()??"10.0");

if(note < 10){
  print("$nameStudent Failed !");
}else if (note >=10 && note <=11.99 ){
  print(" $nameStudent is Average");
}else if (note >=12 && note <=13.99 ){
  print("$nameStudent pretty good");
}else if (note >=14 && note <=15.99 ){
  print("$nameStudent is good");
}else if (note >=16){
  print("$nameStudent is very good");
  if (note >=18){
    print("Congratulation !");
  }
}

}