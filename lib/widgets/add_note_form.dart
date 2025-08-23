import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:intl/intl.dart';

class AddNoteForm extends StatelessWidget {
  AddNoteForm({super.key});
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddNoteCubit, AddNoteState>(
      builder: (context, state) {
        return Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              CustomTextField(hint: 'Title', onSaved: (value) => title = value),
              const SizedBox(height: 20),
              CustomTextField(
                hint: 'Content',
                maxLines: 5,
                onSaved: (value) => subTitle = value,
              ),
              const Spacer(),
              CustomButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var note = NoteModel(
                      title: title!,
                      subTitle: subTitle!,
                      date: DateFormat('MMM d, yyyy').format(DateTime.now()),
                      color: 0xff6BE4D4,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(note);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                  }
                },
                isLoading: state is AddNoteLoading ? true : false,
              ),
            ],
          ),
        );
      },
    );
  }
}
