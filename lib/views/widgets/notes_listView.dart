import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/cubit/add_note/add_note_cubit.dart';
import 'package:notes_app/cubit/notes/notes_cubit.dart';

import 'package:notes_app/models/notes_models.dart';

import '../../constants.dart';
import 'custom_notes_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        return Expanded(
          child: ListView.builder(
            itemCount: Hive.box<NotesModels>(kNotesBox)
                .length, // Hive.box<NotesModels>(kNotesBox).length,
            itemBuilder: (context, index) {
              return NoteItem(
                note: Hive.box<NotesModels>(kNotesBox).values.toList()[index],
              );
            },
          ),
        );
      },
    );
  }
}
