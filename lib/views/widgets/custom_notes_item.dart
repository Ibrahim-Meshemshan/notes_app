import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/edit_notes_view.dart';

import '../../cubit/notes/notes_cubit.dart';
import '../../models/notes_models.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note, });

  final NotesModels note;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return  EditNotesView(
                    notes: note,
                  );
                },
              ),
            );
          },
          child: Container(
            padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
            decoration: BoxDecoration(
              color:  Color(note.color),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  title: Text(
                    note.title,
                  style: TextStyle(color: Colors.black),
                  ),

                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Text(
                      note.subTitle,
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.4), fontSize: 18),
                    ),
                  ),
                  trailing: InkWell(
                    onTap: () {
                      note.delete();
                      BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                    },
                    child: const Icon(
                      FontAwesomeIcons.trash,
                      size: 24,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 26.0),
                  child: Text(
                    note.date,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}
