import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
   CustomAppBar({super.key, required this.title, required this.iconData, this.onTap});

  final String title;
  final IconData iconData;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 28),
        ),
        CustomIcon(
          onTap: onTap,
          iconData: iconData,

        ),
      ],
    );
  }
}
