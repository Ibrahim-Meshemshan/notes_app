import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomAppBar(),

          ],
        ),
      ),
    );
  }
}

