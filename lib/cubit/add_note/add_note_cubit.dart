import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/notes_models.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NotesModels notes)async{
    emit(AddNoteLoading());
    try{
      var noteBox = Hive.box<NotesModels>(kNotesBox);
     emit(AddNoteSuccess());
      await noteBox.add(notes);
    }catch(e){
      emit(AddNoteFailure(errorMessage: 'error'));
    }

  }

}


