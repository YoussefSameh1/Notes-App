import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/color_item.dart';

class EditNoteColors extends StatefulWidget {
  const EditNoteColors({super.key, required this.note});

  final NoteModel note;
  @override
  State<EditNoteColors> createState() => _EditNoteColorsState();
}

class _EditNoteColorsState extends State<EditNoteColors> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColors.indexWhere((c) => c.toARGB32() == widget.note.color);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: kColors.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        Color color = kColors[index];
        return GestureDetector(
          onTap: () {
            currentIndex = index;
            widget.note.color = color.toARGB32();
            setState(() {});
          },
          child: ColorItem(isActive: index == currentIndex, color: color),
        );
      },
    );
  }
}
