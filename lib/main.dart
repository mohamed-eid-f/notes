import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/core/theme/constants.dart';

import 'core/theme/app_theme_data.dart';
import 'features/notes/data/models/note_model.dart';
import 'features/notes/presentation/cubit/add_note_cubit/add_note_cubit.dart';
import 'features/notes/presentation/pages/home_page.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => AddNoteCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: appThemeData,
        home: const HomePage(),
      ),
    );
  }
}
