
import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    NoteModel note = NoteModel(
      title: 'Flutter tips',
      subTitle: 'Build your future with tharwat samy',
      date: DateTime.now().toString().substring(0, 10),
      color: 0xff6BE4D4,
    );
    return ListView.builder(
        itemBuilder:
            (context, index) => NoteItem(
              note: note,
            ),
      );
  }
}