import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        children: [
          CustomTextField(hint: 'Title'),
          const SizedBox(height: 20),
          CustomTextField(hint: 'Content', maxLines: 5),          
          const Spacer(),
          CustomButton(),
        ],
      ),
    );
  }
}
