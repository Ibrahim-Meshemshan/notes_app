import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_form_filed.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CustomAppBar(title: 'Edit_Notes', iconData: Icons.check),
            const SizedBox(height: 50),
            CustomFormFiled(
              text: 'title',
            ),
            const SizedBox(height: 16),
            CustomFormFiled(
              text: 'Content',
              lines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
