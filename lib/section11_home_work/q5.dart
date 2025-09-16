// Q5
// Create a class Book with private fields _title and _pages.
// - Add setters: reject empty titles and pages ≤ 0.
// - Add a getter title and a computed getter readingTime that assumes 2 minutes per page.
// - In main(), create a book, print its title and estimated reading time.

class Book {
  String _title;
  int _pages;
  Book(this._title, this._pages);
  set title(String name) {
    if (name.isEmpty) {
      print("Invalid title");
    } else {
      _title = name;
    }
  }

  set pages(int value) {
    if (value <= 0) {
      print("Invalid pages");
    } else {
      _pages = value;
    }
  }

  String get title => _title;
  int get readingTime => _pages * 2;
}

void main() {
  Book book1 = Book('Flutter', 150);
  print('Title: ${book1.title}');
  print("Estimated reading time: ${book1.readingTime} minutes");

  // تحديث القيم باستخدام setters
  book1.pages = 300;
  print('Updated Reading Time: ${book1.readingTime} minutes');

  book1.title = ""; // Invalid title
  book1.pages = -10; // Invalid pages
  print(book1.title);
  print("Estimated reading time: ${book1.readingTime} minutes");
}
