/*## Exercise 5 — Electronic Wallet

Imagine a mobile payment application.

Create a `Wallet` class.

### Data

It has:

- an ID;
- the owner's name;
- a balance.

The balance must **not be modifiable directly from `main()`**.

### Operations

The wallet must provide operations to:

- credit the account;
- debit the account;
- check the balance;
- transfer money to another wallet.

### Scenario

Create two wallets:

- Alice: 100,000 FCFA;
- Bob: 50,000 FCFA.

Then perform the following:

1. Alice credits her wallet with 25,000 FCFA.
2. Bob spends 10,000 FCFA.
3. Alice transfers 30,000 FCFA to Bob.
4. Display the final balances.

### Constraints

Prevent:

- a withdrawal exceeding the balance;
- a negative amount;
- a transfer to the same wallet. */
class Wallet {
  //Attributes
  String idNumber;
  String holderName;
  double _balance;

  //Constructor
  Wallet({required this.idNumber, required this.holderName, double balance = 0})
    : _balance = balance;

  //Methods

  //1. Credit the account
  void creditAccount({required double amount}) {
    if (amount > 0) {
      _balance += amount;
    }
  }

  //2. Debit the account
  void debitAccount({required double amount}) {
    if (amount <= _balance && amount > 0) {
      _balance -= amount;
    }
  }

  //3. Transfer money to another wallet.
  void transferMoney({
    required Wallet beneficiary,
    required double amountToSend,
  }) {
    if (beneficiary.idNumber != idNumber) {
      if (_balance >= amountToSend && amountToSend > 0) {
        debitAccount(amount: amountToSend);
        beneficiary.creditAccount(amount: amountToSend);
        print(
          "Successffuly transferred $amountToSend FCFA to ${beneficiary.holderName} !",
        );
      } else {
        print("Not transferred ! Check your balance or the amount to send !!");
      }
    } else {
      print("Can't transfer to the same account !");
    }
  }

  //Check balance account
  void checkBalance() {
    print("""===================
Name : $holderName
Your balance :$_balance
====================""");
  }
}

void main(List<String> args) {
  Wallet wallet1 = Wallet(
    idNumber: "ALICE-1",
    holderName: "Alice",
    balance: 100000,
  );
  Wallet wallet2 = Wallet(idNumber: "Bob-1", holderName: "Bob", balance: 50000);
  wallet1.checkBalance();
  wallet2.checkBalance();
  wallet1.creditAccount(amount: 25000);
  wallet2.debitAccount(amount: 10000);
  wallet1.transferMoney(beneficiary: wallet2, amountToSend: 30000);
  wallet1.checkBalance();
  wallet2.checkBalance();
}
