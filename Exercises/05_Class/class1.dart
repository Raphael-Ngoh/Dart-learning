/*Exercise 1 — Managing a user profile

Create a `User` class representing an application user.
### User data
Each user has:
- a last name;
- a first name;
- an age;
- an email address.

### Task

The program must allow you to:
1. create at least **3 users**;
2. display their information;
3. determine whether a user is an adult or a minor;
4. display a message tailored to each user.

### Constraints
- Use a constructor.
- Use at least one instance method.
- Do not put all the logic in `main()`. */

class User {
  // Attributes
  String lastName;
  String firstName;
  String email;
  int age;

  //Constructors
  User(this.lastName, this.firstName, this.email, this.age);

  //Methods
  void displayUserInformation() {
    print(
      "Name : $lastName \nSurname : $firstName \nAge : $age \nE-mail : $email ",
    );
  }

  String isAdult() => age >= 18 ? "adult" : "minor";

  void greet() {
    print(
      "Hello dear $lastName $firstName, you are ${isAdult()}. Please check your email : $email.",
    );
  }
}

void main(List<String> args) {
  User user1 = User("Ngoh", "John", "pr880@gmail.com", 17);
  User user2 = User("Roberts", "Georges", "Roberts@gmail.com", 40);
  User user3 = User("Siliki", "Audrey", "SilikiAud@gmail.com", 18);

  for (var user in [user1, user2, user3]) {
    user.displayUserInformation();
    user.greet();
    print("-------------------------");
  }
}
