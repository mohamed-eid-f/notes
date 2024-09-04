import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/features/notes/presentation/cubit/read_notes_cubit/read_notes_cubit.dart';

import '../widgets/add_note_bottom_sheet.dart';
import '../widgets/home_page_body_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReadNotesCubit(),
      child: Scaffold(
        body: const HomePageBodyWidget(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              builder: (context) => const AddNoteBottomSheet(),
            );
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
