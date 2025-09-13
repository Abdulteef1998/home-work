// ignore_for_file: public_member_api_docs, sort_constructors_first
// Q4. Update Attribute with a Method - Create a class Book with attributes title and pages. - Add a
// method addPages(int extraPages) that increases the pages. - In main(), create a book and use the
// method to update its pages, then print the result.

class Book {
  String title;
  int pages;
  Book(
    this.title,
    this.pages,
  );
  void addPages(int extraPages) {
    pages += extraPages;
  }

  void printBook() {
    print("Title: $title");
    print("Pages: $pages");
  }
}

void main() {
  Book book = Book("Book 1", 100);
  book.addPages(50);
  book.printBook();
}
