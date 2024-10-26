import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubit/add_note/add_note_cubit.dart';
import 'package:notes_app/models/notes_models.dart';

import '../../cubit/notes/notes_cubit.dart';
import 'custom_button.dart';
import 'custom_form_filed.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 16),
          CustomFormFiled(
            text: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 16),
          CustomFormFiled(
            text: 'Content',
            lines: 5,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          const SizedBox(height: 64),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                // todo:create
                var currentDate = DateTime.now();


                var formattedDate = DateFormat('dd /mm /yyyy').format(currentDate);
                var noteModel = NotesModels(
                    title: title!,
                    subTitle: subTitle!,
                    date: formattedDate,
                    color: Colors.blue.value);
                BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();

                // Container(child: Text(noteModel.title),);
              } else {
                autoValidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
