/*Exercise 6 — Cities visited

Create a `Set<String>` containing several cities, intentionally including some duplicates.

Example:

* Douala
* Yaoundé
* Bafoussam
* Douala
* Kribi
* Yaoundé
* Limbe

The program must:

1. Display all the recorded cities.
2. Check if `Douala` exists.
3. Add `Garoua`.
4. Remove `Bafoussam`.
5. Display the number of unique cities.
6. Check if `Bamenda` exists.

Objective: to understand why a `Set` does not store duplicates. */

void main(List<String> args) {
  Set<String> towns = {
    "Douala",
    "Yaoundé",
    "Bafoussam",
    "Douala",
    "Kribi",
    "Yaoundé",
    "Limbé",
  };
  //Display all saved towns
  towns.forEach(print);

  //Checking the existence of ``Douala``
  print("Douala in visited towns :${towns.contains("Douala")}");

  //Adding "Garoua"
  towns.add("Garoua");

  //Removing Bafoussam
  towns.remove("Bafoussam");

  //Display the number of unique town
  print("Number of unique towns : ${towns.length}");

  //Verify the existence of "Bamenda"
  print("Bamenda in visited towns :${towns.contains("Bamenda")}");

}
