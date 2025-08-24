import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  Color color = Colors.red;
  
  void addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var box = Hive.box<NoteModel>(kHiveBox);
      await box.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteError(e.toString()));
    }
  }
}
