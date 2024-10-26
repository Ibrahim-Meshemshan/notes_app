import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import 'package:notes_app/constants.dart';
import 'package:notes_app/models/notes_models.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  Color color = const Color(0xffD81159);
  addNote(NotesModels notes) async {
    notes.color = color.value;
    emit(AddNoteLoading());
    try {
      var noteBox = Hive.box<NotesModels>(kNotesBox);
      await noteBox.add(notes);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(errorMessage: e.toString()));
    }
  }
}
