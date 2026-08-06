import 'dart:io';
/* CALCULATOR OF COMMERCIAL BILL
* PURPOSE :
A shop wants to automate the calculation of an invoice.

* AVALABLE DATAS
- customer name;
- purchase amount;
- Loyalty card (yes/no).

* RULES
A discount is granted:
- if the amount exceeds 100,000 FCFA;
- or if the customer has a loyalty card.

The program must then calculate:
- the discount amount;
- the final amount to be paid.

You may choose the discount rate yourself.
 */
void main() {

  print("Client name :");
  var client_name = stdin.readLineSync()??"Bob";

  print("Purchase amount :");
  var amount = double.tryParse(stdin.readLineSync()??"0")??0;

  print("Fidelity card of client :");
  var fidelity_card = bool.tryParse(stdin.readLineSync()??"true")??true;
  
  print("------------------- Bill of $client_name -------------------");
  print("Initial payement : $amount FCFA");
  if(amount > 100000 || fidelity_card == true){
    print("Discount on items : ${amount * 20/100} FCFA");
    print("Total to pay : ${amount - amount * 20/100} FCFA");
  } else {
    print("Discount on items : 0 FCFA");
    print("Total to pay : $amount FCFA");
  }

}