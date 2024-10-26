import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';

import '../../models/notes_models.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NotesModels>? notes;

  fetchAllNotes() async {
    var noteBox = Hive.box<NotesModels>(kNotesBox);
    List<NotesModels> notes = noteBox.values.toList();
    emit(NotesSuccess());
  }
}
