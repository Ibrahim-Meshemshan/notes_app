import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomFormFiled extends StatelessWidget {
 final String text;
 final int lines;
 final Function(String?)? onSaved;
  CustomFormFiled({required this.text, this.lines = 1, this.onSaved});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if(value!=null && value.trim().isEmpty){
          return 'Field is required';
        }else{
          return null;
        }
      },
      cursorColor: kPrimaryColor,
      maxLines: lines,
      decoration: InputDecoration(
          hintText: text,
          hintStyle:const TextStyle(color: kPrimaryColor),
          focusedBorder:const OutlineInputBorder(
              borderSide: BorderSide(color: kPrimaryColor)
          ),
          enabledBorder:const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide:const BorderSide(color: Colors.white),

          )
      ),
    );
  }
}
