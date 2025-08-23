import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  
  NotesCubit() : super(NotesInitial());
  List<NoteModel> notes = [];
  fetchAllNotes() {
    var box = Hive.box<NoteModel>(kHiveBox);
    notes = box.values.toList();
    emit(NotesSuccess());
  }
}
