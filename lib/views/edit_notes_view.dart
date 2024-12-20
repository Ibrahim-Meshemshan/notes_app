import 'package:flutter/material.dart';
import 'package:notes_app/models/notes_models.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/edit_notes_view_body.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key, required this.notes});

  final NotesModels notes;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: EditNotesViewBody(
        notes: notes,
      ),
    );
  }
}
