import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/add_note/add_note_cubit.dart';

import '../../constants.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isChecked, required this.colorChecked});

  final bool isChecked;

  final Color colorChecked;
  @override
  Widget build(BuildContext context) {
    return isChecked
        ?  CircleAvatar(
            radius: 38,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 34,
              backgroundColor: colorChecked,
            ),
          )
        :  CircleAvatar(
            radius: 38,
            backgroundColor: colorChecked,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;

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
                BlocProvider.of<AddNoteCubit>(context).color = kColors[index];
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
