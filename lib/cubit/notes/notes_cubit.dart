import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';

import '../../models/notes_models.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() async{
    try{
      var notesBox =  Hive.box<NotesModels>(kNotesBox);
      List<NotesModels> notes = notesBox.values.toList();
      emit(NotesSuccess(notes: notes));
    }catch(e){
      emit(NotesFail(errorMessage: e.toString()));
    }
}
}
