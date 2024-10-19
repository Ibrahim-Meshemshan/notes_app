import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/cubit/add_note/add_note_cubit.dart';
import 'package:notes_app/models/notes_models.dart';
import 'package:notes_app/simole_bloc_observer.dart';
import 'package:notes_app/views/notes_view.dart';

import 'constants.dart';

void main() async{
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NotesModelsAdapter());
  await Hive.openBox<NotesModels>(kNotesBox);

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const NotesView(),
      theme: ThemeData(brightness: Brightness.dark,
      fontFamily: 'Poppins'
      ),
    );
  }
}



