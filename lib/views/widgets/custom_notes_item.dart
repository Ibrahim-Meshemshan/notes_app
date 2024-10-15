import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24,bottom: 24,left: 16),
      decoration: BoxDecoration(
        color: const Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter Tips',
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                'Build your career whit ibrahim',
                style:
                    TextStyle(color: Colors.black.withOpacity(0.4), fontSize: 18),
              ),
            ),
            trailing: InkWell(
              onTap: () {

              },
              child: const Icon(
                FontAwesomeIcons.trash,size: 24,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 40.0),
            child: Text(
              'october    21/10/2024',
              style: TextStyle(color: Colors.black.withOpacity(0.5),),
            ),
          )
        ],
      ),
    );
  }
}
