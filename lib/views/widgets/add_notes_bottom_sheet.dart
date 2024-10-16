import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_form_filed.dart';

class AddNotesBottomSheet extends StatelessWidget {
  const AddNotesBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 16),
              CustomFormFiled(text: 'Title'),
              SizedBox(height: 16),
              CustomFormFiled(text: 'Content', lines: 5),
              SizedBox(height: 64),
              CustomButton(),
              SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
