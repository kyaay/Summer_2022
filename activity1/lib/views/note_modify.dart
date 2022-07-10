// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class NoteModify extends StatelessWidget {
  final String noteID;
  // ignore: unnecessary_null_comparison
  bool get isEditing => noteID != null;

  // ignore: prefer_const_constructors_in_immutables
  NoteModify({Key? key, required this.noteID}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(isEditing ? 'Edit note' : 'Create note')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(hintText: 'Note title'),
            ),
            Container(height: 8),
            const TextField(
              decoration: InputDecoration(hintText: 'Note content'),
            ),
            Container(height: 16),
            SizedBox(
              width: double.infinity,
              height: 35,
              child: RaisedButton(
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child:
                    const Text('Submit', style: TextStyle(color: Colors.white)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
