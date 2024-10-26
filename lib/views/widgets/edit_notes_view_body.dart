import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/notes/notes_cubit.dart';
import 'package:notes_app/models/notes_models.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_form_filed.dart';

class EditNotesViewBody extends StatefulWidget {
   EditNotesViewBody({super.key, this.title, this.subtitle, required this.notes,});

   String? title,subtitle;
   final NotesModels notes;

  @override
  State<EditNotesViewBody> createState() => _EditNotesViewBodyState();
}

class _EditNotesViewBodyState extends State<EditNotesViewBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
             CustomAppBar(
               onTap: () {
                 widget.notes.title = widget.title ?? widget.notes.title;
                 widget.notes.subTitle = widget.subtitle ?? widget.notes.subTitle;
                 widget.notes.save();
                 BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                 Navigator.pop(context);
               },
               title: 'Edit_Notes', iconData: Icons.check,

             ),
            const SizedBox(height: 50),
            CustomFormFiled(
              onChanged: (value) {
                widget.title = value;
              },
              text: widget.notes.title,
            ),
            const SizedBox(height: 16),
            CustomFormFiled(
              onChanged: (value) {
                widget.subtitle = value;
              },
              text: widget.notes.subTitle,
              lines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
