// Q4. Multiple Objects - Create a class Book with attributes title and author. - Create two objects from
// the Book class and print a message for each one.
class Book {
  String title;
  String author;

  Book(this.title, this.author);
}

void main() {
  Book arbicBook = Book('Arbic Book', 'Ahmed Ali');
  print(
      'Book title is ${arbicBook.title} and writer name is ${arbicBook.author}');
  Book englishBook = Book('English Book', 'John Lee');
  print(
      'Book title is ${englishBook.title} and writer name is ${englishBook.author}');
}
