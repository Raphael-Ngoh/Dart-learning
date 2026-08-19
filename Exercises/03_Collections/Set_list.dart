/*Exercise 8 — Participant Management System

A conference receives a list of registrations:

`["Paul", "Alice", "Marc", "Paul", "Sarah", "Alice", "David", "Marc", "Kevin"]`

You must develop a program that:

1. Stores the original list of registrations.
2. Determines the total number of registrations.
3. Identifies the unique participants.
4. Determines how many people registered more than once.
5. Displays the participants who appear multiple times.
6. Displays the number of participants actually in the database after removing duplicates.

**Constraint:** Use both a `List` and a `Set`. */
void main(List<String> args) {
  const registrationsList = [
    "Paul",
    "Alice",
    "Marc",
    "Paul",
    "Sarah",
    "Alice",
    "David",
    "Marc",
    "Kevin",
  ];

  //Total registrations
  var totalRegistration = registrationsList.length;

  //Identifying unique participants
  Set<String> uniqueParticipants = registrationsList.toSet();

  //How many people are registred more than once ?
  Set<String> setOfmultipleRegistration = {};

  for (var participants in registrationsList) {
    if (registrationsList.indexOf(participants) !=
        registrationsList.lastIndexOf(participants)) {
      setOfmultipleRegistration.add(participants);
    }
  }

  final totalMultiRegistration = setOfmultipleRegistration.length;

  //Displaying results
  print("""
----- Total of registrations : $totalRegistration
----- Total of people registred many time : $totalMultiRegistration
""");
  print("----- Participants who are registred more than once -----");
  setOfmultipleRegistration.forEach(print);

  print("----- Participants actually present without duplicates ----- ");
  uniqueParticipants.forEach(print);
}
