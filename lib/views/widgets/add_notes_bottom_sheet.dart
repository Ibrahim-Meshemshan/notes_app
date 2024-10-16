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
              const SizedBox(height: 16),
              CustomFormFiled(text: 'Title'),
              const SizedBox(height: 16),
              CustomFormFiled(text: 'Content', lines: 5),
              const SizedBox(height: 64),
              const CustomButton(),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
