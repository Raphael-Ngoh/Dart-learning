/*## Exercise 6 — Library Management

Create an application to manage a library.

### `Book` Class

A book has:

- ISBN;
- title;
- author;
- publication year;
- availability status.

### `Library` Class

The library must be able to:

- add a book;
- remove a book;
- search for a book by title;
- search for a book by ISBN;
- display all books;
- borrow a book;
- return a book.

### Scenario

Create a library containing at least **8 books**.

Then perform the following actions:

1. search for a book;
2. borrow an available book;
3. attempt to borrow the same book again;
4. return the book;
5. remove a book;
6. display the final state of the library.

### Objective

Learn how to make **multiple objects work together**. */

class Book {
  //Attributes
  String isbn;
  String title;
  String author;
  int publicationYear;
  String availabilityStatus;

  //constructor
  Book({
    required this.isbn,
    required this.title,
    required this.author,
    required this.publicationYear,
    required this.availabilityStatus,
  });

  //Methods
  void displayBookInformation() {
    print("""====================================
ISBN : $isbn
Title : $title
Author : $author
Published : $publicationYear
availability status : $availabilityStatus
====================================
""");
  }
}

class Library {
  //Attributes
  List<Book> _listOfBooks;

  //Constructor
  Library(List<Book> books) : _listOfBooks = books;

  //Methods
  void addBook(Book book) {
    _listOfBooks.add(book);
  }

  void removeBook(Book bookToRemove) {
    _listOfBooks.removeWhere((book) => bookToRemove.isbn == book.isbn);
    var isRemoved = false;
    for (var book in _listOfBooks) {
      if (book.isbn != bookToRemove.isbn) {
        isRemoved = true;
        break;
      }
    }
    if (isRemoved) {
      print("====> Book [${bookToRemove.title}] removed form library");
    } else {
      print(
        "====> Book [${bookToRemove.title}] hasn't been removed from library",
      );
    }
  }

  void findByBookName(String bookName) {
    bool isFound = false;
    for (var book in _listOfBooks) {
      if (book.title.toLowerCase() == bookName.toLowerCase()) {
        print("Book '${book.title}' found : ");
        book.displayBookInformation();
        isFound = true;
      }
    }
    if (!isFound) {
      print("Book $bookName not found");
    }
  }

  void findByBookIsbn(String bookIsbn) {
    bool isFound = false;
    for (var book in _listOfBooks) {
      if (book.isbn == bookIsbn) {
        book.displayBookInformation();
        isFound = true;
      }
    }
    if (!isFound) {
      print("Book's ISBN = '$bookIsbn' not found !");
    }
  }

  void displayAllBooks() {
    if (_listOfBooks.isNotEmpty) {
      print("\nLIBRARY : ");
      for (var book in _listOfBooks) {
        book.displayBookInformation();
      }
    } else {
      print("The library is Empty !");
    }
  }

  void borrowBook(String isbn) {
    for (var book in _listOfBooks) {
      if (isbn == book.isbn) {
        if (book.availabilityStatus == "Available") {
          book.availabilityStatus = "Borrowed";
          print("=====> Successfully borrowed [${book.title}] from Library !");
        } else {
          print("=====> Book [${book.title}] is not available ! Check below :");
          book.displayBookInformation();
        }
        break;
      }
    }
  }

  void returnBook(String isbn) {
    for (var book in _listOfBooks) {
      if (isbn == book.isbn && book.availabilityStatus == "Borrowed") {
        book.availabilityStatus = "Available";
        print("====> Successfully returned [${book.title}] !");
        break;
      }
    }
  }

  //End class
}

void main(List<String> args) {
  // 1. The Great Gatsby

  Library library = Library([
    Book(
      isbn: '9780743273565',
      title: 'The Great Gatsby',
      author: 'F. Scott Fitzgerald',
      publicationYear: 1925,
      availabilityStatus: 'Available',
    ),
    // 2. To Kill a Mockingbird
    Book(
      isbn: '9780060935467',
      title: 'To Kill a Mockingbird',
      author: 'Harper Lee',
      publicationYear: 1960,
      availabilityStatus: 'Borrowed',
    ),

    // 3. 1984
    Book(
      isbn: '9780451524935',
      title: '1984',
      author: 'George Orwell',
      publicationYear: 1949,
      availabilityStatus: 'Available',
    ),

    // 4. Moby-Dick
    Book(
      isbn: '9781503280786',
      title: 'Moby-Dick',
      author: 'Herman Melville',
      publicationYear: 1851,
      availabilityStatus: 'Borrowed',
    ),

    // 5. Pride and Prejudice
    Book(
      isbn: '9780141439518',
      title: 'Pride and Prejudice',
      author: 'Jane Austen',
      publicationYear: 1813,
      availabilityStatus: 'Available',
    ),

    // 6. The Catcher in the Rye
    Book(
      isbn: '9780316769174',
      title: 'The Catcher in the Rye',
      author: 'J.D. Salinger',
      publicationYear: 1951,
      availabilityStatus: 'Borrowed',
    ),
    // 7. The Hobbit
    Book(
      isbn: '9780547928227',
      title: 'The Hobbit',
      author: 'J.R.R. Tolkien',
      publicationYear: 1937,
      availabilityStatus: 'Available',
    ),

    // 8. Brave New World
    Book(
      isbn: '9780060850524',
      title: 'Brave New World',
      author: 'Aldous Huxley',
      publicationYear: 1932,
      availabilityStatus: 'Available',
    ),
  ]);

  library.findByBookName('The Catcher in the Rye');

  library.borrowBook('9780060850524');

  library.borrowBook('9780060850524');

  library.returnBook('9780060850524');

  library.removeBook(
    Book(
      isbn: '9780743273565',
      title: 'The Great Gatsby',
      author: 'F. Scott Fitzgerald',
      publicationYear: 1925,
      availabilityStatus: 'Available',
    ),
  );

  library.displayAllBooks();
}
