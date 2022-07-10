import 'dart:convert';

import 'package:activity1/models/note.dart';
import 'package:activity1/models/note_for_listing.dart';
import 'package:http/http.dart' as http;

import '../models/api_response.dart';

class NotesService {
  static const API = 'http://api.notes.programmingaddict.com';
  static const headers = {'apiKey': '08d771e2-7c49-1789-0eaa-32aff09f1471'};

  get notes => null;

  Map<String, dynamic>? get jsonData => null;

  Future<APIResponse<List<NoteForListing>>> getNotesList() {
    return http.get(API + '/notes', headers: headers).then((data) {
      if (data.statusCode == 200) {
        final jsonData = json.decode(data.body);
        final notes = <NoteForListing>[];
        for (var item in jsonData) {
          notes.add(NoteForListing.fromJson(item));
        }
        return APIResponse<List<NoteForListing>>(
            data: notes, errorMessage: " ");
      }
      return APIResponse<List<NoteForListing>>(
          data: notes, error: true, errorMessage: 'An error occured');
    }).catchError((_) => APIResponse<List<NoteForListing>>(
        data: notes, error: true, errorMessage: 'An error occured'));
  }

  Future<APIResponse<Note>> getNote(String noteID) {
    return http.get(API + '/notes/' + noteID, headers: headers).then((data) {
      if (data.statusCode == 200) {
        final jsonData = json.decode(data.body);
        return APIResponse<Note>(
            data: Note.fromJson(jsonData), errorMessage: " ");
      }
      return APIResponse<Note>(
          error: true,
          errorMessage: 'An error occured',
          data: Note.fromJson(jsonData!));
    }).catchError((_) => APIResponse<Note>(
        error: true,
        errorMessage: 'An error occured',
        data: Note.fromJson(jsonData!)));
  }
}
