class NoteForListing {
  String noteID;
  String noteTitle;
  DateTime createDateTime;
  DateTime lastestEditDateTime;

  NoteForListing(
      {required this.noteID,
      required this.noteTitle,
      required this.createDateTime,
      required this.lastestEditDateTime});
}
