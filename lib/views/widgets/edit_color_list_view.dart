import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/notes_models.dart';
import 'colors_list_view.dart';


class EditColorListView extends StatefulWidget {
  const EditColorListView({super.key, required this.note});

  final NotesModels note;

  @override
  State<EditColorListView> createState() => _EditColorListViewState();
}

class _EditColorListViewState extends State<EditColorListView> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }
   @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
      child: ListView.builder(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return  Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: InkWell(
              splashColor: Colors.transparent,
              onTap: () {
                currentIndex = index;
                widget.note.color = kColors[index].value;
                setState(() {

                });
              },
              child: ColorItem(
                colorChecked: kColors[index],
                isChecked: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}