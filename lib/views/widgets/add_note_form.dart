import 'package:flutter/material.dart';

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
      child: Column(
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
          CustomFormFiled(text: 'Content', lines: 5),
          const SizedBox(height: 64),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                // todo:create
                formKey.currentState!.save();
              } else {
                autoValidateMode = AutovalidateMode.always;
              }
            },
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}