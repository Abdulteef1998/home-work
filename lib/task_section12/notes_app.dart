// ignore_for_file: public_member_api_docs, sort_constructors_first
// 1. Notes App – Organize Your Notes
// You are building a simple notes app where users can write and manage their notes.
// - Each note should have a title, some content, and the date it was created.
// - The app should allow creating new notes.
// - The app should allow listing all notes.
// - The app should allow searching for a note by its title.

class Note {
  String title;
  String content;
  DateTime dateTime;
  Note({
    required this.title,
    required this.content,
  }) : dateTime = DateTime.now();
  @override
  String toString() {
    return 'Title:$title\nContent:$content\nCreated: $dateTime\n';
  }
}

class NotesApp {
  List<Note> notes = [];
  void addNote(String title, String content) {
    notes.add(Note(title: title, content: content));
    print('Note Added successfully');
  }

  void listNotes() {
    if (notes.isEmpty) {
      print('No notes Availabele');
    } else {
      for (var note in notes) {
        print(note);
      }
    }
  }

  void searchNoteByTitle(String searchTitle) {
    var foundNotes = notes.where(
        (note) => note.title.toLowerCase().contains(searchTitle.toLowerCase()));

    if (foundNotes.isEmpty) {
      print("  No note found with title: $searchTitle");
    } else {
      for (var note in foundNotes) {
        print(note);
      }
    }
  }
}

void main() {
  NotesApp app = NotesApp();
  app.addNote('Playing Football', 'Play with my friends in morning');
  app.addNote('Studying Flutter progrimming ',
      'in botcamp with Instructor Thrwat Samy from Egypt');

  print("\n All Notes:");
  app.listNotes();

  print("\n Search Result:");
  app.searchNoteByTitle("Flutter");
}
