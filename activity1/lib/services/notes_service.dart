import 'package:activity1/models/note_for_listing.dart';

class NotesService {
  List<NoteForListing> getNotesList() {
    return [
      NoteForListing(
        noteID: "1",
        createDateTime: DateTime.now(),
        lastestEditDateTime: DateTime.now(),
        noteTitle: "Note 1",
      ),
      NoteForListing(
          noteID: "2",
          createDateTime: DateTime.now(),
          lastestEditDateTime: DateTime.now(),
          noteTitle: "Note 2"),
      NoteForListing(
          noteID: "3",
          createDateTime: DateTime.now(),
          lastestEditDateTime: DateTime.now(),
          noteTitle: "Note 3"),
    ];
  }
}
