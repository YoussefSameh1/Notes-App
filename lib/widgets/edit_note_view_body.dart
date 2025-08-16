import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppBar(title: 'Edit Note', icon: Icons.check),
          const SizedBox(height: 30),
          CustomTextField(hint: 'Title'),
          const SizedBox(height: 20),
          CustomTextField(hint: 'Content', maxLines: 5),
        ],
      ),
    );
  }
}
