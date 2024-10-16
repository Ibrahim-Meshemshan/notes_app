import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5)
        ),
        backgroundColor: kPrimaryColor,
        padding: EdgeInsets.all(12),
      ),
      onPressed: () {

      },
      child: const Text(
        'Add',
        style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),
      ),
    );
  }
}
