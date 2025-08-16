import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

// ignore: must_be_immutable
class NoteItem extends StatelessWidget {
  NoteItem({super.key, required this.note});

  NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EditNoteView()),
        );
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.only(bottom: 24, top: 24, left: 24, right: 8),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              title: Text(
                note.title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontFamily: 'Poppins',
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  note.subTitle,
                  style: TextStyle(
                    color: Colors.black.withValues(alpha: 0.5),
                    fontSize: 20,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.delete, color: Colors.black, size: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Text(
                note.date,
                style: const TextStyle(color: Colors.black45, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
