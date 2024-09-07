import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/core/theme/constants.dart';

import 'core/theme/app_theme_data.dart';
import 'features/notes/data/models/note_model.dart';
import 'features/notes/presentation/cubit/bloc_observer.dart';
import 'features/notes/presentation/cubit/read_notes_cubit/notes_cubit.dart';
import 'features/notes/presentation/pages/home_page.dart';

void main() async {
  Bloc.observer = AppBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: appThemeData,
        home: const HomePage(),
      ),
    );
  }
}
