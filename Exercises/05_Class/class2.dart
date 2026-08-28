/*## Exercise 2 — Bank Account
Create a class representing a bank account.
### Account Data

An account has:

- an account number;
- the account holder's name;
- a balance.

### Operations

The account must be able to:

- make a deposit;
- make a withdrawal;
- display its balance;
- display the account holder's information.

A withdrawal should only be accepted if the balance is sufficient.

### Test Scenario

Create an account with **100,000 FCFA**, then:

1. deposit 50,000 FCFA;
2. withdraw 30,000 FCFA;
3. attempt to withdraw 200,000 FCFA;
4. display the final balance. */

bool isPositive(double value) => value > 0;
bool isNotNull(value) => value != null;

class BankAccount {
  //Datas
  int accountNumber;
  String holderName;
  double balance;

  //Constructor
  BankAccount({
    required this.accountNumber,
    required this.holderName,
    required this.balance,
  });

  //Methods
  //deposit an amount
  void deposit(double amount) {
    if (isPositive(amount) && isNotNull(amount)) {
      balance += amount;
    } else {
      print("Please ! Give a valid value");
    }
  }

  //Remove an amount
  void withdraw(double amount) {
    if (isPositive(amount) && isNotNull(amount)) {
      if (balance >= amount) {
        balance -= amount;
      } else {
        print("Balance is not suffisant for this withdrawal ($amount)!");
      }
    } else {
      print("Please ! Give a valid value");
    }
  }

  //Displaying a balance
  void displayBalance() {
    print("Balance : $balance FCFA");
  }

  //Displaying holder's information
  void displayInformation() {
    print("============= Bank account Informations =============");
    print(
      "Account Number : $accountNumber \nAccount holder : $holderName\nBalance : $balance Fcfa",
    );
    print("====================================================");
  }
}

void main(List<String> args) {
  BankAccount client = BankAccount(
    accountNumber: 123456,
    holderName: "Paul Raphael",
    balance: 100000,
  );
  client.deposit(50000);
  client.displayInformation();
  client.withdraw(30000);
  client.withdraw(200000);
  client.displayBalance();
}
