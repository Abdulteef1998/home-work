// Q5 Create a class Course with attributes title and duration (default = 3 months). Create two
// courses: one with custom duration and one with the default. Print both.
class Course {
  String title;
  int duration;

  Course(this.title, [this.duration = 3]);
  void printDetails() {
    print('Course :$title , Month: $duration ');
  }
}

void main() {
  Course flutter = Course('Flutter  ');
  flutter.printDetails();
  Course cpp = Course('C++', 6);
  cpp.printDetails();
}
