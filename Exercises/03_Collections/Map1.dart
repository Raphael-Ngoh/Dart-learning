/*Exercise 1 — User Profile

• Create a Map representing a user profile.
• It must contain at least: last name, first name, age, city, email, and status (active or inactive).
• The program must display the profile information in a structured format.
• Constraints: then add a new piece of information to the profile; modify the age; remove a piece of information;
display the final profile.
 */
void main(List<String> args) {
  var userProfile = {
    "Name": "FRITZ",
    "Surname": "William",
    "Age": 22,
    "City": "London",
    "email": "fritzWill@gmail.com",
    "Status": "active",
  };

  print("============ User profile ===========");
  userProfile.forEach(((key, value) => print("$key : $value")));
  userProfile["Job"] = "Developper";
  userProfile["Age"] = 26;
  userProfile.remove("City");

  print("============ User profile modified ===========");  
  userProfile.forEach(((key, value) => print("$key : $value")));
}
