import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/read_notes_cubit/notes_cubit.dart';
import 'custom_appbar_widget.dart';
import 'notes_list_view.dart';

class HomePageBodyWidget extends StatefulWidget {
  const HomePageBodyWidget({
    super.key,
  });

  @override
  State<HomePageBodyWidget> createState() => _HomePageBodyWidgetState();
}

class _HomePageBodyWidgetState extends State<HomePageBodyWidget> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          children: [
            CustomAppbarWidget(
              title: "Notes",
              icon: Icons.search,
              onPressed: null,
            ),
            Expanded(
              child: NotesListView(),
            ),
          ],
        ),
      ),
    );
  }
}
