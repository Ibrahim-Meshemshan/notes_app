import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/add_note/add_note_cubit.dart';
import 'add_note_form.dart';

class AddNotesBottomSheet extends StatelessWidget {
  const AddNotesBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: EdgeInsets.only(
            bottom: MediaQuery
                .of(context)
                .viewInsets
                .bottom,
            right: 18,
            left: 18),
        child: BlocListener<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailure) {
              print("******************************* ${state.errorMessage}");
            } else if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }
          },
          child: SingleChildScrollView(child: AddNoteForm()),
          ),
        ),
     );
  }
}
