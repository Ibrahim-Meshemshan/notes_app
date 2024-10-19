import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/add_notes_bottom_sheet.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        shape: const StadiumBorder(
          side: BorderSide(

            color: Colors.black
          )
        ),
        backgroundColor: Colors.black.withOpacity(0.7),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            ),
            context: context,
            builder: (context) {
              return  AddNotesBottomSheet();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

}

